Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_sqr?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cs_sqr:bb.a
  br i1 %.not57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.be = tail call ptr @cs_spfree(ptr noundef %i.k) #4 ; 0 uses
  br label %bb.s

.critedge65:                                      ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = sext i32 %i.e to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !20
  %i.bk = shl nsw i32 %i.bj, 2
  %i.bl = add nsw i32 %i.bk, %i.e
  %i.bm = sitofp i32 %i.bl to double              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store double %i.bm, ptr %i.bn, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store double %i.bm, ptr %i.bo, align 8, !tbaa !25
  br label %bb.u

bb.s:                                             ; preds = %.critedge, %bb.r
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = tail call ptr @cs_sfree(ptr noundef nonnull %i.f) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge65, %bb.s, %bb.c, %bb.a, %bb.b, %bb.e
  %.052 = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.bp, %bb.t ], [ %i.f, %.critedge65 ], [ %i.f, %bb.s ]
  ret ptr %.052
}

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_amd(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cs_sfree(ptr noundef) local_unnamed_addr #1

declare ptr @cs_permute(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_etree(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_post(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_counts(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cs_vcount(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((0, 8), (32, 40)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = add nsw i32 %i.d, %i.b
  %i.l = tail call ptr @cs_malloc(i32 noundef %i.k, i64 noundef 4) #4 ; 7 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !29
  %i.m = tail call ptr @cs_malloc(i32 noundef %i.d, i64 noundef 4) #4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = mul nsw i32 %i.b, 3
  %i.p = add nsw i32 %i.d, %i.o
  %i.q = tail call ptr @cs_malloc(i32 noundef %i.p, i64 noundef 4) #4 ; 6 uses
  %i.r = icmp ne ptr %i.l, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp ne ptr %i.m, null
  %or.cond3 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.b, label %._crit_edge172

bb.b:                                             ; preds = %bb.a
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr [4 x i8], ptr %i.q, i64 %i.u ; 6 uses
  %i.w = sext i32 %i.b to i64
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.y = shl i32 %i.b, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %i.z ; 4 uses
  %i.ab = icmp sgt i32 %i.b, 0                    ; 3 uses
  br i1 %i.ab, label %.lr.ph154.preheader, label %.preheader147

.lr.ph154.preheader:                              ; preds = %bb.b
  %i.ac = zext nneg i32 %i.b to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 -1, i64 %i.ad, i1 false), !tbaa !20
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.af, i1 false), !tbaa !20
  %i.ag = zext nneg i32 %i.b to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.ah, i1 false), !tbaa !20
  br label %.preheader147

.preheader147:                                    ; preds = %bb.b, %.lr.ph154.preheader
  %i.ai = icmp sgt i32 %i.d, 0                    ; 3 uses
  br i1 %i.ai, label %.lr.ph156.preheader, label %.preheader146

.lr.ph156.preheader:                              ; preds = %.preheader147
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 -1, i64 %i.ak, i1 false), !tbaa !20
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph156.preheader, %.preheader147
  br i1 %i.ab, label %.lr.ph162.preheader, label %.preheader145

.lr.ph162.preheader:                              ; preds = %.preheader146
  %i.al = zext nneg i32 %i.b to i64
  br label %.lr.ph162

.loopexit:                                        ; preds = %.lr.ph158, %.lr.ph162
  %i.am = icmp samesign ugt i64 %indvars.iv179, 1
  br i1 %i.am, label %.lr.ph162, label %.preheader145, !llvm.loop !31

.preheader145:                                    ; preds = %.loopexit, %.preheader146
  br i1 %i.ai, label %.lr.ph165.preheader, label %._crit_edge

.lr.ph165.preheader:                              ; preds = %.preheader145
  %i.an = zext nneg i32 %i.d to i64
  br label %.lr.ph165

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.loopexit
  %indvars.iv179 = phi i64 [ %i.al, %.lr.ph162.preheader ], [ %indvars.iv.next180, %.loopexit ] ; 3 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, -1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next180
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv179 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph158.preheader, label %.loopexit

.lr.ph158.preheader:                              ; preds = %.lr.ph162
  %i.at = sext i32 %i.ap to i64
  %i.au = trunc nuw nsw i64 %indvars.iv.next180 to i32
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv = phi i64 [ %i.at, %.lr.ph158.preheader ], [ %indvars.iv.next, %.lr.ph158 ] ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ax
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph158, label %.loopexit, !llvm.loop !32

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.f
  %indvars.iv182 = phi i64 [ %i.an, %.lr.ph165.preheader ], [ %indvars.iv.next183, %bb.f ] ; 2 uses
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, -1 ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next183
  store i32 -1, ptr %i.bc, align 4, !tbaa !20
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next183
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph165
  %i.bg = sext i32 %i.be to i64                   ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !20
  %i.bk = icmp eq i32 %i.bi, 0
  br i1 %i.bk, label %bb.d, label %._crit_edge194

._crit_edge194:                                   ; preds = %bb.c
  %.pre195 = trunc nuw nsw i64 %indvars.iv.next183 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bg
  %i.bm = trunc nuw nsw i64 %indvars.iv.next183 to i32 ; 2 uses
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge194, %bb.d
  %.pre-phi = phi i32 [ %.pre195, %._crit_edge194 ], [ %i.bm, %bb.d ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bg ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next183
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !20
  store i32 %.pre-phi, ptr %i.bn, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph165, %bb.e
  %i.bq = icmp samesign ugt i64 %indvars.iv182, 1
  br i1 %i.bq, label %.lr.ph165, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %.preheader145
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 %i.d, ptr %i.bs, align 8, !tbaa !34
  br i1 %i.ab, label %.lr.ph168.a, label %.preheader

.lr.ph168.a:                                      ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.g

.preheader:                                       ; preds = %bb.m, %._crit_edge
  %.4.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.b, %bb.m ] ; 2 uses
  br i1 %i.ai, label %.lr.ph171.preheader, label %._crit_edge172

.lr.ph171.preheader:                              ; preds = %.preheader
  %wide.trip.count191 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count191, 1
  %i.bt = icmp eq i32 %i.d, 1
  br i1 %i.bt, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter = and i64 %wide.trip.count191, 2147483646
  br label %.lr.ph171

bb.g:                                             ; preds = %.lr.ph168.a, %bb.m
  %2 = phi double [ 0.000000e+00, %.lr.ph168.a ], [ %i.db, %bb.m ]
  %indvars.iv184 = phi i64 [ 0, %.lr.ph168.a ], [ %indvars.iv.next186, %bb.m ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv184
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20 ; 2 uses
  %i.bw = fadd double %2, 1.000000e+00            ; 3 uses
  store double %i.bw, ptr %i.br, align 8, !tbaa !25
  %i.bx = icmp slt i32 %i.bv, 0
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !34 ; 2 uses
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bs, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2133 = phi i32 [ %i.by, %bb.h ], [ %i.bv, %bb.g ]
  %i.ca = sext i32 %.2133 to i64                  ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ca
  %i.cc = trunc nuw nsw i64 %indvars.iv184 to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !20
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv184 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !20
  %i.cg = icmp slt i32 %i.ce, 2
  br i1 %i.cg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = uitofp nneg i32 %i.cf to double
  %i.ci = fadd double %i.bw, %i.ch                ; 3 uses
  store double %i.ci, ptr %i.br, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv184
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20 ; 2 uses
  %.not = icmp eq i32 %i.ck, -1
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv184
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !20 ; 2 uses
  br i1 %i.co, label %bb.l, label %._crit_edge193

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cl
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !20
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %bb.k, %bb.l
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cl ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cu
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !20
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ca
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !20
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !20
  %i.cy = load i32, ptr %i.cd, align 4, !tbaa !20
  %i.cz = load i32, ptr %i.cm, align 4, !tbaa !20
  %i.da = add nsw i32 %i.cz, %i.cy
  store i32 %i.da, ptr %i.cm, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %._crit_edge193, %bb.i
  %i.db = phi double [ %i.ci, %bb.j ], [ %i.ci, %._crit_edge193 ], [ %i.bw, %bb.i ]
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !35

.lr.ph171:                                        ; preds = %bb.p, %.lr.ph171.preheader.new
  %indvars.iv188 = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %indvars.iv.next189.1, %bb.p ] ; 3 uses
  %.5170 = phi i32 [ %.4.lcssa, %.lr.ph171.preheader.new ], [ %.6.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv188 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !20
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.n, label %.lr.ph171.1

bb.n:                                             ; preds = %.lr.ph171
  %i.df = add nuw nsw i32 %.5170, 1
  store i32 %.5170, ptr %i.dc, align 4, !tbaa !20
  br label %.lr.ph171.1

.lr.ph171.1:                                      ; preds = %.lr.ph171, %bb.n
  %.6 = phi i32 [ %i.df, %bb.n ], [ %.5170, %.lr.ph171 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv188
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph171.1
  %i.dk = add nuw nsw i32 %.6, 1
  store i32 %.6, ptr %i.dh, align 4, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph171.1
  %.6.1 = phi i32 [ %i.dk, %bb.o ], [ %.6, %.lr.ph171.1 ] ; 2 uses
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge172.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !36

._crit_edge172.loopexit.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge172, label %.lr.ph171.epil.preheader

.lr.ph171.epil.preheader:                         ; preds = %._crit_edge172.loopexit.unr-lcssa, %.lr.ph171.preheader
  %indvars.iv188.epil.init = phi i64 [ 0, %.lr.ph171.preheader ], [ %indvars.iv.next189.1, %._crit_edge172.loopexit.unr-lcssa ]
  %.5170.epil.init = phi i32 [ %.4.lcssa, %.lr.ph171.preheader ], [ %.6.1, %._crit_edge172.loopexit.unr-lcssa ]
  %lcmp.mod206 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv188.epil.init ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !20
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.q, label %._crit_edge172

bb.q:                                             ; preds = %.lr.ph171.epil.preheader
  store i32 %.5170.epil.init, ptr %i.dl, align 4, !tbaa !20
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit.unr-lcssa, %bb.q, %.lr.ph171.epil.preheader, %.preheader, %bb.a
  %.0135 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %.lr.ph171.epil.preheader ], [ 1, %bb.q ], [ 1, %._crit_edge172.loopexit.unr-lcssa ]
  %i.do = tail call ptr @cs_free(ptr noundef %i.q) #4 ; 0 uses
  ret i32 %.0135
}

declare ptr @cs_spfree(ptr noundef) local_unnamed_addr #1

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !5, i64 40}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!9, !5, i64 8}
!14 = !{!15, !10, i64 8}
!15 = !{!"cs_symbolic", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !16, i64 48, !16, i64 56}
!16 = !{!"double", !6, i64 0}
!17 = !{!15, !10, i64 16}
!18 = !{!15, !10, i64 24}
!19 = !{!15, !16, i64 56}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!15, !16, i64 48}
!26 = !{!9, !10, i64 16}
!27 = !{!9, !5, i64 4}
!28 = !{!9, !10, i64 24}
!29 = !{!15, !10, i64 0}
!30 = !{!15, !10, i64 32}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = !{!15, !5, i64 40}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
end_hunk_0
