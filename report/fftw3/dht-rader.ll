Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dht-rader?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mkplan:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  tail call void @fftw_ops_add(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk) #6
  %i.bl = sdiv i64 %.072, 2
  %i.bm = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bn = mul nsw i64 %i.bm, 6
  %i.bo = add nsw i64 %i.ab, -1
  %i.bp = load i32, ptr %i.ae, align 8, !tbaa !12
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = mul nsw i64 %i.bo, %i.bq                ; 2 uses
  %i.bs = add i64 %.072, %i.ab
  %i.bt = add i64 %i.bs, %i.bn
  %i.bu = add nsw i64 %i.bt, %i.br
  %i.bv = sitofp i64 %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !45
  %i.by = fadd double %i.bx, %i.bv
  %i.bz = shl nsw i64 %i.bm, 1                    ; 2 uses
  %i.ca = add nsw i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, %i.br
  %i.cc = sitofp i64 %i.cb to double
  %i.cd = load double, ptr %i.bk, align 8, !tbaa !46
  %i.ce = fadd double %i.cd, %i.cc
  %i.cf = shl nsw i64 %i.bm, 2
  %i.cg = or disjoint i64 %i.cf, 2
  %i.ch = add nsw i64 %i.cg, %i.bq
  %i.ci = sitofp i64 %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !47
  %i.cl = fadd double %i.ck, %i.ci
  store double %i.cl, ptr %i.cj, align 8, !tbaa !47
  %i.cm = add nsw i64 %i.ab, -2                   ; 2 uses
  %i.cn = sub nsw i64 %i.cm, %i.bq
  %i.co = sitofp i64 %i.cn to double
  %i.cp = fadd double %i.by, %i.co
  store double %i.cp, ptr %i.bw, align 8, !tbaa !45
  %i.cq = add nsw i64 %i.bz, %i.cm
  %i.cr = sub i64 %i.cq, %i.bq
  %i.cs = sitofp i64 %i.cr to double
  %i.ct = fadd double %i.ce, %i.cs
  store double %i.ct, ptr %i.bk, align 8, !tbaa !46
  br label %applicable.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.j, %choose_transform_size.exit
  %.071 = phi ptr [ %i.av, %bb.k ], [ null, %bb.j ], [ null, %choose_transform_size.exit ]
  tail call void @fftw_ifree0(ptr noundef %i.an) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %.071) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.ar) #6
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %.split, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %applicable.exit, %bb.m, %bb.l
  %.073 = phi ptr [ %i.ba, %bb.l ], [ null, %bb.m ], [ null, %applicable.exit ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %.split ]
  ret ptr %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @fftw_plan_awake(ptr noundef %i.c, i32 noundef %1) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  tail call void @fftw_plan_awake(ptr noundef %i.e, i32 noundef %1) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void @fftw_plan_awake(ptr noundef %i.g, i32 noundef %1) #6
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @fftw_rader_tl_delete(ptr noundef %i.i, ptr noundef nonnull @omegas) #6
  store ptr null, ptr %i.h, align 8, !tbaa !25
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i64 @fftw_find_generator(i64 noundef %i.k) #6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = tail call i64 @fftw_power_mod(i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.n) #6 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !26   ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 16 uses
  %i.v = add nsw i64 %i.u, 1                      ; 2 uses
  %i.w = load ptr, ptr @omegas, align 8, !tbaa !54
  %i.x = tail call ptr @fftw_rader_tl_find(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.w) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %mkomega.exit

bb.d:                                             ; preds = %bb.c
  %i.y = shl i64 %i.u, 3                          ; 2 uses
  %i.z = tail call ptr @fftw_malloc_plain(i64 noundef %i.y) #6 ; 26 uses
  %i.aa = sitofp i64 %i.u to double
  %i.ab = tail call ptr @fftw_mktriggen(i32 noundef range(i32 1, 0) %1, i64 noundef %i.s) #6 ; 3 uses
  %i.ac = add i64 %i.s, -1                        ; 13 uses
  %i.ad = icmp sgt i64 %i.s, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = sub nsw i64 92681, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.060.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 4 uses
  %.05259.i = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !56
  call void %i.ah(ptr noundef %i.ab, i64 noundef %.060.i, ptr noundef nonnull %i.a) #6, !inline_history !48
  %i.ai = load double, ptr %i.a, align 16, !tbaa !30
  %i.aj = load double, ptr %i.af, align 8, !tbaa !30
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fdiv double %i.ak, %i.aa
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05259.i
  store double %i.al, ptr %i.am, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.an = add nuw nsw i64 %.05259.i, 1            ; 2 uses
  %.not58.i = icmp sgt i64 %.060.i, %i.ag
  br i1 %.not58.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = mul nsw i64 %.060.i, %i.p
  %i.ap = srem i64 %i.ao, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = call i64 @fftw_safe_mulmod(i64 noundef %.060.i, i64 noundef %i.p, i64 noundef %i.s) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %i.ap, %bb.f ], [ %i.aq, %bb.g ]
  %exitcond.not.i = icmp eq i64 %i.an, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %.052.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.h ] ; 2 uses
  call void @fftw_triggen_destroy(ptr noundef %i.ab) #6
  %i.as = icmp slt i64 %.052.lcssa.i, %i.u
  br i1 %i.as, label %.lr.ph64.preheader.i, label %._crit_edge65.i

.lr.ph64.preheader.i:                             ; preds = %._crit_edge.i
  %i.at = shl i64 %.052.lcssa.i, 3                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.z, i64 %i.at
  %i.au = sub i64 %i.y, %i.at
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.au, i1 false), !tbaa !30
  br label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %.lr.ph64.preheader.i, %._crit_edge.i
  %.not57.i = icmp sge i64 %i.u, %i.s
  %i.av = icmp sgt i64 %i.s, 2
  %or.cond.i = and i1 %i.av, %.not57.i
  br i1 %or.cond.i, label %.lr.ph67.i.preheader, label %.loopexit.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge65.i
  %i.aw = add nsw i64 %i.s, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.aw, 10
  br i1 %min.iters.check, label %.lr.ph67.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph67.i.preheader
  %i.ax = sub i64 %i.s, %i.u
  %i.ay = shl i64 %i.ax, 3
  %i.az = add i64 %i.ay, -9
  %diff.check = icmp ult i64 %i.az, 31
  br i1 %diff.check, label %.lr.ph67.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, -4                      ; 3 uses
  %i.ba = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = or disjoint i64 %index, 1               ; 2 uses
  %i.bc = sub nuw nsw i64 %i.ac, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !30
  %wide.load27 = load <2 x double>, ptr %i.bf, align 8, !tbaa !30
  %i.bg = sub nsw i64 %i.u, %i.bb
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -24
  store <2 x double> %wide.load, ptr %i.bi, align 8, !tbaa !30
  store <2 x double> %wide.load27, ptr %i.bj, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph67.i.preheader28

.lr.ph67.i.preheader28:                           ; preds = %vector.memcheck, %.lr.ph67.i.preheader, %middle.block
  %.266.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph67.i.preheader ], [ %i.ba, %middle.block ] ; 4 uses
  %i.bl = xor i64 %.266.i.ph, -1
  %i.bm = add i64 %i.s, %i.bl
  %i.bn = add nsw i64 %i.s, -2
  %i.bo = sub i64 %i.bn, %.266.i.ph
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader28, %.lr.ph67.i.prol
  %.266.i.prol = phi i64 [ %i.bu, %.lr.ph67.i.prol ], [ %.266.i.ph, %.lr.ph67.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.i.prol ], [ 0, %.lr.ph67.i.preheader28 ]
  %i.bp = sub nuw nsw i64 %i.ac, %.266.i.prol
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !30
  %i.bs = sub nsw i64 %i.u, %.266.i.prol
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bs
  store double %i.br, ptr %i.bt, align 8, !tbaa !30
  %i.bu = add nuw nsw i64 %.266.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol, !llvm.loop !51

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader28
  %.266.i.unr = phi i64 [ %.266.i.ph, %.lr.ph67.i.preheader28 ], [ %i.bu, %.lr.ph67.i.prol ]
  %i.bv = icmp ult i64 %i.bo, 7
  br i1 %i.bv, label %.loopexit.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %.266.i = phi i64 [ %i.dr, %.lr.ph67.i ], [ %.266.i.unr, %.lr.ph67.i.prol.loopexit ] ; 10 uses
  %i.bw = sub nuw nsw i64 %i.ac, %.266.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %i.bz = sub nsw i64 %i.u, %.266.i
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bz
  store double %i.by, ptr %i.ca, align 8, !tbaa !30
  %i.cb = add nuw nsw i64 %.266.i, 1              ; 2 uses
  %i.cc = sub nuw nsw i64 %i.ac, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !30
  %i.cf = sub nsw i64 %i.u, %i.cb
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cf
  store double %i.ce, ptr %i.cg, align 8, !tbaa !30
  %i.ch = add nuw nsw i64 %.266.i, 2              ; 2 uses
  %i.ci = sub nuw nsw i64 %i.ac, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !30
  %i.cl = sub nsw i64 %i.u, %i.ch
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cl
  store double %i.ck, ptr %i.cm, align 8, !tbaa !30
  %i.cn = add nuw nsw i64 %.266.i, 3              ; 2 uses
  %i.co = sub nuw nsw i64 %i.ac, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !30
  %i.cr = sub nsw i64 %i.u, %i.cn
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cr
  store double %i.cq, ptr %i.cs, align 8, !tbaa !30
  %i.ct = add nuw nsw i64 %.266.i, 4              ; 2 uses
  %i.cu = sub nuw nsw i64 %i.ac, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !30
  %i.cx = sub nsw i64 %i.u, %i.ct
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cx
  store double %i.cw, ptr %i.cy, align 8, !tbaa !30
  %i.cz = add nuw nsw i64 %.266.i, 5              ; 2 uses
  %i.da = sub nuw nsw i64 %i.ac, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !30
  %i.dd = sub nsw i64 %i.u, %i.cz
  %i.de = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dd
  store double %i.dc, ptr %i.de, align 8, !tbaa !30
  %i.df = add nuw nsw i64 %.266.i, 6              ; 2 uses
  %i.dg = sub nuw nsw i64 %i.ac, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30
  %i.dj = sub nsw i64 %i.u, %i.df
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dj
  store double %i.di, ptr %i.dk, align 8, !tbaa !30
  %i.dl = add nuw nsw i64 %.266.i, 7              ; 2 uses
  %i.dm = sub nuw nsw i64 %i.ac, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !30
  %i.dp = sub nsw i64 %i.u, %i.dl
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dp
  store double %i.do, ptr %i.dq, align 8, !tbaa !30
  %i.dr = add nuw nsw i64 %.266.i, 8              ; 2 uses
  %exitcond70.not.i.7 = icmp eq i64 %i.dr, %i.ac
  br i1 %exitcond70.not.i.7, label %.loopexit.i, label %.lr.ph67.i, !llvm.loop !52

.loopexit.i:                                      ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block, %._crit_edge65.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !31
  call void %i.dt(ptr noundef %i.r, ptr noundef %i.z, ptr noundef %i.z) #6, !inline_history !48
  call void @fftw_rader_tl_insert(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.z, ptr noundef nonnull @omegas) #6
  br label %mkomega.exit

mkomega.exit:                                     ; preds = %bb.c, %.loopexit.i
  %.053.i = phi ptr [ %i.z, %.loopexit.i ], [ %i.x, %bb.c ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.053.i, ptr %i.du, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %mkomega.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i, ptr noundef %i.k) #6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !22
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) %i.o(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.m) #6
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 3 uses
  %.not23 = icmp eq ptr %i.r, %i.p
  br i1 %.not23, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !23
  %.not24 = icmp eq ptr %i.r, %i.s
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) %i.t(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.r) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  tail call void %i.v(ptr noundef nonnull %1, i8 noundef signext 41) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.f) #6
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_f_d(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = shl i64 %i.d, 3
  %i.h = tail call ptr @fftw_malloc_plain(i64 noundef %i.g) #6 ; 27 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = add i64 %i.b, -1                         ; 3 uses
  %i.l = icmp sgt i64 %i.b, 1
  br i1 %i.l, label %.lr.ph, label %.preheader171

.lr.ph:                                           ; preds = %bb.a
  %i.m = sub nsw i64 92681, %i.j
  br label %bb.b

.preheader171:                                    ; preds = %bb.e, %bb.a
  %.not197 = icmp sgt i64 %i.b, %i.d
  br i1 %.not197, label %._crit_edge, label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %.preheader171
  %i.n = shl i64 %i.b, 3
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 -8
  %i.p = add i64 %i.d, 1
  %i.q = sub i64 %i.p, %i.b
  %i.r = shl nuw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.r, i1 false), !tbaa !30
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0174 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.0158173 = phi i64 [ 1, %.lr.ph ], [ %i.aa, %bb.e ] ; 4 uses
  %i.s = mul nsw i64 %.0158173, %i.f
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0174
  store double %i.u, ptr %i.v, align 8, !tbaa !30
  %i.w = add nuw nsw i64 %.0174, 1                ; 2 uses
  %.not168 = icmp sgt i64 %.0158173, %i.m
  br i1 %.not168, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = mul nsw i64 %.0158173, %i.j
  %i.y = srem i64 %i.x, %i.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = tail call i64 @fftw_safe_mulmod(i64 noundef %.0158173, i64 noundef %i.j, i64 noundef %i.b) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i64 [ %i.y, %bb.c ], [ %i.z, %bb.d ]
  %exitcond.not = icmp eq i64 %i.w, %i.k
  br i1 %exitcond.not, label %.preheader171, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph176.preheader, %.preheader171
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !33 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  tail call void %i.ag(ptr noundef %i.ae, ptr noundef %i.h, ptr noundef %i.h) #6
  %i.ah = load double, ptr %1, align 8, !tbaa !30 ; 2 uses
  %i.ai = load double, ptr %i.h, align 8, !tbaa !30
  %i.aj = fadd double %i.ah, %i.ai
  store double %i.aj, ptr %2, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 8 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !30
  %i.an = load double, ptr %i.h, align 8, !tbaa !30
  %i.ao = fmul double %i.am, %i.an                ; 2 uses
  store double %i.ao, ptr %i.h, align 8, !tbaa !30
  %i.ap = sdiv i64 %i.d, 2                        ; 2 uses
  %i.aq = icmp sgt i64 %i.d, 3                    ; 2 uses
  br i1 %i.aq, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %._crit_edge
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  %i.ar = add nsw i64 %smax, -1                   ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp slt i64 %i.d, 6
  br i1 %i.as, label %.lr.ph179.epil.preheader, label %.lr.ph179.preheader.new

.lr.ph179.preheader.new:                          ; preds = %.lr.ph179.preheader
  %unroll_iter = and i64 %i.ar, -2
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179, %.lr.ph179.preheader.new
  %.2177 = phi i64 [ 1, %.lr.ph179.preheader.new ], [ %i.cq, %.lr.ph179 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph179.preheader.new ], [ %niter.next.1, %.lr.ph179 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2177
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
end_hunk_0
