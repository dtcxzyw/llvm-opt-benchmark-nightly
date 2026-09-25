Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/md5?download=true
inline.NumInlined: 129
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3MD5C2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.i = lshr i32 %i.g, 29
  store i32 %i.i, ptr %i.b, align 4, !tbaa !13
  %.not.i.i = icmp ult i32 %i.g, 64
  br i1 %.not.i.i, label %_ZN3MD56updateEPKcj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.d, i64 64, i1 false)
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull %i.j)
  %.not2425.i.i = icmp ult i32 %i.g, 128
  br i1 %.not2425.i.i, label %_ZN3MD56updateEPKcj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.k = phi i32 [ %i.n, %.lr.ph.i.i ], [ 128, %bb.b ] ; 3 uses
  %.026.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ 64, %bb.b ]
  %i.l = zext i32 %.026.i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull readonly %i.m)
  %i.n = add i32 %i.k, 64                         ; 2 uses
  %.not24.i.i = icmp ugt i32 %i.n, %i.g
  br i1 %.not24.i.i, label %_ZN3MD56updateEPKcj.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN3MD56updateEPKcj.exit:                         ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %.1.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = zext i32 %.1.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = sub i32 %i.g, %.1.i.i
  %i.s = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %i.q, i64 %i.s, i1 false)
  %i.t = tail call noundef nonnull align 4 dereferenceable(108) ptr @_ZN3MD58finalizeEv(ptr noundef nonnull align 4 dereferenceable(108) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3MD56updateEPKcj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(108) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 4 uses
  %i.e = shl i32 %2, 3                            ; 2 uses
  %i.f = add i32 %i.b, %i.e                       ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !13
  %i.g = icmp ult i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = zext i1 %i.g to i32
  %i.k = lshr i32 %2, 29
  %i.l = add i32 %i.i, %i.k
  %i.m = add i32 %i.l, %i.j
  store i32 %i.m, ptr %i.h, align 4, !tbaa !13
  %i.n = sub nuw nsw i32 64, %i.d                 ; 4 uses
  %.not.i = icmp ult i32 %2, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.p = zext nneg i32 %i.d to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = zext nneg i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.r, i1 false)
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull %i.o)
  %i.s = sub nuw nsw i32 128, %i.d                ; 2 uses
  %.not2425.i = icmp ugt i32 %i.s, %2
  br i1 %.not2425.i, label %_ZN3MD56updateEPKhj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.t = phi i32 [ %i.w, %.lr.ph.i ], [ %i.s, %bb.b ] ; 3 uses
  %.026.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.n, %bb.b ]
  %i.u = zext i32 %.026.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull readonly %i.v)
  %i.w = add i32 %i.t, 64                         ; 2 uses
  %.not24.i = icmp ugt i32 %i.w, %2
  br i1 %.not24.i, label %_ZN3MD56updateEPKhj.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.x = zext nneg i32 %i.d to i64
  br label %_ZN3MD56updateEPKhj.exit

_ZN3MD56updateEPKhj.exit:                         ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.020.i = phi i64 [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  %.1.i = phi i32 [ 0, %bb.c ], [ %i.n, %bb.b ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.020.i
  %i.aa = zext i32 %.1.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = sub i32 %2, %.1.i
  %i.ad = zext i32 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr readonly align 1 %i.ab, i64 %i.ad, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(108) ptr @_ZN3MD58finalizeEv(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(108) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load i8, ptr %0, align 4, !tbaa !12, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %_ZN3MD56encodeEPhPKjj.exit

_ZN3MD56encodeEPhPKjj.exit:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.e = load i64, ptr %i.d, align 4
  store i64 %i.e, ptr %i.a, align 8
  %i.f = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.g = lshr i32 %i.f, 3
  %i.h = and i32 %i.g, 63                         ; 6 uses
  %i.i = icmp samesign ult i32 %i.h, 56
  %.v = select i1 %i.i, i32 56, i32 120
  %i.j = sub nsw i32 %.v, %i.h                    ; 6 uses
  %i.k = shl nsw i32 %i.j, 3                      ; 2 uses
  %i.l = add i32 %i.k, %i.f                       ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !13
  %i.m = icmp ult i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %i.p = zext i1 %i.m to i32
  %i.q = lshr i32 %i.j, 29
  %i.r = add i32 %i.q, %i.o
  %i.s = add i32 %i.r, %i.p
  store i32 %i.s, ptr %i.n, align 4, !tbaa !13
  %i.t = sub nuw nsw i32 64, %i.h                 ; 4 uses
  %.not.i = icmp ult i32 %i.j, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3MD56encodeEPhPKjj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.v = zext nneg i32 %i.h to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = zext nneg i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 16 dereferenceable(1) @_ZZN3MD58finalizeEvE7padding, i64 %i.x, i1 false)
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull %i.u)
  %i.y = sub nuw nsw i32 128, %i.h                ; 2 uses
  %.not2425.i = icmp ugt i32 %i.y, %i.j
  br i1 %.not2425.i, label %_ZN3MD56updateEPKhj.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.b, %.lr.ph.i4
  %i.z = phi i32 [ %i.ac, %.lr.ph.i4 ], [ %i.y, %bb.b ] ; 3 uses
  %.026.i = phi i32 [ %i.z, %.lr.ph.i4 ], [ %i.t, %bb.b ]
  %i.aa = zext i32 %.026.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN3MD58finalizeEvE7padding, i64 %i.aa
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull readonly %i.ab)
  %i.ac = add i32 %i.z, 64                        ; 2 uses
  %.not24.i = icmp ugt i32 %i.ac, %i.j
  br i1 %.not24.i, label %_ZN3MD56updateEPKhj.exit, label %.lr.ph.i4, !llvm.loop !0

bb.c:                                             ; preds = %_ZN3MD56encodeEPhPKjj.exit
  %i.ad = zext nneg i32 %i.h to i64
  br label %_ZN3MD56updateEPKhj.exit

_ZN3MD56updateEPKhj.exit:                         ; preds = %.lr.ph.i4, %bb.b, %bb.c
  %.020.i = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i4 ]
  %.1.i = phi i32 [ 0, %bb.c ], [ %i.t, %bb.b ], [ %i.z, %.lr.ph.i4 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.020.i
  %i.ag = zext i32 %.1.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZN3MD58finalizeEvE7padding, i64 %i.ag
  %i.ai = sub i32 %i.j, %.1.i
  %i.aj = zext i32 %i.ai to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false)
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !13  ; 3 uses
  %i.al = lshr i32 %i.ak, 3
  %i.am = and i32 %i.al, 63                       ; 4 uses
  %i.an = add i32 %i.ak, 64
  store i32 %i.an, ptr %i.d, align 4, !tbaa !13
  %i.ao = icmp ugt i32 %i.ak, -65
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !13
  %i.aq = zext i1 %i.ao to i32
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.n, align 4, !tbaa !13
  %.not.i5 = icmp samesign ult i32 %i.am, 56
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3MD56updateEPKhj.exit
  %i.as = sub nuw nsw i32 64, %i.am               ; 2 uses
  %i.at = zext nneg i32 %i.am to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.at
  %i.av = zext nneg i32 %i.as to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.a, i64 %i.av, i1 false)
  tail call void @_ZN3MD59transformEPKh(ptr noundef nonnull align 4 dereferenceable(108) %0, ptr noundef nonnull %i.ae)
  br label %_ZN3MD56updateEPKhj.exit12

bb.e:                                             ; preds = %_ZN3MD56updateEPKhj.exit
  %i.aw = zext nneg i32 %i.am to i64
  br label %_ZN3MD56updateEPKhj.exit12

_ZN3MD56updateEPKhj.exit12:                       ; preds = %bb.d, %bb.e
  %.020.i10 = phi i64 [ %i.aw, %bb.e ], [ 0, %bb.d ]
  %.1.i11 = phi i32 [ 0, %bb.e ], [ %i.as, %bb.d ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.020.i10
  %i.ay = zext nneg i32 %.1.i11 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = sub nuw nsw i32 8, %.1.i11
  %i.bb = zext nneg i32 %i.ba to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.az, i64 %i.bb, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1 = load i32, ptr %i.bd, align 4, !tbaa !13    ; 4 uses
  %2 = trunc i32 %1 to i8
  store i8 %2, ptr %i.bc, align 4, !tbaa !24
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %4, ptr %5, align 1, !tbaa !24
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 %7, ptr %8, align 2, !tbaa !24
  %9 = lshr i32 %1, 24
  %10 = trunc nuw i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %10, ptr %11, align 1, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load i32, ptr %i.be, align 4, !tbaa !13   ; 4 uses
  %13 = trunc i32 %12 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %13, ptr %i.bf, align 4, !tbaa !24
  %14 = lshr i32 %12, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %15, ptr %16, align 1, !tbaa !24
  %17 = lshr i32 %12, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %18, ptr %19, align 2, !tbaa !24
  %20 = lshr i32 %12, 24
  %21 = trunc nuw i32 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %21, ptr %22, align 1, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %23 = load i32, ptr %i.bg, align 4, !tbaa !13   ; 4 uses
  %24 = trunc i32 %23 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %24, ptr %i.bh, align 4, !tbaa !24
  %25 = lshr i32 %23, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %26, ptr %27, align 1, !tbaa !24
  %28 = lshr i32 %23, 16
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %29, ptr %30, align 2, !tbaa !24
  %31 = lshr i32 %23, 24
  %32 = trunc nuw i32 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %32, ptr %33, align 1, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %34 = load i32, ptr %i.bi, align 4, !tbaa !13   ; 4 uses
  %35 = trunc i32 %34 to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %35, ptr %i.bj, align 4, !tbaa !24
  %36 = lshr i32 %34, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %37, ptr %38, align 1, !tbaa !24
  %39 = lshr i32 %34, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %40, ptr %41, align 2, !tbaa !24
  %42 = lshr i32 %34, 24
  %43 = trunc nuw i32 %42 to i8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %43, ptr %44, align 1, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  store i64 0, ptr %i.d, align 4
  store i8 1, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN3MD56updateEPKhj.exit12, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3MD56decodeEPjPKhj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i32 %2, -1
  %i.b = lshr i32 %i.a, 2
  %i.c = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 13
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv16.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next17.3, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv16.epil = phi i64 [ %indvars.iv16.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next17.epil, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.f = load i32, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv16.epil
  store i32 %i.f, ptr %i.g, align 4, !tbaa !13
  %indvars.iv.next17.epil = add nuw nsw i64 %indvars.iv16.epil, 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !25

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv16 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next17.3, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv16
  store i32 %i.i, ptr %i.j, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.m, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.r, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.w, ptr %i.y, align 4, !tbaa !13
  %indvars.iv.next17.3 = add nuw nsw i64 %indvars.iv16, 4 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3MD56encodeEPhPKjj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i32 %2, -1
  %i.b = lshr i32 %i.a, 2
  %i.c = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv22 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.f, ptr %i.g, align 1, !tbaa !24
  %i.h = load i32, ptr %i.d, align 4, !tbaa !13
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.j, ptr %i.l, align 1, !tbaa !24
  %i.m = load i32, ptr %i.d, align 4, !tbaa !13
  %i.n = lshr i32 %i.m, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.o, ptr %i.q, align 1, !tbaa !24
  %i.r = load i32, ptr %i.d, align 4, !tbaa !13
  %i.s = lshr i32 %i.r, 24
  %i.t = trunc nuw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %i.t, ptr %i.v, align 1, !tbaa !24
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3MD59transformEPKh(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(108) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
_ZN3MD56decodeEPjPKhj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 1 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 1 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 1 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 1 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 1 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 1 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 1 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 1 ; 4 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 1 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 1 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 1 ; 4 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 1 ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 1 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 1 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 1 ; 4 uses
  %i.i = and i32 %i.f, %i.d
  %i.j = xor i32 %i.d, -1
  %i.k = and i32 %i.h, %i.j
  %i.l = add i32 %i.b, -680876936
  %i.m = add i32 %i.l, %i.i
  %i.n = add i32 %i.m, %i.k
  %i.o = add i32 %i.n, %.sroa.0.0.copyload        ; 2 uses
  %i.p = shl i32 %i.o, 7
  %i.q = lshr i32 %i.o, 25
  %i.r = add i32 %i.p, %i.d
  %i.s = add i32 %i.r, %i.q                       ; 6 uses
  %i.t = and i32 %i.s, %i.d
  %i.u = xor i32 %i.s, -1
  %i.v = and i32 %i.f, %i.u
end_hunk_0
