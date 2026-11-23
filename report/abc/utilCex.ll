Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilCex?download=true
inline.NumInlined: 51
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Abc_CexAllocFull:bb.a
  %i.j = add nsw i64 %i.i, 20                     ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 -1, i64 %i.j, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %0, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %1, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %i.b, ptr %i.n, align 4, !tbaa !13
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexMakeTriv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %3, %2
  %i.b = sdiv i32 %3, %2                          ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = mul nsw i32 %i.c, %1
  %i.e = add nsw i32 %i.d, %0                     ; 3 uses
  %i.f = ashr i32 %i.e, 5
  %i.g = and i32 %i.e, 31
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = add nsw i32 %i.f, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add nsw i64 %i.l, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.m) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %0, ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %1, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.e, ptr %i.p, align 4, !tbaa !13
  store i32 %i.a, ptr %calloc.i, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.b, ptr %i.q, align 4, !tbaa !15
  ret ptr %calloc.i
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexCreate(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %3, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 2 uses
  %i.c = add nsw i32 %i.b, %0                     ; 8 uses
  %i.d = ashr i32 %i.c, 5
  %i.e = and i32 %i.c, 31
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.d, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = add nsw i64 %i.j, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.k) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %0, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %1, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16 ; 2 uses
  store i32 %i.c, ptr %i.n, align 4, !tbaa !13
  store i32 %4, ptr %calloc.i, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %3, ptr %i.o, align 4, !tbaa !15
  %i.p = icmp eq ptr %2, null
  br i1 %i.p, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.preheader, label %.preheader31

.preheader31:                                     ; preds = %bb.b
  %i.q = icmp sgt i32 %i.b, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader31
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  %i.s = sext i32 %0 to i64                       ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %.lr.ph35, label %.loopexit

.lr.ph35:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.c, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.w = phi i32 [ %i.c, %.lr.ph ], [ %i.ai, %bb.e ]
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.x = sub nsw i64 %indvars.iv, %i.s
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ab = and i32 %i.aa, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.aa, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !16
  %.pre = load i32, ptr %i.n, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = phi i32 [ %i.w, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.c, label %.loopexit, !llvm.loop !24

bb.f:                                             ; preds = %bb.j, %.lr.ph35.new
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35.new ], [ %indvars.iv.next39.1, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph35.new ], [ %niter.next.1, %bb.j ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv38
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %.not29 = icmp eq i32 %i.am, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = trunc nuw nsw i64 %indvars.iv38 to i32
  %i.ao = and i32 %i.an, 30
  %i.ap = shl nuw nsw i32 1, %i.ao
  %i.aq = lshr i64 %indvars.iv38, 5
  %i.ar = and i64 %i.aq, 134217727
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next39 = or disjoint i64 %indvars.iv38, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next39
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %.not29.1 = icmp eq i32 %i.aw, 0
  br i1 %.not29.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw nsw i64 %indvars.iv.next39 to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %indvars.iv38, 5
  %i.bb = and i64 %i.ba, 134217727
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = or i32 %i.bd, %i.az
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !25

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph35
  %indvars.iv38.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next39.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod46 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv38.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %.not29.epil = icmp eq i32 %i.bg, 0
  br i1 %.not29.epil, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.bh = trunc nuw nsw i64 %indvars.iv38.epil.init to i32
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = lshr i64 %indvars.iv38.epil.init, 5
  %i.bl = and i64 %i.bk, 134217727
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = or i32 %i.bn, %i.bj
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit.unr-lcssa, %bb.k, %.epil.preheader, %.preheader31, %.preheader, %bb.a
  ret ptr %calloc.i
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noundef ptr @Abc_CexDup(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 4 uses
  %. = select i1 %i.b, i32 %i.d, i32 %1           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15   ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  %i.j = mul nsw i32 %i.i, %i.f
  %i.k = add nsw i32 %i.j, %.                     ; 3 uses
  %i.l = ashr i32 %i.k, 5
  %i.m = and i32 %i.k, 31
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.s) ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8 ; 2 uses
  store i32 %., ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %i.f, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.k, ptr %i.v, align 4, !tbaa !13
  %i.w = load i32, ptr %0, align 4, !tbaa !14
  store i32 %i.w, ptr %calloc.i, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.h, ptr %i.x, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13   ; 2 uses
  %i.aa = icmp slt i32 %i.d, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i32 [ %i.d, %.lr.ph ], [ %i.au, %bb.e ] ; 4 uses
  %i.ad = ashr i32 %.026, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = and i32 %.026, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ag, %i.ai
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !11
  %i.al = sub i32 %.026, %i.d
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = and i32 %i.am, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = ashr i32 %i.am, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = or i32 %i.ao, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = add nsw i32 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %i.z
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !0

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  %.023 = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %calloc.i, %bb.b ], [ %calloc.i, %bb.e ]
  ret ptr %.023
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexDeriveFromCombModel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %2, %1                       ; 3 uses
  %i.b = ashr i32 %i.a, 5
  %i.c = and i32 %i.a, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.i) ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %2, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %1, ptr %i.k, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.a, ptr %i.l, align 4, !tbaa !13
  store i32 %3, ptr %calloc.i, align 4, !tbaa !14
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = and i32 %i.r, 30
  %i.t = shl nuw nsw i32 1, %i.s
  %i.u = lshr i64 %indvars.iv, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = or i32 %i.x, %i.t
  store i32 %i.y, ptr %i.w, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %.not.1 = icmp eq i32 %i.aa, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ac = and i32 %i.ab, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = lshr i64 %indvars.iv, 5
  %i.af = and i64 %i.ae, 134217727
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = or i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !26

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod15 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %.not.epil = icmp eq i32 %i.ak, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.al = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.am = and i32 %i.al, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = lshr i64 %indvars.iv.epil.init, 5
  %i.ap = and i64 %i.ao, 134217727
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = or i32 %i.ar, %i.an
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  ret ptr %calloc.i
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Abc_CexMerge(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts94 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 8 uses
  %i.e = icmp sgt i32 %2, %i.d
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.d) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp samesign ugt i32 %3, %i.d
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.d) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.i = icmp samesign ugt i32 %2, %3
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2, i32 noundef %3) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.k = load i32, ptr %1, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15   ; 3 uses
  %i.n = add i32 %3, %i.k
  %i.o = add i32 %2, %i.m
  %i.p = sub i32 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !11   ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12   ; 11 uses
  %i.u = add nuw i32 %i.d, 1
  %i.v = sub i32 %i.u, %i.p
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = add nsw i32 %i.w, %i.r                   ; 3 uses
  %i.y = ashr i32 %i.x, 5
  %i.z = and i32 %i.x, 31
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = add nsw i32 %i.y, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = add nsw i64 %i.ae, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.af) ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %i.r, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.x, ptr %i.ai, align 4, !tbaa !13
  %i.aj = load i32, ptr %0, align 4, !tbaa !14
  store i32 %i.aj, ptr %calloc.i, align 4, !tbaa !14
  %i.ak = sub nsw i32 %i.d, %i.p
  %i.al = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !15
  %i.am = icmp sgt i32 %i.r, 0
  br i1 %i.am, label %.lr.ph, label %.preheader102

.lr.ph:                                           ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20 ; 3 uses
  %xtraiter = and i32 %i.r, 1
  %i.ap = icmp eq i32 %i.r, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

end_hunk_0
begin_hunk_1_@Abc_CexPrint:bb.a
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i32 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.e = lshr i32 %index, 5
  %i.f = lshr i32 %index, 5
  %i.g = zext nneg i32 %i.e to i64
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h
  %i.k = load i32, ptr %i.i, align 4, !tbaa !16
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = load i32, ptr %i.j, align 4, !tbaa !16
  %broadcast.splatinsert41 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat42 = shufflevector <4 x i32> %broadcast.splatinsert41, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.m = and <4 x i32> %vec.ind, splat (i32 31)
  %i.n = and <4 x i32> %step.add, splat (i32 31)
  %i.o = lshr <4 x i32> %broadcast.splat, %i.m
  %i.p = lshr <4 x i32> %broadcast.splat42, %i.n
  %i.q = and <4 x i32> %i.o, splat (i32 1)
  %i.r = and <4 x i32> %i.p, splat (i32 1)
  %i.s = add <4 x i32> %i.q, %vec.phi             ; 2 uses
  %i.t = add <4 x i32> %i.r, %vec.phi40           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i32 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.021.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %middle.block ]
  %.01620.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021.i = phi i32 [ %i.ad, %scalar.ph ], [ %.021.i.ph, %scalar.ph.preheader ]
  %.01620.i = phi i32 [ %i.ae, %scalar.ph ], [ %.01620.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = lshr i32 %.01620.i, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = and i32 %.01620.i, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = and i32 %i.ab, 1
  %i.ad = add nuw nsw i32 %i.ac, %.021.i          ; 2 uses
  %i.ae = add nuw nsw i32 %.01620.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ae, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !41

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.v, %middle.block ], [ %i.ad, %scalar.ph ] ; 2 uses
  %i.af = load i32, ptr %0, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = uitofp nneg i32 %.0.lcssa.i to double
  %i.an = fmul nnan double %i.am, 1.000000e+02
  %i.ao = sub nsw i32 %i.b, %i.aj
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv double %i.an, %i.ap
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.b, i32 noundef %.0.lcssa.i, double noundef %i.aq) ; 0 uses
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !11
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.021 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.c ] ; 3 uses
  %i.aw = lshr i32 %.021, 5
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = and i32 %.021, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = and i32 %i.bb, 1
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bc) ; 0 uses
  %i.be = add nuw nsw i32 %.021, 1                ; 3 uses
  %i.bf = load i32, ptr %i.ai, align 4, !tbaa !11
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.c, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.i
  %.0.lcssa = phi i32 [ 0, %._crit_edge.i ], [ %i.be, %bb.c ]
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.bh = load i32, ptr %i.ag, align 4, !tbaa !15
  %.not28 = icmp slt i32 %i.bh, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %._crit_edge26
  %.130 = phi i32 [ %.0.lcssa, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge26 ] ; 2 uses
  %.01629 = phi i32 [ 0, %.lr.ph32 ], [ %i.by, %._crit_edge26 ] ; 3 uses
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.01629) ; 0 uses
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.d, %.lr.ph25
  %.223 = phi i32 [ %i.bm, %.lr.ph25 ], [ %.130, %bb.d ] ; 3 uses
  %.01722 = phi i32 [ %i.bv, %.lr.ph25 ], [ 0, %bb.d ]
  %i.bm = add nsw i32 %.223, 1                    ; 2 uses
  %i.bn = ashr i32 %.223, 5
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = and i32 %.223, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = and i32 %i.bs, 1
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bt) ; 0 uses
  %i.bv = add nuw nsw i32 %.01722, 1              ; 2 uses
  %i.bw = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph25, label %._crit_edge26, !llvm.loop !43

._crit_edge26:                                    ; preds = %.lr.ph25, %bb.d
  %.2.lcssa = phi i32 [ %.130, %bb.d ], [ %i.bm, %.lr.ph25 ]
  %putchar19 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.by = add nuw nsw i32 %.01629, 1
  %i.bz = load i32, ptr %i.ag, align 4, !tbaa !15
  %.not.not = icmp slt i32 %.01629, %i.bz
  br i1 %.not.not, label %bb.d, label %.loopexit, !llvm.loop !44

.loopexit.sink.split:                             ; preds = %bb.a, %bb.b
  %str.6.sink = phi ptr [ @str.6, %bb.b ], [ @str.7, %bb.a ]
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.6.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge26, %.loopexit.sink.split, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Abc_CexFreeP(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %magicptr = ptrtoint ptr %i.a to i64
  switch i64 %magicptr, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.a) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Abc_CexFree(ptr noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Abc_CexTransformPhase(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %.Abc_CexDup.exit_crit_edge, label %bb.b

.Abc_CexDup.exit_crit_edge:                       ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !15
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 4, !tbaa !13
  %.pre16 = add nsw i32 %.pre, 1
  br label %Abc_CexDup.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11   ; 4 uses
  %..i = select i1 %i.d, i32 %i.f, i32 %3         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15   ; 2 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = mul nsw i32 %i.i, %i.b
  %i.k = add nsw i32 %i.j, %..i                   ; 3 uses
  %i.l = ashr i32 %i.k, 5
  %i.m = and i32 %i.k, 31
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, 20
  %calloc.i.i = tail call ptr @calloc(i64 1, i64 %i.s) ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8 ; 2 uses
  store i32 %..i, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 12
  store i32 %i.b, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store i32 %i.k, ptr %i.v, align 4, !tbaa !13
  %i.w = load i32, ptr %0, align 4, !tbaa !14
  store i32 %i.w, ptr %calloc.i.i, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 %i.h, ptr %i.x, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13   ; 4 uses
  %i.aa = icmp slt i32 %i.f, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %Abc_CexDup.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 20
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.026.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.au, %bb.e ] ; 4 uses
  %i.ad = ashr i32 %.026.i, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = and i32 %.026.i, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.ag
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !11
  %i.al = sub i32 %.026.i, %i.f
  %i.am = add i32 %i.ak, %i.al                    ; 2 uses
  %i.an = and i32 %i.am, 31
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = ashr i32 %i.am, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = or i32 %i.ao, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = add nsw i32 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.z
  br i1 %exitcond.not.i, label %Abc_CexDup.exit, label %bb.c, !llvm.loop !0

Abc_CexDup.exit:                                  ; preds = %bb.e, %.Abc_CexDup.exit_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre16, %.Abc_CexDup.exit_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %bb.e ]
  %i.av = phi i32 [ %.pre15, %.Abc_CexDup.exit_crit_edge ], [ %i.z, %bb.b ], [ %i.z, %bb.e ]
  %.023.i = phi ptr [ inttoptr (i64 1 to ptr), %.Abc_CexDup.exit_crit_edge ], [ %calloc.i.i, %bb.b ], [ %calloc.i.i, %bb.e ] ; 5 uses
  %i.aw = sdiv i32 %i.b, %1
  %i.ax = getelementptr inbounds nuw i8, ptr %.023.i, i64 12
  store i32 %1, ptr %i.ax, align 4, !tbaa !12
  store i32 -1, ptr %.023.i, align 4, !tbaa !14
  %i.ay = mul nsw i32 %.pre-phi, %i.aw
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.023.i, i64 16
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !13
  ret ptr %.023.i
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexTransformTempor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.c = sdiv i32 %i.b, %1                        ; 3 uses
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 4 uses
  %i.g = add i32 %i.f, %i.c
  %i.h = mul nsw i32 %i.g, %1
  %i.i = add nsw i32 %i.h, %3                     ; 3 uses
  %i.j = ashr i32 %i.i, 5
  %i.k = and i32 %i.i, 31
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add nsw i64 %i.p, 20
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.q) ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 %3, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 %1, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i32 %i.i, ptr %i.t, align 4, !tbaa !13
  %i.u = load i32, ptr %0, align 4, !tbaa !14
  store i32 %i.u, ptr %calloc.i, align 4, !tbaa !14
  %i.v = add nsw i32 %i.d, %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !15
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.preheader48.lr.ph, label %.preheader47

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.y = icmp sgt i32 %1, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  br i1 %i.y, label %.preheader48.lr.ph.split.us, label %.preheader47

.preheader48.lr.ph.split.us:                      ; preds = %.preheader48.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %._crit_edge.us, %.preheader48.lr.ph.split.us
  %.052.us = phi i32 [ %3, %.preheader48.lr.ph.split.us ], [ %i.au, %._crit_edge.us ]
  %.04251.us = phi i32 [ 0, %.preheader48.lr.ph.split.us ], [ %i.ad, %._crit_edge.us ]
  %i.ad = add nuw nsw i32 %.04251.us, 1           ; 3 uses
  %i.ae = mul nuw nsw i32 %i.ad, %1
  %invariant.op.us = add i32 %i.ae, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %.preheader48.us, %bb.d
  %.150.us = phi i32 [ %.052.us, %.preheader48.us ], [ %i.au, %bb.d ] ; 3 uses
  %.04049.us = phi i32 [ 0, %.preheader48.us ], [ %i.at, %bb.d ] ; 2 uses
  %.reass.us = add i32 %.04049.us, %invariant.op.us ; 2 uses
  %i.af = ashr i32 %.reass.us, 5
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = and i32 %.reass.us, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, %i.ai
  %.not46.us = icmp eq i32 %i.al, 0
  br i1 %.not46.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = and i32 %.150.us, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = ashr i32 %.150.us, 5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = or i32 %i.ar, %i.an
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.at = add nuw nsw i32 %.04049.us, 1           ; 2 uses
  %i.au = add nsw i32 %.150.us, 1                 ; 3 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !47

._crit_edge.us:                                   ; preds = %bb.d
  %exitcond62.not = icmp eq i32 %i.ad, %i.d
  br i1 %exitcond62.not, label %.preheader47, label %.preheader48.us, !llvm.loop !48

.preheader47:                                     ; preds = %._crit_edge.us, %.preheader48.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %3, %bb.a ], [ %3, %.preheader48.lr.ph ], [ %i.au, %._crit_edge.us ]
  %.not56 = icmp slt i32 %i.f, 0
  br i1 %.not56, label %._crit_edge59.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader47
  %i.av = icmp sgt i32 %1, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %calloc.i, i64 20
  br i1 %i.av, label %.preheader.lr.ph.split, label %._crit_edge59.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.258 = phi i32 [ %.0.lcssa, %.preheader.lr.ph.split ], [ %i.bq, %._crit_edge ]
  %.14357 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.br, %._crit_edge ] ; 3 uses
  %i.ba = mul nsw i32 %.14357, %i.b
  %invariant.op = add i32 %i.ba, %i.az
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %.355 = phi i32 [ %.258, %.preheader ], [ %i.bq, %bb.g ] ; 3 uses
  %.14154 = phi i32 [ 0, %.preheader ], [ %i.bp, %bb.g ] ; 2 uses
  %.reass = add i32 %.14154, %invariant.op        ; 2 uses
  %i.bb = ashr i32 %.reass, 5
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = and i32 %.reass, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %.not45 = icmp eq i32 %i.bh, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = and i32 %.355, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = ashr i32 %.355, 5
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = or i32 %i.bn, %i.bj
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bp = add nuw nsw i32 %.14154, 1              ; 2 uses
  %i.bq = add nsw i32 %.355, 1                    ; 2 uses
  %exitcond63.not = icmp eq i32 %i.bp, %1
  br i1 %exitcond63.not, label %._crit_edge, label %bb.e, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.g
  %i.br = add nuw i32 %.14357, 1
  %exitcond64.not = icmp eq i32 %.14357, %i.f
  br i1 %exitcond64.not, label %._crit_edge59.split, label %.preheader, !llvm.loop !50

._crit_edge59.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader47
  ret ptr %calloc.i
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @Abc_CexTransformUndc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi101 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load = load <4 x i8>, ptr %i.d, align 1, !tbaa !56
  %wide.load102 = load <4 x i8>, ptr %i.e, align 1, !tbaa !56
  %i.f = and <4 x i8> %wide.load, splat (i8 -33)
  %i.g = and <4 x i8> %wide.load102, splat (i8 -33)
  %i.h = icmp eq <4 x i8> %i.f, splat (i8 88)
  %i.i = icmp eq <4 x i8> %i.g, splat (i8 88)
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = zext <4 x i1> %i.i to <4 x i32>
  %i.l = add <4 x i32> %vec.phi, %i.j             ; 2 uses
  %i.m = add <4 x i32> %vec.phi101, %i.k          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
end_hunk_1
