Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ismember?download=true
inline.NumInlined: 598
inline.NumDeleted: 341
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl8ismemberIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IbLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EE:bb.a
  %i.cr = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.cq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !37
  %i.cu = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 2  ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !37
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !37
  %i.cy = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 3  ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.pre.i98, i64 %i.cy
  %i.da = getelementptr inbounds [4 x i8], ptr %.sroa.0181.0, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !37
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !37
  %i.dc = add nsw i64 %.05.i.i.i.i.i.i.i.i101, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i102.3 = icmp eq i64 %i.dc, %.pr.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i102.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i100, !llvm.loop !23

.lr.ph.i.i.i.i.i.i.i103:                          ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i103
  %.011.i.i.i.i.i.i.i104 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i103 ], [ 0, %bb.n ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i98, i64 %.011.i.i.i.i.i.i.i104
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0, i64 %.011.i.i.i.i.i.i.i104
  %i.df = load <2 x i64>, ptr %i.de, align 1, !tbaa !38
  store <2 x i64> %i.df, ptr %i.dd, align 16, !tbaa !38
  %i.dg = add nuw nsw i64 %.011.i.i.i.i.i.i.i104, 4 ; 2 uses
  %i.dh = icmp slt i64 %i.dg, %i.bu
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i103, label %._crit_edge.i.i.i.i.i.i.i99, !llvm.loop !24

.body:                                            ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %4, align 8, !tbaa !20
  call void @free(ptr noundef %i.dj) #12
  br label %common.resume

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i100.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i100, %middle.block, %._crit_edge.i.i.i.i.i.i.i99
  call void @free(ptr noundef %.sroa.0181.0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dk = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.dl = load i64, ptr %i.ap, align 8, !tbaa !13 ; 3 uses
  %i.dm = load i64, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i.i.i105 = icmp eq i64 %i.dl, 0   ; 2 uses
  %.not8.i.i.i.i.i.i.i106 = icmp eq i64 %i.dm, 0  ; 2 uses
  %or.cond.i.i.i.i.i.i.i107 = select i1 %.not.i.i.i.i.i.i.i105, i1 %.not8.i.i.i.i.i.i.i106, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i107, label %.loopexit202.thread, label %bb.o

.loopexit202.thread:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.o:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEEEERKT_.exit
  %or.cond.i.i.i.i.i.i.i.i.i108 = or i1 %.not.i.i.i.i.i.i.i105, %.not8.i.i.i.i.i.i.i106
  br i1 %or.cond.i.i.i.i.i.i.i.i.i108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = sdiv i64 9223372036854775807, %i.dm
  %i.do = icmp sgt i64 %i.dl, %i.dn
  br i1 %i.do, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109: ; preds = %bb.p, %bb.o
  %i.dp = mul i64 %i.dm, %i.dl                    ; 11 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %bb.q, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109
  %i.dr = icmp samesign ugt i64 %i.dp, 4611686018427387903
  br i1 %i.dr, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148: ; preds = %bb.q
  %i.ds = shl nuw i64 %i.dp, 2
  %i.dt = call noalias ptr @malloc(i64 noundef %i.ds) #14 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.invoke, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148, %bb.q, %bb.p
  %i.dv = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dv, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i109
  %.nonneg = sub i64 0, %i.dp
  %i.dw = and i64 %.nonneg, -4
  %i.dx = sub i64 0, %i.dw
  br label %._crit_edge.i.i.i.i.i.i.i113

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i148
  %i.dy = and i64 %i.dp, 4611686018427387900      ; 2 uses
  %i.dz = icmp samesign ugt i64 %i.dp, 3
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i.i.i117.preheader, label %._crit_edge.i.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i.i117.preheader:                ; preds = %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151
  %i.ea = shl nuw i64 %i.dp, 2
  %i.eb = and i64 %i.ea, -16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dt, ptr align 16 %i.dk, i64 %i.eb, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i.i113

._crit_edge.i.i.i.i.i.i.i113:                     ; preds = %.lr.ph.i.i.i.i.i.i.i117.preheader, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151
  %i.ec = phi i64 [ %i.dx, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread ], [ %i.dy, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i117.preheader ] ; 3 uses
  %.sroa.0170.1198 = phi ptr [ null, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151.thread ], [ %i.dt, %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit151 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i117.preheader ] ; 9 uses
  %i.ed = icmp slt i64 %i.ec, %i.dp
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i.i114.preheader, label %.loopexit202

.lr.ph.i.i.i.i.i.i.i.i114.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i113
  %i.ee = shl i64 %i.ec, 2                        ; 2 uses
  %scevgep228 = getelementptr i8, ptr %.sroa.0170.1198, i64 %i.ee
  %scevgep229 = getelementptr i8, ptr %i.dk, i64 %i.ee
  %i.ef = sub i64 %i.dp, %i.ec
  %i.eg = shl i64 %i.ef, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep228, ptr align 4 %scevgep229, i64 %i.eg, i1 false), !tbaa !37
  br label %.loopexit202

bb.r:                                             ; preds = %.invoke
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.loopexit202:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i114.preheader, %._crit_edge.i.i.i.i.i.i.i113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not.i.i.i.i.i.i.i124 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i124, label %.loopexit, label %thread-pre-split.i.i.i.i.i.i125

thread-pre-split.i.i.i.i.i.i125:                  ; preds = %.loopexit202
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.dp, i64 noundef 1)
          to label %bb.s unwind label %.body134

bb.s:                                             ; preds = %thread-pre-split.i.i.i.i.i.i125
  %.pr.i.i.i.i.i.i126 = load i64, ptr %i.ei, align 8, !tbaa !19 ; 5 uses
  %.pre.i127 = load ptr, ptr %5, align 8, !tbaa !20 ; 3 uses
  %i.ej = sdiv i64 %.pr.i.i.i.i.i.i126, 4
  %i.ek = shl nsw i64 %i.ej, 2                    ; 6 uses
  %i.el = icmp sgt i64 %.pr.i.i.i.i.i.i126, 3
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.i.i132, label %._crit_edge.i.i.i.i.i.i.i128

._crit_edge.i.i.i.i.i.i.i128:                     ; preds = %.lr.ph.i.i.i.i.i.i.i132, %bb.s
  %i.em = icmp slt i64 %i.ek, %.pr.i.i.i.i.i.i126
  br i1 %i.em, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i129.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i.i128
  %i.en = sub i64 %.pr.i.i.i.i.i.i126, %i.ek      ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check287, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader300, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader
  %n.vec289 = and i64 %i.en, -8                   ; 3 uses
  %i.eo = add i64 %i.ek, %n.vec289
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next294, %vector.body290 ] ; 2 uses
  %i.ep = add i64 %i.ek, %index291                ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %.pre.i127, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.sroa.0170.1198, i64 %i.ep ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.er, align 4, !tbaa !37
  %wide.load293 = load <4 x i32>, ptr %i.es, align 4, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load292, ptr %i.eq, align 4, !tbaa !37
  store <4 x i32> %wide.load293, ptr %i.et, align 4, !tbaa !37
  %index.next294 = add nuw i64 %index291, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.eu, label %middle.block295, label %vector.body290, !llvm.loop !25

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %i.en, %n.vec289
  br i1 %cmp.n296, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i129.preheader300

.lr.ph.i.i.i.i.i.i.i.i129.preheader300:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader, %middle.block295
  %.05.i.i.i.i.i.i.i.i130.ph = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i129.preheader ], [ %i.eo, %middle.block295 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i.i129:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i129.preheader300, %.lr.ph.i.i.i.i.i.i.i.i129
  %.05.i.i.i.i.i.i.i.i130 = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i129 ], [ %.05.i.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i.i129.preheader300 ] ; 3 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %.pre.i127, i64 %.05.i.i.i.i.i.i.i.i130
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0170.1198, i64 %.05.i.i.i.i.i.i.i.i130
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !37
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !37
  %i.ey = add nsw i64 %.05.i.i.i.i.i.i.i.i130, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i131 = icmp eq i64 %i.ey, %.pr.i.i.i.i.i.i126
  br i1 %exitcond.not.i.i.i.i.i.i.i.i131, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i129, !llvm.loop !26

.lr.ph.i.i.i.i.i.i.i132:                          ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i132
  %.011.i.i.i.i.i.i.i133 = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i132 ], [ 0, %bb.s ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.pre.i127, i64 %.011.i.i.i.i.i.i.i133
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0170.1198, i64 %.011.i.i.i.i.i.i.i133
  %i.fb = load <2 x i64>, ptr %i.fa, align 1, !tbaa !38
  store <2 x i64> %i.fb, ptr %i.ez, align 16, !tbaa !38
  %i.fc = add nuw nsw i64 %.011.i.i.i.i.i.i.i133, 4 ; 2 uses
  %i.fd = icmp slt i64 %i.fc, %i.ek
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i.i132, label %._crit_edge.i.i.i.i.i.i.i128, !llvm.loop !24

.body134:                                         ; preds = %thread-pre-split.i.i.i.i.i.i125
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.ff) #12
  call void @free(ptr noundef %.sroa.0170.1198) #12
  br label %.body121

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i129, %middle.block295, %.loopexit202.thread, %._crit_edge.i.i.i.i.i.i.i128, %.loopexit202
  %.sroa.0170.0275 = phi ptr [ null, %.loopexit202.thread ], [ %.sroa.0170.1198, %.loopexit202 ], [ %.sroa.0170.1198, %._crit_edge.i.i.i.i.i.i.i128 ], [ %.sroa.0170.1198, %middle.block295 ], [ %.sroa.0170.1198, %.lr.ph.i.i.i.i.i.i.i.i129 ]
  call void @free(ptr noundef %.sroa.0170.0275) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %.loopexit
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !19 ; 6 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %bb.x, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %calloc = call ptr @calloc(i64 1, i64 %i.fh)    ; 2 uses
  %i.fj = icmp eq ptr %calloc, null
  br i1 %i.fj, label %bb.y, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fk = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fk, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc.i.i unwind label %bb.ab

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.x, %bb.w
  %.sroa.0164.0 = phi ptr [ null, %bb.w ], [ %calloc, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.fh, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %.body142

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !19
  %.not.i.i.i.i.i.i.i139 = icmp eq i64 %i.fm, %i.fh
  br i1 %.not.i.i.i.i.i.i.i139, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.fh, i64 noundef 1)
          to label %.noexc.i.i140 unwind label %.body142

.noexc.i.i140:                                    ; preds = %bb.z
  %.pr.i.i.i.i.i.i141 = load i64, ptr %i.fl, align 8, !tbaa !19
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i140, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.fn = phi i64 [ %i.fh, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i141, %.noexc.i.i140 ] ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 1
  br i1 %i.fo, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fp = load ptr, ptr %16, align 8, !tbaa !20
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !37
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.body142:                                         ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %16, align 8, !tbaa !20
  call void @free(ptr noundef %i.fr) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @free(ptr noundef %.sroa.0164.0) #12
  br label %.body137

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fs = load i64, ptr %i.fg, align 8, !tbaa !19 ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, 0
  %.pre239.pre240 = load ptr, ptr %16, align 8    ; 2 uses
  br i1 %i.ft, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.fu = load ptr, ptr %12, align 8
  %i.fv = load ptr, ptr %13, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fx = load ptr, ptr %14, align 8
  %i.fy = load ptr, ptr %15, align 8
  %i.fz = load ptr, ptr %10, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge95
  %indvars.iv233 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next234, %.critedge95 ] ; 3 uses
  %.042214 = phi i1 [ false, %.preheader.lr.ph ], [ %.1205, %.critedge95 ]
  %.043213 = phi i32 [ 0, %.preheader.lr.ph ], [ %.144207, %.critedge95 ] ; 2 uses
  br i1 %.042214, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv233
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !37 ; 2 uses
  %i.gc = load i64, ptr %i.fw, align 8
  %i.gd = sext i32 %.043213 to i64
  br label %bb.ac

bb.aa:                                            ; preds = %bb.t, %.loopexit
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y, %bb.v, %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body137

bb.ac:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ %i.gd, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %indvars.iv
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37 ; 2 uses
  %i.gi = icmp sgt i32 %i.gb, %i.gh
  br i1 %i.gi, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.not = icmp sgt i64 %i.gc, %indvars.iv.next
  br i1 %.not, label %bb.ac, label %.critedge95.loopexit, !llvm.loop !27

.critedge:                                        ; preds = %bb.ac
  %i.gj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.gk = icmp eq i32 %i.gb, %i.gh
  br i1 %i.gk, label %bb.ae, label %.critedge95

bb.ae:                                            ; preds = %.critedge
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv233
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !43 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.gm
  store i8 1, ptr %i.gn, align 1, !tbaa !36
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %indvars.iv
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !43
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !43
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = getelementptr inbounds [4 x i8], ptr %.pre239.pre240, i64 %i.gm
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !37
  br label %.critedge95

.critedge95.loopexit:                             ; preds = %bb.ad
  %i.gu = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge95

.critedge95:                                      ; preds = %.critedge95.loopexit, %.preheader, %.critedge, %bb.ae
  %.144207 = phi i32 [ %i.gj, %bb.ae ], [ %i.gj, %.critedge ], [ %.043213, %.preheader ], [ %i.gu, %.critedge95.loopexit ]
  %.1205 = phi i1 [ false, %bb.ae ], [ false, %.critedge ], [ true, %.preheader ], [ true, %.critedge95.loopexit ]
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next234, %i.fs
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %.critedge95
  %.pre239.pre = load ptr, ptr %16, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %.pre = phi ptr [ %.pre239.pre, %._crit_edge.loopexit ], [ %.pre239.pre240, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.gv = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.gw = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !13
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !14
  %i.gz = mul nsw i64 %i.gy, %i.gx                ; 5 uses
  %i.ha = icmp sgt i64 %i.gz, 0
  br i1 %i.ha, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %._crit_edge
  %i.hb = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %xtraiter302 = and i64 %i.gz, 1
  %i.hc = icmp eq i64 %i.gz, 1
  br i1 %i.hc, label %.epil.preheader, label %.lr.ph218.new

.lr.ph218.new:                                    ; preds = %.lr.ph218
  %unroll_iter = and i64 %i.gz, 9223372036854775806
  br label %bb.af

._crit_edge219.loopexit.unr-lcssa:                ; preds = %bb.af
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %._crit_edge219, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge219.loopexit.unr-lcssa, %.lr.ph218
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next236.1, %._crit_edge219.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod304 = trunc i64 %i.gz to i1
  call void @llvm.assume(i1 %lcmp.mod304)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv235.epil.init
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !36, !range !47, !noundef !48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv235.epil.init
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !36
  %i.hi = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.he
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv235.epil.init
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !37
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %.epil.preheader, %._crit_edge219.loopexit.unr-lcssa, %._crit_edge
  call void @free(ptr noundef %.pre) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @free(ptr noundef %.sroa.0164.0) #12
  %i.hl = load ptr, ptr %15, align 8, !tbaa !46
  call void @free(ptr noundef %i.hl) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.hm = load ptr, ptr %14, align 8, !tbaa !46
  call void @free(ptr noundef %i.hm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.hn = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.hn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.ho = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.ho) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.hp = load ptr, ptr %11, align 8, !tbaa !46
  call void @free(ptr noundef %i.hp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.hq = load ptr, ptr %10, align 8, !tbaa !46
  call void @free(ptr noundef %i.hq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.hr = load ptr, ptr %9, align 8, !tbaa !46
  call void @free(ptr noundef %i.hr) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.hs = load ptr, ptr %8, align 8, !tbaa !46
  call void @free(ptr noundef %i.hs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.ht = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.ht) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.hu = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.hu) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.hv = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.hv) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.hw = load ptr, ptr %4, align 8, !tbaa !20
  call void @free(ptr noundef %i.hw) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph218.new
  %indvars.iv235 = phi i64 [ 0, %.lr.ph218.new ], [ %indvars.iv.next236.1, %bb.af ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph218.new ], [ %niter.next.1, %bb.af ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv235
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !43 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !36, !range !47, !noundef !48
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv235
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !36
  %i.ic = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.hy
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !37
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv235
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !37
  %indvars.iv.next236 = or disjoint i64 %indvars.iv235, 1 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next236
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !43 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0164.0, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !36, !range !47, !noundef !48
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv.next236
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !36
  %i.ik = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ig
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !37
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next236
  store i32 %i.il, ptr %i.im, align 4, !tbaa !37
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge219.loopexit.unr-lcssa, label %bb.af, !llvm.loop !29

bb.ag:                                            ; preds = %bb.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, %._crit_edge219
  ret void

.body137:                                         ; preds = %.body142, %bb.ab
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %bb.ab ], [ %i.fq, %.body142 ]
  %i.in = load ptr, ptr %15, align 8, !tbaa !46
  call void @free(ptr noundef %i.in) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.io = load ptr, ptr %14, align 8, !tbaa !46
  call void @free(ptr noundef %i.io) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.ip = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.ip) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.iq = load ptr, ptr %12, align 8, !tbaa !20
  call void @free(ptr noundef %i.iq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.ah

bb.ah:                                            ; preds = %.body137, %bb.aa
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn, %.body137 ], [ %i.ge, %bb.aa ]
  %i.ir = load ptr, ptr %11, align 8, !tbaa !46
  call void @free(ptr noundef %i.ir) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.is = load ptr, ptr %10, align 8, !tbaa !46
  call void @free(ptr noundef %i.is) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.it = load ptr, ptr %9, align 8, !tbaa !46
  call void @free(ptr noundef %i.it) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.iu = load ptr, ptr %8, align 8, !tbaa !46
  call void @free(ptr noundef %i.iu) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.iv = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.iv) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.iw = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.iw) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.ix = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.ix) #12
  br label %.body121

.body121:                                         ; preds = %.body134, %bb.r, %bb.ah
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ah ], [ %i.fe, %.body134 ], [ %i.eh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.iy = load ptr, ptr %4, align 8, !tbaa !20
  br label %common.resume

common.resume:                                    ; preds = %.body121, %.body
  %.sink = phi ptr [ %i.iy, %.body121 ], [ %.sroa.0181.0, %.body ]
  %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body121 ], [ %i.di, %.body ]
  call void @free(ptr noundef %.sink) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #12
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !20
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !11, i64 16}
!15 = !{!"vtable pointer", !4, i64 0}
end_hunk_0
