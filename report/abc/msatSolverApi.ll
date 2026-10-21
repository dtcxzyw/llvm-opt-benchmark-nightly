Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/msatSolverApi?download=true
begin_hunk_0_@Msat_SolverAlloc:bb.a
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !26  ; 3 uses
  %i.ak = shl nsw i32 %i.aj, 1
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %calloc125, i64 80 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !33
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %._crit_edge94, %.lr.ph97
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.lr.ph97 ], [ 0, %._crit_edge94 ] ; 2 uses
  %i.aq = tail call ptr @Msat_ClauseVecAlloc(i32 noundef 16) #11
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv114
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !54
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.au = shl nsw i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next115, %i.av
  br i1 %i.aw, label %.lr.ph97, label %._crit_edge98, !llvm.loop !68

._crit_edge98:                                    ; preds = %.lr.ph97, %._crit_edge94
  %.lcssa89 = phi i32 [ %i.aj, %._crit_edge94 ], [ %i.at, %.lr.ph97 ]
  %i.ax = tail call ptr @Msat_QueueAlloc(i32 noundef %.lcssa89) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc125, i64 88
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !55
  %i.az = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ba = tail call ptr @Msat_IntVecAlloc(i32 noundef %i.az) #11
  %i.bb = getelementptr inbounds nuw i8, ptr %calloc125, i64 120
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !56
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !26
  %i.bd = tail call ptr @Msat_IntVecAlloc(i32 noundef %i.bc) #11
  %i.be = getelementptr inbounds nuw i8, ptr %calloc125, i64 128
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !27
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !26  ; 3 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 3
  %calloc124 = tail call ptr @calloc(i64 1, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %calloc125, i64 136
  store ptr %calloc124, ptr %i.bi, align 8, !tbaa !29
  %i.bj = shl nsw i64 %i.bg, 2
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bj) #12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %calloc125, i64 144
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !28
  %i.bm = icmp sgt i32 %i.bf, 0
  br i1 %i.bm, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %._crit_edge98
  %i.bn = zext nneg i32 %i.bf to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 -1, i64 %i.bo, i1 false), !tbaa !31
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %.lr.ph101.preheader, %._crit_edge98
  %i.bp = getelementptr inbounds nuw i8, ptr %calloc125, i64 160
  store double f0x4195D9C3F4000000, ptr %i.bp, align 8, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %calloc125, i64 168
  store i32 %5, ptr %i.bq, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %calloc125, i64 176
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !58
  %i.bs = tail call ptr @Msat_MmStepStart(i32 noundef 10) #11
  %i.bt = getelementptr inbounds nuw i8, ptr %calloc125, i64 248
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !35
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !26
  %i.bv = tail call ptr @Msat_IntVecAlloc(i32 noundef %i.bu) #11
  %i.bw = getelementptr inbounds nuw i8, ptr %calloc125, i64 184
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !44
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !26
  %i.by = tail call ptr @Msat_ClauseVecAlloc(i32 noundef %i.bx) #11
  %i.bz = getelementptr inbounds nuw i8, ptr %calloc125, i64 200 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !43
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge102, %.lr.ph105
  %.4103 = phi i32 [ %i.ce, %.lr.ph105 ], [ 0, %._crit_edge102 ]
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cd = tail call ptr @Msat_IntVecAlloc(i32 noundef 5) #11
  tail call void @Msat_ClauseVecPush(ptr noundef %i.cc, ptr noundef %i.cd) #11
  %i.ce = add nuw nsw i32 %.4103, 1               ; 2 uses
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph105, label %._crit_edge106, !llvm.loop !69

._crit_edge106:                                   ; preds = %.lr.ph105, %._crit_edge102
  %.lcssa = phi i32 [ %i.ca, %._crit_edge102 ], [ %i.cf, %.lr.ph105 ]
  %i.ch = tail call ptr @Msat_IntVecAlloc(i32 noundef %.lcssa) #11 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %calloc125, i64 192
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !45
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !26
  tail call void @Msat_IntVecFill(ptr noundef %i.ch, i32 noundef %i.cj, i32 noundef 1) #11
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %calloc125, i64 208
  store ptr %calloc, ptr %i.cn, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %calloc125, i64 216
  store i32 1, ptr %i.co, align 8, !tbaa !37
  %i.cp = tail call ptr @Msat_IntVecAlloc(i32 noundef %i.ck) #11
  %i.cq = getelementptr inbounds nuw i8, ptr %calloc125, i64 224
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !59
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !26
  %i.cs = tail call ptr @Msat_IntVecAlloc(i32 noundef %i.cr) #11
  %i.ct = getelementptr inbounds nuw i8, ptr %calloc125, i64 232
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !60
  ret ptr %calloc125
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @Msat_ClauseVecAlloc(i32 noundef) local_unnamed_addr #2

declare ptr @Msat_OrderAlloc(ptr noundef) local_unnamed_addr #2

declare ptr @Msat_QueueAlloc(i32 noundef) local_unnamed_addr #2

declare ptr @Msat_IntVecAlloc(i32 noundef) local_unnamed_addr #2

declare ptr @Msat_MmStepStart(i32 noundef) local_unnamed_addr #2

declare void @Msat_ClauseVecPush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Msat_IntVecFill(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Msat_SolverResize(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 18 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 11 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 3                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.f) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %.not105 = icmp eq ptr %i.k, null
  %i.l = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2                      ; 2 uses
  br i1 %.not105, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.n) #13
  %.pre = load i32, ptr %i.a, align 4, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre, %bb.e ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !42
  %i.s = icmp slt i32 %i.b, %i.q
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.u = sext i32 %i.b to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.q to i64         ; 2 uses
  %i.v = sub nsw i64 %wide.trip.count, %i.u       ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.w = add nsw i64 %n.vec, %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add i64 %index, %i.u                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> zeroinitializer, ptr %i.y, align 8, !tbaa !47
  store <2 x double> zeroinitializer, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.x ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 4, !tbaa !49
  store <2 x float> splat (float 1.000000e+00), ptr %2, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.u, %.lr.ph ], [ %i.w, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %.not106 = icmp eq ptr %i.af, null
  %i.ag = sext i32 %i.q to i64
  %i.ah = shl nsw i64 %i.ag, 2                    ; 2 uses
  br i1 %.not106, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.af, i64 noundef %i.ah) #13
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  %.not107 = icmp eq ptr %i.am, null
  %i.an = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2                    ; 2 uses
  br i1 %.not107, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ap) #13
  %.pre158 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i32 [ %.pre158, %bb.k ], [ %i.an, %bb.l ] ; 2 uses
  %i.at = phi ptr [ %i.aq, %bb.k ], [ %i.ar, %bb.l ]
  store ptr %i.at, ptr %i.al, align 8, !tbaa !34
  %i.au = icmp slt i32 %i.b, %i.as
  br i1 %i.au, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.m
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.aw = sext i32 %i.b to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph119, %bb.n
  %indvars.iv144 = phi i64 [ %i.aw, %.lr.ph119 ], [ %indvars.iv.next145, %bb.n ] ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv144
  store i32 -1, ptr %i.ax, align 4, !tbaa !31
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next145, %i.az
  br i1 %i.ba, label %bb.n, label %._crit_edge120, !llvm.loop !76

._crit_edge120:                                   ; preds = %bb.n, %bb.m
  %.lcssa114 = phi i32 [ %i.as, %bb.m ], [ %i.ay, %bb.n ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53
  tail call void @Msat_OrderSetBounds(ptr noundef %i.bc, i32 noundef %.lcssa114) #11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %.not108 = icmp eq ptr %i.be, null
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 3                    ; 2 uses
  br i1 %.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge120
  %i.bj = tail call ptr @realloc(ptr noundef nonnull %i.be, i64 noundef %i.bi) #13
  %.pre159 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge120
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bi) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = phi i32 [ %.pre159, %bb.o ], [ %i.bf, %bb.p ]
  %i.bm = phi ptr [ %i.bj, %bb.o ], [ %i.bk, %bb.p ]
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !33
  %i.bn = icmp slt i32 %i.b, %i.bl
  br i1 %i.bn, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.q
  %i.bo = shl i32 %i.b, 1
  %i.bp = sext i32 %i.bo to i64
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv147 = phi i64 [ %i.bp, %.lr.ph124.preheader ], [ %indvars.iv.next148, %.lr.ph124 ] ; 2 uses
  %i.bq = tail call ptr @Msat_ClauseVecAlloc(i32 noundef 16) #11
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv147
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !54
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !26
  %i.bu = shl nsw i32 %i.bt, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next148, %i.bv
  br i1 %i.bw, label %.lr.ph124, label %._crit_edge125, !llvm.loop !77

._crit_edge125:                                   ; preds = %.lr.ph124, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55
  tail call void @Msat_QueueFree(ptr noundef %i.by) #11
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ca = tail call ptr @Msat_QueueAlloc(i32 noundef %i.bz) #11
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %.not109 = icmp eq ptr %i.cc, null
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !26
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3                    ; 2 uses
  br i1 %.not109, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge125
  %i.cg = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.cf) #13
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge125
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cf) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = phi ptr [ %i.cg, %bb.r ], [ %i.ch, %bb.s ]
  store ptr %i.ci, ptr %i.cb, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %.not110 = icmp eq ptr %i.ck, null
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 2                    ; 2 uses
  br i1 %.not110, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = tail call ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef %i.cn) #13
  %.pre160 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.cn) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cq = phi i32 [ %.pre160, %bb.u ], [ %i.cl, %bb.v ] ; 4 uses
  %i.cr = phi ptr [ %i.co, %bb.u ], [ %i.cp, %bb.v ] ; 3 uses
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !28
  %i.cs = icmp slt i32 %i.b, %i.cq
  br i1 %i.cs, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.w
  %i.ct = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.cu = sext i32 %i.b to i64                    ; 4 uses
  %wide.trip.count153 = sext i32 %i.cq to i64     ; 2 uses
  %i.cv = sub nsw i64 %wide.trip.count153, %i.cu  ; 3 uses
  %min.iters.check182 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph128
  %n.vec184 = and i64 %i.cv, -4                   ; 3 uses
  %i.cw = add nsw i64 %n.vec184, %i.cu
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next187, %vector.body185 ] ; 2 uses
  %i.cx = add i64 %index186, %i.cu                ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !62
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !62
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cx ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.da, align 4, !tbaa !31
  store <2 x i32> splat (i32 -1), ptr %3, align 4, !tbaa !31
  %index.next187 = add nuw i64 %index186, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next187, %n.vec184
  br i1 %i.db, label %middle.block188, label %vector.body185, !llvm.loop !78

middle.block188:                                  ; preds = %vector.body185
  %cmp.n189 = icmp eq i64 %i.cv, %n.vec184
  br i1 %cmp.n189, label %._crit_edge129, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.lr.ph128, %middle.block188
  %indvars.iv150.ph = phi i64 [ %i.cu, %.lr.ph128 ], [ %i.cw, %middle.block188 ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %scalar.ph181 ], [ %indvars.iv150.ph, %scalar.ph181.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %indvars.iv150
  store ptr null, ptr %i.dc, align 8, !tbaa !62
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv150
  store i32 -1, ptr %i.dd, align 4, !tbaa !31
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge129, label %scalar.ph181, !llvm.loop !79

._crit_edge129:                                   ; preds = %scalar.ph181, %middle.block188, %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !36 ; 2 uses
  %.not111 = icmp eq ptr %i.df, null
  %i.dg = sext i32 %i.cq to i64
  %i.dh = shl nsw i64 %i.dg, 2                    ; 2 uses
  br i1 %.not111, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge129
  %i.di = tail call ptr @realloc(ptr noundef nonnull %i.df, i64 noundef %i.dh) #13
  %.pre161 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge129
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.dh) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dk = phi i32 [ %.pre161, %bb.x ], [ %i.cq, %bb.y ] ; 3 uses
  %i.dl = phi ptr [ %i.di, %bb.x ], [ %i.dj, %bb.y ] ; 2 uses
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !36
  %i.dm = icmp slt i32 %i.b, %i.dk
  br i1 %i.dm, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %bb.z
  %i.dn = sext i32 %i.b to i64
  %i.do = shl nsw i64 %i.dn, 2
  %scevgep = getelementptr i8, ptr %i.dl, i64 %i.do
  %i.dp = xor i32 %i.b, -1
  %i.dq = add i32 %i.dk, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.dt, i1 false), !tbaa !31
  br label %._crit_edge134

._crit_edge134:                                   ; preds = %.lr.ph133.preheader, %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56
  tail call void @Msat_IntVecGrow(ptr noundef %i.dv, i32 noundef %i.dk) #11
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !27
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !26
  tail call void @Msat_IntVecGrow(ptr noundef %i.dx, i32 noundef %i.dy) #11
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !43
  %i.eb = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.ea) #11 ; 2 uses
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %._crit_edge134, %.lr.ph138
  %.5136 = phi i32 [ %i.eg, %.lr.ph138 ], [ %i.eb, %._crit_edge134 ]
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !43
  %i.ef = tail call ptr @Msat_IntVecAlloc(i32 noundef 5) #11
  tail call void @Msat_ClauseVecPush(ptr noundef %i.ee, ptr noundef %i.ef) #11
  %i.eg = add nsw i32 %.5136, 1                   ; 2 uses
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %i.ei = icmp slt i32 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph138, label %._crit_edge139, !llvm.loop !80

._crit_edge139:                                   ; preds = %.lr.ph138, %._crit_edge134
  %.lcssa = phi i32 [ %i.ec, %._crit_edge134 ], [ %i.eh, %.lr.ph138 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !45
  tail call void @Msat_IntVecFill(ptr noundef %i.ek, i32 noundef %.lcssa, i32 noundef 1) #11
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @Msat_OrderSetBounds(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Msat_QueueFree(ptr noundef) local_unnamed_addr #2

declare void @Msat_IntVecGrow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Msat_SolverClean(ptr noundef initializes((0, 4), (96, 100)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !24
  store i32 0, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.c) #11 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %i.e) #11
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  tail call void @Msat_ClauseFree(ptr noundef nonnull %0, ptr noundef %i.i, i32 noundef 0) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !41
  tail call void @Msat_ClauseVecClear(ptr noundef %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.l) #11 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.o = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %i.n) #11
  %i.p = icmp sgt i32 %i.m, 0
  br i1 %i.p, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count83 = zext nneg i32 %i.m to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %indvars.iv80 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next81, %.lr.ph59 ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  tail call void @Msat_ClauseFree(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef 0) #11
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !82

._crit_edge60:                                    ; preds = %.lr.ph59, %._crit_edge
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !32
  tail call void @Msat_ClauseVecClear(ptr noundef %i.s) #11
  %i.t = load i32, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = zext nneg i32 %i.t to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.y, i1 false), !tbaa !47
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge60
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  tail call void @Msat_OrderSetBounds(ptr noundef %i.aa, i32 noundef %i.t) #11
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !24
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %bb.b
  %indvars.iv88 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next89, %bb.b ] ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  tail call void @Msat_ClauseVecClear(ptr noundef %i.ag) #11
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !24
  %i.ai = shl nsw i32 %i.ah, 1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next89, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge68, !llvm.loop !83

._crit_edge68:                                    ; preds = %bb.b, %._crit_edge64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  tail call void @Msat_QueueClear(ptr noundef %i.am) #11
  %i.an = load i32, ptr %i.a, align 8, !tbaa !24
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %._crit_edge68
end_hunk_0
