Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/is_boundary_edge?download=true
inline.NumInlined: 468
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN3igl16is_boundary_edgeIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT1_EERNSC_IT0_EERNSC_IT2_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.m:                                             ; preds = %bb.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %scalar.ph157 ], [ %indvars.iv83.ph, %scalar.ph157.preheader ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.pre87, i64 %indvars.iv83
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv83
  %i.hl = icmp eq i32 %i.hj, 1
  %i.hm = zext i1 %i.hl to i8
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !31
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %i.fo
  br i1 %exitcond86.not, label %._crit_edge72, label %scalar.ph157, !llvm.loop !68

.body:                                            ; preds = %bb.e, %bb.m
  %.pn52.pn = phi { ptr, i32 } [ %i.hh, %bb.m ], [ %i.et, %bb.e ]
  %i.hn = load ptr, ptr %8, align 8, !tbaa !23
  call void @free(ptr noundef %i.hn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.k, %bb.j
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %.body ], [ %i.gc, %bb.k ], [ %i.ga, %bb.j ]
  %i.ho = load ptr, ptr %5, align 8, !tbaa !16
  call void @free(ptr noundef %i.ho) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.hp = load ptr, ptr %4, align 8, !tbaa !16
  call void @free(ptr noundef %i.hp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn52.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl11unique_rowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16is_boundary_edgeIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT0_EERKNS5_IT_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.58", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 8 uses
  %12 = alloca %"class.Eigen::Matrix.3", align 8  ; 10 uses
  %13 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %14 = alloca %"class.Eigen::Matrix.3", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 9 uses
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %sext = mul i64 %i.b, 12884901888
  %i.f = ashr exact i64 %sext, 32
  %i.g = add nsw i64 %i.e, %i.f                   ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 4611686018427387903
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.k = icmp sgt i64 %i.g, 0
  br i1 %i.k, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp samesign ult i64 %i.g, 2305843009213693952
  br i1 %.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.g, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.c, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i, ptr %7, align 8, !tbaa !16
  br label %bb.e

common.resume:                                    ; preds = %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn63, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %7, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.q) #12
  br label %common.resume

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i
  %i.r = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  store i64 %i.g, ptr %i.i, align 8, !tbaa !13
  store i64 2, ptr %i.j, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  store ptr %i.r, ptr %8, align 8, !tbaa !34, !alias.scope !80
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.u, align 8, !tbaa !35, !alias.scope !80
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.t, ptr %i.v, align 8, !tbaa !35, !alias.scope !80
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.w, align 8, !tbaa !37, !alias.scope !80
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i64 %i.g, ptr %i.y, align 8, !tbaa !40, !alias.scope !80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  store ptr %i.z, ptr %3, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.aa, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.r, ptr %4, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.g, ptr %i.ab, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %4, ptr %5, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.ad, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.ae, align 8, !tbaa !54
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.af = icmp sgt i32 %i.c, 0
  %i.ag = load i64, ptr %i.i, align 8             ; 15 uses
  br i1 %i.af, label %.split, label %.split74

.split:                                           ; preds = %bb.f
  %i.ah = load ptr, ptr %7, align 8               ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 11 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !16    ; 13 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 12 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !13  ; 13 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !13  ; 4 uses
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %i.am ; 6 uses
  %i.ao = and i64 %i.b, 2147483647                ; 15 uses
  %i.ap = shl nsw i64 %i.al, 1                    ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 56
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split
  %i.aq = shl i64 %i.ag, 2                        ; 3 uses
  %i.ar = add i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  %i.as = shl i64 %i.al, 3                        ; 2 uses
  %i.at = add i64 %i.as, %i.ak
  %i.au = shl i64 %i.am, 2                        ; 4 uses
  %i.av = add i64 %i.au, %i.ai
  %i.aw = sub i64 %i.av, %i.at
  %diff.check106 = icmp ugt i64 %i.aw, -32
  %conflict.rdx = or i1 %diff.check, %diff.check106
  %i.ax = add i64 %i.au, %i.ai
  %i.ay = shl i64 %i.al, 2                        ; 2 uses
  %i.az = add i64 %i.ay, %i.ak
  %i.ba = sub i64 %i.az, %i.ax
  %diff.check107 = icmp ugt i64 %i.ba, -32
  %conflict.rdx108 = or i1 %conflict.rdx, %diff.check107
  %i.bb = add i64 %i.au, %i.ai
  %i.bc = add i64 %i.bb, %i.aq
  %i.bd = add i64 %i.as, %i.ak
  %i.be = sub i64 %i.bd, %i.bc
  %diff.check109 = icmp ugt i64 %i.be, -32
  %conflict.rdx110 = or i1 %conflict.rdx108, %diff.check109
  %i.bf = add i64 %i.au, %i.ai
  %i.bg = add i64 %i.bf, %i.aq
  %i.bh = add i64 %i.ay, %i.ak
  %i.bi = sub i64 %i.bh, %i.bg
  %diff.check111 = icmp ugt i64 %i.bi, -32
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  br i1 %conflict.rdx112, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bj, i64 %i.al ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %wide.load = load <4 x i32>, ptr %i.bl, align 4, !tbaa !18
  %wide.load113 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !18
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load, ptr %i.bk, align 4, !tbaa !18
  store <4 x i32> %wide.load113, ptr %i.bn, align 4, !tbaa !18
  %i.bo = getelementptr [4 x i8], ptr %i.bj, i64 %i.ap ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %wide.load114 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !18
  %wide.load115 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !18
  %i.bq = getelementptr [4 x i8], ptr %i.bk, i64 %i.ag ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store <4 x i32> %wide.load114, ptr %i.bq, align 4, !tbaa !18
  store <4 x i32> %wide.load115, ptr %i.br, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.bt = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.ph ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.ph ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bt, i64 %i.al
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !18
  %i.bx = getelementptr [4 x i8], ptr %i.bt, i64 %i.ap
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !18
  %i.bz = getelementptr [4 x i8], ptr %i.bu, i64 %i.ag
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %i.ca = icmp eq i64 %i.ao, %.neg
  br i1 %i.ca, label %._crit_edge, label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.w

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1165, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cc, i64 %i.al
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !18
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.ap
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18
  %i.ci = getelementptr [4 x i8], ptr %i.cd, i64 %i.ag
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.next ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %i.al
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !18
  %i.cn = getelementptr [4 x i8], ptr %i.cj, i64 %i.ap
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = getelementptr [4 x i8], ptr %i.ck, i64 %i.ag
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !18
  %indvars.iv.next.1165 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1165, %i.ao
  br i1 %exitcond.not.1, label %._crit_edge, label %.preheader, !llvm.loop !72

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %i.cq = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 4 uses
  %min.iters.check127 = icmp samesign ult i64 %i.ao, 60
  br i1 %min.iters.check127, label %.preheader.1.preheader, label %vector.memcheck116

vector.memcheck116:                               ; preds = %._crit_edge
  %i.cr = shl i64 %i.ag, 2                        ; 3 uses
  %i.cs = add i64 %i.cr, -1
  %diff.check117 = icmp ult i64 %i.cs, 31
  %i.ct = shl i64 %i.am, 2                        ; 4 uses
  %i.cu = add i64 %i.ct, %i.ai
  %i.cv = shl nuw nsw i64 %i.ao, 2                ; 4 uses
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = sub i64 %i.cw, %i.ak
  %diff.check118 = icmp ugt i64 %i.cx, -32
  %conflict.rdx119 = or i1 %diff.check117, %diff.check118
  %i.cy = add i64 %i.ct, %i.ai
  %i.cz = add i64 %i.cy, %i.cv
  %i.da = shl i64 %i.al, 3                        ; 2 uses
  %i.db = add i64 %i.da, %i.ak
  %i.dc = sub i64 %i.db, %i.cz
  %diff.check120 = icmp ugt i64 %i.dc, -32
  %conflict.rdx121 = or i1 %conflict.rdx119, %diff.check120
  %i.dd = add i64 %i.ct, %i.ai
  %i.de = add i64 %i.dd, %i.cr
  %i.df = add i64 %i.de, %i.cv
  %i.dg = sub i64 %i.ak, %i.df
  %diff.check122 = icmp ugt i64 %i.dg, -32
  %conflict.rdx123 = or i1 %conflict.rdx121, %diff.check122
  %i.dh = add i64 %i.ct, %i.ai
  %i.di = add i64 %i.dh, %i.cr
  %i.dj = add i64 %i.di, %i.cv
  %i.dk = add i64 %i.da, %i.ak
  %i.dl = sub i64 %i.dk, %i.dj
  %diff.check124 = icmp ugt i64 %i.dl, -32
  %conflict.rdx125 = or i1 %conflict.rdx123, %diff.check124
  br i1 %conflict.rdx125, label %.preheader.1.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck116
  %n.vec129 = and i64 %i.b, 2147483640            ; 3 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body130 ] ; 3 uses
  %i.dm = getelementptr [4 x i8], ptr %i.aj, i64 %index131 ; 3 uses
  %i.dn = getelementptr [4 x i8], ptr %i.cq, i64 %index131 ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.dm, i64 %i.ap ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load132 = load <4 x i32>, ptr %i.do, align 4, !tbaa !18
  %wide.load133 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !18
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <4 x i32> %wide.load132, ptr %i.dn, align 4, !tbaa !18
  store <4 x i32> %wide.load133, ptr %i.dq, align 4, !tbaa !18
  %i.dr = getelementptr i8, ptr %i.dm, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !18
  %wide.load135 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !18
  %i.ds = getelementptr [4 x i8], ptr %i.dn, i64 %i.ag ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  store <4 x i32> %wide.load134, ptr %i.ds, align 4, !tbaa !18
  store <4 x i32> %wide.load135, ptr %i.dt, align 4, !tbaa !18
  %index.next136 = add nuw i64 %index131, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.du, label %middle.block137, label %vector.body130, !llvm.loop !73

middle.block137:                                  ; preds = %vector.body130
  %cmp.n138 = icmp eq i64 %i.ao, %n.vec129
  br i1 %cmp.n138, label %._crit_edge.1, label %.preheader.1.preheader

.preheader.1.preheader:                           ; preds = %vector.memcheck116, %._crit_edge, %middle.block137
  %indvars.iv.1.ph = phi i64 [ 0, %vector.memcheck116 ], [ 0, %._crit_edge ], [ %n.vec129, %middle.block137 ] ; 5 uses
  %.neg181 = or disjoint i64 %indvars.iv.1.ph, 1
  %xtraiter167 = and i64 %i.b, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.preheader.1.prol.loopexit, label %.preheader.1.prol

.preheader.1.prol:                                ; preds = %.preheader.1.preheader
  %i.dv = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.1.ph ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.1.ph ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dv, i64 %i.ap
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !18
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !18
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !18
  %i.ea = getelementptr [4 x i8], ptr %i.dw, i64 %i.ag
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !18
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %.preheader.1.prol.loopexit

.preheader.1.prol.loopexit:                       ; preds = %.preheader.1.prol, %.preheader.1.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %.preheader.1.preheader ], [ %indvars.iv.next.1.prol, %.preheader.1.prol ]
  %i.eb = icmp eq i64 %i.ao, %.neg181
  br i1 %i.eb, label %._crit_edge.1, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.prol.loopexit, %.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %.preheader.1 ], [ %indvars.iv.1.unr, %.preheader.1.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.1 ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.1 ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ec, i64 %i.ap
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !18
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !18
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !18
  %i.eh = getelementptr [4 x i8], ptr %i.ed, i64 %i.ag
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ei = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1 ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.next.1 ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %i.ap
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !18
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !18
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.en = getelementptr [4 x i8], ptr %i.ej, i64 %i.ag
  store i32 %i.em, ptr %i.en, align 4, !tbaa !18
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.ao
  br i1 %exitcond.1.not.1, label %._crit_edge.1, label %.preheader.1, !llvm.loop !74

._crit_edge.1:                                    ; preds = %.preheader.1.prol.loopexit, %.preheader.1, %middle.block137
  %.idx = shl nuw nsw i64 %i.ao, 3                ; 4 uses
  %i.eo = getelementptr i8, ptr %i.an, i64 %.idx  ; 4 uses
  %min.iters.check151 = icmp samesign ult i64 %i.ao, 52
  br i1 %min.iters.check151, label %.preheader.2.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %._crit_edge.1
  %i.ep = shl i64 %i.ag, 2                        ; 3 uses
  %i.eq = add i64 %i.ep, -1
  %diff.check141 = icmp ult i64 %i.eq, 31
  %i.er = shl i64 %i.al, 2                        ; 2 uses
  %i.es = add i64 %i.er, %i.ak
  %i.et = add i64 %.idx, %i.ai
  %i.eu = shl i64 %i.am, 2                        ; 3 uses
  %i.ev = add i64 %i.et, %i.eu
  %i.ew = sub i64 %i.ev, %i.es
  %diff.check142 = icmp ugt i64 %i.ew, -32
  %conflict.rdx143 = or i1 %diff.check141, %diff.check142
  %i.ex = add i64 %.idx, %i.ai
  %i.ey = add i64 %i.ex, %i.eu                    ; 2 uses
  %i.ez = sub i64 %i.ak, %i.ey
  %diff.check144 = icmp ugt i64 %i.ez, -32
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %i.fa = add i64 %i.ey, %i.ep
  %i.fb = add i64 %i.er, %i.ak
  %i.fc = sub i64 %i.fb, %i.fa
  %diff.check146 = icmp ugt i64 %i.fc, -32
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  %i.fd = add i64 %.idx, %i.ai
  %i.fe = add i64 %i.fd, %i.eu
  %i.ff = add i64 %i.fe, %i.ep
  %i.fg = sub i64 %i.ak, %i.ff
  %diff.check148 = icmp ugt i64 %i.fg, -32
  %conflict.rdx149 = or i1 %conflict.rdx147, %diff.check148
  br i1 %conflict.rdx149, label %.preheader.2.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck140
  %n.vec153 = and i64 %i.b, 2147483640            ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %i.fh = getelementptr [4 x i8], ptr %i.aj, i64 %index155 ; 3 uses
  %i.fi = getelementptr [4 x i8], ptr %i.eo, i64 %index155 ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fh, i64 16
  %wide.load156 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !18
  %wide.load157 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !18
  %i.fk = getelementptr i8, ptr %i.fi, i64 16
  store <4 x i32> %wide.load156, ptr %i.fi, align 4, !tbaa !18
  store <4 x i32> %wide.load157, ptr %i.fk, align 4, !tbaa !18
  %i.fl = getelementptr [4 x i8], ptr %i.fh, i64 %i.al ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  %wide.load158 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !18
  %wide.load159 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !18
  %i.fn = getelementptr [4 x i8], ptr %i.fi, i64 %i.ag ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store <4 x i32> %wide.load158, ptr %i.fn, align 4, !tbaa !18
  store <4 x i32> %wide.load159, ptr %i.fo, align 4, !tbaa !18
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.fp, label %middle.block161, label %vector.body154, !llvm.loop !75

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.ao, %n.vec153
  br i1 %cmp.n162, label %.split74, label %.preheader.2.preheader

.preheader.2.preheader:                           ; preds = %vector.memcheck140, %._crit_edge.1, %middle.block161
  %indvars.iv.2.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %._crit_edge.1 ], [ %n.vec153, %middle.block161 ] ; 5 uses
  %.neg182 = or disjoint i64 %indvars.iv.2.ph, 1
  %xtraiter169 = and i64 %i.b, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader.2.prol.loopexit, label %.preheader.2.prol

.preheader.2.prol:                                ; preds = %.preheader.2.preheader
  %i.fq = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.2.ph ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv.2.ph ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !18
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !18
  %i.ft = getelementptr [4 x i8], ptr %i.fq, i64 %i.al
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !18
  %i.fv = getelementptr [4 x i8], ptr %i.fr, i64 %i.ag
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !18
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %.preheader.2.prol.loopexit

.preheader.2.prol.loopexit:                       ; preds = %.preheader.2.prol, %.preheader.2.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %.preheader.2.preheader ], [ %indvars.iv.next.2.prol, %.preheader.2.prol ]
  %i.fw = icmp eq i64 %i.ao, %.neg182
  br i1 %i.fw, label %.split74, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2.prol.loopexit, %.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %.preheader.2 ], [ %indvars.iv.2.unr, %.preheader.2.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.2 ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv.2 ; 2 uses
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !18
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !18
  %i.ga = getelementptr [4 x i8], ptr %i.fx, i64 %i.al
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !18
  %i.gc = getelementptr [4 x i8], ptr %i.fy, i64 %i.ag
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.gd = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2 ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv.next.2 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !18
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !18
  %i.gg = getelementptr [4 x i8], ptr %i.gd, i64 %i.al
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !18
  %i.gi = getelementptr [4 x i8], ptr %i.ge, i64 %i.ag
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !18
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.ao
  br i1 %exitcond.2.not.1, label %.split74, label %.preheader.2, !llvm.loop !76

.split74:                                         ; preds = %.preheader.2.prol.loopexit, %.preheader.2, %middle.block161, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %.split74
  %i.gj = load ptr, ptr %10, align 8, !tbaa !16
  call void @free(ptr noundef %i.gj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11unique_rowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.gk = load ptr, ptr %13, align 8, !tbaa !23
  call void @free(ptr noundef %i.gk) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !13 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.gm, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.k

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.i
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.go, %i.gm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.gm, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  %.pr.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !tbaa !24
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.gp = phi i64 [ %i.gm, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %i.gq = icmp slt i64 %i.gp, 1
  br i1 %i.gq, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.gr = load ptr, ptr %14, align 8, !tbaa !23
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gr, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !24 ; 4 uses
  %i.gv = icmp sgt i64 %i.gu, 0
  br i1 %i.gv, label %.lr.ph, label %._crit_edge76

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.gw = load ptr, ptr %12, align 8, !tbaa !23   ; 5 uses
  %i.gx = load ptr, ptr %14, align 8, !tbaa !23   ; 5 uses
  %xtraiter171 = and i64 %i.gu, 3                 ; 3 uses
  %i.gy = icmp ult i64 %i.gu, 4
  br i1 %i.gy, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gu, 9223372036854775804
  br label %bb.r

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %._crit_edge76, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next87.3, %._crit_edge76.loopexit.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod173)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv86.epil = phi i64 [ %indvars.iv86.epil.init, %.epil.preheader ], [ %indvars.iv.next87.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv86.epil
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !18
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !18
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !18
  %indvars.iv.next87.epil = add nuw nsw i64 %indvars.iv86.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter171
  br i1 %epil.iter.cmp.not, label %._crit_edge76, label %bb.l, !llvm.loop !77

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit.unr-lcssa, %bb.l, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.hf = load i64, ptr %i.d, align 8, !tbaa !13  ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !28
  %.not.i.i = icmp eq i64 %i.hf, %i.hh
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge76
  %i.hi = load ptr, ptr %2, align 8, !tbaa !29
  call void @free(ptr noundef %i.hi) #12
  %i.hj = icmp sgt i64 %i.hf, 0
  br i1 %i.hj, label %bb.n, label %.sink.split.i.i

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN3igl16is_boundary_edgeIN5Eigen6MatrixIjLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT0_EERKNS6_IT_EERNS1_15PlainObjectBaseIT1_EE
define weak_odr dso_local void @_ZN3igl16is_boundary_edgeIN5Eigen6MatrixIjLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT0_EERKNS6_IT_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.58", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 8 uses
  %12 = alloca %"class.Eigen::Matrix.3", align 8  ; 10 uses
  %13 = alloca %"class.Eigen::Matrix.3", align 8  ; 7 uses
  %14 = alloca %"class.Eigen::Matrix.3", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 10 uses
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %sext = mul i64 %i.b, 12884901888
  %i.f = ashr exact i64 %sext, 32
  %i.g = add nsw i64 %i.e, %i.f                   ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.h = icmp sgt i64 %i.g, 4611686018427387903
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.k = icmp sgt i64 %i.g, 0
  br i1 %i.k, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp samesign ult i64 %i.g, 2305843009213693952
  br i1 %.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.invoke

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.g, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.c, %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #14
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i, ptr %7, align 8, !tbaa !16
  br label %bb.e

common.resume:                                    ; preds = %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn63, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.invoke
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %7, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.q) #12
  br label %common.resume

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i
  %i.r = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  store i64 %i.g, ptr %i.i, align 8, !tbaa !13
  store i64 2, ptr %i.j, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  store ptr %i.r, ptr %8, align 8, !tbaa !34, !alias.scope !99
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.u, align 8, !tbaa !35, !alias.scope !99
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.t, ptr %i.v, align 8, !tbaa !35, !alias.scope !99
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.w, align 8, !tbaa !37, !alias.scope !99
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i64 %i.g, ptr %i.y, align 8, !tbaa !40, !alias.scope !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  store ptr %i.z, ptr %3, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.aa, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.r, ptr %4, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.g, ptr %i.ab, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %4, ptr %5, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.ad, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.ae, align 8, !tbaa !54
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.af = icmp sgt i32 %i.c, 0
  %i.ag = load i64, ptr %i.i, align 8             ; 14 uses
  br i1 %i.af, label %.split, label %.split74

.split:                                           ; preds = %bb.f
  %i.ah = load ptr, ptr %7, align 8               ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %1, align 8, !tbaa !57    ; 17 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !58 ; 11 uses
  %i.al = load i64, ptr %i.d, align 8, !tbaa !13  ; 4 uses
  %i.am = getelementptr [4 x i8], ptr %i.ah, i64 %i.al ; 5 uses
  %i.an = and i64 %i.b, 2147483647                ; 15 uses
  %xtraiter = and i64 %i.b, 1
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %.preheader.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i64 %i.b, 2147483646
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.w

.preheader:                                       ; preds = %.preheader, %.split.new
  %indvars.iv = phi i64 [ 0, %.split.new ], [ %indvars.iv.next.1172, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.split.new ], [ %niter.next.1, %.preheader ]
  %i.aq = mul nsw i64 %i.ak, %indvars.iv
  %i.ar = getelementptr [4 x i8], ptr %i.aj, i64 %i.aq ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18
  store i32 %i.au, ptr %i.as, align 4, !tbaa !18
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18
  %i.ax = getelementptr [4 x i8], ptr %i.as, i64 %i.ag
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ay = mul nsw i64 %i.ak, %indvars.iv.next
  %i.az = getelementptr [4 x i8], ptr %i.aj, i64 %i.ay ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !18
  %i.bd = getelementptr i8, ptr %i.az, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = getelementptr [4 x i8], ptr %i.ba, i64 %i.ag
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !18
  %indvars.iv.next.1172 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader, !llvm.loop !83

._crit_edge.unr-lcssa:                            ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.1172, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i64 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod170)
  %i.bg = mul nsw i64 %i.ak, %indvars.iv.epil.init
  %i.bh = getelementptr [4 x i8], ptr %i.aj, i64 %i.bg ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.epil.init ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = getelementptr [4 x i8], ptr %i.bi, i64 %i.ag
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.preheader.epil.preheader
  %i.bo = getelementptr [4 x i8], ptr %i.am, i64 %i.an ; 6 uses
  %min.iters.check = icmp samesign ugt i64 %i.an, 39
  %ident.check.not = icmp eq i64 %i.ak, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.preheader.1.preheader

vector.memcheck:                                  ; preds = %._crit_edge
  %i.bp = shl nuw nsw i64 %i.an, 3
  %i.bq = shl i64 %i.al, 2                        ; 2 uses
  %15 = add i64 %i.bp, %i.bq                      ; 2 uses
  %i.br = getelementptr i8, ptr %i.ah, i64 %15    ; 2 uses
  %i.bs = shl i64 %i.ag, 2                        ; 2 uses
  %i.bt = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ah, i64 %i.bq
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bs
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bt  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ah, i64 %15
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bz, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.bo, %i.by
  %bound1 = icmp ult ptr %i.bw, %i.br
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %i.bo, %i.ca
  %bound1117 = icmp ult ptr %i.aj, %i.br
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult ptr %i.bw, %i.ca
  %bound1120 = icmp ult ptr %i.aj, %i.by
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  br i1 %conflict.rdx122, label %.preheader.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.aj, i64 %index ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %i.bo, i64 %index ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %i.ce = getelementptr i8, ptr %i.cb, i64 24
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !18, !alias.scope !100
  %wide.load123 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !18, !alias.scope !100
  %i.cf = getelementptr i8, ptr %i.cc, i64 16
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !18, !alias.scope !101, !noalias !102
  store <4 x i32> %wide.load123, ptr %i.cf, align 4, !tbaa !18, !alias.scope !101, !noalias !102
  %i.cg = getelementptr i8, ptr %i.cb, i64 16
  %wide.load124 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !18, !alias.scope !100
  %wide.load125 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !18, !alias.scope !100
  %i.ch = getelementptr [4 x i8], ptr %i.cc, i64 %i.ag ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store <4 x i32> %wide.load124, ptr %i.ch, align 4, !tbaa !18, !alias.scope !103, !noalias !100
  store <4 x i32> %wide.load125, ptr %i.ci, align 4, !tbaa !18, !alias.scope !103, !noalias !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.1, label %.preheader.1.preheader

.preheader.1.preheader:                           ; preds = %vector.memcheck, %._crit_edge, %middle.block
  %indvars.iv.1.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %._crit_edge ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.1.ph, 1
  %xtraiter174 = and i64 %i.b, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.preheader.1.prol.loopexit, label %.preheader.1.prol

.preheader.1.prol:                                ; preds = %.preheader.1.preheader
  %i.ck = mul nsw i64 %i.ak, %indvars.iv.1.ph
  %i.cl = getelementptr [4 x i8], ptr %i.aj, i64 %i.ck ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.1.ph ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !18
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cq = getelementptr [4 x i8], ptr %i.cm, i64 %i.ag
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !18
  %indvars.iv.next.1.prol = or disjoint i64 %indvars.iv.1.ph, 1
  br label %.preheader.1.prol.loopexit

.preheader.1.prol.loopexit:                       ; preds = %.preheader.1.prol, %.preheader.1.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %.preheader.1.preheader ], [ %indvars.iv.next.1.prol, %.preheader.1.prol ]
  %i.cr = icmp eq i64 %i.an, %.neg
  br i1 %i.cr, label %._crit_edge.1, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.prol.loopexit, %.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %.preheader.1 ], [ %indvars.iv.1.unr, %.preheader.1.prol.loopexit ] ; 4 uses
  %i.cs = mul nsw i64 %i.ak, %indvars.iv.1
  %i.ct = getelementptr [4 x i8], ptr %i.aj, i64 %i.cs ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.1 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !18
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !18
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.cy = getelementptr [4 x i8], ptr %i.cu, i64 %i.ag
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.cz = mul nsw i64 %i.ak, %indvars.iv.next.1
  %i.da = getelementptr [4 x i8], ptr %i.aj, i64 %i.cz ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next.1 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !18
  %i.de = load i32, ptr %i.da, align 4, !tbaa !18
  %i.df = getelementptr [4 x i8], ptr %i.db, i64 %i.ag
  store i32 %i.de, ptr %i.df, align 4, !tbaa !18
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %i.an
  br i1 %exitcond.1.not.1, label %._crit_edge.1, label %.preheader.1, !llvm.loop !89

._crit_edge.1:                                    ; preds = %.preheader.1.prol.loopexit, %.preheader.1, %middle.block
  %.idx = shl nuw nsw i64 %i.an, 3                ; 2 uses
  %i.dg = getelementptr i8, ptr %i.am, i64 %.idx  ; 6 uses
  %min.iters.check144 = icmp samesign ugt i64 %i.an, 39
  %ident.check127.not = icmp eq i64 %i.ak, 1
  %or.cond169 = and i1 %min.iters.check144, %ident.check127.not
  br i1 %or.cond169, label %vector.memcheck145, label %.preheader.2.preheader

vector.memcheck145:                               ; preds = %._crit_edge.1
  %i.dh = mul nuw nsw i64 %i.an, 12               ; 2 uses
  %i.di = shl i64 %i.al, 2                        ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ah, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di  ; 2 uses
  %i.dl = shl i64 %i.ag, 2
  %i.dm = getelementptr i8, ptr %i.ah, i64 %.idx
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.di
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dl  ; 2 uses
  %i.dp = add i64 %i.al, %i.ag
  %i.dq = shl i64 %i.dp, 2
  %i.dr = getelementptr i8, ptr %i.ah, i64 %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dq  ; 2 uses
  %i.dt = shl nuw nsw i64 %i.an, 2
  %i.du = getelementptr i8, ptr %i.aj, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 4      ; 2 uses
  %bound0146 = icmp ult ptr %i.dg, %i.ds
  %bound1147 = icmp ult ptr %i.do, %i.dk
  %found.conflict148 = and i1 %bound0146, %bound1147
  %bound0149 = icmp ult ptr %i.dg, %i.dv
  %bound1150 = icmp ult ptr %i.aj, %i.dk
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %found.conflict148, %found.conflict151
  %bound0153 = icmp ult ptr %i.do, %i.dv
  %bound1154 = icmp ult ptr %i.aj, %i.ds
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  br i1 %conflict.rdx156, label %.preheader.2.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck145
  %n.vec158 = and i64 %i.b, 2147483640            ; 3 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 3 uses
  %i.dw = getelementptr [4 x i8], ptr %i.aj, i64 %index160 ; 4 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dg, i64 %index160 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 16
  %wide.load161 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !18, !alias.scope !104
  %wide.load162 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !18, !alias.scope !104
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store <4 x i32> %wide.load161, ptr %i.dx, align 4, !tbaa !18, !alias.scope !105, !noalias !106
  store <4 x i32> %wide.load162, ptr %i.dz, align 4, !tbaa !18, !alias.scope !105, !noalias !106
  %i.ea = getelementptr i8, ptr %i.dw, i64 4
  %i.eb = getelementptr i8, ptr %i.dw, i64 20
  %wide.load163 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !18, !alias.scope !104
  %wide.load164 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !18, !alias.scope !104
  %i.ec = getelementptr [4 x i8], ptr %i.dx, i64 %i.ag ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store <4 x i32> %wide.load163, ptr %i.ec, align 4, !tbaa !18, !alias.scope !107, !noalias !104
  store <4 x i32> %wide.load164, ptr %i.ed, align 4, !tbaa !18, !alias.scope !107, !noalias !104
  %index.next165 = add nuw i64 %index160, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.ee, label %middle.block166, label %vector.body159, !llvm.loop !94

middle.block166:                                  ; preds = %vector.body159
  %cmp.n167 = icmp eq i64 %i.an, %n.vec158
  br i1 %cmp.n167, label %.split74, label %.preheader.2.preheader

.preheader.2.preheader:                           ; preds = %vector.memcheck145, %._crit_edge.1, %middle.block166
  %indvars.iv.2.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %._crit_edge.1 ], [ %n.vec158, %middle.block166 ] ; 5 uses
  %.neg190 = or disjoint i64 %indvars.iv.2.ph, 1
  %xtraiter176 = and i64 %i.b, 1
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.preheader.2.prol.loopexit, label %.preheader.2.prol

.preheader.2.prol:                                ; preds = %.preheader.2.preheader
  %i.ef = mul nsw i64 %i.ak, %indvars.iv.2.ph
  %i.eg = getelementptr [4 x i8], ptr %i.aj, i64 %i.ef ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.2.ph ; 2 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !18
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !18
  %i.ej = getelementptr i8, ptr %i.eg, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  %i.el = getelementptr [4 x i8], ptr %i.eh, i64 %i.ag
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !18
  %indvars.iv.next.2.prol = or disjoint i64 %indvars.iv.2.ph, 1
  br label %.preheader.2.prol.loopexit

.preheader.2.prol.loopexit:                       ; preds = %.preheader.2.prol, %.preheader.2.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %.preheader.2.preheader ], [ %indvars.iv.next.2.prol, %.preheader.2.prol ]
  %i.em = icmp eq i64 %i.an, %.neg190
  br i1 %i.em, label %.split74, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2.prol.loopexit, %.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %.preheader.2 ], [ %indvars.iv.2.unr, %.preheader.2.prol.loopexit ] ; 4 uses
  %i.en = mul nsw i64 %i.ak, %indvars.iv.2
  %i.eo = getelementptr [4 x i8], ptr %i.aj, i64 %i.en ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.2 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !18
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !18
  %i.er = getelementptr i8, ptr %i.eo, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.ag
  store i32 %i.es, ptr %i.et, align 4, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.eu = mul nsw i64 %i.ak, %indvars.iv.next.2
  %i.ev = getelementptr [4 x i8], ptr %i.aj, i64 %i.eu ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv.next.2 ; 2 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !18
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !18
  %i.ey = getelementptr i8, ptr %i.ev, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !18
  %i.fa = getelementptr [4 x i8], ptr %i.ew, i64 %i.ag
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !18
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %exitcond.2.not.1 = icmp eq i64 %indvars.iv.next.2.1, %i.an
  br i1 %exitcond.2.not.1, label %.split74, label %.preheader.2, !llvm.loop !95

.split74:                                         ; preds = %.preheader.2.prol.loopexit, %.preheader.2, %middle.block166, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %.split74
  %i.fb = load ptr, ptr %10, align 8, !tbaa !16
  call void @free(ptr noundef %i.fb) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11unique_rowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.fc = load ptr, ptr %13, align 8, !tbaa !23
  call void @free(ptr noundef %i.fc) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !13 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.fe, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.k

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.i
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.fg, %i.fe
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.fe, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  %.pr.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !24
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.fh = phi i64 [ %i.fe, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %i.fi = icmp slt i64 %i.fh, 1
  br i1 %i.fi, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fj = load ptr, ptr %14, align 8, !tbaa !23
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fj, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !24 ; 4 uses
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %.lr.ph, label %._crit_edge76

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.fo = load ptr, ptr %12, align 8, !tbaa !23   ; 5 uses
  %i.fp = load ptr, ptr %14, align 8, !tbaa !23   ; 5 uses
  %xtraiter178 = and i64 %i.fm, 3                 ; 3 uses
  %i.fq = icmp ult i64 %i.fm, 4
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter181 = and i64 %i.fm, 9223372036854775804
  br label %bb.r

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %._crit_edge76, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next87.3, %._crit_edge76.loopexit.unr-lcssa ]
  %lcmp.mod180 = icmp ne i64 %xtraiter178, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv86.epil = phi i64 [ %indvars.iv86.epil.init, %.epil.preheader ], [ %indvars.iv.next87.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv86.epil
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !18
  %indvars.iv.next87.epil = add nuw nsw i64 %indvars.iv86.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_1
