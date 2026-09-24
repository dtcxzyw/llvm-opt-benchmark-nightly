Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rewireMiaig?download=true
inline.NumInlined: 1410
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6Rewire5Miaig6setExcEP10Gia_Man_t_:bb.a
  %i.a = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr i8, ptr %.val8, i64 4
  %.val8.val = load i32, ptr %i.b, align 4, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = icmp eq i32 %.val8.val, 1
  %i.h = icmp ne i32 %i.f, 1
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %.not6 = icmp eq ptr %i.k, null
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #36
  store ptr %i.t, ptr %i.j, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.u = call noundef i32 @_ZN6Rewire5Miaig7fromGiaEP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1) ; 0 uses
  call void @_ZN6Rewire5Miaig15initializeTruthEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47 ; 2 uses
  %i.af = sub i32 %i.ac, %i.ae
  %.val = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ag = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ag, align 4, !tbaa !54
  %i.ah = add i32 %.val.val, -1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !89 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !89 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %wide.trip.count.i = zext i32 %i.ap to i64      ; 7 uses
  br i1 %i.aq, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %i.ar = ptrtoaddr ptr %i.an to i64
  %i.as = ptrtoaddr ptr %i.aj to i64
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.at = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.au = sub i32 %i.ac, %i.ae
  %min.iters.check = icmp ult i32 %i.ap, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %_ZL6Tt_DupPmS_i.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %_ZL6Tt_DupPmS_i.exit.loopexit ] ; 5 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.av)
  %i.aw = add nsw i32 %i.af, %.sroa.speculated
  %i.ax = mul nsw i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ay ; 6 uses
  %i.ba = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ba ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.bc = trunc i64 %indvars.iv to i32
  %smin = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.ah)
  %i.bd = add i32 %i.au, %smin
  %i.be = mul nsw i32 %i.al, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = mul i64 %i.at, %indvars.iv
  %i.bi = add i64 %i.bh, %i.ar
  %i.bj = add i64 %i.bg, %i.as
  %i.bk = sub i64 %i.bj, %i.bi
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <2 x i64>, ptr %i.bl, align 8, !tbaa !91
  %wide.load16 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !91
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %wide.load, ptr %i.bn, align 8, !tbaa !91
  store <2 x i64> %wide.load16, ptr %i.bo, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL6Tt_DupPmS_i.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.prol
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i.prol
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !91
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !153

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bt = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_ZL6Tt_DupPmS_i.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !91
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !91
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i.1
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !91
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.1
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !91
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i.2
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i.2
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !91
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZL6Tt_DupPmS_i.exit.loopexit, label %.lr.ph.i, !llvm.loop !154

_ZL6Tt_DupPmS_i.exit.loopexit:                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !155

._crit_edge.split:                                ; preds = %_ZL6Tt_DupPmS_i.exit.loopexit, %.lr.ph, %bb.e
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Rewire5Miaig6rewireEifiiiiiiiiiiiP12Gia_ChMan_t_i(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Rewire::Miaig") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16) local_unnamed_addr #5 align 2 {
.lr.ph.i.i.i.i.i.i:
  %17 = alloca %struct.timespec, align 8          ; 5 uses
  %18 = alloca %"class.Rewire::Miaig", align 16   ; 9 uses
  %19 = alloca %struct.timespec, align 8          ; 5 uses
  %20 = alloca %struct.timespec, align 8          ; 5 uses
  %21 = alloca %struct.timespec, align 8          ; 5 uses
  %22 = alloca %"class.std::vector", align 8      ; 13 uses
  %23 = alloca [1 x %"class.Rewire::Miaig"], align 16 ; 6 uses
  %24 = alloca %"class.std::vector", align 8      ; 14 uses
  %25 = alloca [1 x %"class.Rewire::Miaig"], align 16 ; 6 uses
  %26 = alloca %"class.Rewire::Miaig", align 8    ; 5 uses
  %27 = alloca %"class.Rewire::Miaig", align 16   ; 40 uses
  %28 = alloca %"class.Rewire::Miaig", align 16   ; 11 uses
  %29 = alloca %"class.Rewire::Miaig", align 16   ; 9 uses
  %30 = alloca %"class.Rewire::Miaig", align 16   ; 7 uses
  %31 = alloca %"class.Rewire::Miaig", align 16   ; 6 uses
  %32 = alloca %"class.Rewire::Miaig", align 16   ; 6 uses
  %33 = alloca [2 x %"class.Rewire::Miaig"], align 8 ; 8 uses
  %34 = alloca %"class.Rewire::Miaig", align 16   ; 6 uses
  %35 = alloca %"class.Rewire::Miaig", align 8    ; 3 uses
  %36 = alloca %"class.Rewire::Miaig", align 16   ; 7 uses
  %37 = alloca %"class.Rewire::Miaig", align 16   ; 5 uses
  %38 = alloca %"class.Rewire::Miaig", align 16   ; 5 uses
  %39 = alloca %"class.Rewire::Miaig", align 16   ; 6 uses
  %40 = alloca %"class.Rewire::Miaig", align 16   ; 7 uses
  %41 = alloca %"class.Rewire::Miaig", align 16   ; 6 uses
  %42 = alloca [1 x %"class.Rewire::Miaig"], align 16 ; 6 uses
  %43 = alloca [1 x %"class.Rewire::Miaig"], align 16 ; 6 uses
  %44 = alloca %"class.Rewire::Miaig", align 16   ; 3 uses
  %45 = alloca [1 x %"class.Rewire::Miaig"], align 16 ; 6 uses
  %46 = alloca %"class.Rewire::Miaig", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @_ZN6Rewire5Miaig3dupEiii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.a = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  store ptr %i.a, ptr %22, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !99
  %i.d = load <2 x ptr>, ptr %23, align 16, !tbaa !100
  %i.e = load ptr, ptr %23, align 16, !tbaa !101  ; 3 uses
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !102
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call void @_ZN6Rewire5Miaig3dupEiii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.i = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 3 uses
  store ptr %i.i, ptr %24, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !99
  %i.l = load <2 x ptr>, ptr %25, align 16, !tbaa !100
  %i.m = load ptr, ptr %25, align 16, !tbaa !101  ; 3 uses
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i.i.i201 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i201, label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i202, label %bb.b

bb.b:                                             ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !47
  br label %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i202

_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i202: ; preds = %bb.b, %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 6 uses
  store ptr %i.j, ptr %i.p, align 8, !tbaa !102
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  %i.q = load ptr, ptr %24, align 8, !tbaa !98    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 4 uses
  store ptr %i.r, ptr %26, align 8, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6Rewire5MiaigC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i202
  %i.v = load i32, ptr %i.r, align 4, !tbaa !47
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.r, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigC2ERKS0_.exit

_ZN6Rewire5MiaigC2ERKS0_.exit:                    ; preds = %_ZSt10_ConstructIN6Rewire5MiaigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i202, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.x = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %21) #37
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %_ZL10Time_Clockv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit
  %i.z = load i64, ptr %21, align 8, !tbaa !196
  %i.aa = mul nsw i64 %i.z, 1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !197
  %i.ad = sdiv i64 %i.ac, 1000
  %i.ae = add nsw i64 %i.ad, %i.aa
  br label %_ZL10Time_Clockv.exit

_ZL10Time_Clockv.exit:                            ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit, %bb.d
  %.0.i = phi i64 [ %i.ae, %bb.d ], [ -1, %_ZN6Rewire5MiaigC2ERKS0_.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  %i.af = load ptr, ptr %22, align 8, !tbaa !98   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !100
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !101 ; 3 uses
  store <2 x ptr> %i.ah, ptr %28, align 16, !tbaa !100
  %.not.i.i205 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i205, label %_ZN6Rewire5MiaigC2ERKS0_.exit206, label %bb.e

bb.e:                                             ; preds = %_ZL10Time_Clockv.exit
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigC2ERKS0_.exit206

_ZN6Rewire5MiaigC2ERKS0_.exit206:                 ; preds = %_ZL10Time_Clockv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  call void @_ZN6Rewire5Miaig3dupEiii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.al = icmp eq i32 %9, 0
  %.not174 = icmp eq i32 %13, 0                   ; 8 uses
  %i.am = select i1 %.not174, { i64, i64 } { i64 ptrtoint (ptr @_ZN6Rewire5Miaig9countAnd2Eiii to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN6Rewire5Miaig10countLevelEiii to i64), i64 0 }
  %i.an = select i1 %.not174, { i64, i64 } { i64 ptrtoint (ptr @_ZN6Rewire5Miaig15countMappedAreaEiii to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN6Rewire5Miaig16countMappedDelayEiii to i64), i64 0 }
  %i.ao = select i1 %i.al, { i64, i64 } %i.am, { i64, i64 } %i.an ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.ao, 0 ; 7 uses
  %.fca.1.extract = extractvalue { i64, i64 } %i.ao, 1 ; 2 uses
  %i.ap = fcmp une float %3, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge

_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge: ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit206
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %.thread

bb.f:                                             ; preds = %_ZN6Rewire5MiaigC2ERKS0_.exit206
  call void @_ZN6Rewire5Miaig16initializeLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !103 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !104 ; 2 uses
  %i.ax = sub i32 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %i.ba = sext i32 %i.ax to i64                   ; 5 uses
  %i.bb = sext i32 %i.aw to i64                   ; 2 uses
  %i.bc = add nsw i64 %i.ba, 1
  %i.bd = call i64 @llvm.smax.i64(i64 %i.bc, i64 %i.bb)
  %i.be = sub i64 %i.bd, %i.ba                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.be, -8                      ; 3 uses
  %i.bf = add i64 %n.vec, %i.ba
  %invariant.gep = getelementptr [4 x i8], ptr %i.az, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi503 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.bi, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !47
  %wide.load504 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !47
  %i.bh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.bi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi503, <4 x i32> %wide.load504) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bi)
  %i.bk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.07.i.ph = phi i32 [ -1, %.lr.ph.i ], [ %i.bk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.07.i = phi i32 [ %i.bn, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = call noundef i32 @llvm.smax.i32(i32 %.07.i, i32 %i.bm) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next.i, %i.bb
  br i1 %i.bo, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !157

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %.lcssa502 = phi i32 [ %i.bk, %middle.block ], [ %i.bn, %scalar.ph ]
  %i.bp = sitofp i32 %.lcssa502 to float
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit.i, %bb.f
  %.0.lcssa.i = phi float [ -1.000000e+00, %bb.f ], [ %i.bp, %._crit_edge.loopexit.i ]
  %i.bq = fmul float %3, %.0.lcssa.i
  %i.br = fptosi float %i.bq to i32               ; 4 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6Rewire5Miaig16initializeLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.bs = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !103 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i208, label %.thread

.lr.ph.i208:                                      ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !104 ; 2 uses
  %i.by = sub i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105 ; 2 uses
  %i.cb = sext i32 %i.by to i64                   ; 5 uses
  %i.cc = sext i32 %i.bx to i64                   ; 2 uses
  %i.cd = add nsw i64 %i.cb, 1
  %i.ce = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cc)
  %i.cf = sub i64 %i.ce, %i.cb                    ; 3 uses
  %min.iters.check506 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check506, label %scalar.ph505.preheader, label %vector.ph507

vector.ph507:                                     ; preds = %.lr.ph.i208
  %n.vec508 = and i64 %i.cf, -8                   ; 3 uses
  %i.cg = add i64 %n.vec508, %i.cb
  %invariant.gep771 = getelementptr [4 x i8], ptr %i.ca, i64 %i.cb
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph507
  %index510 = phi i64 [ 0, %vector.ph507 ], [ %index.next515, %vector.body509 ] ; 2 uses
  %vec.phi511 = phi <4 x i32> [ splat (i32 -1), %vector.ph507 ], [ %i.ci, %vector.body509 ]
  %vec.phi512 = phi <4 x i32> [ splat (i32 -1), %vector.ph507 ], [ %i.cj, %vector.body509 ]
  %gep772 = getelementptr [4 x i8], ptr %invariant.gep771, i64 %index510 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %gep772, i64 16
  %wide.load513 = load <4 x i32>, ptr %gep772, align 4, !tbaa !47
  %wide.load514 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !47
  %i.ci = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi511, <4 x i32> %wide.load513) ; 2 uses
  %i.cj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi512, <4 x i32> %wide.load514) ; 2 uses
  %index.next515 = add nuw i64 %index510, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.ck, label %middle.block516, label %vector.body509, !llvm.loop !158

middle.block516:                                  ; preds = %vector.body509
  %rdx.minmax517 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ci, <4 x i32> %i.cj)
  %i.cl = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax517)
  %cmp.n518 = icmp eq i64 %i.cf, %n.vec508
  br i1 %cmp.n518, label %.thread, label %scalar.ph505.preheader

scalar.ph505.preheader:                           ; preds = %.lr.ph.i208, %middle.block516
  %indvars.iv.i209.ph = phi i64 [ %i.cb, %.lr.ph.i208 ], [ %i.cg, %middle.block516 ]
  %.07.i210.ph = phi i32 [ -1, %.lr.ph.i208 ], [ %i.cl, %middle.block516 ]
  br label %scalar.ph505

scalar.ph505:                                     ; preds = %scalar.ph505.preheader, %scalar.ph505
  %indvars.iv.i209 = phi i64 [ %indvars.iv.next.i211, %scalar.ph505 ], [ %indvars.iv.i209.ph, %scalar.ph505.preheader ] ; 2 uses
  %.07.i210 = phi i32 [ %i.co, %scalar.ph505 ], [ %.07.i210.ph, %scalar.ph505.preheader ]
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv.i209
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.co = call noundef i32 @llvm.smax.i32(i32 %.07.i210, i32 %i.cn)
  %indvars.iv.next.i211 = add nsw i64 %indvars.iv.i209, 1 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next.i211, %i.cc
  br i1 %i.cp, label %scalar.ph505, label %.thread, !llvm.loop !159

.thread:                                          ; preds = %scalar.ph505, %bb.h, %middle.block516, %_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge, %bb.g
  %i.cq = phi ptr [ %.pre, %_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge ], [ %i.ar, %bb.g ], [ %i.bs, %middle.block516 ], [ %i.bs, %bb.h ], [ %i.bs, %scalar.ph505 ]
  %i.cr = phi i1 [ false, %_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge ], [ false, %bb.g ], [ true, %middle.block516 ], [ true, %bb.h ], [ true, %scalar.ph505 ] ; 3 uses
  %i.cs = phi i32 [ 0, %_ZN6Rewire5MiaigC2ERKS0_.exit206..thread_crit_edge ], [ 0, %bb.g ], [ %i.br, %middle.block516 ], [ %i.br, %bb.h ], [ %i.br, %scalar.ph505 ] ; 2 uses
  %i.ct = icmp eq i32 %9, 1
  %i.cu = zext i1 %i.ct to i32                    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !88 ; 3 uses
  %47 = getelementptr inbounds i8, ptr %28, i64 %.fca.1.extract ; 7 uses
  %i.cy = and i64 %.fca.0.extract, 1
  %.not175 = icmp eq i64 %i.cy, 0                 ; 3 uses
  br i1 %.not175, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.cz = load ptr, ptr %47, align 8, !tbaa !199
  %i.da = getelementptr i8, ptr %i.cz, i64 %.fca.0.extract
  %i.db = getelementptr i8, ptr %i.da, i64 -1
  %i.dc = load ptr, ptr %i.db, align 8, !nosanitize !200
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.dd = inttoptr i64 %.fca.0.extract to ptr
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.de = phi ptr [ %i.dc, %bb.i ], [ %i.dd, %bb.j ]
  %i.df = call noundef float %i.de(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 0, i32 noundef %10, i32 noundef %12) #37 ; 5 uses
  %i.dg = icmp ne i32 %16, 0                      ; 5 uses
  %or.cond = and i1 %i.dg, %i.cr
  br i1 %or.cond, label %.thread359, label %bb.l

.thread359:                                       ; preds = %bb.k
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.cs) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread359, %bb.l
  %i.di = fpext float %i.df to double
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !78 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !106 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !103
  %i.dq = sub nsw i32 %i.dn, %i.dp                ; 2 uses
  %.056.i = add nsw i32 %i.dl, 1
  %i.dr = icmp slt i32 %.056.i, %i.dq
  br i1 %i.dr, label %.lr.ph.i215, label %_ZN6Rewire5Miaig9countAnd2Eiii.exit

.lr.ph.i215:                                      ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !107 ; 9 uses
  %i.du = sext i32 %i.dl to i64                   ; 3 uses
  %i.dv = add nsw i64 %i.du, 1                    ; 3 uses
  %i.dw = sext i32 %i.dq to i64                   ; 2 uses
  %i.dx = add nsw i64 %i.du, 2
  %i.dy = call i64 @llvm.smax.i64(i64 %i.dw, i64 %i.dx)
  %i.dz = xor i64 %i.du, -1
  %i.ea = add i64 %i.dy, %i.dz                    ; 3 uses
  %min.iters.check522 = icmp ult i64 %i.ea, 9
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %.lr.ph.i215
  %i.eb = and i64 %i.ea, 7                        ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = select i1 %i.ec, i64 8, i64 %i.eb
  %n.vec524 = sub i64 %i.ea, %i.ed                ; 2 uses
  %i.ee = add i64 %i.dv, %n.vec524
  br label %vector.body525

vector.body525:                                   ; preds = %vector.body525, %vector.ph523
  %index526 = phi i64 [ 0, %vector.ph523 ], [ %index.next529, %vector.body525 ] ; 2 uses
  %vec.phi527 = phi <4 x i32> [ zeroinitializer, %vector.ph523 ], [ %i.fn, %vector.body525 ]
  %vec.phi528 = phi <4 x i32> [ zeroinitializer, %vector.ph523 ], [ %i.fo, %vector.body525 ]
  %i.ef = add i64 %i.dv, %index526                ; 8 uses
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.dt, i64 %i.ef
  %i.eh = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.ej, i64 32
  %i.el = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.em = getelementptr i8, ptr %i.el, i64 48
  %i.en = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.eo = getelementptr i8, ptr %i.en, i64 64
  %i.ep = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.eq = getelementptr i8, ptr %i.ep, i64 80
  %i.er = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.es = getelementptr i8, ptr %i.er, i64 96
  %i.et = getelementptr [16 x i8], ptr %i.dt, i64 %i.ef
  %i.eu = getelementptr i8, ptr %i.et, i64 112
  %i.ev = load i32, ptr %i.eg, align 8, !tbaa !55
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !55
  %i.ex = load i32, ptr %i.ek, align 8, !tbaa !55
  %i.ey = load i32, ptr %i.em, align 8, !tbaa !55
  %i.ez = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 1
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 2
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 3
  %i.fd = load i32, ptr %i.eo, align 8, !tbaa !55
  %i.fe = load i32, ptr %i.eq, align 8, !tbaa !55
  %i.ff = load i32, ptr %i.es, align 8, !tbaa !55
  %i.fg = load i32, ptr %i.eu, align 8, !tbaa !55
  %i.fh = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 1
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 2
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fg, i64 3
  %i.fl = add <4 x i32> %vec.phi527, splat (i32 -1)
  %i.fm = add <4 x i32> %vec.phi528, splat (i32 -1)
  %i.fn = add <4 x i32> %i.fl, %i.fc              ; 2 uses
  %i.fo = add <4 x i32> %i.fm, %i.fk              ; 2 uses
  %index.next529 = add nuw i64 %index526, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next529, %n.vec524
  br i1 %i.fp, label %middle.block530, label %vector.body525, !llvm.loop !160

middle.block530:                                  ; preds = %vector.body525
  %bin.rdx = add <4 x i32> %i.fo, %i.fn
  %i.fq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %.lr.ph.i215, %middle.block530
  %indvars.iv.i216.ph = phi i64 [ %i.dv, %.lr.ph.i215 ], [ %i.ee, %middle.block530 ]
  %.07.i217.ph = phi i32 [ 0, %.lr.ph.i215 ], [ %i.fq, %middle.block530 ]
  br label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.preheader, %scalar.ph521
  %indvars.iv.i216 = phi i64 [ %indvars.iv.next.i218, %scalar.ph521 ], [ %indvars.iv.i216.ph, %scalar.ph521.preheader ] ; 2 uses
  %.07.i217 = phi i32 [ %i.ft, %scalar.ph521 ], [ %.07.i217.ph, %scalar.ph521.preheader ]
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.dt, i64 %indvars.iv.i216
  %.val.i.i = load i32, ptr %i.fr, align 8, !tbaa !55
  %i.fs = add i32 %.07.i217, -1
  %i.ft = add i32 %i.fs, %.val.i.i                ; 2 uses
  %indvars.iv.next.i218 = add nsw i64 %indvars.iv.i216, 1 ; 2 uses
  %i.fu = icmp slt i64 %indvars.iv.next.i218, %i.dw
  br i1 %i.fu, label %scalar.ph521, label %._crit_edge.loopexit.i219, !llvm.loop !161

._crit_edge.loopexit.i219:                        ; preds = %scalar.ph521
  %i.fv = sitofp i32 %i.ft to float
  %i.fw = fpext float %i.fv to double
  br label %_ZN6Rewire5Miaig9countAnd2Eiii.exit

_ZN6Rewire5Miaig9countAnd2Eiii.exit:              ; preds = %bb.m, %._crit_edge.loopexit.i219
  %.0.lcssa.i214 = phi double [ 0.000000e+00, %bb.m ], [ %i.fw, %._crit_edge.loopexit.i219 ]
  call void @_ZN6Rewire5Miaig16initializeLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.fx = load ptr, ptr %i.cv, align 8, !tbaa !78 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !103 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i221, label %_ZN6Rewire5Miaig10countLevelEiii.exit226

.lr.ph.i221:                                      ; preds = %_ZN6Rewire5Miaig9countAnd2Eiii.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !104 ; 2 uses
  %i.gd = sub i32 %i.gc, %i.fz
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !105 ; 2 uses
  %i.gg = sext i32 %i.gd to i64                   ; 5 uses
  %i.gh = sext i32 %i.gc to i64                   ; 2 uses
  %i.gi = add nsw i64 %i.gg, 1
  %i.gj = call i64 @llvm.smax.i64(i64 %i.gi, i64 %i.gh)
  %i.gk = sub i64 %i.gj, %i.gg                    ; 3 uses
  %min.iters.check534 = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check534, label %scalar.ph533.preheader, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph.i221
  %n.vec536 = and i64 %i.gk, -8                   ; 3 uses
  %i.gl = add i64 %n.vec536, %i.gg
  %invariant.gep773 = getelementptr [4 x i8], ptr %i.gf, i64 %i.gg
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph535
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next543, %vector.body537 ] ; 2 uses
  %vec.phi539 = phi <4 x i32> [ splat (i32 -1), %vector.ph535 ], [ %i.gn, %vector.body537 ]
  %vec.phi540 = phi <4 x i32> [ splat (i32 -1), %vector.ph535 ], [ %i.go, %vector.body537 ]
  %gep774 = getelementptr [4 x i8], ptr %invariant.gep773, i64 %index538 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep774, i64 16
  %wide.load541 = load <4 x i32>, ptr %gep774, align 4, !tbaa !47
  %wide.load542 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !47
  %i.gn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi539, <4 x i32> %wide.load541) ; 2 uses
  %i.go = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi540, <4 x i32> %wide.load542) ; 2 uses
  %index.next543 = add nuw i64 %index538, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.gp, label %middle.block544, label %vector.body537, !llvm.loop !162

middle.block544:                                  ; preds = %vector.body537
  %rdx.minmax545 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gn, <4 x i32> %i.go)
  %i.gq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax545) ; 2 uses
  %cmp.n546 = icmp eq i64 %i.gk, %n.vec536
  br i1 %cmp.n546, label %._crit_edge.loopexit.i225, label %scalar.ph533.preheader

scalar.ph533.preheader:                           ; preds = %.lr.ph.i221, %middle.block544
  %indvars.iv.i222.ph = phi i64 [ %i.gg, %.lr.ph.i221 ], [ %i.gl, %middle.block544 ]
  %.07.i223.ph = phi i32 [ -1, %.lr.ph.i221 ], [ %i.gq, %middle.block544 ]
  br label %scalar.ph533

scalar.ph533:                                     ; preds = %scalar.ph533.preheader, %scalar.ph533
  %indvars.iv.i222 = phi i64 [ %indvars.iv.next.i224, %scalar.ph533 ], [ %indvars.iv.i222.ph, %scalar.ph533.preheader ] ; 2 uses
  %.07.i223 = phi i32 [ %i.gt, %scalar.ph533 ], [ %.07.i223.ph, %scalar.ph533.preheader ]
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %indvars.iv.i222
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47
  %i.gt = call noundef i32 @llvm.smax.i32(i32 %.07.i223, i32 %i.gs) ; 2 uses
  %indvars.iv.next.i224 = add nsw i64 %indvars.iv.i222, 1 ; 2 uses
  %i.gu = icmp slt i64 %indvars.iv.next.i224, %i.gh
  br i1 %i.gu, label %scalar.ph533, label %._crit_edge.loopexit.i225, !llvm.loop !163

._crit_edge.loopexit.i225:                        ; preds = %scalar.ph533, %middle.block544
  %.lcssa499 = phi i32 [ %i.gq, %middle.block544 ], [ %i.gt, %scalar.ph533 ]
  %i.gv = sitofp i32 %.lcssa499 to float
  %i.gw = fpext float %i.gv to double
  br label %_ZN6Rewire5Miaig10countLevelEiii.exit226

_ZN6Rewire5Miaig10countLevelEiii.exit226:         ; preds = %_ZN6Rewire5Miaig9countAnd2Eiii.exit, %._crit_edge.loopexit.i225
  %.0.lcssa.i220 = phi double [ -1.000000e+00, %_ZN6Rewire5Miaig9countAnd2Eiii.exit ], [ %i.gw, %._crit_edge.loopexit.i225 ]
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %i.di, double noundef %.0.lcssa.i214, double noundef %.0.lcssa.i220) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN6Rewire5Miaig10countLevelEiii.exit226, %bb.l
  %.not176 = icmp eq i32 %2, 0
  %narrow392 = icmp sgt i32 %2, -1
  br i1 %narrow392, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.gy = inttoptr i64 %.fca.0.extract to ptr     ; 3 uses
  %.not177 = icmp eq i32 %8, 0
  %i.gz = sitofp i32 %8 to double
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.hc = icmp sgt i32 %16, 1
  %i.hd = zext i1 %i.hc to i32                    ; 3 uses
  %48 = getelementptr inbounds i8, ptr %27, i64 %.fca.1.extract ; 2 uses
  %i.he = sitofp i32 %i.cs to float               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.hl = icmp eq i32 %6, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %33, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN6Rewire5MiaigaSERKS0_.exit341
  %.0396 = phi i32 [ 0, %.lr.ph ], [ %i.agt, %_ZN6Rewire5MiaigaSERKS0_.exit341 ] ; 5 uses
  %.0154395 = phi i32 [ 0, %.lr.ph ], [ %.1370, %_ZN6Rewire5MiaigaSERKS0_.exit341 ] ; 6 uses
  %.0159394 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN6Rewire5MiaigaSERKS0_.exit341 ]
  %.0161393 = phi float [ %i.df, %.lr.ph ], [ %.1162365, %_ZN6Rewire5MiaigaSERKS0_.exit341 ] ; 11 uses
  br i1 %i.dg, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.hp = add nuw nsw i32 %.0396, 1
  %i.hq = load ptr, ptr %i.p, align 8, !tbaa !102
  %i.hr = load ptr, ptr %24, align 8, !tbaa !98
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 4
  br i1 %.not175, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = load ptr, ptr %47, align 8, !tbaa !199
  %i.hx = getelementptr i8, ptr %i.hw, i64 %.fca.0.extract
  %i.hy = getelementptr i8, ptr %i.hx, i64 -1
  %i.hz = load ptr, ptr %i.hy, align 8, !nosanitize !200
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ia = phi ptr [ %i.hz, %bb.q ], [ %i.gy, %bb.p ]
  %i.ib = call noundef float %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 0, i32 noundef %10, i32 noundef %12) #37
  %i.ic = fpext float %i.ib to double
  %i.id = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !106 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 20
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !104
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !103
  %i.ik = sub nsw i32 %i.ih, %i.ij                ; 2 uses
  %.056.i227 = add nsw i32 %i.if, 1
  %i.il = icmp slt i32 %.056.i227, %i.ik
  br i1 %i.il, label %.lr.ph.i229, label %_ZN6Rewire5Miaig9countAnd2Eiii.exit235

.lr.ph.i229:                                      ; preds = %bb.r
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 176
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !107 ; 9 uses
  %i.io = sext i32 %i.if to i64                   ; 3 uses
  %i.ip = add nsw i64 %i.io, 1                    ; 3 uses
  %i.iq = sext i32 %i.ik to i64                   ; 2 uses
  %i.ir = add nsw i64 %i.io, 2
  %i.is = call i64 @llvm.smax.i64(i64 %i.iq, i64 %i.ir)
  %i.it = xor i64 %i.io, -1
  %i.iu = add i64 %i.is, %i.it                    ; 3 uses
  %min.iters.check679 = icmp ult i64 %i.iu, 9
  br i1 %min.iters.check679, label %scalar.ph678.preheader, label %vector.ph680

vector.ph680:                                     ; preds = %.lr.ph.i229
  %i.iv = and i64 %i.iu, 7                        ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 0
  %i.ix = select i1 %i.iw, i64 8, i64 %i.iv
  %n.vec681 = sub i64 %i.iu, %i.ix                ; 2 uses
  %i.iy = add i64 %i.ip, %n.vec681
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next686, %vector.body682 ] ; 2 uses
  %vec.phi684 = phi <4 x i32> [ zeroinitializer, %vector.ph680 ], [ %i.kh, %vector.body682 ]
  %vec.phi685 = phi <4 x i32> [ zeroinitializer, %vector.ph680 ], [ %i.ki, %vector.body682 ]
  %i.iz = add i64 %i.ip, %index683                ; 8 uses
  %i.ja = getelementptr inbounds [16 x i8], ptr %i.in, i64 %i.iz
  %i.jb = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %i.jd = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.je = getelementptr i8, ptr %i.jd, i64 32
  %i.jf = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.jg = getelementptr i8, ptr %i.jf, i64 48
  %i.jh = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.ji = getelementptr i8, ptr %i.jh, i64 64
  %i.jj = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.jk = getelementptr i8, ptr %i.jj, i64 80
  %i.jl = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.jm = getelementptr i8, ptr %i.jl, i64 96
  %i.jn = getelementptr [16 x i8], ptr %i.in, i64 %i.iz
  %i.jo = getelementptr i8, ptr %i.jn, i64 112
  %i.jp = load i32, ptr %i.ja, align 8, !tbaa !55
  %i.jq = load i32, ptr %i.jc, align 8, !tbaa !55
  %i.jr = load i32, ptr %i.je, align 8, !tbaa !55
  %i.js = load i32, ptr %i.jg, align 8, !tbaa !55
  %i.jt = insertelement <4 x i32> poison, i32 %i.jp, i64 0
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jq, i64 1
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jr, i64 2
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 3
  %i.jx = load i32, ptr %i.ji, align 8, !tbaa !55
  %i.jy = load i32, ptr %i.jk, align 8, !tbaa !55
  %i.jz = load i32, ptr %i.jm, align 8, !tbaa !55
  %i.ka = load i32, ptr %i.jo, align 8, !tbaa !55
  %i.kb = insertelement <4 x i32> poison, i32 %i.jx, i64 0
  %i.kc = insertelement <4 x i32> %i.kb, i32 %i.jy, i64 1
  %i.kd = insertelement <4 x i32> %i.kc, i32 %i.jz, i64 2
  %i.ke = insertelement <4 x i32> %i.kd, i32 %i.ka, i64 3
  %i.kf = add <4 x i32> %vec.phi684, splat (i32 -1)
  %i.kg = add <4 x i32> %vec.phi685, splat (i32 -1)
  %i.kh = add <4 x i32> %i.kf, %i.jw              ; 2 uses
  %i.ki = add <4 x i32> %i.kg, %i.ke              ; 2 uses
  %index.next686 = add nuw i64 %index683, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next686, %n.vec681
  br i1 %i.kj, label %middle.block687, label %vector.body682, !llvm.loop !164

middle.block687:                                  ; preds = %vector.body682
  %bin.rdx688 = add <4 x i32> %i.ki, %i.kh
  %i.kk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx688)
  br label %scalar.ph678.preheader

scalar.ph678.preheader:                           ; preds = %.lr.ph.i229, %middle.block687
  %indvars.iv.i230.ph = phi i64 [ %i.ip, %.lr.ph.i229 ], [ %i.iy, %middle.block687 ]
  %.07.i231.ph = phi i32 [ 0, %.lr.ph.i229 ], [ %i.kk, %middle.block687 ]
  br label %scalar.ph678

scalar.ph678:                                     ; preds = %scalar.ph678.preheader, %scalar.ph678
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %scalar.ph678 ], [ %indvars.iv.i230.ph, %scalar.ph678.preheader ] ; 2 uses
  %.07.i231 = phi i32 [ %i.kn, %scalar.ph678 ], [ %.07.i231.ph, %scalar.ph678.preheader ]
  %i.kl = getelementptr inbounds [16 x i8], ptr %i.in, i64 %indvars.iv.i230
  %.val.i.i232 = load i32, ptr %i.kl, align 8, !tbaa !55
  %i.km = add i32 %.07.i231, -1
  %i.kn = add i32 %i.km, %.val.i.i232             ; 2 uses
  %indvars.iv.next.i233 = add nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %i.ko = icmp slt i64 %indvars.iv.next.i233, %i.iq
  br i1 %i.ko, label %scalar.ph678, label %._crit_edge.loopexit.i234, !llvm.loop !165

._crit_edge.loopexit.i234:                        ; preds = %scalar.ph678
  %i.kp = sitofp i32 %i.kn to float
  %i.kq = fpext float %i.kp to double
  br label %_ZN6Rewire5Miaig9countAnd2Eiii.exit235

_ZN6Rewire5Miaig9countAnd2Eiii.exit235:           ; preds = %bb.r, %._crit_edge.loopexit.i234
  %.0.lcssa.i228 = phi double [ 0.000000e+00, %bb.r ], [ %i.kq, %._crit_edge.loopexit.i234 ]
  call void @_ZN6Rewire5Miaig16initializeLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %28)
  %i.kr = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !103 ; 2 uses
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %.lr.ph.i237, label %_ZN6Rewire5Miaig10countLevelEiii.exit242

.lr.ph.i237:                                      ; preds = %_ZN6Rewire5Miaig9countAnd2Eiii.exit235
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 20
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !104 ; 2 uses
  %i.kx = sub i32 %i.kw, %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !105 ; 2 uses
  %i.la = sext i32 %i.kx to i64                   ; 5 uses
  %i.lb = sext i32 %i.kw to i64                   ; 2 uses
  %i.lc = add nsw i64 %i.la, 1
  %i.ld = call i64 @llvm.smax.i64(i64 %i.lc, i64 %i.lb)
  %i.le = sub i64 %i.ld, %i.la                    ; 3 uses
  %min.iters.check663 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check663, label %scalar.ph662.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %.lr.ph.i237
  %n.vec665 = and i64 %i.le, -8                   ; 3 uses
  %i.lf = add i64 %n.vec665, %i.la
  %invariant.gep775 = getelementptr [4 x i8], ptr %i.kz, i64 %i.la
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next672, %vector.body666 ] ; 2 uses
  %vec.phi668 = phi <4 x i32> [ splat (i32 -1), %vector.ph664 ], [ %i.lh, %vector.body666 ]
  %vec.phi669 = phi <4 x i32> [ splat (i32 -1), %vector.ph664 ], [ %i.li, %vector.body666 ]
  %gep776 = getelementptr [4 x i8], ptr %invariant.gep775, i64 %index667 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %gep776, i64 16
  %wide.load670 = load <4 x i32>, ptr %gep776, align 4, !tbaa !47
  %wide.load671 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !47
  %i.lh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi668, <4 x i32> %wide.load670) ; 2 uses
  %i.li = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi669, <4 x i32> %wide.load671) ; 2 uses
  %index.next672 = add nuw i64 %index667, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next672, %n.vec665
  br i1 %i.lj, label %middle.block673, label %vector.body666, !llvm.loop !166

middle.block673:                                  ; preds = %vector.body666
  %rdx.minmax674 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lh, <4 x i32> %i.li)
  %i.lk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax674) ; 2 uses
  %cmp.n675 = icmp eq i64 %i.le, %n.vec665
  br i1 %cmp.n675, label %._crit_edge.loopexit.i241, label %scalar.ph662.preheader

scalar.ph662.preheader:                           ; preds = %.lr.ph.i237, %middle.block673
  %indvars.iv.i238.ph = phi i64 [ %i.la, %.lr.ph.i237 ], [ %i.lf, %middle.block673 ]
  %.07.i239.ph = phi i32 [ -1, %.lr.ph.i237 ], [ %i.lk, %middle.block673 ]
  br label %scalar.ph662

scalar.ph662:                                     ; preds = %scalar.ph662.preheader, %scalar.ph662
  %indvars.iv.i238 = phi i64 [ %indvars.iv.next.i240, %scalar.ph662 ], [ %indvars.iv.i238.ph, %scalar.ph662.preheader ] ; 2 uses
  %.07.i239 = phi i32 [ %i.ln, %scalar.ph662 ], [ %.07.i239.ph, %scalar.ph662.preheader ]
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %indvars.iv.i238
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !47
  %i.ln = call noundef i32 @llvm.smax.i32(i32 %.07.i239, i32 %i.lm) ; 2 uses
  %indvars.iv.next.i240 = add nsw i64 %indvars.iv.i238, 1 ; 2 uses
  %i.lo = icmp slt i64 %indvars.iv.next.i240, %i.lb
  br i1 %i.lo, label %scalar.ph662, label %._crit_edge.loopexit.i241, !llvm.loop !167

._crit_edge.loopexit.i241:                        ; preds = %scalar.ph662, %middle.block673
  %.lcssa490 = phi i32 [ %i.lk, %middle.block673 ], [ %i.ln, %scalar.ph662 ]
  %i.lp = sitofp i32 %.lcssa490 to float
  %i.lq = fpext float %i.lp to double
  br label %_ZN6Rewire5Miaig10countLevelEiii.exit242

_ZN6Rewire5Miaig10countLevelEiii.exit242:         ; preds = %_ZN6Rewire5Miaig9countAnd2Eiii.exit235, %._crit_edge.loopexit.i241
  %.0.lcssa.i236 = phi double [ -1.000000e+00, %_ZN6Rewire5Miaig9countAnd2Eiii.exit235 ], [ %i.lq, %._crit_edge.loopexit.i241 ]
  %i.lr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.hp, i64 noundef %i.hv, double noundef %i.ic, double noundef %.0.lcssa.i228, double noundef %.0.lcssa.i236) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN6Rewire5Miaig10countLevelEiii.exit242, %bb.o
  br i1 %.not177, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.ls = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %20) #37
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %_ZL10Time_Clockv.exit244, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.lu = load i64, ptr %20, align 8, !tbaa !196
  %i.lv = mul nsw i64 %i.lu, 1000000
  %i.lw = load i64, ptr %i.ha, align 8, !tbaa !197
  %i.lx = sdiv i64 %i.lw, 1000
  %i.ly = add nsw i64 %i.lx, %i.lv
  br label %_ZL10Time_Clockv.exit244

_ZL10Time_Clockv.exit244:                         ; preds = %bb.t, %bb.u
  %.0.i243 = phi i64 [ %i.ly, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.lz = sub nsw i64 %.0.i243, %.0.i
  %i.ma = sitofp i64 %i.lz to double
  %i.mb = fdiv double %i.ma, 1.000000e+06
  %i.mc = fcmp ogt double %i.mb, %i.gz
  %i.md = fcmp oeq float %.0161393, 0.000000e+00
  %or.cond3 = select i1 %i.mc, i1 true, i1 %i.md
  br i1 %or.cond3, label %._crit_edge.loopexit, label %bb.w

bb.v:                                             ; preds = %bb.s
  %.old2 = fcmp oeq float %.0161393, 0.000000e+00
  br i1 %.old2, label %._crit_edge.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZL10Time_Clockv.exit244, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  br i1 %.not174, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN6Rewire5Miaig9dupExtendEii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef %7, i32 noundef %5)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @_ZN6Rewire5Miaig8dupMultiEii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef %7, i32 noundef %5)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.me = load ptr, ptr %30, align 16, !tbaa !101 ; 3 uses
  %.not.i = icmp eq ptr %i.me, null
  br i1 %.not.i, label %_ZN6Rewire5MiaigaSERKS0_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !47
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigaSERKS0_.exit

_ZN6Rewire5MiaigaSERKS0_.exit:                    ; preds = %bb.z, %bb.aa
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.mh = load <2 x ptr>, ptr %30, align 16, !tbaa !100
  store <2 x ptr> %i.mh, ptr %27, align 16, !tbaa !100
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.mi = and i32 %.0396, 1
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  call void @_ZN6Rewire5Miaig16expandThenReduceEiiiPmiii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef %5, i32 noundef %11, i32 poison, ptr noundef %i.cx, i32 noundef %13, i32 noundef %14, i32 noundef %i.hd)
  %i.mk = load ptr, ptr %31, align 16, !tbaa !101 ; 3 uses
  %.not.i245 = icmp eq ptr %i.mk, null
  br i1 %.not.i245, label %_ZN6Rewire5MiaigaSERKS0_.exit246, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !47
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigaSERKS0_.exit246

_ZN6Rewire5MiaigaSERKS0_.exit246:                 ; preds = %bb.ab, %bb.ac
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.mn = load <2 x ptr>, ptr %31, align 16, !tbaa !100
  store <2 x ptr> %i.mn, ptr %27, align 16, !tbaa !100
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit246, %_ZN6Rewire5MiaigaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  call void @_ZN6Rewire5Miaig17expandShareReduceEiiiiPmiii(ptr dead_on_unwind nonnull writable sret(%"class.Rewire::Miaig") align 8 %32, ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef %4, i32 noundef %6, i32 noundef %11, i32 poison, ptr noundef %i.cx, i32 noundef %13, i32 noundef %14, i32 noundef %i.hd)
  %i.mo = load ptr, ptr %32, align 16, !tbaa !101 ; 3 uses
  %.not.i247 = icmp eq ptr %i.mo, null
  br i1 %.not.i247, label %_ZN6Rewire5MiaigaSERKS0_.exit248, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !47
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !47
  br label %_ZN6Rewire5MiaigaSERKS0_.exit248

_ZN6Rewire5MiaigaSERKS0_.exit248:                 ; preds = %bb.ad, %bb.ae
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.mr = load <2 x ptr>, ptr %32, align 16, !tbaa !100
  store <2 x ptr> %i.mr, ptr %27, align 16, !tbaa !100
  call void @_ZN6Rewire5Miaig7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.ms = add nsw i32 %.0159394, 1                ; 4 uses
  br i1 %.not175, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit248
  %i.mt = load ptr, ptr %47, align 8, !tbaa !199
  %i.mu = getelementptr i8, ptr %i.mt, i64 %.fca.0.extract
  %i.mv = getelementptr i8, ptr %i.mu, i64 -1
  %i.mw = load ptr, ptr %i.mv, align 8, !nosanitize !200
  %i.mx = call noundef float %i.mw(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 0, i32 noundef %10, i32 noundef %12) #37
  %i.my = load ptr, ptr %48, align 8, !tbaa !199
  %i.mz = getelementptr i8, ptr %i.my, i64 %.fca.0.extract
  %i.na = getelementptr i8, ptr %i.mz, i64 -1
  %i.nb = load ptr, ptr %i.na, align 8, !nosanitize !200
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN6Rewire5MiaigaSERKS0_.exit248
  %i.nc = call noundef float %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 0, i32 noundef %10, i32 noundef %12) #37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.nd = phi float [ %i.mx, %bb.af ], [ %i.nc, %bb.ag ] ; 3 uses
  %i.ne = phi ptr [ %i.nb, %bb.af ], [ %i.gy, %bb.ag ]
  %i.nf = call noundef float %i.ne(ptr noundef nonnull align 8 dereferenceable(16) %48, i32 noundef 1, i32 noundef %10, i32 noundef %12) #37 ; 8 uses
  br i1 %i.cr, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6Rewire5Miaig16initializeLevelsEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.ng = load ptr, ptr %i.hb, align 8, !tbaa !78 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !103 ; 2 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph.i250, label %_ZN6Rewire5Miaig10countLevelEiii.exit255

.lr.ph.i250:                                      ; preds = %bb.ai
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !104 ; 2 uses
  %i.nm = sub i32 %i.nl, %i.ni
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !105 ; 2 uses
  %i.np = sext i32 %i.nm to i64                   ; 5 uses
  %i.nq = sext i32 %i.nl to i64                   ; 2 uses
  %i.nr = add nsw i64 %i.np, 1
  %i.ns = call i64 @llvm.smax.i64(i64 %i.nr, i64 %i.nq)
  %i.nt = sub i64 %i.ns, %i.np                    ; 3 uses
  %min.iters.check647 = icmp ult i64 %i.nt, 8
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %.lr.ph.i250
  %n.vec649 = and i64 %i.nt, -8                   ; 3 uses
  %i.nu = add i64 %n.vec649, %i.np
  %invariant.gep777 = getelementptr [4 x i8], ptr %i.no, i64 %i.np
  br label %vector.body650

vector.body650:                                   ; preds = %vector.body650, %vector.ph648
  %index651 = phi i64 [ 0, %vector.ph648 ], [ %index.next656, %vector.body650 ] ; 2 uses
  %vec.phi652 = phi <4 x i32> [ splat (i32 -1), %vector.ph648 ], [ %i.nw, %vector.body650 ]
  %vec.phi653 = phi <4 x i32> [ splat (i32 -1), %vector.ph648 ], [ %i.nx, %vector.body650 ]
  %gep778 = getelementptr [4 x i8], ptr %invariant.gep777, i64 %index651 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %gep778, i64 16
  %wide.load654 = load <4 x i32>, ptr %gep778, align 4, !tbaa !47
  %wide.load655 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !47
  %i.nw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi652, <4 x i32> %wide.load654) ; 2 uses
  %i.nx = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi653, <4 x i32> %wide.load655) ; 2 uses
  %index.next656 = add nuw i64 %index651, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next656, %n.vec649
  br i1 %i.ny, label %middle.block657, label %vector.body650, !llvm.loop !168

middle.block657:                                  ; preds = %vector.body650
  %rdx.minmax658 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nw, <4 x i32> %i.nx)
  %i.nz = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax658) ; 2 uses
  %cmp.n659 = icmp eq i64 %i.nt, %n.vec649
  br i1 %cmp.n659, label %._crit_edge.loopexit.i254, label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %.lr.ph.i250, %middle.block657
  %indvars.iv.i251.ph = phi i64 [ %i.np, %.lr.ph.i250 ], [ %i.nu, %middle.block657 ]
  %.07.i252.ph = phi i32 [ -1, %.lr.ph.i250 ], [ %i.nz, %middle.block657 ]
  br label %scalar.ph646

scalar.ph646:                                     ; preds = %scalar.ph646.preheader, %scalar.ph646
  %indvars.iv.i251 = phi i64 [ %indvars.iv.next.i253, %scalar.ph646 ], [ %indvars.iv.i251.ph, %scalar.ph646.preheader ] ; 2 uses
  %.07.i252 = phi i32 [ %i.oc, %scalar.ph646 ], [ %.07.i252.ph, %scalar.ph646.preheader ]
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.no, i64 %indvars.iv.i251
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !47
  %i.oc = call noundef i32 @llvm.smax.i32(i32 %.07.i252, i32 %i.ob) ; 2 uses
  %indvars.iv.next.i253 = add nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %i.od = icmp slt i64 %indvars.iv.next.i253, %i.nq
  br i1 %i.od, label %scalar.ph646, label %._crit_edge.loopexit.i254, !llvm.loop !169

._crit_edge.loopexit.i254:                        ; preds = %scalar.ph646, %middle.block657
  %.lcssa491 = phi i32 [ %i.nz, %middle.block657 ], [ %i.oc, %scalar.ph646 ]
  %i.oe = sitofp i32 %.lcssa491 to float
  br label %_ZN6Rewire5Miaig10countLevelEiii.exit255

_ZN6Rewire5Miaig10countLevelEiii.exit255:         ; preds = %bb.ai, %._crit_edge.loopexit.i254
  %.0.lcssa.i249 = phi float [ -1.000000e+00, %bb.ai ], [ %i.oe, %._crit_edge.loopexit.i254 ]
  %i.of = fcmp ogt float %.0.lcssa.i249, %i.he
  %i.og = fcmp ult float %.0161393, %i.nf
  %or.cond183 = select i1 %i.of, i1 true, i1 %i.og
  br i1 %or.cond183, label %.thread361, label %bb.aj

.critedge:                                        ; preds = %bb.ah
  %.old = fcmp ult float %.0161393, %i.nf
  br i1 %.old, label %.critedge189, label %bb.aj

bb.aj:                                            ; preds = %_ZN6Rewire5Miaig10countLevelEiii.exit255, %.critedge
  %i.oh = fcmp ogt float %.0161393, %i.nf
  br i1 %i.oh, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not174, label %.critedge187, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.oi = load ptr, ptr %i.hb, align 8, !tbaa !78 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !106 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !104
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !103
  %i.op = sub nsw i32 %i.om, %i.oo                ; 3 uses
  %.056.i256 = add nsw i32 %i.ok, 1
  %i.oq = icmp slt i32 %.056.i256, %i.op          ; 2 uses
  br i1 %i.oq, label %.lr.ph.i258, label %_ZN6Rewire5Miaig9countAnd2Eiii.exit264

.lr.ph.i258:                                      ; preds = %bb.al
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 176
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !107 ; 9 uses
  %i.ot = sext i32 %i.ok to i64                   ; 3 uses
  %i.ou = add nsw i64 %i.ot, 1                    ; 3 uses
  %i.ov = sext i32 %i.op to i64                   ; 2 uses
  %i.ow = add nsw i64 %i.ot, 2
  %i.ox = call i64 @llvm.smax.i64(i64 %i.ov, i64 %i.ow)
  %i.oy = xor i64 %i.ot, -1
  %i.oz = add i64 %i.ox, %i.oy                    ; 3 uses
  %min.iters.check634 = icmp ult i64 %i.oz, 9
  br i1 %min.iters.check634, label %scalar.ph633.preheader, label %vector.ph635

vector.ph635:                                     ; preds = %.lr.ph.i258
  %i.pa = and i64 %i.oz, 7                        ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 0
  %i.pc = select i1 %i.pb, i64 8, i64 %i.pa
  %n.vec636 = sub i64 %i.oz, %i.pc                ; 2 uses
  %i.pd = add i64 %i.ou, %n.vec636
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph635
  %index638 = phi i64 [ 0, %vector.ph635 ], [ %index.next641, %vector.body637 ] ; 2 uses
  %vec.phi639 = phi <4 x i32> [ zeroinitializer, %vector.ph635 ], [ %i.qm, %vector.body637 ]
  %vec.phi640 = phi <4 x i32> [ zeroinitializer, %vector.ph635 ], [ %i.qn, %vector.body637 ]
  %i.pe = add i64 %i.ou, %index638                ; 8 uses
  %i.pf = getelementptr inbounds [16 x i8], ptr %i.os, i64 %i.pe
  %i.pg = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.ph = getelementptr i8, ptr %i.pg, i64 16
  %i.pi = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pj = getelementptr i8, ptr %i.pi, i64 32
  %i.pk = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pl = getelementptr i8, ptr %i.pk, i64 48
  %i.pm = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pn = getelementptr i8, ptr %i.pm, i64 64
  %i.po = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pp = getelementptr i8, ptr %i.po, i64 80
  %i.pq = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pr = getelementptr i8, ptr %i.pq, i64 96
  %i.ps = getelementptr [16 x i8], ptr %i.os, i64 %i.pe
  %i.pt = getelementptr i8, ptr %i.ps, i64 112
  %i.pu = load i32, ptr %i.pf, align 8, !tbaa !55
  %i.pv = load i32, ptr %i.ph, align 8, !tbaa !55
  %i.pw = load i32, ptr %i.pj, align 8, !tbaa !55
  %i.px = load i32, ptr %i.pl, align 8, !tbaa !55
  %i.py = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %i.pz = insertelement <4 x i32> %i.py, i32 %i.pv, i64 1
  %i.qa = insertelement <4 x i32> %i.pz, i32 %i.pw, i64 2
  %i.qb = insertelement <4 x i32> %i.qa, i32 %i.px, i64 3
  %i.qc = load i32, ptr %i.pn, align 8, !tbaa !55
  %i.qd = load i32, ptr %i.pp, align 8, !tbaa !55
  %i.qe = load i32, ptr %i.pr, align 8, !tbaa !55
  %i.qf = load i32, ptr %i.pt, align 8, !tbaa !55
  %i.qg = insertelement <4 x i32> poison, i32 %i.qc, i64 0
  %i.qh = insertelement <4 x i32> %i.qg, i32 %i.qd, i64 1
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qe, i64 2
  %i.qj = insertelement <4 x i32> %i.qi, i32 %i.qf, i64 3
  %i.qk = add <4 x i32> %vec.phi639, splat (i32 -1)
  %i.ql = add <4 x i32> %vec.phi640, splat (i32 -1)
  %i.qm = add <4 x i32> %i.qk, %i.qb              ; 2 uses
  %i.qn = add <4 x i32> %i.ql, %i.qj              ; 2 uses
  %index.next641 = add nuw i64 %index638, 8       ; 2 uses
  %i.qo = icmp eq i64 %index.next641, %n.vec636
  br i1 %i.qo, label %middle.block642, label %vector.body637, !llvm.loop !170

middle.block642:                                  ; preds = %vector.body637
  %bin.rdx643 = add <4 x i32> %i.qn, %i.qm
  %i.qp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx643)
  br label %scalar.ph633.preheader

scalar.ph633.preheader:                           ; preds = %.lr.ph.i258, %middle.block642
  %indvars.iv.i259.ph = phi i64 [ %i.ou, %.lr.ph.i258 ], [ %i.pd, %middle.block642 ]
  %.07.i260.ph = phi i32 [ 0, %.lr.ph.i258 ], [ %i.qp, %middle.block642 ]
  br label %scalar.ph633

scalar.ph633:                                     ; preds = %scalar.ph633.preheader, %scalar.ph633
  %indvars.iv.i259 = phi i64 [ %indvars.iv.next.i262, %scalar.ph633 ], [ %indvars.iv.i259.ph, %scalar.ph633.preheader ] ; 2 uses
  %.07.i260 = phi i32 [ %i.qs, %scalar.ph633 ], [ %.07.i260.ph, %scalar.ph633.preheader ]
  %i.qq = getelementptr inbounds [16 x i8], ptr %i.os, i64 %indvars.iv.i259
  %.val.i.i261 = load i32, ptr %i.qq, align 8, !tbaa !55
  %i.qr = add i32 %.07.i260, -1
  %i.qs = add i32 %i.qr, %.val.i.i261             ; 2 uses
  %indvars.iv.next.i262 = add nsw i64 %indvars.iv.i259, 1 ; 2 uses
  %i.qt = icmp slt i64 %indvars.iv.next.i262, %i.ov
  br i1 %i.qt, label %scalar.ph633, label %._crit_edge.loopexit.i263, !llvm.loop !171

._crit_edge.loopexit.i263:                        ; preds = %scalar.ph633
  %i.qu = sitofp i32 %i.qs to float
  br label %_ZN6Rewire5Miaig9countAnd2Eiii.exit264

_ZN6Rewire5Miaig9countAnd2Eiii.exit264:           ; preds = %bb.al, %._crit_edge.loopexit.i263
  %.0.lcssa.i257 = phi float [ 0.000000e+00, %bb.al ], [ %i.qu, %._crit_edge.loopexit.i263 ]
  %i.qv = load ptr, ptr %i.hf, align 8, !tbaa !78 ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !106 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 20
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !104
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !103
end_hunk_0
