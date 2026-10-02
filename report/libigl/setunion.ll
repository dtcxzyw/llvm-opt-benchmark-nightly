Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/setunion?download=true
inline.NumInlined: 217
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl8setunionIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_S3_EEvRKNS1_9DenseBaseIT_EERKNS4_IT0_EERNS1_15PlainObjectBaseIT1_EERNSD_IT2_EERNSD_IT3_EE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !28
  %wide.load125 = load <4 x i32>, ptr %i.n, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %wide.load, ptr %i.o, align 4, !tbaa !28
  store <4 x i32> %wide.load125, ptr %i.p, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader87.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader.split.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader.split.us ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !18

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = sub nsw i64 %indvars.iv.ph, %i.f
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %.preheader87.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  store i32 %i.x, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !28
  %i.ac = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !28
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !28
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.f
  br i1 %exitcond.not.3, label %.preheader87.loopexit, label %scalar.ph, !llvm.loop !19

common.resume:                                    ; preds = %bb.o, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.b ], [ %.pn68.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %5, align 8, !tbaa !14
  call void @free(ptr noundef %i.aj) #10
  br label %common.resume

.preheader87.loopexit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load ptr, ptr %5, align 8
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.loopexit, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader
  %i.ak = phi ptr [ %i.h, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader ], [ %.pre, %.preheader87.loopexit ] ; 7 uses
  %.us-phi = phi i64 [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader ], [ %i.f, %.preheader87.loopexit ] ; 5 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = load i64, ptr %i.c, align 8, !tbaa !13  ; 7 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.preheader87.split95, label %.split

.preheader87.split95:                             ; preds = %.preheader87
  %i.ao = load ptr, ptr %1, align 8, !tbaa !14    ; 7 uses
  %min.iters.check129 = icmp ult i64 %i.am, 12
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.preheader87.split95
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = shl i64 %.us-phi, 2
  %i.ar = add i64 %i.aq, %i.al
  %i.as = sub i64 %i.ap, %i.ar
  %diff.check127 = icmp ugt i64 %i.as, -32
  br i1 %diff.check127, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %i.am, 9223372036854775800  ; 4 uses
  %i.at = add nuw i64 %.us-phi, %n.vec131
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.us-phi
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next136, %vector.body132 ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.ao, i64 %index133 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.av, align 4, !tbaa !28
  %wide.load135 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !28
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %wide.load134, ptr %i.ax, align 4, !tbaa !28
  store <4 x i32> %wide.load135, ptr %i.ay, align 4, !tbaa !28
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.az, label %middle.block137, label %vector.body132, !llvm.loop !20

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.am, %n.vec131
  br i1 %cmp.n138, label %.split, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %vector.memcheck126, %.preheader87.split95, %middle.block137
  %indvars.iv105.ph = phi i64 [ %.us-phi, %vector.memcheck126 ], [ %.us-phi, %.preheader87.split95 ], [ %i.at, %middle.block137 ] ; 2 uses
  %indvars.iv103.ph = phi i64 [ 0, %vector.memcheck126 ], [ 0, %.preheader87.split95 ], [ %n.vec131, %middle.block137 ] ; 3 uses
  %xtraiter158 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader, %scalar.ph128.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph128.prol ], [ %indvars.iv105.ph, %scalar.ph128.preheader ] ; 2 uses
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %scalar.ph128.prol ], [ %indvars.iv103.ph, %scalar.ph128.preheader ] ; 2 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %scalar.ph128.prol ], [ 0, %scalar.ph128.preheader ]
  %i.ba = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv103.prol
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv105.prol
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !28
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol, !llvm.loop !21

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph128.preheader ], [ %indvars.iv.next106.prol, %scalar.ph128.prol ]
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %scalar.ph128.preheader ], [ %indvars.iv.next104.prol, %scalar.ph128.prol ]
  %i.bd = sub nsw i64 %indvars.iv103.ph, %i.am
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.split, label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph128 ], [ %indvars.iv105.unr, %scalar.ph128.prol.loopexit ] ; 5 uses
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %scalar.ph128 ], [ %indvars.iv103.unr, %scalar.ph128.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv103
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv105
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !28
  %i.bi = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv103
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv105
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !28
  %i.bn = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv103
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv105
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !28
  %i.bs = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv103
  %i.bt = getelementptr i8, ptr %i.bs, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !28
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv105
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !28
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %indvars.iv.next104.3, %i.am
  br i1 %exitcond110.not.3, label %.split, label %scalar.ph128, !llvm.loop !22

.split:                                           ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block137, %.preheader87
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.split
  %i.bx = load ptr, ptr %7, align 8, !tbaa !14
  call void @free(ptr noundef %i.bx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.by = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13, !noalias !33 ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !28
  %i.cf = icmp slt i32 %i.ce, %i.bz
  %i.cg = zext i1 %i.cf to i64                    ; 3 uses
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.ci = add nsw i64 %i.cb, -1                   ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.cb, 5
  br i1 %min.iters.check142, label %.lr.ph.i.i.i.i.preheader155, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec144 = and i64 %i.ci, -4                   ; 3 uses
  %i.cj = or disjoint i64 %n.vec144, 1
  %i.ck = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cg, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ck, %vector.ph143 ], [ %i.cs, %vector.body145 ]
  %vec.phi147 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.ct, %vector.body145 ]
  %i.cl = getelementptr [4 x i8], ptr %i.cd, i64 %index146 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = getelementptr i8, ptr %i.cl, i64 12
  %wide.load148 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !28
  %wide.load149 = load <2 x i32>, ptr %i.cn, align 4, !tbaa !28
  %i.co = icmp slt <2 x i32> %wide.load148, %broadcast.splat
  %i.cp = icmp slt <2 x i32> %wide.load149, %broadcast.splat
  %i.cq = zext <2 x i1> %i.co to <2 x i64>
  %i.cr = zext <2 x i1> %i.cp to <2 x i64>
  %i.cs = add <2 x i64> %vec.phi, %i.cq           ; 2 uses
  %i.ct = add <2 x i64> %vec.phi147, %i.cr        ; 2 uses
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cu, label %middle.block151, label %vector.body145, !llvm.loop !25

middle.block151:                                  ; preds = %vector.body145
  %bin.rdx = add <2 x i64> %i.ct, %i.cs
  %i.cv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n152 = icmp eq i64 %i.ci, %n.vec144
  br i1 %cmp.n152, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %.lr.ph.i.i.i.i.preheader155

.lr.ph.i.i.i.i.preheader155:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block151
  %.01724.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block151 ]
  %.02223.i.i.i.i.ph = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block151 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader155, %.lr.ph.i.i.i.i
  %.01724.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i ], [ %.01724.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader155 ] ; 2 uses
  %.02223.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i ], [ %.02223.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader155 ]
  %i.cw = getelementptr [4 x i8], ptr %i.cd, i64 %.01724.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !28
  %i.cy = icmp slt i32 %i.cx, %i.bz
  %i.cz = zext i1 %i.cy to i64
  %i.da = add nuw nsw i64 %.02223.i.i.i.i, %i.cz  ; 2 uses
  %i.db = add nuw nsw i64 %.01724.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.db, %i.cb
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block151, %bb.d, %bb.c
  %.0.i.i = phi i64 [ 0, %bb.c ], [ %i.cg, %bb.d ], [ %i.cv, %middle.block151 ], [ %i.da, %.lr.ph.i.i.i.i ]
  %sext = shl i64 %.0.i.i, 32                     ; 2 uses
  %i.dc = ashr exact i64 %sext, 32                ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit
  %i.df = load ptr, ptr %3, align 8, !tbaa !14
  call void @free(ptr noundef %i.df) #10
  %i.dg = icmp sgt i64 %i.dc, 0
  br i1 %i.dg, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.e
  %i.dh = lshr exact i64 %sext, 30
  %i.di = call noalias ptr @malloc(i64 noundef %i.dh) #11 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.e
  %.sink.i.i = phi ptr [ %i.di, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.e ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !14
  %.pre115 = load i64, ptr %i.ca, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit
  %i.dk = phi i64 [ %.pre115, %.sink.split.i.i ], [ %i.cb, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit ] ; 2 uses
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !13
  %i.dl = sub nsw i64 %i.dk, %i.dc                ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13
  %.not.i.i76 = icmp eq i64 %i.dl, %i.dn
  br i1 %.not.i.i76, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit82, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = load ptr, ptr %4, align 8, !tbaa !14
  call void @free(ptr noundef %i.do) #10
  %i.dp = icmp sgt i64 %i.dl, 0
  br i1 %i.dp, label %bb.h, label %.sink.split.i.i77

bb.h:                                             ; preds = %bb.g
  %i.dq = icmp samesign ugt i64 %i.dl, 4611686018427387903
  br i1 %i.dq, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i79

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i79: ; preds = %bb.h
  %i.dr = shl nuw i64 %i.dl, 2
  %i.ds = call noalias ptr @malloc(i64 noundef %i.dr) #11 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.invoke, label %.sink.split.i.i77

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i79, %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.du = call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.du, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i77:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i79, %bb.g
  %.sink.i.i78 = phi ptr [ %i.ds, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i79 ], [ null, %bb.g ]
  store ptr %.sink.i.i78, ptr %4, align 8, !tbaa !14
  %.pre116 = load i64, ptr %i.ca, align 8, !tbaa !13
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit82

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit82: ; preds = %bb.f, %.sink.split.i.i77
  %i.dv = phi i64 [ %i.dk, %bb.f ], [ %.pre116, %.sink.split.i.i77 ] ; 2 uses
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !13
  %i.dw = icmp sgt i64 %i.dv, 0
  %.pre117 = load ptr, ptr %6, align 8, !tbaa !14 ; 2 uses
  br i1 %i.dw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit82
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  br label %bb.k

._crit_edge:                                      ; preds = %bb.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit82
  call void @free(ptr noundef %.pre117) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.dz = load ptr, ptr %5, align 8, !tbaa !14
  call void @free(ptr noundef %i.dz) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.i:                                             ; preds = %.split
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %7, align 8, !tbaa !14
  call void @free(ptr noundef %i.eb) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.o

bb.j:                                             ; preds = %.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv111 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next112, %bb.n ] ; 2 uses
  %.04097 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 3 uses
  %.04196 = phi i32 [ 0, %.lr.ph ], [ %.142, %bb.n ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv111
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp sgt i64 %i.dx, %i.ef
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eh = sext i32 %.04196 to i64
  %i.ei = load ptr, ptr %3, align 8, !tbaa !14
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = add nsw i32 %.04196, 1
  store i32 %i.ee, ptr %i.ej, align 4, !tbaa !28
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.el = sext i32 %.04097 to i64
  %i.em = load ptr, ptr %4, align 8, !tbaa !14
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = add nsw i32 %.04097, 1
  %i.ep = sub i32 %i.ee, %i.dy
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.142 = phi i32 [ %i.ek, %bb.l ], [ %.04196, %bb.m ]
  %.1 = phi i32 [ %.04097, %bb.l ], [ %i.eo, %bb.m ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, %i.dv
  br i1 %exitcond114.not, label %._crit_edge, label %bb.k, !llvm.loop !27

bb.o:                                             ; preds = %bb.j, %bb.i
  %.pn68.pn = phi { ptr, i32 } [ %i.ea, %bb.i ], [ %i.ec, %bb.j ]
  %i.eq = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.eq) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.er = load ptr, ptr %5, align 8, !tbaa !14
  call void @free(ptr noundef %i.er) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.i) #10
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #11 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #10 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !14
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn }

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
!12 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !10, i64 0}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !29, !30, !31}
!18 = distinct !{!18, !32}
!19 = distinct !{!19, !29, !30}
!20 = distinct !{!20, !29, !30, !31}
!21 = distinct !{!21, !32}
!22 = distinct !{!22, !29, !30}
!23 = distinct !{!23, i1 false, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEltERKi"}
!24 = distinct !{!24, !23, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEltERKi: argument 0"}
!25 = distinct !{!25, !29, !30, !31}
!26 = distinct !{!26, !29, !31, !30}
!27 = distinct !{!27, !29}
!28 = !{!6, !6, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!24}
end_hunk_0
