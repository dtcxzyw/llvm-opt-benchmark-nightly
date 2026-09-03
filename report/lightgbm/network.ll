Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/network?download=true
inline.NumInlined: 860
inline.NumDeleted: 422
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i:bb.a
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ck, %i.cj
  %i.cm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx40 = add <4 x i32> %i.cg, %i.cf
  %i.cn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx40)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i24, %.lr.ph.i24.1, %.lr.ph.i24.3, %.lr.ph.i24.6, %middle.block, %bb.j
  %.038.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cn, %middle.block ], [ %i.da, %.lr.ph.i24 ], [ %i.dd, %.lr.ph.i24.1 ], [ %i.dx, %.lr.ph.i24.6 ], [ %i.dl, %.lr.ph.i24.3 ]
  %.037.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cm, %middle.block ], [ %i.db, %.lr.ph.i24 ], [ %i.df, %.lr.ph.i24.1 ], [ %i.dz, %.lr.ph.i24.6 ], [ %i.dn, %.lr.ph.i24.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.cp = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !79
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %i.cv
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.co, i32 noundef %.040.i, ptr noundef %i.cs, i32 noundef %.038.lcssa.i, i32 noundef %.040.i, ptr noundef %i.cw, i32 noundef %.037.lcssa.i)
  %i.cx = add nuw nsw i32 %.04146.i, 1            ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.cy = load i32, ptr %i.bs, align 8, !tbaa !80
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.j, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit, !llvm.loop !5

.lr.ph.i24:                                       ; preds = %.lr.ph.preheader.i
  %i.da = load i32, ptr %invariant.gep.i, align 4, !tbaa !79 ; 2 uses
  %i.db = load i32, ptr %invariant.gep56.i, align 4, !tbaa !79 ; 2 uses
  %exitcond.not.i = icmp slt i32 %i.bw, 2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i24.1

.lr.ph.i24.1:                                     ; preds = %.lr.ph.i24
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 4
  %i.dc = load i32, ptr %gep.i.1, align 4, !tbaa !79
  %i.dd = add nsw i32 %i.dc, %i.da                ; 2 uses
  %gep57.i.1 = getelementptr i8, ptr %invariant.gep56.i, i64 4
  %i.de = load i32, ptr %gep57.i.1, align 4, !tbaa !79
  %i.df = add nsw i32 %i.de, %i.db                ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %.04146.i, 1
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i24.3

.lr.ph.i24.3:                                     ; preds = %.lr.ph.i24.1
  %gep57.i.2 = getelementptr i8, ptr %invariant.gep56.i, i64 8
  %i.dg = load i32, ptr %gep57.i.2, align 4, !tbaa !79
  %i.dh = add nsw i32 %i.dg, %i.df
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 8
  %i.di = load i32, ptr %gep.i.2, align 4, !tbaa !79
  %i.dj = add nsw i32 %i.di, %i.dd
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 12
  %i.dk = load i32, ptr %gep.i.3, align 4, !tbaa !79
  %i.dl = add nsw i32 %i.dk, %i.dj                ; 2 uses
  %gep57.i.3 = getelementptr i8, ptr %invariant.gep56.i, i64 12
  %i.dm = load i32, ptr %gep57.i.3, align 4, !tbaa !79
  %i.dn = add nsw i32 %i.dm, %i.dh                ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %.04146.i, 2
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i24.6

.lr.ph.i24.6:                                     ; preds = %.lr.ph.i24.3
  %gep57.i.5 = getelementptr i8, ptr %invariant.gep56.i, i64 20
  %i.do = load i32, ptr %gep57.i.5, align 4, !tbaa !79
  %gep57.i.4 = getelementptr i8, ptr %invariant.gep56.i, i64 16
  %i.dp = load i32, ptr %gep57.i.4, align 4, !tbaa !79
  %i.dq = add nsw i32 %i.dp, %i.dn
  %i.dr = add nsw i32 %i.do, %i.dq
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 20
  %i.ds = load i32, ptr %gep.i.5, align 4, !tbaa !79
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 16
  %i.dt = load i32, ptr %gep.i.4, align 4, !tbaa !79
  %i.du = add nsw i32 %i.dt, %i.dl
  %i.dv = add nsw i32 %i.ds, %i.du
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 24
  %i.dw = load i32, ptr %gep.i.6, align 4, !tbaa !79
  %i.dx = add nsw i32 %i.dw, %i.dv
  %gep57.i.6 = getelementptr i8, ptr %invariant.gep56.i, i64 24
  %i.dy = load i32, ptr %gep57.i.6, align 4, !tbaa !79
  %i.dz = add nsw i32 %i.dy, %i.dr
  br label %._crit_edge.i

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN8LightGBM7Network14AllgatherBruckEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit: ; preds = %._crit_edge.i, %bb.g, %bb.i, %bb.f, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network9AllgatherEPciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.d = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network12block_start_E) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  store i32 0, ptr %i.e, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10block_len_E) ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  store i32 %1, ptr %i.g, align 4, !tbaa !79
  %i.h = load i32, ptr %i.a, align 4, !tbaa !79
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !22
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.l = load i32, ptr %i.a, align 4, !tbaa !79
  %i.m = mul nsw i32 %i.l, %1
  tail call void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %2, i32 noundef %i.m)
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 4 uses
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.n = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79
  %i.u = add nsw i32 %i.t, %i.q
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.u, ptr %i.w, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %1, ptr %i.y, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !79
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !150

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !79   ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79   ; 4 uses
  %i.o = srem i32 %i.l, %i.n
  %i.p = add nsw i32 %i.k, -1
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = srem i32 %i.q, %i.n                      ; 2 uses
  %i.s = icmp sgt i32 %i.n, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i32 [ 1, %.lr.ph ], [ %i.ak, %bb.b ]
  %.02023 = phi i32 [ %i.r, %.lr.ph ], [ %10, %bb.b ] ; 2 uses
  %.02122 = phi i32 [ %i.k, %.lr.ph ], [ %7, %bb.b ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = sext i32 %.02122 to i64                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = sext i32 %.02023 to i64                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !79
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !79
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i32 noundef %i.o, ptr noundef %i.z, i32 noundef %i.ab, i32 noundef %i.r, ptr noundef %i.ag, i32 noundef %i.ai)
  %5 = add nsw i32 %.02122, -1
  %i.aj = load i32, ptr %i.m, align 4, !tbaa !79  ; 5 uses
  %6 = add nsw i32 %5, %i.aj
  %7 = srem i32 %6, %i.aj
  %8 = add nsw i32 %.02023, -1
  %9 = add nsw i32 %8, %i.aj
  %10 = srem i32 %9, %i.aj
  %i.ak = add nuw nsw i32 %.024, 1                ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.aj
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !4
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network26AllgatherRecursiveDoublingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge49:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph48, %._crit_edge
  %.04146 = phi i32 [ 0, %.lr.ph48 ], [ %i.ap, %._crit_edge ] ; 7 uses
  %i.o = shl nuw i32 1, %.04146                   ; 6 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !79   ; 2 uses
  %i.q = sdiv i32 %i.p, %i.o                      ; 3 uses
  %i.r = shl i32 %i.q, %.04146
  %i.s = and i32 %i.q, 1
  %.not = icmp eq i32 %i.s, 0                     ; 2 uses
  %i.t = sub i32 0, %i.o
  %.040.p = select i1 %.not, i32 %i.o, i32 %i.t
  %.040 = add i32 %.040.p, %i.p                   ; 2 uses
  %.pn.v = select i1 %.not, i32 1, i32 -1
  %.pn = add nsw i32 %.pn.v, %i.q
  %.039 = shl i32 %.pn, %.04146
  %.not50 = icmp eq i32 %.04146, 31
  %.pre = sext i32 %i.r to i64                    ; 2 uses
  %.pre53 = sext i32 %.039 to i64                 ; 2 uses
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %.pre ; 8 uses
  %invariant.gep56 = getelementptr [4 x i8], ptr %2, i64 %.pre53 ; 8 uses
  %min.iters.check = icmp slt i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.u = and i32 %i.o, 2147483640
  %n.vec = zext nneg i32 %i.u to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !79
  %wide.load62 = load <4 x i32>, ptr %i.w, align 4, !tbaa !79
  %i.x = add <4 x i32> %wide.load, %vec.phi60     ; 2 uses
  %i.y = add <4 x i32> %wide.load62, %vec.phi61   ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %invariant.gep56, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %wide.load63 = load <4 x i32>, ptr %i.z, align 4, !tbaa !79
  %wide.load64 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !79
  %i.ab = add <4 x i32> %wide.load63, %vec.phi    ; 2 uses
  %i.ac = add <4 x i32> %wide.load64, %vec.phi59  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx65 = add <4 x i32> %i.y, %i.x
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block, %bb.b
  %.038.lcssa = phi i32 [ 0, %bb.b ], [ %i.af, %middle.block ], [ %i.as, %.lr.ph ], [ %i.av, %.lr.ph.1 ], [ %i.bp, %.lr.ph.6 ], [ %i.bd, %.lr.ph.3 ]
  %.037.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %middle.block ], [ %i.at, %.lr.ph ], [ %i.ax, %.lr.ph.1 ], [ %i.br, %.lr.ph.6 ], [ %i.bf, %.lr.ph.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !79
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53
  %i.am = load i32, ptr %i.al, align 4, !tbaa !79
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.ag, i32 noundef %.040, ptr noundef %i.ak, i32 noundef %.038.lcssa, i32 noundef %.040, ptr noundef %i.ao, i32 noundef %.037.lcssa)
  %i.ap = add nuw nsw i32 %.04146, 1              ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !80
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge49, !llvm.loop !5

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.as = load i32, ptr %invariant.gep, align 4, !tbaa !79 ; 2 uses
  %i.at = load i32, ptr %invariant.gep56, align 4, !tbaa !79 ; 2 uses
  %exitcond.not = icmp slt i32 %i.o, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.au = load i32, ptr %gep.1, align 4, !tbaa !79
  %i.av = add nsw i32 %i.au, %i.as                ; 2 uses
  %gep57.1 = getelementptr i8, ptr %invariant.gep56, i64 4
  %i.aw = load i32, ptr %gep57.1, align 4, !tbaa !79
  %i.ax = add nsw i32 %i.aw, %i.at                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %.04146, 1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %gep57.2 = getelementptr i8, ptr %invariant.gep56, i64 8
  %i.ay = load i32, ptr %gep57.2, align 4, !tbaa !79
  %i.az = add nsw i32 %i.ay, %i.ax
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.ba = load i32, ptr %gep.2, align 4, !tbaa !79
  %i.bb = add nsw i32 %i.ba, %i.av
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 12
  %i.bc = load i32, ptr %gep.3, align 4, !tbaa !79
  %i.bd = add nsw i32 %i.bc, %i.bb                ; 2 uses
  %gep57.3 = getelementptr i8, ptr %invariant.gep56, i64 12
  %i.be = load i32, ptr %gep57.3, align 4, !tbaa !79
  %i.bf = add nsw i32 %i.be, %i.az                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %.04146, 2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %gep57.5 = getelementptr i8, ptr %invariant.gep56, i64 20
  %i.bg = load i32, ptr %gep57.5, align 4, !tbaa !79
  %gep57.4 = getelementptr i8, ptr %invariant.gep56, i64 16
  %i.bh = load i32, ptr %gep57.4, align 4, !tbaa !79
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = add nsw i32 %i.bg, %i.bi
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 20
  %i.bk = load i32, ptr %gep.5, align 4, !tbaa !79
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 16
  %i.bl = load i32, ptr %gep.4, align 4, !tbaa !79
  %i.bm = add nsw i32 %i.bl, %i.bd
  %i.bn = add nsw i32 %i.bk, %i.bm
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 24
  %i.bo = load i32, ptr %gep.6, align 4, !tbaa !79
  %i.bp = add nsw i32 %i.bo, %i.bn
  %gep57.6 = getelementptr i8, ptr %invariant.gep56, i64 24
  %i.bq = load i32, ptr %gep57.6, align 4, !tbaa !79
  %i.br = add nsw i32 %i.bq, %i.bj
  br label %._crit_edge
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network14AllgatherBruckEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %0, i64 %i.f, i1 false)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !79
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %bb.a
  %i.n = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge73:                                    ; preds = %._crit_edge, %bb.a
  %i.r = sext i32 %4 to i64
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %3, i64 %i.s ; 2 uses
  %i.t = icmp sgt i32 %4, 1
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt7reverseIPcEvT_S1_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge73, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %._crit_edge73 ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %3, %._crit_edge73 ] ; 3 uses
  %i.u = load i8, ptr %.0913.i.i, align 1, !tbaa !87
  %i.v = load i8, ptr %.014.i.i, align 1, !tbaa !87
  store i8 %i.v, ptr %.0913.i.i, align 1, !tbaa !87
  store i8 %i.u, ptr %.014.i.i, align 1, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.x = icmp ult ptr %i.w, %.0.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt7reverseIPcEvT_S1_.exit, !llvm.loop !152

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %._crit_edge73
  %i.y = load i32, ptr %i.a, align 4, !tbaa !79
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, 1
  br i1 %i.ad, label %.lr.ph.i.i49.preheader, label %_ZSt7reverseIPcEvT_S1_.exit53

.lr.ph.i.i49.preheader:                           ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ae = getelementptr i8, ptr %3, i64 %i.ac
  %.012.i.i47 = getelementptr i8, ptr %i.ae, i64 -1
  br label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.lr.ph.i.i49.preheader, %.lr.ph.i.i49
  %.014.i.i50 = phi ptr [ %.0.i.i52, %.lr.ph.i.i49 ], [ %.012.i.i47, %.lr.ph.i.i49.preheader ] ; 3 uses
  %.0913.i.i51 = phi ptr [ %i.ah, %.lr.ph.i.i49 ], [ %3, %.lr.ph.i.i49.preheader ] ; 3 uses
  %i.af = load i8, ptr %.0913.i.i51, align 1, !tbaa !87
  %i.ag = load i8, ptr %.014.i.i50, align 1, !tbaa !87
  store i8 %i.ag, ptr %.0913.i.i51, align 1, !tbaa !87
  store i8 %i.af, ptr %.014.i.i50, align 1, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913.i.i51, i64 1 ; 2 uses
  %.0.i.i52 = getelementptr inbounds i8, ptr %.014.i.i50, i64 -1 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %.0.i.i52
  br i1 %i.ai, label %.lr.ph.i.i49, label %_ZSt7reverseIPcEvT_S1_.exit53.loopexit, !llvm.loop !152

_ZSt7reverseIPcEvT_S1_.exit53.loopexit:           ; preds = %.lr.ph.i.i49
  %.pre = load i32, ptr %i.a, align 4, !tbaa !79
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert76 = getelementptr inbounds [4 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !79 ; 2 uses
  %.pre78 = sext i32 %.pre77 to i64
  br label %_ZSt7reverseIPcEvT_S1_.exit53

_ZSt7reverseIPcEvT_S1_.exit53:                    ; preds = %_ZSt7reverseIPcEvT_S1_.exit53.loopexit, %_ZSt7reverseIPcEvT_S1_.exit
  %.pre-phi79 = phi i64 [ %.pre78, %_ZSt7reverseIPcEvT_S1_.exit53.loopexit ], [ %i.ac, %_ZSt7reverseIPcEvT_S1_.exit ] ; 2 uses
  %i.aj = phi i32 [ %.pre77, %_ZSt7reverseIPcEvT_S1_.exit53.loopexit ], [ %i.ab, %_ZSt7reverseIPcEvT_S1_.exit ]
  %i.ak = icmp ne i32 %i.aj, %4
  %i.al = icmp sgt i64 %i.s, %.pre-phi79
  %or.cond.i.i55 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i.i55, label %.lr.ph.i.i56.preheader, label %_ZSt7reverseIPcEvT_S1_.exit60

.lr.ph.i.i56.preheader:                           ; preds = %_ZSt7reverseIPcEvT_S1_.exit53
  %i.am = getelementptr inbounds i8, ptr %3, i64 %.pre-phi79
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader, %.lr.ph.i.i56
  %.014.i.i57 = phi ptr [ %.0.i.i59, %.lr.ph.i.i56 ], [ %.012.i.i, %.lr.ph.i.i56.preheader ] ; 3 uses
  %.0913.i.i58 = phi ptr [ %i.ap, %.lr.ph.i.i56 ], [ %i.am, %.lr.ph.i.i56.preheader ] ; 3 uses
  %i.an = load i8, ptr %.0913.i.i58, align 1, !tbaa !87
  %i.ao = load i8, ptr %.014.i.i57, align 1, !tbaa !87
  store i8 %i.ao, ptr %.0913.i.i58, align 1, !tbaa !87
  store i8 %i.an, ptr %.014.i.i57, align 1, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.0913.i.i58, i64 1 ; 2 uses
  %.0.i.i59 = getelementptr inbounds i8, ptr %.014.i.i57, i64 -1 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %.0.i.i59
  br i1 %i.aq, label %.lr.ph.i.i56, label %_ZSt7reverseIPcEvT_S1_.exit60, !llvm.loop !152

_ZSt7reverseIPcEvT_S1_.exit60:                    ; preds = %.lr.ph.i.i56, %_ZSt7reverseIPcEvT_S1_.exit53
  ret void

bb.b:                                             ; preds = %.lr.ph72, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.04469 = phi i32 [ 1, %.lr.ph72 ], [ %i.bi, %._crit_edge ] ; 3 uses
  %.04568 = phi i32 [ %i.j, %.lr.ph72 ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = load i32, ptr %i.n, align 4, !tbaa !79
  %i.au = sub i32 %i.at, %.04469
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.as) ; 3 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !79
  %i.bb = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bb, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.b
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !79  ; 2 uses
  %i.bd = load i32, ptr %i.n, align 4, !tbaa !79  ; 2 uses
  %invariant.op.a = add i32 %.04469, %i.bc
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.042.lcssa = phi i32 [ 0, %bb.b ], [ %i.br, %bb.c ]
  %.041.lcssa = phi i32 [ 0, %bb.b ], [ %i.bw, %bb.c ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.bf = sext i32 %.04568 to i64
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.be, i32 noundef %i.ax, ptr noundef %3, i32 noundef %.042.lcssa, i32 noundef %i.ba, ptr noundef %i.bg, i32 noundef %.041.lcssa)
  %i.bh = add nsw i32 %.041.lcssa, %.04568
  %i.bi = add nsw i32 %.sroa.speculated, %.04469
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !80
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge73, !llvm.loop !153

bb.c:                                             ; preds = %.lr.ph.a, %bb.c
  %.066.a = phi i32 [ 0, %.lr.ph.a ], [ %i.bx, %bb.c ] ; 3 uses
  %.04165 = phi i32 [ 0, %.lr.ph.a ], [ %i.bw, %bb.c ]
  %.04264 = phi i32 [ 0, %.lr.ph.a ], [ %i.br, %bb.c ]
  %i.bm = add nsw i32 %i.bc, %.066.a
  %i.bn = srem i32 %i.bm, %i.bd
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !79
  %i.br = add nsw i32 %i.bq, %.04264              ; 2 uses
  %.reass.a = add i32 %.066.a, %invariant.op.a
  %i.bs = srem i32 %.reass.a, %i.bd
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !79
  %i.bw = add nsw i32 %i.bv, %.04165              ; 2 uses
  %i.bx = add nuw nsw i32 %.066.a, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !154
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.56", align 8 ; 6 uses
  %8 = alloca %"class.std::thread", align 8       ; 8 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #1
  %i.b = icmp slt i32 %3, 100000
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %3, 1
  br i1 %i.c, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = sext i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %.preheader.i
  %.010.i = phi i32 [ 0, %.preheader.i ], [ %i.t, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.i = sext i32 %.010.i to i64
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = sub nsw i32 %3, %.010.i
  %i.l = load i32, ptr %i.h, align 4, !tbaa !120
  %i.m = zext nneg i32 %i.k to i64
  %i.n = tail call i64 @send(i32 noundef %i.l, ptr noundef %i.j, i64 noundef %i.m, i32 noundef 0)
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__errno_location() #32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !79   ; 2 uses
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.s, i32 noundef %i.r)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i:         ; preds = %bb.d, %bb.c
  %i.t = add nsw i32 %.010.i, %i.o                ; 2 uses
  %i.u = icmp slt i32 %i.t, %3
  br i1 %i.u, label %bb.c, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, !llvm.loop !6

_ZNK8LightGBM7Linkers4SendEiPci.exit:             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %bb.b
  %i.v = icmp sgt i32 %6, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit

.lr.ph.i:                                         ; preds = %_ZNK8LightGBM7Linkers4SendEiPci.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = sext i32 %4 to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i, %.lr.ph.i
  %.010.i15 = phi i32 [ 0, %.lr.ph.i ], [ %i.am, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i ] ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  %i.ab = sext i32 %.010.i15 to i64
  %i.ac = getelementptr inbounds i8, ptr %5, i64 %i.ab
  %i.ad = sub nsw i32 %6, %.010.i15
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 100000)
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !120
  %i.af = zext nneg i32 %.sroa.speculated.i to i64
  %i.ag = tail call i64 @recv(i32 noundef %i.ae, ptr noundef %i.ac, i64 noundef %i.af, i32 noundef 0)
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.f, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__errno_location() #32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !79 ; 2 uses
  %i.al = tail call ptr @strerror(i32 noundef %i.ak) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.al, i32 noundef %i.ak)
  br label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i:          ; preds = %bb.f, %bb.e
  %i.am = add nsw i32 %.010.i15, %i.ah            ; 2 uses
  %i.an = icmp slt i32 %i.am, %6
  br i1 %i.an, label %bb.e, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit, !llvm.loop !7

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #1
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %8, align 8, !tbaa !157
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS5_iEUlvE_EEEEEE, i64 16), ptr %i.ao, align 8, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !79
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %2, ptr %.sroa.529.0..sroa_idx, align 8, !tbaa !94
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !79
  store ptr %i.ao, ptr %7, align 8, !tbaa !161
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #1, !inline_history !155
  br label %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.av, null
  br i1 %.not.i5.i, label %common.resume, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #1, !inline_history !155
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %_ZNSt6threadD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6threadD2Ev.exit24 ], [ %i.au, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.au, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit: ; preds = %bb.h, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.az = icmp sgt i32 %6, 0
  br i1 %i.az, label %.lr.ph.i16, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit21

.lr.ph.i16:                                       ; preds = %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bb = sext i32 %4 to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19, %.lr.ph.i16
  %.010.i17 = phi i32 [ 0, %.lr.ph.i16 ], [ %i.bq, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19 ] ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !118
  %i.bf = sext i32 %.010.i17 to i64
  %i.bg = getelementptr inbounds i8, ptr %5, i64 %i.bf
  %i.bh = sub nsw i32 %6, %.010.i17
  %.sroa.speculated.i18 = call i32 @llvm.smin.i32(i32 %i.bh, i32 100000)
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !120
  %i.bj = zext nneg i32 %.sroa.speculated.i18 to i64
  %i.bk = invoke i64 @recv(i32 noundef %i.bi, ptr noundef %i.bg, i64 noundef %i.bj, i32 noundef 0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.j
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19

bb.k:                                             ; preds = %.noexc
  %i.bn = tail call ptr @__errno_location() #32
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !79 ; 2 uses
  %i.bp = call ptr @strerror(i32 noundef %i.bo) #1
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.bp, i32 noundef %i.bo)
          to label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19 unwind label %.loopexit

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19:        ; preds = %bb.k, %.noexc
  %i.bq = add nsw i32 %.010.i17, %i.bl            ; 2 uses
  %i.br = icmp slt i32 %i.bq, %6
  br i1 %i.br, label %bb.j, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit21, !llvm.loop !7

_ZNK8LightGBM7Linkers4RecvEiPci.exit21:           ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19, %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %_ZNK8LightGBM7Linkers4RecvEiPci.exit21
  %.sroa.0.0.copyload.i.i = load i64, ptr %8, align 8, !tbaa !86
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #28
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #1
  br label %_ZNK8LightGBM7Linkers4RecvEiPci.exit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %_ZNK8LightGBM7Linkers4RecvEiPci.exit21
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

end_hunk_0
begin_hunk_1_@_ZN8LightGBM7Network29ReduceScatterRecursiveHalvingEPciiPKiS3_S1_iRKPFvPKcS1_iiE:bb.a
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.preheader, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph72, %.preheader
  %.054.lcssa = phi i32 [ 0, %.preheader ], [ %i.dd, %.lr.ph72 ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.co = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.cp = sext i32 %i.bt to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !79
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.co, i32 noundef %i.bq, ptr noundef %i.ct, i32 noundef %.056.lcssa, i32 noundef %i.bq, ptr noundef %5, i32 noundef %.054.lcssa)
  %i.cu = load ptr, ptr %7, align 8, !tbaa !109
  %i.cv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cg
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !79
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx
  tail call void %i.cu(ptr noundef %5, ptr noundef %i.cy, i32 noundef %2, i32 noundef %.054.lcssa)
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !173
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next82, %i.da
  br i1 %i.db, label %bb.j, label %.loopexit, !llvm.loop !169

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next79, %.lr.ph72 ] ; 2 uses
  %.05470 = phi i32 [ 0, %.lr.ph72.preheader ], [ %i.dd, %.lr.ph72 ]
  %gep92 = getelementptr [4 x i8], ptr %invariant.gep91, i64 %indvars.iv78
  %i.dc = load i32, ptr %gep92, align 4, !tbaa !79
  %i.dd = add nsw i32 %i.dc, %.05470              ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv81
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !79
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next79, %i.dh
  br i1 %i.di, label %.lr.ph72, label %._crit_edge, !llvm.loop !170

.loopexit:                                        ; preds = %._crit_edge, %.preheader67, %_ZNK8LightGBM7Linkers4SendEiPci.exit
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dj = load i8, ptr %i.b, align 8, !tbaa !112, !range !113, !noundef !114
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, label %bb.k

bb.k:                                             ; preds = %.loopexit
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dl = load i32, ptr %i.be, align 4, !tbaa !171
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.dn = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !172
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !172
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !79
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %0, i64 %i.dv
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dx = load i32, ptr %i.dp, align 4, !tbaa !172
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !79 ; 3 uses
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  %i.ed = sext i32 %i.dq to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60, %.preheader.i58
  %.010.i59 = phi i32 [ 0, %.preheader.i58 ], [ %i.es, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60 ] ; 3 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !117
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !118
  %i.eh = sext i32 %.010.i59 to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dw, i64 %i.eh
  %i.ej = sub nsw i32 %i.ea, %.010.i59
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !120
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = tail call i64 @send(i32 noundef %i.ek, ptr noundef %i.ei, i64 noundef %i.el, i32 noundef 0)
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.n, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60

bb.n:                                             ; preds = %bb.m
  %i.ep = tail call ptr @__errno_location() #32
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !79 ; 2 uses
  %i.er = tail call ptr @strerror(i32 noundef %i.eq) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.er, i32 noundef %i.eq)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60:       ; preds = %bb.n, %bb.m
  %i.es = add nsw i32 %.010.i59, %i.en            ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.ea
  br i1 %i.et, label %bb.m, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, !llvm.loop !6

bb.o:                                             ; preds = %bb.k
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.eu = load i32, ptr %i.be, align 4, !tbaa !171
  %i.ev = icmp eq i32 %i.eu, 2
  br i1 %i.ev, label %bb.p, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61

bb.p:                                             ; preds = %bb.o
  %i.ew = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !79
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !79 ; 3 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.fb = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.fd = icmp sgt i32 %i.fa, 0
  br i1 %i.fd, label %.lr.ph.i62, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66

.lr.ph.i62:                                       ; preds = %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !172
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 272
  %i.fh = sext i32 %i.ff to i64
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65, %.lr.ph.i62
  %.010.i63 = phi i32 [ 0, %.lr.ph.i62 ], [ %i.fw, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65 ] ; 3 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !117
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !118
  %i.fl = sext i32 %.010.i63 to i64
  %i.fm = getelementptr inbounds i8, ptr %5, i64 %i.fl
  %i.fn = sub nsw i32 %i.fa, %.010.i63
  %.sroa.speculated.i64 = tail call i32 @llvm.smin.i32(i32 %i.fn, i32 100000)
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !120
  %i.fp = zext nneg i32 %.sroa.speculated.i64 to i64
  %i.fq = tail call i64 @recv(i32 noundef %i.fo, ptr noundef %i.fm, i64 noundef %i.fp, i32 noundef 0)
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.r, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65

bb.r:                                             ; preds = %bb.q
  %i.ft = tail call ptr @__errno_location() #32
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !79 ; 2 uses
  %i.fv = tail call ptr @strerror(i32 noundef %i.fu) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.fv, i32 noundef %i.fu)
  br label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65:        ; preds = %bb.r, %bb.q
  %i.fw = add nsw i32 %.010.i63, %i.fr            ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fa
  br i1 %i.fx, label %bb.q, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66, !llvm.loop !7

_ZNK8LightGBM7Linkers4SendEiPci.exit61:           ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60, %bb.l, %bb.o, %.loopexit
  %i.fy = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !79
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !79
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ga
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !79
  %i.gh = sext i32 %i.gg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.ge, i64 %i.gh, i1 false)
  br label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66

_ZNK8LightGBM7Linkers4RecvEiPci.exit66:           ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65, %bb.p, %_ZNK8LightGBM7Linkers4SendEiPci.exit61
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79   ; 5 uses
  %i.f = srem i32 %i.c, %i.e
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = add i32 %i.g, %i.b
  %i.i = srem i32 %i.h, %i.e                      ; 3 uses
  %i.j = icmp sgt i32 %i.e, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = add i32 %i.g, %i.i
  %i.l = srem i32 %i.k, %i.e
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [4 x i8], ptr %4, i64 %i.o
  %i.u = load i32, ptr %i.t, align 4, !tbaa !79
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.s, i64 %i.v, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i32 [ 1, %.lr.ph ], [ %i.ao, %bb.b ]
  %.02730 = phi i32 [ %i.l, %.lr.ph ], [ %13, %bb.b ] ; 2 uses
  %.02829 = phi i32 [ %i.i, %.lr.ph ], [ %10, %bb.b ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.x = sext i32 %.02829 to i64                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.x
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !79
  %i.ae = sext i32 %.02730 to i64                 ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.w, i32 noundef %i.f, ptr noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.i, ptr noundef %5, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %7, align 8, !tbaa !109
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !79
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.af, align 4, !tbaa !79
  tail call void %i.ah(ptr noundef %5, ptr noundef %i.al, i32 noundef %2, i32 noundef %i.am)
  %8 = add nsw i32 %.02829, -1
  %i.an = load i32, ptr %i.d, align 4, !tbaa !79  ; 5 uses
  %9 = add nsw i32 %8, %i.an
  %10 = srem i32 %9, %i.an
  %11 = add nsw i32 %.02730, -1
  %12 = add nsw i32 %11, %i.an
  %13 = srem i32 %12, %i.an
  %i.ao = add nuw nsw i32 %.031, 1                ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN8LightGBM7Network4rankEv() local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN8LightGBM7Network12num_machinesEv() local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.17() #23 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__tls_init() #7 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt10unique_ptrIN8LightGBM7LinkersESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZN8LightGBM7Network8linkers_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network12block_start_E, i8 0, i64 24, i1 false)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZN8LightGBM7Network12block_start_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network10block_len_E, i8 0, i64 24, i1 false)
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZN8LightGBM7Network10block_len_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network7buffer_E, i8 0, i64 24, i1 false)
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIcSaIcEED2Ev, ptr nonnull @_ZN8LightGBM7Network7buffer_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network13num_machines_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network5rank_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network12buffer_size_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network12buffer_size_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network23reduce_scatter_ext_fun_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network23reduce_scatter_ext_fun_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network18allgather_ext_fun_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network18allgather_ext_fun_E)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { cold nounwind }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !108}
!1 = distinct !{!1, !108}
!2 = distinct !{!2, !108}
!3 = distinct !{!3, !108}
!4 = distinct !{!4, !108}
!5 = distinct !{!5, !108}
!6 = distinct !{!6, !108}
!7 = distinct !{!7, !108}
!8 = !{i32 7, !"openmp", i32 51}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTSN8LightGBM7LinkersE", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 int", !17, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 0}
!23 = !{!21, !20, i64 16}
!24 = !{!"p1 omnipotent char", !17, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 16}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!29 = !{!"long", !13, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !29, i64 8, !13, i64 16}
!31 = !{!"_ZTSN8LightGBM8TaskTypeE", !13, i64 0}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !35, i64 0}
!37 = !{!"double", !13, i64 0}
!38 = !{!"bool", !13, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIaSaIaEE", !41, i64 0}
end_hunk_1
