Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseVector?download=true
inline.NumInlined: 417
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN5Ipopt11DenseVector22set_values_from_scalarEv:bb.a
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ] ; 2 uses
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.a, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.n = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.d, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.r, ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef %i.n, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector8CopyImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((232, 234)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.b, ptr %i.d, align 1, !tbaa !39
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load double, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.f, ptr %i.g, align 8, !tbaa !40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.x, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i, ptr %i.n, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.y = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.o, %bb.c ]
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.k, ptr noundef %i.m, i32 noundef 1, ptr noundef %i.y, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.z, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector8ScalImplEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !40
  %i.f = fmul double %1, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !40
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef %i.j, double noundef %1, ptr noundef %i.l, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector8AxpyImplEdRKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.j = load i8, ptr %i.i, align 1, !tbaa !39, !range !50, !noundef !51
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.m = load double, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !40
  %i.p = tail call double @llvm.fmuladd.f64(double %1, double %i.m, double %i.o)
  store double %i.p, ptr %i.n, align 8, !tbaa !40
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 1, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #21
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre19.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.g, %bb.f
  %.pre19 = phi i32 [ %.pre19.pre, %bb.g ], [ %i.d, %bb.f ]
  %.0.i.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i.i, ptr %i.q, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.e, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ab = phi i32 [ %.pre19, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.d, %bb.e ] ; 3 uses
  %i.ac = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.r, %bb.e ] ; 7 uses
  %i.ad = icmp sgt i32 %i.ab, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ah = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ac, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %3 = getelementptr i8, ptr %i.ag, i64 %i.ah
  %bound0.a = icmp ult ptr %i.ac, %i.aj
  %bound1 = icmp ult ptr %i.ae, %i.ai
  %found.conflict = and i1 %bound0.a, %bound1
  %bound030 = icmp ult ptr %i.ac, %3
  %bound131 = icmp ult ptr %i.ag, %i.ai
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ak = load double, ptr %i.ae, align 8, !tbaa !40, !alias.scope !75
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat35 = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !76
  %wide.load33 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !76
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat35)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load33, <2 x double> %broadcast.splat35)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !52, !alias.scope !77, !noalias !78
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !52, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = load double, ptr %i.ae, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.ph
  %i.au = load double, ptr %i.at, align 8, !tbaa !52
  %i.av = tail call double @llvm.fmuladd.f64(double %1, double %i.au, double %i.as)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.ph
  store double %i.av, ptr %i.aw, align 8, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = add nsw i64 %wide.trip.count, -1
  %i.ay = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.ay, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.az = load double, ptr %i.ae, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !52
  %i.bc = tail call double @llvm.fmuladd.f64(double %1, double %i.bb, double %i.az)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.bc, ptr %i.bd, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load double, ptr %i.ae, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52
  %i.bh = tail call double @llvm.fmuladd.f64(double %1, double %i.bg, double %i.be)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store double %i.bh, ptr %i.bi, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !74

bb.h:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !40
  %i.bl = fcmp une double %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.d, double noundef %1, ptr noundef nonnull %i.bj, i32 noundef 0, ptr noundef %i.bn, i32 noundef 1)
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.d, double noundef %1, ptr noundef %i.bp, i32 noundef 1, ptr noundef %i.br, i32 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.d, %bb.i, %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK5Ipopt11DenseVector7DotImplERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.j = load i8, ptr %i.i, align 1, !tbaa !39, !range !50, !noundef !51
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = sitofp i32 %i.d to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load double, ptr %i.m, align 8, !tbaa !40
  %i.o = fmul double %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load double, ptr %i.p, align 8, !tbaa !40
  %i.r = fmul double %i.o, %i.q
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = tail call noundef double @_ZN5Ipopt9IpBlasDotEiPKdiS1_i(i32 noundef %i.d, ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull %i.u, i32 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = tail call noundef double @_ZN5Ipopt9IpBlasDotEiPKdiS1_i(i32 noundef %i.d, ptr noundef nonnull %i.w, i32 noundef 0, ptr noundef %i.y, i32 noundef 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = tail call noundef double @_ZN5Ipopt9IpBlasDotEiPKdiS1_i(i32 noundef %i.d, ptr noundef %i.ab, i32 noundef 1, ptr noundef %i.ad, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.a
  %.010 = phi double [ 0.000000e+00, %bb.a ], [ %i.r, %bb.d ], [ %i.v, %bb.e ], [ %i.z, %bb.g ], [ %i.ae, %bb.h ]
  ret double %.010
}

declare noundef double @_ZN5Ipopt9IpBlasDotEiPKdiS1_i(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK5Ipopt11DenseVector8Nrm2ImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp i32 %i.g to double
  %i.i = tail call double @sqrt(double noundef %i.h) #18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load double, ptr %i.j, align 8, !tbaa !40
  %i.l = tail call noundef double @llvm.fabs.f64(double %i.k)
  %i.m = fmul double %i.i, %i.l
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = tail call noundef double @_ZN5Ipopt10IpBlasNrm2EiPKdi(i32 noundef %i.g, ptr noundef %i.o, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.m, %bb.b ], [ %i.p, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

declare noundef double @_ZN5Ipopt10IpBlasNrm2EiPKdi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK5Ipopt11DenseVector8AsumImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp i32 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fmul double %i.k, %i.h
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = tail call noundef double @_ZN5Ipopt10IpBlasAsumEiPKdi(i32 noundef %i.g, ptr noundef %i.n, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.l, %bb.b ], [ %i.o, %bb.c ]
  ret double %.0
}

declare noundef double @_ZN5Ipopt10IpBlasAsumEiPKdi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK5Ipopt11DenseVector8AmaxImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load double, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 2 uses
  %i.n = tail call noundef i32 @_ZN5Ipopt11IpBlasIamaxEiPKdi(i32 noundef %i.d, ptr noundef %i.m, i32 noundef 1)
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load double, ptr %i.q, align 8, !tbaa !52
  %i.s = tail call noundef double @llvm.fabs.f64(double %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi double [ %i.s, %bb.d ], [ %i.k, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

declare noundef i32 @_ZN5Ipopt11IpBlasIamaxEiPKdi(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt11DenseVector7SetImplEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((232, 234), (240, 248)) %0, double noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.b, align 1, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %1, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit

_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #19
  store ptr null, ptr %i.d, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector21ElementWiseDivideImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 8 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39, !range !50, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.o = load double, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !40
  %i.r = fdiv double %i.q, %i.o
  store double %i.r, ptr %i.p, align 8, !tbaa !40
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #21
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre43.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.g, %bb.f
  %.pre43 = phi i32 [ %.pre43.pre, %bb.g ], [ %i.f, %bb.f ]
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i.i, ptr %i.s, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.e, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ad = phi i32 [ %.pre43, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.e ] ; 3 uses
  %i.ae = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.t, %bb.e ] ; 9 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %wide.trip.count41 = zext nneg i32 %i.ad to i64 ; 6 uses
  %min.iters.check85 = icmp eq i32 %i.ad, 1
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph29
  %i.ah = shl nuw nsw i64 %wide.trip.count41, 3   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %2 = getelementptr i8, ptr %i.b, i64 %i.ah
  %bound087.a = icmp ult ptr %i.ae, %i.aj
  %bound188 = icmp ult ptr %i.ag, %i.ai
  %found.conflict89 = and i1 %bound087.a, %bound188
  %bound090 = icmp ult ptr %i.ae, %2
  %bound191 = icmp ult ptr %i.b, %i.ai
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict89, %found.conflict92
  br i1 %conflict.rdx, label %scalar.ph84.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck86
  %n.vec94 = and i64 %wide.trip.count41, 2147483646 ; 3 uses
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !40, !alias.scope !98
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body95 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index96
  %wide.load97 = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !99
  %i.am = fdiv <2 x double> %broadcast.splat99, %wide.load97
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index96
  store <2 x double> %i.am, ptr %i.an, align 8, !tbaa !52, !alias.scope !100, !noalias !101
  %index.next100 = add nuw i64 %index96, 2        ; 2 uses
  %i.ao = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.ao, label %middle.block101, label %vector.body95, !llvm.loop !83

middle.block101:                                  ; preds = %vector.body95
  %cmp.n102 = icmp eq i64 %n.vec94, %wide.trip.count41
  br i1 %cmp.n102, label %.loopexit, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck86, %.lr.ph29, %middle.block101
  %indvars.iv38.ph = phi i64 [ 0, %vector.memcheck86 ], [ 0, %.lr.ph29 ], [ %n.vec94, %middle.block101 ] ; 4 uses
  %i.ap = sub nsw i64 %wide.trip.count41, %indvars.iv38.ph
  %xtraiter109 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol

scalar.ph84.prol:                                 ; preds = %scalar.ph84.preheader, %scalar.ph84.prol
  %indvars.iv38.prol = phi i64 [ %indvars.iv.next39.prol, %scalar.ph84.prol ], [ %indvars.iv38.ph, %scalar.ph84.preheader ] ; 3 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %scalar.ph84.prol ], [ 0, %scalar.ph84.preheader ]
  %i.aq = load double, ptr %i.ag, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv38.prol
  %i.as = load double, ptr %i.ar, align 8, !tbaa !52
  %i.at = fdiv double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv38.prol
  store double %i.at, ptr %i.au, align 8, !tbaa !52
  %indvars.iv.next39.prol = add nuw nsw i64 %indvars.iv38.prol, 1 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol, !llvm.loop !84

scalar.ph84.prol.loopexit:                        ; preds = %scalar.ph84.prol, %scalar.ph84.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph84.preheader ], [ %indvars.iv.next39.prol, %scalar.ph84.prol ]
  %i.av = sub nsw i64 %indvars.iv38.ph, %wide.trip.count41
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %scalar.ph84

scalar.ph84:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.3, %scalar.ph84 ], [ %indvars.iv38.unr, %scalar.ph84.prol.loopexit ] ; 6 uses
  %i.ax = load double, ptr %i.ag, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv38
  %i.az = load double, ptr %i.ay, align 8, !tbaa !52
  %i.ba = fdiv double %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv38
  store double %i.ba, ptr %i.bb, align 8, !tbaa !52
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bc = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next39
  %i.be = load double, ptr %i.bd, align 8, !tbaa !52
  %i.bf = fdiv double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next39
  store double %i.bf, ptr %i.bg, align 8, !tbaa !52
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %i.bh = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next39.1
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !52
  %i.bk = fdiv double %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next39.1
  store double %i.bk, ptr %i.bl, align 8, !tbaa !52
  %indvars.iv.next39.2 = add nuw nsw i64 %indvars.iv38, 3 ; 2 uses
  %i.bm = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next39.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !52
  %i.bp = fdiv double %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next39.2
  store double %i.bp, ptr %i.bq, align 8, !tbaa !52
  %indvars.iv.next39.3 = add nuw nsw i64 %indvars.iv38, 4 ; 2 uses
  %exitcond42.not.3 = icmp eq i64 %indvars.iv.next39.3, %wide.trip.count41
  br i1 %exitcond42.not.3, label %.loopexit, label %scalar.ph84, !llvm.loop !85

bb.h:                                             ; preds = %bb.b
  %i.br = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.m, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %bb.h
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader23
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 6 uses
  %min.iters.check = icmp eq i32 %i.f, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bu = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.b, i64 %i.bu
  %bound0 = icmp ult ptr %i.bt, %i.bw
  %bound1 = icmp ult ptr %i.b, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  %wide.load = load <2 x double>, ptr %i.bx, align 8, !tbaa !52, !alias.scope !102
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %wide.load54 = load <2 x double>, ptr %i.by, align 8, !tbaa !52, !alias.scope !103, !noalias !102
  %i.bz = fdiv <2 x double> %wide.load54, %wide.load
  store <2 x double> %i.bz, ptr %i.by, align 8, !tbaa !52, !alias.scope !103, !noalias !102
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.prol ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !52
  %i.cg = fdiv double %i.cf, %i.cd
  store double %i.cg, ptr %i.ce, align 8, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !90

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ch = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit, label %scalar.ph

.preheader:                                       ; preds = %bb.h
  br i1 %i.br, label %.lr.ph27, label %.loopexit

.lr.ph27:                                         ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count36 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check61 = icmp eq i32 %i.f, 1
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %.lr.ph27
  %i.cm = shl nuw nsw i64 %wide.trip.count36, 3
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  %i.co = getelementptr i8, ptr %1, i64 248
  %bound063 = icmp ult ptr %i.cl, %i.co
  %bound164 = icmp ult ptr %i.cj, %i.cn
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %scalar.ph60.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck62
  %n.vec67 = and i64 %wide.trip.count36, 2147483646 ; 3 uses
  %i.cp = load double, ptr %i.cj, align 8, !tbaa !40, !alias.scope !104
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next71, %vector.body68 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index69 ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.cq, align 8, !tbaa !52, !alias.scope !105, !noalias !104
  %i.cr = fdiv <2 x double> %wide.load70, %broadcast.splat
  store <2 x double> %i.cr, ptr %i.cq, align 8, !tbaa !52, !alias.scope !105, !noalias !104
  %index.next71 = add nuw i64 %index69, 2         ; 2 uses
  %i.cs = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.cs, label %middle.block72, label %vector.body68, !llvm.loop !94

middle.block72:                                   ; preds = %vector.body68
  %cmp.n73 = icmp eq i64 %n.vec67, %wide.trip.count36
  br i1 %cmp.n73, label %.loopexit, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %vector.memcheck62, %.lr.ph27, %middle.block72
  %indvars.iv33.ph = phi i64 [ 0, %vector.memcheck62 ], [ 0, %.lr.ph27 ], [ %n.vec67, %middle.block72 ] ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count36, %indvars.iv33.ph
  %xtraiter106 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %scalar.ph60.prol.loopexit, label %scalar.ph60.prol

scalar.ph60.prol:                                 ; preds = %scalar.ph60.preheader, %scalar.ph60.prol
  %indvars.iv33.prol = phi i64 [ %indvars.iv.next34.prol, %scalar.ph60.prol ], [ %indvars.iv33.ph, %scalar.ph60.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %scalar.ph60.prol ], [ 0, %scalar.ph60.preheader ]
  %i.cu = load double, ptr %i.cj, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv33.prol ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !52
  %i.cx = fdiv double %i.cw, %i.cu
  store double %i.cx, ptr %i.cv, align 8, !tbaa !52
  %indvars.iv.next34.prol = add nuw nsw i64 %indvars.iv33.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %scalar.ph60.prol.loopexit, label %scalar.ph60.prol, !llvm.loop !95

scalar.ph60.prol.loopexit:                        ; preds = %scalar.ph60.prol, %scalar.ph60.preheader
  %indvars.iv33.unr = phi i64 [ %indvars.iv33.ph, %scalar.ph60.preheader ], [ %indvars.iv.next34.prol, %scalar.ph60.prol ]
  %i.cy = sub nsw i64 %indvars.iv33.ph, %wide.trip.count36
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %.loopexit, label %scalar.ph60

scalar.ph60:                                      ; preds = %scalar.ph60.prol.loopexit, %scalar.ph60
  %indvars.iv33 = phi i64 [ %indvars.iv.next34.3, %scalar.ph60 ], [ %indvars.iv33.unr, %scalar.ph60.prol.loopexit ] ; 5 uses
  %i.da = load double, ptr %i.cj, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv33 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !52
  %i.dd = fdiv double %i.dc, %i.da
  store double %i.dd, ptr %i.db, align 8, !tbaa !52
  %i.de = load double, ptr %i.cj, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !52
  %i.di = fdiv double %i.dh, %i.de
  store double %i.di, ptr %i.dg, align 8, !tbaa !52
  %i.dj = load double, ptr %i.cj, align 8, !tbaa !40
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !52
  %i.dn = fdiv double %i.dm, %i.dj
  store double %i.dn, ptr %i.dl, align 8, !tbaa !52
  %i.do = load double, ptr %i.cj, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !52
  %i.ds = fdiv double %i.dr, %i.do
  store double %i.ds, ptr %i.dq, align 8, !tbaa !52
  %indvars.iv.next34.3 = add nuw nsw i64 %indvars.iv33, 4 ; 2 uses
  %exitcond37.not.3 = icmp eq i64 %indvars.iv.next34.3, %wide.trip.count36
  br i1 %exitcond37.not.3, label %.loopexit, label %scalar.ph60, !llvm.loop !96

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.du = load double, ptr %i.dt, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !52
  %i.dx = fdiv double %i.dw, %i.du
  store double %i.dx, ptr %i.dv, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !52
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !52
  %i.ec = fdiv double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.1 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !52
  %i.eh = fdiv double %i.eg, %i.ee
  store double %i.eh, ptr %i.ef, align 8, !tbaa !52
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.2 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !52
  %i.em = fdiv double %i.el, %i.ej
  store double %i.em, ptr %i.ek, align 8, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !97

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph60.prol.loopexit, %scalar.ph60, %scalar.ph84.prol.loopexit, %scalar.ph84, %middle.block, %middle.block72, %middle.block101, %.preheader23, %.preheader, %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector23ElementWiseMultiplyImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 9 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39, !range !50, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.o = load double, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !40
  %i.r = fmul double %i.o, %i.q
  store double %i.r, ptr %i.p, align 8, !tbaa !40
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #21
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre44.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.g, %bb.f
  %.pre44 = phi i32 [ %.pre44.pre, %bb.g ], [ %i.f, %bb.f ]
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i.i, ptr %i.s, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.e, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ad = phi i32 [ %.pre44, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.e ] ; 3 uses
  %i.ae = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.t, %bb.e ] ; 9 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %.lr.ph30, label %.loopexit

.lr.ph30:                                         ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %wide.trip.count42 = zext nneg i32 %i.ad to i64 ; 6 uses
  %min.iters.check89 = icmp ult i32 %i.ad, 12
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph30
  %i.ah = shl nuw nsw i64 %wide.trip.count42, 3   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %2 = getelementptr i8, ptr %i.b, i64 %i.ah
  %bound091.a = icmp ult ptr %i.ae, %i.aj
  %bound192 = icmp ult ptr %i.ag, %i.ai
  %found.conflict93 = and i1 %bound091.a, %bound192
  %bound094 = icmp ult ptr %i.ae, %2
  %bound195 = icmp ult ptr %i.b, %i.ai
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx = or i1 %found.conflict93, %found.conflict96
  br i1 %conflict.rdx, label %scalar.ph88.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck90
  %n.vec98 = and i64 %wide.trip.count42, 2147483644 ; 3 uses
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !40, !alias.scope !125
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index100 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load101 = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !126
  %wide.load102 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !126
  %i.an = fmul <2 x double> %broadcast.splat104, %wide.load101
  %i.ao = fmul <2 x double> %broadcast.splat104, %wide.load102
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index100 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !52, !alias.scope !127, !noalias !128
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !52, !alias.scope !127, !noalias !128
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.ar, label %middle.block106, label %vector.body99, !llvm.loop !110

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %n.vec98, %wide.trip.count42
  br i1 %cmp.n107, label %.loopexit, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %vector.memcheck90, %.lr.ph30, %middle.block106
  %indvars.iv39.ph = phi i64 [ 0, %vector.memcheck90 ], [ 0, %.lr.ph30 ], [ %n.vec98, %middle.block106 ] ; 3 uses
  %xtraiter114 = and i64 %wide.trip.count42, 3    ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %scalar.ph88.prol.loopexit, label %scalar.ph88.prol

scalar.ph88.prol:                                 ; preds = %scalar.ph88.preheader, %scalar.ph88.prol
  %indvars.iv39.prol = phi i64 [ %indvars.iv.next40.prol, %scalar.ph88.prol ], [ %indvars.iv39.ph, %scalar.ph88.preheader ] ; 3 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %scalar.ph88.prol ], [ 0, %scalar.ph88.preheader ]
  %i.as = load double, ptr %i.ag, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv39.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !52
  %i.av = fmul double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv39.prol
  store double %i.av, ptr %i.aw, align 8, !tbaa !52
  %indvars.iv.next40.prol = add nuw nsw i64 %indvars.iv39.prol, 1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %scalar.ph88.prol.loopexit, label %scalar.ph88.prol, !llvm.loop !111

scalar.ph88.prol.loopexit:                        ; preds = %scalar.ph88.prol, %scalar.ph88.preheader
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %scalar.ph88.preheader ], [ %indvars.iv.next40.prol, %scalar.ph88.prol ]
  %i.ax = sub nsw i64 %indvars.iv39.ph, %wide.trip.count42
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.prol.loopexit, %scalar.ph88
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.3, %scalar.ph88 ], [ %indvars.iv39.unr, %scalar.ph88.prol.loopexit ] ; 6 uses
  %i.az = load double, ptr %i.ag, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv39
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !52
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv39
  store double %i.bc, ptr %i.bd, align 8, !tbaa !52
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.be = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next40
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next40
  store double %i.bh, ptr %i.bi, align 8, !tbaa !52
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %i.bj = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next40.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !52
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next40.1
  store double %i.bm, ptr %i.bn, align 8, !tbaa !52
  %indvars.iv.next40.2 = add nuw nsw i64 %indvars.iv39, 3 ; 2 uses
  %i.bo = load double, ptr %i.ag, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next40.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !52
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next40.2
  store double %i.br, ptr %i.bs, align 8, !tbaa !52
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %exitcond43.not.3 = icmp eq i64 %indvars.iv.next40.3, %wide.trip.count42
  br i1 %exitcond43.not.3, label %.loopexit, label %scalar.ph88, !llvm.loop !112

bb.h:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.i, label %.preheader24

.preheader24:                                     ; preds = %bb.h
  %i.bt = icmp sgt i32 %i.f, 0
  br i1 %i.bt, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.f, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bw = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.b, i64 %i.bw
  %bound0 = icmp ult ptr %i.bv, %i.by
  %bound1 = icmp ult ptr %i.b, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <2 x double>, ptr %i.bz, align 8, !tbaa !52, !alias.scope !129
  %wide.load55 = load <2 x double>, ptr %i.ca, align 8, !tbaa !52, !alias.scope !129
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load56 = load <2 x double>, ptr %i.cb, align 8, !tbaa !52, !alias.scope !130, !noalias !129
  %wide.load57 = load <2 x double>, ptr %i.cc, align 8, !tbaa !52, !alias.scope !130, !noalias !129
  %i.cd = fmul <2 x double> %wide.load, %wide.load56
  %i.ce = fmul <2 x double> %wide.load55, %wide.load57
  store <2 x double> %i.cd, ptr %i.cb, align 8, !tbaa !52, !alias.scope !130, !noalias !129
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !52, !alias.scope !130, !noalias !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.prol ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !52
  %i.ck = fmul double %i.ch, %i.cj
  store double %i.ck, ptr %i.ci, align 8, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !117

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %.loopexit, label %scalar.ph

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 8 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !40
  %i.cp = fcmp une double %i.co, 1.000000e+00
  %i.cq = icmp sgt i32 %i.f, 0
  %or.cond = and i1 %i.cp, %i.cq
  br i1 %or.cond, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count37 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check64 = icmp ult i32 %i.f, 6
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph28
  %i.ct = shl nuw nsw i64 %wide.trip.count37, 3
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr i8, ptr %1, i64 248
  %bound066 = icmp ult ptr %i.cs, %i.cv
  %bound167 = icmp ult ptr %i.cn, %i.cu
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %scalar.ph63.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %wide.trip.count37, 2147483644 ; 3 uses
  %i.cw = load double, ptr %i.cn, align 8, !tbaa !40, !alias.scope !131
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index72 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.cx, align 8, !tbaa !52, !alias.scope !132, !noalias !131
  %wide.load74 = load <2 x double>, ptr %i.cy, align 8, !tbaa !52, !alias.scope !132, !noalias !131
  %i.cz = fmul <2 x double> %broadcast.splat, %wide.load73
  %i.da = fmul <2 x double> %broadcast.splat, %wide.load74
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !52, !alias.scope !132, !noalias !131
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !52, !alias.scope !132, !noalias !131
  %index.next75 = add nuw i64 %index72, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.db, label %middle.block76, label %vector.body71, !llvm.loop !121

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %n.vec70, %wide.trip.count37
  br i1 %cmp.n77, label %.loopexit, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %vector.memcheck65, %.lr.ph28, %middle.block76
  %indvars.iv34.ph = phi i64 [ 0, %vector.memcheck65 ], [ 0, %.lr.ph28 ], [ %n.vec70, %middle.block76 ] ; 3 uses
  %xtraiter111 = and i64 %wide.trip.count37, 3    ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol

scalar.ph63.prol:                                 ; preds = %scalar.ph63.preheader, %scalar.ph63.prol
  %indvars.iv34.prol = phi i64 [ %indvars.iv.next35.prol, %scalar.ph63.prol ], [ %indvars.iv34.ph, %scalar.ph63.preheader ] ; 2 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %scalar.ph63.prol ], [ 0, %scalar.ph63.preheader ]
  %i.dc = load double, ptr %i.cn, align 8, !tbaa !40
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv34.prol ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !52
  %i.df = fmul double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !52
  %indvars.iv.next35.prol = add nuw nsw i64 %indvars.iv34.prol, 1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %scalar.ph63.prol.loopexit, label %scalar.ph63.prol, !llvm.loop !122

scalar.ph63.prol.loopexit:                        ; preds = %scalar.ph63.prol, %scalar.ph63.preheader
  %indvars.iv34.unr = phi i64 [ %indvars.iv34.ph, %scalar.ph63.preheader ], [ %indvars.iv.next35.prol, %scalar.ph63.prol ]
  %i.dg = sub nsw i64 %indvars.iv34.ph, %wide.trip.count37
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %.loopexit, label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.prol.loopexit, %scalar.ph63
  %indvars.iv34 = phi i64 [ %indvars.iv.next35.3, %scalar.ph63 ], [ %indvars.iv34.unr, %scalar.ph63.prol.loopexit ] ; 5 uses
  %i.di = load double, ptr %i.cn, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv34 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !52
  %i.dl = fmul double %i.di, %i.dk
  store double %i.dl, ptr %i.dj, align 8, !tbaa !52
  %i.dm = load double, ptr %i.cn, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !52
  %i.dq = fmul double %i.dm, %i.dp
  store double %i.dq, ptr %i.do, align 8, !tbaa !52
  %i.dr = load double, ptr %i.cn, align 8, !tbaa !40
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv34
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !52
  %i.dv = fmul double %i.dr, %i.du
  store double %i.dv, ptr %i.dt, align 8, !tbaa !52
  %i.dw = load double, ptr %i.cn, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !52
  %i.ea = fmul double %i.dw, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !tbaa !52
  %indvars.iv.next35.3 = add nuw nsw i64 %indvars.iv34, 4 ; 2 uses
  %exitcond38.not.3 = icmp eq i64 %indvars.iv.next35.3, %wide.trip.count37
  br i1 %exitcond38.not.3, label %.loopexit, label %scalar.ph63, !llvm.loop !123

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !52
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !52
  %i.ef = fmul double %i.ec, %i.ee
  store double %i.ef, ptr %i.ed, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !52
  %i.ek = fmul double %i.eh, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.1
  %i.em = load double, ptr %i.el, align 8, !tbaa !52
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.1 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !52
  %i.ep = fmul double %i.em, %i.eo
  store double %i.ep, ptr %i.en, align 8, !tbaa !52
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.2
  %i.er = load double, ptr %i.eq, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.2 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !52
  %i.eu = fmul double %i.er, %i.et
  store double %i.eu, ptr %i.es, align 8, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !124

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph63.prol.loopexit, %scalar.ph63, %scalar.ph88.prol.loopexit, %scalar.ph88, %middle.block, %middle.block76, %middle.block106, %.preheader24, %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.d, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector21ElementWiseSelectImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 7 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 9 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !40 ; 2 uses
  %i.m = fcmp oeq double %i.l, 0.000000e+00
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.o = load i8, ptr %i.n, align 1, !tbaa !39, !range !50, !noundef !51
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.r = load double, ptr %i.q, align 8, !tbaa !40
  %i.s = fmul double %i.l, %i.r
  store double %i.s, ptr %i.k, align 8, !tbaa !40
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.h, align 1, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #21
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre56.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.h, %bb.g
  %.pre56 = phi i32 [ %.pre56.pre, %bb.h ], [ %i.f, %bb.g ]
  %.0.i.i = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.t, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.f, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ae = phi i32 [ %.pre56, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.f ] ; 3 uses
  %i.af = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.u, %bb.f ] ; 9 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph42.preheader, label %.loopexit

.lr.ph42.preheader:                               ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %wide.trip.count54 = zext nneg i32 %i.ae to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ae, 12
  br i1 %min.iters.check, label %.lr.ph42.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph42.preheader
  %i.ah = shl nuw nsw i64 %wide.trip.count54, 3   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %2 = getelementptr i8, ptr %i.b, i64 %i.ah
  %bound0.a = icmp ult ptr %i.af, %i.aj
  %bound1 = icmp ult ptr %i.k, %i.ai
  %found.conflict = and i1 %bound0.a, %bound1
  %bound076 = icmp ult ptr %i.af, %2
  %bound177 = icmp ult ptr %i.b, %i.ai
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  br i1 %conflict.rdx, label %.lr.ph42.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count54, 2147483644 ; 3 uses
  %i.ak = load double, ptr %i.k, align 8, !tbaa !40, !alias.scope !142
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !143
  %wide.load79 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !143
  %i.an = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ao = fmul <2 x double> %broadcast.splat, %wide.load79
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.an, ptr %i.ap, align 8, !tbaa !52, !alias.scope !144, !noalias !145
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !52, !alias.scope !144, !noalias !145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count54
  br i1 %cmp.n, label %.loopexit, label %.lr.ph42.preheader80

.lr.ph42.preheader80:                             ; preds = %vector.memcheck, %.lr.ph42.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph42.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count54, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader80, %.lr.ph42.prol
  %indvars.iv51.prol = phi i64 [ %indvars.iv.next52.prol, %.lr.ph42.prol ], [ %indvars.iv51.ph, %.lr.ph42.preheader80 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph42.prol ], [ 0, %.lr.ph42.preheader80 ]
  %i.as = load double, ptr %i.k, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv51.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !52
  %i.av = fmul double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv51.prol
  store double %i.av, ptr %i.aw, align 8, !tbaa !52
  %indvars.iv.next52.prol = add nuw nsw i64 %indvars.iv51.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol, !llvm.loop !138

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader80
  %indvars.iv51.unr = phi i64 [ %indvars.iv51.ph, %.lr.ph42.preheader80 ], [ %indvars.iv.next52.prol, %.lr.ph42.prol ]
  %i.ax = sub nsw i64 %indvars.iv51.ph, %wide.trip.count54
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.3, %.lr.ph42 ], [ %indvars.iv51.unr, %.lr.ph42.prol.loopexit ] ; 6 uses
  %i.az = load double, ptr %i.k, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv51
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !52
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv51
  store double %i.bc, ptr %i.bd, align 8, !tbaa !52
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.be = load double, ptr %i.k, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next52
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next52
  store double %i.bh, ptr %i.bi, align 8, !tbaa !52
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %i.bj = load double, ptr %i.k, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next52.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !52
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next52.1
  store double %i.bm, ptr %i.bn, align 8, !tbaa !52
  %indvars.iv.next52.2 = add nuw nsw i64 %indvars.iv51, 3 ; 2 uses
  %i.bo = load double, ptr %i.k, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next52.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !52
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next52.2
  store double %i.br, ptr %i.bs, align 8, !tbaa !52
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %exitcond55.not.3 = icmp eq i64 %indvars.iv.next52.3, %wide.trip.count54
  br i1 %exitcond55.not.3, label %.loopexit, label %.lr.ph42, !llvm.loop !139

bb.i:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !39, !range !50, !noundef !51
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.j, label %.preheader36

.preheader36:                                     ; preds = %bb.i
  %i.bw = icmp sgt i32 %i.f, 0
  br i1 %i.bw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader36
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !40
  %i.cb = fcmp une double %i.ca, 1.000000e+00
  %i.cc = icmp sgt i32 %i.f, 0
  %or.cond = and i1 %i.cb, %i.cc
  br i1 %or.cond, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !41
  %wide.trip.count49 = zext nneg i32 %i.f to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph40, %bb.o
  %indvars.iv46 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next47, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv46 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !52 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = load double, ptr %i.bz, align 8, !tbaa !40
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.cj = fcmp olt double %i.cg, 0.000000e+00
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = load double, ptr %i.bz, align 8, !tbaa !40
  %i.cl = fneg double %i.ck
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.l
  %.sink = phi double [ %i.ci, %bb.l ], [ %i.cl, %bb.n ]
  store double %.sink, ptr %i.cf, align 8, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %.loopexit, label %bb.k, !llvm.loop !140

bb.p:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !52 ; 2 uses
  %i.co = fcmp ogt double %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !52
  br label %.sink.split67

bb.r:                                             ; preds = %bb.p
  %i.cr = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !52
  %i.cu = fneg double %i.ct
  br label %.sink.split67

.sink.split67:                                    ; preds = %bb.s, %bb.q
  %.sink68 = phi double [ %i.cq, %bb.q ], [ %i.cu, %bb.s ]
  store double %.sink68, ptr %i.cm, align 8, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %.sink.split67, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !141

.loopexit:                                        ; preds = %bb.t, %bb.o, %.lr.ph42.prol.loopexit, %.lr.ph42, %middle.block, %.preheader36, %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.e, %bb.j, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector18ElementWiseMaxImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 8 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39, !range !50, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load double, ptr %i.p, align 8, !tbaa !40 ; 2 uses
  %i.r = fcmp olt double %i.o, %i.q
  %.sroa.speculated.i = select i1 %i.r, double %i.q, double %i.o
  store double %.sroa.speculated.i, ptr %i.n, align 8, !tbaa !40
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #21
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre48.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.g, %bb.f
  %.pre48 = phi i32 [ %.pre48.pre, %bb.g ], [ %i.f, %bb.f ]
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i.i, ptr %i.s, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.e, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ad = phi i32 [ %.pre48, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.e ] ; 3 uses
  %i.ae = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.t, %bb.e ] ; 7 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %wide.trip.count46 = zext nneg i32 %i.ad to i64 ; 6 uses
  %min.iters.check93 = icmp ult i32 %i.ad, 10
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph34
  %i.ah = shl nuw nsw i64 %wide.trip.count46, 3   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %2 = getelementptr i8, ptr %i.b, i64 %i.ah
  %bound095.a = icmp ult ptr %i.ae, %i.aj
  %bound196 = icmp ult ptr %i.ag, %i.ai
  %found.conflict97 = and i1 %bound095.a, %bound196
  %bound098 = icmp ult ptr %i.ae, %2
  %bound199 = icmp ult ptr %i.b, %i.ai
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx, label %scalar.ph92.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck94
  %n.vec102 = and i64 %wide.trip.count46, 2147483644 ; 3 uses
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !40, !alias.scope !162
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load105 = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !163 ; 2 uses
  %wide.load106 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !163 ; 2 uses
  %i.an = fcmp olt <2 x double> %broadcast.splat108, %wide.load105
  %i.ao = fcmp olt <2 x double> %broadcast.splat108, %wide.load106
  %i.ap = select <2 x i1> %i.an, <2 x double> %wide.load105, <2 x double> %broadcast.splat108
  %i.aq = select <2 x i1> %i.ao, <2 x double> %wide.load106, <2 x double> %broadcast.splat108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !52, !alias.scope !164, !noalias !165
  store <2 x double> %i.aq, ptr %i.as, align 8, !tbaa !52, !alias.scope !164, !noalias !165
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.at, label %middle.block110, label %vector.body103, !llvm.loop !150

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %wide.trip.count46
  br i1 %cmp.n111, label %.loopexit, label %scalar.ph92.preheader

scalar.ph92.preheader:                            ; preds = %vector.memcheck94, %.lr.ph34, %middle.block110
  %indvars.iv43.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph34 ], [ %n.vec102, %middle.block110 ] ; 5 uses
  %xtraiter117 = and i64 %wide.trip.count46, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %scalar.ph92.prol.loopexit, label %scalar.ph92.prol

scalar.ph92.prol:                                 ; preds = %scalar.ph92.preheader
  %i.au = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = fcmp olt double %i.au, %i.aw
  %.sroa.speculated.i24.prol = select i1 %i.ax, double %i.aw, double %i.au
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv43.ph
  store double %.sroa.speculated.i24.prol, ptr %i.ay, align 8, !tbaa !52
  %indvars.iv.next44.prol = or disjoint i64 %indvars.iv43.ph, 1
  br label %scalar.ph92.prol.loopexit

scalar.ph92.prol.loopexit:                        ; preds = %scalar.ph92.prol, %scalar.ph92.preheader
  %indvars.iv43.unr = phi i64 [ %indvars.iv43.ph, %scalar.ph92.preheader ], [ %indvars.iv.next44.prol, %scalar.ph92.prol ]
  %i.az = add nsw i64 %wide.trip.count46, -1
  %i.ba = icmp eq i64 %indvars.iv43.ph, %i.az
  br i1 %i.ba, label %.loopexit, label %scalar.ph92

scalar.ph92:                                      ; preds = %scalar.ph92.prol.loopexit, %scalar.ph92
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.1, %scalar.ph92 ], [ %indvars.iv43.unr, %scalar.ph92.prol.loopexit ] ; 4 uses
  %i.bb = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !52 ; 2 uses
  %i.be = fcmp olt double %i.bb, %i.bd
  %.sroa.speculated.i24 = select i1 %i.be, double %i.bd, double %i.bb
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv43
  store double %.sroa.speculated.i24, ptr %i.bf, align 8, !tbaa !52
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bg = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next44
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !52 ; 2 uses
  %i.bj = fcmp olt double %i.bg, %i.bi
  %.sroa.speculated.i24.1 = select i1 %i.bj, double %i.bi, double %i.bg
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next44
  store double %.sroa.speculated.i24.1, ptr %i.bk, align 8, !tbaa !52
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %exitcond47.not.1 = icmp eq i64 %indvars.iv.next44.1, %wide.trip.count46
  br i1 %exitcond47.not.1, label %.loopexit, label %scalar.ph92, !llvm.loop !151

bb.h:                                             ; preds = %bb.b
  %i.bl = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.m, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.h
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.f, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bo = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.b, i64 %i.bo
  %bound0 = icmp ult ptr %i.bn, %i.bq
  %bound1 = icmp ult ptr %i.b, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.br, align 8, !tbaa !52, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load59 = load <2 x double>, ptr %i.bs, align 8, !tbaa !52, !alias.scope !166, !noalias !167 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load60 = load <2 x double>, ptr %i.bt, align 8, !tbaa !52, !alias.scope !167 ; 2 uses
  %wide.load61 = load <2 x double>, ptr %i.bu, align 8, !tbaa !52, !alias.scope !167 ; 2 uses
  %i.bv = fcmp olt <2 x double> %wide.load, %wide.load60
  %i.bw = fcmp olt <2 x double> %wide.load59, %wide.load61
  %i.bx = select <2 x i1> %i.bv, <2 x double> %wide.load60, <2 x double> %wide.load
  %i.by = select <2 x i1> %i.bw, <2 x double> %wide.load61, <2 x double> %wide.load59
  store <2 x double> %i.bx, ptr %i.br, align 8, !tbaa !52, !alias.scope !166, !noalias !167
  store <2 x double> %i.by, ptr %i.bs, align 8, !tbaa !52, !alias.scope !166, !noalias !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.ph ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.ph
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !52 ; 2 uses
  %i.ce = fcmp olt double %i.cb, %i.cd
  %.sroa.speculated.i26.prol = select i1 %i.ce, double %i.cd, double %i.cb
  store double %.sroa.speculated.i26.prol, ptr %i.ca, align 8, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cf = add nsw i64 %wide.trip.count, -1
  %i.cg = icmp eq i64 %indvars.iv.ph, %i.cf
  br i1 %i.cg, label %.loopexit, label %scalar.ph

.preheader:                                       ; preds = %bb.h
  br i1 %i.bl, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 5 uses
  %wide.trip.count41 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check68 = icmp ult i32 %i.f, 6
  br i1 %min.iters.check68, label %scalar.ph67.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph32
  %i.ck = shl nuw nsw i64 %wide.trip.count41, 3
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr i8, ptr %1, i64 248
  %bound070 = icmp ult ptr %i.ci, %i.cm
  %bound171 = icmp ult ptr %i.cj, %i.cl
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph67.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck69
  %n.vec74 = and i64 %wide.trip.count41, 2147483644 ; 3 uses
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !40, !alias.scope !168
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index76 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.co, align 8, !tbaa !52, !alias.scope !169, !noalias !168 ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.cp, align 8, !tbaa !52, !alias.scope !169, !noalias !168 ; 2 uses
  %i.cq = fcmp olt <2 x double> %wide.load77, %broadcast.splat
  %i.cr = fcmp olt <2 x double> %wide.load78, %broadcast.splat
  %i.cs = select <2 x i1> %i.cq, <2 x double> %broadcast.splat, <2 x double> %wide.load77
  %i.ct = select <2 x i1> %i.cr, <2 x double> %broadcast.splat, <2 x double> %wide.load78
  store <2 x double> %i.cs, ptr %i.co, align 8, !tbaa !52, !alias.scope !169, !noalias !168
  store <2 x double> %i.ct, ptr %i.cp, align 8, !tbaa !52, !alias.scope !169, !noalias !168
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.cu, label %middle.block80, label %vector.body75, !llvm.loop !159

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec74, %wide.trip.count41
  br i1 %cmp.n81, label %.loopexit, label %scalar.ph67.preheader

scalar.ph67.preheader:                            ; preds = %vector.memcheck69, %.lr.ph32, %middle.block80
  %indvars.iv38.ph = phi i64 [ 0, %vector.memcheck69 ], [ 0, %.lr.ph32 ], [ %n.vec74, %middle.block80 ] ; 4 uses
  %xtraiter115 = and i64 %wide.trip.count41, 1
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %scalar.ph67.prol.loopexit, label %scalar.ph67.prol

scalar.ph67.prol:                                 ; preds = %scalar.ph67.preheader
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv38.ph ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !52 ; 2 uses
  %i.cx = load double, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.cy = fcmp olt double %i.cw, %i.cx
  %.sroa.speculated.i25.prol = select i1 %i.cy, double %i.cx, double %i.cw
  store double %.sroa.speculated.i25.prol, ptr %i.cv, align 8, !tbaa !52
  %indvars.iv.next39.prol = or disjoint i64 %indvars.iv38.ph, 1
  br label %scalar.ph67.prol.loopexit

scalar.ph67.prol.loopexit:                        ; preds = %scalar.ph67.prol, %scalar.ph67.preheader
  %indvars.iv38.unr = phi i64 [ %indvars.iv38.ph, %scalar.ph67.preheader ], [ %indvars.iv.next39.prol, %scalar.ph67.prol ]
  %i.cz = add nsw i64 %wide.trip.count41, -1
  %i.da = icmp eq i64 %indvars.iv38.ph, %i.cz
  br i1 %i.da, label %.loopexit, label %scalar.ph67

scalar.ph67:                                      ; preds = %scalar.ph67.prol.loopexit, %scalar.ph67
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.1, %scalar.ph67 ], [ %indvars.iv38.unr, %scalar.ph67.prol.loopexit ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv38 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !52 ; 2 uses
  %i.dd = load double, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd
  %.sroa.speculated.i25 = select i1 %i.de, double %i.dd, double %i.dc
  store double %.sroa.speculated.i25, ptr %i.db, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %i.di = load double, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.dj = fcmp olt double %i.dh, %i.di
  %.sroa.speculated.i25.1 = select i1 %i.dj, double %i.di, double %i.dh
  store double %.sroa.speculated.i25.1, ptr %i.dg, align 8, !tbaa !52
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %exitcond42.not.1 = icmp eq i64 %indvars.iv.next39.1, %wide.trip.count41
  br i1 %exitcond42.not.1, label %.loopexit, label %scalar.ph67, !llvm.loop !160

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !52 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !52 ; 2 uses
  %i.do = fcmp olt double %i.dl, %i.dn
  %.sroa.speculated.i26 = select i1 %i.do, double %i.dn, double %i.dl
  store double %.sroa.speculated.i26, ptr %i.dk, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !52 ; 2 uses
  %i.dt = fcmp olt double %i.dq, %i.ds
  %.sroa.speculated.i26.1 = select i1 %i.dt, double %i.ds, double %i.dq
  store double %.sroa.speculated.i26.1, ptr %i.dp, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !161

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph67.prol.loopexit, %scalar.ph67, %scalar.ph92.prol.loopexit, %scalar.ph92, %middle.block, %middle.block80, %middle.block110, %.preheader28, %.preheader, %_ZN5Ipopt11DenseVector16values_allocatedEv.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector18ElementWiseMinImplERKNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 8 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39, !range !50, !noundef !51
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39, !range !50, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load double, ptr %i.p, align 8, !tbaa !40 ; 2 uses
  %i.r = fcmp olt double %i.q, %i.o
  %.sroa.speculated.i = select i1 %i.r, double %i.q, double %i.o
  store double %.sroa.speculated.i, ptr %i.n, align 8, !tbaa !40
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #21
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !17
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 12
  %.pre48.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !37
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.g, %bb.f
  %.pre48 = phi i32 [ %.pre48.pre, %bb.g ], [ %i.f, %bb.f ]
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ null, %bb.f ] ; 2 uses
  store ptr %.0.i.i, ptr %i.s, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.e, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.ad = phi i32 [ %.pre48, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.e ] ; 3 uses
  %i.ae = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.t, %bb.e ] ; 7 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %wide.trip.count46 = zext nneg i32 %i.ad to i64 ; 6 uses
  %min.iters.check93 = icmp ult i32 %i.ad, 10
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph34
  %i.ah = shl nuw nsw i64 %wide.trip.count46, 3   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %2 = getelementptr i8, ptr %i.b, i64 %i.ah
  %bound095.a = icmp ult ptr %i.ae, %i.aj
  %bound196 = icmp ult ptr %i.ag, %i.ai
  %found.conflict97 = and i1 %bound095.a, %bound196
  %bound098 = icmp ult ptr %i.ae, %2
  %bound199 = icmp ult ptr %i.b, %i.ai
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx = or i1 %found.conflict97, %found.conflict100
  br i1 %conflict.rdx, label %scalar.ph92.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck94
  %n.vec102 = and i64 %wide.trip.count46, 2147483644 ; 3 uses
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !40, !alias.scope !186
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load105 = load <2 x double>, ptr %i.al, align 8, !tbaa !52, !alias.scope !187 ; 2 uses
  %wide.load106 = load <2 x double>, ptr %i.am, align 8, !tbaa !52, !alias.scope !187 ; 2 uses
  %i.an = fcmp olt <2 x double> %wide.load105, %broadcast.splat108
  %i.ao = fcmp olt <2 x double> %wide.load106, %broadcast.splat108
  %i.ap = select <2 x i1> %i.an, <2 x double> %wide.load105, <2 x double> %broadcast.splat108
  %i.aq = select <2 x i1> %i.ao, <2 x double> %wide.load106, <2 x double> %broadcast.splat108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !52, !alias.scope !188, !noalias !189
  store <2 x double> %i.aq, ptr %i.as, align 8, !tbaa !52, !alias.scope !188, !noalias !189
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.at, label %middle.block110, label %vector.body103, !llvm.loop !174

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %wide.trip.count46
  br i1 %cmp.n111, label %.loopexit, label %scalar.ph92.preheader

scalar.ph92.preheader:                            ; preds = %vector.memcheck94, %.lr.ph34, %middle.block110
  %indvars.iv43.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph34 ], [ %n.vec102, %middle.block110 ] ; 5 uses
  %xtraiter117 = and i64 %wide.trip.count46, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %scalar.ph92.prol.loopexit, label %scalar.ph92.prol

scalar.ph92.prol:                                 ; preds = %scalar.ph92.preheader
  %i.au = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43.ph
  %i.aw = load double, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = fcmp olt double %i.aw, %i.au
  %.sroa.speculated.i24.prol = select i1 %i.ax, double %i.aw, double %i.au
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv43.ph
  store double %.sroa.speculated.i24.prol, ptr %i.ay, align 8, !tbaa !52
  %indvars.iv.next44.prol = or disjoint i64 %indvars.iv43.ph, 1
  br label %scalar.ph92.prol.loopexit

scalar.ph92.prol.loopexit:                        ; preds = %scalar.ph92.prol, %scalar.ph92.preheader
  %indvars.iv43.unr = phi i64 [ %indvars.iv43.ph, %scalar.ph92.preheader ], [ %indvars.iv.next44.prol, %scalar.ph92.prol ]
  %i.az = add nsw i64 %wide.trip.count46, -1
  %i.ba = icmp eq i64 %indvars.iv43.ph, %i.az
  br i1 %i.ba, label %.loopexit, label %scalar.ph92

scalar.ph92:                                      ; preds = %scalar.ph92.prol.loopexit, %scalar.ph92
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.1, %scalar.ph92 ], [ %indvars.iv43.unr, %scalar.ph92.prol.loopexit ] ; 4 uses
  %i.bb = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !52 ; 2 uses
  %i.be = fcmp olt double %i.bd, %i.bb
  %.sroa.speculated.i24 = select i1 %i.be, double %i.bd, double %i.bb
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv43
  store double %.sroa.speculated.i24, ptr %i.bf, align 8, !tbaa !52
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.bg = load double, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next44
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !52 ; 2 uses
  %i.bj = fcmp olt double %i.bi, %i.bg
  %.sroa.speculated.i24.1 = select i1 %i.bj, double %i.bi, double %i.bg
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next44
  store double %.sroa.speculated.i24.1, ptr %i.bk, align 8, !tbaa !52
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %exitcond47.not.1 = icmp eq i64 %indvars.iv.next44.1, %wide.trip.count46
  br i1 %exitcond47.not.1, label %.loopexit, label %scalar.ph92, !llvm.loop !175

bb.h:                                             ; preds = %bb.b
  %i.bl = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.m, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.h
  br i1 %i.bl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.f, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bo = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.b, i64 %i.bo
  %bound0 = icmp ult ptr %i.bn, %i.bq
  %bound1 = icmp ult ptr %i.b, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.br, align 8, !tbaa !52, !alias.scope !190, !noalias !191 ; 2 uses
  %wide.load59 = load <2 x double>, ptr %i.bs, align 8, !tbaa !52, !alias.scope !190, !noalias !191 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load60 = load <2 x double>, ptr %i.bt, align 8, !tbaa !52, !alias.scope !191 ; 2 uses
  %wide.load61 = load <2 x double>, ptr %i.bu, align 8, !tbaa !52, !alias.scope !191 ; 2 uses
  %i.bv = fcmp olt <2 x double> %wide.load60, %wide.load
  %i.bw = fcmp olt <2 x double> %wide.load61, %wide.load59
  %i.bx = select <2 x i1> %i.bv, <2 x double> %wide.load60, <2 x double> %wide.load
  %i.by = select <2 x i1> %i.bw, <2 x double> %wide.load61, <2 x double> %wide.load59
  store <2 x double> %i.bx, ptr %i.br, align 8, !tbaa !52, !alias.scope !190, !noalias !191
  store <2 x double> %i.by, ptr %i.bs, align 8, !tbaa !52, !alias.scope !190, !noalias !191
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.ph ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.ph
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !52 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %i.cb
  %.sroa.speculated.i26.prol = select i1 %i.ce, double %i.cd, double %i.cb
  store double %.sroa.speculated.i26.prol, ptr %i.ca, align 8, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cf = add nsw i64 %wide.trip.count, -1
  %i.cg = icmp eq i64 %indvars.iv.ph, %i.cf
  br i1 %i.cg, label %.loopexit, label %scalar.ph

.preheader:                                       ; preds = %bb.h
  br i1 %i.bl, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 5 uses
  %wide.trip.count41 = zext nneg i32 %i.f to i64  ; 6 uses
  %min.iters.check68 = icmp ult i32 %i.f, 6
  br i1 %min.iters.check68, label %scalar.ph67.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph32
  %i.ck = shl nuw nsw i64 %wide.trip.count41, 3
  %i.cl = getelementptr i8, ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr i8, ptr %1, i64 248
  %bound070 = icmp ult ptr %i.ci, %i.cm
  %bound171 = icmp ult ptr %i.cj, %i.cl
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph67.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck69
  %n.vec74 = and i64 %wide.trip.count41, 2147483644 ; 3 uses
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !40, !alias.scope !192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index76 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.co, align 8, !tbaa !52, !alias.scope !193, !noalias !192 ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.cp, align 8, !tbaa !52, !alias.scope !193, !noalias !192 ; 2 uses
  %i.cq = fcmp olt <2 x double> %broadcast.splat, %wide.load77
  %i.cr = fcmp olt <2 x double> %broadcast.splat, %wide.load78
  %i.cs = select <2 x i1> %i.cq, <2 x double> %broadcast.splat, <2 x double> %wide.load77
  %i.ct = select <2 x i1> %i.cr, <2 x double> %broadcast.splat, <2 x double> %wide.load78
  store <2 x double> %i.cs, ptr %i.co, align 8, !tbaa !52, !alias.scope !193, !noalias !192
  store <2 x double> %i.ct, ptr %i.cp, align 8, !tbaa !52, !alias.scope !193, !noalias !192
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.cu, label %middle.block80, label %vector.body75, !llvm.loop !183

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec74, %wide.trip.count41
  br i1 %cmp.n81, label %.loopexit, label %scalar.ph67.preheader

end_hunk_0
begin_hunk_1_@_ZN5Ipopt11DenseVector17AddTwoVectorsImplEdRKNS_6VectorEdS3_d:bb.a
  %wide.load = load <2 x double>, ptr %i.sd, align 8, !tbaa !52
  %wide.load1275 = load <2 x double>, ptr %i.se, align 8, !tbaa !52
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %wide.load1276 = load <2 x double>, ptr %i.sf, align 8, !tbaa !52
  %wide.load1277 = load <2 x double>, ptr %i.sg, align 8, !tbaa !52
  %i.sh = fmul <2 x double> %broadcast.splat, %wide.load1276
  %i.si = fmul <2 x double> %broadcast.splat, %wide.load1277
  %i.sj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1274, <2 x double> %wide.load, <2 x double> %i.sh)
  %i.sk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1274, <2 x double> %wide.load1275, <2 x double> %i.si)
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store <2 x double> %i.sj, ptr %i.sl, align 8, !tbaa !52
  store <2 x double> %i.sk, ptr %i.sm, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sn = icmp eq i64 %index.next, %n.vec
  br i1 %i.sn, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1057
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph783, %middle.block
  %indvars.iv1054.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph783 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count1057, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1054.ph
  %i.sp = load double, ptr %i.so, align 8, !tbaa !52
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1054.ph
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !52
  %i.ss = fmul double %3, %i.sr
  %i.st = tail call double @llvm.fmuladd.f64(double %1, double %i.sp, double %i.ss)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1054.ph
  store double %i.st, ptr %i.su, align 8, !tbaa !52
  %indvars.iv.next1055.prol = or disjoint i64 %indvars.iv1054.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1054.unr = phi i64 [ %indvars.iv1054.ph, %scalar.ph.preheader ], [ %indvars.iv.next1055.prol, %scalar.ph.prol ]
  %i.sv = add nsw i64 %wide.trip.count1057, -1
  %i.sw = icmp eq i64 %indvars.iv1054.ph, %i.sv
  br i1 %i.sw, label %.loopexit, label %scalar.ph

.preheader619:                                    ; preds = %bb.ai
  br i1 %i.sa, label %.lr.ph785, label %.loopexit

.lr.ph785:                                        ; preds = %.preheader619
  %wide.trip.count1062 = zext nneg i32 %i.rz to i64 ; 5 uses
  %min.iters.check1283 = icmp ult i32 %i.rz, 8
  br i1 %min.iters.check1283, label %scalar.ph1282.preheader, label %vector.memcheck1284

vector.memcheck1284:                              ; preds = %.lr.ph785
  %i.sx = sub i64 %.05831270, %i.av
  %diff.check1285 = icmp ugt i64 %i.sx, -32
  %i.sy = sub i64 %.05791271, %i.av
  %diff.check1286 = icmp ugt i64 %i.sy, -32
  %conflict.rdx1287 = or i1 %diff.check1285, %diff.check1286
  br i1 %conflict.rdx1287, label %scalar.ph1282.preheader, label %vector.ph1288

vector.ph1288:                                    ; preds = %vector.memcheck1284
  %n.vec1289 = and i64 %wide.trip.count1062, 2147483644 ; 3 uses
  %broadcast.splatinsert1290 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1291 = shufflevector <2 x double> %broadcast.splatinsert1290, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1288
  %index1293 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1298, %vector.body1292 ] ; 4 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1293 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %wide.load1294 = load <2 x double>, ptr %i.sz, align 8, !tbaa !52
  %wide.load1295 = load <2 x double>, ptr %i.ta, align 8, !tbaa !52
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1293 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %wide.load1296 = load <2 x double>, ptr %i.tb, align 8, !tbaa !52
  %wide.load1297 = load <2 x double>, ptr %i.tc, align 8, !tbaa !52
  %i.td = fneg <2 x double> %wide.load1296
  %i.te = fneg <2 x double> %wide.load1297
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1291, <2 x double> %wide.load1294, <2 x double> %i.td)
  %i.tg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1291, <2 x double> %wide.load1295, <2 x double> %i.te)
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1293 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x double> %i.tf, ptr %i.th, align 8, !tbaa !52
  store <2 x double> %i.tg, ptr %i.ti, align 8, !tbaa !52
  %index.next1298 = add nuw i64 %index1293, 4     ; 2 uses
  %i.tj = icmp eq i64 %index.next1298, %n.vec1289
  br i1 %i.tj, label %middle.block1299, label %vector.body1292, !llvm.loop !240

middle.block1299:                                 ; preds = %vector.body1292
  %cmp.n1300 = icmp eq i64 %n.vec1289, %wide.trip.count1062
  br i1 %cmp.n1300, label %.loopexit, label %scalar.ph1282.preheader

scalar.ph1282.preheader:                          ; preds = %vector.memcheck1284, %.lr.ph785, %middle.block1299
  %indvars.iv1059.ph = phi i64 [ 0, %vector.memcheck1284 ], [ 0, %.lr.ph785 ], [ %n.vec1289, %middle.block1299 ] ; 6 uses
  %xtraiter2849 = and i64 %wide.trip.count1062, 1
  %lcmp.mod2850.not = icmp eq i64 %xtraiter2849, 0
  br i1 %lcmp.mod2850.not, label %scalar.ph1282.prol.loopexit, label %scalar.ph1282.prol

scalar.ph1282.prol:                               ; preds = %scalar.ph1282.preheader
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1059.ph
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !52
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1059.ph
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !52
  %i.to = fneg double %i.tn
  %i.tp = tail call double @llvm.fmuladd.f64(double %1, double %i.tl, double %i.to)
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1059.ph
  store double %i.tp, ptr %i.tq, align 8, !tbaa !52
  %indvars.iv.next1060.prol = or disjoint i64 %indvars.iv1059.ph, 1
  br label %scalar.ph1282.prol.loopexit

scalar.ph1282.prol.loopexit:                      ; preds = %scalar.ph1282.prol, %scalar.ph1282.preheader
  %indvars.iv1059.unr = phi i64 [ %indvars.iv1059.ph, %scalar.ph1282.preheader ], [ %indvars.iv.next1060.prol, %scalar.ph1282.prol ]
  %i.tr = add nsw i64 %wide.trip.count1062, -1
  %i.ts = icmp eq i64 %indvars.iv1059.ph, %i.tr
  br i1 %i.ts, label %.loopexit, label %scalar.ph1282

scalar.ph1282:                                    ; preds = %scalar.ph1282.prol.loopexit, %scalar.ph1282
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060.1, %scalar.ph1282 ], [ %indvars.iv1059.unr, %scalar.ph1282.prol.loopexit ] ; 5 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1059
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !52
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1059
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !52
  %i.tx = fneg double %i.tw
  %i.ty = tail call double @llvm.fmuladd.f64(double %1, double %i.tu, double %i.tx)
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1059
  store double %i.ty, ptr %i.tz, align 8, !tbaa !52
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1060
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !52
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1060
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !52
  %i.ue = fneg double %i.ud
  %i.uf = tail call double @llvm.fmuladd.f64(double %1, double %i.ub, double %i.ue)
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1060
  store double %i.uf, ptr %i.ug, align 8, !tbaa !52
  %indvars.iv.next1060.1 = add nuw nsw i64 %indvars.iv1059, 2 ; 2 uses
  %exitcond1063.not.1 = icmp eq i64 %indvars.iv.next1060.1, %wide.trip.count1062
  br i1 %exitcond1063.not.1, label %.loopexit, label %scalar.ph1282, !llvm.loop !241

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055.1, %scalar.ph ], [ %indvars.iv1054.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1054
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !52
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1054
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !52
  %i.ul = fmul double %3, %i.uk
  %i.um = tail call double @llvm.fmuladd.f64(double %1, double %i.ui, double %i.ul)
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1054
  store double %i.um, ptr %i.un, align 8, !tbaa !52
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 1 ; 3 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1055
  %i.up = load double, ptr %i.uo, align 8, !tbaa !52
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1055
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !52
  %i.us = fmul double %3, %i.ur
  %i.ut = tail call double @llvm.fmuladd.f64(double %1, double %i.up, double %i.us)
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1055
  store double %i.ut, ptr %i.uu, align 8, !tbaa !52
  %indvars.iv.next1055.1 = add nuw nsw i64 %indvars.iv1054, 2 ; 2 uses
  %exitcond1058.not.1 = icmp eq i64 %indvars.iv.next1055.1, %wide.trip.count1057
  br i1 %exitcond1058.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !242

.thread596:                                       ; preds = %.thread593
  %i.uv = fcmp oeq double %5, 1.000000e+00
  br i1 %i.uv, label %bb.aj, label %bb.be

bb.aj:                                            ; preds = %.thread596
  %i.uw = fcmp oeq double %1, 1.000000e+00
  br i1 %i.uw, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.o, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef 1.000000e+00, ptr noundef %.0583, i32 noundef 1, ptr noundef %i.uy, i32 noundef 1)
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak
  %i.uz = fcmp oeq double %3, 1.000000e+00
  br i1 %i.uz, label %.preheader623, label %bb.an

.preheader623:                                    ; preds = %bb.am
  %i.va = icmp sgt i32 %i.e, 0
  br i1 %i.va, label %.lr.ph781, label %.loopexit

.lr.ph781:                                        ; preds = %.preheader623
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1052 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2769 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2769, label %scalar.ph2768.preheader, label %vector.memcheck2770

vector.memcheck2770:                              ; preds = %.lr.ph781
  %i.vd = shl nuw nsw i64 %wide.trip.count1052, 3 ; 3 uses
  %i.ve = getelementptr i8, ptr %i.vc, i64 %i.vd  ; 2 uses
  %i.vf = getelementptr i8, ptr %.0583, i64 %i.vd
  %6 = getelementptr i8, ptr %.0579, i64 %i.vd
  %bound02771.a = icmp ult ptr %i.vc, %i.vf
  %bound12772 = icmp ult ptr %.0583, %i.ve
  %found.conflict2773 = and i1 %bound02771.a, %bound12772
  %bound02774 = icmp ult ptr %i.vc, %6
  %bound12775 = icmp ult ptr %.0579, %i.ve
  %found.conflict2776 = and i1 %bound02774, %bound12775
  %conflict.rdx2777 = or i1 %found.conflict2773, %found.conflict2776
  br i1 %conflict.rdx2777, label %scalar.ph2768.preheader, label %vector.ph2778

vector.ph2778:                                    ; preds = %vector.memcheck2770
  %n.vec2779 = and i64 %wide.trip.count1052, 2147483644 ; 3 uses
  br label %vector.body2780

vector.body2780:                                  ; preds = %vector.body2780, %vector.ph2778
  %index2781 = phi i64 [ 0, %vector.ph2778 ], [ %index.next2788, %vector.body2780 ] ; 4 uses
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2781 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load2782 = load <2 x double>, ptr %i.vg, align 8, !tbaa !52, !alias.scope !468
  %wide.load2783 = load <2 x double>, ptr %i.vh, align 8, !tbaa !52, !alias.scope !468
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2781 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load2784 = load <2 x double>, ptr %i.vi, align 8, !tbaa !52, !alias.scope !469
  %wide.load2785 = load <2 x double>, ptr %i.vj, align 8, !tbaa !52, !alias.scope !469
  %i.vk = fadd <2 x double> %wide.load2782, %wide.load2784
  %i.vl = fadd <2 x double> %wide.load2783, %wide.load2785
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %index2781 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 2 uses
  %wide.load2786 = load <2 x double>, ptr %i.vm, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %wide.load2787 = load <2 x double>, ptr %i.vn, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %i.vo = fadd <2 x double> %i.vk, %wide.load2786
  %i.vp = fadd <2 x double> %i.vl, %wide.load2787
  store <2 x double> %i.vo, ptr %i.vm, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  store <2 x double> %i.vp, ptr %i.vn, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %index.next2788 = add nuw i64 %index2781, 4     ; 2 uses
  %i.vq = icmp eq i64 %index.next2788, %n.vec2779
  br i1 %i.vq, label %middle.block2789, label %vector.body2780, !llvm.loop !247

middle.block2789:                                 ; preds = %vector.body2780
  %cmp.n2790 = icmp eq i64 %n.vec2779, %wide.trip.count1052
  br i1 %cmp.n2790, label %.loopexit, label %scalar.ph2768.preheader

scalar.ph2768.preheader:                          ; preds = %vector.memcheck2770, %.lr.ph781, %middle.block2789
  %indvars.iv1049.ph = phi i64 [ 0, %vector.memcheck2770 ], [ 0, %.lr.ph781 ], [ %n.vec2779, %middle.block2789 ] ; 6 uses
  %xtraiter2996 = and i64 %wide.trip.count1052, 1
  %lcmp.mod2997.not = icmp eq i64 %xtraiter2996, 0
  br i1 %lcmp.mod2997.not, label %scalar.ph2768.prol.loopexit, label %scalar.ph2768.prol

scalar.ph2768.prol:                               ; preds = %scalar.ph2768.preheader
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1049.ph
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !52
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1049.ph
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !52
  %i.vv = fadd double %i.vs, %i.vu
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1049.ph ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !52
  %i.vy = fadd double %i.vv, %i.vx
  store double %i.vy, ptr %i.vw, align 8, !tbaa !52
  %indvars.iv.next1050.prol = or disjoint i64 %indvars.iv1049.ph, 1
  br label %scalar.ph2768.prol.loopexit

scalar.ph2768.prol.loopexit:                      ; preds = %scalar.ph2768.prol, %scalar.ph2768.preheader
  %indvars.iv1049.unr = phi i64 [ %indvars.iv1049.ph, %scalar.ph2768.preheader ], [ %indvars.iv.next1050.prol, %scalar.ph2768.prol ]
  %i.vz = add nsw i64 %wide.trip.count1052, -1
  %i.wa = icmp eq i64 %indvars.iv1049.ph, %i.vz
  br i1 %i.wa, label %.loopexit, label %scalar.ph2768

scalar.ph2768:                                    ; preds = %scalar.ph2768.prol.loopexit, %scalar.ph2768
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050.1, %scalar.ph2768 ], [ %indvars.iv1049.unr, %scalar.ph2768.prol.loopexit ] ; 5 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1049
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !52
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1049
  %i.we = load double, ptr %i.wd, align 8, !tbaa !52
  %i.wf = fadd double %i.wc, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1049 ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !52
  %i.wi = fadd double %i.wf, %i.wh
  store double %i.wi, ptr %i.wg, align 8, !tbaa !52
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 3 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1050
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !52
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1050
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !52
  %i.wn = fadd double %i.wk, %i.wm
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next1050 ; 2 uses
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !52
  %i.wq = fadd double %i.wn, %i.wp
  store double %i.wq, ptr %i.wo, align 8, !tbaa !52
  %indvars.iv.next1050.1 = add nuw nsw i64 %indvars.iv1049, 2 ; 2 uses
  %exitcond1053.not.1 = icmp eq i64 %indvars.iv.next1050.1, %wide.trip.count1052
  br i1 %exitcond1053.not.1, label %.loopexit, label %scalar.ph2768, !llvm.loop !248

bb.an:                                            ; preds = %bb.am
  %i.wr = fcmp oeq double %3, -1.000000e+00
  %i.ws = icmp sgt i32 %i.e, 0                    ; 2 uses
  br i1 %i.wr, label %.preheader625, label %.preheader627

.preheader627:                                    ; preds = %bb.an
  br i1 %i.ws, label %.lr.ph777, label %.loopexit

.lr.ph777:                                        ; preds = %.preheader627
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1042 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2699 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2699, label %scalar.ph2698.preheader, label %vector.memcheck2700

vector.memcheck2700:                              ; preds = %.lr.ph777
  %i.wv = shl nuw nsw i64 %wide.trip.count1042, 3 ; 3 uses
  %i.ww = getelementptr i8, ptr %i.wu, i64 %i.wv  ; 2 uses
  %i.wx = getelementptr i8, ptr %.0583, i64 %i.wv
  %7 = getelementptr i8, ptr %.0579, i64 %i.wv
  %bound02701.a = icmp ult ptr %i.wu, %i.wx
  %bound12702 = icmp ult ptr %.0583, %i.ww
  %found.conflict2703 = and i1 %bound02701.a, %bound12702
  %bound02704 = icmp ult ptr %i.wu, %7
  %bound12705 = icmp ult ptr %.0579, %i.ww
  %found.conflict2706 = and i1 %bound02704, %bound12705
  %conflict.rdx2707 = or i1 %found.conflict2703, %found.conflict2706
  br i1 %conflict.rdx2707, label %scalar.ph2698.preheader, label %vector.ph2708

vector.ph2708:                                    ; preds = %vector.memcheck2700
  %n.vec2709 = and i64 %wide.trip.count1042, 2147483644 ; 3 uses
  %broadcast.splatinsert2710 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2711 = shufflevector <2 x double> %broadcast.splatinsert2710, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2712

vector.body2712:                                  ; preds = %vector.body2712, %vector.ph2708
  %index2713 = phi i64 [ 0, %vector.ph2708 ], [ %index.next2720, %vector.body2712 ] ; 4 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2713 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %wide.load2714 = load <2 x double>, ptr %i.wy, align 8, !tbaa !52, !alias.scope !472
  %wide.load2715 = load <2 x double>, ptr %i.wz, align 8, !tbaa !52, !alias.scope !472
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2713 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %wide.load2716 = load <2 x double>, ptr %i.xa, align 8, !tbaa !52, !alias.scope !473
  %wide.load2717 = load <2 x double>, ptr %i.xb, align 8, !tbaa !52, !alias.scope !473
  %i.xc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2711, <2 x double> %wide.load2716, <2 x double> %wide.load2714)
  %i.xd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2711, <2 x double> %wide.load2717, <2 x double> %wide.load2715)
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %index2713 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 2 uses
  %wide.load2718 = load <2 x double>, ptr %i.xe, align 8, !tbaa !52, !alias.scope !474, !noalias !475
  %wide.load2719 = load <2 x double>, ptr %i.xf, align 8, !tbaa !52, !alias.scope !474, !noalias !475
  %i.xg = fadd <2 x double> %i.xc, %wide.load2718
  %i.xh = fadd <2 x double> %i.xd, %wide.load2719
  store <2 x double> %i.xg, ptr %i.xe, align 8, !tbaa !52, !alias.scope !474, !noalias !475
  store <2 x double> %i.xh, ptr %i.xf, align 8, !tbaa !52, !alias.scope !474, !noalias !475
  %index.next2720 = add nuw i64 %index2713, 4     ; 2 uses
  %i.xi = icmp eq i64 %index.next2720, %n.vec2709
  br i1 %i.xi, label %middle.block2721, label %vector.body2712, !llvm.loop !253

middle.block2721:                                 ; preds = %vector.body2712
  %cmp.n2722 = icmp eq i64 %n.vec2709, %wide.trip.count1042
  br i1 %cmp.n2722, label %.loopexit, label %scalar.ph2698.preheader

scalar.ph2698.preheader:                          ; preds = %vector.memcheck2700, %.lr.ph777, %middle.block2721
  %indvars.iv1039.ph = phi i64 [ 0, %vector.memcheck2700 ], [ 0, %.lr.ph777 ], [ %n.vec2709, %middle.block2721 ] ; 6 uses
  %xtraiter2990 = and i64 %wide.trip.count1042, 1
  %lcmp.mod2991.not = icmp eq i64 %xtraiter2990, 0
  br i1 %lcmp.mod2991.not, label %scalar.ph2698.prol.loopexit, label %scalar.ph2698.prol

scalar.ph2698.prol:                               ; preds = %scalar.ph2698.preheader
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1039.ph
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !52
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1039.ph
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !52
  %i.xn = tail call double @llvm.fmuladd.f64(double %3, double %i.xm, double %i.xk)
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv1039.ph ; 2 uses
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !52
  %i.xq = fadd double %i.xn, %i.xp
  store double %i.xq, ptr %i.xo, align 8, !tbaa !52
  %indvars.iv.next1040.prol = or disjoint i64 %indvars.iv1039.ph, 1
  br label %scalar.ph2698.prol.loopexit

scalar.ph2698.prol.loopexit:                      ; preds = %scalar.ph2698.prol, %scalar.ph2698.preheader
  %indvars.iv1039.unr = phi i64 [ %indvars.iv1039.ph, %scalar.ph2698.preheader ], [ %indvars.iv.next1040.prol, %scalar.ph2698.prol ]
  %i.xr = add nsw i64 %wide.trip.count1042, -1
  %i.xs = icmp eq i64 %indvars.iv1039.ph, %i.xr
  br i1 %i.xs, label %.loopexit, label %scalar.ph2698

.preheader625:                                    ; preds = %bb.an
  br i1 %i.ws, label %.lr.ph779, label %.loopexit

.lr.ph779:                                        ; preds = %.preheader625
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1047 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2735 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2735, label %scalar.ph2734.preheader, label %vector.memcheck2736

vector.memcheck2736:                              ; preds = %.lr.ph779
  %i.xv = shl nuw nsw i64 %wide.trip.count1047, 3 ; 3 uses
  %i.xw = getelementptr i8, ptr %i.xu, i64 %i.xv  ; 2 uses
  %i.xx = getelementptr i8, ptr %.0583, i64 %i.xv
  %8 = getelementptr i8, ptr %.0579, i64 %i.xv
  %bound02737.a = icmp ult ptr %i.xu, %i.xx
  %bound12738 = icmp ult ptr %.0583, %i.xw
  %found.conflict2739 = and i1 %bound02737.a, %bound12738
  %bound02740 = icmp ult ptr %i.xu, %8
  %bound12741 = icmp ult ptr %.0579, %i.xw
  %found.conflict2742 = and i1 %bound02740, %bound12741
  %conflict.rdx2743 = or i1 %found.conflict2739, %found.conflict2742
  br i1 %conflict.rdx2743, label %scalar.ph2734.preheader, label %vector.ph2744

vector.ph2744:                                    ; preds = %vector.memcheck2736
  %n.vec2745 = and i64 %wide.trip.count1047, 2147483644 ; 3 uses
  br label %vector.body2746

vector.body2746:                                  ; preds = %vector.body2746, %vector.ph2744
  %index2747 = phi i64 [ 0, %vector.ph2744 ], [ %index.next2754, %vector.body2746 ] ; 4 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2747 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load2748 = load <2 x double>, ptr %i.xy, align 8, !tbaa !52, !alias.scope !476
  %wide.load2749 = load <2 x double>, ptr %i.xz, align 8, !tbaa !52, !alias.scope !476
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2747 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %wide.load2750 = load <2 x double>, ptr %i.ya, align 8, !tbaa !52, !alias.scope !477
  %wide.load2751 = load <2 x double>, ptr %i.yb, align 8, !tbaa !52, !alias.scope !477
  %i.yc = fsub <2 x double> %wide.load2748, %wide.load2750
  %i.yd = fsub <2 x double> %wide.load2749, %wide.load2751
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %index2747 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %wide.load2752 = load <2 x double>, ptr %i.ye, align 8, !tbaa !52, !alias.scope !478, !noalias !479
  %wide.load2753 = load <2 x double>, ptr %i.yf, align 8, !tbaa !52, !alias.scope !478, !noalias !479
  %i.yg = fadd <2 x double> %i.yc, %wide.load2752
  %i.yh = fadd <2 x double> %i.yd, %wide.load2753
  store <2 x double> %i.yg, ptr %i.ye, align 8, !tbaa !52, !alias.scope !478, !noalias !479
  store <2 x double> %i.yh, ptr %i.yf, align 8, !tbaa !52, !alias.scope !478, !noalias !479
  %index.next2754 = add nuw i64 %index2747, 4     ; 2 uses
  %i.yi = icmp eq i64 %index.next2754, %n.vec2745
  br i1 %i.yi, label %middle.block2755, label %vector.body2746, !llvm.loop !258

middle.block2755:                                 ; preds = %vector.body2746
  %cmp.n2756 = icmp eq i64 %n.vec2745, %wide.trip.count1047
  br i1 %cmp.n2756, label %.loopexit, label %scalar.ph2734.preheader

scalar.ph2734.preheader:                          ; preds = %vector.memcheck2736, %.lr.ph779, %middle.block2755
  %indvars.iv1044.ph = phi i64 [ 0, %vector.memcheck2736 ], [ 0, %.lr.ph779 ], [ %n.vec2745, %middle.block2755 ] ; 6 uses
  %xtraiter2993 = and i64 %wide.trip.count1047, 1
  %lcmp.mod2994.not = icmp eq i64 %xtraiter2993, 0
  br i1 %lcmp.mod2994.not, label %scalar.ph2734.prol.loopexit, label %scalar.ph2734.prol

scalar.ph2734.prol:                               ; preds = %scalar.ph2734.preheader
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1044.ph
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !52
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1044.ph
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !52
  %i.yn = fsub double %i.yk, %i.ym
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1044.ph ; 2 uses
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !52
  %i.yq = fadd double %i.yn, %i.yp
  store double %i.yq, ptr %i.yo, align 8, !tbaa !52
  %indvars.iv.next1045.prol = or disjoint i64 %indvars.iv1044.ph, 1
  br label %scalar.ph2734.prol.loopexit

scalar.ph2734.prol.loopexit:                      ; preds = %scalar.ph2734.prol, %scalar.ph2734.preheader
  %indvars.iv1044.unr = phi i64 [ %indvars.iv1044.ph, %scalar.ph2734.preheader ], [ %indvars.iv.next1045.prol, %scalar.ph2734.prol ]
  %i.yr = add nsw i64 %wide.trip.count1047, -1
  %i.ys = icmp eq i64 %indvars.iv1044.ph, %i.yr
  br i1 %i.ys, label %.loopexit, label %scalar.ph2734

scalar.ph2734:                                    ; preds = %scalar.ph2734.prol.loopexit, %scalar.ph2734
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.1, %scalar.ph2734 ], [ %indvars.iv1044.unr, %scalar.ph2734.prol.loopexit ] ; 5 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1044
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !52
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1044
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !52
  %i.yx = fsub double %i.yu, %i.yw
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1044 ; 2 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !52
  %i.za = fadd double %i.yx, %i.yz
  store double %i.za, ptr %i.yy, align 8, !tbaa !52
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1045
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !52
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1045
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !52
  %i.zf = fsub double %i.zc, %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv.next1045 ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !52
  %i.zi = fadd double %i.zf, %i.zh
  store double %i.zi, ptr %i.zg, align 8, !tbaa !52
  %indvars.iv.next1045.1 = add nuw nsw i64 %indvars.iv1044, 2 ; 2 uses
  %exitcond1048.not.1 = icmp eq i64 %indvars.iv.next1045.1, %wide.trip.count1047
  br i1 %exitcond1048.not.1, label %.loopexit, label %scalar.ph2734, !llvm.loop !259

scalar.ph2698:                                    ; preds = %scalar.ph2698.prol.loopexit, %scalar.ph2698
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040.1, %scalar.ph2698 ], [ %indvars.iv1039.unr, %scalar.ph2698.prol.loopexit ] ; 5 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1039
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !52
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1039
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !52
  %i.zn = tail call double @llvm.fmuladd.f64(double %3, double %i.zm, double %i.zk)
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv1039 ; 2 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !52
  %i.zq = fadd double %i.zn, %i.zp
  store double %i.zq, ptr %i.zo, align 8, !tbaa !52
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 1 ; 3 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1040
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !52
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1040
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !52
  %i.zv = tail call double @llvm.fmuladd.f64(double %3, double %i.zu, double %i.zs)
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv.next1040 ; 2 uses
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !52
  %i.zy = fadd double %i.zv, %i.zx
  store double %i.zy, ptr %i.zw, align 8, !tbaa !52
  %indvars.iv.next1040.1 = add nuw nsw i64 %indvars.iv1039, 2 ; 2 uses
  %exitcond1043.not.1 = icmp eq i64 %indvars.iv.next1040.1, %wide.trip.count1042
  br i1 %exitcond1043.not.1, label %.loopexit, label %scalar.ph2698, !llvm.loop !260

bb.ao:                                            ; preds = %bb.aj
  %i.zz = fcmp oeq double %1, -1.000000e+00
  br i1 %i.zz, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.o, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef -1.000000e+00, ptr noundef %.0583, i32 noundef 1, ptr noundef %i.aab, i32 noundef 1)
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap
  %i.aac = fcmp oeq double %3, 1.000000e+00
  br i1 %i.aac, label %.preheader629, label %bb.as

.preheader629:                                    ; preds = %bb.ar
  %i.aad = icmp sgt i32 %i.e, 0
  br i1 %i.aad, label %.lr.ph775, label %.loopexit

.lr.ph775:                                        ; preds = %.preheader629
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1037 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2665 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2665, label %scalar.ph2664.preheader, label %vector.memcheck2666

vector.memcheck2666:                              ; preds = %.lr.ph775
  %i.aag = shl nuw nsw i64 %wide.trip.count1037, 3 ; 3 uses
  %i.aah = getelementptr i8, ptr %i.aaf, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %.0583, i64 %i.aag
  %9 = getelementptr i8, ptr %.0579, i64 %i.aag
  %bound02667.a = icmp ult ptr %i.aaf, %i.aai
  %bound12668 = icmp ult ptr %.0583, %i.aah
  %found.conflict2669 = and i1 %bound02667.a, %bound12668
  %bound02670 = icmp ult ptr %i.aaf, %9
  %bound12671 = icmp ult ptr %.0579, %i.aah
  %found.conflict2672 = and i1 %bound02670, %bound12671
  %conflict.rdx2673 = or i1 %found.conflict2669, %found.conflict2672
  br i1 %conflict.rdx2673, label %scalar.ph2664.preheader, label %vector.ph2674

vector.ph2674:                                    ; preds = %vector.memcheck2666
  %n.vec2675 = and i64 %wide.trip.count1037, 2147483644 ; 3 uses
  br label %vector.body2676

vector.body2676:                                  ; preds = %vector.body2676, %vector.ph2674
  %index2677 = phi i64 [ 0, %vector.ph2674 ], [ %index.next2684, %vector.body2676 ] ; 4 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2677 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %wide.load2678 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !52, !alias.scope !480
  %wide.load2679 = load <2 x double>, ptr %i.aak, align 8, !tbaa !52, !alias.scope !480
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2677 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %wide.load2680 = load <2 x double>, ptr %i.aal, align 8, !tbaa !52, !alias.scope !481
  %wide.load2681 = load <2 x double>, ptr %i.aam, align 8, !tbaa !52, !alias.scope !481
  %i.aan = fsub <2 x double> %wide.load2680, %wide.load2678
  %i.aao = fsub <2 x double> %wide.load2681, %wide.load2679
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %index2677 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16 ; 2 uses
  %wide.load2682 = load <2 x double>, ptr %i.aap, align 8, !tbaa !52, !alias.scope !482, !noalias !483
  %wide.load2683 = load <2 x double>, ptr %i.aaq, align 8, !tbaa !52, !alias.scope !482, !noalias !483
  %i.aar = fadd <2 x double> %i.aan, %wide.load2682
  %i.aas = fadd <2 x double> %i.aao, %wide.load2683
  store <2 x double> %i.aar, ptr %i.aap, align 8, !tbaa !52, !alias.scope !482, !noalias !483
  store <2 x double> %i.aas, ptr %i.aaq, align 8, !tbaa !52, !alias.scope !482, !noalias !483
  %index.next2684 = add nuw i64 %index2677, 4     ; 2 uses
  %i.aat = icmp eq i64 %index.next2684, %n.vec2675
  br i1 %i.aat, label %middle.block2685, label %vector.body2676, !llvm.loop !265

middle.block2685:                                 ; preds = %vector.body2676
  %cmp.n2686 = icmp eq i64 %n.vec2675, %wide.trip.count1037
  br i1 %cmp.n2686, label %.loopexit, label %scalar.ph2664.preheader

scalar.ph2664.preheader:                          ; preds = %vector.memcheck2666, %.lr.ph775, %middle.block2685
  %indvars.iv1034.ph = phi i64 [ 0, %vector.memcheck2666 ], [ 0, %.lr.ph775 ], [ %n.vec2675, %middle.block2685 ] ; 6 uses
  %xtraiter2987 = and i64 %wide.trip.count1037, 1
  %lcmp.mod2988.not = icmp eq i64 %xtraiter2987, 0
  br i1 %lcmp.mod2988.not, label %scalar.ph2664.prol.loopexit, label %scalar.ph2664.prol

scalar.ph2664.prol:                               ; preds = %scalar.ph2664.preheader
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1034.ph
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !52
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1034.ph
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !52
  %i.aay = fsub double %i.aax, %i.aav
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv1034.ph ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !52
  %i.abb = fadd double %i.aay, %i.aba
  store double %i.abb, ptr %i.aaz, align 8, !tbaa !52
  %indvars.iv.next1035.prol = or disjoint i64 %indvars.iv1034.ph, 1
  br label %scalar.ph2664.prol.loopexit

scalar.ph2664.prol.loopexit:                      ; preds = %scalar.ph2664.prol, %scalar.ph2664.preheader
  %indvars.iv1034.unr = phi i64 [ %indvars.iv1034.ph, %scalar.ph2664.preheader ], [ %indvars.iv.next1035.prol, %scalar.ph2664.prol ]
  %i.abc = add nsw i64 %wide.trip.count1037, -1
  %i.abd = icmp eq i64 %indvars.iv1034.ph, %i.abc
  br i1 %i.abd, label %.loopexit, label %scalar.ph2664

scalar.ph2664:                                    ; preds = %scalar.ph2664.prol.loopexit, %scalar.ph2664
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035.1, %scalar.ph2664 ], [ %indvars.iv1034.unr, %scalar.ph2664.prol.loopexit ] ; 5 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1034
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !52
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1034
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !52
  %i.abi = fsub double %i.abh, %i.abf
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv1034 ; 2 uses
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !52
  %i.abl = fadd double %i.abi, %i.abk
  store double %i.abl, ptr %i.abj, align 8, !tbaa !52
  %indvars.iv.next1035 = add nuw nsw i64 %indvars.iv1034, 1 ; 3 uses
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1035
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !52
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1035
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !52
  %i.abq = fsub double %i.abp, %i.abn
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv.next1035 ; 2 uses
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !52
  %i.abt = fadd double %i.abq, %i.abs
  store double %i.abt, ptr %i.abr, align 8, !tbaa !52
  %indvars.iv.next1035.1 = add nuw nsw i64 %indvars.iv1034, 2 ; 2 uses
  %exitcond1038.not.1 = icmp eq i64 %indvars.iv.next1035.1, %wide.trip.count1037
  br i1 %exitcond1038.not.1, label %.loopexit, label %scalar.ph2664, !llvm.loop !266

bb.as:                                            ; preds = %bb.ar
  %i.abu = fcmp oeq double %3, -1.000000e+00
  %i.abv = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.abu, label %.preheader631, label %.preheader633

.preheader633:                                    ; preds = %bb.as
  br i1 %i.abv, label %.lr.ph771, label %.loopexit

.lr.ph771:                                        ; preds = %.preheader633
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1027 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2595 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2595, label %scalar.ph2594.preheader, label %vector.memcheck2596

vector.memcheck2596:                              ; preds = %.lr.ph771
  %i.aby = shl nuw nsw i64 %wide.trip.count1027, 3 ; 3 uses
  %i.abz = getelementptr i8, ptr %i.abx, i64 %i.aby ; 2 uses
  %i.aca = getelementptr i8, ptr %.0583, i64 %i.aby
  %10 = getelementptr i8, ptr %.0579, i64 %i.aby
  %bound02597.a = icmp ult ptr %i.abx, %i.aca
  %bound12598 = icmp ult ptr %.0583, %i.abz
  %found.conflict2599 = and i1 %bound02597.a, %bound12598
  %bound02600 = icmp ult ptr %i.abx, %10
  %bound12601 = icmp ult ptr %.0579, %i.abz
  %found.conflict2602 = and i1 %bound02600, %bound12601
  %conflict.rdx2603 = or i1 %found.conflict2599, %found.conflict2602
  br i1 %conflict.rdx2603, label %scalar.ph2594.preheader, label %vector.ph2604

vector.ph2604:                                    ; preds = %vector.memcheck2596
  %n.vec2605 = and i64 %wide.trip.count1027, 2147483644 ; 3 uses
  %broadcast.splatinsert2606 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2607 = shufflevector <2 x double> %broadcast.splatinsert2606, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2608

vector.body2608:                                  ; preds = %vector.body2608, %vector.ph2604
  %index2609 = phi i64 [ 0, %vector.ph2604 ], [ %index.next2616, %vector.body2608 ] ; 4 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2609 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %wide.load2610 = load <2 x double>, ptr %i.acb, align 8, !tbaa !52, !alias.scope !484
  %wide.load2611 = load <2 x double>, ptr %i.acc, align 8, !tbaa !52, !alias.scope !484
  %i.acd = fneg <2 x double> %wide.load2610
  %i.ace = fneg <2 x double> %wide.load2611
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2609 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %wide.load2612 = load <2 x double>, ptr %i.acf, align 8, !tbaa !52, !alias.scope !485
  %wide.load2613 = load <2 x double>, ptr %i.acg, align 8, !tbaa !52, !alias.scope !485
  %i.ach = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2607, <2 x double> %wide.load2612, <2 x double> %i.acd)
  %i.aci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2607, <2 x double> %wide.load2613, <2 x double> %i.ace)
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %index2609 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16 ; 2 uses
  %wide.load2614 = load <2 x double>, ptr %i.acj, align 8, !tbaa !52, !alias.scope !486, !noalias !487
  %wide.load2615 = load <2 x double>, ptr %i.ack, align 8, !tbaa !52, !alias.scope !486, !noalias !487
  %i.acl = fadd <2 x double> %i.ach, %wide.load2614
  %i.acm = fadd <2 x double> %i.aci, %wide.load2615
  store <2 x double> %i.acl, ptr %i.acj, align 8, !tbaa !52, !alias.scope !486, !noalias !487
  store <2 x double> %i.acm, ptr %i.ack, align 8, !tbaa !52, !alias.scope !486, !noalias !487
  %index.next2616 = add nuw i64 %index2609, 4     ; 2 uses
  %i.acn = icmp eq i64 %index.next2616, %n.vec2605
  br i1 %i.acn, label %middle.block2617, label %vector.body2608, !llvm.loop !271

middle.block2617:                                 ; preds = %vector.body2608
  %cmp.n2618 = icmp eq i64 %n.vec2605, %wide.trip.count1027
  br i1 %cmp.n2618, label %.loopexit, label %scalar.ph2594.preheader

scalar.ph2594.preheader:                          ; preds = %vector.memcheck2596, %.lr.ph771, %middle.block2617
  %indvars.iv1024.ph = phi i64 [ 0, %vector.memcheck2596 ], [ 0, %.lr.ph771 ], [ %n.vec2605, %middle.block2617 ] ; 6 uses
  %xtraiter2981 = and i64 %wide.trip.count1027, 1
  %lcmp.mod2982.not = icmp eq i64 %xtraiter2981, 0
  br i1 %lcmp.mod2982.not, label %scalar.ph2594.prol.loopexit, label %scalar.ph2594.prol

scalar.ph2594.prol:                               ; preds = %scalar.ph2594.preheader
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1024.ph
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !52
  %i.acq = fneg double %i.acp
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1024.ph
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !52
  %i.act = tail call double @llvm.fmuladd.f64(double %3, double %i.acs, double %i.acq)
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv1024.ph ; 2 uses
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !52
  %i.acw = fadd double %i.act, %i.acv
  store double %i.acw, ptr %i.acu, align 8, !tbaa !52
  %indvars.iv.next1025.prol = or disjoint i64 %indvars.iv1024.ph, 1
  br label %scalar.ph2594.prol.loopexit

scalar.ph2594.prol.loopexit:                      ; preds = %scalar.ph2594.prol, %scalar.ph2594.preheader
  %indvars.iv1024.unr = phi i64 [ %indvars.iv1024.ph, %scalar.ph2594.preheader ], [ %indvars.iv.next1025.prol, %scalar.ph2594.prol ]
  %i.acx = add nsw i64 %wide.trip.count1027, -1
  %i.acy = icmp eq i64 %indvars.iv1024.ph, %i.acx
  br i1 %i.acy, label %.loopexit, label %scalar.ph2594

.preheader631:                                    ; preds = %bb.as
  br i1 %i.abv, label %.lr.ph773, label %.loopexit

.lr.ph773:                                        ; preds = %.preheader631
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1032 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2631 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2631, label %scalar.ph2630.preheader, label %vector.memcheck2632

vector.memcheck2632:                              ; preds = %.lr.ph773
  %i.adb = shl nuw nsw i64 %wide.trip.count1032, 3 ; 3 uses
  %i.adc = getelementptr i8, ptr %i.ada, i64 %i.adb ; 2 uses
  %i.add = getelementptr i8, ptr %.0583, i64 %i.adb
  %11 = getelementptr i8, ptr %.0579, i64 %i.adb
  %bound02633.a = icmp ult ptr %i.ada, %i.add
  %bound12634 = icmp ult ptr %.0583, %i.adc
  %found.conflict2635 = and i1 %bound02633.a, %bound12634
  %bound02636 = icmp ult ptr %i.ada, %11
  %bound12637 = icmp ult ptr %.0579, %i.adc
  %found.conflict2638 = and i1 %bound02636, %bound12637
  %conflict.rdx2639 = or i1 %found.conflict2635, %found.conflict2638
  br i1 %conflict.rdx2639, label %scalar.ph2630.preheader, label %vector.ph2640

vector.ph2640:                                    ; preds = %vector.memcheck2632
  %n.vec2641 = and i64 %wide.trip.count1032, 2147483644 ; 3 uses
  br label %vector.body2642

vector.body2642:                                  ; preds = %vector.body2642, %vector.ph2640
  %index2643 = phi i64 [ 0, %vector.ph2640 ], [ %index.next2650, %vector.body2642 ] ; 4 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2643 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %wide.load2644 = load <2 x double>, ptr %i.ade, align 8, !tbaa !52, !alias.scope !488
  %wide.load2645 = load <2 x double>, ptr %i.adf, align 8, !tbaa !52, !alias.scope !488
  %i.adg = fneg <2 x double> %wide.load2644
  %i.adh = fneg <2 x double> %wide.load2645
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2643 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %wide.load2646 = load <2 x double>, ptr %i.adi, align 8, !tbaa !52, !alias.scope !489
  %wide.load2647 = load <2 x double>, ptr %i.adj, align 8, !tbaa !52, !alias.scope !489
  %i.adk = fsub <2 x double> %i.adg, %wide.load2646
  %i.adl = fsub <2 x double> %i.adh, %wide.load2647
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.ada, i64 %index2643 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16 ; 2 uses
  %wide.load2648 = load <2 x double>, ptr %i.adm, align 8, !tbaa !52, !alias.scope !490, !noalias !491
  %wide.load2649 = load <2 x double>, ptr %i.adn, align 8, !tbaa !52, !alias.scope !490, !noalias !491
  %i.ado = fadd <2 x double> %i.adk, %wide.load2648
  %i.adp = fadd <2 x double> %i.adl, %wide.load2649
  store <2 x double> %i.ado, ptr %i.adm, align 8, !tbaa !52, !alias.scope !490, !noalias !491
  store <2 x double> %i.adp, ptr %i.adn, align 8, !tbaa !52, !alias.scope !490, !noalias !491
  %index.next2650 = add nuw i64 %index2643, 4     ; 2 uses
  %i.adq = icmp eq i64 %index.next2650, %n.vec2641
  br i1 %i.adq, label %middle.block2651, label %vector.body2642, !llvm.loop !276

middle.block2651:                                 ; preds = %vector.body2642
  %cmp.n2652 = icmp eq i64 %n.vec2641, %wide.trip.count1032
  br i1 %cmp.n2652, label %.loopexit, label %scalar.ph2630.preheader

scalar.ph2630.preheader:                          ; preds = %vector.memcheck2632, %.lr.ph773, %middle.block2651
  %indvars.iv1029.ph = phi i64 [ 0, %vector.memcheck2632 ], [ 0, %.lr.ph773 ], [ %n.vec2641, %middle.block2651 ] ; 6 uses
  %xtraiter2984 = and i64 %wide.trip.count1032, 1
  %lcmp.mod2985.not = icmp eq i64 %xtraiter2984, 0
  br i1 %lcmp.mod2985.not, label %scalar.ph2630.prol.loopexit, label %scalar.ph2630.prol

scalar.ph2630.prol:                               ; preds = %scalar.ph2630.preheader
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1029.ph
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !52
  %i.adt = fneg double %i.ads
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1029.ph
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !52
  %i.adw = fsub double %i.adt, %i.adv
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.ada, i64 %indvars.iv1029.ph ; 2 uses
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !52
  %i.adz = fadd double %i.adw, %i.ady
  store double %i.adz, ptr %i.adx, align 8, !tbaa !52
  %indvars.iv.next1030.prol = or disjoint i64 %indvars.iv1029.ph, 1
  br label %scalar.ph2630.prol.loopexit

scalar.ph2630.prol.loopexit:                      ; preds = %scalar.ph2630.prol, %scalar.ph2630.preheader
  %indvars.iv1029.unr = phi i64 [ %indvars.iv1029.ph, %scalar.ph2630.preheader ], [ %indvars.iv.next1030.prol, %scalar.ph2630.prol ]
  %i.aea = add nsw i64 %wide.trip.count1032, -1
  %i.aeb = icmp eq i64 %indvars.iv1029.ph, %i.aea
  br i1 %i.aeb, label %.loopexit, label %scalar.ph2630

scalar.ph2630:                                    ; preds = %scalar.ph2630.prol.loopexit, %scalar.ph2630
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030.1, %scalar.ph2630 ], [ %indvars.iv1029.unr, %scalar.ph2630.prol.loopexit ] ; 5 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1029
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !52
  %i.aee = fneg double %i.aed
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1029
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !52
  %i.aeh = fsub double %i.aee, %i.aeg
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.ada, i64 %indvars.iv1029 ; 2 uses
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !52
  %i.aek = fadd double %i.aeh, %i.aej
  store double %i.aek, ptr %i.aei, align 8, !tbaa !52
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 1 ; 3 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1030
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !52
  %i.aen = fneg double %i.aem
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1030
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !52
  %i.aeq = fsub double %i.aen, %i.aep
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.ada, i64 %indvars.iv.next1030 ; 2 uses
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !52
  %i.aet = fadd double %i.aeq, %i.aes
  store double %i.aet, ptr %i.aer, align 8, !tbaa !52
  %indvars.iv.next1030.1 = add nuw nsw i64 %indvars.iv1029, 2 ; 2 uses
  %exitcond1033.not.1 = icmp eq i64 %indvars.iv.next1030.1, %wide.trip.count1032
  br i1 %exitcond1033.not.1, label %.loopexit, label %scalar.ph2630, !llvm.loop !277

scalar.ph2594:                                    ; preds = %scalar.ph2594.prol.loopexit, %scalar.ph2594
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025.1, %scalar.ph2594 ], [ %indvars.iv1024.unr, %scalar.ph2594.prol.loopexit ] ; 5 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1024
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !52
  %i.aew = fneg double %i.aev
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1024
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !52
  %i.aez = tail call double @llvm.fmuladd.f64(double %3, double %i.aey, double %i.aew)
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv1024 ; 2 uses
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !52
  %i.afc = fadd double %i.aez, %i.afb
  store double %i.afc, ptr %i.afa, align 8, !tbaa !52
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 3 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1025
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !52
  %i.aff = fneg double %i.afe
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1025
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !52
  %i.afi = tail call double @llvm.fmuladd.f64(double %3, double %i.afh, double %i.aff)
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv.next1025 ; 2 uses
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !52
  %i.afl = fadd double %i.afi, %i.afk
  store double %i.afl, ptr %i.afj, align 8, !tbaa !52
  %indvars.iv.next1025.1 = add nuw nsw i64 %indvars.iv1024, 2 ; 2 uses
  %exitcond1028.not.1 = icmp eq i64 %indvars.iv.next1025.1, %wide.trip.count1027
  br i1 %exitcond1028.not.1, label %.loopexit, label %scalar.ph2594, !llvm.loop !278

bb.at:                                            ; preds = %bb.ao
  br i1 %i.g, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  br i1 %i.o, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.afm = fcmp oeq double %3, 1.000000e+00
  br i1 %i.afm, label %.preheader635, label %bb.ax

.preheader635:                                    ; preds = %bb.av
  %i.afn = icmp sgt i32 %i.e, 0
  br i1 %i.afn, label %.lr.ph769, label %.loopexit

.lr.ph769:                                        ; preds = %.preheader635
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph769, %bb.aw
  %i.afp = phi i32 [ %i.e, %.lr.ph769 ], [ %i.afu, %bb.aw ]
  %.0555768 = phi i32 [ 0, %.lr.ph769 ], [ %i.afr, %bb.aw ]
  %i.afq = load ptr, ptr %i.afo, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.afp, double noundef 1.000000e+00, ptr noundef %.0579, i32 noundef 1, ptr noundef %i.afq, i32 noundef 1)
  %i.afr = add nuw nsw i32 %.0555768, 1           ; 2 uses
  %i.afs = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 12
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !37 ; 2 uses
  %i.afv = icmp slt i32 %i.afr, %i.afu
  br i1 %i.afv, label %bb.aw, label %.loopexit, !llvm.loop !279

bb.ax:                                            ; preds = %bb.av
  %i.afw = fcmp oeq double %3, -1.000000e+00
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !41 ; 2 uses
  br i1 %i.afw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef -1.000000e+00, ptr noundef %.0579, i32 noundef 1, ptr noundef %i.afy, i32 noundef 1)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef %3, ptr noundef %.0579, i32 noundef 1, ptr noundef %i.afy, i32 noundef 1)
  br label %.loopexit

bb.ba:                                            ; preds = %bb.at
  br i1 %i.o, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef %1, ptr noundef %.0583, i32 noundef 1, ptr noundef %i.aga, i32 noundef 1)
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.agb = fcmp oeq double %3, 1.000000e+00
  br i1 %i.agb, label %.preheader637, label %bb.bd

.preheader637:                                    ; preds = %bb.bc
  %i.agc = icmp sgt i32 %i.e, 0
  br i1 %i.agc, label %.lr.ph767, label %.loopexit

.lr.ph767:                                        ; preds = %.preheader637
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1022 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2559 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2559, label %scalar.ph2558.preheader, label %vector.memcheck2560

vector.memcheck2560:                              ; preds = %.lr.ph767
  %i.agf = shl nuw nsw i64 %wide.trip.count1022, 3 ; 3 uses
  %i.agg = getelementptr i8, ptr %i.age, i64 %i.agf ; 2 uses
  %i.agh = getelementptr i8, ptr %.0583, i64 %i.agf
  %12 = getelementptr i8, ptr %.0579, i64 %i.agf
  %bound02561.a = icmp ult ptr %i.age, %i.agh
  %bound12562 = icmp ult ptr %.0583, %i.agg
  %found.conflict2563 = and i1 %bound02561.a, %bound12562
  %bound02564 = icmp ult ptr %i.age, %12
  %bound12565 = icmp ult ptr %.0579, %i.agg
  %found.conflict2566 = and i1 %bound02564, %bound12565
  %conflict.rdx2567 = or i1 %found.conflict2563, %found.conflict2566
  br i1 %conflict.rdx2567, label %scalar.ph2558.preheader, label %vector.ph2568

vector.ph2568:                                    ; preds = %vector.memcheck2560
  %n.vec2569 = and i64 %wide.trip.count1022, 2147483644 ; 3 uses
  %broadcast.splatinsert2570 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2571 = shufflevector <2 x double> %broadcast.splatinsert2570, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2572

vector.body2572:                                  ; preds = %vector.body2572, %vector.ph2568
  %index2573 = phi i64 [ 0, %vector.ph2568 ], [ %index.next2580, %vector.body2572 ] ; 4 uses
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2573 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %wide.load2574 = load <2 x double>, ptr %i.agi, align 8, !tbaa !52, !alias.scope !492
  %wide.load2575 = load <2 x double>, ptr %i.agj, align 8, !tbaa !52, !alias.scope !492
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2573 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 16
  %wide.load2576 = load <2 x double>, ptr %i.agk, align 8, !tbaa !52, !alias.scope !493
  %wide.load2577 = load <2 x double>, ptr %i.agl, align 8, !tbaa !52, !alias.scope !493
  %i.agm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2571, <2 x double> %wide.load2574, <2 x double> %wide.load2576)
  %i.agn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2571, <2 x double> %wide.load2575, <2 x double> %wide.load2577)
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %index2573 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 16 ; 2 uses
  %wide.load2578 = load <2 x double>, ptr %i.ago, align 8, !tbaa !52, !alias.scope !494, !noalias !495
  %wide.load2579 = load <2 x double>, ptr %i.agp, align 8, !tbaa !52, !alias.scope !494, !noalias !495
  %i.agq = fadd <2 x double> %i.agm, %wide.load2578
  %i.agr = fadd <2 x double> %i.agn, %wide.load2579
  store <2 x double> %i.agq, ptr %i.ago, align 8, !tbaa !52, !alias.scope !494, !noalias !495
  store <2 x double> %i.agr, ptr %i.agp, align 8, !tbaa !52, !alias.scope !494, !noalias !495
  %index.next2580 = add nuw i64 %index2573, 4     ; 2 uses
  %i.ags = icmp eq i64 %index.next2580, %n.vec2569
  br i1 %i.ags, label %middle.block2581, label %vector.body2572, !llvm.loop !284

middle.block2581:                                 ; preds = %vector.body2572
  %cmp.n2582 = icmp eq i64 %n.vec2569, %wide.trip.count1022
  br i1 %cmp.n2582, label %.loopexit, label %scalar.ph2558.preheader

scalar.ph2558.preheader:                          ; preds = %vector.memcheck2560, %.lr.ph767, %middle.block2581
  %indvars.iv1019.ph = phi i64 [ 0, %vector.memcheck2560 ], [ 0, %.lr.ph767 ], [ %n.vec2569, %middle.block2581 ] ; 6 uses
  %xtraiter2978 = and i64 %wide.trip.count1022, 1
  %lcmp.mod2979.not = icmp eq i64 %xtraiter2978, 0
  br i1 %lcmp.mod2979.not, label %scalar.ph2558.prol.loopexit, label %scalar.ph2558.prol

scalar.ph2558.prol:                               ; preds = %scalar.ph2558.preheader
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1019.ph
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !52
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1019.ph
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !52
  %i.agx = tail call double @llvm.fmuladd.f64(double %1, double %i.agu, double %i.agw)
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv1019.ph ; 2 uses
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !52
  %i.aha = fadd double %i.agx, %i.agz
  store double %i.aha, ptr %i.agy, align 8, !tbaa !52
  %indvars.iv.next1020.prol = or disjoint i64 %indvars.iv1019.ph, 1
  br label %scalar.ph2558.prol.loopexit

scalar.ph2558.prol.loopexit:                      ; preds = %scalar.ph2558.prol, %scalar.ph2558.preheader
  %indvars.iv1019.unr = phi i64 [ %indvars.iv1019.ph, %scalar.ph2558.preheader ], [ %indvars.iv.next1020.prol, %scalar.ph2558.prol ]
  %i.ahb = add nsw i64 %wide.trip.count1022, -1
  %i.ahc = icmp eq i64 %indvars.iv1019.ph, %i.ahb
  br i1 %i.ahc, label %.loopexit, label %scalar.ph2558

scalar.ph2558:                                    ; preds = %scalar.ph2558.prol.loopexit, %scalar.ph2558
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020.1, %scalar.ph2558 ], [ %indvars.iv1019.unr, %scalar.ph2558.prol.loopexit ] ; 5 uses
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1019
  %i.ahe = load double, ptr %i.ahd, align 8, !tbaa !52
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1019
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !52
  %i.ahh = tail call double @llvm.fmuladd.f64(double %1, double %i.ahe, double %i.ahg)
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv1019 ; 2 uses
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !52
  %i.ahk = fadd double %i.ahh, %i.ahj
  store double %i.ahk, ptr %i.ahi, align 8, !tbaa !52
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1 ; 3 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1020
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !52
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1020
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !52
  %i.ahp = tail call double @llvm.fmuladd.f64(double %1, double %i.ahm, double %i.aho)
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv.next1020 ; 2 uses
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !52
  %i.ahs = fadd double %i.ahp, %i.ahr
  store double %i.ahs, ptr %i.ahq, align 8, !tbaa !52
  %indvars.iv.next1020.1 = add nuw nsw i64 %indvars.iv1019, 2 ; 2 uses
  %exitcond1023.not.1 = icmp eq i64 %indvars.iv.next1020.1, %wide.trip.count1022
  br i1 %exitcond1023.not.1, label %.loopexit, label %scalar.ph2558, !llvm.loop !285

bb.bd:                                            ; preds = %bb.bc
  %i.aht = fcmp oeq double %3, -1.000000e+00
  %i.ahu = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.aht, label %.preheader639, label %.preheader641

.preheader641:                                    ; preds = %bb.bd
  br i1 %i.ahu, label %.lr.ph763, label %.loopexit

.lr.ph763:                                        ; preds = %.preheader641
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1012 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2485 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check2485, label %scalar.ph2484.preheader, label %vector.memcheck2486

vector.memcheck2486:                              ; preds = %.lr.ph763
  %i.ahx = shl nuw nsw i64 %wide.trip.count1012, 3 ; 3 uses
  %i.ahy = getelementptr i8, ptr %i.ahw, i64 %i.ahx ; 2 uses
  %i.ahz = getelementptr i8, ptr %.0583, i64 %i.ahx
  %13 = getelementptr i8, ptr %.0579, i64 %i.ahx
  %bound02487.a = icmp ult ptr %i.ahw, %i.ahz
  %bound12488 = icmp ult ptr %.0583, %i.ahy
  %found.conflict2489 = and i1 %bound02487.a, %bound12488
  %bound02490 = icmp ult ptr %i.ahw, %13
  %bound12491 = icmp ult ptr %.0579, %i.ahy
  %found.conflict2492 = and i1 %bound02490, %bound12491
  %conflict.rdx2493 = or i1 %found.conflict2489, %found.conflict2492
  br i1 %conflict.rdx2493, label %scalar.ph2484.preheader, label %vector.ph2494

vector.ph2494:                                    ; preds = %vector.memcheck2486
  %n.vec2495 = and i64 %wide.trip.count1012, 2147483644 ; 3 uses
  %broadcast.splatinsert2496 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2497 = shufflevector <2 x double> %broadcast.splatinsert2496, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2498 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2499 = shufflevector <2 x double> %broadcast.splatinsert2498, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2500

vector.body2500:                                  ; preds = %vector.body2500, %vector.ph2494
  %index2501 = phi i64 [ 0, %vector.ph2494 ], [ %index.next2508, %vector.body2500 ] ; 4 uses
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2501 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %wide.load2502 = load <2 x double>, ptr %i.aia, align 8, !tbaa !52, !alias.scope !496
  %wide.load2503 = load <2 x double>, ptr %i.aib, align 8, !tbaa !52, !alias.scope !496
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2501 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  %wide.load2504 = load <2 x double>, ptr %i.aic, align 8, !tbaa !52, !alias.scope !497
  %wide.load2505 = load <2 x double>, ptr %i.aid, align 8, !tbaa !52, !alias.scope !497
  %i.aie = fmul <2 x double> %broadcast.splat2497, %wide.load2504
  %i.aif = fmul <2 x double> %broadcast.splat2497, %wide.load2505
  %i.aig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2499, <2 x double> %wide.load2502, <2 x double> %i.aie)
  %i.aih = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2499, <2 x double> %wide.load2503, <2 x double> %i.aif)
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %index2501 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16 ; 2 uses
  %wide.load2506 = load <2 x double>, ptr %i.aii, align 8, !tbaa !52, !alias.scope !498, !noalias !499
  %wide.load2507 = load <2 x double>, ptr %i.aij, align 8, !tbaa !52, !alias.scope !498, !noalias !499
  %i.aik = fadd <2 x double> %wide.load2506, %i.aig
  %i.ail = fadd <2 x double> %wide.load2507, %i.aih
  store <2 x double> %i.aik, ptr %i.aii, align 8, !tbaa !52, !alias.scope !498, !noalias !499
  store <2 x double> %i.ail, ptr %i.aij, align 8, !tbaa !52, !alias.scope !498, !noalias !499
  %index.next2508 = add nuw i64 %index2501, 4     ; 2 uses
  %i.aim = icmp eq i64 %index.next2508, %n.vec2495
  br i1 %i.aim, label %middle.block2509, label %vector.body2500, !llvm.loop !290

middle.block2509:                                 ; preds = %vector.body2500
  %cmp.n2510 = icmp eq i64 %n.vec2495, %wide.trip.count1012
  br i1 %cmp.n2510, label %.loopexit, label %scalar.ph2484.preheader

scalar.ph2484.preheader:                          ; preds = %vector.memcheck2486, %.lr.ph763, %middle.block2509
  %indvars.iv1009.ph = phi i64 [ 0, %vector.memcheck2486 ], [ 0, %.lr.ph763 ], [ %n.vec2495, %middle.block2509 ] ; 6 uses
  %xtraiter2972 = and i64 %wide.trip.count1012, 1
  %lcmp.mod2973.not = icmp eq i64 %xtraiter2972, 0
  br i1 %lcmp.mod2973.not, label %scalar.ph2484.prol.loopexit, label %scalar.ph2484.prol

scalar.ph2484.prol:                               ; preds = %scalar.ph2484.preheader
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1009.ph
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !52
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1009.ph
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !52
  %i.air = fmul double %3, %i.aiq
  %i.ais = tail call double @llvm.fmuladd.f64(double %1, double %i.aio, double %i.air)
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv1009.ph ; 2 uses
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !52
  %i.aiv = fadd double %i.aiu, %i.ais
  store double %i.aiv, ptr %i.ait, align 8, !tbaa !52
  %indvars.iv.next1010.prol = or disjoint i64 %indvars.iv1009.ph, 1
  br label %scalar.ph2484.prol.loopexit

scalar.ph2484.prol.loopexit:                      ; preds = %scalar.ph2484.prol, %scalar.ph2484.preheader
  %indvars.iv1009.unr = phi i64 [ %indvars.iv1009.ph, %scalar.ph2484.preheader ], [ %indvars.iv.next1010.prol, %scalar.ph2484.prol ]
  %i.aiw = add nsw i64 %wide.trip.count1012, -1
  %i.aix = icmp eq i64 %indvars.iv1009.ph, %i.aiw
  br i1 %i.aix, label %.loopexit, label %scalar.ph2484

.preheader639:                                    ; preds = %bb.bd
  br i1 %i.ahu, label %.lr.ph765, label %.loopexit

.lr.ph765:                                        ; preds = %.preheader639
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1017 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2523 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2523, label %scalar.ph2522.preheader, label %vector.memcheck2524

vector.memcheck2524:                              ; preds = %.lr.ph765
  %i.aja = shl nuw nsw i64 %wide.trip.count1017, 3 ; 3 uses
  %i.ajb = getelementptr i8, ptr %i.aiz, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr i8, ptr %.0583, i64 %i.aja
  %14 = getelementptr i8, ptr %.0579, i64 %i.aja
  %bound02525.a = icmp ult ptr %i.aiz, %i.ajc
  %bound12526 = icmp ult ptr %.0583, %i.ajb
  %found.conflict2527 = and i1 %bound02525.a, %bound12526
  %bound02528 = icmp ult ptr %i.aiz, %14
  %bound12529 = icmp ult ptr %.0579, %i.ajb
  %found.conflict2530 = and i1 %bound02528, %bound12529
  %conflict.rdx2531 = or i1 %found.conflict2527, %found.conflict2530
  br i1 %conflict.rdx2531, label %scalar.ph2522.preheader, label %vector.ph2532

vector.ph2532:                                    ; preds = %vector.memcheck2524
  %n.vec2533 = and i64 %wide.trip.count1017, 2147483644 ; 3 uses
  %broadcast.splatinsert2534 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2535 = shufflevector <2 x double> %broadcast.splatinsert2534, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2536

vector.body2536:                                  ; preds = %vector.body2536, %vector.ph2532
  %index2537 = phi i64 [ 0, %vector.ph2532 ], [ %index.next2544, %vector.body2536 ] ; 4 uses
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2537 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  %wide.load2538 = load <2 x double>, ptr %i.ajd, align 8, !tbaa !52, !alias.scope !500
  %wide.load2539 = load <2 x double>, ptr %i.aje, align 8, !tbaa !52, !alias.scope !500
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2537 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  %wide.load2540 = load <2 x double>, ptr %i.ajf, align 8, !tbaa !52, !alias.scope !501
  %wide.load2541 = load <2 x double>, ptr %i.ajg, align 8, !tbaa !52, !alias.scope !501
  %i.ajh = fneg <2 x double> %wide.load2540
  %i.aji = fneg <2 x double> %wide.load2541
  %i.ajj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2535, <2 x double> %wide.load2538, <2 x double> %i.ajh)
  %i.ajk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2535, <2 x double> %wide.load2539, <2 x double> %i.aji)
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %index2537 ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16 ; 2 uses
  %wide.load2542 = load <2 x double>, ptr %i.ajl, align 8, !tbaa !52, !alias.scope !502, !noalias !503
  %wide.load2543 = load <2 x double>, ptr %i.ajm, align 8, !tbaa !52, !alias.scope !502, !noalias !503
  %i.ajn = fadd <2 x double> %i.ajj, %wide.load2542
  %i.ajo = fadd <2 x double> %i.ajk, %wide.load2543
  store <2 x double> %i.ajn, ptr %i.ajl, align 8, !tbaa !52, !alias.scope !502, !noalias !503
  store <2 x double> %i.ajo, ptr %i.ajm, align 8, !tbaa !52, !alias.scope !502, !noalias !503
  %index.next2544 = add nuw i64 %index2537, 4     ; 2 uses
  %i.ajp = icmp eq i64 %index.next2544, %n.vec2533
  br i1 %i.ajp, label %middle.block2545, label %vector.body2536, !llvm.loop !295

middle.block2545:                                 ; preds = %vector.body2536
  %cmp.n2546 = icmp eq i64 %n.vec2533, %wide.trip.count1017
  br i1 %cmp.n2546, label %.loopexit, label %scalar.ph2522.preheader

scalar.ph2522.preheader:                          ; preds = %vector.memcheck2524, %.lr.ph765, %middle.block2545
  %indvars.iv1014.ph = phi i64 [ 0, %vector.memcheck2524 ], [ 0, %.lr.ph765 ], [ %n.vec2533, %middle.block2545 ] ; 6 uses
  %xtraiter2975 = and i64 %wide.trip.count1017, 1
  %lcmp.mod2976.not = icmp eq i64 %xtraiter2975, 0
  br i1 %lcmp.mod2976.not, label %scalar.ph2522.prol.loopexit, label %scalar.ph2522.prol

scalar.ph2522.prol:                               ; preds = %scalar.ph2522.preheader
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1014.ph
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !52
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1014.ph
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !52
  %i.aju = fneg double %i.ajt
  %i.ajv = tail call double @llvm.fmuladd.f64(double %1, double %i.ajr, double %i.aju)
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv1014.ph ; 2 uses
  %i.ajx = load double, ptr %i.ajw, align 8, !tbaa !52
  %i.ajy = fadd double %i.ajv, %i.ajx
  store double %i.ajy, ptr %i.ajw, align 8, !tbaa !52
  %indvars.iv.next1015.prol = or disjoint i64 %indvars.iv1014.ph, 1
  br label %scalar.ph2522.prol.loopexit

scalar.ph2522.prol.loopexit:                      ; preds = %scalar.ph2522.prol, %scalar.ph2522.preheader
  %indvars.iv1014.unr = phi i64 [ %indvars.iv1014.ph, %scalar.ph2522.preheader ], [ %indvars.iv.next1015.prol, %scalar.ph2522.prol ]
  %i.ajz = add nsw i64 %wide.trip.count1017, -1
  %i.aka = icmp eq i64 %indvars.iv1014.ph, %i.ajz
  br i1 %i.aka, label %.loopexit, label %scalar.ph2522

scalar.ph2522:                                    ; preds = %scalar.ph2522.prol.loopexit, %scalar.ph2522
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015.1, %scalar.ph2522 ], [ %indvars.iv1014.unr, %scalar.ph2522.prol.loopexit ] ; 5 uses
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1014
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !52
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1014
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !52
  %i.akf = fneg double %i.ake
  %i.akg = tail call double @llvm.fmuladd.f64(double %1, double %i.akc, double %i.akf)
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv1014 ; 2 uses
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !52
  %i.akj = fadd double %i.akg, %i.aki
  store double %i.akj, ptr %i.akh, align 8, !tbaa !52
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 1 ; 3 uses
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1015
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !52
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1015
  %i.akn = load double, ptr %i.akm, align 8, !tbaa !52
  %i.ako = fneg double %i.akn
  %i.akp = tail call double @llvm.fmuladd.f64(double %1, double %i.akl, double %i.ako)
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv.next1015 ; 2 uses
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !52
  %i.aks = fadd double %i.akp, %i.akr
  store double %i.aks, ptr %i.akq, align 8, !tbaa !52
  %indvars.iv.next1015.1 = add nuw nsw i64 %indvars.iv1014, 2 ; 2 uses
  %exitcond1018.not.1 = icmp eq i64 %indvars.iv.next1015.1, %wide.trip.count1017
  br i1 %exitcond1018.not.1, label %.loopexit, label %scalar.ph2522, !llvm.loop !296

scalar.ph2484:                                    ; preds = %scalar.ph2484.prol.loopexit, %scalar.ph2484
  %indvars.iv1009 = phi i64 [ %indvars.iv.next1010.1, %scalar.ph2484 ], [ %indvars.iv1009.unr, %scalar.ph2484.prol.loopexit ] ; 5 uses
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1009
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !52
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1009
  %i.akw = load double, ptr %i.akv, align 8, !tbaa !52
  %i.akx = fmul double %3, %i.akw
  %i.aky = tail call double @llvm.fmuladd.f64(double %1, double %i.aku, double %i.akx)
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv1009 ; 2 uses
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !52
  %i.alb = fadd double %i.ala, %i.aky
  store double %i.alb, ptr %i.akz, align 8, !tbaa !52
  %indvars.iv.next1010 = add nuw nsw i64 %indvars.iv1009, 1 ; 3 uses
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1010
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !52
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1010
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !52
  %i.alg = fmul double %3, %i.alf
  %i.alh = tail call double @llvm.fmuladd.f64(double %1, double %i.ald, double %i.alg)
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv.next1010 ; 2 uses
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !52
  %i.alk = fadd double %i.alj, %i.alh
  store double %i.alk, ptr %i.ali, align 8, !tbaa !52
  %indvars.iv.next1010.1 = add nuw nsw i64 %indvars.iv1009, 2 ; 2 uses
  %exitcond1013.not.1 = icmp eq i64 %indvars.iv.next1010.1, %wide.trip.count1012
  br i1 %exitcond1013.not.1, label %.loopexit, label %scalar.ph2484, !llvm.loop !297

bb.be:                                            ; preds = %.thread596
  %i.all = fcmp oeq double %5, -1.000000e+00
  %i.alm = fcmp oeq double %1, 1.000000e+00       ; 2 uses
  br i1 %i.all, label %bb.bf, label %bb.bv

bb.bf:                                            ; preds = %bb.be
  br i1 %i.alm, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.o, label %.preheader643, label %bb.bh

.preheader643:                                    ; preds = %bb.bg
  %i.aln = icmp sgt i32 %i.e, 0
  br i1 %i.aln, label %.lr.ph761, label %.loopexit

.lr.ph761:                                        ; preds = %.preheader643
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count1007 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2457 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check2457, label %scalar.ph2456.preheader, label %vector.memcheck2458

vector.memcheck2458:                              ; preds = %.lr.ph761
  %i.alq = shl nuw nsw i64 %wide.trip.count1007, 3 ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alp, i64 %i.alq
  %i.als = getelementptr i8, ptr %.0583, i64 %i.alq
  %bound02459 = icmp ult ptr %i.alp, %i.als
  %bound12460 = icmp ult ptr %.0583, %i.alr
  %found.conflict2461 = and i1 %bound02459, %bound12460
  br i1 %found.conflict2461, label %scalar.ph2456.preheader, label %vector.ph2462

vector.ph2462:                                    ; preds = %vector.memcheck2458
  %n.vec2463 = and i64 %wide.trip.count1007, 2147483644 ; 3 uses
  br label %vector.body2464

vector.body2464:                                  ; preds = %vector.body2464, %vector.ph2462
  %index2465 = phi i64 [ 0, %vector.ph2462 ], [ %index.next2470, %vector.body2464 ] ; 3 uses
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2465 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %wide.load2466 = load <2 x double>, ptr %i.alt, align 8, !tbaa !52, !alias.scope !504
  %wide.load2467 = load <2 x double>, ptr %i.alu, align 8, !tbaa !52, !alias.scope !504
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %index2465 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16 ; 2 uses
  %wide.load2468 = load <2 x double>, ptr %i.alv, align 8, !tbaa !52, !alias.scope !505, !noalias !504
  %wide.load2469 = load <2 x double>, ptr %i.alw, align 8, !tbaa !52, !alias.scope !505, !noalias !504
  %i.alx = fsub <2 x double> %wide.load2466, %wide.load2468
  %i.aly = fsub <2 x double> %wide.load2467, %wide.load2469
  store <2 x double> %i.alx, ptr %i.alv, align 8, !tbaa !52, !alias.scope !505, !noalias !504
  store <2 x double> %i.aly, ptr %i.alw, align 8, !tbaa !52, !alias.scope !505, !noalias !504
  %index.next2470 = add nuw i64 %index2465, 4     ; 2 uses
  %i.alz = icmp eq i64 %index.next2470, %n.vec2463
  br i1 %i.alz, label %middle.block2471, label %vector.body2464, !llvm.loop !301

middle.block2471:                                 ; preds = %vector.body2464
  %cmp.n2472 = icmp eq i64 %n.vec2463, %wide.trip.count1007
  br i1 %cmp.n2472, label %.loopexit, label %scalar.ph2456.preheader

scalar.ph2456.preheader:                          ; preds = %vector.memcheck2458, %.lr.ph761, %middle.block2471
  %indvars.iv1004.ph = phi i64 [ 0, %vector.memcheck2458 ], [ 0, %.lr.ph761 ], [ %n.vec2463, %middle.block2471 ] ; 3 uses
  %xtraiter2969 = and i64 %wide.trip.count1007, 3 ; 2 uses
  %lcmp.mod2970.not = icmp eq i64 %xtraiter2969, 0
  br i1 %lcmp.mod2970.not, label %scalar.ph2456.prol.loopexit, label %scalar.ph2456.prol

scalar.ph2456.prol:                               ; preds = %scalar.ph2456.preheader, %scalar.ph2456.prol
  %indvars.iv1004.prol = phi i64 [ %indvars.iv.next1005.prol, %scalar.ph2456.prol ], [ %indvars.iv1004.ph, %scalar.ph2456.preheader ] ; 3 uses
  %prol.iter2971 = phi i64 [ %prol.iter2971.next, %scalar.ph2456.prol ], [ 0, %scalar.ph2456.preheader ]
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1004.prol
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !52
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %indvars.iv1004.prol ; 2 uses
  %i.amd = load double, ptr %i.amc, align 8, !tbaa !52
  %i.ame = fsub double %i.amb, %i.amd
  store double %i.ame, ptr %i.amc, align 8, !tbaa !52
  %indvars.iv.next1005.prol = add nuw nsw i64 %indvars.iv1004.prol, 1 ; 2 uses
  %prol.iter2971.next = add i64 %prol.iter2971, 1 ; 2 uses
  %prol.iter2971.cmp.not = icmp eq i64 %prol.iter2971.next, %xtraiter2969
  br i1 %prol.iter2971.cmp.not, label %scalar.ph2456.prol.loopexit, label %scalar.ph2456.prol, !llvm.loop !302

scalar.ph2456.prol.loopexit:                      ; preds = %scalar.ph2456.prol, %scalar.ph2456.preheader
  %indvars.iv1004.unr = phi i64 [ %indvars.iv1004.ph, %scalar.ph2456.preheader ], [ %indvars.iv.next1005.prol, %scalar.ph2456.prol ]
  %i.amf = sub nsw i64 %indvars.iv1004.ph, %wide.trip.count1007
  %i.amg = icmp ugt i64 %i.amf, -4
  br i1 %i.amg, label %.loopexit, label %scalar.ph2456

scalar.ph2456:                                    ; preds = %scalar.ph2456.prol.loopexit, %scalar.ph2456
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005.3, %scalar.ph2456 ], [ %indvars.iv1004.unr, %scalar.ph2456.prol.loopexit ] ; 6 uses
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1004
  %i.ami = load double, ptr %i.amh, align 8, !tbaa !52
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %indvars.iv1004 ; 2 uses
  %i.amk = load double, ptr %i.amj, align 8, !tbaa !52
  %i.aml = fsub double %i.ami, %i.amk
  store double %i.aml, ptr %i.amj, align 8, !tbaa !52
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 1 ; 2 uses
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1005
  %i.amn = load double, ptr %i.amm, align 8, !tbaa !52
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %indvars.iv.next1005 ; 2 uses
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !52
  %i.amq = fsub double %i.amn, %i.amp
  store double %i.amq, ptr %i.amo, align 8, !tbaa !52
  %indvars.iv.next1005.1 = add nuw nsw i64 %indvars.iv1004, 2 ; 2 uses
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1005.1
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !52
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %indvars.iv.next1005.1 ; 2 uses
  %i.amu = load double, ptr %i.amt, align 8, !tbaa !52
  %i.amv = fsub double %i.ams, %i.amu
  store double %i.amv, ptr %i.amt, align 8, !tbaa !52
  %indvars.iv.next1005.2 = add nuw nsw i64 %indvars.iv1004, 3 ; 2 uses
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1005.2
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !52
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %indvars.iv.next1005.2 ; 2 uses
  %i.amz = load double, ptr %i.amy, align 8, !tbaa !52
  %i.ana = fsub double %i.amx, %i.amz
  store double %i.ana, ptr %i.amy, align 8, !tbaa !52
  %indvars.iv.next1005.3 = add nuw nsw i64 %indvars.iv1004, 4 ; 2 uses
  %exitcond1008.not.3 = icmp eq i64 %indvars.iv.next1005.3, %wide.trip.count1007
  br i1 %exitcond1008.not.3, label %.loopexit, label %scalar.ph2456, !llvm.loop !303

bb.bh:                                            ; preds = %bb.bg
  %i.anb = fcmp oeq double %3, 1.000000e+00
  br i1 %i.anb, label %.preheader645, label %bb.bi

.preheader645:                                    ; preds = %bb.bh
  %i.anc = icmp sgt i32 %i.e, 0
  br i1 %i.anc, label %.lr.ph759, label %.loopexit

.lr.ph759:                                        ; preds = %.preheader645
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1002 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2428 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2428, label %scalar.ph2427.preheader, label %vector.memcheck2429

vector.memcheck2429:                              ; preds = %.lr.ph759
  %i.anf = shl nuw nsw i64 %wide.trip.count1002, 3 ; 3 uses
  %i.ang = getelementptr i8, ptr %i.ane, i64 %i.anf ; 2 uses
  %i.anh = getelementptr i8, ptr %.0583, i64 %i.anf
  %15 = getelementptr i8, ptr %.0579, i64 %i.anf
  %bound02430.a = icmp ult ptr %i.ane, %i.anh
  %bound12431 = icmp ult ptr %.0583, %i.ang
  %found.conflict2432 = and i1 %bound02430.a, %bound12431
  %bound02433 = icmp ult ptr %i.ane, %15
  %bound12434 = icmp ult ptr %.0579, %i.ang
  %found.conflict2435 = and i1 %bound02433, %bound12434
  %conflict.rdx2436 = or i1 %found.conflict2432, %found.conflict2435
  br i1 %conflict.rdx2436, label %scalar.ph2427.preheader, label %vector.ph2437

vector.ph2437:                                    ; preds = %vector.memcheck2429
  %n.vec2438 = and i64 %wide.trip.count1002, 2147483644 ; 3 uses
  br label %vector.body2439

vector.body2439:                                  ; preds = %vector.body2439, %vector.ph2437
  %index2440 = phi i64 [ 0, %vector.ph2437 ], [ %index.next2447, %vector.body2439 ] ; 4 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2440 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  %wide.load2441 = load <2 x double>, ptr %i.ani, align 8, !tbaa !52, !alias.scope !506
  %wide.load2442 = load <2 x double>, ptr %i.anj, align 8, !tbaa !52, !alias.scope !506
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2440 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %wide.load2443 = load <2 x double>, ptr %i.ank, align 8, !tbaa !52, !alias.scope !507
  %wide.load2444 = load <2 x double>, ptr %i.anl, align 8, !tbaa !52, !alias.scope !507
  %i.anm = fadd <2 x double> %wide.load2441, %wide.load2443
  %i.ann = fadd <2 x double> %wide.load2442, %wide.load2444
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.ane, i64 %index2440 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16 ; 2 uses
  %wide.load2445 = load <2 x double>, ptr %i.ano, align 8, !tbaa !52, !alias.scope !508, !noalias !509
  %wide.load2446 = load <2 x double>, ptr %i.anp, align 8, !tbaa !52, !alias.scope !508, !noalias !509
  %i.anq = fsub <2 x double> %i.anm, %wide.load2445
  %i.anr = fsub <2 x double> %i.ann, %wide.load2446
  store <2 x double> %i.anq, ptr %i.ano, align 8, !tbaa !52, !alias.scope !508, !noalias !509
  store <2 x double> %i.anr, ptr %i.anp, align 8, !tbaa !52, !alias.scope !508, !noalias !509
  %index.next2447 = add nuw i64 %index2440, 4     ; 2 uses
  %i.ans = icmp eq i64 %index.next2447, %n.vec2438
  br i1 %i.ans, label %middle.block2448, label %vector.body2439, !llvm.loop !308

middle.block2448:                                 ; preds = %vector.body2439
  %cmp.n2449 = icmp eq i64 %n.vec2438, %wide.trip.count1002
  br i1 %cmp.n2449, label %.loopexit, label %scalar.ph2427.preheader

scalar.ph2427.preheader:                          ; preds = %vector.memcheck2429, %.lr.ph759, %middle.block2448
  %indvars.iv999.ph = phi i64 [ 0, %vector.memcheck2429 ], [ 0, %.lr.ph759 ], [ %n.vec2438, %middle.block2448 ] ; 6 uses
  %xtraiter2966 = and i64 %wide.trip.count1002, 1
  %lcmp.mod2967.not = icmp eq i64 %xtraiter2966, 0
  br i1 %lcmp.mod2967.not, label %scalar.ph2427.prol.loopexit, label %scalar.ph2427.prol

scalar.ph2427.prol:                               ; preds = %scalar.ph2427.preheader
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv999.ph
  %i.anu = load double, ptr %i.ant, align 8, !tbaa !52
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv999.ph
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !52
  %i.anx = fadd double %i.anu, %i.anw
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.ane, i64 %indvars.iv999.ph ; 2 uses
  %i.anz = load double, ptr %i.any, align 8, !tbaa !52
  %i.aoa = fsub double %i.anx, %i.anz
  store double %i.aoa, ptr %i.any, align 8, !tbaa !52
  %indvars.iv.next1000.prol = or disjoint i64 %indvars.iv999.ph, 1
  br label %scalar.ph2427.prol.loopexit

scalar.ph2427.prol.loopexit:                      ; preds = %scalar.ph2427.prol, %scalar.ph2427.preheader
  %indvars.iv999.unr = phi i64 [ %indvars.iv999.ph, %scalar.ph2427.preheader ], [ %indvars.iv.next1000.prol, %scalar.ph2427.prol ]
  %i.aob = add nsw i64 %wide.trip.count1002, -1
  %i.aoc = icmp eq i64 %indvars.iv999.ph, %i.aob
  br i1 %i.aoc, label %.loopexit, label %scalar.ph2427

scalar.ph2427:                                    ; preds = %scalar.ph2427.prol.loopexit, %scalar.ph2427
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000.1, %scalar.ph2427 ], [ %indvars.iv999.unr, %scalar.ph2427.prol.loopexit ] ; 5 uses
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv999
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !52
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv999
  %i.aog = load double, ptr %i.aof, align 8, !tbaa !52
  %i.aoh = fadd double %i.aoe, %i.aog
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.ane, i64 %indvars.iv999 ; 2 uses
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !52
  %i.aok = fsub double %i.aoh, %i.aoj
  store double %i.aok, ptr %i.aoi, align 8, !tbaa !52
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1 ; 3 uses
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1000
  %i.aom = load double, ptr %i.aol, align 8, !tbaa !52
  %i.aon = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1000
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !52
  %i.aop = fadd double %i.aom, %i.aoo
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.ane, i64 %indvars.iv.next1000 ; 2 uses
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !52
  %i.aos = fsub double %i.aop, %i.aor
  store double %i.aos, ptr %i.aoq, align 8, !tbaa !52
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv999, 2 ; 2 uses
  %exitcond1003.not.1 = icmp eq i64 %indvars.iv.next1000.1, %wide.trip.count1002
  br i1 %exitcond1003.not.1, label %.loopexit, label %scalar.ph2427, !llvm.loop !309

bb.bi:                                            ; preds = %bb.bh
  %i.aot = fcmp oeq double %3, -1.000000e+00
  %i.aou = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.aot, label %.preheader647, label %.preheader649

.preheader649:                                    ; preds = %bb.bi
  br i1 %i.aou, label %.lr.ph755, label %.loopexit

.lr.ph755:                                        ; preds = %.preheader649
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count992 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2358 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2358, label %scalar.ph2357.preheader, label %vector.memcheck2359

vector.memcheck2359:                              ; preds = %.lr.ph755
  %i.aox = shl nuw nsw i64 %wide.trip.count992, 3 ; 3 uses
  %i.aoy = getelementptr i8, ptr %i.aow, i64 %i.aox ; 2 uses
  %i.aoz = getelementptr i8, ptr %.0583, i64 %i.aox
  %16 = getelementptr i8, ptr %.0579, i64 %i.aox
  %bound02360.a = icmp ult ptr %i.aow, %i.aoz
  %bound12361 = icmp ult ptr %.0583, %i.aoy
  %found.conflict2362 = and i1 %bound02360.a, %bound12361
  %bound02363 = icmp ult ptr %i.aow, %16
  %bound12364 = icmp ult ptr %.0579, %i.aoy
  %found.conflict2365 = and i1 %bound02363, %bound12364
  %conflict.rdx2366 = or i1 %found.conflict2362, %found.conflict2365
  br i1 %conflict.rdx2366, label %scalar.ph2357.preheader, label %vector.ph2367

vector.ph2367:                                    ; preds = %vector.memcheck2359
  %n.vec2368 = and i64 %wide.trip.count992, 2147483644 ; 3 uses
  %broadcast.splatinsert2369 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2370 = shufflevector <2 x double> %broadcast.splatinsert2369, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2371

vector.body2371:                                  ; preds = %vector.body2371, %vector.ph2367
  %index2372 = phi i64 [ 0, %vector.ph2367 ], [ %index.next2379, %vector.body2371 ] ; 4 uses
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2372 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 16
  %wide.load2373 = load <2 x double>, ptr %i.apa, align 8, !tbaa !52, !alias.scope !510
  %wide.load2374 = load <2 x double>, ptr %i.apb, align 8, !tbaa !52, !alias.scope !510
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2372 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  %wide.load2375 = load <2 x double>, ptr %i.apc, align 8, !tbaa !52, !alias.scope !511
  %wide.load2376 = load <2 x double>, ptr %i.apd, align 8, !tbaa !52, !alias.scope !511
  %i.ape = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2370, <2 x double> %wide.load2375, <2 x double> %wide.load2373)
  %i.apf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2370, <2 x double> %wide.load2376, <2 x double> %wide.load2374)
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %index2372 ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 16 ; 2 uses
  %wide.load2377 = load <2 x double>, ptr %i.apg, align 8, !tbaa !52, !alias.scope !512, !noalias !513
  %wide.load2378 = load <2 x double>, ptr %i.aph, align 8, !tbaa !52, !alias.scope !512, !noalias !513
  %i.api = fsub <2 x double> %i.ape, %wide.load2377
  %i.apj = fsub <2 x double> %i.apf, %wide.load2378
  store <2 x double> %i.api, ptr %i.apg, align 8, !tbaa !52, !alias.scope !512, !noalias !513
  store <2 x double> %i.apj, ptr %i.aph, align 8, !tbaa !52, !alias.scope !512, !noalias !513
  %index.next2379 = add nuw i64 %index2372, 4     ; 2 uses
  %i.apk = icmp eq i64 %index.next2379, %n.vec2368
  br i1 %i.apk, label %middle.block2380, label %vector.body2371, !llvm.loop !314

middle.block2380:                                 ; preds = %vector.body2371
  %cmp.n2381 = icmp eq i64 %n.vec2368, %wide.trip.count992
  br i1 %cmp.n2381, label %.loopexit, label %scalar.ph2357.preheader

scalar.ph2357.preheader:                          ; preds = %vector.memcheck2359, %.lr.ph755, %middle.block2380
  %indvars.iv989.ph = phi i64 [ 0, %vector.memcheck2359 ], [ 0, %.lr.ph755 ], [ %n.vec2368, %middle.block2380 ] ; 6 uses
  %xtraiter2960 = and i64 %wide.trip.count992, 1
  %lcmp.mod2961.not = icmp eq i64 %xtraiter2960, 0
  br i1 %lcmp.mod2961.not, label %scalar.ph2357.prol.loopexit, label %scalar.ph2357.prol

scalar.ph2357.prol:                               ; preds = %scalar.ph2357.preheader
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv989.ph
  %i.apm = load double, ptr %i.apl, align 8, !tbaa !52
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv989.ph
  %i.apo = load double, ptr %i.apn, align 8, !tbaa !52
  %i.app = tail call double @llvm.fmuladd.f64(double %3, double %i.apo, double %i.apm)
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %indvars.iv989.ph ; 2 uses
  %i.apr = load double, ptr %i.apq, align 8, !tbaa !52
  %i.aps = fsub double %i.app, %i.apr
  store double %i.aps, ptr %i.apq, align 8, !tbaa !52
  %indvars.iv.next990.prol = or disjoint i64 %indvars.iv989.ph, 1
  br label %scalar.ph2357.prol.loopexit

scalar.ph2357.prol.loopexit:                      ; preds = %scalar.ph2357.prol, %scalar.ph2357.preheader
  %indvars.iv989.unr = phi i64 [ %indvars.iv989.ph, %scalar.ph2357.preheader ], [ %indvars.iv.next990.prol, %scalar.ph2357.prol ]
  %i.apt = add nsw i64 %wide.trip.count992, -1
  %i.apu = icmp eq i64 %indvars.iv989.ph, %i.apt
  br i1 %i.apu, label %.loopexit, label %scalar.ph2357

.preheader647:                                    ; preds = %bb.bi
  br i1 %i.aou, label %.lr.ph757, label %.loopexit

.lr.ph757:                                        ; preds = %.preheader647
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count997 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2394 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2394, label %scalar.ph2393.preheader, label %vector.memcheck2395

vector.memcheck2395:                              ; preds = %.lr.ph757
  %i.apx = shl nuw nsw i64 %wide.trip.count997, 3 ; 3 uses
  %i.apy = getelementptr i8, ptr %i.apw, i64 %i.apx ; 2 uses
  %i.apz = getelementptr i8, ptr %.0583, i64 %i.apx
  %17 = getelementptr i8, ptr %.0579, i64 %i.apx
  %bound02396.a = icmp ult ptr %i.apw, %i.apz
  %bound12397 = icmp ult ptr %.0583, %i.apy
  %found.conflict2398 = and i1 %bound02396.a, %bound12397
  %bound02399 = icmp ult ptr %i.apw, %17
  %bound12400 = icmp ult ptr %.0579, %i.apy
  %found.conflict2401 = and i1 %bound02399, %bound12400
  %conflict.rdx2402 = or i1 %found.conflict2398, %found.conflict2401
  br i1 %conflict.rdx2402, label %scalar.ph2393.preheader, label %vector.ph2403

vector.ph2403:                                    ; preds = %vector.memcheck2395
  %n.vec2404 = and i64 %wide.trip.count997, 2147483644 ; 3 uses
  br label %vector.body2405

vector.body2405:                                  ; preds = %vector.body2405, %vector.ph2403
  %index2406 = phi i64 [ 0, %vector.ph2403 ], [ %index.next2413, %vector.body2405 ] ; 4 uses
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2406 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  %wide.load2407 = load <2 x double>, ptr %i.aqa, align 8, !tbaa !52, !alias.scope !514
  %wide.load2408 = load <2 x double>, ptr %i.aqb, align 8, !tbaa !52, !alias.scope !514
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2406 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %wide.load2409 = load <2 x double>, ptr %i.aqc, align 8, !tbaa !52, !alias.scope !515
  %wide.load2410 = load <2 x double>, ptr %i.aqd, align 8, !tbaa !52, !alias.scope !515
  %i.aqe = fsub <2 x double> %wide.load2407, %wide.load2409
  %i.aqf = fsub <2 x double> %wide.load2408, %wide.load2410
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %index2406 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16 ; 2 uses
  %wide.load2411 = load <2 x double>, ptr %i.aqg, align 8, !tbaa !52, !alias.scope !516, !noalias !517
  %wide.load2412 = load <2 x double>, ptr %i.aqh, align 8, !tbaa !52, !alias.scope !516, !noalias !517
  %i.aqi = fsub <2 x double> %i.aqe, %wide.load2411
  %i.aqj = fsub <2 x double> %i.aqf, %wide.load2412
  store <2 x double> %i.aqi, ptr %i.aqg, align 8, !tbaa !52, !alias.scope !516, !noalias !517
  store <2 x double> %i.aqj, ptr %i.aqh, align 8, !tbaa !52, !alias.scope !516, !noalias !517
  %index.next2413 = add nuw i64 %index2406, 4     ; 2 uses
  %i.aqk = icmp eq i64 %index.next2413, %n.vec2404
  br i1 %i.aqk, label %middle.block2414, label %vector.body2405, !llvm.loop !319

middle.block2414:                                 ; preds = %vector.body2405
  %cmp.n2415 = icmp eq i64 %n.vec2404, %wide.trip.count997
  br i1 %cmp.n2415, label %.loopexit, label %scalar.ph2393.preheader

scalar.ph2393.preheader:                          ; preds = %vector.memcheck2395, %.lr.ph757, %middle.block2414
  %indvars.iv994.ph = phi i64 [ 0, %vector.memcheck2395 ], [ 0, %.lr.ph757 ], [ %n.vec2404, %middle.block2414 ] ; 6 uses
  %xtraiter2963 = and i64 %wide.trip.count997, 1
  %lcmp.mod2964.not = icmp eq i64 %xtraiter2963, 0
  br i1 %lcmp.mod2964.not, label %scalar.ph2393.prol.loopexit, label %scalar.ph2393.prol

scalar.ph2393.prol:                               ; preds = %scalar.ph2393.preheader
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv994.ph
  %i.aqm = load double, ptr %i.aql, align 8, !tbaa !52
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv994.ph
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !52
  %i.aqp = fsub double %i.aqm, %i.aqo
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv994.ph ; 2 uses
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !52
  %i.aqs = fsub double %i.aqp, %i.aqr
  store double %i.aqs, ptr %i.aqq, align 8, !tbaa !52
  %indvars.iv.next995.prol = or disjoint i64 %indvars.iv994.ph, 1
  br label %scalar.ph2393.prol.loopexit

scalar.ph2393.prol.loopexit:                      ; preds = %scalar.ph2393.prol, %scalar.ph2393.preheader
  %indvars.iv994.unr = phi i64 [ %indvars.iv994.ph, %scalar.ph2393.preheader ], [ %indvars.iv.next995.prol, %scalar.ph2393.prol ]
  %i.aqt = add nsw i64 %wide.trip.count997, -1
  %i.aqu = icmp eq i64 %indvars.iv994.ph, %i.aqt
  br i1 %i.aqu, label %.loopexit, label %scalar.ph2393

scalar.ph2393:                                    ; preds = %scalar.ph2393.prol.loopexit, %scalar.ph2393
  %indvars.iv994 = phi i64 [ %indvars.iv.next995.1, %scalar.ph2393 ], [ %indvars.iv994.unr, %scalar.ph2393.prol.loopexit ] ; 5 uses
  %i.aqv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv994
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !52
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv994
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !52
  %i.aqz = fsub double %i.aqw, %i.aqy
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv994 ; 2 uses
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !52
  %i.arc = fsub double %i.aqz, %i.arb
  store double %i.arc, ptr %i.ara, align 8, !tbaa !52
  %indvars.iv.next995 = add nuw nsw i64 %indvars.iv994, 1 ; 3 uses
  %i.ard = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next995
  %i.are = load double, ptr %i.ard, align 8, !tbaa !52
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next995
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !52
  %i.arh = fsub double %i.are, %i.arg
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv.next995 ; 2 uses
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !52
  %i.ark = fsub double %i.arh, %i.arj
  store double %i.ark, ptr %i.ari, align 8, !tbaa !52
  %indvars.iv.next995.1 = add nuw nsw i64 %indvars.iv994, 2 ; 2 uses
  %exitcond998.not.1 = icmp eq i64 %indvars.iv.next995.1, %wide.trip.count997
  br i1 %exitcond998.not.1, label %.loopexit, label %scalar.ph2393, !llvm.loop !320

scalar.ph2357:                                    ; preds = %scalar.ph2357.prol.loopexit, %scalar.ph2357
  %indvars.iv989 = phi i64 [ %indvars.iv.next990.1, %scalar.ph2357 ], [ %indvars.iv989.unr, %scalar.ph2357.prol.loopexit ] ; 5 uses
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv989
  %i.arm = load double, ptr %i.arl, align 8, !tbaa !52
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv989
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !52
  %i.arp = tail call double @llvm.fmuladd.f64(double %3, double %i.aro, double %i.arm)
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %indvars.iv989 ; 2 uses
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !52
  %i.ars = fsub double %i.arp, %i.arr
  store double %i.ars, ptr %i.arq, align 8, !tbaa !52
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 1 ; 3 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next990
  %i.aru = load double, ptr %i.art, align 8, !tbaa !52
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next990
  %i.arw = load double, ptr %i.arv, align 8, !tbaa !52
  %i.arx = tail call double @llvm.fmuladd.f64(double %3, double %i.arw, double %i.aru)
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %indvars.iv.next990 ; 2 uses
  %i.arz = load double, ptr %i.ary, align 8, !tbaa !52
  %i.asa = fsub double %i.arx, %i.arz
  store double %i.asa, ptr %i.ary, align 8, !tbaa !52
  %indvars.iv.next990.1 = add nuw nsw i64 %indvars.iv989, 2 ; 2 uses
  %exitcond993.not.1 = icmp eq i64 %indvars.iv.next990.1, %wide.trip.count992
  br i1 %exitcond993.not.1, label %.loopexit, label %scalar.ph2357, !llvm.loop !321

bb.bj:                                            ; preds = %bb.bf
  %i.asb = fcmp oeq double %1, -1.000000e+00
  br i1 %i.asb, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.o, label %.preheader651, label %bb.bl

.preheader651:                                    ; preds = %bb.bk
  %i.asc = icmp sgt i32 %i.e, 0
  br i1 %i.asc, label %.lr.ph753, label %.loopexit

.lr.ph753:                                        ; preds = %.preheader651
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count987 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2330 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check2330, label %scalar.ph2329.preheader, label %vector.memcheck2331

vector.memcheck2331:                              ; preds = %.lr.ph753
  %i.asf = shl nuw nsw i64 %wide.trip.count987, 3 ; 2 uses
  %i.asg = getelementptr i8, ptr %i.ase, i64 %i.asf
  %i.ash = getelementptr i8, ptr %.0583, i64 %i.asf
  %bound02332 = icmp ult ptr %i.ase, %i.ash
  %bound12333 = icmp ult ptr %.0583, %i.asg
  %found.conflict2334 = and i1 %bound02332, %bound12333
  br i1 %found.conflict2334, label %scalar.ph2329.preheader, label %vector.ph2335

vector.ph2335:                                    ; preds = %vector.memcheck2331
  %n.vec2336 = and i64 %wide.trip.count987, 2147483644 ; 3 uses
  br label %vector.body2337

vector.body2337:                                  ; preds = %vector.body2337, %vector.ph2335
  %index2338 = phi i64 [ 0, %vector.ph2335 ], [ %index.next2343, %vector.body2337 ] ; 3 uses
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2338 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %wide.load2339 = load <2 x double>, ptr %i.asi, align 8, !tbaa !52, !alias.scope !518
  %wide.load2340 = load <2 x double>, ptr %i.asj, align 8, !tbaa !52, !alias.scope !518
  %i.ask = fneg <2 x double> %wide.load2339
  %i.asl = fneg <2 x double> %wide.load2340
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %index2338 ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 16 ; 2 uses
  %wide.load2341 = load <2 x double>, ptr %i.asm, align 8, !tbaa !52, !alias.scope !519, !noalias !518
  %wide.load2342 = load <2 x double>, ptr %i.asn, align 8, !tbaa !52, !alias.scope !519, !noalias !518
  %i.aso = fsub <2 x double> %i.ask, %wide.load2341
  %i.asp = fsub <2 x double> %i.asl, %wide.load2342
  store <2 x double> %i.aso, ptr %i.asm, align 8, !tbaa !52, !alias.scope !519, !noalias !518
  store <2 x double> %i.asp, ptr %i.asn, align 8, !tbaa !52, !alias.scope !519, !noalias !518
  %index.next2343 = add nuw i64 %index2338, 4     ; 2 uses
  %i.asq = icmp eq i64 %index.next2343, %n.vec2336
  br i1 %i.asq, label %middle.block2344, label %vector.body2337, !llvm.loop !325

middle.block2344:                                 ; preds = %vector.body2337
  %cmp.n2345 = icmp eq i64 %n.vec2336, %wide.trip.count987
  br i1 %cmp.n2345, label %.loopexit, label %scalar.ph2329.preheader

scalar.ph2329.preheader:                          ; preds = %vector.memcheck2331, %.lr.ph753, %middle.block2344
  %indvars.iv984.ph = phi i64 [ 0, %vector.memcheck2331 ], [ 0, %.lr.ph753 ], [ %n.vec2336, %middle.block2344 ] ; 5 uses
  %xtraiter2957 = and i64 %wide.trip.count987, 1
  %lcmp.mod2958.not = icmp eq i64 %xtraiter2957, 0
  br i1 %lcmp.mod2958.not, label %scalar.ph2329.prol.loopexit, label %scalar.ph2329.prol

scalar.ph2329.prol:                               ; preds = %scalar.ph2329.preheader
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv984.ph
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !52
  %i.ast = fneg double %i.ass
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %indvars.iv984.ph ; 2 uses
  %i.asv = load double, ptr %i.asu, align 8, !tbaa !52
  %i.asw = fsub double %i.ast, %i.asv
  store double %i.asw, ptr %i.asu, align 8, !tbaa !52
  %indvars.iv.next985.prol = or disjoint i64 %indvars.iv984.ph, 1
  br label %scalar.ph2329.prol.loopexit

scalar.ph2329.prol.loopexit:                      ; preds = %scalar.ph2329.prol, %scalar.ph2329.preheader
  %indvars.iv984.unr = phi i64 [ %indvars.iv984.ph, %scalar.ph2329.preheader ], [ %indvars.iv.next985.prol, %scalar.ph2329.prol ]
  %i.asx = add nsw i64 %wide.trip.count987, -1
  %i.asy = icmp eq i64 %indvars.iv984.ph, %i.asx
  br i1 %i.asy, label %.loopexit, label %scalar.ph2329

scalar.ph2329:                                    ; preds = %scalar.ph2329.prol.loopexit, %scalar.ph2329
  %indvars.iv984 = phi i64 [ %indvars.iv.next985.1, %scalar.ph2329 ], [ %indvars.iv984.unr, %scalar.ph2329.prol.loopexit ] ; 4 uses
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv984
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !52
  %i.atb = fneg double %i.ata
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %indvars.iv984 ; 2 uses
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !52
  %i.ate = fsub double %i.atb, %i.atd
  store double %i.ate, ptr %i.atc, align 8, !tbaa !52
  %indvars.iv.next985 = add nuw nsw i64 %indvars.iv984, 1 ; 2 uses
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next985
  %i.atg = load double, ptr %i.atf, align 8, !tbaa !52
  %i.ath = fneg double %i.atg
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.ase, i64 %indvars.iv.next985 ; 2 uses
  %i.atj = load double, ptr %i.ati, align 8, !tbaa !52
  %i.atk = fsub double %i.ath, %i.atj
  store double %i.atk, ptr %i.ati, align 8, !tbaa !52
  %indvars.iv.next985.1 = add nuw nsw i64 %indvars.iv984, 2 ; 2 uses
  %exitcond988.not.1 = icmp eq i64 %indvars.iv.next985.1, %wide.trip.count987
  br i1 %exitcond988.not.1, label %.loopexit, label %scalar.ph2329, !llvm.loop !326

bb.bl:                                            ; preds = %bb.bk
  %i.atl = fcmp oeq double %3, 1.000000e+00
  br i1 %i.atl, label %.preheader653, label %bb.bm

.preheader653:                                    ; preds = %bb.bl
  %i.atm = icmp sgt i32 %i.e, 0
  br i1 %i.atm, label %.lr.ph751, label %.loopexit

.lr.ph751:                                        ; preds = %.preheader653
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count982 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2301 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2301, label %scalar.ph2300.preheader, label %vector.memcheck2302

vector.memcheck2302:                              ; preds = %.lr.ph751
  %i.atp = shl nuw nsw i64 %wide.trip.count982, 3 ; 3 uses
  %i.atq = getelementptr i8, ptr %i.ato, i64 %i.atp ; 2 uses
  %i.atr = getelementptr i8, ptr %.0583, i64 %i.atp
  %18 = getelementptr i8, ptr %.0579, i64 %i.atp
  %bound02303.a = icmp ult ptr %i.ato, %i.atr
  %bound12304 = icmp ult ptr %.0583, %i.atq
  %found.conflict2305 = and i1 %bound02303.a, %bound12304
  %bound02306 = icmp ult ptr %i.ato, %18
  %bound12307 = icmp ult ptr %.0579, %i.atq
  %found.conflict2308 = and i1 %bound02306, %bound12307
  %conflict.rdx2309 = or i1 %found.conflict2305, %found.conflict2308
  br i1 %conflict.rdx2309, label %scalar.ph2300.preheader, label %vector.ph2310

vector.ph2310:                                    ; preds = %vector.memcheck2302
  %n.vec2311 = and i64 %wide.trip.count982, 2147483644 ; 3 uses
  br label %vector.body2312

vector.body2312:                                  ; preds = %vector.body2312, %vector.ph2310
  %index2313 = phi i64 [ 0, %vector.ph2310 ], [ %index.next2320, %vector.body2312 ] ; 4 uses
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2313 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %wide.load2314 = load <2 x double>, ptr %i.ats, align 8, !tbaa !52, !alias.scope !520
  %wide.load2315 = load <2 x double>, ptr %i.att, align 8, !tbaa !52, !alias.scope !520
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2313 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %wide.load2316 = load <2 x double>, ptr %i.atu, align 8, !tbaa !52, !alias.scope !521
  %wide.load2317 = load <2 x double>, ptr %i.atv, align 8, !tbaa !52, !alias.scope !521
  %i.atw = fsub <2 x double> %wide.load2316, %wide.load2314
  %i.atx = fsub <2 x double> %wide.load2317, %wide.load2315
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %index2313 ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 16 ; 2 uses
  %wide.load2318 = load <2 x double>, ptr %i.aty, align 8, !tbaa !52, !alias.scope !522, !noalias !523
  %wide.load2319 = load <2 x double>, ptr %i.atz, align 8, !tbaa !52, !alias.scope !522, !noalias !523
  %i.aua = fsub <2 x double> %i.atw, %wide.load2318
  %i.aub = fsub <2 x double> %i.atx, %wide.load2319
  store <2 x double> %i.aua, ptr %i.aty, align 8, !tbaa !52, !alias.scope !522, !noalias !523
  store <2 x double> %i.aub, ptr %i.atz, align 8, !tbaa !52, !alias.scope !522, !noalias !523
  %index.next2320 = add nuw i64 %index2313, 4     ; 2 uses
  %i.auc = icmp eq i64 %index.next2320, %n.vec2311
  br i1 %i.auc, label %middle.block2321, label %vector.body2312, !llvm.loop !331

middle.block2321:                                 ; preds = %vector.body2312
  %cmp.n2322 = icmp eq i64 %n.vec2311, %wide.trip.count982
  br i1 %cmp.n2322, label %.loopexit, label %scalar.ph2300.preheader

scalar.ph2300.preheader:                          ; preds = %vector.memcheck2302, %.lr.ph751, %middle.block2321
  %indvars.iv979.ph = phi i64 [ 0, %vector.memcheck2302 ], [ 0, %.lr.ph751 ], [ %n.vec2311, %middle.block2321 ] ; 6 uses
  %xtraiter2954 = and i64 %wide.trip.count982, 1
  %lcmp.mod2955.not = icmp eq i64 %xtraiter2954, 0
  br i1 %lcmp.mod2955.not, label %scalar.ph2300.prol.loopexit, label %scalar.ph2300.prol

scalar.ph2300.prol:                               ; preds = %scalar.ph2300.preheader
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv979.ph
  %i.aue = load double, ptr %i.aud, align 8, !tbaa !52
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv979.ph
  %i.aug = load double, ptr %i.auf, align 8, !tbaa !52
  %i.auh = fsub double %i.aug, %i.aue
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv979.ph ; 2 uses
  %i.auj = load double, ptr %i.aui, align 8, !tbaa !52
  %i.auk = fsub double %i.auh, %i.auj
  store double %i.auk, ptr %i.aui, align 8, !tbaa !52
  %indvars.iv.next980.prol = or disjoint i64 %indvars.iv979.ph, 1
  br label %scalar.ph2300.prol.loopexit

scalar.ph2300.prol.loopexit:                      ; preds = %scalar.ph2300.prol, %scalar.ph2300.preheader
  %indvars.iv979.unr = phi i64 [ %indvars.iv979.ph, %scalar.ph2300.preheader ], [ %indvars.iv.next980.prol, %scalar.ph2300.prol ]
  %i.aul = add nsw i64 %wide.trip.count982, -1
  %i.aum = icmp eq i64 %indvars.iv979.ph, %i.aul
  br i1 %i.aum, label %.loopexit, label %scalar.ph2300

scalar.ph2300:                                    ; preds = %scalar.ph2300.prol.loopexit, %scalar.ph2300
  %indvars.iv979 = phi i64 [ %indvars.iv.next980.1, %scalar.ph2300 ], [ %indvars.iv979.unr, %scalar.ph2300.prol.loopexit ] ; 5 uses
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv979
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !52
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv979
  %i.auq = load double, ptr %i.aup, align 8, !tbaa !52
  %i.aur = fsub double %i.auq, %i.auo
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv979 ; 2 uses
  %i.aut = load double, ptr %i.aus, align 8, !tbaa !52
  %i.auu = fsub double %i.aur, %i.aut
  store double %i.auu, ptr %i.aus, align 8, !tbaa !52
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 1 ; 3 uses
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next980
  %i.auw = load double, ptr %i.auv, align 8, !tbaa !52
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next980
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !52
  %i.auz = fsub double %i.auy, %i.auw
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv.next980 ; 2 uses
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !52
  %i.avc = fsub double %i.auz, %i.avb
  store double %i.avc, ptr %i.ava, align 8, !tbaa !52
  %indvars.iv.next980.1 = add nuw nsw i64 %indvars.iv979, 2 ; 2 uses
  %exitcond983.not.1 = icmp eq i64 %indvars.iv.next980.1, %wide.trip.count982
  br i1 %exitcond983.not.1, label %.loopexit, label %scalar.ph2300, !llvm.loop !332

bb.bm:                                            ; preds = %bb.bl
  %i.avd = fcmp oeq double %3, -1.000000e+00
  %i.ave = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.avd, label %.preheader655, label %.preheader657

.preheader657:                                    ; preds = %bb.bm
  br i1 %i.ave, label %.lr.ph747, label %.loopexit

.lr.ph747:                                        ; preds = %.preheader657
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count972 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2231 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2231, label %scalar.ph2230.preheader, label %vector.memcheck2232

vector.memcheck2232:                              ; preds = %.lr.ph747
  %i.avh = shl nuw nsw i64 %wide.trip.count972, 3 ; 3 uses
  %i.avi = getelementptr i8, ptr %i.avg, i64 %i.avh ; 2 uses
  %i.avj = getelementptr i8, ptr %.0583, i64 %i.avh
  %19 = getelementptr i8, ptr %.0579, i64 %i.avh
  %bound02233.a = icmp ult ptr %i.avg, %i.avj
  %bound12234 = icmp ult ptr %.0583, %i.avi
  %found.conflict2235 = and i1 %bound02233.a, %bound12234
  %bound02236 = icmp ult ptr %i.avg, %19
  %bound12237 = icmp ult ptr %.0579, %i.avi
  %found.conflict2238 = and i1 %bound02236, %bound12237
  %conflict.rdx2239 = or i1 %found.conflict2235, %found.conflict2238
  br i1 %conflict.rdx2239, label %scalar.ph2230.preheader, label %vector.ph2240

vector.ph2240:                                    ; preds = %vector.memcheck2232
  %n.vec2241 = and i64 %wide.trip.count972, 2147483644 ; 3 uses
  %broadcast.splatinsert2242 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2243 = shufflevector <2 x double> %broadcast.splatinsert2242, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2244

vector.body2244:                                  ; preds = %vector.body2244, %vector.ph2240
  %index2245 = phi i64 [ 0, %vector.ph2240 ], [ %index.next2252, %vector.body2244 ] ; 4 uses
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2245 ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 16
  %wide.load2246 = load <2 x double>, ptr %i.avk, align 8, !tbaa !52, !alias.scope !524
  %wide.load2247 = load <2 x double>, ptr %i.avl, align 8, !tbaa !52, !alias.scope !524
  %i.avm = fneg <2 x double> %wide.load2246
  %i.avn = fneg <2 x double> %wide.load2247
  %i.avo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2245 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  %wide.load2248 = load <2 x double>, ptr %i.avo, align 8, !tbaa !52, !alias.scope !525
  %wide.load2249 = load <2 x double>, ptr %i.avp, align 8, !tbaa !52, !alias.scope !525
  %i.avq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2243, <2 x double> %wide.load2248, <2 x double> %i.avm)
  %i.avr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2243, <2 x double> %wide.load2249, <2 x double> %i.avn)
  %i.avs = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %index2245 ; 3 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 16 ; 2 uses
  %wide.load2250 = load <2 x double>, ptr %i.avs, align 8, !tbaa !52, !alias.scope !526, !noalias !527
  %wide.load2251 = load <2 x double>, ptr %i.avt, align 8, !tbaa !52, !alias.scope !526, !noalias !527
  %i.avu = fsub <2 x double> %i.avq, %wide.load2250
  %i.avv = fsub <2 x double> %i.avr, %wide.load2251
  store <2 x double> %i.avu, ptr %i.avs, align 8, !tbaa !52, !alias.scope !526, !noalias !527
  store <2 x double> %i.avv, ptr %i.avt, align 8, !tbaa !52, !alias.scope !526, !noalias !527
  %index.next2252 = add nuw i64 %index2245, 4     ; 2 uses
  %i.avw = icmp eq i64 %index.next2252, %n.vec2241
  br i1 %i.avw, label %middle.block2253, label %vector.body2244, !llvm.loop !337

middle.block2253:                                 ; preds = %vector.body2244
  %cmp.n2254 = icmp eq i64 %n.vec2241, %wide.trip.count972
  br i1 %cmp.n2254, label %.loopexit, label %scalar.ph2230.preheader

scalar.ph2230.preheader:                          ; preds = %vector.memcheck2232, %.lr.ph747, %middle.block2253
  %indvars.iv969.ph = phi i64 [ 0, %vector.memcheck2232 ], [ 0, %.lr.ph747 ], [ %n.vec2241, %middle.block2253 ] ; 6 uses
  %xtraiter2948 = and i64 %wide.trip.count972, 1
  %lcmp.mod2949.not = icmp eq i64 %xtraiter2948, 0
  br i1 %lcmp.mod2949.not, label %scalar.ph2230.prol.loopexit, label %scalar.ph2230.prol

scalar.ph2230.prol:                               ; preds = %scalar.ph2230.preheader
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv969.ph
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !52
  %i.avz = fneg double %i.avy
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv969.ph
  %i.awb = load double, ptr %i.awa, align 8, !tbaa !52
  %i.awc = tail call double @llvm.fmuladd.f64(double %3, double %i.awb, double %i.avz)
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv969.ph ; 2 uses
  %i.awe = load double, ptr %i.awd, align 8, !tbaa !52
  %i.awf = fsub double %i.awc, %i.awe
  store double %i.awf, ptr %i.awd, align 8, !tbaa !52
  %indvars.iv.next970.prol = or disjoint i64 %indvars.iv969.ph, 1
  br label %scalar.ph2230.prol.loopexit

scalar.ph2230.prol.loopexit:                      ; preds = %scalar.ph2230.prol, %scalar.ph2230.preheader
  %indvars.iv969.unr = phi i64 [ %indvars.iv969.ph, %scalar.ph2230.preheader ], [ %indvars.iv.next970.prol, %scalar.ph2230.prol ]
  %i.awg = add nsw i64 %wide.trip.count972, -1
  %i.awh = icmp eq i64 %indvars.iv969.ph, %i.awg
  br i1 %i.awh, label %.loopexit, label %scalar.ph2230

.preheader655:                                    ; preds = %bb.bm
  br i1 %i.ave, label %.lr.ph749, label %.loopexit

.lr.ph749:                                        ; preds = %.preheader655
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count977 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2267 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2267, label %scalar.ph2266.preheader, label %vector.memcheck2268

vector.memcheck2268:                              ; preds = %.lr.ph749
  %i.awk = shl nuw nsw i64 %wide.trip.count977, 3 ; 3 uses
  %i.awl = getelementptr i8, ptr %i.awj, i64 %i.awk ; 2 uses
  %i.awm = getelementptr i8, ptr %.0583, i64 %i.awk
  %20 = getelementptr i8, ptr %.0579, i64 %i.awk
  %bound02269.a = icmp ult ptr %i.awj, %i.awm
  %bound12270 = icmp ult ptr %.0583, %i.awl
  %found.conflict2271 = and i1 %bound02269.a, %bound12270
  %bound02272 = icmp ult ptr %i.awj, %20
  %bound12273 = icmp ult ptr %.0579, %i.awl
  %found.conflict2274 = and i1 %bound02272, %bound12273
  %conflict.rdx2275 = or i1 %found.conflict2271, %found.conflict2274
  br i1 %conflict.rdx2275, label %scalar.ph2266.preheader, label %vector.ph2276

vector.ph2276:                                    ; preds = %vector.memcheck2268
  %n.vec2277 = and i64 %wide.trip.count977, 2147483644 ; 3 uses
  br label %vector.body2278

vector.body2278:                                  ; preds = %vector.body2278, %vector.ph2276
  %index2279 = phi i64 [ 0, %vector.ph2276 ], [ %index.next2286, %vector.body2278 ] ; 4 uses
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2279 ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %wide.load2280 = load <2 x double>, ptr %i.awn, align 8, !tbaa !52, !alias.scope !528
  %wide.load2281 = load <2 x double>, ptr %i.awo, align 8, !tbaa !52, !alias.scope !528
  %i.awp = fneg <2 x double> %wide.load2280
  %i.awq = fneg <2 x double> %wide.load2281
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2279 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 16
  %wide.load2282 = load <2 x double>, ptr %i.awr, align 8, !tbaa !52, !alias.scope !529
  %wide.load2283 = load <2 x double>, ptr %i.aws, align 8, !tbaa !52, !alias.scope !529
  %i.awt = fsub <2 x double> %i.awp, %wide.load2282
  %i.awu = fsub <2 x double> %i.awq, %wide.load2283
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %index2279 ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 16 ; 2 uses
  %wide.load2284 = load <2 x double>, ptr %i.awv, align 8, !tbaa !52, !alias.scope !530, !noalias !531
  %wide.load2285 = load <2 x double>, ptr %i.aww, align 8, !tbaa !52, !alias.scope !530, !noalias !531
  %i.awx = fsub <2 x double> %i.awt, %wide.load2284
  %i.awy = fsub <2 x double> %i.awu, %wide.load2285
  store <2 x double> %i.awx, ptr %i.awv, align 8, !tbaa !52, !alias.scope !530, !noalias !531
  store <2 x double> %i.awy, ptr %i.aww, align 8, !tbaa !52, !alias.scope !530, !noalias !531
  %index.next2286 = add nuw i64 %index2279, 4     ; 2 uses
  %i.awz = icmp eq i64 %index.next2286, %n.vec2277
  br i1 %i.awz, label %middle.block2287, label %vector.body2278, !llvm.loop !342

middle.block2287:                                 ; preds = %vector.body2278
  %cmp.n2288 = icmp eq i64 %n.vec2277, %wide.trip.count977
  br i1 %cmp.n2288, label %.loopexit, label %scalar.ph2266.preheader

scalar.ph2266.preheader:                          ; preds = %vector.memcheck2268, %.lr.ph749, %middle.block2287
  %indvars.iv974.ph = phi i64 [ 0, %vector.memcheck2268 ], [ 0, %.lr.ph749 ], [ %n.vec2277, %middle.block2287 ] ; 6 uses
  %xtraiter2951 = and i64 %wide.trip.count977, 1
  %lcmp.mod2952.not = icmp eq i64 %xtraiter2951, 0
  br i1 %lcmp.mod2952.not, label %scalar.ph2266.prol.loopexit, label %scalar.ph2266.prol

scalar.ph2266.prol:                               ; preds = %scalar.ph2266.preheader
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv974.ph
  %i.axb = load double, ptr %i.axa, align 8, !tbaa !52
  %i.axc = fneg double %i.axb
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv974.ph
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !52
  %i.axf = fsub double %i.axc, %i.axe
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv974.ph ; 2 uses
  %i.axh = load double, ptr %i.axg, align 8, !tbaa !52
  %i.axi = fsub double %i.axf, %i.axh
  store double %i.axi, ptr %i.axg, align 8, !tbaa !52
  %indvars.iv.next975.prol = or disjoint i64 %indvars.iv974.ph, 1
  br label %scalar.ph2266.prol.loopexit

scalar.ph2266.prol.loopexit:                      ; preds = %scalar.ph2266.prol, %scalar.ph2266.preheader
  %indvars.iv974.unr = phi i64 [ %indvars.iv974.ph, %scalar.ph2266.preheader ], [ %indvars.iv.next975.prol, %scalar.ph2266.prol ]
  %i.axj = add nsw i64 %wide.trip.count977, -1
  %i.axk = icmp eq i64 %indvars.iv974.ph, %i.axj
  br i1 %i.axk, label %.loopexit, label %scalar.ph2266

scalar.ph2266:                                    ; preds = %scalar.ph2266.prol.loopexit, %scalar.ph2266
  %indvars.iv974 = phi i64 [ %indvars.iv.next975.1, %scalar.ph2266 ], [ %indvars.iv974.unr, %scalar.ph2266.prol.loopexit ] ; 5 uses
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv974
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !52
  %i.axn = fneg double %i.axm
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv974
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !52
  %i.axq = fsub double %i.axn, %i.axp
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv974 ; 2 uses
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !52
  %i.axt = fsub double %i.axq, %i.axs
  store double %i.axt, ptr %i.axr, align 8, !tbaa !52
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 1 ; 3 uses
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next975
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !52
  %i.axw = fneg double %i.axv
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next975
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !52
  %i.axz = fsub double %i.axw, %i.axy
  %i.aya = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv.next975 ; 2 uses
  %i.ayb = load double, ptr %i.aya, align 8, !tbaa !52
  %i.ayc = fsub double %i.axz, %i.ayb
  store double %i.ayc, ptr %i.aya, align 8, !tbaa !52
  %indvars.iv.next975.1 = add nuw nsw i64 %indvars.iv974, 2 ; 2 uses
  %exitcond978.not.1 = icmp eq i64 %indvars.iv.next975.1, %wide.trip.count977
  br i1 %exitcond978.not.1, label %.loopexit, label %scalar.ph2266, !llvm.loop !343

scalar.ph2230:                                    ; preds = %scalar.ph2230.prol.loopexit, %scalar.ph2230
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %scalar.ph2230 ], [ %indvars.iv969.unr, %scalar.ph2230.prol.loopexit ] ; 5 uses
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv969
  %i.aye = load double, ptr %i.ayd, align 8, !tbaa !52
  %i.ayf = fneg double %i.aye
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv969
  %i.ayh = load double, ptr %i.ayg, align 8, !tbaa !52
  %i.ayi = tail call double @llvm.fmuladd.f64(double %3, double %i.ayh, double %i.ayf)
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv969 ; 2 uses
  %i.ayk = load double, ptr %i.ayj, align 8, !tbaa !52
  %i.ayl = fsub double %i.ayi, %i.ayk
  store double %i.ayl, ptr %i.ayj, align 8, !tbaa !52
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 3 uses
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next970
  %i.ayn = load double, ptr %i.aym, align 8, !tbaa !52
  %i.ayo = fneg double %i.ayn
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next970
  %i.ayq = load double, ptr %i.ayp, align 8, !tbaa !52
  %i.ayr = tail call double @llvm.fmuladd.f64(double %3, double %i.ayq, double %i.ayo)
  %i.ays = getelementptr inbounds nuw [8 x i8], ptr %i.avg, i64 %indvars.iv.next970 ; 2 uses
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !52
  %i.ayu = fsub double %i.ayr, %i.ayt
  store double %i.ayu, ptr %i.ays, align 8, !tbaa !52
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv969, 2 ; 2 uses
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit, label %scalar.ph2230, !llvm.loop !344

bb.bn:                                            ; preds = %bb.bj
  br i1 %i.g, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.o, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef %i.e, double noundef -1.000000e+00, ptr noundef %i.ayw, i32 noundef 1)
  br label %.loopexit

bb.bq:                                            ; preds = %bb.bo
  %i.ayx = fcmp oeq double %3, 1.000000e+00
  br i1 %i.ayx, label %.preheader659, label %bb.br

.preheader659:                                    ; preds = %bb.bq
  %i.ayy = icmp sgt i32 %i.e, 0
  br i1 %i.ayy, label %.lr.ph745, label %.loopexit

.lr.ph745:                                        ; preds = %.preheader659
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !41 ; 8 uses
  %wide.trip.count967 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2203 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check2203, label %scalar.ph2202.preheader, label %vector.memcheck2204

vector.memcheck2204:                              ; preds = %.lr.ph745
  %i.azb = shl nuw nsw i64 %wide.trip.count967, 3 ; 2 uses
  %i.azc = getelementptr i8, ptr %i.aza, i64 %i.azb
  %i.azd = getelementptr i8, ptr %.0579, i64 %i.azb
  %bound02205 = icmp ult ptr %i.aza, %i.azd
  %bound12206 = icmp ult ptr %.0579, %i.azc
  %found.conflict2207 = and i1 %bound02205, %bound12206
  br i1 %found.conflict2207, label %scalar.ph2202.preheader, label %vector.ph2208

vector.ph2208:                                    ; preds = %vector.memcheck2204
  %n.vec2209 = and i64 %wide.trip.count967, 2147483644 ; 3 uses
  br label %vector.body2210

vector.body2210:                                  ; preds = %vector.body2210, %vector.ph2208
  %index2211 = phi i64 [ 0, %vector.ph2208 ], [ %index.next2216, %vector.body2210 ] ; 3 uses
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2211 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  %wide.load2212 = load <2 x double>, ptr %i.aze, align 8, !tbaa !52, !alias.scope !532
  %wide.load2213 = load <2 x double>, ptr %i.azf, align 8, !tbaa !52, !alias.scope !532
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.aza, i64 %index2211 ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 16 ; 2 uses
  %wide.load2214 = load <2 x double>, ptr %i.azg, align 8, !tbaa !52, !alias.scope !533, !noalias !532
  %wide.load2215 = load <2 x double>, ptr %i.azh, align 8, !tbaa !52, !alias.scope !533, !noalias !532
  %i.azi = fsub <2 x double> %wide.load2212, %wide.load2214
  %i.azj = fsub <2 x double> %wide.load2213, %wide.load2215
  store <2 x double> %i.azi, ptr %i.azg, align 8, !tbaa !52, !alias.scope !533, !noalias !532
  store <2 x double> %i.azj, ptr %i.azh, align 8, !tbaa !52, !alias.scope !533, !noalias !532
  %index.next2216 = add nuw i64 %index2211, 4     ; 2 uses
  %i.azk = icmp eq i64 %index.next2216, %n.vec2209
  br i1 %i.azk, label %middle.block2217, label %vector.body2210, !llvm.loop !348

middle.block2217:                                 ; preds = %vector.body2210
  %cmp.n2218 = icmp eq i64 %n.vec2209, %wide.trip.count967
  br i1 %cmp.n2218, label %.loopexit, label %scalar.ph2202.preheader

scalar.ph2202.preheader:                          ; preds = %vector.memcheck2204, %.lr.ph745, %middle.block2217
  %indvars.iv964.ph = phi i64 [ 0, %vector.memcheck2204 ], [ 0, %.lr.ph745 ], [ %n.vec2209, %middle.block2217 ] ; 3 uses
  %xtraiter2945 = and i64 %wide.trip.count967, 3  ; 2 uses
  %lcmp.mod2946.not = icmp eq i64 %xtraiter2945, 0
  br i1 %lcmp.mod2946.not, label %scalar.ph2202.prol.loopexit, label %scalar.ph2202.prol

scalar.ph2202.prol:                               ; preds = %scalar.ph2202.preheader, %scalar.ph2202.prol
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %scalar.ph2202.prol ], [ %indvars.iv964.ph, %scalar.ph2202.preheader ] ; 3 uses
  %prol.iter2947 = phi i64 [ %prol.iter2947.next, %scalar.ph2202.prol ], [ 0, %scalar.ph2202.preheader ]
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv964.prol
  %i.azm = load double, ptr %i.azl, align 8, !tbaa !52
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.aza, i64 %indvars.iv964.prol ; 2 uses
  %i.azo = load double, ptr %i.azn, align 8, !tbaa !52
  %i.azp = fsub double %i.azm, %i.azo
  store double %i.azp, ptr %i.azn, align 8, !tbaa !52
  %indvars.iv.next965.prol = add nuw nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %prol.iter2947.next = add i64 %prol.iter2947, 1 ; 2 uses
  %prol.iter2947.cmp.not = icmp eq i64 %prol.iter2947.next, %xtraiter2945
end_hunk_1
begin_hunk_2_@_ZN5Ipopt11DenseVector17AddTwoVectorsImplEdRKNS_6VectorEdS3_d:bb.a
  %wide.load2190 = load <2 x double>, ptr %i.bbq, align 8, !tbaa !52, !alias.scope !536
  %i.bbr = fneg <2 x double> %wide.load2189
  %i.bbs = fneg <2 x double> %wide.load2190
  %i.bbt = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %index2188 ; 3 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16 ; 2 uses
  %wide.load2191 = load <2 x double>, ptr %i.bbt, align 8, !tbaa !52, !alias.scope !537, !noalias !536
  %wide.load2192 = load <2 x double>, ptr %i.bbu, align 8, !tbaa !52, !alias.scope !537, !noalias !536
  %i.bbv = fsub <2 x double> %i.bbr, %wide.load2191
  %i.bbw = fsub <2 x double> %i.bbs, %wide.load2192
  store <2 x double> %i.bbv, ptr %i.bbt, align 8, !tbaa !52, !alias.scope !537, !noalias !536
  store <2 x double> %i.bbw, ptr %i.bbu, align 8, !tbaa !52, !alias.scope !537, !noalias !536
  %index.next2193 = add nuw i64 %index2188, 4     ; 2 uses
  %i.bbx = icmp eq i64 %index.next2193, %n.vec2186
  br i1 %i.bbx, label %middle.block2194, label %vector.body2187, !llvm.loop !358

middle.block2194:                                 ; preds = %vector.body2187
  %cmp.n2195 = icmp eq i64 %n.vec2186, %wide.trip.count962
  br i1 %cmp.n2195, label %.loopexit, label %scalar.ph2179.preheader

scalar.ph2179.preheader:                          ; preds = %vector.memcheck2181, %.lr.ph743, %middle.block2194
  %indvars.iv959.ph = phi i64 [ 0, %vector.memcheck2181 ], [ 0, %.lr.ph743 ], [ %n.vec2186, %middle.block2194 ] ; 5 uses
  %xtraiter2942 = and i64 %wide.trip.count962, 1
  %lcmp.mod2943.not = icmp eq i64 %xtraiter2942, 0
  br i1 %lcmp.mod2943.not, label %scalar.ph2179.prol.loopexit, label %scalar.ph2179.prol

scalar.ph2179.prol:                               ; preds = %scalar.ph2179.preheader
  %i.bby = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv959.ph
  %i.bbz = load double, ptr %i.bby, align 8, !tbaa !52
  %i.bca = fneg double %i.bbz
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %indvars.iv959.ph ; 2 uses
  %i.bcc = load double, ptr %i.bcb, align 8, !tbaa !52
  %i.bcd = fsub double %i.bca, %i.bcc
  store double %i.bcd, ptr %i.bcb, align 8, !tbaa !52
  %indvars.iv.next960.prol = or disjoint i64 %indvars.iv959.ph, 1
  br label %scalar.ph2179.prol.loopexit

scalar.ph2179.prol.loopexit:                      ; preds = %scalar.ph2179.prol, %scalar.ph2179.preheader
  %indvars.iv959.unr = phi i64 [ %indvars.iv959.ph, %scalar.ph2179.preheader ], [ %indvars.iv.next960.prol, %scalar.ph2179.prol ]
  %i.bce = add nsw i64 %wide.trip.count962, -1
  %i.bcf = icmp eq i64 %indvars.iv959.ph, %i.bce
  br i1 %i.bcf, label %.loopexit, label %scalar.ph2179

scalar.ph2179:                                    ; preds = %scalar.ph2179.prol.loopexit, %scalar.ph2179
  %indvars.iv959 = phi i64 [ %indvars.iv.next960.1, %scalar.ph2179 ], [ %indvars.iv959.unr, %scalar.ph2179.prol.loopexit ] ; 4 uses
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv959
  %i.bch = load double, ptr %i.bcg, align 8, !tbaa !52
  %i.bci = fneg double %i.bch
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %indvars.iv959 ; 2 uses
  %i.bck = load double, ptr %i.bcj, align 8, !tbaa !52
  %i.bcl = fsub double %i.bci, %i.bck
  store double %i.bcl, ptr %i.bcj, align 8, !tbaa !52
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next960
  %i.bcn = load double, ptr %i.bcm, align 8, !tbaa !52
  %i.bco = fneg double %i.bcn
  %i.bcp = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %indvars.iv.next960 ; 2 uses
  %i.bcq = load double, ptr %i.bcp, align 8, !tbaa !52
  %i.bcr = fsub double %i.bco, %i.bcq
  store double %i.bcr, ptr %i.bcp, align 8, !tbaa !52
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit, label %scalar.ph2179, !llvm.loop !359

scalar.ph2154:                                    ; preds = %scalar.ph2154.prol.loopexit, %scalar.ph2154
  %indvars.iv954 = phi i64 [ %indvars.iv.next955.1, %scalar.ph2154 ], [ %indvars.iv954.unr, %scalar.ph2154.prol.loopexit ] ; 4 uses
  %i.bcs = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv954
  %i.bct = load double, ptr %i.bcs, align 8, !tbaa !52
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bap, i64 %indvars.iv954 ; 2 uses
  %i.bcv = load double, ptr %i.bcu, align 8, !tbaa !52
  %i.bcw = fneg double %i.bcv
  %i.bcx = tail call double @llvm.fmuladd.f64(double %3, double %i.bct, double %i.bcw)
  store double %i.bcx, ptr %i.bcu, align 8, !tbaa !52
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %i.bcy = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next955
  %i.bcz = load double, ptr %i.bcy, align 8, !tbaa !52
  %i.bda = getelementptr inbounds nuw [8 x i8], ptr %i.bap, i64 %indvars.iv.next955 ; 2 uses
  %i.bdb = load double, ptr %i.bda, align 8, !tbaa !52
  %i.bdc = fneg double %i.bdb
  %i.bdd = tail call double @llvm.fmuladd.f64(double %3, double %i.bcz, double %i.bdc)
  store double %i.bdd, ptr %i.bda, align 8, !tbaa !52
  %indvars.iv.next955.1 = add nuw nsw i64 %indvars.iv954, 2 ; 2 uses
  %exitcond958.not.1 = icmp eq i64 %indvars.iv.next955.1, %wide.trip.count957
  br i1 %exitcond958.not.1, label %.loopexit, label %scalar.ph2154, !llvm.loop !360

bb.bs:                                            ; preds = %bb.bn
  br i1 %i.o, label %.preheader665, label %bb.bt

.preheader665:                                    ; preds = %bb.bs
  %i.bde = icmp sgt i32 %i.e, 0
  br i1 %i.bde, label %.lr.ph739, label %.loopexit

.lr.ph739:                                        ; preds = %.preheader665
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2130 = icmp ult i32 %i.e, 4
  br i1 %min.iters.check2130, label %scalar.ph2129.preheader, label %vector.memcheck2131

vector.memcheck2131:                              ; preds = %.lr.ph739
  %i.bdh = shl nuw nsw i64 %wide.trip.count952, 3 ; 2 uses
  %i.bdi = getelementptr i8, ptr %i.bdg, i64 %i.bdh
  %i.bdj = getelementptr i8, ptr %.0583, i64 %i.bdh
  %bound02132 = icmp ult ptr %i.bdg, %i.bdj
  %bound12133 = icmp ult ptr %.0583, %i.bdi
  %found.conflict2134 = and i1 %bound02132, %bound12133
  br i1 %found.conflict2134, label %scalar.ph2129.preheader, label %vector.ph2135

vector.ph2135:                                    ; preds = %vector.memcheck2131
  %n.vec2136 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  %broadcast.splatinsert2137 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2138 = shufflevector <2 x double> %broadcast.splatinsert2137, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2139

vector.body2139:                                  ; preds = %vector.body2139, %vector.ph2135
  %index2140 = phi i64 [ 0, %vector.ph2135 ], [ %index.next2145, %vector.body2139 ] ; 3 uses
  %i.bdk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2140 ; 2 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 16
  %wide.load2141 = load <2 x double>, ptr %i.bdk, align 8, !tbaa !52, !alias.scope !538
  %wide.load2142 = load <2 x double>, ptr %i.bdl, align 8, !tbaa !52, !alias.scope !538
  %i.bdm = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %index2140 ; 3 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 16 ; 2 uses
  %wide.load2143 = load <2 x double>, ptr %i.bdm, align 8, !tbaa !52, !alias.scope !539, !noalias !538
  %wide.load2144 = load <2 x double>, ptr %i.bdn, align 8, !tbaa !52, !alias.scope !539, !noalias !538
  %i.bdo = fneg <2 x double> %wide.load2143
  %i.bdp = fneg <2 x double> %wide.load2144
  %i.bdq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2138, <2 x double> %wide.load2141, <2 x double> %i.bdo)
  %i.bdr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2138, <2 x double> %wide.load2142, <2 x double> %i.bdp)
  store <2 x double> %i.bdq, ptr %i.bdm, align 8, !tbaa !52, !alias.scope !539, !noalias !538
  store <2 x double> %i.bdr, ptr %i.bdn, align 8, !tbaa !52, !alias.scope !539, !noalias !538
  %index.next2145 = add nuw i64 %index2140, 4     ; 2 uses
  %i.bds = icmp eq i64 %index.next2145, %n.vec2136
  br i1 %i.bds, label %middle.block2146, label %vector.body2139, !llvm.loop !364

middle.block2146:                                 ; preds = %vector.body2139
  %cmp.n2147 = icmp eq i64 %n.vec2136, %wide.trip.count952
  br i1 %cmp.n2147, label %.loopexit, label %scalar.ph2129.preheader

scalar.ph2129.preheader:                          ; preds = %vector.memcheck2131, %.lr.ph739, %middle.block2146
  %indvars.iv949.ph = phi i64 [ 0, %vector.memcheck2131 ], [ 0, %.lr.ph739 ], [ %n.vec2136, %middle.block2146 ] ; 5 uses
  %xtraiter2936 = and i64 %wide.trip.count952, 1
  %lcmp.mod2937.not = icmp eq i64 %xtraiter2936, 0
  br i1 %lcmp.mod2937.not, label %scalar.ph2129.prol.loopexit, label %scalar.ph2129.prol

scalar.ph2129.prol:                               ; preds = %scalar.ph2129.preheader
  %i.bdt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv949.ph
  %i.bdu = load double, ptr %i.bdt, align 8, !tbaa !52
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv949.ph ; 2 uses
  %i.bdw = load double, ptr %i.bdv, align 8, !tbaa !52
  %i.bdx = fneg double %i.bdw
  %i.bdy = tail call double @llvm.fmuladd.f64(double %1, double %i.bdu, double %i.bdx)
  store double %i.bdy, ptr %i.bdv, align 8, !tbaa !52
  %indvars.iv.next950.prol = or disjoint i64 %indvars.iv949.ph, 1
  br label %scalar.ph2129.prol.loopexit

scalar.ph2129.prol.loopexit:                      ; preds = %scalar.ph2129.prol, %scalar.ph2129.preheader
  %indvars.iv949.unr = phi i64 [ %indvars.iv949.ph, %scalar.ph2129.preheader ], [ %indvars.iv.next950.prol, %scalar.ph2129.prol ]
  %i.bdz = add nsw i64 %wide.trip.count952, -1
  %i.bea = icmp eq i64 %indvars.iv949.ph, %i.bdz
  br i1 %i.bea, label %.loopexit, label %scalar.ph2129

scalar.ph2129:                                    ; preds = %scalar.ph2129.prol.loopexit, %scalar.ph2129
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %scalar.ph2129 ], [ %indvars.iv949.unr, %scalar.ph2129.prol.loopexit ] ; 4 uses
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv949
  %i.bec = load double, ptr %i.beb, align 8, !tbaa !52
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv949 ; 2 uses
  %i.bee = load double, ptr %i.bed, align 8, !tbaa !52
  %i.bef = fneg double %i.bee
  %i.beg = tail call double @llvm.fmuladd.f64(double %1, double %i.bec, double %i.bef)
  store double %i.beg, ptr %i.bed, align 8, !tbaa !52
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next950
  %i.bei = load double, ptr %i.beh, align 8, !tbaa !52
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %indvars.iv.next950 ; 2 uses
  %i.bek = load double, ptr %i.bej, align 8, !tbaa !52
  %i.bel = fneg double %i.bek
  %i.bem = tail call double @llvm.fmuladd.f64(double %1, double %i.bei, double %i.bel)
  store double %i.bem, ptr %i.bej, align 8, !tbaa !52
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count952
  br i1 %exitcond953.not.1, label %.loopexit, label %scalar.ph2129, !llvm.loop !365

bb.bt:                                            ; preds = %bb.bs
  %i.ben = fcmp oeq double %3, 1.000000e+00
  br i1 %i.ben, label %.preheader667, label %bb.bu

.preheader667:                                    ; preds = %bb.bt
  %i.beo = icmp sgt i32 %i.e, 0
  br i1 %i.beo, label %.lr.ph737, label %.loopexit

.lr.ph737:                                        ; preds = %.preheader667
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count947 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2099 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2099, label %scalar.ph2098.preheader, label %vector.memcheck2100

vector.memcheck2100:                              ; preds = %.lr.ph737
  %i.ber = shl nuw nsw i64 %wide.trip.count947, 3 ; 3 uses
  %i.bes = getelementptr i8, ptr %i.beq, i64 %i.ber ; 2 uses
  %i.bet = getelementptr i8, ptr %.0583, i64 %i.ber
  %21 = getelementptr i8, ptr %.0579, i64 %i.ber
  %bound02101.a = icmp ult ptr %i.beq, %i.bet
  %bound12102 = icmp ult ptr %.0583, %i.bes
  %found.conflict2103 = and i1 %bound02101.a, %bound12102
  %bound02104 = icmp ult ptr %i.beq, %21
  %bound12105 = icmp ult ptr %.0579, %i.bes
  %found.conflict2106 = and i1 %bound02104, %bound12105
  %conflict.rdx2107 = or i1 %found.conflict2103, %found.conflict2106
  br i1 %conflict.rdx2107, label %scalar.ph2098.preheader, label %vector.ph2108

vector.ph2108:                                    ; preds = %vector.memcheck2100
  %n.vec2109 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  %broadcast.splatinsert2110 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2111 = shufflevector <2 x double> %broadcast.splatinsert2110, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2112

vector.body2112:                                  ; preds = %vector.body2112, %vector.ph2108
  %index2113 = phi i64 [ 0, %vector.ph2108 ], [ %index.next2120, %vector.body2112 ] ; 4 uses
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2113 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %wide.load2114 = load <2 x double>, ptr %i.beu, align 8, !tbaa !52, !alias.scope !540
  %wide.load2115 = load <2 x double>, ptr %i.bev, align 8, !tbaa !52, !alias.scope !540
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2113 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 16
  %wide.load2116 = load <2 x double>, ptr %i.bew, align 8, !tbaa !52, !alias.scope !541
  %wide.load2117 = load <2 x double>, ptr %i.bex, align 8, !tbaa !52, !alias.scope !541
  %i.bey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2111, <2 x double> %wide.load2114, <2 x double> %wide.load2116)
  %i.bez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2111, <2 x double> %wide.load2115, <2 x double> %wide.load2117)
  %i.bfa = getelementptr inbounds nuw [8 x i8], ptr %i.beq, i64 %index2113 ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 16 ; 2 uses
  %wide.load2118 = load <2 x double>, ptr %i.bfa, align 8, !tbaa !52, !alias.scope !542, !noalias !543
  %wide.load2119 = load <2 x double>, ptr %i.bfb, align 8, !tbaa !52, !alias.scope !542, !noalias !543
  %i.bfc = fsub <2 x double> %i.bey, %wide.load2118
  %i.bfd = fsub <2 x double> %i.bez, %wide.load2119
  store <2 x double> %i.bfc, ptr %i.bfa, align 8, !tbaa !52, !alias.scope !542, !noalias !543
  store <2 x double> %i.bfd, ptr %i.bfb, align 8, !tbaa !52, !alias.scope !542, !noalias !543
  %index.next2120 = add nuw i64 %index2113, 4     ; 2 uses
  %i.bfe = icmp eq i64 %index.next2120, %n.vec2109
  br i1 %i.bfe, label %middle.block2121, label %vector.body2112, !llvm.loop !370

middle.block2121:                                 ; preds = %vector.body2112
  %cmp.n2122 = icmp eq i64 %n.vec2109, %wide.trip.count947
  br i1 %cmp.n2122, label %.loopexit, label %scalar.ph2098.preheader

scalar.ph2098.preheader:                          ; preds = %vector.memcheck2100, %.lr.ph737, %middle.block2121
  %indvars.iv944.ph = phi i64 [ 0, %vector.memcheck2100 ], [ 0, %.lr.ph737 ], [ %n.vec2109, %middle.block2121 ] ; 6 uses
  %xtraiter2933 = and i64 %wide.trip.count947, 1
  %lcmp.mod2934.not = icmp eq i64 %xtraiter2933, 0
  br i1 %lcmp.mod2934.not, label %scalar.ph2098.prol.loopexit, label %scalar.ph2098.prol

scalar.ph2098.prol:                               ; preds = %scalar.ph2098.preheader
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv944.ph
  %i.bfg = load double, ptr %i.bff, align 8, !tbaa !52
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv944.ph
  %i.bfi = load double, ptr %i.bfh, align 8, !tbaa !52
  %i.bfj = tail call double @llvm.fmuladd.f64(double %1, double %i.bfg, double %i.bfi)
  %i.bfk = getelementptr inbounds nuw [8 x i8], ptr %i.beq, i64 %indvars.iv944.ph ; 2 uses
  %i.bfl = load double, ptr %i.bfk, align 8, !tbaa !52
  %i.bfm = fsub double %i.bfj, %i.bfl
  store double %i.bfm, ptr %i.bfk, align 8, !tbaa !52
  %indvars.iv.next945.prol = or disjoint i64 %indvars.iv944.ph, 1
  br label %scalar.ph2098.prol.loopexit

scalar.ph2098.prol.loopexit:                      ; preds = %scalar.ph2098.prol, %scalar.ph2098.preheader
  %indvars.iv944.unr = phi i64 [ %indvars.iv944.ph, %scalar.ph2098.preheader ], [ %indvars.iv.next945.prol, %scalar.ph2098.prol ]
  %i.bfn = add nsw i64 %wide.trip.count947, -1
  %i.bfo = icmp eq i64 %indvars.iv944.ph, %i.bfn
  br i1 %i.bfo, label %.loopexit, label %scalar.ph2098

scalar.ph2098:                                    ; preds = %scalar.ph2098.prol.loopexit, %scalar.ph2098
  %indvars.iv944 = phi i64 [ %indvars.iv.next945.1, %scalar.ph2098 ], [ %indvars.iv944.unr, %scalar.ph2098.prol.loopexit ] ; 5 uses
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv944
  %i.bfq = load double, ptr %i.bfp, align 8, !tbaa !52
  %i.bfr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv944
  %i.bfs = load double, ptr %i.bfr, align 8, !tbaa !52
  %i.bft = tail call double @llvm.fmuladd.f64(double %1, double %i.bfq, double %i.bfs)
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.beq, i64 %indvars.iv944 ; 2 uses
  %i.bfv = load double, ptr %i.bfu, align 8, !tbaa !52
  %i.bfw = fsub double %i.bft, %i.bfv
  store double %i.bfw, ptr %i.bfu, align 8, !tbaa !52
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 3 uses
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next945
  %i.bfy = load double, ptr %i.bfx, align 8, !tbaa !52
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next945
  %i.bga = load double, ptr %i.bfz, align 8, !tbaa !52
  %i.bgb = tail call double @llvm.fmuladd.f64(double %1, double %i.bfy, double %i.bga)
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %i.beq, i64 %indvars.iv.next945 ; 2 uses
  %i.bgd = load double, ptr %i.bgc, align 8, !tbaa !52
  %i.bge = fsub double %i.bgb, %i.bgd
  store double %i.bge, ptr %i.bgc, align 8, !tbaa !52
  %indvars.iv.next945.1 = add nuw nsw i64 %indvars.iv944, 2 ; 2 uses
  %exitcond948.not.1 = icmp eq i64 %indvars.iv.next945.1, %wide.trip.count947
  br i1 %exitcond948.not.1, label %.loopexit, label %scalar.ph2098, !llvm.loop !371

bb.bu:                                            ; preds = %bb.bt
  %i.bgf = fcmp oeq double %3, -1.000000e+00
  %i.bgg = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.bgf, label %.preheader669, label %.preheader671

.preheader671:                                    ; preds = %bb.bu
  br i1 %i.bgg, label %.lr.ph733, label %.loopexit

.lr.ph733:                                        ; preds = %.preheader671
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count937 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2025 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check2025, label %scalar.ph2024.preheader, label %vector.memcheck2026

vector.memcheck2026:                              ; preds = %.lr.ph733
  %i.bgj = shl nuw nsw i64 %wide.trip.count937, 3 ; 3 uses
  %i.bgk = getelementptr i8, ptr %i.bgi, i64 %i.bgj ; 2 uses
  %i.bgl = getelementptr i8, ptr %.0583, i64 %i.bgj
  %22 = getelementptr i8, ptr %.0579, i64 %i.bgj
  %bound02027.a = icmp ult ptr %i.bgi, %i.bgl
  %bound12028 = icmp ult ptr %.0583, %i.bgk
  %found.conflict2029 = and i1 %bound02027.a, %bound12028
  %bound02030 = icmp ult ptr %i.bgi, %22
  %bound12031 = icmp ult ptr %.0579, %i.bgk
  %found.conflict2032 = and i1 %bound02030, %bound12031
  %conflict.rdx2033 = or i1 %found.conflict2029, %found.conflict2032
  br i1 %conflict.rdx2033, label %scalar.ph2024.preheader, label %vector.ph2034

vector.ph2034:                                    ; preds = %vector.memcheck2026
  %n.vec2035 = and i64 %wide.trip.count937, 2147483644 ; 3 uses
  %broadcast.splatinsert2036 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat2037 = shufflevector <2 x double> %broadcast.splatinsert2036, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2038 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2039 = shufflevector <2 x double> %broadcast.splatinsert2038, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2040

vector.body2040:                                  ; preds = %vector.body2040, %vector.ph2034
  %index2041 = phi i64 [ 0, %vector.ph2034 ], [ %index.next2048, %vector.body2040 ] ; 4 uses
  %i.bgm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2041 ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 16
  %wide.load2042 = load <2 x double>, ptr %i.bgm, align 8, !tbaa !52, !alias.scope !544
  %wide.load2043 = load <2 x double>, ptr %i.bgn, align 8, !tbaa !52, !alias.scope !544
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2041 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 16
  %wide.load2044 = load <2 x double>, ptr %i.bgo, align 8, !tbaa !52, !alias.scope !545
  %wide.load2045 = load <2 x double>, ptr %i.bgp, align 8, !tbaa !52, !alias.scope !545
  %i.bgq = fmul <2 x double> %broadcast.splat2037, %wide.load2044
  %i.bgr = fmul <2 x double> %broadcast.splat2037, %wide.load2045
  %i.bgs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2039, <2 x double> %wide.load2042, <2 x double> %i.bgq)
  %i.bgt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2039, <2 x double> %wide.load2043, <2 x double> %i.bgr)
  %i.bgu = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %index2041 ; 3 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 16 ; 2 uses
  %wide.load2046 = load <2 x double>, ptr %i.bgu, align 8, !tbaa !52, !alias.scope !546, !noalias !547
  %wide.load2047 = load <2 x double>, ptr %i.bgv, align 8, !tbaa !52, !alias.scope !546, !noalias !547
  %i.bgw = fsub <2 x double> %i.bgs, %wide.load2046
  %i.bgx = fsub <2 x double> %i.bgt, %wide.load2047
  store <2 x double> %i.bgw, ptr %i.bgu, align 8, !tbaa !52, !alias.scope !546, !noalias !547
  store <2 x double> %i.bgx, ptr %i.bgv, align 8, !tbaa !52, !alias.scope !546, !noalias !547
  %index.next2048 = add nuw i64 %index2041, 4     ; 2 uses
  %i.bgy = icmp eq i64 %index.next2048, %n.vec2035
  br i1 %i.bgy, label %middle.block2049, label %vector.body2040, !llvm.loop !376

middle.block2049:                                 ; preds = %vector.body2040
  %cmp.n2050 = icmp eq i64 %n.vec2035, %wide.trip.count937
  br i1 %cmp.n2050, label %.loopexit, label %scalar.ph2024.preheader

scalar.ph2024.preheader:                          ; preds = %vector.memcheck2026, %.lr.ph733, %middle.block2049
  %indvars.iv934.ph = phi i64 [ 0, %vector.memcheck2026 ], [ 0, %.lr.ph733 ], [ %n.vec2035, %middle.block2049 ] ; 6 uses
  %xtraiter2927 = and i64 %wide.trip.count937, 1
  %lcmp.mod2928.not = icmp eq i64 %xtraiter2927, 0
  br i1 %lcmp.mod2928.not, label %scalar.ph2024.prol.loopexit, label %scalar.ph2024.prol

scalar.ph2024.prol:                               ; preds = %scalar.ph2024.preheader
  %i.bgz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv934.ph
  %i.bha = load double, ptr %i.bgz, align 8, !tbaa !52
  %i.bhb = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv934.ph
  %i.bhc = load double, ptr %i.bhb, align 8, !tbaa !52
  %i.bhd = fmul double %3, %i.bhc
  %i.bhe = tail call double @llvm.fmuladd.f64(double %1, double %i.bha, double %i.bhd)
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %indvars.iv934.ph ; 2 uses
  %i.bhg = load double, ptr %i.bhf, align 8, !tbaa !52
  %i.bhh = fsub double %i.bhe, %i.bhg
  store double %i.bhh, ptr %i.bhf, align 8, !tbaa !52
  %indvars.iv.next935.prol = or disjoint i64 %indvars.iv934.ph, 1
  br label %scalar.ph2024.prol.loopexit

scalar.ph2024.prol.loopexit:                      ; preds = %scalar.ph2024.prol, %scalar.ph2024.preheader
  %indvars.iv934.unr = phi i64 [ %indvars.iv934.ph, %scalar.ph2024.preheader ], [ %indvars.iv.next935.prol, %scalar.ph2024.prol ]
  %i.bhi = add nsw i64 %wide.trip.count937, -1
  %i.bhj = icmp eq i64 %indvars.iv934.ph, %i.bhi
  br i1 %i.bhj, label %.loopexit, label %scalar.ph2024

.preheader669:                                    ; preds = %bb.bu
  br i1 %i.bgg, label %.lr.ph735, label %.loopexit

.lr.ph735:                                        ; preds = %.preheader669
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bhl = load ptr, ptr %i.bhk, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count942 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2063 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2063, label %scalar.ph2062.preheader, label %vector.memcheck2064

vector.memcheck2064:                              ; preds = %.lr.ph735
  %i.bhm = shl nuw nsw i64 %wide.trip.count942, 3 ; 3 uses
  %i.bhn = getelementptr i8, ptr %i.bhl, i64 %i.bhm ; 2 uses
  %i.bho = getelementptr i8, ptr %.0583, i64 %i.bhm
  %23 = getelementptr i8, ptr %.0579, i64 %i.bhm
  %bound02065.a = icmp ult ptr %i.bhl, %i.bho
  %bound12066 = icmp ult ptr %.0583, %i.bhn
  %found.conflict2067 = and i1 %bound02065.a, %bound12066
  %bound02068 = icmp ult ptr %i.bhl, %23
  %bound12069 = icmp ult ptr %.0579, %i.bhn
  %found.conflict2070 = and i1 %bound02068, %bound12069
  %conflict.rdx2071 = or i1 %found.conflict2067, %found.conflict2070
  br i1 %conflict.rdx2071, label %scalar.ph2062.preheader, label %vector.ph2072

vector.ph2072:                                    ; preds = %vector.memcheck2064
  %n.vec2073 = and i64 %wide.trip.count942, 2147483644 ; 3 uses
  %broadcast.splatinsert2074 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat2075 = shufflevector <2 x double> %broadcast.splatinsert2074, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2076

vector.body2076:                                  ; preds = %vector.body2076, %vector.ph2072
  %index2077 = phi i64 [ 0, %vector.ph2072 ], [ %index.next2084, %vector.body2076 ] ; 4 uses
  %i.bhp = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2077 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 16
  %wide.load2078 = load <2 x double>, ptr %i.bhp, align 8, !tbaa !52, !alias.scope !548
  %wide.load2079 = load <2 x double>, ptr %i.bhq, align 8, !tbaa !52, !alias.scope !548
  %i.bhr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2077 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  %wide.load2080 = load <2 x double>, ptr %i.bhr, align 8, !tbaa !52, !alias.scope !549
  %wide.load2081 = load <2 x double>, ptr %i.bhs, align 8, !tbaa !52, !alias.scope !549
  %i.bht = fneg <2 x double> %wide.load2080
  %i.bhu = fneg <2 x double> %wide.load2081
  %i.bhv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2075, <2 x double> %wide.load2078, <2 x double> %i.bht)
  %i.bhw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2075, <2 x double> %wide.load2079, <2 x double> %i.bhu)
  %i.bhx = getelementptr inbounds nuw [8 x i8], ptr %i.bhl, i64 %index2077 ; 3 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 16 ; 2 uses
  %wide.load2082 = load <2 x double>, ptr %i.bhx, align 8, !tbaa !52, !alias.scope !550, !noalias !551
  %wide.load2083 = load <2 x double>, ptr %i.bhy, align 8, !tbaa !52, !alias.scope !550, !noalias !551
  %i.bhz = fsub <2 x double> %i.bhv, %wide.load2082
  %i.bia = fsub <2 x double> %i.bhw, %wide.load2083
  store <2 x double> %i.bhz, ptr %i.bhx, align 8, !tbaa !52, !alias.scope !550, !noalias !551
  store <2 x double> %i.bia, ptr %i.bhy, align 8, !tbaa !52, !alias.scope !550, !noalias !551
  %index.next2084 = add nuw i64 %index2077, 4     ; 2 uses
  %i.bib = icmp eq i64 %index.next2084, %n.vec2073
  br i1 %i.bib, label %middle.block2085, label %vector.body2076, !llvm.loop !381

middle.block2085:                                 ; preds = %vector.body2076
  %cmp.n2086 = icmp eq i64 %n.vec2073, %wide.trip.count942
  br i1 %cmp.n2086, label %.loopexit, label %scalar.ph2062.preheader

scalar.ph2062.preheader:                          ; preds = %vector.memcheck2064, %.lr.ph735, %middle.block2085
  %indvars.iv939.ph = phi i64 [ 0, %vector.memcheck2064 ], [ 0, %.lr.ph735 ], [ %n.vec2073, %middle.block2085 ] ; 6 uses
  %xtraiter2930 = and i64 %wide.trip.count942, 1
  %lcmp.mod2931.not = icmp eq i64 %xtraiter2930, 0
  br i1 %lcmp.mod2931.not, label %scalar.ph2062.prol.loopexit, label %scalar.ph2062.prol

scalar.ph2062.prol:                               ; preds = %scalar.ph2062.preheader
  %i.bic = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv939.ph
  %i.bid = load double, ptr %i.bic, align 8, !tbaa !52
  %i.bie = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv939.ph
  %i.bif = load double, ptr %i.bie, align 8, !tbaa !52
  %i.big = fneg double %i.bif
  %i.bih = tail call double @llvm.fmuladd.f64(double %1, double %i.bid, double %i.big)
  %i.bii = getelementptr inbounds nuw [8 x i8], ptr %i.bhl, i64 %indvars.iv939.ph ; 2 uses
  %i.bij = load double, ptr %i.bii, align 8, !tbaa !52
  %i.bik = fsub double %i.bih, %i.bij
  store double %i.bik, ptr %i.bii, align 8, !tbaa !52
  %indvars.iv.next940.prol = or disjoint i64 %indvars.iv939.ph, 1
  br label %scalar.ph2062.prol.loopexit

scalar.ph2062.prol.loopexit:                      ; preds = %scalar.ph2062.prol, %scalar.ph2062.preheader
  %indvars.iv939.unr = phi i64 [ %indvars.iv939.ph, %scalar.ph2062.preheader ], [ %indvars.iv.next940.prol, %scalar.ph2062.prol ]
  %i.bil = add nsw i64 %wide.trip.count942, -1
  %i.bim = icmp eq i64 %indvars.iv939.ph, %i.bil
  br i1 %i.bim, label %.loopexit, label %scalar.ph2062

scalar.ph2062:                                    ; preds = %scalar.ph2062.prol.loopexit, %scalar.ph2062
  %indvars.iv939 = phi i64 [ %indvars.iv.next940.1, %scalar.ph2062 ], [ %indvars.iv939.unr, %scalar.ph2062.prol.loopexit ] ; 5 uses
  %i.bin = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv939
  %i.bio = load double, ptr %i.bin, align 8, !tbaa !52
  %i.bip = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv939
  %i.biq = load double, ptr %i.bip, align 8, !tbaa !52
  %i.bir = fneg double %i.biq
  %i.bis = tail call double @llvm.fmuladd.f64(double %1, double %i.bio, double %i.bir)
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr %i.bhl, i64 %indvars.iv939 ; 2 uses
  %i.biu = load double, ptr %i.bit, align 8, !tbaa !52
  %i.biv = fsub double %i.bis, %i.biu
  store double %i.biv, ptr %i.bit, align 8, !tbaa !52
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 1 ; 3 uses
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next940
  %i.bix = load double, ptr %i.biw, align 8, !tbaa !52
  %i.biy = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next940
  %i.biz = load double, ptr %i.biy, align 8, !tbaa !52
  %i.bja = fneg double %i.biz
  %i.bjb = tail call double @llvm.fmuladd.f64(double %1, double %i.bix, double %i.bja)
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.bhl, i64 %indvars.iv.next940 ; 2 uses
  %i.bjd = load double, ptr %i.bjc, align 8, !tbaa !52
  %i.bje = fsub double %i.bjb, %i.bjd
  store double %i.bje, ptr %i.bjc, align 8, !tbaa !52
  %indvars.iv.next940.1 = add nuw nsw i64 %indvars.iv939, 2 ; 2 uses
  %exitcond943.not.1 = icmp eq i64 %indvars.iv.next940.1, %wide.trip.count942
  br i1 %exitcond943.not.1, label %.loopexit, label %scalar.ph2062, !llvm.loop !382

scalar.ph2024:                                    ; preds = %scalar.ph2024.prol.loopexit, %scalar.ph2024
  %indvars.iv934 = phi i64 [ %indvars.iv.next935.1, %scalar.ph2024 ], [ %indvars.iv934.unr, %scalar.ph2024.prol.loopexit ] ; 5 uses
  %i.bjf = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv934
  %i.bjg = load double, ptr %i.bjf, align 8, !tbaa !52
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv934
  %i.bji = load double, ptr %i.bjh, align 8, !tbaa !52
  %i.bjj = fmul double %3, %i.bji
  %i.bjk = tail call double @llvm.fmuladd.f64(double %1, double %i.bjg, double %i.bjj)
  %i.bjl = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %indvars.iv934 ; 2 uses
  %i.bjm = load double, ptr %i.bjl, align 8, !tbaa !52
  %i.bjn = fsub double %i.bjk, %i.bjm
  store double %i.bjn, ptr %i.bjl, align 8, !tbaa !52
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1 ; 3 uses
  %i.bjo = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next935
  %i.bjp = load double, ptr %i.bjo, align 8, !tbaa !52
  %i.bjq = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next935
  %i.bjr = load double, ptr %i.bjq, align 8, !tbaa !52
  %i.bjs = fmul double %3, %i.bjr
  %i.bjt = tail call double @llvm.fmuladd.f64(double %1, double %i.bjp, double %i.bjs)
  %i.bju = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %indvars.iv.next935 ; 2 uses
  %i.bjv = load double, ptr %i.bju, align 8, !tbaa !52
  %i.bjw = fsub double %i.bjt, %i.bjv
  store double %i.bjw, ptr %i.bju, align 8, !tbaa !52
  %indvars.iv.next935.1 = add nuw nsw i64 %indvars.iv934, 2 ; 2 uses
  %exitcond938.not.1 = icmp eq i64 %indvars.iv.next935.1, %wide.trip.count937
  br i1 %exitcond938.not.1, label %.loopexit, label %scalar.ph2024, !llvm.loop !383

bb.bv:                                            ; preds = %bb.be
  br i1 %i.alm, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.o, label %.preheader673, label %bb.bx

.preheader673:                                    ; preds = %bb.bw
  %i.bjx = icmp sgt i32 %i.e, 0
  br i1 %i.bjx, label %.lr.ph731, label %.loopexit

.lr.ph731:                                        ; preds = %.preheader673
  %i.bjy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count932 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1995 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1995, label %scalar.ph1994.preheader, label %vector.memcheck1996

vector.memcheck1996:                              ; preds = %.lr.ph731
  %i.bka = shl nuw nsw i64 %wide.trip.count932, 3 ; 2 uses
  %i.bkb = getelementptr i8, ptr %i.bjz, i64 %i.bka
  %i.bkc = getelementptr i8, ptr %.0583, i64 %i.bka
  %bound01997 = icmp ult ptr %i.bjz, %i.bkc
  %bound11998 = icmp ult ptr %.0583, %i.bkb
  %found.conflict1999 = and i1 %bound01997, %bound11998
  br i1 %found.conflict1999, label %scalar.ph1994.preheader, label %vector.ph2000

vector.ph2000:                                    ; preds = %vector.memcheck1996
  %n.vec2001 = and i64 %wide.trip.count932, 2147483644 ; 3 uses
  %broadcast.splatinsert2002 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat2003 = shufflevector <2 x double> %broadcast.splatinsert2002, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2004

vector.body2004:                                  ; preds = %vector.body2004, %vector.ph2000
  %index2005 = phi i64 [ 0, %vector.ph2000 ], [ %index.next2010, %vector.body2004 ] ; 3 uses
  %i.bkd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2005 ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16
  %wide.load2006 = load <2 x double>, ptr %i.bkd, align 8, !tbaa !52, !alias.scope !552
  %wide.load2007 = load <2 x double>, ptr %i.bke, align 8, !tbaa !52, !alias.scope !552
  %i.bkf = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %index2005 ; 3 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 16 ; 2 uses
  %wide.load2008 = load <2 x double>, ptr %i.bkf, align 8, !tbaa !52, !alias.scope !553, !noalias !552
  %wide.load2009 = load <2 x double>, ptr %i.bkg, align 8, !tbaa !52, !alias.scope !553, !noalias !552
  %i.bkh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2003, <2 x double> %wide.load2008, <2 x double> %wide.load2006)
  %i.bki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2003, <2 x double> %wide.load2009, <2 x double> %wide.load2007)
  store <2 x double> %i.bkh, ptr %i.bkf, align 8, !tbaa !52, !alias.scope !553, !noalias !552
  store <2 x double> %i.bki, ptr %i.bkg, align 8, !tbaa !52, !alias.scope !553, !noalias !552
  %index.next2010 = add nuw i64 %index2005, 4     ; 2 uses
  %i.bkj = icmp eq i64 %index.next2010, %n.vec2001
  br i1 %i.bkj, label %middle.block2011, label %vector.body2004, !llvm.loop !387

middle.block2011:                                 ; preds = %vector.body2004
  %cmp.n2012 = icmp eq i64 %n.vec2001, %wide.trip.count932
  br i1 %cmp.n2012, label %.loopexit, label %scalar.ph1994.preheader

scalar.ph1994.preheader:                          ; preds = %vector.memcheck1996, %.lr.ph731, %middle.block2011
  %indvars.iv929.ph = phi i64 [ 0, %vector.memcheck1996 ], [ 0, %.lr.ph731 ], [ %n.vec2001, %middle.block2011 ] ; 5 uses
  %xtraiter2924 = and i64 %wide.trip.count932, 1
  %lcmp.mod2925.not = icmp eq i64 %xtraiter2924, 0
  br i1 %lcmp.mod2925.not, label %scalar.ph1994.prol.loopexit, label %scalar.ph1994.prol

scalar.ph1994.prol:                               ; preds = %scalar.ph1994.preheader
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv929.ph
  %i.bkl = load double, ptr %i.bkk, align 8, !tbaa !52
  %i.bkm = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %indvars.iv929.ph ; 2 uses
  %i.bkn = load double, ptr %i.bkm, align 8, !tbaa !52
  %i.bko = tail call double @llvm.fmuladd.f64(double %5, double %i.bkn, double %i.bkl)
  store double %i.bko, ptr %i.bkm, align 8, !tbaa !52
  %indvars.iv.next930.prol = or disjoint i64 %indvars.iv929.ph, 1
  br label %scalar.ph1994.prol.loopexit

scalar.ph1994.prol.loopexit:                      ; preds = %scalar.ph1994.prol, %scalar.ph1994.preheader
  %indvars.iv929.unr = phi i64 [ %indvars.iv929.ph, %scalar.ph1994.preheader ], [ %indvars.iv.next930.prol, %scalar.ph1994.prol ]
  %i.bkp = add nsw i64 %wide.trip.count932, -1
  %i.bkq = icmp eq i64 %indvars.iv929.ph, %i.bkp
  br i1 %i.bkq, label %.loopexit, label %scalar.ph1994

scalar.ph1994:                                    ; preds = %scalar.ph1994.prol.loopexit, %scalar.ph1994
  %indvars.iv929 = phi i64 [ %indvars.iv.next930.1, %scalar.ph1994 ], [ %indvars.iv929.unr, %scalar.ph1994.prol.loopexit ] ; 4 uses
  %i.bkr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv929
  %i.bks = load double, ptr %i.bkr, align 8, !tbaa !52
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %indvars.iv929 ; 2 uses
  %i.bku = load double, ptr %i.bkt, align 8, !tbaa !52
  %i.bkv = tail call double @llvm.fmuladd.f64(double %5, double %i.bku, double %i.bks)
  store double %i.bkv, ptr %i.bkt, align 8, !tbaa !52
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 1 ; 2 uses
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next930
  %i.bkx = load double, ptr %i.bkw, align 8, !tbaa !52
  %i.bky = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %indvars.iv.next930 ; 2 uses
  %i.bkz = load double, ptr %i.bky, align 8, !tbaa !52
  %i.bla = tail call double @llvm.fmuladd.f64(double %5, double %i.bkz, double %i.bkx)
  store double %i.bla, ptr %i.bky, align 8, !tbaa !52
  %indvars.iv.next930.1 = add nuw nsw i64 %indvars.iv929, 2 ; 2 uses
  %exitcond933.not.1 = icmp eq i64 %indvars.iv.next930.1, %wide.trip.count932
  br i1 %exitcond933.not.1, label %.loopexit, label %scalar.ph1994, !llvm.loop !388

bb.bx:                                            ; preds = %bb.bw
  %i.blb = fcmp oeq double %3, 1.000000e+00
  br i1 %i.blb, label %.preheader675, label %bb.by

.preheader675:                                    ; preds = %bb.bx
  %i.blc = icmp sgt i32 %i.e, 0
  br i1 %i.blc, label %.lr.ph729, label %.loopexit

.lr.ph729:                                        ; preds = %.preheader675
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count927 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1964 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check1964, label %scalar.ph1963.preheader, label %vector.memcheck1965

vector.memcheck1965:                              ; preds = %.lr.ph729
  %i.blf = shl nuw nsw i64 %wide.trip.count927, 3 ; 3 uses
  %i.blg = getelementptr i8, ptr %i.ble, i64 %i.blf ; 2 uses
  %i.blh = getelementptr i8, ptr %.0583, i64 %i.blf
  %24 = getelementptr i8, ptr %.0579, i64 %i.blf
  %bound01966.a = icmp ult ptr %i.ble, %i.blh
  %bound11967 = icmp ult ptr %.0583, %i.blg
  %found.conflict1968 = and i1 %bound01966.a, %bound11967
  %bound01969 = icmp ult ptr %i.ble, %24
  %bound11970 = icmp ult ptr %.0579, %i.blg
  %found.conflict1971 = and i1 %bound01969, %bound11970
  %conflict.rdx1972 = or i1 %found.conflict1968, %found.conflict1971
  br i1 %conflict.rdx1972, label %scalar.ph1963.preheader, label %vector.ph1973

vector.ph1973:                                    ; preds = %vector.memcheck1965
  %n.vec1974 = and i64 %wide.trip.count927, 2147483644 ; 3 uses
  %broadcast.splatinsert1975 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1976 = shufflevector <2 x double> %broadcast.splatinsert1975, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1977

vector.body1977:                                  ; preds = %vector.body1977, %vector.ph1973
  %index1978 = phi i64 [ 0, %vector.ph1973 ], [ %index.next1985, %vector.body1977 ] ; 4 uses
  %i.bli = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1978 ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 16
  %wide.load1979 = load <2 x double>, ptr %i.bli, align 8, !tbaa !52, !alias.scope !554
  %wide.load1980 = load <2 x double>, ptr %i.blj, align 8, !tbaa !52, !alias.scope !554
  %i.blk = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1978 ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 16
  %wide.load1981 = load <2 x double>, ptr %i.blk, align 8, !tbaa !52, !alias.scope !555
  %wide.load1982 = load <2 x double>, ptr %i.bll, align 8, !tbaa !52, !alias.scope !555
  %i.blm = fadd <2 x double> %wide.load1979, %wide.load1981
  %i.bln = fadd <2 x double> %wide.load1980, %wide.load1982
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %i.ble, i64 %index1978 ; 3 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 16 ; 2 uses
  %wide.load1983 = load <2 x double>, ptr %i.blo, align 8, !tbaa !52, !alias.scope !556, !noalias !557
  %wide.load1984 = load <2 x double>, ptr %i.blp, align 8, !tbaa !52, !alias.scope !556, !noalias !557
  %i.blq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1976, <2 x double> %wide.load1983, <2 x double> %i.blm)
  %i.blr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1976, <2 x double> %wide.load1984, <2 x double> %i.bln)
  store <2 x double> %i.blq, ptr %i.blo, align 8, !tbaa !52, !alias.scope !556, !noalias !557
  store <2 x double> %i.blr, ptr %i.blp, align 8, !tbaa !52, !alias.scope !556, !noalias !557
  %index.next1985 = add nuw i64 %index1978, 4     ; 2 uses
  %i.bls = icmp eq i64 %index.next1985, %n.vec1974
  br i1 %i.bls, label %middle.block1986, label %vector.body1977, !llvm.loop !393

middle.block1986:                                 ; preds = %vector.body1977
  %cmp.n1987 = icmp eq i64 %n.vec1974, %wide.trip.count927
  br i1 %cmp.n1987, label %.loopexit, label %scalar.ph1963.preheader

scalar.ph1963.preheader:                          ; preds = %vector.memcheck1965, %.lr.ph729, %middle.block1986
  %indvars.iv924.ph = phi i64 [ 0, %vector.memcheck1965 ], [ 0, %.lr.ph729 ], [ %n.vec1974, %middle.block1986 ] ; 6 uses
  %xtraiter2921 = and i64 %wide.trip.count927, 1
  %lcmp.mod2922.not = icmp eq i64 %xtraiter2921, 0
  br i1 %lcmp.mod2922.not, label %scalar.ph1963.prol.loopexit, label %scalar.ph1963.prol

scalar.ph1963.prol:                               ; preds = %scalar.ph1963.preheader
  %i.blt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv924.ph
  %i.blu = load double, ptr %i.blt, align 8, !tbaa !52
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv924.ph
  %i.blw = load double, ptr %i.blv, align 8, !tbaa !52
  %i.blx = fadd double %i.blu, %i.blw
  %i.bly = getelementptr inbounds nuw [8 x i8], ptr %i.ble, i64 %indvars.iv924.ph ; 2 uses
  %i.blz = load double, ptr %i.bly, align 8, !tbaa !52
  %i.bma = tail call double @llvm.fmuladd.f64(double %5, double %i.blz, double %i.blx)
  store double %i.bma, ptr %i.bly, align 8, !tbaa !52
  %indvars.iv.next925.prol = or disjoint i64 %indvars.iv924.ph, 1
  br label %scalar.ph1963.prol.loopexit

scalar.ph1963.prol.loopexit:                      ; preds = %scalar.ph1963.prol, %scalar.ph1963.preheader
  %indvars.iv924.unr = phi i64 [ %indvars.iv924.ph, %scalar.ph1963.preheader ], [ %indvars.iv.next925.prol, %scalar.ph1963.prol ]
  %i.bmb = add nsw i64 %wide.trip.count927, -1
  %i.bmc = icmp eq i64 %indvars.iv924.ph, %i.bmb
  br i1 %i.bmc, label %.loopexit, label %scalar.ph1963

scalar.ph1963:                                    ; preds = %scalar.ph1963.prol.loopexit, %scalar.ph1963
  %indvars.iv924 = phi i64 [ %indvars.iv.next925.1, %scalar.ph1963 ], [ %indvars.iv924.unr, %scalar.ph1963.prol.loopexit ] ; 5 uses
  %i.bmd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv924
  %i.bme = load double, ptr %i.bmd, align 8, !tbaa !52
  %i.bmf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv924
  %i.bmg = load double, ptr %i.bmf, align 8, !tbaa !52
  %i.bmh = fadd double %i.bme, %i.bmg
  %i.bmi = getelementptr inbounds nuw [8 x i8], ptr %i.ble, i64 %indvars.iv924 ; 2 uses
  %i.bmj = load double, ptr %i.bmi, align 8, !tbaa !52
  %i.bmk = tail call double @llvm.fmuladd.f64(double %5, double %i.bmj, double %i.bmh)
  store double %i.bmk, ptr %i.bmi, align 8, !tbaa !52
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1 ; 3 uses
  %i.bml = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next925
  %i.bmm = load double, ptr %i.bml, align 8, !tbaa !52
  %i.bmn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next925
  %i.bmo = load double, ptr %i.bmn, align 8, !tbaa !52
  %i.bmp = fadd double %i.bmm, %i.bmo
  %i.bmq = getelementptr inbounds nuw [8 x i8], ptr %i.ble, i64 %indvars.iv.next925 ; 2 uses
  %i.bmr = load double, ptr %i.bmq, align 8, !tbaa !52
  %i.bms = tail call double @llvm.fmuladd.f64(double %5, double %i.bmr, double %i.bmp)
  store double %i.bms, ptr %i.bmq, align 8, !tbaa !52
  %indvars.iv.next925.1 = add nuw nsw i64 %indvars.iv924, 2 ; 2 uses
  %exitcond928.not.1 = icmp eq i64 %indvars.iv.next925.1, %wide.trip.count927
  br i1 %exitcond928.not.1, label %.loopexit, label %scalar.ph1963, !llvm.loop !394

bb.by:                                            ; preds = %bb.bx
  %i.bmt = fcmp oeq double %3, -1.000000e+00
  %i.bmu = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.bmt, label %.preheader677, label %.preheader679

.preheader679:                                    ; preds = %bb.by
  br i1 %i.bmu, label %.lr.ph725, label %.loopexit

.lr.ph725:                                        ; preds = %.preheader679
  %i.bmv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count917 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1890 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1890, label %scalar.ph1889.preheader, label %vector.memcheck1891

vector.memcheck1891:                              ; preds = %.lr.ph725
  %i.bmx = shl nuw nsw i64 %wide.trip.count917, 3 ; 3 uses
  %i.bmy = getelementptr i8, ptr %i.bmw, i64 %i.bmx ; 2 uses
  %i.bmz = getelementptr i8, ptr %.0583, i64 %i.bmx
  %25 = getelementptr i8, ptr %.0579, i64 %i.bmx
  %bound01892.a = icmp ult ptr %i.bmw, %i.bmz
  %bound11893 = icmp ult ptr %.0583, %i.bmy
  %found.conflict1894 = and i1 %bound01892.a, %bound11893
  %bound01895 = icmp ult ptr %i.bmw, %25
  %bound11896 = icmp ult ptr %.0579, %i.bmy
  %found.conflict1897 = and i1 %bound01895, %bound11896
  %conflict.rdx1898 = or i1 %found.conflict1894, %found.conflict1897
  br i1 %conflict.rdx1898, label %scalar.ph1889.preheader, label %vector.ph1899

vector.ph1899:                                    ; preds = %vector.memcheck1891
  %n.vec1900 = and i64 %wide.trip.count917, 2147483644 ; 3 uses
  %broadcast.splatinsert1901 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1902 = shufflevector <2 x double> %broadcast.splatinsert1901, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1903 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1904 = shufflevector <2 x double> %broadcast.splatinsert1903, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1905

vector.body1905:                                  ; preds = %vector.body1905, %vector.ph1899
  %index1906 = phi i64 [ 0, %vector.ph1899 ], [ %index.next1913, %vector.body1905 ] ; 4 uses
  %i.bna = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1906 ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 16
  %wide.load1907 = load <2 x double>, ptr %i.bna, align 8, !tbaa !52, !alias.scope !558
  %wide.load1908 = load <2 x double>, ptr %i.bnb, align 8, !tbaa !52, !alias.scope !558
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1906 ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 16
  %wide.load1909 = load <2 x double>, ptr %i.bnc, align 8, !tbaa !52, !alias.scope !559
  %wide.load1910 = load <2 x double>, ptr %i.bnd, align 8, !tbaa !52, !alias.scope !559
  %i.bne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1902, <2 x double> %wide.load1909, <2 x double> %wide.load1907)
  %i.bnf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1902, <2 x double> %wide.load1910, <2 x double> %wide.load1908)
  %i.bng = getelementptr inbounds nuw [8 x i8], ptr %i.bmw, i64 %index1906 ; 3 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 16 ; 2 uses
  %wide.load1911 = load <2 x double>, ptr %i.bng, align 8, !tbaa !52, !alias.scope !560, !noalias !561
  %wide.load1912 = load <2 x double>, ptr %i.bnh, align 8, !tbaa !52, !alias.scope !560, !noalias !561
  %i.bni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1904, <2 x double> %wide.load1911, <2 x double> %i.bne)
  %i.bnj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1904, <2 x double> %wide.load1912, <2 x double> %i.bnf)
  store <2 x double> %i.bni, ptr %i.bng, align 8, !tbaa !52, !alias.scope !560, !noalias !561
  store <2 x double> %i.bnj, ptr %i.bnh, align 8, !tbaa !52, !alias.scope !560, !noalias !561
  %index.next1913 = add nuw i64 %index1906, 4     ; 2 uses
  %i.bnk = icmp eq i64 %index.next1913, %n.vec1900
  br i1 %i.bnk, label %middle.block1914, label %vector.body1905, !llvm.loop !399

middle.block1914:                                 ; preds = %vector.body1905
  %cmp.n1915 = icmp eq i64 %n.vec1900, %wide.trip.count917
  br i1 %cmp.n1915, label %.loopexit, label %scalar.ph1889.preheader

scalar.ph1889.preheader:                          ; preds = %vector.memcheck1891, %.lr.ph725, %middle.block1914
  %indvars.iv914.ph = phi i64 [ 0, %vector.memcheck1891 ], [ 0, %.lr.ph725 ], [ %n.vec1900, %middle.block1914 ] ; 6 uses
  %xtraiter2915 = and i64 %wide.trip.count917, 1
  %lcmp.mod2916.not = icmp eq i64 %xtraiter2915, 0
  br i1 %lcmp.mod2916.not, label %scalar.ph1889.prol.loopexit, label %scalar.ph1889.prol

scalar.ph1889.prol:                               ; preds = %scalar.ph1889.preheader
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv914.ph
  %i.bnm = load double, ptr %i.bnl, align 8, !tbaa !52
  %i.bnn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv914.ph
  %i.bno = load double, ptr %i.bnn, align 8, !tbaa !52
  %i.bnp = tail call double @llvm.fmuladd.f64(double %3, double %i.bno, double %i.bnm)
  %i.bnq = getelementptr inbounds nuw [8 x i8], ptr %i.bmw, i64 %indvars.iv914.ph ; 2 uses
  %i.bnr = load double, ptr %i.bnq, align 8, !tbaa !52
  %i.bns = tail call double @llvm.fmuladd.f64(double %5, double %i.bnr, double %i.bnp)
  store double %i.bns, ptr %i.bnq, align 8, !tbaa !52
  %indvars.iv.next915.prol = or disjoint i64 %indvars.iv914.ph, 1
  br label %scalar.ph1889.prol.loopexit

scalar.ph1889.prol.loopexit:                      ; preds = %scalar.ph1889.prol, %scalar.ph1889.preheader
  %indvars.iv914.unr = phi i64 [ %indvars.iv914.ph, %scalar.ph1889.preheader ], [ %indvars.iv.next915.prol, %scalar.ph1889.prol ]
  %i.bnt = add nsw i64 %wide.trip.count917, -1
  %i.bnu = icmp eq i64 %indvars.iv914.ph, %i.bnt
  br i1 %i.bnu, label %.loopexit, label %scalar.ph1889

.preheader677:                                    ; preds = %bb.by
  br i1 %i.bmu, label %.lr.ph727, label %.loopexit

.lr.ph727:                                        ; preds = %.preheader677
  %i.bnv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count922 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1928 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check1928, label %scalar.ph1927.preheader, label %vector.memcheck1929

vector.memcheck1929:                              ; preds = %.lr.ph727
  %i.bnx = shl nuw nsw i64 %wide.trip.count922, 3 ; 3 uses
  %i.bny = getelementptr i8, ptr %i.bnw, i64 %i.bnx ; 2 uses
  %i.bnz = getelementptr i8, ptr %.0583, i64 %i.bnx
  %26 = getelementptr i8, ptr %.0579, i64 %i.bnx
  %bound01930.a = icmp ult ptr %i.bnw, %i.bnz
  %bound11931 = icmp ult ptr %.0583, %i.bny
  %found.conflict1932 = and i1 %bound01930.a, %bound11931
  %bound01933 = icmp ult ptr %i.bnw, %26
  %bound11934 = icmp ult ptr %.0579, %i.bny
  %found.conflict1935 = and i1 %bound01933, %bound11934
  %conflict.rdx1936 = or i1 %found.conflict1932, %found.conflict1935
  br i1 %conflict.rdx1936, label %scalar.ph1927.preheader, label %vector.ph1937

vector.ph1937:                                    ; preds = %vector.memcheck1929
  %n.vec1938 = and i64 %wide.trip.count922, 2147483644 ; 3 uses
  %broadcast.splatinsert1939 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1940 = shufflevector <2 x double> %broadcast.splatinsert1939, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1941

vector.body1941:                                  ; preds = %vector.body1941, %vector.ph1937
  %index1942 = phi i64 [ 0, %vector.ph1937 ], [ %index.next1949, %vector.body1941 ] ; 4 uses
  %i.boa = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1942 ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 16
  %wide.load1943 = load <2 x double>, ptr %i.boa, align 8, !tbaa !52, !alias.scope !562
  %wide.load1944 = load <2 x double>, ptr %i.bob, align 8, !tbaa !52, !alias.scope !562
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1942 ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 16
  %wide.load1945 = load <2 x double>, ptr %i.boc, align 8, !tbaa !52, !alias.scope !563
  %wide.load1946 = load <2 x double>, ptr %i.bod, align 8, !tbaa !52, !alias.scope !563
  %i.boe = fsub <2 x double> %wide.load1943, %wide.load1945
  %i.bof = fsub <2 x double> %wide.load1944, %wide.load1946
  %i.bog = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %index1942 ; 3 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 16 ; 2 uses
  %wide.load1947 = load <2 x double>, ptr %i.bog, align 8, !tbaa !52, !alias.scope !564, !noalias !565
  %wide.load1948 = load <2 x double>, ptr %i.boh, align 8, !tbaa !52, !alias.scope !564, !noalias !565
  %i.boi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1940, <2 x double> %wide.load1947, <2 x double> %i.boe)
  %i.boj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1940, <2 x double> %wide.load1948, <2 x double> %i.bof)
  store <2 x double> %i.boi, ptr %i.bog, align 8, !tbaa !52, !alias.scope !564, !noalias !565
  store <2 x double> %i.boj, ptr %i.boh, align 8, !tbaa !52, !alias.scope !564, !noalias !565
  %index.next1949 = add nuw i64 %index1942, 4     ; 2 uses
  %i.bok = icmp eq i64 %index.next1949, %n.vec1938
  br i1 %i.bok, label %middle.block1950, label %vector.body1941, !llvm.loop !404

middle.block1950:                                 ; preds = %vector.body1941
  %cmp.n1951 = icmp eq i64 %n.vec1938, %wide.trip.count922
  br i1 %cmp.n1951, label %.loopexit, label %scalar.ph1927.preheader

scalar.ph1927.preheader:                          ; preds = %vector.memcheck1929, %.lr.ph727, %middle.block1950
  %indvars.iv919.ph = phi i64 [ 0, %vector.memcheck1929 ], [ 0, %.lr.ph727 ], [ %n.vec1938, %middle.block1950 ] ; 6 uses
  %xtraiter2918 = and i64 %wide.trip.count922, 1
  %lcmp.mod2919.not = icmp eq i64 %xtraiter2918, 0
  br i1 %lcmp.mod2919.not, label %scalar.ph1927.prol.loopexit, label %scalar.ph1927.prol

scalar.ph1927.prol:                               ; preds = %scalar.ph1927.preheader
  %i.bol = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv919.ph
  %i.bom = load double, ptr %i.bol, align 8, !tbaa !52
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv919.ph
  %i.boo = load double, ptr %i.bon, align 8, !tbaa !52
  %i.bop = fsub double %i.bom, %i.boo
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %indvars.iv919.ph ; 2 uses
  %i.bor = load double, ptr %i.boq, align 8, !tbaa !52
  %i.bos = tail call double @llvm.fmuladd.f64(double %5, double %i.bor, double %i.bop)
  store double %i.bos, ptr %i.boq, align 8, !tbaa !52
  %indvars.iv.next920.prol = or disjoint i64 %indvars.iv919.ph, 1
  br label %scalar.ph1927.prol.loopexit

scalar.ph1927.prol.loopexit:                      ; preds = %scalar.ph1927.prol, %scalar.ph1927.preheader
  %indvars.iv919.unr = phi i64 [ %indvars.iv919.ph, %scalar.ph1927.preheader ], [ %indvars.iv.next920.prol, %scalar.ph1927.prol ]
  %i.bot = add nsw i64 %wide.trip.count922, -1
  %i.bou = icmp eq i64 %indvars.iv919.ph, %i.bot
  br i1 %i.bou, label %.loopexit, label %scalar.ph1927

scalar.ph1927:                                    ; preds = %scalar.ph1927.prol.loopexit, %scalar.ph1927
  %indvars.iv919 = phi i64 [ %indvars.iv.next920.1, %scalar.ph1927 ], [ %indvars.iv919.unr, %scalar.ph1927.prol.loopexit ] ; 5 uses
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv919
  %i.bow = load double, ptr %i.bov, align 8, !tbaa !52
  %i.box = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv919
  %i.boy = load double, ptr %i.box, align 8, !tbaa !52
  %i.boz = fsub double %i.bow, %i.boy
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %indvars.iv919 ; 2 uses
  %i.bpb = load double, ptr %i.bpa, align 8, !tbaa !52
  %i.bpc = tail call double @llvm.fmuladd.f64(double %5, double %i.bpb, double %i.boz)
  store double %i.bpc, ptr %i.bpa, align 8, !tbaa !52
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 1 ; 3 uses
  %i.bpd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next920
  %i.bpe = load double, ptr %i.bpd, align 8, !tbaa !52
  %i.bpf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next920
  %i.bpg = load double, ptr %i.bpf, align 8, !tbaa !52
  %i.bph = fsub double %i.bpe, %i.bpg
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %indvars.iv.next920 ; 2 uses
  %i.bpj = load double, ptr %i.bpi, align 8, !tbaa !52
  %i.bpk = tail call double @llvm.fmuladd.f64(double %5, double %i.bpj, double %i.bph)
  store double %i.bpk, ptr %i.bpi, align 8, !tbaa !52
  %indvars.iv.next920.1 = add nuw nsw i64 %indvars.iv919, 2 ; 2 uses
  %exitcond923.not.1 = icmp eq i64 %indvars.iv.next920.1, %wide.trip.count922
  br i1 %exitcond923.not.1, label %.loopexit, label %scalar.ph1927, !llvm.loop !405

scalar.ph1889:                                    ; preds = %scalar.ph1889.prol.loopexit, %scalar.ph1889
  %indvars.iv914 = phi i64 [ %indvars.iv.next915.1, %scalar.ph1889 ], [ %indvars.iv914.unr, %scalar.ph1889.prol.loopexit ] ; 5 uses
  %i.bpl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv914
  %i.bpm = load double, ptr %i.bpl, align 8, !tbaa !52
  %i.bpn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv914
  %i.bpo = load double, ptr %i.bpn, align 8, !tbaa !52
  %i.bpp = tail call double @llvm.fmuladd.f64(double %3, double %i.bpo, double %i.bpm)
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.bmw, i64 %indvars.iv914 ; 2 uses
  %i.bpr = load double, ptr %i.bpq, align 8, !tbaa !52
  %i.bps = tail call double @llvm.fmuladd.f64(double %5, double %i.bpr, double %i.bpp)
  store double %i.bps, ptr %i.bpq, align 8, !tbaa !52
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 1 ; 3 uses
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next915
  %i.bpu = load double, ptr %i.bpt, align 8, !tbaa !52
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next915
  %i.bpw = load double, ptr %i.bpv, align 8, !tbaa !52
  %i.bpx = tail call double @llvm.fmuladd.f64(double %3, double %i.bpw, double %i.bpu)
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %i.bmw, i64 %indvars.iv.next915 ; 2 uses
  %i.bpz = load double, ptr %i.bpy, align 8, !tbaa !52
  %i.bqa = tail call double @llvm.fmuladd.f64(double %5, double %i.bpz, double %i.bpx)
  store double %i.bqa, ptr %i.bpy, align 8, !tbaa !52
  %indvars.iv.next915.1 = add nuw nsw i64 %indvars.iv914, 2 ; 2 uses
  %exitcond918.not.1 = icmp eq i64 %indvars.iv.next915.1, %wide.trip.count917
  br i1 %exitcond918.not.1, label %.loopexit, label %scalar.ph1889, !llvm.loop !406

bb.bz:                                            ; preds = %bb.bv
  %i.bqb = fcmp oeq double %1, -1.000000e+00
  br i1 %i.bqb, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.o, label %.preheader681, label %bb.cb

.preheader681:                                    ; preds = %bb.ca
  %i.bqc = icmp sgt i32 %i.e, 0
  br i1 %i.bqc, label %.lr.ph723, label %.loopexit

.lr.ph723:                                        ; preds = %.preheader681
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count912 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1860 = icmp ult i32 %i.e, 4
  br i1 %min.iters.check1860, label %scalar.ph1859.preheader, label %vector.memcheck1861

vector.memcheck1861:                              ; preds = %.lr.ph723
  %i.bqf = shl nuw nsw i64 %wide.trip.count912, 3 ; 2 uses
  %i.bqg = getelementptr i8, ptr %i.bqe, i64 %i.bqf
  %i.bqh = getelementptr i8, ptr %.0583, i64 %i.bqf
  %bound01862 = icmp ult ptr %i.bqe, %i.bqh
  %bound11863 = icmp ult ptr %.0583, %i.bqg
  %found.conflict1864 = and i1 %bound01862, %bound11863
  br i1 %found.conflict1864, label %scalar.ph1859.preheader, label %vector.ph1865

vector.ph1865:                                    ; preds = %vector.memcheck1861
  %n.vec1866 = and i64 %wide.trip.count912, 2147483644 ; 3 uses
  %broadcast.splatinsert1867 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1868 = shufflevector <2 x double> %broadcast.splatinsert1867, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1869

vector.body1869:                                  ; preds = %vector.body1869, %vector.ph1865
  %index1870 = phi i64 [ 0, %vector.ph1865 ], [ %index.next1875, %vector.body1869 ] ; 3 uses
  %i.bqi = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1870 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 16
  %wide.load1871 = load <2 x double>, ptr %i.bqi, align 8, !tbaa !52, !alias.scope !566
  %wide.load1872 = load <2 x double>, ptr %i.bqj, align 8, !tbaa !52, !alias.scope !566
  %i.bqk = fneg <2 x double> %wide.load1871
  %i.bql = fneg <2 x double> %wide.load1872
  %i.bqm = getelementptr inbounds nuw [8 x i8], ptr %i.bqe, i64 %index1870 ; 3 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 16 ; 2 uses
  %wide.load1873 = load <2 x double>, ptr %i.bqm, align 8, !tbaa !52, !alias.scope !567, !noalias !566
  %wide.load1874 = load <2 x double>, ptr %i.bqn, align 8, !tbaa !52, !alias.scope !567, !noalias !566
  %i.bqo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1868, <2 x double> %wide.load1873, <2 x double> %i.bqk)
  %i.bqp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1868, <2 x double> %wide.load1874, <2 x double> %i.bql)
  store <2 x double> %i.bqo, ptr %i.bqm, align 8, !tbaa !52, !alias.scope !567, !noalias !566
  store <2 x double> %i.bqp, ptr %i.bqn, align 8, !tbaa !52, !alias.scope !567, !noalias !566
  %index.next1875 = add nuw i64 %index1870, 4     ; 2 uses
  %i.bqq = icmp eq i64 %index.next1875, %n.vec1866
  br i1 %i.bqq, label %middle.block1876, label %vector.body1869, !llvm.loop !410

middle.block1876:                                 ; preds = %vector.body1869
  %cmp.n1877 = icmp eq i64 %n.vec1866, %wide.trip.count912
  br i1 %cmp.n1877, label %.loopexit, label %scalar.ph1859.preheader

scalar.ph1859.preheader:                          ; preds = %vector.memcheck1861, %.lr.ph723, %middle.block1876
  %indvars.iv909.ph = phi i64 [ 0, %vector.memcheck1861 ], [ 0, %.lr.ph723 ], [ %n.vec1866, %middle.block1876 ] ; 5 uses
  %xtraiter2912 = and i64 %wide.trip.count912, 1
  %lcmp.mod2913.not = icmp eq i64 %xtraiter2912, 0
  br i1 %lcmp.mod2913.not, label %scalar.ph1859.prol.loopexit, label %scalar.ph1859.prol

scalar.ph1859.prol:                               ; preds = %scalar.ph1859.preheader
  %i.bqr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv909.ph
  %i.bqs = load double, ptr %i.bqr, align 8, !tbaa !52
  %i.bqt = fneg double %i.bqs
  %i.bqu = getelementptr inbounds nuw [8 x i8], ptr %i.bqe, i64 %indvars.iv909.ph ; 2 uses
  %i.bqv = load double, ptr %i.bqu, align 8, !tbaa !52
  %i.bqw = tail call double @llvm.fmuladd.f64(double %5, double %i.bqv, double %i.bqt)
  store double %i.bqw, ptr %i.bqu, align 8, !tbaa !52
  %indvars.iv.next910.prol = or disjoint i64 %indvars.iv909.ph, 1
  br label %scalar.ph1859.prol.loopexit

scalar.ph1859.prol.loopexit:                      ; preds = %scalar.ph1859.prol, %scalar.ph1859.preheader
  %indvars.iv909.unr = phi i64 [ %indvars.iv909.ph, %scalar.ph1859.preheader ], [ %indvars.iv.next910.prol, %scalar.ph1859.prol ]
  %i.bqx = add nsw i64 %wide.trip.count912, -1
  %i.bqy = icmp eq i64 %indvars.iv909.ph, %i.bqx
  br i1 %i.bqy, label %.loopexit, label %scalar.ph1859

scalar.ph1859:                                    ; preds = %scalar.ph1859.prol.loopexit, %scalar.ph1859
  %indvars.iv909 = phi i64 [ %indvars.iv.next910.1, %scalar.ph1859 ], [ %indvars.iv909.unr, %scalar.ph1859.prol.loopexit ] ; 4 uses
  %i.bqz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv909
  %i.bra = load double, ptr %i.bqz, align 8, !tbaa !52
  %i.brb = fneg double %i.bra
  %i.brc = getelementptr inbounds nuw [8 x i8], ptr %i.bqe, i64 %indvars.iv909 ; 2 uses
  %i.brd = load double, ptr %i.brc, align 8, !tbaa !52
  %i.bre = tail call double @llvm.fmuladd.f64(double %5, double %i.brd, double %i.brb)
  store double %i.bre, ptr %i.brc, align 8, !tbaa !52
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 1 ; 2 uses
  %i.brf = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next910
  %i.brg = load double, ptr %i.brf, align 8, !tbaa !52
  %i.brh = fneg double %i.brg
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.bqe, i64 %indvars.iv.next910 ; 2 uses
  %i.brj = load double, ptr %i.bri, align 8, !tbaa !52
  %i.brk = tail call double @llvm.fmuladd.f64(double %5, double %i.brj, double %i.brh)
  store double %i.brk, ptr %i.bri, align 8, !tbaa !52
  %indvars.iv.next910.1 = add nuw nsw i64 %indvars.iv909, 2 ; 2 uses
  %exitcond913.not.1 = icmp eq i64 %indvars.iv.next910.1, %wide.trip.count912
  br i1 %exitcond913.not.1, label %.loopexit, label %scalar.ph1859, !llvm.loop !411

bb.cb:                                            ; preds = %bb.ca
  %i.brl = fcmp oeq double %3, 1.000000e+00
  br i1 %i.brl, label %.preheader683, label %bb.cc

.preheader683:                                    ; preds = %bb.cb
  %i.brm = icmp sgt i32 %i.e, 0
  br i1 %i.brm, label %.lr.ph721, label %.loopexit

.lr.ph721:                                        ; preds = %.preheader683
  %i.brn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count907 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1829 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check1829, label %scalar.ph1828.preheader, label %vector.memcheck1830

vector.memcheck1830:                              ; preds = %.lr.ph721
  %i.brp = shl nuw nsw i64 %wide.trip.count907, 3 ; 3 uses
  %i.brq = getelementptr i8, ptr %i.bro, i64 %i.brp ; 2 uses
  %i.brr = getelementptr i8, ptr %.0583, i64 %i.brp
  %27 = getelementptr i8, ptr %.0579, i64 %i.brp
  %bound01831.a = icmp ult ptr %i.bro, %i.brr
  %bound11832 = icmp ult ptr %.0583, %i.brq
  %found.conflict1833 = and i1 %bound01831.a, %bound11832
  %bound01834 = icmp ult ptr %i.bro, %27
  %bound11835 = icmp ult ptr %.0579, %i.brq
  %found.conflict1836 = and i1 %bound01834, %bound11835
  %conflict.rdx1837 = or i1 %found.conflict1833, %found.conflict1836
  br i1 %conflict.rdx1837, label %scalar.ph1828.preheader, label %vector.ph1838

vector.ph1838:                                    ; preds = %vector.memcheck1830
  %n.vec1839 = and i64 %wide.trip.count907, 2147483644 ; 3 uses
  %broadcast.splatinsert1840 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1841 = shufflevector <2 x double> %broadcast.splatinsert1840, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1842

vector.body1842:                                  ; preds = %vector.body1842, %vector.ph1838
  %index1843 = phi i64 [ 0, %vector.ph1838 ], [ %index.next1850, %vector.body1842 ] ; 4 uses
  %i.brs = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1843 ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 16
  %wide.load1844 = load <2 x double>, ptr %i.brs, align 8, !tbaa !52, !alias.scope !568
  %wide.load1845 = load <2 x double>, ptr %i.brt, align 8, !tbaa !52, !alias.scope !568
  %i.bru = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1843 ; 2 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 16
  %wide.load1846 = load <2 x double>, ptr %i.bru, align 8, !tbaa !52, !alias.scope !569
  %wide.load1847 = load <2 x double>, ptr %i.brv, align 8, !tbaa !52, !alias.scope !569
  %i.brw = fsub <2 x double> %wide.load1846, %wide.load1844
  %i.brx = fsub <2 x double> %wide.load1847, %wide.load1845
  %i.bry = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %index1843 ; 3 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bry, i64 16 ; 2 uses
  %wide.load1848 = load <2 x double>, ptr %i.bry, align 8, !tbaa !52, !alias.scope !570, !noalias !571
  %wide.load1849 = load <2 x double>, ptr %i.brz, align 8, !tbaa !52, !alias.scope !570, !noalias !571
  %i.bsa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1841, <2 x double> %wide.load1848, <2 x double> %i.brw)
  %i.bsb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1841, <2 x double> %wide.load1849, <2 x double> %i.brx)
  store <2 x double> %i.bsa, ptr %i.bry, align 8, !tbaa !52, !alias.scope !570, !noalias !571
  store <2 x double> %i.bsb, ptr %i.brz, align 8, !tbaa !52, !alias.scope !570, !noalias !571
  %index.next1850 = add nuw i64 %index1843, 4     ; 2 uses
  %i.bsc = icmp eq i64 %index.next1850, %n.vec1839
  br i1 %i.bsc, label %middle.block1851, label %vector.body1842, !llvm.loop !416

middle.block1851:                                 ; preds = %vector.body1842
  %cmp.n1852 = icmp eq i64 %n.vec1839, %wide.trip.count907
  br i1 %cmp.n1852, label %.loopexit, label %scalar.ph1828.preheader

scalar.ph1828.preheader:                          ; preds = %vector.memcheck1830, %.lr.ph721, %middle.block1851
  %indvars.iv904.ph = phi i64 [ 0, %vector.memcheck1830 ], [ 0, %.lr.ph721 ], [ %n.vec1839, %middle.block1851 ] ; 6 uses
  %xtraiter2909 = and i64 %wide.trip.count907, 1
  %lcmp.mod2910.not = icmp eq i64 %xtraiter2909, 0
  br i1 %lcmp.mod2910.not, label %scalar.ph1828.prol.loopexit, label %scalar.ph1828.prol

scalar.ph1828.prol:                               ; preds = %scalar.ph1828.preheader
  %i.bsd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv904.ph
  %i.bse = load double, ptr %i.bsd, align 8, !tbaa !52
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv904.ph
  %i.bsg = load double, ptr %i.bsf, align 8, !tbaa !52
  %i.bsh = fsub double %i.bsg, %i.bse
  %i.bsi = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %indvars.iv904.ph ; 2 uses
  %i.bsj = load double, ptr %i.bsi, align 8, !tbaa !52
  %i.bsk = tail call double @llvm.fmuladd.f64(double %5, double %i.bsj, double %i.bsh)
  store double %i.bsk, ptr %i.bsi, align 8, !tbaa !52
  %indvars.iv.next905.prol = or disjoint i64 %indvars.iv904.ph, 1
  br label %scalar.ph1828.prol.loopexit

scalar.ph1828.prol.loopexit:                      ; preds = %scalar.ph1828.prol, %scalar.ph1828.preheader
  %indvars.iv904.unr = phi i64 [ %indvars.iv904.ph, %scalar.ph1828.preheader ], [ %indvars.iv.next905.prol, %scalar.ph1828.prol ]
  %i.bsl = add nsw i64 %wide.trip.count907, -1
  %i.bsm = icmp eq i64 %indvars.iv904.ph, %i.bsl
  br i1 %i.bsm, label %.loopexit, label %scalar.ph1828

scalar.ph1828:                                    ; preds = %scalar.ph1828.prol.loopexit, %scalar.ph1828
  %indvars.iv904 = phi i64 [ %indvars.iv.next905.1, %scalar.ph1828 ], [ %indvars.iv904.unr, %scalar.ph1828.prol.loopexit ] ; 5 uses
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv904
  %i.bso = load double, ptr %i.bsn, align 8, !tbaa !52
  %i.bsp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv904
  %i.bsq = load double, ptr %i.bsp, align 8, !tbaa !52
  %i.bsr = fsub double %i.bsq, %i.bso
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %indvars.iv904 ; 2 uses
  %i.bst = load double, ptr %i.bss, align 8, !tbaa !52
  %i.bsu = tail call double @llvm.fmuladd.f64(double %5, double %i.bst, double %i.bsr)
  store double %i.bsu, ptr %i.bss, align 8, !tbaa !52
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 1 ; 3 uses
  %i.bsv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next905
  %i.bsw = load double, ptr %i.bsv, align 8, !tbaa !52
  %i.bsx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next905
  %i.bsy = load double, ptr %i.bsx, align 8, !tbaa !52
  %i.bsz = fsub double %i.bsy, %i.bsw
  %i.bta = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %indvars.iv.next905 ; 2 uses
  %i.btb = load double, ptr %i.bta, align 8, !tbaa !52
  %i.btc = tail call double @llvm.fmuladd.f64(double %5, double %i.btb, double %i.bsz)
  store double %i.btc, ptr %i.bta, align 8, !tbaa !52
  %indvars.iv.next905.1 = add nuw nsw i64 %indvars.iv904, 2 ; 2 uses
  %exitcond908.not.1 = icmp eq i64 %indvars.iv.next905.1, %wide.trip.count907
  br i1 %exitcond908.not.1, label %.loopexit, label %scalar.ph1828, !llvm.loop !417

bb.cc:                                            ; preds = %bb.cb
  %i.btd = fcmp oeq double %3, -1.000000e+00
  %i.bte = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.btd, label %.preheader685, label %.preheader687

.preheader687:                                    ; preds = %bb.cc
  br i1 %i.bte, label %.lr.ph717, label %.loopexit

.lr.ph717:                                        ; preds = %.preheader687
  %i.btf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count897 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1755 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1755, label %scalar.ph1754.preheader, label %vector.memcheck1756

vector.memcheck1756:                              ; preds = %.lr.ph717
  %i.bth = shl nuw nsw i64 %wide.trip.count897, 3 ; 3 uses
  %i.bti = getelementptr i8, ptr %i.btg, i64 %i.bth ; 2 uses
  %i.btj = getelementptr i8, ptr %.0583, i64 %i.bth
  %28 = getelementptr i8, ptr %.0579, i64 %i.bth
  %bound01757.a = icmp ult ptr %i.btg, %i.btj
  %bound11758 = icmp ult ptr %.0583, %i.bti
  %found.conflict1759 = and i1 %bound01757.a, %bound11758
  %bound01760 = icmp ult ptr %i.btg, %28
  %bound11761 = icmp ult ptr %.0579, %i.bti
  %found.conflict1762 = and i1 %bound01760, %bound11761
  %conflict.rdx1763 = or i1 %found.conflict1759, %found.conflict1762
  br i1 %conflict.rdx1763, label %scalar.ph1754.preheader, label %vector.ph1764

vector.ph1764:                                    ; preds = %vector.memcheck1756
  %n.vec1765 = and i64 %wide.trip.count897, 2147483644 ; 3 uses
  %broadcast.splatinsert1766 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1767 = shufflevector <2 x double> %broadcast.splatinsert1766, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1768 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1769 = shufflevector <2 x double> %broadcast.splatinsert1768, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1770

vector.body1770:                                  ; preds = %vector.body1770, %vector.ph1764
  %index1771 = phi i64 [ 0, %vector.ph1764 ], [ %index.next1778, %vector.body1770 ] ; 4 uses
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1771 ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 16
  %wide.load1772 = load <2 x double>, ptr %i.btk, align 8, !tbaa !52, !alias.scope !572
  %wide.load1773 = load <2 x double>, ptr %i.btl, align 8, !tbaa !52, !alias.scope !572
  %i.btm = fneg <2 x double> %wide.load1772
  %i.btn = fneg <2 x double> %wide.load1773
  %i.bto = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1771 ; 2 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 16
  %wide.load1774 = load <2 x double>, ptr %i.bto, align 8, !tbaa !52, !alias.scope !573
  %wide.load1775 = load <2 x double>, ptr %i.btp, align 8, !tbaa !52, !alias.scope !573
  %i.btq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1767, <2 x double> %wide.load1774, <2 x double> %i.btm)
  %i.btr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1767, <2 x double> %wide.load1775, <2 x double> %i.btn)
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %index1771 ; 3 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 16 ; 2 uses
  %wide.load1776 = load <2 x double>, ptr %i.bts, align 8, !tbaa !52, !alias.scope !574, !noalias !575
  %wide.load1777 = load <2 x double>, ptr %i.btt, align 8, !tbaa !52, !alias.scope !574, !noalias !575
  %i.btu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1769, <2 x double> %wide.load1776, <2 x double> %i.btq)
  %i.btv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1769, <2 x double> %wide.load1777, <2 x double> %i.btr)
  store <2 x double> %i.btu, ptr %i.bts, align 8, !tbaa !52, !alias.scope !574, !noalias !575
  store <2 x double> %i.btv, ptr %i.btt, align 8, !tbaa !52, !alias.scope !574, !noalias !575
  %index.next1778 = add nuw i64 %index1771, 4     ; 2 uses
  %i.btw = icmp eq i64 %index.next1778, %n.vec1765
  br i1 %i.btw, label %middle.block1779, label %vector.body1770, !llvm.loop !422

middle.block1779:                                 ; preds = %vector.body1770
  %cmp.n1780 = icmp eq i64 %n.vec1765, %wide.trip.count897
  br i1 %cmp.n1780, label %.loopexit, label %scalar.ph1754.preheader

scalar.ph1754.preheader:                          ; preds = %vector.memcheck1756, %.lr.ph717, %middle.block1779
  %indvars.iv894.ph = phi i64 [ 0, %vector.memcheck1756 ], [ 0, %.lr.ph717 ], [ %n.vec1765, %middle.block1779 ] ; 6 uses
  %xtraiter2903 = and i64 %wide.trip.count897, 1
  %lcmp.mod2904.not = icmp eq i64 %xtraiter2903, 0
  br i1 %lcmp.mod2904.not, label %scalar.ph1754.prol.loopexit, label %scalar.ph1754.prol

scalar.ph1754.prol:                               ; preds = %scalar.ph1754.preheader
  %i.btx = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv894.ph
  %i.bty = load double, ptr %i.btx, align 8, !tbaa !52
  %i.btz = fneg double %i.bty
  %i.bua = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv894.ph
  %i.bub = load double, ptr %i.bua, align 8, !tbaa !52
  %i.buc = tail call double @llvm.fmuladd.f64(double %3, double %i.bub, double %i.btz)
  %i.bud = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %indvars.iv894.ph ; 2 uses
  %i.bue = load double, ptr %i.bud, align 8, !tbaa !52
  %i.buf = tail call double @llvm.fmuladd.f64(double %5, double %i.bue, double %i.buc)
  store double %i.buf, ptr %i.bud, align 8, !tbaa !52
  %indvars.iv.next895.prol = or disjoint i64 %indvars.iv894.ph, 1
  br label %scalar.ph1754.prol.loopexit

scalar.ph1754.prol.loopexit:                      ; preds = %scalar.ph1754.prol, %scalar.ph1754.preheader
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %scalar.ph1754.preheader ], [ %indvars.iv.next895.prol, %scalar.ph1754.prol ]
  %i.bug = add nsw i64 %wide.trip.count897, -1
  %i.buh = icmp eq i64 %indvars.iv894.ph, %i.bug
  br i1 %i.buh, label %.loopexit, label %scalar.ph1754

.preheader685:                                    ; preds = %bb.cc
  br i1 %i.bte, label %.lr.ph719, label %.loopexit

.lr.ph719:                                        ; preds = %.preheader685
  %i.bui = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count902 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1793 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check1793, label %scalar.ph1792.preheader, label %vector.memcheck1794

vector.memcheck1794:                              ; preds = %.lr.ph719
  %i.buk = shl nuw nsw i64 %wide.trip.count902, 3 ; 3 uses
  %i.bul = getelementptr i8, ptr %i.buj, i64 %i.buk ; 2 uses
  %i.bum = getelementptr i8, ptr %.0583, i64 %i.buk
  %29 = getelementptr i8, ptr %.0579, i64 %i.buk
  %bound01795.a = icmp ult ptr %i.buj, %i.bum
  %bound11796 = icmp ult ptr %.0583, %i.bul
  %found.conflict1797 = and i1 %bound01795.a, %bound11796
  %bound01798 = icmp ult ptr %i.buj, %29
  %bound11799 = icmp ult ptr %.0579, %i.bul
  %found.conflict1800 = and i1 %bound01798, %bound11799
  %conflict.rdx1801 = or i1 %found.conflict1797, %found.conflict1800
  br i1 %conflict.rdx1801, label %scalar.ph1792.preheader, label %vector.ph1802

vector.ph1802:                                    ; preds = %vector.memcheck1794
  %n.vec1803 = and i64 %wide.trip.count902, 2147483644 ; 3 uses
  %broadcast.splatinsert1804 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1805 = shufflevector <2 x double> %broadcast.splatinsert1804, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1806

vector.body1806:                                  ; preds = %vector.body1806, %vector.ph1802
  %index1807 = phi i64 [ 0, %vector.ph1802 ], [ %index.next1814, %vector.body1806 ] ; 4 uses
  %i.bun = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1807 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %wide.load1808 = load <2 x double>, ptr %i.bun, align 8, !tbaa !52, !alias.scope !576
  %wide.load1809 = load <2 x double>, ptr %i.buo, align 8, !tbaa !52, !alias.scope !576
  %i.bup = fneg <2 x double> %wide.load1808
  %i.buq = fneg <2 x double> %wide.load1809
  %i.bur = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1807 ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 16
  %wide.load1810 = load <2 x double>, ptr %i.bur, align 8, !tbaa !52, !alias.scope !577
  %wide.load1811 = load <2 x double>, ptr %i.bus, align 8, !tbaa !52, !alias.scope !577
  %i.but = fsub <2 x double> %i.bup, %wide.load1810
  %i.buu = fsub <2 x double> %i.buq, %wide.load1811
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %i.buj, i64 %index1807 ; 3 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 16 ; 2 uses
  %wide.load1812 = load <2 x double>, ptr %i.buv, align 8, !tbaa !52, !alias.scope !578, !noalias !579
  %wide.load1813 = load <2 x double>, ptr %i.buw, align 8, !tbaa !52, !alias.scope !578, !noalias !579
  %i.bux = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1805, <2 x double> %wide.load1812, <2 x double> %i.but)
  %i.buy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1805, <2 x double> %wide.load1813, <2 x double> %i.buu)
  store <2 x double> %i.bux, ptr %i.buv, align 8, !tbaa !52, !alias.scope !578, !noalias !579
  store <2 x double> %i.buy, ptr %i.buw, align 8, !tbaa !52, !alias.scope !578, !noalias !579
  %index.next1814 = add nuw i64 %index1807, 4     ; 2 uses
  %i.buz = icmp eq i64 %index.next1814, %n.vec1803
  br i1 %i.buz, label %middle.block1815, label %vector.body1806, !llvm.loop !427

middle.block1815:                                 ; preds = %vector.body1806
  %cmp.n1816 = icmp eq i64 %n.vec1803, %wide.trip.count902
  br i1 %cmp.n1816, label %.loopexit, label %scalar.ph1792.preheader

scalar.ph1792.preheader:                          ; preds = %vector.memcheck1794, %.lr.ph719, %middle.block1815
  %indvars.iv899.ph = phi i64 [ 0, %vector.memcheck1794 ], [ 0, %.lr.ph719 ], [ %n.vec1803, %middle.block1815 ] ; 6 uses
  %xtraiter2906 = and i64 %wide.trip.count902, 1
  %lcmp.mod2907.not = icmp eq i64 %xtraiter2906, 0
  br i1 %lcmp.mod2907.not, label %scalar.ph1792.prol.loopexit, label %scalar.ph1792.prol

scalar.ph1792.prol:                               ; preds = %scalar.ph1792.preheader
  %i.bva = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv899.ph
  %i.bvb = load double, ptr %i.bva, align 8, !tbaa !52
  %i.bvc = fneg double %i.bvb
  %i.bvd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv899.ph
  %i.bve = load double, ptr %i.bvd, align 8, !tbaa !52
  %i.bvf = fsub double %i.bvc, %i.bve
  %i.bvg = getelementptr inbounds nuw [8 x i8], ptr %i.buj, i64 %indvars.iv899.ph ; 2 uses
  %i.bvh = load double, ptr %i.bvg, align 8, !tbaa !52
  %i.bvi = tail call double @llvm.fmuladd.f64(double %5, double %i.bvh, double %i.bvf)
  store double %i.bvi, ptr %i.bvg, align 8, !tbaa !52
  %indvars.iv.next900.prol = or disjoint i64 %indvars.iv899.ph, 1
  br label %scalar.ph1792.prol.loopexit

scalar.ph1792.prol.loopexit:                      ; preds = %scalar.ph1792.prol, %scalar.ph1792.preheader
  %indvars.iv899.unr = phi i64 [ %indvars.iv899.ph, %scalar.ph1792.preheader ], [ %indvars.iv.next900.prol, %scalar.ph1792.prol ]
  %i.bvj = add nsw i64 %wide.trip.count902, -1
  %i.bvk = icmp eq i64 %indvars.iv899.ph, %i.bvj
  br i1 %i.bvk, label %.loopexit, label %scalar.ph1792

scalar.ph1792:                                    ; preds = %scalar.ph1792.prol.loopexit, %scalar.ph1792
  %indvars.iv899 = phi i64 [ %indvars.iv.next900.1, %scalar.ph1792 ], [ %indvars.iv899.unr, %scalar.ph1792.prol.loopexit ] ; 5 uses
  %i.bvl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv899
  %i.bvm = load double, ptr %i.bvl, align 8, !tbaa !52
  %i.bvn = fneg double %i.bvm
  %i.bvo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv899
  %i.bvp = load double, ptr %i.bvo, align 8, !tbaa !52
  %i.bvq = fsub double %i.bvn, %i.bvp
  %i.bvr = getelementptr inbounds nuw [8 x i8], ptr %i.buj, i64 %indvars.iv899 ; 2 uses
  %i.bvs = load double, ptr %i.bvr, align 8, !tbaa !52
  %i.bvt = tail call double @llvm.fmuladd.f64(double %5, double %i.bvs, double %i.bvq)
  store double %i.bvt, ptr %i.bvr, align 8, !tbaa !52
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1 ; 3 uses
  %i.bvu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next900
  %i.bvv = load double, ptr %i.bvu, align 8, !tbaa !52
  %i.bvw = fneg double %i.bvv
  %i.bvx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next900
  %i.bvy = load double, ptr %i.bvx, align 8, !tbaa !52
  %i.bvz = fsub double %i.bvw, %i.bvy
  %i.bwa = getelementptr inbounds nuw [8 x i8], ptr %i.buj, i64 %indvars.iv.next900 ; 2 uses
  %i.bwb = load double, ptr %i.bwa, align 8, !tbaa !52
  %i.bwc = tail call double @llvm.fmuladd.f64(double %5, double %i.bwb, double %i.bvz)
  store double %i.bwc, ptr %i.bwa, align 8, !tbaa !52
  %indvars.iv.next900.1 = add nuw nsw i64 %indvars.iv899, 2 ; 2 uses
  %exitcond903.not.1 = icmp eq i64 %indvars.iv.next900.1, %wide.trip.count902
  br i1 %exitcond903.not.1, label %.loopexit, label %scalar.ph1792, !llvm.loop !428

scalar.ph1754:                                    ; preds = %scalar.ph1754.prol.loopexit, %scalar.ph1754
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.1, %scalar.ph1754 ], [ %indvars.iv894.unr, %scalar.ph1754.prol.loopexit ] ; 5 uses
  %i.bwd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv894
  %i.bwe = load double, ptr %i.bwd, align 8, !tbaa !52
  %i.bwf = fneg double %i.bwe
  %i.bwg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv894
  %i.bwh = load double, ptr %i.bwg, align 8, !tbaa !52
  %i.bwi = tail call double @llvm.fmuladd.f64(double %3, double %i.bwh, double %i.bwf)
  %i.bwj = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %indvars.iv894 ; 2 uses
  %i.bwk = load double, ptr %i.bwj, align 8, !tbaa !52
  %i.bwl = tail call double @llvm.fmuladd.f64(double %5, double %i.bwk, double %i.bwi)
  store double %i.bwl, ptr %i.bwj, align 8, !tbaa !52
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1 ; 3 uses
  %i.bwm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next895
  %i.bwn = load double, ptr %i.bwm, align 8, !tbaa !52
  %i.bwo = fneg double %i.bwn
  %i.bwp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next895
  %i.bwq = load double, ptr %i.bwp, align 8, !tbaa !52
  %i.bwr = tail call double @llvm.fmuladd.f64(double %3, double %i.bwq, double %i.bwo)
  %i.bws = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %indvars.iv.next895 ; 2 uses
  %i.bwt = load double, ptr %i.bws, align 8, !tbaa !52
  %i.bwu = tail call double @llvm.fmuladd.f64(double %5, double %i.bwt, double %i.bwr)
  store double %i.bwu, ptr %i.bws, align 8, !tbaa !52
  %indvars.iv.next895.1 = add nuw nsw i64 %indvars.iv894, 2 ; 2 uses
  %exitcond898.not.1 = icmp eq i64 %indvars.iv.next895.1, %wide.trip.count897
  br i1 %exitcond898.not.1, label %.loopexit, label %scalar.ph1754, !llvm.loop !429

bb.cd:                                            ; preds = %bb.bz
  br i1 %i.g, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.o, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bwv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bww = load ptr, ptr %i.bwv, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasScalEidPdi(i32 noundef %i.e, double noundef %5, ptr noundef %i.bww, i32 noundef 1)
  br label %.loopexit

bb.cg:                                            ; preds = %bb.ce
  %i.bwx = fcmp oeq double %3, 1.000000e+00
  br i1 %i.bwx, label %.preheader689, label %bb.ch

.preheader689:                                    ; preds = %bb.cg
  %i.bwy = icmp sgt i32 %i.e, 0
  br i1 %i.bwy, label %.lr.ph715, label %.loopexit

.lr.ph715:                                        ; preds = %.preheader689
  %i.bwz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count892 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1725 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1725, label %scalar.ph1724.preheader, label %vector.memcheck1726

vector.memcheck1726:                              ; preds = %.lr.ph715
  %i.bxb = shl nuw nsw i64 %wide.trip.count892, 3 ; 2 uses
  %i.bxc = getelementptr i8, ptr %i.bxa, i64 %i.bxb
  %i.bxd = getelementptr i8, ptr %.0579, i64 %i.bxb
  %bound01727 = icmp ult ptr %i.bxa, %i.bxd
  %bound11728 = icmp ult ptr %.0579, %i.bxc
  %found.conflict1729 = and i1 %bound01727, %bound11728
  br i1 %found.conflict1729, label %scalar.ph1724.preheader, label %vector.ph1730

vector.ph1730:                                    ; preds = %vector.memcheck1726
  %n.vec1731 = and i64 %wide.trip.count892, 2147483644 ; 3 uses
  %broadcast.splatinsert1732 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1733 = shufflevector <2 x double> %broadcast.splatinsert1732, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1734

vector.body1734:                                  ; preds = %vector.body1734, %vector.ph1730
  %index1735 = phi i64 [ 0, %vector.ph1730 ], [ %index.next1740, %vector.body1734 ] ; 3 uses
  %i.bxe = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1735 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 16
  %wide.load1736 = load <2 x double>, ptr %i.bxe, align 8, !tbaa !52, !alias.scope !580
  %wide.load1737 = load <2 x double>, ptr %i.bxf, align 8, !tbaa !52, !alias.scope !580
  %i.bxg = getelementptr inbounds nuw [8 x i8], ptr %i.bxa, i64 %index1735 ; 3 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 16 ; 2 uses
  %wide.load1738 = load <2 x double>, ptr %i.bxg, align 8, !tbaa !52, !alias.scope !581, !noalias !580
  %wide.load1739 = load <2 x double>, ptr %i.bxh, align 8, !tbaa !52, !alias.scope !581, !noalias !580
  %i.bxi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1733, <2 x double> %wide.load1738, <2 x double> %wide.load1736)
  %i.bxj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1733, <2 x double> %wide.load1739, <2 x double> %wide.load1737)
  store <2 x double> %i.bxi, ptr %i.bxg, align 8, !tbaa !52, !alias.scope !581, !noalias !580
  store <2 x double> %i.bxj, ptr %i.bxh, align 8, !tbaa !52, !alias.scope !581, !noalias !580
  %index.next1740 = add nuw i64 %index1735, 4     ; 2 uses
  %i.bxk = icmp eq i64 %index.next1740, %n.vec1731
  br i1 %i.bxk, label %middle.block1741, label %vector.body1734, !llvm.loop !433

middle.block1741:                                 ; preds = %vector.body1734
  %cmp.n1742 = icmp eq i64 %n.vec1731, %wide.trip.count892
  br i1 %cmp.n1742, label %.loopexit, label %scalar.ph1724.preheader

scalar.ph1724.preheader:                          ; preds = %vector.memcheck1726, %.lr.ph715, %middle.block1741
  %indvars.iv889.ph = phi i64 [ 0, %vector.memcheck1726 ], [ 0, %.lr.ph715 ], [ %n.vec1731, %middle.block1741 ] ; 5 uses
  %xtraiter2900 = and i64 %wide.trip.count892, 1
  %lcmp.mod2901.not = icmp eq i64 %xtraiter2900, 0
  br i1 %lcmp.mod2901.not, label %scalar.ph1724.prol.loopexit, label %scalar.ph1724.prol

scalar.ph1724.prol:                               ; preds = %scalar.ph1724.preheader
  %i.bxl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv889.ph
  %i.bxm = load double, ptr %i.bxl, align 8, !tbaa !52
  %i.bxn = getelementptr inbounds nuw [8 x i8], ptr %i.bxa, i64 %indvars.iv889.ph ; 2 uses
  %i.bxo = load double, ptr %i.bxn, align 8, !tbaa !52
  %i.bxp = tail call double @llvm.fmuladd.f64(double %5, double %i.bxo, double %i.bxm)
  store double %i.bxp, ptr %i.bxn, align 8, !tbaa !52
  %indvars.iv.next890.prol = or disjoint i64 %indvars.iv889.ph, 1
end_hunk_2
begin_hunk_3_@_ZN5Ipopt11DenseVector17AddTwoVectorsImplEdRKNS_6VectorEdS3_d:bb.a
  %i.bzi = fneg <2 x double> %wide.load1712
  %i.bzj = getelementptr inbounds nuw [8 x i8], ptr %i.bzb, i64 %index1710 ; 3 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 16 ; 2 uses
  %wide.load1713 = load <2 x double>, ptr %i.bzj, align 8, !tbaa !52, !alias.scope !585, !noalias !584
  %wide.load1714 = load <2 x double>, ptr %i.bzk, align 8, !tbaa !52, !alias.scope !585, !noalias !584
  %i.bzl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1708, <2 x double> %wide.load1713, <2 x double> %i.bzh)
  %i.bzm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1708, <2 x double> %wide.load1714, <2 x double> %i.bzi)
  store <2 x double> %i.bzl, ptr %i.bzj, align 8, !tbaa !52, !alias.scope !585, !noalias !584
  store <2 x double> %i.bzm, ptr %i.bzk, align 8, !tbaa !52, !alias.scope !585, !noalias !584
  %index.next1715 = add nuw i64 %index1710, 4     ; 2 uses
  %i.bzn = icmp eq i64 %index.next1715, %n.vec1706
  br i1 %i.bzn, label %middle.block1716, label %vector.body1709, !llvm.loop !442

middle.block1716:                                 ; preds = %vector.body1709
  %cmp.n1717 = icmp eq i64 %n.vec1706, %wide.trip.count887
  br i1 %cmp.n1717, label %.loopexit, label %scalar.ph1699.preheader

scalar.ph1699.preheader:                          ; preds = %vector.memcheck1701, %.lr.ph713, %middle.block1716
  %indvars.iv884.ph = phi i64 [ 0, %vector.memcheck1701 ], [ 0, %.lr.ph713 ], [ %n.vec1706, %middle.block1716 ] ; 5 uses
  %xtraiter2897 = and i64 %wide.trip.count887, 1
  %lcmp.mod2898.not = icmp eq i64 %xtraiter2897, 0
  br i1 %lcmp.mod2898.not, label %scalar.ph1699.prol.loopexit, label %scalar.ph1699.prol

scalar.ph1699.prol:                               ; preds = %scalar.ph1699.preheader
  %i.bzo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv884.ph
  %i.bzp = load double, ptr %i.bzo, align 8, !tbaa !52
  %i.bzq = fneg double %i.bzp
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.bzb, i64 %indvars.iv884.ph ; 2 uses
  %i.bzs = load double, ptr %i.bzr, align 8, !tbaa !52
  %i.bzt = tail call double @llvm.fmuladd.f64(double %5, double %i.bzs, double %i.bzq)
  store double %i.bzt, ptr %i.bzr, align 8, !tbaa !52
  %indvars.iv.next885.prol = or disjoint i64 %indvars.iv884.ph, 1
  br label %scalar.ph1699.prol.loopexit

scalar.ph1699.prol.loopexit:                      ; preds = %scalar.ph1699.prol, %scalar.ph1699.preheader
  %indvars.iv884.unr = phi i64 [ %indvars.iv884.ph, %scalar.ph1699.preheader ], [ %indvars.iv.next885.prol, %scalar.ph1699.prol ]
  %i.bzu = add nsw i64 %wide.trip.count887, -1
  %i.bzv = icmp eq i64 %indvars.iv884.ph, %i.bzu
  br i1 %i.bzv, label %.loopexit, label %scalar.ph1699

scalar.ph1699:                                    ; preds = %scalar.ph1699.prol.loopexit, %scalar.ph1699
  %indvars.iv884 = phi i64 [ %indvars.iv.next885.1, %scalar.ph1699 ], [ %indvars.iv884.unr, %scalar.ph1699.prol.loopexit ] ; 4 uses
  %i.bzw = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv884
  %i.bzx = load double, ptr %i.bzw, align 8, !tbaa !52
  %i.bzy = fneg double %i.bzx
  %i.bzz = getelementptr inbounds nuw [8 x i8], ptr %i.bzb, i64 %indvars.iv884 ; 2 uses
  %i.caa = load double, ptr %i.bzz, align 8, !tbaa !52
  %i.cab = tail call double @llvm.fmuladd.f64(double %5, double %i.caa, double %i.bzy)
  store double %i.cab, ptr %i.bzz, align 8, !tbaa !52
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %i.cac = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next885
  %i.cad = load double, ptr %i.cac, align 8, !tbaa !52
  %i.cae = fneg double %i.cad
  %i.caf = getelementptr inbounds nuw [8 x i8], ptr %i.bzb, i64 %indvars.iv.next885 ; 2 uses
  %i.cag = load double, ptr %i.caf, align 8, !tbaa !52
  %i.cah = tail call double @llvm.fmuladd.f64(double %5, double %i.cag, double %i.cae)
  store double %i.cah, ptr %i.caf, align 8, !tbaa !52
  %indvars.iv.next885.1 = add nuw nsw i64 %indvars.iv884, 2 ; 2 uses
  %exitcond888.not.1 = icmp eq i64 %indvars.iv.next885.1, %wide.trip.count887
  br i1 %exitcond888.not.1, label %.loopexit, label %scalar.ph1699, !llvm.loop !443

scalar.ph1672:                                    ; preds = %scalar.ph1672.prol.loopexit, %scalar.ph1672
  %indvars.iv879 = phi i64 [ %indvars.iv.next880.1, %scalar.ph1672 ], [ %indvars.iv879.unr, %scalar.ph1672.prol.loopexit ] ; 4 uses
  %i.cai = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv879
  %i.caj = load double, ptr %i.cai, align 8, !tbaa !52
  %i.cak = getelementptr inbounds nuw [8 x i8], ptr %i.byf, i64 %indvars.iv879 ; 2 uses
  %i.cal = load double, ptr %i.cak, align 8, !tbaa !52
  %i.cam = fmul double %5, %i.cal
  %i.can = tail call double @llvm.fmuladd.f64(double %3, double %i.caj, double %i.cam)
  store double %i.can, ptr %i.cak, align 8, !tbaa !52
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1 ; 2 uses
  %i.cao = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next880
  %i.cap = load double, ptr %i.cao, align 8, !tbaa !52
  %i.caq = getelementptr inbounds nuw [8 x i8], ptr %i.byf, i64 %indvars.iv.next880 ; 2 uses
  %i.car = load double, ptr %i.caq, align 8, !tbaa !52
  %i.cas = fmul double %5, %i.car
  %i.cat = tail call double @llvm.fmuladd.f64(double %3, double %i.cap, double %i.cas)
  store double %i.cat, ptr %i.caq, align 8, !tbaa !52
  %indvars.iv.next880.1 = add nuw nsw i64 %indvars.iv879, 2 ; 2 uses
  %exitcond883.not.1 = icmp eq i64 %indvars.iv.next880.1, %wide.trip.count882
  br i1 %exitcond883.not.1, label %.loopexit, label %scalar.ph1672, !llvm.loop !444

bb.ci:                                            ; preds = %bb.cd
  br i1 %i.o, label %.preheader695, label %bb.cj

.preheader695:                                    ; preds = %bb.ci
  %i.cau = icmp sgt i32 %i.e, 0
  br i1 %i.cau, label %.lr.ph709, label %.loopexit

.lr.ph709:                                        ; preds = %.preheader695
  %i.cav = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.caw = load ptr, ptr %i.cav, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count877 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1646 = icmp ult i32 %i.e, 4
  br i1 %min.iters.check1646, label %scalar.ph1645.preheader, label %vector.memcheck1647

vector.memcheck1647:                              ; preds = %.lr.ph709
  %i.cax = shl nuw nsw i64 %wide.trip.count877, 3 ; 2 uses
  %i.cay = getelementptr i8, ptr %i.caw, i64 %i.cax
  %i.caz = getelementptr i8, ptr %.0583, i64 %i.cax
  %bound01648 = icmp ult ptr %i.caw, %i.caz
  %bound11649 = icmp ult ptr %.0583, %i.cay
  %found.conflict1650 = and i1 %bound01648, %bound11649
  br i1 %found.conflict1650, label %scalar.ph1645.preheader, label %vector.ph1651

vector.ph1651:                                    ; preds = %vector.memcheck1647
  %n.vec1652 = and i64 %wide.trip.count877, 2147483644 ; 3 uses
  %broadcast.splatinsert1653 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1654 = shufflevector <2 x double> %broadcast.splatinsert1653, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1655 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1656 = shufflevector <2 x double> %broadcast.splatinsert1655, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1657

vector.body1657:                                  ; preds = %vector.body1657, %vector.ph1651
  %index1658 = phi i64 [ 0, %vector.ph1651 ], [ %index.next1663, %vector.body1657 ] ; 3 uses
  %i.cba = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1658 ; 2 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 16
  %wide.load1659 = load <2 x double>, ptr %i.cba, align 8, !tbaa !52, !alias.scope !586
  %wide.load1660 = load <2 x double>, ptr %i.cbb, align 8, !tbaa !52, !alias.scope !586
  %i.cbc = getelementptr inbounds nuw [8 x i8], ptr %i.caw, i64 %index1658 ; 3 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 16 ; 2 uses
  %wide.load1661 = load <2 x double>, ptr %i.cbc, align 8, !tbaa !52, !alias.scope !587, !noalias !586
  %wide.load1662 = load <2 x double>, ptr %i.cbd, align 8, !tbaa !52, !alias.scope !587, !noalias !586
  %i.cbe = fmul <2 x double> %broadcast.splat1654, %wide.load1661
  %i.cbf = fmul <2 x double> %broadcast.splat1654, %wide.load1662
  %i.cbg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1656, <2 x double> %wide.load1659, <2 x double> %i.cbe)
  %i.cbh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1656, <2 x double> %wide.load1660, <2 x double> %i.cbf)
  store <2 x double> %i.cbg, ptr %i.cbc, align 8, !tbaa !52, !alias.scope !587, !noalias !586
  store <2 x double> %i.cbh, ptr %i.cbd, align 8, !tbaa !52, !alias.scope !587, !noalias !586
  %index.next1663 = add nuw i64 %index1658, 4     ; 2 uses
  %i.cbi = icmp eq i64 %index.next1663, %n.vec1652
  br i1 %i.cbi, label %middle.block1664, label %vector.body1657, !llvm.loop !448

middle.block1664:                                 ; preds = %vector.body1657
  %cmp.n1665 = icmp eq i64 %n.vec1652, %wide.trip.count877
  br i1 %cmp.n1665, label %.loopexit, label %scalar.ph1645.preheader

scalar.ph1645.preheader:                          ; preds = %vector.memcheck1647, %.lr.ph709, %middle.block1664
  %indvars.iv874.ph = phi i64 [ 0, %vector.memcheck1647 ], [ 0, %.lr.ph709 ], [ %n.vec1652, %middle.block1664 ] ; 5 uses
  %xtraiter2891 = and i64 %wide.trip.count877, 1
  %lcmp.mod2892.not = icmp eq i64 %xtraiter2891, 0
  br i1 %lcmp.mod2892.not, label %scalar.ph1645.prol.loopexit, label %scalar.ph1645.prol

scalar.ph1645.prol:                               ; preds = %scalar.ph1645.preheader
  %i.cbj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv874.ph
  %i.cbk = load double, ptr %i.cbj, align 8, !tbaa !52
  %i.cbl = getelementptr inbounds nuw [8 x i8], ptr %i.caw, i64 %indvars.iv874.ph ; 2 uses
  %i.cbm = load double, ptr %i.cbl, align 8, !tbaa !52
  %i.cbn = fmul double %5, %i.cbm
  %i.cbo = tail call double @llvm.fmuladd.f64(double %1, double %i.cbk, double %i.cbn)
  store double %i.cbo, ptr %i.cbl, align 8, !tbaa !52
  %indvars.iv.next875.prol = or disjoint i64 %indvars.iv874.ph, 1
  br label %scalar.ph1645.prol.loopexit

scalar.ph1645.prol.loopexit:                      ; preds = %scalar.ph1645.prol, %scalar.ph1645.preheader
  %indvars.iv874.unr = phi i64 [ %indvars.iv874.ph, %scalar.ph1645.preheader ], [ %indvars.iv.next875.prol, %scalar.ph1645.prol ]
  %i.cbp = add nsw i64 %wide.trip.count877, -1
  %i.cbq = icmp eq i64 %indvars.iv874.ph, %i.cbp
  br i1 %i.cbq, label %.loopexit, label %scalar.ph1645

scalar.ph1645:                                    ; preds = %scalar.ph1645.prol.loopexit, %scalar.ph1645
  %indvars.iv874 = phi i64 [ %indvars.iv.next875.1, %scalar.ph1645 ], [ %indvars.iv874.unr, %scalar.ph1645.prol.loopexit ] ; 4 uses
  %i.cbr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv874
  %i.cbs = load double, ptr %i.cbr, align 8, !tbaa !52
  %i.cbt = getelementptr inbounds nuw [8 x i8], ptr %i.caw, i64 %indvars.iv874 ; 2 uses
  %i.cbu = load double, ptr %i.cbt, align 8, !tbaa !52
  %i.cbv = fmul double %5, %i.cbu
  %i.cbw = tail call double @llvm.fmuladd.f64(double %1, double %i.cbs, double %i.cbv)
  store double %i.cbw, ptr %i.cbt, align 8, !tbaa !52
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 1 ; 2 uses
  %i.cbx = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next875
  %i.cby = load double, ptr %i.cbx, align 8, !tbaa !52
  %i.cbz = getelementptr inbounds nuw [8 x i8], ptr %i.caw, i64 %indvars.iv.next875 ; 2 uses
  %i.cca = load double, ptr %i.cbz, align 8, !tbaa !52
  %i.ccb = fmul double %5, %i.cca
  %i.ccc = tail call double @llvm.fmuladd.f64(double %1, double %i.cby, double %i.ccb)
  store double %i.ccc, ptr %i.cbz, align 8, !tbaa !52
  %indvars.iv.next875.1 = add nuw nsw i64 %indvars.iv874, 2 ; 2 uses
  %exitcond878.not.1 = icmp eq i64 %indvars.iv.next875.1, %wide.trip.count877
  br i1 %exitcond878.not.1, label %.loopexit, label %scalar.ph1645, !llvm.loop !449

bb.cj:                                            ; preds = %bb.ci
  %i.ccd = fcmp oeq double %3, 1.000000e+00
  br i1 %i.ccd, label %.preheader697, label %bb.ck

.preheader697:                                    ; preds = %bb.cj
  %i.cce = icmp sgt i32 %i.e, 0
  br i1 %i.cce, label %.lr.ph707, label %.loopexit

.lr.ph707:                                        ; preds = %.preheader697
  %i.ccf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ccg = load ptr, ptr %i.ccf, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count872 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1613 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1613, label %scalar.ph1612.preheader, label %vector.memcheck1614

vector.memcheck1614:                              ; preds = %.lr.ph707
  %i.cch = shl nuw nsw i64 %wide.trip.count872, 3 ; 3 uses
  %i.cci = getelementptr i8, ptr %i.ccg, i64 %i.cch ; 2 uses
  %i.ccj = getelementptr i8, ptr %.0583, i64 %i.cch
  %30 = getelementptr i8, ptr %.0579, i64 %i.cch
  %bound01615.a = icmp ult ptr %i.ccg, %i.ccj
  %bound11616 = icmp ult ptr %.0583, %i.cci
  %found.conflict1617 = and i1 %bound01615.a, %bound11616
  %bound01618 = icmp ult ptr %i.ccg, %30
  %bound11619 = icmp ult ptr %.0579, %i.cci
  %found.conflict1620 = and i1 %bound01618, %bound11619
  %conflict.rdx1621 = or i1 %found.conflict1617, %found.conflict1620
  br i1 %conflict.rdx1621, label %scalar.ph1612.preheader, label %vector.ph1622

vector.ph1622:                                    ; preds = %vector.memcheck1614
  %n.vec1623 = and i64 %wide.trip.count872, 2147483644 ; 3 uses
  %broadcast.splatinsert1624 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1625 = shufflevector <2 x double> %broadcast.splatinsert1624, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1626 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1627 = shufflevector <2 x double> %broadcast.splatinsert1626, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1628

vector.body1628:                                  ; preds = %vector.body1628, %vector.ph1622
  %index1629 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1636, %vector.body1628 ] ; 4 uses
  %i.cck = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1629 ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 16
  %wide.load1630 = load <2 x double>, ptr %i.cck, align 8, !tbaa !52, !alias.scope !588
  %wide.load1631 = load <2 x double>, ptr %i.ccl, align 8, !tbaa !52, !alias.scope !588
  %i.ccm = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1629 ; 2 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 16
  %wide.load1632 = load <2 x double>, ptr %i.ccm, align 8, !tbaa !52, !alias.scope !589
  %wide.load1633 = load <2 x double>, ptr %i.ccn, align 8, !tbaa !52, !alias.scope !589
  %i.cco = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1625, <2 x double> %wide.load1630, <2 x double> %wide.load1632)
  %i.ccp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1625, <2 x double> %wide.load1631, <2 x double> %wide.load1633)
  %i.ccq = getelementptr inbounds nuw [8 x i8], ptr %i.ccg, i64 %index1629 ; 3 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 16 ; 2 uses
  %wide.load1634 = load <2 x double>, ptr %i.ccq, align 8, !tbaa !52, !alias.scope !590, !noalias !591
  %wide.load1635 = load <2 x double>, ptr %i.ccr, align 8, !tbaa !52, !alias.scope !590, !noalias !591
  %i.ccs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1627, <2 x double> %wide.load1634, <2 x double> %i.cco)
  %i.cct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1627, <2 x double> %wide.load1635, <2 x double> %i.ccp)
  store <2 x double> %i.ccs, ptr %i.ccq, align 8, !tbaa !52, !alias.scope !590, !noalias !591
  store <2 x double> %i.cct, ptr %i.ccr, align 8, !tbaa !52, !alias.scope !590, !noalias !591
  %index.next1636 = add nuw i64 %index1629, 4     ; 2 uses
  %i.ccu = icmp eq i64 %index.next1636, %n.vec1623
  br i1 %i.ccu, label %middle.block1637, label %vector.body1628, !llvm.loop !454

middle.block1637:                                 ; preds = %vector.body1628
  %cmp.n1638 = icmp eq i64 %n.vec1623, %wide.trip.count872
  br i1 %cmp.n1638, label %.loopexit, label %scalar.ph1612.preheader

scalar.ph1612.preheader:                          ; preds = %vector.memcheck1614, %.lr.ph707, %middle.block1637
  %indvars.iv869.ph = phi i64 [ 0, %vector.memcheck1614 ], [ 0, %.lr.ph707 ], [ %n.vec1623, %middle.block1637 ] ; 6 uses
  %xtraiter2888 = and i64 %wide.trip.count872, 1
  %lcmp.mod2889.not = icmp eq i64 %xtraiter2888, 0
  br i1 %lcmp.mod2889.not, label %scalar.ph1612.prol.loopexit, label %scalar.ph1612.prol

scalar.ph1612.prol:                               ; preds = %scalar.ph1612.preheader
  %i.ccv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv869.ph
  %i.ccw = load double, ptr %i.ccv, align 8, !tbaa !52
  %i.ccx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv869.ph
  %i.ccy = load double, ptr %i.ccx, align 8, !tbaa !52
  %i.ccz = tail call double @llvm.fmuladd.f64(double %1, double %i.ccw, double %i.ccy)
  %i.cda = getelementptr inbounds nuw [8 x i8], ptr %i.ccg, i64 %indvars.iv869.ph ; 2 uses
  %i.cdb = load double, ptr %i.cda, align 8, !tbaa !52
  %i.cdc = tail call double @llvm.fmuladd.f64(double %5, double %i.cdb, double %i.ccz)
  store double %i.cdc, ptr %i.cda, align 8, !tbaa !52
  %indvars.iv.next870.prol = or disjoint i64 %indvars.iv869.ph, 1
  br label %scalar.ph1612.prol.loopexit

scalar.ph1612.prol.loopexit:                      ; preds = %scalar.ph1612.prol, %scalar.ph1612.preheader
  %indvars.iv869.unr = phi i64 [ %indvars.iv869.ph, %scalar.ph1612.preheader ], [ %indvars.iv.next870.prol, %scalar.ph1612.prol ]
  %i.cdd = add nsw i64 %wide.trip.count872, -1
  %i.cde = icmp eq i64 %indvars.iv869.ph, %i.cdd
  br i1 %i.cde, label %.loopexit, label %scalar.ph1612

scalar.ph1612:                                    ; preds = %scalar.ph1612.prol.loopexit, %scalar.ph1612
  %indvars.iv869 = phi i64 [ %indvars.iv.next870.1, %scalar.ph1612 ], [ %indvars.iv869.unr, %scalar.ph1612.prol.loopexit ] ; 5 uses
  %i.cdf = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv869
  %i.cdg = load double, ptr %i.cdf, align 8, !tbaa !52
  %i.cdh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv869
  %i.cdi = load double, ptr %i.cdh, align 8, !tbaa !52
  %i.cdj = tail call double @llvm.fmuladd.f64(double %1, double %i.cdg, double %i.cdi)
  %i.cdk = getelementptr inbounds nuw [8 x i8], ptr %i.ccg, i64 %indvars.iv869 ; 2 uses
  %i.cdl = load double, ptr %i.cdk, align 8, !tbaa !52
  %i.cdm = tail call double @llvm.fmuladd.f64(double %5, double %i.cdl, double %i.cdj)
  store double %i.cdm, ptr %i.cdk, align 8, !tbaa !52
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 1 ; 3 uses
  %i.cdn = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next870
  %i.cdo = load double, ptr %i.cdn, align 8, !tbaa !52
  %i.cdp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next870
  %i.cdq = load double, ptr %i.cdp, align 8, !tbaa !52
  %i.cdr = tail call double @llvm.fmuladd.f64(double %1, double %i.cdo, double %i.cdq)
  %i.cds = getelementptr inbounds nuw [8 x i8], ptr %i.ccg, i64 %indvars.iv.next870 ; 2 uses
  %i.cdt = load double, ptr %i.cds, align 8, !tbaa !52
  %i.cdu = tail call double @llvm.fmuladd.f64(double %5, double %i.cdt, double %i.cdr)
  store double %i.cdu, ptr %i.cds, align 8, !tbaa !52
  %indvars.iv.next870.1 = add nuw nsw i64 %indvars.iv869, 2 ; 2 uses
  %exitcond873.not.1 = icmp eq i64 %indvars.iv.next870.1, %wide.trip.count872
  br i1 %exitcond873.not.1, label %.loopexit, label %scalar.ph1612, !llvm.loop !455

bb.ck:                                            ; preds = %bb.cj
  %i.cdv = fcmp oeq double %3, -1.000000e+00
  %i.cdw = icmp sgt i32 %i.e, 0                   ; 2 uses
  br i1 %i.cdv, label %.preheader699, label %.preheader701

.preheader701:                                    ; preds = %bb.ck
  br i1 %i.cdw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader701
  %i.cdx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cdy = load ptr, ptr %i.cdx, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %min.iters.check1538 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1538, label %scalar.ph1537.preheader, label %vector.memcheck1539

vector.memcheck1539:                              ; preds = %.lr.ph
  %i.cdz = shl nuw nsw i64 %wide.trip.count, 3    ; 3 uses
  %i.cea = getelementptr i8, ptr %i.cdy, i64 %i.cdz ; 2 uses
  %i.ceb = getelementptr i8, ptr %.0583, i64 %i.cdz
  %31 = getelementptr i8, ptr %.0579, i64 %i.cdz
  %bound0.a = icmp ult ptr %i.cdy, %i.ceb
  %bound1 = icmp ult ptr %.0583, %i.cea
  %found.conflict = and i1 %bound0.a, %bound1
  %bound01540 = icmp ult ptr %i.cdy, %31
  %bound11541 = icmp ult ptr %.0579, %i.cea
  %found.conflict1542 = and i1 %bound01540, %bound11541
  %conflict.rdx1543 = or i1 %found.conflict, %found.conflict1542
  br i1 %conflict.rdx1543, label %scalar.ph1537.preheader, label %vector.ph1544

vector.ph1544:                                    ; preds = %vector.memcheck1539
  %n.vec1545 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert1546 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1547 = shufflevector <2 x double> %broadcast.splatinsert1546, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1548 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1549 = shufflevector <2 x double> %broadcast.splatinsert1548, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1550 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1551 = shufflevector <2 x double> %broadcast.splatinsert1550, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1552

vector.body1552:                                  ; preds = %vector.body1552, %vector.ph1544
  %index1553 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1560, %vector.body1552 ] ; 4 uses
  %i.cec = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1553 ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 16
  %wide.load1554 = load <2 x double>, ptr %i.cec, align 8, !tbaa !52, !alias.scope !592
  %wide.load1555 = load <2 x double>, ptr %i.ced, align 8, !tbaa !52, !alias.scope !592
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1553 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cee, i64 16
  %wide.load1556 = load <2 x double>, ptr %i.cee, align 8, !tbaa !52, !alias.scope !593
  %wide.load1557 = load <2 x double>, ptr %i.cef, align 8, !tbaa !52, !alias.scope !593
  %i.ceg = fmul <2 x double> %broadcast.splat1547, %wide.load1556
  %i.ceh = fmul <2 x double> %broadcast.splat1547, %wide.load1557
  %i.cei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1549, <2 x double> %wide.load1554, <2 x double> %i.ceg)
  %i.cej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1549, <2 x double> %wide.load1555, <2 x double> %i.ceh)
  %i.cek = getelementptr inbounds nuw [8 x i8], ptr %i.cdy, i64 %index1553 ; 3 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 16 ; 2 uses
  %wide.load1558 = load <2 x double>, ptr %i.cek, align 8, !tbaa !52, !alias.scope !594, !noalias !595
  %wide.load1559 = load <2 x double>, ptr %i.cel, align 8, !tbaa !52, !alias.scope !594, !noalias !595
  %i.cem = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1551, <2 x double> %wide.load1558, <2 x double> %i.cei)
  %i.cen = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1551, <2 x double> %wide.load1559, <2 x double> %i.cej)
  store <2 x double> %i.cem, ptr %i.cek, align 8, !tbaa !52, !alias.scope !594, !noalias !595
  store <2 x double> %i.cen, ptr %i.cel, align 8, !tbaa !52, !alias.scope !594, !noalias !595
  %index.next1560 = add nuw i64 %index1553, 4     ; 2 uses
  %i.ceo = icmp eq i64 %index.next1560, %n.vec1545
  br i1 %i.ceo, label %middle.block1561, label %vector.body1552, !llvm.loop !460

middle.block1561:                                 ; preds = %vector.body1552
  %cmp.n1562 = icmp eq i64 %n.vec1545, %wide.trip.count
  br i1 %cmp.n1562, label %.loopexit, label %scalar.ph1537.preheader

scalar.ph1537.preheader:                          ; preds = %vector.memcheck1539, %.lr.ph, %middle.block1561
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck1539 ], [ 0, %.lr.ph ], [ %n.vec1545, %middle.block1561 ] ; 6 uses
  %xtraiter2882 = and i64 %wide.trip.count, 1
  %lcmp.mod2883.not = icmp eq i64 %xtraiter2882, 0
  br i1 %lcmp.mod2883.not, label %scalar.ph1537.prol.loopexit, label %scalar.ph1537.prol

scalar.ph1537.prol:                               ; preds = %scalar.ph1537.preheader
  %i.cep = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.ph
  %i.ceq = load double, ptr %i.cep, align 8, !tbaa !52
  %i.cer = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.ph
  %i.ces = load double, ptr %i.cer, align 8, !tbaa !52
  %i.cet = fmul double %3, %i.ces
  %i.ceu = tail call double @llvm.fmuladd.f64(double %1, double %i.ceq, double %i.cet)
  %i.cev = getelementptr inbounds nuw [8 x i8], ptr %i.cdy, i64 %indvars.iv.ph ; 2 uses
  %i.cew = load double, ptr %i.cev, align 8, !tbaa !52
  %i.cex = tail call double @llvm.fmuladd.f64(double %5, double %i.cew, double %i.ceu)
  store double %i.cex, ptr %i.cev, align 8, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph1537.prol.loopexit

scalar.ph1537.prol.loopexit:                      ; preds = %scalar.ph1537.prol, %scalar.ph1537.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph1537.preheader ], [ %indvars.iv.next.prol, %scalar.ph1537.prol ]
  %i.cey = add nsw i64 %wide.trip.count, -1
  %i.cez = icmp eq i64 %indvars.iv.ph, %i.cey
  br i1 %i.cez, label %.loopexit, label %scalar.ph1537

.preheader699:                                    ; preds = %bb.ck
  br i1 %i.cdw, label %.lr.ph705, label %.loopexit

.lr.ph705:                                        ; preds = %.preheader699
  %i.cfa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cfb = load ptr, ptr %i.cfa, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count867 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check1575 = icmp ult i32 %i.e, 6
  br i1 %min.iters.check1575, label %scalar.ph1574.preheader, label %vector.memcheck1576

vector.memcheck1576:                              ; preds = %.lr.ph705
  %i.cfc = shl nuw nsw i64 %wide.trip.count867, 3 ; 3 uses
  %i.cfd = getelementptr i8, ptr %i.cfb, i64 %i.cfc ; 2 uses
  %i.cfe = getelementptr i8, ptr %.0583, i64 %i.cfc
  %32 = getelementptr i8, ptr %.0579, i64 %i.cfc
  %bound01577.a = icmp ult ptr %i.cfb, %i.cfe
  %bound11578 = icmp ult ptr %.0583, %i.cfd
  %found.conflict1579 = and i1 %bound01577.a, %bound11578
  %bound01580 = icmp ult ptr %i.cfb, %32
  %bound11581 = icmp ult ptr %.0579, %i.cfd
  %found.conflict1582 = and i1 %bound01580, %bound11581
  %conflict.rdx1583 = or i1 %found.conflict1579, %found.conflict1582
  br i1 %conflict.rdx1583, label %scalar.ph1574.preheader, label %vector.ph1584

vector.ph1584:                                    ; preds = %vector.memcheck1576
  %n.vec1585 = and i64 %wide.trip.count867, 2147483644 ; 3 uses
  %broadcast.splatinsert1586 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1587 = shufflevector <2 x double> %broadcast.splatinsert1586, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1588 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat1589 = shufflevector <2 x double> %broadcast.splatinsert1588, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1590

vector.body1590:                                  ; preds = %vector.body1590, %vector.ph1584
  %index1591 = phi i64 [ 0, %vector.ph1584 ], [ %index.next1598, %vector.body1590 ] ; 4 uses
  %i.cff = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1591 ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 16
  %wide.load1592 = load <2 x double>, ptr %i.cff, align 8, !tbaa !52, !alias.scope !596
  %wide.load1593 = load <2 x double>, ptr %i.cfg, align 8, !tbaa !52, !alias.scope !596
  %i.cfh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1591 ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 16
  %wide.load1594 = load <2 x double>, ptr %i.cfh, align 8, !tbaa !52, !alias.scope !597
  %wide.load1595 = load <2 x double>, ptr %i.cfi, align 8, !tbaa !52, !alias.scope !597
  %i.cfj = fneg <2 x double> %wide.load1594
  %i.cfk = fneg <2 x double> %wide.load1595
  %i.cfl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1587, <2 x double> %wide.load1592, <2 x double> %i.cfj)
  %i.cfm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1587, <2 x double> %wide.load1593, <2 x double> %i.cfk)
  %i.cfn = getelementptr inbounds nuw [8 x i8], ptr %i.cfb, i64 %index1591 ; 3 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 16 ; 2 uses
  %wide.load1596 = load <2 x double>, ptr %i.cfn, align 8, !tbaa !52, !alias.scope !598, !noalias !599
  %wide.load1597 = load <2 x double>, ptr %i.cfo, align 8, !tbaa !52, !alias.scope !598, !noalias !599
  %i.cfp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1589, <2 x double> %wide.load1596, <2 x double> %i.cfl)
  %i.cfq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1589, <2 x double> %wide.load1597, <2 x double> %i.cfm)
  store <2 x double> %i.cfp, ptr %i.cfn, align 8, !tbaa !52, !alias.scope !598, !noalias !599
  store <2 x double> %i.cfq, ptr %i.cfo, align 8, !tbaa !52, !alias.scope !598, !noalias !599
  %index.next1598 = add nuw i64 %index1591, 4     ; 2 uses
  %i.cfr = icmp eq i64 %index.next1598, %n.vec1585
  br i1 %i.cfr, label %middle.block1599, label %vector.body1590, !llvm.loop !465

middle.block1599:                                 ; preds = %vector.body1590
  %cmp.n1600 = icmp eq i64 %n.vec1585, %wide.trip.count867
  br i1 %cmp.n1600, label %.loopexit, label %scalar.ph1574.preheader

scalar.ph1574.preheader:                          ; preds = %vector.memcheck1576, %.lr.ph705, %middle.block1599
  %indvars.iv864.ph = phi i64 [ 0, %vector.memcheck1576 ], [ 0, %.lr.ph705 ], [ %n.vec1585, %middle.block1599 ] ; 6 uses
  %xtraiter2885 = and i64 %wide.trip.count867, 1
  %lcmp.mod2886.not = icmp eq i64 %xtraiter2885, 0
  br i1 %lcmp.mod2886.not, label %scalar.ph1574.prol.loopexit, label %scalar.ph1574.prol

scalar.ph1574.prol:                               ; preds = %scalar.ph1574.preheader
  %i.cfs = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv864.ph
  %i.cft = load double, ptr %i.cfs, align 8, !tbaa !52
  %i.cfu = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv864.ph
  %i.cfv = load double, ptr %i.cfu, align 8, !tbaa !52
  %i.cfw = fneg double %i.cfv
  %i.cfx = tail call double @llvm.fmuladd.f64(double %1, double %i.cft, double %i.cfw)
  %i.cfy = getelementptr inbounds nuw [8 x i8], ptr %i.cfb, i64 %indvars.iv864.ph ; 2 uses
  %i.cfz = load double, ptr %i.cfy, align 8, !tbaa !52
  %i.cga = tail call double @llvm.fmuladd.f64(double %5, double %i.cfz, double %i.cfx)
  store double %i.cga, ptr %i.cfy, align 8, !tbaa !52
  %indvars.iv.next865.prol = or disjoint i64 %indvars.iv864.ph, 1
  br label %scalar.ph1574.prol.loopexit

scalar.ph1574.prol.loopexit:                      ; preds = %scalar.ph1574.prol, %scalar.ph1574.preheader
  %indvars.iv864.unr = phi i64 [ %indvars.iv864.ph, %scalar.ph1574.preheader ], [ %indvars.iv.next865.prol, %scalar.ph1574.prol ]
  %i.cgb = add nsw i64 %wide.trip.count867, -1
  %i.cgc = icmp eq i64 %indvars.iv864.ph, %i.cgb
  br i1 %i.cgc, label %.loopexit, label %scalar.ph1574

scalar.ph1574:                                    ; preds = %scalar.ph1574.prol.loopexit, %scalar.ph1574
  %indvars.iv864 = phi i64 [ %indvars.iv.next865.1, %scalar.ph1574 ], [ %indvars.iv864.unr, %scalar.ph1574.prol.loopexit ] ; 5 uses
  %i.cgd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv864
  %i.cge = load double, ptr %i.cgd, align 8, !tbaa !52
  %i.cgf = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv864
  %i.cgg = load double, ptr %i.cgf, align 8, !tbaa !52
  %i.cgh = fneg double %i.cgg
  %i.cgi = tail call double @llvm.fmuladd.f64(double %1, double %i.cge, double %i.cgh)
  %i.cgj = getelementptr inbounds nuw [8 x i8], ptr %i.cfb, i64 %indvars.iv864 ; 2 uses
  %i.cgk = load double, ptr %i.cgj, align 8, !tbaa !52
  %i.cgl = tail call double @llvm.fmuladd.f64(double %5, double %i.cgk, double %i.cgi)
  store double %i.cgl, ptr %i.cgj, align 8, !tbaa !52
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 3 uses
  %i.cgm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next865
  %i.cgn = load double, ptr %i.cgm, align 8, !tbaa !52
  %i.cgo = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next865
  %i.cgp = load double, ptr %i.cgo, align 8, !tbaa !52
  %i.cgq = fneg double %i.cgp
  %i.cgr = tail call double @llvm.fmuladd.f64(double %1, double %i.cgn, double %i.cgq)
  %i.cgs = getelementptr inbounds nuw [8 x i8], ptr %i.cfb, i64 %indvars.iv.next865 ; 2 uses
  %i.cgt = load double, ptr %i.cgs, align 8, !tbaa !52
  %i.cgu = tail call double @llvm.fmuladd.f64(double %5, double %i.cgt, double %i.cgr)
  store double %i.cgu, ptr %i.cgs, align 8, !tbaa !52
  %indvars.iv.next865.1 = add nuw nsw i64 %indvars.iv864, 2 ; 2 uses
  %exitcond868.not.1 = icmp eq i64 %indvars.iv.next865.1, %wide.trip.count867
  br i1 %exitcond868.not.1, label %.loopexit, label %scalar.ph1574, !llvm.loop !466

scalar.ph1537:                                    ; preds = %scalar.ph1537.prol.loopexit, %scalar.ph1537
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph1537 ], [ %indvars.iv.unr, %scalar.ph1537.prol.loopexit ] ; 5 uses
  %i.cgv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv
  %i.cgw = load double, ptr %i.cgv, align 8, !tbaa !52
  %i.cgx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv
  %i.cgy = load double, ptr %i.cgx, align 8, !tbaa !52
  %i.cgz = fmul double %3, %i.cgy
  %i.cha = tail call double @llvm.fmuladd.f64(double %1, double %i.cgw, double %i.cgz)
  %i.chb = getelementptr inbounds nuw [8 x i8], ptr %i.cdy, i64 %indvars.iv ; 2 uses
  %i.chc = load double, ptr %i.chb, align 8, !tbaa !52
  %i.chd = tail call double @llvm.fmuladd.f64(double %5, double %i.chc, double %i.cha)
  store double %i.chd, ptr %i.chb, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.che = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next
  %i.chf = load double, ptr %i.che, align 8, !tbaa !52
  %i.chg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next
  %i.chh = load double, ptr %i.chg, align 8, !tbaa !52
  %i.chi = fmul double %3, %i.chh
  %i.chj = tail call double @llvm.fmuladd.f64(double %1, double %i.chf, double %i.chi)
  %i.chk = getelementptr inbounds nuw [8 x i8], ptr %i.cdy, i64 %indvars.iv.next ; 2 uses
  %i.chl = load double, ptr %i.chk, align 8, !tbaa !52
  %i.chm = tail call double @llvm.fmuladd.f64(double %5, double %i.chl, double %i.chj)
  store double %i.chm, ptr %i.chk, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph1537, !llvm.loop !467

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph1282.prol.loopexit, %scalar.ph1282, %scalar.ph1306.prol.loopexit, %scalar.ph1306, %scalar.ph1328.prol.loopexit, %scalar.ph1328, %scalar.ph1346.prol.loopexit, %scalar.ph1346, %scalar.ph1364.prol.loopexit, %scalar.ph1364, %.lr.ph795, %scalar.ph1382.prol.loopexit, %scalar.ph1382, %scalar.ph1406.prol.loopexit, %scalar.ph1406, %scalar.ph1428.prol.loopexit, %scalar.ph1428, %scalar.ph1448.prol.loopexit, %scalar.ph1448, %scalar.ph1466.prol.loopexit, %scalar.ph1466, %scalar.ph1490.prol.loopexit, %scalar.ph1490, %scalar.ph1512.prol.loopexit, %scalar.ph1512, %scalar.ph1537.prol.loopexit, %scalar.ph1537, %scalar.ph1574.prol.loopexit, %scalar.ph1574, %scalar.ph1612.prol.loopexit, %scalar.ph1612, %scalar.ph1645.prol.loopexit, %scalar.ph1645, %scalar.ph1672.prol.loopexit, %scalar.ph1672, %scalar.ph1699.prol.loopexit, %scalar.ph1699, %scalar.ph1724.prol.loopexit, %scalar.ph1724, %scalar.ph1754.prol.loopexit, %scalar.ph1754, %scalar.ph1792.prol.loopexit, %scalar.ph1792, %scalar.ph1828.prol.loopexit, %scalar.ph1828, %scalar.ph1859.prol.loopexit, %scalar.ph1859, %scalar.ph1889.prol.loopexit, %scalar.ph1889, %scalar.ph1927.prol.loopexit, %scalar.ph1927, %scalar.ph1963.prol.loopexit, %scalar.ph1963, %scalar.ph1994.prol.loopexit, %scalar.ph1994, %scalar.ph2024.prol.loopexit, %scalar.ph2024, %scalar.ph2062.prol.loopexit, %scalar.ph2062, %scalar.ph2098.prol.loopexit, %scalar.ph2098, %scalar.ph2129.prol.loopexit, %scalar.ph2129, %scalar.ph2154.prol.loopexit, %scalar.ph2154, %scalar.ph2179.prol.loopexit, %scalar.ph2179, %scalar.ph2202.prol.loopexit, %scalar.ph2202, %scalar.ph2230.prol.loopexit, %scalar.ph2230, %scalar.ph2266.prol.loopexit, %scalar.ph2266, %scalar.ph2300.prol.loopexit, %scalar.ph2300, %scalar.ph2329.prol.loopexit, %scalar.ph2329, %scalar.ph2357.prol.loopexit, %scalar.ph2357, %scalar.ph2393.prol.loopexit, %scalar.ph2393, %scalar.ph2427.prol.loopexit, %scalar.ph2427, %scalar.ph2456.prol.loopexit, %scalar.ph2456, %scalar.ph2484.prol.loopexit, %scalar.ph2484, %scalar.ph2522.prol.loopexit, %scalar.ph2522, %scalar.ph2558.prol.loopexit, %scalar.ph2558, %bb.aw, %scalar.ph2594.prol.loopexit, %scalar.ph2594, %scalar.ph2630.prol.loopexit, %scalar.ph2630, %scalar.ph2664.prol.loopexit, %scalar.ph2664, %scalar.ph2698.prol.loopexit, %scalar.ph2698, %scalar.ph2734.prol.loopexit, %scalar.ph2734, %scalar.ph2768.prol.loopexit, %scalar.ph2768, %middle.block, %middle.block1299, %middle.block1323, %middle.block1341, %middle.block1359, %middle.block1375, %middle.block1399, %middle.block1421, %middle.block1443, %middle.block1459, %middle.block1483, %middle.block1505, %middle.block1527, %middle.block1561, %middle.block1599, %middle.block1637, %middle.block1664, %middle.block1691, %middle.block1716, %middle.block1741, %middle.block1779, %middle.block1815, %middle.block1851, %middle.block1876, %middle.block1914, %middle.block1950, %middle.block1986, %middle.block2011, %middle.block2049, %middle.block2085, %middle.block2121, %middle.block2146, %middle.block2171, %middle.block2194, %middle.block2217, %middle.block2253, %middle.block2287, %middle.block2321, %middle.block2344, %middle.block2380, %middle.block2414, %middle.block2448, %middle.block2471, %middle.block2509, %middle.block2545, %middle.block2581, %middle.block2617, %middle.block2651, %middle.block2685, %middle.block2721, %middle.block2755, %middle.block2789, %.preheader701, %.preheader699, %.preheader697, %.preheader695, %.preheader693, %.preheader691, %.preheader689, %.preheader687, %.preheader685, %.preheader683, %.preheader681, %.preheader679, %.preheader677, %.preheader675, %.preheader673, %.preheader671, %.preheader669, %.preheader667, %.preheader665, %.preheader663, %.preheader661, %.preheader659, %.preheader657, %.preheader655, %.preheader653, %.preheader651, %.preheader649, %.preheader647, %.preheader645, %.preheader643, %.preheader641, %.preheader639, %.preheader637, %.preheader635, %.preheader633, %.preheader631, %.preheader629, %.preheader627, %.preheader625, %.preheader623, %.preheader621, %.preheader619, %.preheader617, %.preheader615, %.preheader613, %.preheader611, %.preheader609, %.preheader607, %.preheader605, %.preheader603, %.preheader601, %.preheader599, %.preheader597, %.preheader, %bb.aq, %bb.bb, %bb.au, %bb.ay, %bb.az, %bb.al, %bb.cf, %bb.bp, %bb.u, %bb.ad
  %i.chn = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.chn, align 8, !tbaa !38
  br label %bb.cl

bb.cl:                                            ; preds = %bb.m, %bb.r, %.loopexit, %bb.a
  ret void
}

declare void @_ZN5Ipopt6Vector17AddTwoVectorsImplEdRKS0_dS2_d(ptr noundef nonnull align 8 dereferenceable(205), double noundef, ptr noundef nonnull align 8 dereferenceable(205), double noundef, ptr noundef nonnull align 8 dereferenceable(205), double noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK5Ipopt11DenseVector15FracToBoundImplERKNS_6VectorEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %1, double noundef %2) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 13 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39, !range !50, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39, !range !50, !noundef !51
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.lr.ph58, label %.loopexit

.lr.ph58:                                         ; preds = %.preheader
  %i.q = fneg double %2                           ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  %wide.trip.count71 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter93 = and i64 %wide.trip.count71, 1
  %i.t = icmp eq i32 %i.d, 1
  br i1 %i.t, label %.epil.preheader92, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter97 = and i64 %wide.trip.count71, 2147483646
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.v = load double, ptr %i.u, align 8, !tbaa !40 ; 2 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = fneg double %2
  %i.y = fdiv double %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = fmul double %i.y, %i.aa                 ; 2 uses
  %i.ac = fcmp olt double %i.ab, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ac, double %i.ab, double 1.000000e+00
  br label %.loopexit

bb.f:                                             ; preds = %bb.j, %.lr.ph58.new
  %indvars.iv68 = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next69.1, %bb.j ] ; 3 uses
  %.03856 = phi double [ 1.000000e+00, %.lr.ph58.new ], [ %.1.1, %bb.j ] ; 3 uses
  %niter98 = phi i64 [ 0, %.lr.ph58.new ], [ %niter98.next.1, %bb.j ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv68
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !52 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK5Ipopt11DenseVector15FracToBoundImplERKNS_6VectorEd:bb.a
bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.1 = phi double [ %.sroa.speculated.i45.1, %bb.q ], [ %.4, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit82.unr-lcssa, label %bb.n, !llvm.loop !602

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.loopexit, label %.epil.preheader92

.epil.preheader92:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv68.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next69.1, %.loopexit.loopexit.unr-lcssa ]
  %.03856.epil.init = phi double [ 1.000000e+00, %.lr.ph58 ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod96 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv68.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %i.cb = fcmp olt double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.epil.preheader92
  %i.cc = fdiv double %i.q, %i.ca
  %i.cd = fmul double %i.cc, %i.s                 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %.03856.epil.init
  %.sroa.speculated.i43.epil = select i1 %i.ce, double %i.cd, double %.03856.epil.init
  br label %.loopexit

.loopexit.loopexit81.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.loopexit, label %.epil.preheader85

.epil.preheader85:                                ; preds = %.loopexit.loopexit81.unr-lcssa, %.lr.ph54
  %indvars.iv63.epil.init = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next64.1, %.loopexit.loopexit81.unr-lcssa ]
  %.252.epil.init = phi double [ 1.000000e+00, %.lr.ph54 ], [ %.sroa.speculated.i44.1, %.loopexit.loopexit81.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv63.epil.init
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !52
  %i.ch = fmul double %i.ay, %i.cg                ; 2 uses
  %i.ci = fcmp olt double %i.ch, %.252.epil.init
  %.sroa.speculated.i44.epil = select i1 %i.ci, double %i.ch, double %.252.epil.init
  br label %.loopexit

.loopexit.loopexit82.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit82.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit82.unr-lcssa ] ; 2 uses
  %.350.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %.4.1, %.loopexit.loopexit82.unr-lcssa ] ; 3 uses
  %lcmp.mod84 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !52 ; 2 uses
  %i.cl = fcmp olt double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.epil.preheader
  %i.cm = fdiv double %i.ar, %i.ck
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.co = load double, ptr %i.cn, align 8, !tbaa !52
  %i.cp = fmul double %i.cm, %i.co                ; 2 uses
  %i.cq = fcmp olt double %i.cp, %.350.epil.init
  %.sroa.speculated.i45.epil = select i1 %i.cq, double %i.cp, double %.350.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit82.unr-lcssa, %bb.t, %.epil.preheader, %.epil.preheader85, %.loopexit.loopexit81.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.s, %.epil.preheader92, %.preheader48, %.preheader, %bb.d, %bb.e, %bb.l, %bb.a
  %.039 = phi double [ 1.000000e+00, %bb.a ], [ %.sroa.speculated.i, %bb.e ], [ 1.000000e+00, %bb.d ], [ %.sroa.speculated.i44.epil, %.epil.preheader85 ], [ 1.000000e+00, %.preheader48 ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %.preheader ], [ %.03856.epil.init, %.epil.preheader92 ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.speculated.i43.epil, %bb.s ], [ %.sroa.speculated.i44.1, %.loopexit.loopexit81.unr-lcssa ], [ %.4.1, %.loopexit.loopexit82.unr-lcssa ], [ %.sroa.speculated.i45.epil, %bb.t ], [ %.350.epil.init, %.epil.preheader ]
  ret double %.039
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector21AddVectorQuotientImplEdRKNS_6VectorES3_d(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %3, double noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51 ; 3 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 233
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39, !range !50, !noundef !51 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1                  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39, !range !50, !noundef !51
  %i.o = and i8 %i.n, %i.b
  %or.cond.not = icmp ne i8 %i.o, 0
  %brmerge.not = and i1 %or.cond.not, %i.f
  br i1 %brmerge.not, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.p = and i8 %i.e, %i.b
  %.not126 = icmp eq i8 %i.p, 0
  br i1 %.not126, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.r = load double, ptr %i.q, align 8, !tbaa !40
  %i.s = fmul double %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.u = load double, ptr %i.t, align 8, !tbaa !40
  %i.v = fdiv double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.v, ptr %i.w, align 8, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = fmul double %1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %4, double %i.y, double %i.ae)
  store double %i.af, ptr %i.x, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.ah, align 1, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.s, label %_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit

_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #19
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.au, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.0.i.i, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.h, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.av = phi ptr [ %i.al, %bb.h ], [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ] ; 65 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 33 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41 ; 33 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  br i1 %i.l, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !37 ; 7 uses
  %i.bg = icmp sgt i32 %i.bf, 0                   ; 3 uses
  br i1 %i.c, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  br i1 %i.bg, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count217 = zext nneg i32 %i.bf to i64 ; 6 uses
  %min.iters.check522 = icmp eq i32 %i.bf, 1
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph163
  %i.bi = shl nuw nsw i64 %wide.trip.count217, 3  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %2, i64 248
  %5 = getelementptr i8, ptr %i.bb, i64 %i.bi
  %bound0524.a = icmp ult ptr %i.av, %i.bk
  %bound1525 = icmp ult ptr %i.bh, %i.bj
  %found.conflict526 = and i1 %bound0524.a, %bound1525
  %bound0527 = icmp ult ptr %i.av, %5
  %bound1528 = icmp ult ptr %i.bb, %i.bj
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %found.conflict526, %found.conflict529
  br i1 %conflict.rdx530, label %scalar.ph521.preheader, label %vector.ph531

vector.ph531:                                     ; preds = %vector.memcheck523
  %n.vec532 = and i64 %wide.trip.count217, 2147483646 ; 3 uses
  %i.bl = load double, ptr %i.bh, align 8, !tbaa !40, !alias.scope !655
  %i.bm = fmul double %1, %i.bl
  %broadcast.splatinsert536 = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat537 = shufflevector <2 x double> %broadcast.splatinsert536, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph531
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next538, %vector.body533 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index534
  %wide.load535 = load <2 x double>, ptr %i.bn, align 8, !tbaa !52, !alias.scope !656
  %i.bo = fdiv <2 x double> %broadcast.splat537, %wide.load535
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index534
  store <2 x double> %i.bo, ptr %i.bp, align 8, !tbaa !52, !alias.scope !657, !noalias !658
  %index.next538 = add nuw i64 %index534, 2       ; 2 uses
  %i.bq = icmp eq i64 %index.next538, %n.vec532
  br i1 %i.bq, label %middle.block539, label %vector.body533, !llvm.loop !607

middle.block539:                                  ; preds = %vector.body533
  %cmp.n540 = icmp eq i64 %n.vec532, %wide.trip.count217
  br i1 %cmp.n540, label %.loopexit, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %vector.memcheck523, %.lr.ph163, %middle.block539
  %indvars.iv214.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %.lr.ph163 ], [ %n.vec532, %middle.block539 ] ; 5 uses
  %xtraiter567 = and i64 %wide.trip.count217, 1
  %lcmp.mod568.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod568.not, label %scalar.ph521.prol.loopexit, label %scalar.ph521.prol

scalar.ph521.prol:                                ; preds = %scalar.ph521.preheader
  %i.br = load double, ptr %i.bh, align 8, !tbaa !40
  %i.bs = fmul double %1, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv214.ph
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !52
  %i.bv = fdiv double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv214.ph
  store double %i.bv, ptr %i.bw, align 8, !tbaa !52
  %indvars.iv.next215.prol = or disjoint i64 %indvars.iv214.ph, 1
  br label %scalar.ph521.prol.loopexit

scalar.ph521.prol.loopexit:                       ; preds = %scalar.ph521.prol, %scalar.ph521.preheader
  %indvars.iv214.unr = phi i64 [ %indvars.iv214.ph, %scalar.ph521.preheader ], [ %indvars.iv.next215.prol, %scalar.ph521.prol ]
  %i.bx = add nsw i64 %wide.trip.count217, -1
  %i.by = icmp eq i64 %indvars.iv214.ph, %i.bx
  br i1 %i.by, label %.loopexit, label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.prol.loopexit, %scalar.ph521
  %indvars.iv214 = phi i64 [ %indvars.iv.next215.1, %scalar.ph521 ], [ %indvars.iv214.unr, %scalar.ph521.prol.loopexit ] ; 4 uses
  %i.bz = load double, ptr %i.bh, align 8, !tbaa !40
  %i.ca = fmul double %1, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv214
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !52
  %i.cd = fdiv double %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv214
  store double %i.cd, ptr %i.ce, align 8, !tbaa !52
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.cf = load double, ptr %i.bh, align 8, !tbaa !40
  %i.cg = fmul double %1, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next215
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !52
  %i.cj = fdiv double %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next215
  store double %i.cj, ptr %i.ck, align 8, !tbaa !52
  %indvars.iv.next215.1 = add nuw nsw i64 %indvars.iv214, 2 ; 2 uses
  %exitcond218.not.1 = icmp eq i64 %indvars.iv.next215.1, %wide.trip.count217
  br i1 %exitcond218.not.1, label %.loopexit, label %scalar.ph521, !llvm.loop !608

bb.l:                                             ; preds = %bb.k
  br i1 %i.f, label %.preheader127, label %.preheader129

.preheader129:                                    ; preds = %bb.l
  br i1 %i.bg, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %.preheader129
  %wide.trip.count207 = zext nneg i32 %i.bf to i64 ; 5 uses
  %min.iters.check461 = icmp eq i32 %i.bf, 1
  br i1 %min.iters.check461, label %scalar.ph460.preheader, label %vector.memcheck462

vector.memcheck462:                               ; preds = %.lr.ph159
  %i.cl = sub i64 %i.az, %i.aw
  %diff.check463 = icmp ugt i64 %i.cl, -16
  %i.cm = sub i64 %i.bc, %i.aw
  %diff.check464 = icmp ugt i64 %i.cm, -16
  %conflict.rdx465 = or i1 %diff.check463, %diff.check464
  br i1 %conflict.rdx465, label %scalar.ph460.preheader, label %vector.ph466

vector.ph466:                                     ; preds = %vector.memcheck462
  %n.vec467 = and i64 %wide.trip.count207, 2147483646 ; 3 uses
  %broadcast.splatinsert468 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat469 = shufflevector <2 x double> %broadcast.splatinsert468, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph466
  %index471 = phi i64 [ 0, %vector.ph466 ], [ %index.next474, %vector.body470 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index471
  %wide.load472 = load <2 x double>, ptr %i.cn, align 8, !tbaa !52
  %i.co = fmul <2 x double> %broadcast.splat469, %wide.load472
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index471
  %wide.load473 = load <2 x double>, ptr %i.cp, align 8, !tbaa !52
  %i.cq = fdiv <2 x double> %i.co, %wide.load473
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index471
  store <2 x double> %i.cq, ptr %i.cr, align 8, !tbaa !52
  %index.next474 = add nuw i64 %index471, 2       ; 2 uses
  %i.cs = icmp eq i64 %index.next474, %n.vec467
  br i1 %i.cs, label %middle.block475, label %vector.body470, !llvm.loop !609

middle.block475:                                  ; preds = %vector.body470
  %cmp.n476 = icmp eq i64 %n.vec467, %wide.trip.count207
  br i1 %cmp.n476, label %.loopexit, label %scalar.ph460.preheader

scalar.ph460.preheader:                           ; preds = %vector.memcheck462, %.lr.ph159, %middle.block475
  %indvars.iv204.ph = phi i64 [ 0, %vector.memcheck462 ], [ 0, %.lr.ph159 ], [ %n.vec467, %middle.block475 ] ; 6 uses
  %xtraiter563 = and i64 %wide.trip.count207, 1
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %scalar.ph460.prol.loopexit, label %scalar.ph460.prol

scalar.ph460.prol:                                ; preds = %scalar.ph460.preheader
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv204.ph
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !52
  %i.cv = fmul double %1, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv204.ph
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !52
  %i.cy = fdiv double %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv204.ph
  store double %i.cy, ptr %i.cz, align 8, !tbaa !52
  %indvars.iv.next205.prol = or disjoint i64 %indvars.iv204.ph, 1
  br label %scalar.ph460.prol.loopexit

scalar.ph460.prol.loopexit:                       ; preds = %scalar.ph460.prol, %scalar.ph460.preheader
  %indvars.iv204.unr = phi i64 [ %indvars.iv204.ph, %scalar.ph460.preheader ], [ %indvars.iv.next205.prol, %scalar.ph460.prol ]
  %i.da = add nsw i64 %wide.trip.count207, -1
  %i.db = icmp eq i64 %indvars.iv204.ph, %i.da
  br i1 %i.db, label %.loopexit, label %scalar.ph460

.preheader127:                                    ; preds = %bb.l
  br i1 %i.bg, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %.preheader127
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count212 = zext nneg i32 %i.bf to i64 ; 6 uses
  %min.iters.check489 = icmp eq i32 %i.bf, 1
  br i1 %min.iters.check489, label %scalar.ph488.preheader, label %vector.memcheck490

vector.memcheck490:                               ; preds = %.lr.ph161
  %i.dd = shl nuw nsw i64 %wide.trip.count212, 3  ; 2 uses
  %i.de = getelementptr i8, ptr %i.av, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.ay, i64 %i.dd
  %6 = getelementptr i8, ptr %3, i64 248
  %bound0491.a = icmp ult ptr %i.av, %i.df
  %bound1492 = icmp ult ptr %i.ay, %i.de
  %found.conflict493 = and i1 %bound0491.a, %bound1492
  %bound0494 = icmp ult ptr %i.av, %6
  %bound1495 = icmp ult ptr %i.dc, %i.de
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %found.conflict493, %found.conflict496
  br i1 %conflict.rdx497, label %scalar.ph488.preheader, label %vector.ph498

vector.ph498:                                     ; preds = %vector.memcheck490
  %n.vec499 = and i64 %wide.trip.count212, 2147483646 ; 3 uses
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !40, !alias.scope !659
  %broadcast.splatinsert505 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat506 = shufflevector <2 x double> %broadcast.splatinsert505, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert500 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat501 = shufflevector <2 x double> %broadcast.splatinsert500, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph498
  %index503 = phi i64 [ 0, %vector.ph498 ], [ %index.next507, %vector.body502 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index503
  %wide.load504 = load <2 x double>, ptr %i.dh, align 8, !tbaa !52, !alias.scope !660
  %i.di = fmul <2 x double> %broadcast.splat501, %wide.load504
  %i.dj = fdiv <2 x double> %i.di, %broadcast.splat506
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index503
  store <2 x double> %i.dj, ptr %i.dk, align 8, !tbaa !52, !alias.scope !661, !noalias !662
  %index.next507 = add nuw i64 %index503, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next507, %n.vec499
  br i1 %i.dl, label %middle.block508, label %vector.body502, !llvm.loop !614

middle.block508:                                  ; preds = %vector.body502
  %cmp.n509 = icmp eq i64 %n.vec499, %wide.trip.count212
  br i1 %cmp.n509, label %.loopexit, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %vector.memcheck490, %.lr.ph161, %middle.block508
  %indvars.iv209.ph = phi i64 [ 0, %vector.memcheck490 ], [ 0, %.lr.ph161 ], [ %n.vec499, %middle.block508 ] ; 5 uses
  %xtraiter565 = and i64 %wide.trip.count212, 1
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod566.not, label %scalar.ph488.prol.loopexit, label %scalar.ph488.prol

scalar.ph488.prol:                                ; preds = %scalar.ph488.preheader
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv209.ph
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !52
  %i.do = fmul double %1, %i.dn
  %i.dp = load double, ptr %i.dc, align 8, !tbaa !40
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv209.ph
  store double %i.dq, ptr %i.dr, align 8, !tbaa !52
  %indvars.iv.next210.prol = or disjoint i64 %indvars.iv209.ph, 1
  br label %scalar.ph488.prol.loopexit

scalar.ph488.prol.loopexit:                       ; preds = %scalar.ph488.prol, %scalar.ph488.preheader
  %indvars.iv209.unr = phi i64 [ %indvars.iv209.ph, %scalar.ph488.preheader ], [ %indvars.iv.next210.prol, %scalar.ph488.prol ]
  %i.ds = add nsw i64 %wide.trip.count212, -1
  %i.dt = icmp eq i64 %indvars.iv209.ph, %i.ds
  br i1 %i.dt, label %.loopexit, label %scalar.ph488

scalar.ph488:                                     ; preds = %scalar.ph488.prol.loopexit, %scalar.ph488
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %scalar.ph488 ], [ %indvars.iv209.unr, %scalar.ph488.prol.loopexit ] ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv209
  %i.dv = load double, ptr %i.du, align 8, !tbaa !52
  %i.dw = fmul double %1, %i.dv
  %i.dx = load double, ptr %i.dc, align 8, !tbaa !40
  %i.dy = fdiv double %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv209
  store double %i.dy, ptr %i.dz, align 8, !tbaa !52
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next210
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !52
  %i.ec = fmul double %1, %i.eb
  %i.ed = load double, ptr %i.dc, align 8, !tbaa !40
  %i.ee = fdiv double %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next210
  store double %i.ee, ptr %i.ef, align 8, !tbaa !52
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %exitcond213.not.1 = icmp eq i64 %indvars.iv.next210.1, %wide.trip.count212
  br i1 %exitcond213.not.1, label %.loopexit, label %scalar.ph488, !llvm.loop !615

scalar.ph460:                                     ; preds = %scalar.ph460.prol.loopexit, %scalar.ph460
  %indvars.iv204 = phi i64 [ %indvars.iv.next205.1, %scalar.ph460 ], [ %indvars.iv204.unr, %scalar.ph460.prol.loopexit ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv204
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !52
  %i.ei = fmul double %1, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv204
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !52
  %i.el = fdiv double %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv204
  store double %i.el, ptr %i.em, align 8, !tbaa !52
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next205
  %i.eo = load double, ptr %i.en, align 8, !tbaa !52
  %i.ep = fmul double %1, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next205
  %i.er = load double, ptr %i.eq, align 8, !tbaa !52
  %i.es = fdiv double %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next205
  store double %i.es, ptr %i.et, align 8, !tbaa !52
  %indvars.iv.next205.1 = add nuw nsw i64 %indvars.iv204, 2 ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %indvars.iv.next205.1, %wide.trip.count207
  br i1 %exitcond208.not.1, label %.loopexit, label %scalar.ph460, !llvm.loop !616

bb.m:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !39, !range !50, !noundef !51
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !40
  %i.ez = fmul double %4, %i.ey                   ; 12 uses
  %i.fa = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !37 ; 7 uses
  %i.fd = icmp sgt i32 %i.fc, 0                   ; 3 uses
  br i1 %i.c, label %.preheader131, label %bb.o

.preheader131:                                    ; preds = %bb.n
  br i1 %i.fd, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.preheader131
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count202 = zext nneg i32 %i.fc to i64 ; 6 uses
  %min.iters.check434 = icmp eq i32 %i.fc, 1
  br i1 %min.iters.check434, label %scalar.ph433.preheader, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.lr.ph157
  %i.ff = shl nuw nsw i64 %wide.trip.count202, 3  ; 2 uses
  %i.fg = getelementptr i8, ptr %i.av, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %2, i64 248
  %7 = getelementptr i8, ptr %i.bb, i64 %i.ff
  %bound0436.a = icmp ult ptr %i.av, %i.fh
  %bound1437 = icmp ult ptr %i.fe, %i.fg
  %found.conflict438 = and i1 %bound0436.a, %bound1437
  %bound0439 = icmp ult ptr %i.av, %7
  %bound1440 = icmp ult ptr %i.bb, %i.fg
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %found.conflict438, %found.conflict441
  br i1 %conflict.rdx442, label %scalar.ph433.preheader, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck435
  %n.vec444 = and i64 %wide.trip.count202, 2147483646 ; 3 uses
  %i.fi = load double, ptr %i.fe, align 8, !tbaa !40, !alias.scope !663
  %i.fj = fmul double %1, %i.fi
  %broadcast.splatinsert450 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat451 = shufflevector <2 x double> %broadcast.splatinsert450, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert445 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat446 = shufflevector <2 x double> %broadcast.splatinsert445, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph443
  %index448 = phi i64 [ 0, %vector.ph443 ], [ %index.next452, %vector.body447 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index448
  %wide.load449 = load <2 x double>, ptr %i.fk, align 8, !tbaa !52, !alias.scope !664
  %i.fl = fdiv <2 x double> %broadcast.splat451, %wide.load449
  %i.fm = fadd <2 x double> %broadcast.splat446, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index448
  store <2 x double> %i.fm, ptr %i.fn, align 8, !tbaa !52, !alias.scope !665, !noalias !666
  %index.next452 = add nuw i64 %index448, 2       ; 2 uses
  %i.fo = icmp eq i64 %index.next452, %n.vec444
  br i1 %i.fo, label %middle.block453, label %vector.body447, !llvm.loop !621

middle.block453:                                  ; preds = %vector.body447
  %cmp.n454 = icmp eq i64 %n.vec444, %wide.trip.count202
  br i1 %cmp.n454, label %.loopexit, label %scalar.ph433.preheader

scalar.ph433.preheader:                           ; preds = %vector.memcheck435, %.lr.ph157, %middle.block453
  %indvars.iv199.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph157 ], [ %n.vec444, %middle.block453 ] ; 5 uses
  %xtraiter561 = and i64 %wide.trip.count202, 1
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %scalar.ph433.prol.loopexit, label %scalar.ph433.prol

scalar.ph433.prol:                                ; preds = %scalar.ph433.preheader
  %i.fp = load double, ptr %i.fe, align 8, !tbaa !40
  %i.fq = fmul double %1, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv199.ph
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !52
  %i.ft = fdiv double %i.fq, %i.fs
  %i.fu = fadd double %i.ez, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv199.ph
  store double %i.fu, ptr %i.fv, align 8, !tbaa !52
  %indvars.iv.next200.prol = or disjoint i64 %indvars.iv199.ph, 1
  br label %scalar.ph433.prol.loopexit

scalar.ph433.prol.loopexit:                       ; preds = %scalar.ph433.prol, %scalar.ph433.preheader
  %indvars.iv199.unr = phi i64 [ %indvars.iv199.ph, %scalar.ph433.preheader ], [ %indvars.iv.next200.prol, %scalar.ph433.prol ]
  %i.fw = add nsw i64 %wide.trip.count202, -1
  %i.fx = icmp eq i64 %indvars.iv199.ph, %i.fw
  br i1 %i.fx, label %.loopexit, label %scalar.ph433

scalar.ph433:                                     ; preds = %scalar.ph433.prol.loopexit, %scalar.ph433
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %scalar.ph433 ], [ %indvars.iv199.unr, %scalar.ph433.prol.loopexit ] ; 4 uses
  %i.fy = load double, ptr %i.fe, align 8, !tbaa !40
  %i.fz = fmul double %1, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv199
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !52
  %i.gc = fdiv double %i.fz, %i.gb
  %i.gd = fadd double %i.ez, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv199
  store double %i.gd, ptr %i.ge, align 8, !tbaa !52
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.gf = load double, ptr %i.fe, align 8, !tbaa !40
  %i.gg = fmul double %1, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next200
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !52
  %i.gj = fdiv double %i.gg, %i.gi
  %i.gk = fadd double %i.ez, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next200
  store double %i.gk, ptr %i.gl, align 8, !tbaa !52
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count202
  br i1 %exitcond203.not.1, label %.loopexit, label %scalar.ph433, !llvm.loop !622

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %.preheader133, label %.preheader135

.preheader135:                                    ; preds = %bb.o
  br i1 %i.fd, label %.lr.ph153, label %.loopexit

.lr.ph153:                                        ; preds = %.preheader135
  %wide.trip.count192 = zext nneg i32 %i.fc to i64 ; 5 uses
  %min.iters.check370 = icmp eq i32 %i.fc, 1
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.memcheck371

vector.memcheck371:                               ; preds = %.lr.ph153
  %i.gm = sub i64 %i.az, %i.aw
  %diff.check = icmp ugt i64 %i.gm, -16
  %i.gn = sub i64 %i.bc, %i.aw
  %diff.check372 = icmp ugt i64 %i.gn, -16
  %conflict.rdx373 = or i1 %diff.check, %diff.check372
  br i1 %conflict.rdx373, label %scalar.ph369.preheader, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck371
  %n.vec375 = and i64 %wide.trip.count192, 2147483646 ; 3 uses
  %broadcast.splatinsert376 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat377 = shufflevector <2 x double> %broadcast.splatinsert376, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat379 = shufflevector <2 x double> %broadcast.splatinsert378, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph374
  %index381 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body380 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index381
  %wide.load382 = load <2 x double>, ptr %i.go, align 8, !tbaa !52
  %i.gp = fmul <2 x double> %broadcast.splat377, %wide.load382
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index381
  %wide.load383 = load <2 x double>, ptr %i.gq, align 8, !tbaa !52
  %i.gr = fdiv <2 x double> %i.gp, %wide.load383
  %i.gs = fadd <2 x double> %broadcast.splat379, %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index381
  store <2 x double> %i.gs, ptr %i.gt, align 8, !tbaa !52
  %index.next384 = add nuw i64 %index381, 2       ; 2 uses
  %i.gu = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.gu, label %middle.block385, label %vector.body380, !llvm.loop !623

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %n.vec375, %wide.trip.count192
  br i1 %cmp.n386, label %.loopexit, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %vector.memcheck371, %.lr.ph153, %middle.block385
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck371 ], [ 0, %.lr.ph153 ], [ %n.vec375, %middle.block385 ] ; 6 uses
  %xtraiter557 = and i64 %wide.trip.count192, 1
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %scalar.ph369.prol.loopexit, label %scalar.ph369.prol

scalar.ph369.prol:                                ; preds = %scalar.ph369.preheader
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv189.ph
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !52
  %i.gx = fmul double %1, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv189.ph
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !52
  %i.ha = fdiv double %i.gx, %i.gz
  %i.hb = fadd double %i.ez, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv189.ph
  store double %i.hb, ptr %i.hc, align 8, !tbaa !52
  %indvars.iv.next190.prol = or disjoint i64 %indvars.iv189.ph, 1
  br label %scalar.ph369.prol.loopexit

scalar.ph369.prol.loopexit:                       ; preds = %scalar.ph369.prol, %scalar.ph369.preheader
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %scalar.ph369.preheader ], [ %indvars.iv.next190.prol, %scalar.ph369.prol ]
  %i.hd = add nsw i64 %wide.trip.count192, -1
  %i.he = icmp eq i64 %indvars.iv189.ph, %i.hd
  br i1 %i.he, label %.loopexit, label %scalar.ph369

.preheader133:                                    ; preds = %bb.o
  br i1 %i.fd, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %.preheader133
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count197 = zext nneg i32 %i.fc to i64 ; 6 uses
  %min.iters.check399 = icmp eq i32 %i.fc, 1
  br i1 %min.iters.check399, label %scalar.ph398.preheader, label %vector.memcheck400

vector.memcheck400:                               ; preds = %.lr.ph155
  %i.hg = shl nuw nsw i64 %wide.trip.count197, 3  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.av, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.ay, i64 %i.hg
  %8 = getelementptr i8, ptr %3, i64 248
  %bound0401.a = icmp ult ptr %i.av, %i.hi
  %bound1402 = icmp ult ptr %i.ay, %i.hh
  %found.conflict403 = and i1 %bound0401.a, %bound1402
  %bound0404 = icmp ult ptr %i.av, %8
  %bound1405 = icmp ult ptr %i.hf, %i.hh
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %found.conflict403, %found.conflict406
  br i1 %conflict.rdx407, label %scalar.ph398.preheader, label %vector.ph408

vector.ph408:                                     ; preds = %vector.memcheck400
  %n.vec409 = and i64 %wide.trip.count197, 2147483646 ; 3 uses
  %i.hj = load double, ptr %i.hf, align 8, !tbaa !40, !alias.scope !667
  %broadcast.splatinsert417 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat418 = shufflevector <2 x double> %broadcast.splatinsert417, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat411 = shufflevector <2 x double> %broadcast.splatinsert410, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert412 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat413 = shufflevector <2 x double> %broadcast.splatinsert412, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph408
  %index415 = phi i64 [ 0, %vector.ph408 ], [ %index.next419, %vector.body414 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index415
  %wide.load416 = load <2 x double>, ptr %i.hk, align 8, !tbaa !52, !alias.scope !668
  %i.hl = fmul <2 x double> %broadcast.splat411, %wide.load416
  %i.hm = fdiv <2 x double> %i.hl, %broadcast.splat418
  %i.hn = fadd <2 x double> %broadcast.splat413, %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index415
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !52, !alias.scope !669, !noalias !670
  %index.next419 = add nuw i64 %index415, 2       ; 2 uses
  %i.hp = icmp eq i64 %index.next419, %n.vec409
  br i1 %i.hp, label %middle.block420, label %vector.body414, !llvm.loop !628

middle.block420:                                  ; preds = %vector.body414
  %cmp.n421 = icmp eq i64 %n.vec409, %wide.trip.count197
  br i1 %cmp.n421, label %.loopexit, label %scalar.ph398.preheader

scalar.ph398.preheader:                           ; preds = %vector.memcheck400, %.lr.ph155, %middle.block420
  %indvars.iv194.ph = phi i64 [ 0, %vector.memcheck400 ], [ 0, %.lr.ph155 ], [ %n.vec409, %middle.block420 ] ; 5 uses
  %xtraiter559 = and i64 %wide.trip.count197, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %scalar.ph398.prol.loopexit, label %scalar.ph398.prol

scalar.ph398.prol:                                ; preds = %scalar.ph398.preheader
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv194.ph
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !52
  %i.hs = fmul double %1, %i.hr
  %i.ht = load double, ptr %i.hf, align 8, !tbaa !40
  %i.hu = fdiv double %i.hs, %i.ht
  %i.hv = fadd double %i.ez, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv194.ph
  store double %i.hv, ptr %i.hw, align 8, !tbaa !52
  %indvars.iv.next195.prol = or disjoint i64 %indvars.iv194.ph, 1
  br label %scalar.ph398.prol.loopexit

scalar.ph398.prol.loopexit:                       ; preds = %scalar.ph398.prol, %scalar.ph398.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %scalar.ph398.preheader ], [ %indvars.iv.next195.prol, %scalar.ph398.prol ]
  %i.hx = add nsw i64 %wide.trip.count197, -1
  %i.hy = icmp eq i64 %indvars.iv194.ph, %i.hx
  br i1 %i.hy, label %.loopexit, label %scalar.ph398

scalar.ph398:                                     ; preds = %scalar.ph398.prol.loopexit, %scalar.ph398
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %scalar.ph398 ], [ %indvars.iv194.unr, %scalar.ph398.prol.loopexit ] ; 4 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv194
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !52
  %i.ib = fmul double %1, %i.ia
  %i.ic = load double, ptr %i.hf, align 8, !tbaa !40
  %i.id = fdiv double %i.ib, %i.ic
  %i.ie = fadd double %i.ez, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv194
  store double %i.ie, ptr %i.if, align 8, !tbaa !52
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next195
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !52
  %i.ii = fmul double %1, %i.ih
  %i.ij = load double, ptr %i.hf, align 8, !tbaa !40
  %i.ik = fdiv double %i.ii, %i.ij
  %i.il = fadd double %i.ez, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next195
  store double %i.il, ptr %i.im, align 8, !tbaa !52
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1, %wide.trip.count197
  br i1 %exitcond198.not.1, label %.loopexit, label %scalar.ph398, !llvm.loop !629

scalar.ph369:                                     ; preds = %scalar.ph369.prol.loopexit, %scalar.ph369
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %scalar.ph369 ], [ %indvars.iv189.unr, %scalar.ph369.prol.loopexit ] ; 5 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv189
  %i.io = load double, ptr %i.in, align 8, !tbaa !52
  %i.ip = fmul double %1, %i.io
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv189
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !52
  %i.is = fdiv double %i.ip, %i.ir
  %i.it = fadd double %i.ez, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv189
  store double %i.it, ptr %i.iu, align 8, !tbaa !52
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next190
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !52
  %i.ix = fmul double %1, %i.iw
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next190
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !52
  %i.ja = fdiv double %i.ix, %i.iz
  %i.jb = fadd double %i.ez, %i.ja
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next190
  store double %i.jb, ptr %i.jc, align 8, !tbaa !52
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %exitcond193.not.1 = icmp eq i64 %indvars.iv.next190.1, %wide.trip.count192
  br i1 %exitcond193.not.1, label %.loopexit, label %scalar.ph369, !llvm.loop !630

bb.p:                                             ; preds = %bb.m
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !37 ; 9 uses
  %i.jg = icmp sgt i32 %i.jf, 0                   ; 4 uses
  br i1 %i.c, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.f, label %.preheader137, label %.preheader139

.preheader139:                                    ; preds = %bb.q
  br i1 %i.jg, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.preheader139
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count182 = zext nneg i32 %i.jf to i64 ; 6 uses
  %min.iters.check309 = icmp eq i32 %i.jf, 1
  br i1 %min.iters.check309, label %scalar.ph308.preheader, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph149
  %i.ji = shl nuw nsw i64 %wide.trip.count182, 3  ; 2 uses
  %i.jj = getelementptr i8, ptr %i.av, i64 %i.ji  ; 2 uses
  %i.jk = getelementptr i8, ptr %2, i64 248
  %9 = getelementptr i8, ptr %i.bb, i64 %i.ji
  %bound0311.a = icmp ult ptr %i.av, %i.jk
  %bound1312 = icmp ult ptr %i.jh, %i.jj
  %found.conflict313 = and i1 %bound0311.a, %bound1312
  %bound0314 = icmp ult ptr %i.av, %9
  %bound1315 = icmp ult ptr %i.bb, %i.jj
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %found.conflict313, %found.conflict316
  br i1 %conflict.rdx317, label %scalar.ph308.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck310
  %n.vec319 = and i64 %wide.trip.count182, 2147483646 ; 3 uses
  %i.jl = load double, ptr %i.jh, align 8, !tbaa !40, !alias.scope !671
  %i.jm = fmul double %1, %i.jl
  %broadcast.splatinsert326 = insertelement <2 x double> poison, double %i.jm, i64 0
  %broadcast.splat327 = shufflevector <2 x double> %broadcast.splatinsert326, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat321 = shufflevector <2 x double> %broadcast.splatinsert320, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph318
  %index323 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body322 ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index323 ; 2 uses
  %wide.load324 = load <2 x double>, ptr %i.jn, align 8, !tbaa !52, !alias.scope !672, !noalias !673
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index323
  %wide.load325 = load <2 x double>, ptr %i.jo, align 8, !tbaa !52, !alias.scope !674
  %i.jp = fdiv <2 x double> %broadcast.splat327, %wide.load325
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat321, <2 x double> %wide.load324, <2 x double> %i.jp)
  store <2 x double> %i.jq, ptr %i.jn, align 8, !tbaa !52, !alias.scope !672, !noalias !673
  %index.next328 = add nuw i64 %index323, 2       ; 2 uses
  %i.jr = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.jr, label %middle.block329, label %vector.body322, !llvm.loop !635

middle.block329:                                  ; preds = %vector.body322
  %cmp.n330 = icmp eq i64 %n.vec319, %wide.trip.count182
  br i1 %cmp.n330, label %.loopexit, label %scalar.ph308.preheader

scalar.ph308.preheader:                           ; preds = %vector.memcheck310, %.lr.ph149, %middle.block329
  %indvars.iv179.ph = phi i64 [ 0, %vector.memcheck310 ], [ 0, %.lr.ph149 ], [ %n.vec319, %middle.block329 ] ; 5 uses
  %xtraiter553 = and i64 %wide.trip.count182, 1
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %scalar.ph308.prol.loopexit, label %scalar.ph308.prol

scalar.ph308.prol:                                ; preds = %scalar.ph308.preheader
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv179.ph ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !52
  %i.ju = load double, ptr %i.jh, align 8, !tbaa !40
  %i.jv = fmul double %1, %i.ju
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv179.ph
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !52
  %i.jy = fdiv double %i.jv, %i.jx
  %i.jz = tail call double @llvm.fmuladd.f64(double %4, double %i.jt, double %i.jy)
  store double %i.jz, ptr %i.js, align 8, !tbaa !52
  %indvars.iv.next180.prol = or disjoint i64 %indvars.iv179.ph, 1
  br label %scalar.ph308.prol.loopexit

scalar.ph308.prol.loopexit:                       ; preds = %scalar.ph308.prol, %scalar.ph308.preheader
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %scalar.ph308.preheader ], [ %indvars.iv.next180.prol, %scalar.ph308.prol ]
  %i.ka = add nsw i64 %wide.trip.count182, -1
  %i.kb = icmp eq i64 %indvars.iv179.ph, %i.ka
  br i1 %i.kb, label %.loopexit, label %scalar.ph308

.preheader137:                                    ; preds = %bb.q
  br i1 %i.jg, label %.lr.ph151, label %.loopexit

.lr.ph151:                                        ; preds = %.preheader137
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count187 = zext nneg i32 %i.jf to i64 ; 6 uses
  %min.iters.check343 = icmp ult i32 %i.jf, 4
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.memcheck344

vector.memcheck344:                               ; preds = %.lr.ph151
  %i.ke = shl nuw nsw i64 %wide.trip.count187, 3
  %i.kf = getelementptr i8, ptr %i.av, i64 %i.ke  ; 2 uses
  %i.kg = getelementptr i8, ptr %2, i64 248
  %10 = getelementptr i8, ptr %3, i64 248
  %bound0345.a = icmp ult ptr %i.av, %i.kg
  %bound1346 = icmp ult ptr %i.kc, %i.kf
  %found.conflict347 = and i1 %bound0345.a, %bound1346
  %bound0348 = icmp ult ptr %i.av, %10
  %bound1349 = icmp ult ptr %i.kd, %i.kf
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %found.conflict347, %found.conflict350
  br i1 %conflict.rdx351, label %scalar.ph342.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck344
  %n.vec353 = and i64 %wide.trip.count187, 2147483644 ; 3 uses
  %i.kh = load double, ptr %i.kc, align 8, !tbaa !40, !alias.scope !675
  %i.ki = fmul double %1, %i.kh
  %i.kj = load double, ptr %i.kd, align 8, !tbaa !40, !alias.scope !676
  %i.kk = fdiv double %i.ki, %i.kj
  %broadcast.splatinsert360 = insertelement <2 x double> poison, double %i.kk, i64 0
  %broadcast.splat361 = shufflevector <2 x double> %broadcast.splatinsert360, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert354 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat355 = shufflevector <2 x double> %broadcast.splatinsert354, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph352
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index357 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %wide.load358 = load <2 x double>, ptr %i.kl, align 8, !tbaa !52, !alias.scope !677, !noalias !678
  %wide.load359 = load <2 x double>, ptr %i.km, align 8, !tbaa !52, !alias.scope !677, !noalias !678
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat355, <2 x double> %wide.load358, <2 x double> %broadcast.splat361)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat355, <2 x double> %wide.load359, <2 x double> %broadcast.splat361)
  store <2 x double> %i.kn, ptr %i.kl, align 8, !tbaa !52, !alias.scope !677, !noalias !678
  store <2 x double> %i.ko, ptr %i.km, align 8, !tbaa !52, !alias.scope !677, !noalias !678
  %index.next362 = add nuw i64 %index357, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next362, %n.vec353
  br i1 %i.kp, label %middle.block363, label %vector.body356, !llvm.loop !640

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %n.vec353, %wide.trip.count187
  br i1 %cmp.n364, label %.loopexit, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %vector.memcheck344, %.lr.ph151, %middle.block363
  %indvars.iv184.ph = phi i64 [ 0, %vector.memcheck344 ], [ 0, %.lr.ph151 ], [ %n.vec353, %middle.block363 ] ; 4 uses
  %xtraiter555 = and i64 %wide.trip.count187, 1
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %scalar.ph342.prol.loopexit, label %scalar.ph342.prol

scalar.ph342.prol:                                ; preds = %scalar.ph342.preheader
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv184.ph ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !52
  %i.ks = load double, ptr %i.kc, align 8, !tbaa !40
  %i.kt = fmul double %1, %i.ks
  %i.ku = load double, ptr %i.kd, align 8, !tbaa !40
  %i.kv = fdiv double %i.kt, %i.ku
  %i.kw = tail call double @llvm.fmuladd.f64(double %4, double %i.kr, double %i.kv)
  store double %i.kw, ptr %i.kq, align 8, !tbaa !52
  %indvars.iv.next185.prol = or disjoint i64 %indvars.iv184.ph, 1
  br label %scalar.ph342.prol.loopexit

scalar.ph342.prol.loopexit:                       ; preds = %scalar.ph342.prol, %scalar.ph342.preheader
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %scalar.ph342.preheader ], [ %indvars.iv.next185.prol, %scalar.ph342.prol ]
  %i.kx = add nsw i64 %wide.trip.count187, -1
  %i.ky = icmp eq i64 %indvars.iv184.ph, %i.kx
  br i1 %i.ky, label %.loopexit, label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.prol.loopexit, %scalar.ph342
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.1, %scalar.ph342 ], [ %indvars.iv184.unr, %scalar.ph342.prol.loopexit ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv184 ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !52
  %i.lb = load double, ptr %i.kc, align 8, !tbaa !40
  %i.lc = fmul double %1, %i.lb
  %i.ld = load double, ptr %i.kd, align 8, !tbaa !40
  %i.le = fdiv double %i.lc, %i.ld
  %i.lf = tail call double @llvm.fmuladd.f64(double %4, double %i.la, double %i.le)
  store double %i.lf, ptr %i.kz, align 8, !tbaa !52
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv184
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !52
  %i.lj = load double, ptr %i.kc, align 8, !tbaa !40
  %i.lk = fmul double %1, %i.lj
  %i.ll = load double, ptr %i.kd, align 8, !tbaa !40
  %i.lm = fdiv double %i.lk, %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %4, double %i.li, double %i.lm)
  store double %i.ln, ptr %i.lh, align 8, !tbaa !52
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %exitcond188.not.1 = icmp eq i64 %indvars.iv.next185.1, %wide.trip.count187
  br i1 %exitcond188.not.1, label %.loopexit, label %scalar.ph342, !llvm.loop !641

scalar.ph308:                                     ; preds = %scalar.ph308.prol.loopexit, %scalar.ph308
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.1, %scalar.ph308 ], [ %indvars.iv179.unr, %scalar.ph308.prol.loopexit ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv179 ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !52
  %i.lq = load double, ptr %i.jh, align 8, !tbaa !40
  %i.lr = fmul double %1, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv179
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !52
  %i.lu = fdiv double %i.lr, %i.lt
  %i.lv = tail call double @llvm.fmuladd.f64(double %4, double %i.lp, double %i.lu)
  store double %i.lv, ptr %i.lo, align 8, !tbaa !52
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next180 ; 2 uses
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !52
  %i.ly = load double, ptr %i.jh, align 8, !tbaa !40
  %i.lz = fmul double %1, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next180
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !52
  %i.mc = fdiv double %i.lz, %i.mb
  %i.md = tail call double @llvm.fmuladd.f64(double %4, double %i.lx, double %i.mc)
  store double %i.md, ptr %i.lw, align 8, !tbaa !52
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %exitcond183.not.1 = icmp eq i64 %indvars.iv.next180.1, %wide.trip.count182
  br i1 %exitcond183.not.1, label %.loopexit, label %scalar.ph308, !llvm.loop !642

bb.r:                                             ; preds = %bb.p
  br i1 %i.f, label %.preheader141, label %.preheader143

.preheader143:                                    ; preds = %bb.r
  br i1 %i.jg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader143
  %wide.trip.count = zext nneg i32 %i.jf to i64   ; 6 uses
  %min.iters.check = icmp eq i32 %i.jf, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.me = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.mf = getelementptr i8, ptr %i.av, i64 %i.me  ; 2 uses
  %i.mg = getelementptr i8, ptr %i.ay, i64 %i.me
  %11 = getelementptr i8, ptr %i.bb, i64 %i.me
  %bound0.a = icmp ult ptr %i.av, %i.mg
  %bound1 = icmp ult ptr %i.ay, %i.mf
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0255 = icmp ult ptr %i.av, %11
  %bound1256 = icmp ult ptr %i.bb, %i.mf
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx = or i1 %found.conflict, %found.conflict257
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert258 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat259 = shufflevector <2 x double> %broadcast.splatinsert258, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mh, align 8, !tbaa !52, !alias.scope !679, !noalias !680
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load260 = load <2 x double>, ptr %i.mi, align 8, !tbaa !52, !alias.scope !681
  %i.mj = fmul <2 x double> %broadcast.splat, %wide.load260
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load261 = load <2 x double>, ptr %i.mk, align 8, !tbaa !52, !alias.scope !682
  %i.ml = fdiv <2 x double> %i.mj, %wide.load261
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat259, <2 x double> %wide.load, <2 x double> %i.ml)
  store <2 x double> %i.mm, ptr %i.mh, align 8, !tbaa !52, !alias.scope !679, !noalias !680
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !52
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !52
  %i.ms = fmul double %1, %i.mr
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.ph
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !52
  %i.mv = fdiv double %i.ms, %i.mu
  %i.mw = tail call double @llvm.fmuladd.f64(double %4, double %i.mp, double %i.mv)
  store double %i.mw, ptr %i.mo, align 8, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.mx = add nsw i64 %wide.trip.count, -1
  %i.my = icmp eq i64 %indvars.iv.ph, %i.mx
  br i1 %i.my, label %.loopexit, label %scalar.ph

.preheader141:                                    ; preds = %bb.r
  br i1 %i.jg, label %.lr.ph147, label %.loopexit

.lr.ph147:                                        ; preds = %.preheader141
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count177 = zext nneg i32 %i.jf to i64 ; 6 uses
  %min.iters.check273 = icmp eq i32 %i.jf, 1
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.memcheck274

vector.memcheck274:                               ; preds = %.lr.ph147
  %i.na = shl nuw nsw i64 %wide.trip.count177, 3  ; 2 uses
  %i.nb = getelementptr i8, ptr %i.av, i64 %i.na  ; 2 uses
  %i.nc = getelementptr i8, ptr %i.ay, i64 %i.na
  %12 = getelementptr i8, ptr %3, i64 248
  %bound0275.a = icmp ult ptr %i.av, %i.nc
  %bound1276 = icmp ult ptr %i.ay, %i.nb
  %found.conflict277 = and i1 %bound0275.a, %bound1276
  %bound0278 = icmp ult ptr %i.av, %12
  %bound1279 = icmp ult ptr %i.mz, %i.nb
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %found.conflict277, %found.conflict280
  br i1 %conflict.rdx281, label %scalar.ph272.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck274
  %n.vec283 = and i64 %wide.trip.count177, 2147483646 ; 3 uses
  %i.nd = load double, ptr %i.mz, align 8, !tbaa !40, !alias.scope !683
  %broadcast.splatinsert292 = insertelement <2 x double> poison, double %i.nd, i64 0
  %broadcast.splat293 = shufflevector <2 x double> %broadcast.splatinsert292, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat285 = shufflevector <2 x double> %broadcast.splatinsert284, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat287 = shufflevector <2 x double> %broadcast.splatinsert286, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph282
  %index289 = phi i64 [ 0, %vector.ph282 ], [ %index.next294, %vector.body288 ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index289 ; 2 uses
  %wide.load290 = load <2 x double>, ptr %i.ne, align 8, !tbaa !52, !alias.scope !684, !noalias !685
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index289
  %wide.load291 = load <2 x double>, ptr %i.nf, align 8, !tbaa !52, !alias.scope !686
  %i.ng = fmul <2 x double> %broadcast.splat285, %wide.load291
  %i.nh = fdiv <2 x double> %i.ng, %broadcast.splat293
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat287, <2 x double> %wide.load290, <2 x double> %i.nh)
  store <2 x double> %i.ni, ptr %i.ne, align 8, !tbaa !52, !alias.scope !684, !noalias !685
  %index.next294 = add nuw i64 %index289, 2       ; 2 uses
  %i.nj = icmp eq i64 %index.next294, %n.vec283
  br i1 %i.nj, label %middle.block295, label %vector.body288, !llvm.loop !652

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %n.vec283, %wide.trip.count177
  br i1 %cmp.n296, label %.loopexit, label %scalar.ph272.preheader

scalar.ph272.preheader:                           ; preds = %vector.memcheck274, %.lr.ph147, %middle.block295
  %indvars.iv174.ph = phi i64 [ 0, %vector.memcheck274 ], [ 0, %.lr.ph147 ], [ %n.vec283, %middle.block295 ] ; 5 uses
  %xtraiter551 = and i64 %wide.trip.count177, 1
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %scalar.ph272.prol.loopexit, label %scalar.ph272.prol

scalar.ph272.prol:                                ; preds = %scalar.ph272.preheader
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv174.ph ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !52
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv174.ph
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !52
  %i.no = fmul double %1, %i.nn
  %i.np = load double, ptr %i.mz, align 8, !tbaa !40
  %i.nq = fdiv double %i.no, %i.np
  %i.nr = tail call double @llvm.fmuladd.f64(double %4, double %i.nl, double %i.nq)
  store double %i.nr, ptr %i.nk, align 8, !tbaa !52
  %indvars.iv.next175.prol = or disjoint i64 %indvars.iv174.ph, 1
  br label %scalar.ph272.prol.loopexit

scalar.ph272.prol.loopexit:                       ; preds = %scalar.ph272.prol, %scalar.ph272.preheader
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %scalar.ph272.preheader ], [ %indvars.iv.next175.prol, %scalar.ph272.prol ]
  %i.ns = add nsw i64 %wide.trip.count177, -1
  %i.nt = icmp eq i64 %indvars.iv174.ph, %i.ns
  br i1 %i.nt, label %.loopexit, label %scalar.ph272

scalar.ph272:                                     ; preds = %scalar.ph272.prol.loopexit, %scalar.ph272
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %scalar.ph272 ], [ %indvars.iv174.unr, %scalar.ph272.prol.loopexit ] ; 4 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv174 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !52
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv174
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !52
  %i.ny = fmul double %1, %i.nx
  %i.nz = load double, ptr %i.mz, align 8, !tbaa !40
  %i.oa = fdiv double %i.ny, %i.nz
  %i.ob = tail call double @llvm.fmuladd.f64(double %4, double %i.nv, double %i.oa)
  store double %i.ob, ptr %i.nu, align 8, !tbaa !52
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next175 ; 2 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !52
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next175
  %i.of = load double, ptr %i.oe, align 8, !tbaa !52
  %i.og = fmul double %1, %i.of
  %i.oh = load double, ptr %i.mz, align 8, !tbaa !40
  %i.oi = fdiv double %i.og, %i.oh
  %i.oj = tail call double @llvm.fmuladd.f64(double %4, double %i.od, double %i.oi)
  store double %i.oj, ptr %i.oc, align 8, !tbaa !52
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %exitcond178.not.1 = icmp eq i64 %indvars.iv.next175.1, %wide.trip.count177
  br i1 %exitcond178.not.1, label %.loopexit, label %scalar.ph272, !llvm.loop !653

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !52
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.on = load double, ptr %i.om, align 8, !tbaa !52
  %i.oo = fmul double %1, %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.oq = load double, ptr %i.op, align 8, !tbaa !52
  %i.or = fdiv double %i.oo, %i.oq
  %i.os = tail call double @llvm.fmuladd.f64(double %4, double %i.ol, double %i.or)
  store double %i.os, ptr %i.ok, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !52
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !52
  %i.ox = fmul double %1, %i.ow
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !52
  %i.pa = fdiv double %i.ox, %i.oz
  %i.pb = tail call double @llvm.fmuladd.f64(double %4, double %i.ou, double %i.pa)
  store double %i.pb, ptr %i.ot, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !654

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph272.prol.loopexit, %scalar.ph272, %scalar.ph308.prol.loopexit, %scalar.ph308, %scalar.ph342.prol.loopexit, %scalar.ph342, %scalar.ph369.prol.loopexit, %scalar.ph369, %scalar.ph398.prol.loopexit, %scalar.ph398, %scalar.ph433.prol.loopexit, %scalar.ph433, %scalar.ph460.prol.loopexit, %scalar.ph460, %scalar.ph488.prol.loopexit, %scalar.ph488, %scalar.ph521.prol.loopexit, %scalar.ph521, %middle.block, %middle.block295, %middle.block329, %middle.block363, %middle.block385, %middle.block420, %middle.block453, %middle.block475, %middle.block508, %middle.block539, %.preheader143, %.preheader141, %.preheader139, %.preheader137, %.preheader135, %.preheader133, %.preheader131, %.preheader129, %.preheader127, %.preheader
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.pc, align 8, !tbaa !38
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.pd, align 1, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector9CopyToPosEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(248) initializes((233, 234)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.b ] ; 2 uses
  store ptr %.0.i.i, ptr %i.e, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.a, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.p = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.q, align 1, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.s = load i8, ptr %i.r, align 1, !tbaa !39, !range !50, !noundef !51
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.v
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.d, ptr noundef nonnull %i.u, i32 noundef 0, ptr noundef %i.w, i32 noundef 1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.z
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.d, ptr noundef %i.y, i32 noundef 1, ptr noundef %i.aa, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ab, align 8, !tbaa !38
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector11CopyFromPosEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.e = load double, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(205) %0, double noundef %i.e), !inline_history !687
end_hunk_4
