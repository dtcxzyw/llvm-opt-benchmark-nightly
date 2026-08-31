Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseSymMatrix?download=true
inline.NumInlined: 571
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Ipopt14DenseSymMatrixD2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(20) %i.f) #18, !inline_history !39
  br label %_ZN5Ipopt6MatrixD2Ev.exit

_ZN5Ipopt6MatrixD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5Ipopt14DenseSymMatrixD1Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5Ipopt14DenseSymMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt14DenseSymMatrixD0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5Ipopt14DenseSymMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5Ipopt14DenseSymMatrixD0Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN5Ipopt14DenseSymMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.a) #18, !inline_history !40
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(97) %i.a, i64 noundef 104) #20, !inline_history !40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseSymMatrix14MultVectorImplEdRKNS_6VectorEdRS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(205) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50, !range !51, !noundef !52
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 233 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !51
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i = select i1 %i.o, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %4)
  store i8 1, ptr %i.m, align 8, !tbaa !50
  store i8 0, ptr %i.p, align 1, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #19
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.ad = phi ptr [ %i.t, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ]
  tail call void @_ZN5Ipopt10IpBlasSymvEidPKdiS1_idPdi(i32 noundef %i.d, double noundef %1, ptr noundef %i.f, i32 noundef %i.j, ptr noundef %i.l, i32 noundef 1, double noundef %3, ptr noundef %i.ad, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZN5Ipopt10IpBlasSymvEidPKdiS1_idPdi(i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix12FillIdentityEd(ptr noundef nonnull align 8 dereferenceable(97) %0, double noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph18, label %._crit_edge

.lr.ph18:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = add nuw i32 %i.d, 1
  %i.i = add nsw i32 %i.d, -2
  %i.j = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.b
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !57

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.k, align 8, !tbaa !38
  ret void

bb.b:                                             ; preds = %.lr.ph18, %.loopexit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next23, %.loopexit ] ; 4 uses
  %indvars24 = trunc i64 %indvars.iv22 to i32     ; 2 uses
  %i.l = mul nuw nsw i32 %i.d, %indvars24
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store double %1, ptr %i.o, align 8, !tbaa !59
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next23, %i.j
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = trunc i64 %indvars.iv22 to i32
  %i.r = sub i32 %i.i, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 8
  %i.v = mul i32 %i.h, %indvars24
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.u, i1 false), !tbaa !59
  br label %.loopexit
}

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix9AddMatrixEdRKS0_d(ptr noundef nonnull align 8 dereferenceable(97) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %2, double noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 19 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = fcmp oeq double %3, 0.000000e+00
  br i1 %i.i, label %.preheader61, label %bb.c

.preheader61:                                     ; preds = %bb.b
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = zext nneg i32 %i.h to i64                ; 6 uses
  %i.o = sub i64 %i.d, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %broadcast.splatinsert148 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat149 = shufflevector <2 x double> %broadcast.splatinsert148, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit158
  %indvars.iv92 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next93, %.loopexit158 ] ; 6 uses
  %4 = mul nuw nsw i64 %indvars.iv92, %i.n        ; 6 uses
  %5 = sub nsw i64 %i.n, %indvars.iv92            ; 3 uses
  %min.iters.check145 = icmp ult i64 %5, 4
  %or.cond = select i1 %min.iters.check145, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph144.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.preheader
  %n.vec147 = and i64 %5, -4                      ; 3 uses
  %i.p = add i64 %indvars.iv92, %n.vec147
  %invariant.op173 = add nuw i64 %indvars.iv92, %4
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body150 ] ; 2 uses
  %.reass174 = add nuw i64 %index151, %invariant.op173 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass174 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load152 = load <2 x double>, ptr %i.q, align 8, !tbaa !59
  %wide.load153 = load <2 x double>, ptr %i.r, align 8, !tbaa !59
  %i.s = fmul <2 x double> %broadcast.splat149, %wide.load152
  %i.t = fmul <2 x double> %broadcast.splat149, %wide.load153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass174 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %i.s, ptr %i.u, align 8, !tbaa !59
  store <2 x double> %i.t, ptr %i.v, align 8, !tbaa !59
  %index.next154 = add nuw i64 %index151, 4       ; 2 uses
  %i.w = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.w, label %middle.block155, label %vector.body150, !llvm.loop !60

middle.block155:                                  ; preds = %vector.body150
  %cmp.n156 = icmp eq i64 %5, %n.vec147
  br i1 %cmp.n156, label %.loopexit158, label %scalar.ph144.preheader

scalar.ph144.preheader:                           ; preds = %.preheader, %middle.block155
  %indvars.iv94.ph = phi i64 [ %indvars.iv92, %.preheader ], [ %i.p, %middle.block155 ] ; 4 uses
  %i.x = sub i64 %i.n, %indvars.iv94.ph
  %xtraiter165 = and i64 %i.x, 3                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol

scalar.ph144.prol:                                ; preds = %scalar.ph144.preheader, %scalar.ph144.prol
  %indvars.iv94.prol = phi i64 [ %indvars.iv.next95.prol, %scalar.ph144.prol ], [ %indvars.iv94.ph, %scalar.ph144.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph144.prol ], [ 0, %scalar.ph144.preheader ]
  %i.y = add nuw nsw i64 %indvars.iv94.prol, %4   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59
  %i.ab = fmul double %1, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y
  store double %i.ab, ptr %i.ac, align 8, !tbaa !59
  %indvars.iv.next95.prol = add nuw nsw i64 %indvars.iv94.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %scalar.ph144.prol.loopexit, label %scalar.ph144.prol, !llvm.loop !63

scalar.ph144.prol.loopexit:                       ; preds = %scalar.ph144.prol, %scalar.ph144.preheader
  %indvars.iv94.unr = phi i64 [ %indvars.iv94.ph, %scalar.ph144.preheader ], [ %indvars.iv.next95.prol, %scalar.ph144.prol ]
  %i.ad = sub i64 %indvars.iv94.ph, %i.n
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit158, label %scalar.ph144.preheader.new

scalar.ph144.preheader.new:                       ; preds = %scalar.ph144.prol.loopexit
  %invariant.op175 = add nuw nsw i64 1, %4
  %invariant.op177 = add nuw nsw i64 2, %4
  %invariant.op179 = add nuw nsw i64 3, %4
  br label %scalar.ph144

.loopexit158:                                     ; preds = %scalar.ph144.prol.loopexit, %scalar.ph144, %middle.block155
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next93, %i.n
  br i1 %exitcond101.not, label %.loopexit, label %.preheader, !llvm.loop !65

scalar.ph144:                                     ; preds = %scalar.ph144, %scalar.ph144.preheader.new
  %indvars.iv94 = phi i64 [ %indvars.iv94.unr, %scalar.ph144.preheader.new ], [ %indvars.iv.next95.3, %scalar.ph144 ] ; 5 uses
  %i.af = add nuw nsw i64 %indvars.iv94, %4       ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !59
  %i.ai = fmul double %1, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af
  store double %i.ai, ptr %i.aj, align 8, !tbaa !59
  %.reass176 = add nuw nsw i64 %indvars.iv94, %invariant.op175 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass176
  %i.al = load double, ptr %i.ak, align 8, !tbaa !59
  %i.am = fmul double %1, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass176
  store double %i.am, ptr %i.an, align 8, !tbaa !59
  %.reass178 = add nuw nsw i64 %indvars.iv94, %invariant.op177 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass178
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !59
  %i.aq = fmul double %1, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass178
  store double %i.aq, ptr %i.ar, align 8, !tbaa !59
  %.reass180 = add nuw nsw i64 %indvars.iv94, %invariant.op179 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass180
  %i.at = load double, ptr %i.as, align 8, !tbaa !59
  %i.au = fmul double %1, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass180
  store double %i.au, ptr %i.av, align 8, !tbaa !59
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %exitcond98.not.3 = icmp eq i64 %indvars.iv.next95.3, %i.n
  br i1 %exitcond98.not.3, label %.loopexit158, label %scalar.ph144, !llvm.loop !66

bb.c:                                             ; preds = %bb.b
  %i.aw = fcmp oeq double %3, 1.000000e+00
  %i.ax = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.aw, label %.preheader63, label %.preheader66

.preheader66:                                     ; preds = %bb.c
  br i1 %i.ax, label %.preheader65.lr.ph, label %.loopexit

.preheader65.lr.ph:                               ; preds = %.preheader66
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 6 uses
  %i.ba = zext nneg i32 %i.h to i64               ; 8 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 8
  %i.bd = shl nuw nsw i64 %i.ba, 3
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert114 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat115 = shufflevector <2 x double> %broadcast.splatinsert114, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = add nsw i64 %i.ba, -1
  br label %.preheader65

.preheader63:                                     ; preds = %bb.c
  br i1 %i.ax, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37 ; 6 uses
  %i.bh = zext nneg i32 %i.h to i64               ; 8 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 8
  %i.bk = shl nuw nsw i64 %i.bh, 3
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = add nsw i64 %i.bh, -1
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.lr.ph, %.loopexit159
  %indvars.iv82 = phi i64 [ 0, %.preheader62.lr.ph ], [ %indvars.iv.next83, %.loopexit159 ] ; 9 uses
  %6 = mul nuw nsw i64 %indvars.iv82, %i.bh       ; 4 uses
  %7 = sub nsw i64 %i.bh, %indvars.iv82           ; 3 uses
  %min.iters.check128 = icmp ult i64 %7, 4
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %.preheader62
  %i.bm = mul i64 %i.bk, %indvars.iv82
  %i.bn = add i64 %i.bi, %i.bm                    ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.c, i64 %i.bn
  %i.bo = mul i64 %i.bj, %indvars.iv82            ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.c, i64 %i.bo
  %scevgep121 = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep120 = getelementptr i8, ptr %i.bg, i64 %i.bo
  %bound0124 = icmp ult ptr %scevgep120, %scevgep123
  %bound1125 = icmp ult ptr %scevgep122, %scevgep121
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck119
  %n.vec130 = and i64 %7, -4                      ; 3 uses
  %i.bp = add i64 %indvars.iv82, %n.vec130
  %invariant.op169 = add nuw i64 %indvars.iv82, %6
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i64 [ 0, %vector.ph129 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %.reass170 = add nuw i64 %index134, %invariant.op169 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass170 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load135 = load <2 x double>, ptr %i.bq, align 8, !tbaa !59, !alias.scope !67
  %wide.load136 = load <2 x double>, ptr %i.br, align 8, !tbaa !59, !alias.scope !67
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.reass170 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.bs, align 8, !tbaa !59, !alias.scope !70, !noalias !67
  %wide.load138 = load <2 x double>, ptr %i.bt, align 8, !tbaa !59, !alias.scope !70, !noalias !67
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load135, <2 x double> %wide.load137)
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat132, <2 x double> %wide.load136, <2 x double> %wide.load138)
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !59, !alias.scope !70, !noalias !67
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !59, !alias.scope !70, !noalias !67
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next139, %n.vec130
  br i1 %i.bw, label %middle.block140, label %vector.body133, !llvm.loop !72

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %7, %n.vec130
  br i1 %cmp.n141, label %.loopexit159, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.memcheck119, %.preheader62, %middle.block140
  %indvars.iv84.ph = phi i64 [ %indvars.iv82, %vector.memcheck119 ], [ %indvars.iv82, %.preheader62 ], [ %i.bp, %middle.block140 ] ; 5 uses
  %i.bx = sub i64 %i.bh, %indvars.iv84.ph
  %xtraiter163 = and i64 %i.bx, 1
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader
  %i.by = add nuw nsw i64 %indvars.iv84.ph, %6    ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.by ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !59
  %i.cd = tail call double @llvm.fmuladd.f64(double %1, double %i.ca, double %i.cc)
  store double %i.cd, ptr %i.cb, align 8, !tbaa !59
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.ph, 1
  br label %scalar.ph127.prol.loopexit

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph127.preheader ], [ %indvars.iv.next85.prol, %scalar.ph127.prol ]
  %i.ce = icmp eq i64 %indvars.iv84.ph, %i.bl
  br i1 %i.ce, label %.loopexit159, label %scalar.ph127.preheader.new

scalar.ph127.preheader.new:                       ; preds = %scalar.ph127.prol.loopexit
  %invariant.op171 = add nuw nsw i64 1, %6
  br label %scalar.ph127

.loopexit159:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block140
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next83, %i.bh
  br i1 %exitcond91.not, label %.loopexit, label %.preheader62, !llvm.loop !73

scalar.ph127:                                     ; preds = %scalar.ph127, %scalar.ph127.preheader.new
  %indvars.iv84 = phi i64 [ %indvars.iv84.unr, %scalar.ph127.preheader.new ], [ %indvars.iv.next85.1, %scalar.ph127 ] ; 3 uses
  %i.cf = add nuw nsw i64 %indvars.iv84, %6       ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !59
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cf ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !59
  %i.ck = tail call double @llvm.fmuladd.f64(double %1, double %i.ch, double %i.cj)
  store double %i.ck, ptr %i.ci, align 8, !tbaa !59
  %.reass172 = add nuw nsw i64 %indvars.iv84, %invariant.op171 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass172
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.reass172 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !59
  %i.cp = tail call double @llvm.fmuladd.f64(double %1, double %i.cm, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !59
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %indvars.iv.next85.1, %i.bh
  br i1 %exitcond88.not.1, label %.loopexit159, label %scalar.ph127, !llvm.loop !74

.preheader65:                                     ; preds = %.preheader65.lr.ph, %.loopexit160
  %indvars.iv = phi i64 [ 0, %.preheader65.lr.ph ], [ %indvars.iv.next, %.loopexit160 ] ; 9 uses
  %8 = mul nuw nsw i64 %indvars.iv, %i.ba         ; 4 uses
  %9 = sub nsw i64 %i.ba, %indvars.iv             ; 3 uses
  %min.iters.check = icmp ult i64 %9, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader65
  %i.cq = mul i64 %i.bd, %indvars.iv
  %i.cr = add i64 %i.bb, %i.cq                    ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.c, i64 %i.cr
  %i.cs = mul i64 %i.bc, %indvars.iv              ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.c, i64 %i.cs
  %scevgep111 = getelementptr i8, ptr %i.az, i64 %i.cr
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.cs
  %bound0 = icmp ult ptr %scevgep, %scevgep113
  %bound1 = icmp ult ptr %scevgep112, %scevgep111
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, -4                         ; 3 uses
  %i.ct = add i64 %indvars.iv, %n.vec
  %invariant.op = add nuw i64 %indvars.iv, %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !59, !alias.scope !75
  %wide.load116 = load <2 x double>, ptr %i.cv, align 8, !tbaa !59, !alias.scope !75
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.reass ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.cw, align 8, !tbaa !59, !alias.scope !78, !noalias !75
  %wide.load118 = load <2 x double>, ptr %i.cx, align 8, !tbaa !59, !alias.scope !78, !noalias !75
  %i.cy = fmul <2 x double> %broadcast.splat, %wide.load117
  %i.cz = fmul <2 x double> %broadcast.splat, %wide.load118
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load, <2 x double> %i.cy)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat115, <2 x double> %wide.load116, <2 x double> %i.cz)
  store <2 x double> %i.da, ptr %i.cw, align 8, !tbaa !59, !alias.scope !78, !noalias !75
  store <2 x double> %i.db, ptr %i.cx, align 8, !tbaa !59, !alias.scope !78, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %.loopexit160, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader65, %middle.block
  %indvars.iv76.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader65 ], [ %i.ct, %middle.block ] ; 5 uses
  %i.dd = sub i64 %i.ba, %indvars.iv76.ph
  %xtraiter = and i64 %i.dd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.de = add nuw nsw i64 %indvars.iv76.ph, %8    ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !59
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.de ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !59
  %i.dj = fmul double %3, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %1, double %i.dg, double %i.dj)
  store double %i.dk, ptr %i.dh, align 8, !tbaa !59
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph.preheader ], [ %indvars.iv.next77.prol, %scalar.ph.prol ]
  %i.dl = icmp eq i64 %indvars.iv76.ph, %i.be
  br i1 %i.dl, label %.loopexit160, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op167 = add nuw nsw i64 1, %8
  br label %scalar.ph

.loopexit160:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, %i.ba
  br i1 %exitcond81.not, label %.loopexit, label %.preheader65, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv76 = phi i64 [ %indvars.iv76.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next77.1, %scalar.ph ] ; 3 uses
  %i.dm = add nuw nsw i64 %indvars.iv76, %8       ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !59
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.dm ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !59
  %i.dr = fmul double %3, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %1, double %i.do, double %i.dr)
  store double %i.ds, ptr %i.dp, align 8, !tbaa !59
  %.reass168 = add nuw nsw i64 %indvars.iv76, %invariant.op167 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.reass168
  %i.du = load double, ptr %i.dt, align 8, !tbaa !59
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.reass168 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !59
  %i.dx = fmul double %3, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %1, double %i.du, double %i.dx)
  store double %i.dy, ptr %i.dv, align 8, !tbaa !59
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next77.1, %i.ba
  br i1 %exitcond.not.1, label %.loopexit160, label %scalar.ph, !llvm.loop !82

.loopexit:                                        ; preds = %.loopexit160, %.loopexit159, %.loopexit158, %.preheader66, %.preheader63, %.preheader61
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.dz, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt14DenseSymMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d(ptr noundef nonnull align 8 dereferenceable(97) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3, double noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.46", align 8    ; 8 uses
  %6 = alloca %"class.std::vector.41", align 8    ; 9 uses
  %7 = alloca %"class.std::vector.46", align 8    ; 8 uses
  %8 = alloca %"class.std::vector.41", align 8    ; 9 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 3 uses
  %i.g = fcmp oeq double %4, 0.000000e+00
  %i.h = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.preheader124, label %.preheader126

.preheader126:                                    ; preds = %bb.a
  br i1 %i.h, label %.preheader125.lr.ph, label %.loopexit

.preheader125.lr.ph:                              ; preds = %.preheader126
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = zext nneg i32 %i.f to i64                ; 3 uses
  br label %.preheader125

.preheader124:                                    ; preds = %bb.a
  br i1 %i.h, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader124
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = zext nneg i32 %i.f to i64                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %indvars.iv160 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next161, %bb.b ] ; 5 uses
  %i.aa = mul nuw nsw i64 %indvars.iv160, %i.z
  br label %bb.c

bb.b:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next161, %i.z
  br i1 %exitcond169.not, label %.loopexit, label %.preheader, !llvm.loop !83

bb.c:                                             ; preds = %.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %indvars.iv162 = phi i64 [ %indvars.iv160, %.preheader ], [ %indvars.iv.next163, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64 ] ; 4 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !84, !noalias !87
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv162
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !90, !noalias !87 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.c
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !93, !noalias !87
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv162
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96, !noalias !87 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.c
  %.0.i3.i = phi ptr [ %i.ag, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !8, !noalias !87
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !8, !noalias !87
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !84, !noalias !98
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90, !noalias !98 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.am, null
  br i1 %.not.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !93, !noalias !98
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96, !noalias !98 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i56, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i53 = phi ptr [ %i.ap, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55 ], [ %i.am, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i3.i53, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !8, !noalias !98
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !8, !noalias !98
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55
  %.0.i4.i54 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i55 ], [ %.0.i3.i53, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i52 ] ; 12 uses
  %i.at = icmp eq ptr %.0.i4.i, %.0.i4.i54
  br i1 %i.at, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !102
  %.not.i.i58 = icmp eq i32 %i.av, %i.ax
  br i1 %.not.i.i58, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %.0.i4.i, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef double %i.ba(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc unwind label %bb.r, !inline_history !104 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  store double %i.bb, ptr %i.bc, align 8, !tbaa !103
  %i.bd = load i32, ptr %i.aw, align 8, !tbaa !102
  store i32 %i.bd, ptr %i.au, align 8, !tbaa !101
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i:                  ; preds = %.noexc, %._crit_edge.i.i
  %i.be = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bb, %.noexc ] ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.f:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bh = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %.noexc102 unwind label %bb.r  ; 4 uses

.noexc102:                                        ; preds = %bb.f
  store ptr %i.bh, ptr %8, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bi, ptr %i.v, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !109
  store ptr %.0.i4.i, ptr %i.bh, align 8, !tbaa !110
  store ptr %.0.i4.i54, ptr %i.bj, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bk = invoke noundef zeroext i1 @_ZNK5Ipopt13CachedResultsIdE15GetCachedResultERdRKSt6vectorIPKNS_12TaggedObjectESaIS6_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc102
  %i.bl = load ptr, ptr %7, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.bn = ptrtoint ptr %i.bm to i64
end_hunk_0
