Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/setunion?download=true
inline.NumInlined: 217
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }

$_ZN3igl8setunionIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_S3_EEvRKNS1_9DenseBaseIT_EERKNS4_IT0_EERNS1_15PlainObjectBaseIT1_EERNSD_IT2_EERNSD_IT3_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8setunionIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_S3_EEvRKNS1_9DenseBaseIT_EERKNS4_IT0_EERNS1_15PlainObjectBaseIT1_EERNSD_IT2_EERNSD_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = add nsw i64 %i.d, %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.e, i64 noundef 1)
          to label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader unwind label %bb.b

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %i.g = icmp sgt i64 %i.f, 0
  %i.h = load ptr, ptr %5, align 8                ; 8 uses
  br i1 %i.g, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader.split.us, label %.preheader87

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader.split.us: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !14     ; 7 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader.split.us
  %n.vec = and i64 %i.f, 9223372036854775800      ; 3 uses
  br label %vector.body

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
  %8 = phi ptr [ %i.h, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader ], [ %.pre, %.preheader87.loopexit ] ; 7 uses
  %.us-phi = phi i64 [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IliEERKT_RKT0_.exit.preheader ], [ %i.f, %.preheader87.loopexit ] ; 5 uses
  %9 = ptrtoaddr ptr %8 to i64
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !13  ; 7 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.preheader87.split95, label %.split

.preheader87.split95:                             ; preds = %.preheader87
  %i.am = load ptr, ptr %1, align 8, !tbaa !14    ; 7 uses
  %min.iters.check129 = icmp ult i64 %i.ak, 12
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.memcheck130

vector.memcheck130:                               ; preds = %.preheader87.split95
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = shl i64 %.us-phi, 2
  %i.ap = add i64 %i.ao, %9
  %i.aq = sub i64 %i.an, %i.ap
  %diff.check131 = icmp ugt i64 %i.aq, -32
  br i1 %diff.check131, label %scalar.ph128.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck130
  %n.vec133 = and i64 %i.ak, 9223372036854775800  ; 4 uses
  %i.ar = add nuw i64 %.us-phi, %n.vec133
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.us-phi
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %i.am, i64 %index135 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %wide.load136 = load <4 x i32>, ptr %i.at, align 4, !tbaa !28
  %wide.load137 = load <4 x i32>, ptr %i.au, align 4, !tbaa !28
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index135 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %wide.load136, ptr %i.av, align 4, !tbaa !28
  store <4 x i32> %wide.load137, ptr %i.aw, align 4, !tbaa !28
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.ax, label %middle.block139, label %vector.body134, !llvm.loop !20

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %i.ak, %n.vec133
  br i1 %cmp.n140, label %.split, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %vector.memcheck130, %.preheader87.split95, %middle.block139
  %indvars.iv105.ph = phi i64 [ %.us-phi, %vector.memcheck130 ], [ %.us-phi, %.preheader87.split95 ], [ %i.ar, %middle.block139 ] ; 2 uses
  %indvars.iv103.ph = phi i64 [ 0, %vector.memcheck130 ], [ 0, %.preheader87.split95 ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %xtraiter160 = and i64 %i.ak, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader, %scalar.ph128.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph128.prol ], [ %indvars.iv105.ph, %scalar.ph128.preheader ] ; 2 uses
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %scalar.ph128.prol ], [ %indvars.iv103.ph, %scalar.ph128.preheader ] ; 2 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %scalar.ph128.prol ], [ 0, %scalar.ph128.preheader ]
  %i.ay = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv103.prol
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv105.prol
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !28
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol, !llvm.loop !21

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph128.preheader ], [ %indvars.iv.next106.prol, %scalar.ph128.prol ]
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %scalar.ph128.preheader ], [ %indvars.iv.next104.prol, %scalar.ph128.prol ]
  %i.bb = sub nsw i64 %indvars.iv103.ph, %i.ak
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %.split, label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph128 ], [ %indvars.iv105.unr, %scalar.ph128.prol.loopexit ] ; 5 uses
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %scalar.ph128 ], [ %indvars.iv103.unr, %scalar.ph128.prol.loopexit ] ; 5 uses
  %i.bd = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv103
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv105
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv103
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !28
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !28
  %i.bl = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv103
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv105
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !28
  %i.bq = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv103
  %i.br = getelementptr i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !28
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv105
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !28
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %indvars.iv.next104.3, %i.ak
  br i1 %exitcond110.not.3, label %.split, label %scalar.ph128, !llvm.loop !22

.split:                                           ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block139, %.preheader87
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl6uniqueIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.split
  %i.bv = load ptr, ptr %7, align 8, !tbaa !14
  call void @free(ptr noundef %i.bv) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bx = trunc i64 %i.bw to i32                  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13, !noalias !33 ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = icmp slt i32 %i.cc, %i.bx
  %i.ce = zext i1 %i.cd to i64                    ; 3 uses
  %i.cf = icmp sgt i64 %i.bz, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.cg = add nsw i64 %i.bz, -1                   ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.bz, 5
  br i1 %min.iters.check144, label %.lr.ph.i.i.i.i.preheader157, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec146 = and i64 %i.cg, -4                   ; 3 uses
  %i.ch = or disjoint i64 %n.vec146, 1
  %i.ci = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ce, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body147 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ci, %vector.ph145 ], [ %i.cq, %vector.body147 ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph145 ], [ %i.cr, %vector.body147 ]
  %i.cj = getelementptr [4 x i8], ptr %i.cb, i64 %index148 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = getelementptr i8, ptr %i.cj, i64 12
  %wide.load150 = load <2 x i32>, ptr %i.ck, align 4, !tbaa !28
  %wide.load151 = load <2 x i32>, ptr %i.cl, align 4, !tbaa !28
  %i.cm = icmp slt <2 x i32> %wide.load150, %broadcast.splat
  %i.cn = icmp slt <2 x i32> %wide.load151, %broadcast.splat
  %i.co = zext <2 x i1> %i.cm to <2 x i64>
  %i.cp = zext <2 x i1> %i.cn to <2 x i64>
  %i.cq = add <2 x i64> %vec.phi, %i.co           ; 2 uses
  %i.cr = add <2 x i64> %vec.phi149, %i.cp        ; 2 uses
  %index.next152 = add nuw i64 %index148, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.cs, label %middle.block153, label %vector.body147, !llvm.loop !25

middle.block153:                                  ; preds = %vector.body147
  %bin.rdx = add <2 x i64> %i.cr, %i.cq
  %i.ct = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n154 = icmp eq i64 %i.cg, %n.vec146
  br i1 %cmp.n154, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %.lr.ph.i.i.i.i.preheader157

.lr.ph.i.i.i.i.preheader157:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block153
  %.01724.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block153 ]
  %.02223.i.i.i.i.ph = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %middle.block153 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader157, %.lr.ph.i.i.i.i
  %.01724.i.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i.i ], [ %.01724.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader157 ] ; 2 uses
  %.02223.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i ], [ %.02223.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader157 ]
  %i.cu = getelementptr [4 x i8], ptr %i.cb, i64 %.01724.i.i.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28
  %i.cw = icmp slt i32 %i.cv, %i.bx
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add nuw nsw i64 %.02223.i.i.i.i, %i.cx  ; 2 uses
  %i.cz = add nuw nsw i64 %.01724.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cz, %i.bz
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block153, %bb.d, %bb.c
  %.0.i.i = phi i64 [ 0, %bb.c ], [ %i.ce, %bb.d ], [ %i.ct, %middle.block153 ], [ %i.cy, %.lr.ph.i.i.i.i ]
  %i.da = shl i64 %.0.i.i, 32                     ; 2 uses
  %i.db = ashr exact i64 %i.da, 32                ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.db, %i.dd
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit
  %i.de = load ptr, ptr %3, align 8, !tbaa !14
  call void @free(ptr noundef %i.de) #10
  %i.df = icmp sgt i64 %i.db, 0
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.e
  %i.dg = lshr exact i64 %i.da, 30
  %i.dh = call noalias ptr @malloc(i64 noundef %i.dg) #11 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.e
  %.sink.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.e ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !14
  %.pre115 = load i64, ptr %i.by, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit
  %i.dj = phi i64 [ %.pre115, %.sink.split.i.i ], [ %i.bz, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIiiLNS2_14ComparisonNameE1EEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEE5countEv.exit ] ; 2 uses
end_hunk_0
