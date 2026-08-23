Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ldecod?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@AllocPartition:bb.a

._crit_edge:                                      ; preds = %bb.g, %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreePartition(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  tail call void @free(ptr noundef %i.e) #20
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !96
  tail call void @free(ptr noundef %i.f) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef %0) #20
  ret void
}

declare ptr @create_contexts_MotionInfo() local_unnamed_addr #6

declare ptr @create_contexts_TextureInfo() local_unnamed_addr #6

declare void @delete_contexts_MotionInfo(ptr noundef) local_unnamed_addr #6

declare void @delete_contexts_TextureInfo(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @init_global_buffers() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @global_init_done, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_global_buffers()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @img, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !85
  %i.g = tail call i32 @get_mem2Dpel(ptr noundef nonnull @imgY_ref, i32 noundef %i.d, i32 noundef %i.f) #20 ; 2 uses
  %i.h = load ptr, ptr @active_sps, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @img, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !121
  %i.p = tail call i32 @get_mem3Dpel(ptr noundef nonnull @imgUV_ref, i32 noundef 2, i32 noundef %i.m, i32 noundef %i.o) #20
  %i.q = add nsw i32 %i.p, %i.g
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr @imgUV_ref, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi i32 [ %i.q, %bb.d ], [ %i.g, %bb.e ]
  %i.r = load ptr, ptr @img, align 8, !tbaa !24   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5840
  %i.t = load i32, ptr %i.s, align 8, !tbaa !122
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 408) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 5600
  store ptr %i.v, ptr %i.w, align 8, !tbaa !123
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @no_mem_exit(ptr noundef nonnull @.str.72) #20
  %.pre = load ptr, ptr @img, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %.pre, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !122
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 4) #22 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !124
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @no_mem_exit(ptr noundef nonnull @.str.73) #20
  %.pre40 = load ptr, ptr @img, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %.pre40, %bb.i ], [ %i.y, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5840
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !122
  %i.ai = add i32 %i.ah, 1
  %i.aj = tail call i32 @get_mem2Dint(ptr noundef nonnull @PicPos, i32 noundef %i.ai, i32 noundef 2) #20
  %i.ak = load ptr, ptr @img, align 8, !tbaa !24  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 5840 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !122
  %.not2930 = icmp slt i32 %i.am, 0
  br i1 %.not2930, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 5820 ; 2 uses
  %i.ao = load ptr, ptr @PicPos, align 8, !tbaa !125
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !126
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ar = urem i32 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127 ; 2 uses
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !4
  %i.au = load i32, ptr %i.an, align 4, !tbaa !126
  %i.av = udiv i32 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !122
  %i.ay = sext i32 %i.ax to i64
  %.not29.not = icmp slt i64 %indvars.iv, %i.ay
  br i1 %.not29.not, label %bb.k, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 5544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 5828
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  %i.bc = shl i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 5820
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !126
  %i.bf = shl i32 %i.be, 2
  %i.bg = tail call i32 @get_mem2D(ptr noundef nonnull %i.az, i32 noundef %i.bc, i32 noundef %i.bf) #20
  %i.bh = load ptr, ptr @img, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 5768
  %i.bj = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.bi, i32 noundef 2, i32 noundef 32, i32 noundef 3) #20
  %i.bk = load ptr, ptr @img, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5776
  %i.bm = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.bl, i32 noundef 6, i32 noundef 32, i32 noundef 3) #20
  %i.bn = load ptr, ptr @img, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 5784
  %i.bp = tail call i32 @get_mem4Dint(ptr noundef nonnull %i.bo, i32 noundef 6, i32 noundef 32, i32 noundef 32, i32 noundef 3) #20
  %i.bq = load ptr, ptr @img, align 8, !tbaa !24  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5560
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 5840
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !122
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 5924
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !114
  %i.bw = add nsw i32 %i.bv, 4
  %i.bx = tail call i32 @get_mem3Dint(ptr noundef nonnull %i.br, i32 noundef %i.bt, i32 noundef 4, i32 noundef %i.bw) #20
  %i.by = load ptr, ptr @img, align 8, !tbaa !24  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5568
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 5828
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !129
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 5820
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !126
  %i.ce = tail call i32 @get_mem2Dint(ptr noundef nonnull %i.bz, i32 noundef %i.cb, i32 noundef %i.cd) #20
  %i.cf = load ptr, ptr @img, align 8, !tbaa !24  ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 5900
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !110 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 5904
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %i.ck = icmp sgt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr @active_sps, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !104
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %._crit_edge
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.025.in.in = phi i32 [ %i.ch, %bb.m ], [ %i.cj, %bb.l ]
  %.025.in = shl i32 %.025.in.in, 1               ; 2 uses
  %.025 = add i32 %.025.in, 2                     ; 2 uses
  %i.cp = sext i32 %.025 to i64
  %i.cq = tail call noalias ptr @calloc(i64 noundef %i.cp, i64 noundef 4) #22 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 5552
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !130
  %i.cs = icmp eq ptr %i.cq, null
  br i1 %i.cs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @no_mem_exit(ptr noundef nonnull @.str.74) #20
  %.pre41 = load ptr, ptr @img, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre41, i64 5552
  %.pre42 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ct = phi ptr [ %.pre42, %bb.o ], [ %i.cq, %bb.n ]
  %i.cu = phi ptr [ %.pre41, %bb.o ], [ %i.cf, %bb.n ] ; 3 uses
  %i.cv = ashr exact i32 %.025, 1                 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 5552
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cx ; 7 uses
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !130
  %i.cz = icmp sgt i32 %i.cv, 0
  br i1 %i.cz, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.cv to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %0 = icmp eq i32 %.025.in, 0
  br i1 %0, label %.lr.ph34.epil, label %.lr.ph34.preheader.new

.lr.ph34.preheader.new:                           ; preds = %.lr.ph34.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34, %.lr.ph34.preheader.new
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34.preheader.new ], [ %indvars.iv.next38.3, %.lr.ph34 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph34.preheader.new ], [ %niter.next.3, %.lr.ph34 ]
  %i.da = mul nuw nsw i64 %indvars.iv37, %indvars.iv37
  %1 = sub nsw i64 0, %indvars.iv37
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %1
  %i.dc = trunc nsw i64 %i.da to i32              ; 2 uses
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv37
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !4
  %indvars.iv.next38.1.a = or disjoint i64 %indvars.iv37, 1 ; 3 uses
  %i.de = mul nuw nsw i64 %indvars.iv.next38.1.a, %indvars.iv.next38.1.a
  %2 = xor i64 %indvars.iv37, -1
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %2
  %i.dg = trunc nsw i64 %i.de to i32              ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next38.1.a
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %niter.next.3 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge35.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !131

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %.lr.ph34
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge35, label %.lr.ph34.epil

.lr.ph34.epil:                                    ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34.preheader
  %indvars.iv37.epil = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next38.3, %._crit_edge35.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod45 = trunc i32 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %3 = mul nuw nsw i64 %indvars.iv37.epil, %indvars.iv37.epil
  %4 = sub nsw i64 0, %indvars.iv37.epil
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %4
  %5 = trunc nsw i64 %3 to i32                    ; 2 uses
  store i32 %5, ptr %i.di, align 4, !tbaa !4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv37.epil
  store i32 %5, ptr %6, align 4, !tbaa !4
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %.lr.ph34.epil, %._crit_edge35.loopexit.unr-lcssa, %bb.p
  %i.dj = add nsw i32 %i.aj, %.026
  %i.dk = add nsw i32 %i.dj, %i.bg
  %i.dl = add nsw i32 %i.dk, %i.bj
  %i.dm = add nsw i32 %i.dl, %i.bm
  %i.dn = add nsw i32 %i.dm, %i.bp
  %i.do = add nsw i32 %i.dn, %i.bx
  %i.dp = add nsw i32 %i.do, %i.ce
  store i32 1, ptr @global_init_done, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 5840
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !122
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 5844
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !54
  ret i32 %i.dp
}

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem2D(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_global_buffers() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @imgY_ref, align 8, !tbaa !55
  tail call void @free_mem2Dpel(ptr noundef %i.a) #20
  %i.b = load ptr, ptr @imgUV_ref, align 8, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free_mem3Dpel(ptr noundef nonnull %i.b, i32 noundef 2) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @img, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5560
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 5844
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  tail call void @free_mem3Dint(ptr noundef %i.e, i32 noundef %i.g) #20
  %i.h = load ptr, ptr @img, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5568
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  tail call void @free_mem2Dint(ptr noundef %i.j) #20
  %i.k = load ptr, ptr @img, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5600
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !123  ; 2 uses
  %.not4 = icmp eq ptr %i.m, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.m) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr @PicPos, align 8, !tbaa !125
  tail call void @free_mem2Dint(ptr noundef %i.n) #20
  %i.o = load ptr, ptr @img, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.q) #20
  %i.r = load ptr, ptr @img, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5544
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  tail call void @free_mem2D(ptr noundef %i.t) #20
  %i.u = load ptr, ptr @img, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5768
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  tail call void @free_mem3Dint(ptr noundef %i.w, i32 noundef 2) #20
  %i.x = load ptr, ptr @img, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5776
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !136
  tail call void @free_mem3Dint(ptr noundef %i.z, i32 noundef 6) #20
  %i.aa = load ptr, ptr @img, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 5784
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !137
  tail call void @free_mem4Dint(ptr noundef %i.ac, i32 noundef 6, i32 noundef 32) #20
  %i.ad = load ptr, ptr @img, align 8, !tbaa !24  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5900
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !110
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 5904
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 5552
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %. = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.ah)
  %narrow = xor i32 %., -1
  %i.ak = sext i32 %narrow to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  tail call void @free(ptr noundef %i.al) #20
  store i32 0, ptr @global_init_done, align 4, !tbaa !4
  ret void
}

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #6

declare void @free_mem3Dpel(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @free_mem3Dint(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #6

declare void @free_mem2D(ptr noundef) local_unnamed_addr #6

declare void @free_mem4Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS7inp_par", !10, i64 0}
!13 = !{!14, !5, i64 3000}
!14 = !{!"inp_par", !6, i64 0, !6, i64 1000, !6, i64 2000, !5, i64 3000, !5, i64 3004, !5, i64 3008, !5, i64 3012, !5, i64 3016, !5, i64 3020, !5, i64 3024, !5, i64 3028}
!15 = !{!14, !5, i64 3004}
!16 = !{!14, !5, i64 3008}
!17 = !{!14, !5, i64 3016}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!14, !5, i64 3012}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!14, !5, i64 3020}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS7img_par", !10, i64 0}
!26 = !{!27, !5, i64 6068}
!27 = !{!"img_par", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !28, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !6, i64 104, !6, i64 616, !6, i64 1384, !6, i64 2408, !6, i64 5480, !29, i64 5544, !28, i64 5552, !31, i64 5560, !33, i64 5568, !5, i64 5576, !5, i64 5580, !5, i64 5584, !5, i64 5588, !10, i64 5592, !34, i64 5600, !5, i64 5608, !5, i64 5612, !5, i64 5616, !5, i64 5620, !5, i64 5624, !5, i64 5628, !35, i64 5632, !5, i64 5640, !5, i64 5644, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !5, i64 5664, !5, i64 5668, !5, i64 5672, !5, i64 5676, !5, i64 5680, !5, i64 5684, !5, i64 5688, !5, i64 5692, !6, i64 5696, !5, i64 5708, !5, i64 5712, !5, i64 5716, !5, i64 5720, !5, i64 5724, !5, i64 5728, !5, i64 5732, !5, i64 5736, !5, i64 5740, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !31, i64 5768, !31, i64 5776, !36, i64 5784, !5, i64 5792, !5, i64 5796, !5, i64 5800, !5, i64 5804, !5, i64 5808, !5, i64 5812, !5, i64 5816, !5, i64 5820, !5, i64 5824, !5, i64 5828, !5, i64 5832, !5, i64 5836, !5, i64 5840, !5, i64 5844, !5, i64 5848, !5, i64 5852, !5, i64 5856, !5, i64 5860, !5, i64 5864, !5, i64 5868, !5, i64 5872, !5, i64 5876, !5, i64 5880, !5, i64 5884, !5, i64 5888, !5, i64 5892, !5, i64 5896, !5, i64 5900, !5, i64 5904, !5, i64 5908, !5, i64 5912, !5, i64 5916, !5, i64 5920, !5, i64 5924, !5, i64 5928, !5, i64 5932, !5, i64 5936, !5, i64 5940, !5, i64 5944, !6, i64 5948, !6, i64 5972, !5, i64 5996, !5, i64 6000, !38, i64 6008, !38, i64 6016, !39, i64 6024, !39, i64 6040, !5, i64 6056, !5, i64 6060, !5, i64 6064, !5, i64 6068, !5, i64 6072, !5, i64 6076, !5, i64 6080, !5, i64 6084, !5, i64 6088, !5, i64 6092, !5, i64 6096, !5, i64 6100, !5, i64 6104}
!28 = !{!"p1 int", !10, i64 0}
!29 = !{!"p2 omnipotent char", !30, i64 0}
!30 = !{!"any p2 pointer", !10, i64 0}
!31 = !{!"p3 int", !32, i64 0}
!32 = !{!"any p3 pointer", !30, i64 0}
!33 = !{!"p2 int", !30, i64 0}
!34 = !{!"p1 _ZTS10macroblock", !10, i64 0}
!35 = !{!"p1 _ZTS18DecRefPicMarking_s", !10, i64 0}
!36 = !{!"p4 int", !37, i64 0}
!37 = !{!"any p4 pointer", !32, i64 0}
!38 = !{!"long", !6, i64 0}
!39 = !{!"timeb", !38, i64 0, !40, i64 8, !40, i64 10, !40, i64 12}
!40 = !{!"short", !6, i64 0}
!41 = !{!14, !5, i64 3024}
!42 = !{!27, !5, i64 6060}
!43 = !{!14, !5, i64 3028}
!44 = !{!27, !5, i64 6064}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTS7snr_par", !10, i64 0}
!47 = !{!27, !10, i64 5592}
!48 = !{!49, !10, i64 48}
!49 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !50, i64 40, !10, i64 48, !10, i64 56, !5, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !5, i64 96, !28, i64 104, !28, i64 112, !28, i64 120, !10, i64 128, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148}
!50 = !{!"p1 _ZTS13datapartition", !10, i64 0}
!51 = !{!49, !10, i64 56}
!52 = !{!49, !5, i64 24}
!53 = !{!49, !50, i64 40}
!54 = !{!27, !5, i64 5844}
!55 = !{!56, !56, i64 0}
!56 = !{!"p2 short", !30, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p3 short", !32, i64 0}
!59 = !{!27, !5, i64 6088}
!60 = !{!27, !5, i64 6092}
!61 = !{!27, !5, i64 6104}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTS16storable_picture", !10, i64 0}
!64 = !{!65, !5, i64 48}
!65 = !{!"decoded_picture_buffer", !66, i64 0, !66, i64 8, !66, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !67, i64 56}
!66 = !{!"p2 _ZTS11frame_store", !30, i64 0}
!67 = !{!"p1 _ZTS11frame_store", !10, i64 0}
!68 = !{!27, !5, i64 5996}
!69 = !{!27, !5, i64 6000}
!70 = !{!27, !5, i64 0}
!71 = !{!27, !5, i64 44}
!72 = !{!27, !35, i64 5632}
!73 = !{!74, !5, i64 0}
!74 = !{!"snr_par", !5, i64 0, !75, i64 4, !75, i64 8, !75, i64 12, !75, i64 16, !75, i64 20, !75, i64 24, !75, i64 28, !75, i64 32, !75, i64 36, !75, i64 40, !75, i64 44, !75, i64 48, !75, i64 52, !75, i64 56, !75, i64 60}
!75 = !{!"float", !6, i64 0}
!76 = !{!38, !38, i64 0}
!77 = distinct !{!77, !22}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTS14ercVariables_s", !10, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTS16colocated_params", !10, i64 0}
!82 = !{!74, !75, i64 28}
!83 = !{!74, !75, i64 32}
!84 = !{!74, !75, i64 36}
!85 = !{!27, !5, i64 48}
!86 = !{!27, !5, i64 52}
!87 = !{!27, !5, i64 5916}
!88 = !{!10, !10, i64 0}
!89 = !{!90, !5, i64 12}
!90 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 56, !6, i64 440, !6, i64 952, !6, i64 976, !5, i64 984, !5, i64 988, !5, i64 992, !6, i64 996, !6, i64 1028, !6, i64 1060, !5, i64 1092, !5, i64 1096, !5, i64 1100, !28, i64 1104, !5, i64 1112, !5, i64 1116, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152}
!91 = !{!74, !75, i64 16}
!92 = !{!74, !75, i64 20}
!93 = !{!74, !75, i64 24}
!94 = !{!27, !5, i64 28}
!95 = !{!75, !75, i64 0}
!96 = !{!97, !10, i64 0}
!97 = !{!"datapartition", !10, i64 0, !98, i64 8, !10, i64 48}
!98 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !19, i64 24, !28, i64 32}
!99 = !{!100, !19, i64 16}
!100 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !19, i64 16, !5, i64 24}
!101 = !{!27, !5, i64 5876}
!102 = !{!27, !5, i64 5884}
!103 = !{!27, !5, i64 5880}
!104 = !{!105, !5, i64 32}
!105 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 72, !6, i64 456, !6, i64 968, !6, i64 992, !5, i64 1000, !5, i64 1004, !5, i64 1008, !5, i64 1012, !5, i64 1016, !5, i64 1020, !5, i64 1024, !5, i64 1028, !5, i64 1032, !6, i64 1036, !5, i64 2060, !5, i64 2064, !5, i64 2068, !5, i64 2072, !5, i64 2076, !5, i64 2080, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !106, i64 2112}
!106 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !107, i64 84, !5, i64 496, !107, i64 500, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944, !5, i64 948}
!107 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408}
!108 = !{!27, !5, i64 5872}
!109 = !{!27, !5, i64 5892}
!110 = !{!27, !5, i64 5900}
!111 = !{!27, !5, i64 5888}
!112 = !{!27, !5, i64 5896}
!113 = !{!27, !5, i64 5904}
!114 = !{!27, !5, i64 5924}
!115 = !{!27, !5, i64 5928}
!116 = !{!27, !5, i64 5932}
!117 = !{!27, !5, i64 5936}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !22}
!120 = !{!27, !5, i64 64}
!121 = !{!27, !5, i64 56}
!122 = !{!27, !5, i64 5840}
!123 = !{!27, !34, i64 5600}
!124 = !{!27, !28, i64 16}
!125 = !{!33, !33, i64 0}
!126 = !{!27, !5, i64 5820}
!127 = !{!28, !28, i64 0}
!128 = distinct !{!128, !22}
!129 = !{!27, !5, i64 5828}
!130 = !{!27, !28, i64 5552}
!131 = distinct !{!131, !22}
!132 = !{!27, !31, i64 5560}
!133 = !{!27, !33, i64 5568}
!134 = !{!27, !29, i64 5544}
!135 = !{!27, !31, i64 5768}
!136 = !{!27, !31, i64 5776}
!137 = !{!27, !36, i64 5784}
end_hunk_0
