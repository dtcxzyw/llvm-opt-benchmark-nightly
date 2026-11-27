Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cct?download=true
inline.NumInlined: 161
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z9opt_givenP7OPTARGSPKc:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 256) i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !27      ; 3 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %.thread77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread73.split, label %.preheader.split

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = zext i8 %i.c to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = icmp eq ptr %i.m, null
  %i.o = zext i8 %i.c to i32
  %spec.select = select i1 %i.n, i32 0, i32 %i.o
  br label %.thread77

.preheader.split:                                 ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread73.split, label %bb.e

bb.e:                                             ; preds = %.preheader.split
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(4) @.str.59) #28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread73.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %1) #28
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = or disjoint i32 %i.w, 128
  br label %.thread77

bb.h:                                             ; preds = %bb.f
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #28
  %i.z = icmp ugt i64 %i.y, 2
  br i1 %i.z, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = icmp eq i8 %i.ab, 61
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %1) #28
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.q, align 1, !tbaa !27   ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = icmp eq ptr %i.ak, null
  %i.am = zext i8 %i.ah to i32
  %spec.select67 = select i1 %i.al, i32 0, i32 %i.am
  br label %.thread77

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.thread73.split, label %.preheader.split, !llvm.loop !44

.thread73.split:                                  ; preds = %bb.l, %.preheader.split, %bb.e, %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread77, label %.thread73.split.split

.thread73.split.split:                            ; preds = %.thread73.split, %bb.t
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.t ], [ 0, %.thread73.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv97
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 7 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread77, label %bb.m

bb.m:                                             ; preds = %.thread73.split.split
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(4) @.str.59) #28
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %1) #28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.ay = or disjoint i32 %i.ax, 192
  br label %.thread77

bb.p:                                             ; preds = %bb.n
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #28
  %i.ba = icmp ugt i64 %i.az, 2
  br i1 %i.ba, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27
  %i.bd = icmp eq i8 %i.bc, 61
  br i1 %i.bd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %1) #28
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load i8, ptr %i.ar, align 1, !tbaa !27  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = zext i8 %i.bi to i32
  %spec.select68 = select i1 %i.bm, i32 0, i32 %i.bn
  br label %.thread77

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 64
  br i1 %exitcond100.not, label %.thread77, label %.thread73.split.split, !llvm.loop !45

.thread77:                                        ; preds = %bb.t, %.thread73.split.split, %bb.m, %.thread73.split, %bb.o, %bb.s, %bb.g, %bb.k, %bb.d, %bb.b, %bb.a
  %.5 = phi i32 [ %i.x, %bb.g ], [ 0, %bb.a ], [ %spec.select, %bb.d ], [ 0, %bb.b ], [ %i.ay, %bb.o ], [ %spec.select67, %bb.k ], [ %spec.select68, %bb.s ], [ 0, %.thread73.split ], [ 0, %bb.m ], [ 0, %.thread73.split.split ], [ 0, %bb.t ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z7opt_argP7OPTARGSPKc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z14opt_strip_pathPKc(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #28 ; 2 uses
  %i.b = icmp ugt ptr %i.a, %0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %spec.select = select i1 %i.b, ptr %i.c, ptr %0 ; 3 uses
  %i.d = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef 47) #28 ; 2 uses
  %i.e = icmp ugt ptr %i.d, %spec.select
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.1 = select i1 %i.e, ptr %i.f, ptr %spec.select
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z9opt_parseiPPcPKcS2_PS2_S3_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(2176) ptr @calloc(i64 noundef 1, i64 noundef 2176) #29 ; 44 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !26
  %i.f = load ptr, ptr %1, align 8, !tbaa !20     ; 12 uses
  %i.g = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.f, i32 noundef 92) #28 ; 2 uses
  %i.h = icmp ugt ptr %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %spec.select.i = select i1 %i.h, ptr %i.i, ptr %i.f ; 3 uses
  %i.j = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %spec.select.i, i32 noundef 47) #28 ; 2 uses
  %i.k = icmp ugt ptr %i.j, %spec.select.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.1.i = select i1 %i.k, ptr %i.l, ptr %spec.select.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %.1.i, ptr %i.m, align 8, !tbaa !31
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 4 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader305

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 5 uses
  %wide.trip.count = and i64 %i.n, 2147483647
  %i.s = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.n, 2147483644
  br label %bb.e

.preheader305.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader305, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader305.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader305.loopexit.unr-lcssa ]
  %lcmp.mod522 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod522)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  store ptr %i.q, ptr %i.x, align 8, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader305, label %bb.d, !llvm.loop !46

.preheader305:                                    ; preds = %.preheader305.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28 ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph331, label %._crit_edge

.lr.ph331:                                        ; preds = %.preheader305
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 5 uses
  %wide.trip.count414 = and i64 %i.y, 2147483647
  %i.ac = add nsw i64 %wide.trip.count414, -1
  %xtraiter524 = and i64 %i.y, 3                  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %.epil.preheader523, label %.lr.ph331.new

.lr.ph331.new:                                    ; preds = %.lr.ph331
  %unroll_iter528 = and i64 %i.y, 2147483644
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ag
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.al
  store ptr %i.q, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aq
  store ptr %i.q, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.av
  store ptr %i.q, ptr %i.aw, align 8, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader305.loopexit.unr-lcssa, label %bb.e, !llvm.loop !47

bb.f:                                             ; preds = %bb.f, %.lr.ph331.new
  %indvars.iv411 = phi i64 [ 0, %.lr.ph331.new ], [ %indvars.iv.next412.3, %bb.f ] ; 5 uses
  %niter529 = phi i64 [ 0, %.lr.ph331.new ], [ %niter529.next.3, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv411
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.az
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv411
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.be
  store ptr %i.f, ptr %i.bf, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv411
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv411
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bo
  store ptr %i.f, ptr %i.bp, align 8, !tbaa !20
  %indvars.iv.next412.3 = add nuw nsw i64 %indvars.iv411, 4 ; 2 uses
  %niter529.next.3 = add i64 %niter529, 4         ; 2 uses
  %niter529.ncmp.3 = icmp eq i64 %niter529.next.3, %unroll_iter528
  br i1 %niter529.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !48

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod526.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod526.not, label %._crit_edge, label %.epil.preheader523

.epil.preheader523:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph331
  %indvars.iv411.epil.init = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next412.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter524, 0
  tail call void @llvm.assume(i1 %lcmp.mod527)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader523
  %indvars.iv411.epil = phi i64 [ %indvars.iv411.epil.init, %.epil.preheader523 ], [ %indvars.iv.next412.epil, %bb.g ] ; 2 uses
  %epil.iter525 = phi i64 [ 0, %.epil.preheader523 ], [ %epil.iter525.next, %bb.g ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv411.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bs
  store ptr %i.f, ptr %i.bt, align 8, !tbaa !20
  %indvars.iv.next412.epil = add nuw nsw i64 %indvars.iv411.epil, 1
  %epil.iter525.next = add i64 %epil.iter525, 1   ; 2 uses
  %epil.iter525.cmp.not = icmp eq i64 %epil.iter525.next, %xtraiter524
  br i1 %epil.iter525.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !49

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.preheader305
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 2160
  store ptr %4, ptr %i.bu, align 8, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  store ptr %5, ptr %i.bv, align 8, !tbaa !30
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %.critedge, label %.lr.ph334.split

.lr.ph334.split:                                  ; preds = %._crit_edge
  %i.bw = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %.not248339 = icmp eq ptr %i.bw, null
  br i1 %.not248339, label %.critedge, label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph334.split, %bb.j
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %bb.j ], [ 0, %.lr.ph334.split ]
  %i.bx = phi ptr [ %i.cj, %bb.j ], [ %i.bw, %.lr.ph334.split ] ; 4 uses
  %i.by = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #28
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph341
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !27
  %.not267 = icmp eq i8 %i.cb, 61
  br i1 %.not267, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !27
  %i.cd = sext i8 %i.cc to i32
  %i.ce = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.cd) #28
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.3, ptr noundef nonnull %.1.i, ptr noundef nonnull %i.bx, ptr noundef nonnull %2) #27 ; 0 uses
  tail call void @free(ptr noundef %i.c) #26
  br label %bb.az
end_hunk_0
begin_hunk_1_@_Z9opt_parseiPPcPKcS2_PS2_S3_:bb.a
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.fk) #27 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.c) #26
  br label %.thread289

bb.x:                                             ; preds = %bb.v
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.fz, ptr %i.ft, align 8, !tbaa !20
  br label %bb.ar

bb.y:                                             ; preds = %bb.t
  %i.ga = zext nneg i32 %i.fm to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ga ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 4 uses
  %i.gd = icmp ult ptr %i.gc, %i.cy
  %i.ge = icmp ugt ptr %i.gc, %i.eu
  %narrow.i268.not = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %narrow.i268.not, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gf = add nsw i32 %.6379, 1                   ; 3 uses
  %i.gg = icmp eq i32 %0, %i.gf
  br i1 %i.gg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !20 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !27
  switch i8 %i.gk, label %bb.ac [
    i8 43, label %bb.ab
    i8 45, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.z
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.fk) #27 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.c) #26
  br label %.thread289

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.gj, ptr %i.gb, align 8, !tbaa !20
  br label %bb.ar

bb.ad:                                            ; preds = %bb.y
  %i.gn = icmp eq ptr %i.gc, %i.eu
  br i1 %i.gn, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store ptr %i.go, ptr %i.gb, align 8, !tbaa !20
  br label %bb.ar

bb.af:                                            ; preds = %bb.r
  %i.gp = zext i8 %i.fh to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gp ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !20 ; 5 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #27 ; 0 uses
  call void @free(ptr noundef nonnull %i.c) #26
  br label %.thread289

bb.ah:                                            ; preds = %bb.af
  %i.gv = icmp ult ptr %i.gr, %i.cy
  %i.gw = icmp ugt ptr %i.gr, %i.eu
  %narrow.i273.not = select i1 %i.gv, i1 true, i1 %i.gw
  br i1 %narrow.i273.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = icmp eq ptr %i.gr, %i.eu
  br i1 %i.gx, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store ptr %i.gy, ptr %i.gq, align 8, !tbaa !20
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.gz = trunc nuw nsw i64 %indvars.iv428 to i32
  %i.ha = add nuw nsw i32 %i.gz, 1
  %i.hb = icmp eq i32 %i.ha, %i.ez
  br i1 %i.hb, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.hc = add nsw i32 %.6379, 1                   ; 3 uses
  %i.hd = icmp eq i32 %0, %i.hc
  br i1 %i.hd, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !27
  switch i8 %i.hh, label %bb.ao [
    i8 43, label %bb.an
    i8 45, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.al
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.hj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a) #27 ; 0 uses
  call void @free(ptr noundef nonnull %i.c) #26
  br label %.thread289

bb.ao:                                            ; preds = %bb.am
  store ptr %i.hg, ptr %i.gq, align 8, !tbaa !20
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv428
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store ptr %i.hl, ptr %i.gq, align 8, !tbaa !20
  br label %bb.ar

.thread289:                                       ; preds = %bb.ab, %bb.w, %bb.u, %bb.an, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.az

bb.aq:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %.loopexit, label %bb.r, !llvm.loop !50

bb.ar:                                            ; preds = %bb.ap, %bb.ae, %bb.ao, %bb.x, %bb.ac, %bb.ad
  %.9.ph = phi i32 [ %.6379, %bb.ae ], [ %.6379, %bb.ap ], [ %.6379, %bb.ad ], [ %i.gf, %bb.ac ], [ %.6379, %bb.x ], [ %i.hc, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aq, %bb.q, %bb.ar
  %.11.ph = phi i32 [ %.9.ph, %bb.ar ], [ %.6379, %bb.q ], [ %.6379, %bb.aq ]
  %i.hm = add nsw i32 %.11.ph, 1                  ; 3 uses
  %i.hn = icmp slt i32 %i.hm, %0
  br i1 %i.hn, label %bb.n, label %._crit_edge381, !llvm.loop !51

._crit_edge381:                                   ; preds = %.loopexit, %bb.n
  %.6.lcssa = phi i32 [ %.6379, %bb.n ], [ %i.hm, %.loopexit ] ; 2 uses
  %i.ho = sext i32 %.6.lcssa to i64               ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !32
  %wide.trip.count436 = zext nneg i32 %0 to i64
  br label %sub_0

.preheader:                                       ; preds = %bb.as, %._crit_edge381.thread
  %i.hr = phi i64 [ 1, %._crit_edge381.thread ], [ %i.ho, %bb.as ]
  %.6.lcssa466 = phi i32 [ 1, %._crit_edge381.thread ], [ %.6.lcssa, %bb.as ] ; 2 uses
  %i.hs = icmp slt i32 %.6.lcssa466, %0
  br i1 %i.hs, label %.lr.ph387, label %._crit_edge388

.lr.ph387:                                        ; preds = %.preheader
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.av

sub_0:                                            ; preds = %._crit_edge381, %bb.as
  %indvars.iv433 = phi i64 [ 1, %._crit_edge381 ], [ %indvars.iv.next434, %bb.as ] ; 4 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv433
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !20 ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1             ; 2 uses
  %i.hx = zext i8 %i.hw to i32
  %i.hy = sub nsw i32 45, %i.hx
  %.not392 = icmp eq i8 %i.hw, 45
  br i1 %.not392, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.ia = load i8, ptr %i.hz, align 1             ; 2 uses
  %i.ib = zext i8 %i.ia to i32
  %i.ic = sub nsw i32 45, %i.ib
  %.not393 = icmp eq i8 %i.ia, 45
  br i1 %.not393, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i32
  %i.ig = sub nsw i32 0, %i.if
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ih = phi i32 [ %i.hy, %sub_0 ], [ %i.ic, %sub_1 ], [ %i.ig, %sub_2 ]
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.tail
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count436
  br i1 %exitcond437.not, label %.preheader, label %sub_0, !llvm.loop !52

bb.at:                                            ; preds = %.tail
  %i.ij = trunc nuw nsw i64 %indvars.iv433 to i32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !57
  %.neg = xor i32 %i.il, -1
  %i.im = add i32 %i.ij, %.neg
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.im, ptr %i.in, align 8, !tbaa !33
  %.neg262 = xor i32 %i.ij, -1
  %6 = add nsw i32 %0, %.neg262                   ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %6, ptr %7, align 4, !tbaa !17
  %.not263 = icmp eq i32 %6, 0
  br i1 %.not263, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv433
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !18
  br label %bb.az

bb.av:                                            ; preds = %.lr.ph387, %bb.ax
  %indvars.iv438 = phi i64 [ %i.hr, %.lr.ph387 ], [ %indvars.iv.next439, %bb.ax ] ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv438
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !20
  %i.it = load i8, ptr %i.is, align 1, !tbaa !27
  switch i8 %i.it, label %._crit_edge388.loopexit [
    i8 45, label %bb.aw
    i8 43, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  tail call void @free(ptr noundef %i.c) #26
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.13, i64 53, i64 1, ptr %i.iu) #30 ; 0 uses
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.iv = load i32, ptr %i.ht, align 8, !tbaa !33
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.ht, align 8, !tbaa !33
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next439 to i32
  %exitcond441.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond441.not, label %._crit_edge388.thread, label %bb.av, !llvm.loop !53

._crit_edge388.thread:                            ; preds = %bb.ax
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !17
  br label %bb.az

._crit_edge388.loopexit:                          ; preds = %bb.av
  %i.iy = trunc nsw i64 %indvars.iv438 to i32
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge388.loopexit, %.preheader
  %.13.lcssa = phi i32 [ %.6.lcssa466, %.preheader ], [ %i.iy, %._crit_edge388.loopexit ] ; 3 uses
  %i.iz = sub nsw i32 %0, %.13.lcssa
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !17
  %.not261 = icmp eq i32 %0, %.13.lcssa
  br i1 %.not261, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge388
  %i.jb = sext i32 %.13.lcssa to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !18
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge388.thread, %.thread289, %._crit_edge388, %bb.ay, %bb.at, %bb.au, %bb.b, %bb.a, %bb.aw, %.split368, %.split360, %.split349, %.split
  %.6229 = phi ptr [ %i.c, %bb.at ], [ null, %bb.a ], [ null, %.split ], [ null, %.split349 ], [ null, %.split360 ], [ null, %.split368 ], [ null, %.thread289 ], [ null, %bb.b ], [ null, %bb.aw ], [ %i.c, %bb.au ], [ %i.c, %bb.ay ], [ %i.c, %._crit_edge388 ], [ %i.c, %._crit_edge388.thread ]
  ret ptr %.6229
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 11 uses
  %i.d = alloca [5 x ptr], align 16               ; 5 uses
  %i.e = alloca [7 x ptr], align 16               ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = alloca [256 x i8], align 16              ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %struct.PJ_PROJ_INFO, align 8       ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %9 = alloca %union.PJ_COORD, align 8            ; 6 uses
  %10 = alloca %union.PJ_COORD, align 8           ; 7 uses
  %11 = alloca %union.PJ_COORD, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i16 32, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.main.columns_xyzt, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 16 dereferenceable(40) @__const.main.longflags, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.e, ptr noundef nonnull align 16 dereferenceable(56) @__const.main.longkeys, i64 56, i1 false)
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !25
  store ptr %i.h, ptr @fout, align 8, !tbaa !25
  tail call void @_Z38pj_stderr_proj_lib_deprecation_warningv()
  %i.i = call noundef ptr @_Z9opt_parseiPPcPKcS2_PS2_S3_(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 81 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread400, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.26) ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_Z9opt_givenP7OPTARGSPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.t = icmp ugt ptr %i.p, %i.s
  %narrow.i.not.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %narrow.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp ne i64 %i.x, 0
  br label %_Z9opt_givenP7OPTARGSPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp ne ptr %i.ab, %i.p
  br label %_Z9opt_givenP7OPTARGSPKc.exit

_Z9opt_givenP7OPTARGSPKc.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.ac, %bb.e ], [ %i.y, %bb.d ], [ false, %bb.b ]
  %i.ad = icmp eq i32 %0, 1
  %or.cond = or i1 %i.ad, %.0.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @_ZL5usage, ptr noundef %i.af) ; 0 uses
  call void @free(ptr noundef nonnull %i.i) #26
  br label %.thread400

bb.g:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit
  %i.ah = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.27) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_Z9opt_givenP7OPTARGSPKc.exit309, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.aq = icmp ugt ptr %i.am, %i.ap
  %narrow.i.not.i307 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %narrow.i.not.i307, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967295
  %i.av = icmp eq i64 %i.au, 0
  br label %_Z9opt_givenP7OPTARGSPKc.exit309

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %.not = icmp eq ptr %i.ay, %i.am
  br label %_Z9opt_givenP7OPTARGSPKc.exit309

_Z9opt_givenP7OPTARGSPKc.exit309:                 ; preds = %bb.g, %bb.i, %bb.j
  %.0.i308 = phi i1 [ %.not, %bb.j ], [ %i.av, %bb.i ], [ true, %bb.g ]
  %i.az = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.28) ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread, label %bb.k

bb.k:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit309
end_hunk_1
