Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeSensInit:bb.a
  br label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.preheader, %scalar.ph152
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph152 ], [ %indvars.iv136.ph, %scalar.ph152.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv136
  %i.bi = trunc nuw nsw i64 %indvars.iv136 to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !67
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv136
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !29
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge134, label %scalar.ph152, !llvm.loop !171

._crit_edge134:                                   ; preds = %scalar.ph152, %middle.block159
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 1, ptr %i.bk, align 4, !tbaa !172
  store i32 1, ptr %i.b, align 8, !tbaa !155
  %i.bl = icmp eq i32 %2, 1
  br i1 %i.bl, label %bb.u, label %.thread

bb.u:                                             ; preds = %._crit_edge134
  %i.bm = add nuw nsw i32 %1, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !94
  %i.bp = load ptr, ptr %0, align 8, !tbaa !8
  %i.bq = tail call ptr @SUNNonlinSol_NewtonSens(i32 noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bp) #13 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.v, label %bb.w

.thread:                                          ; preds = %._crit_edge134
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !94
  %i.bu = load ptr, ptr %0, align 8, !tbaa !8
  %i.bv = tail call ptr @SUNNonlinSol_NewtonSens(i32 noundef %1, ptr noundef %i.bt, ptr noundef %i.bu) #13 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.v, label %.thread123

bb.v:                                             ; preds = %.thread, %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 1588, ptr noundef nonnull @__func__.CVodeSensInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  tail call fastcc void @cvSensFreeVectors(ptr noundef %0)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.bx = tail call i32 @CVodeSetNonlinearSolverSensSim(ptr noundef nonnull %0, ptr noundef nonnull %i.bq) #13 ; 2 uses
  %.not115 = icmp eq i32 %i.bx, 0
  br i1 %.not115, label %bb.y, label %bb.x

.thread123:                                       ; preds = %.thread
  %i.by = tail call i32 @CVodeSetNonlinearSolverSensStg(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #13 ; 2 uses
  %.not115126 = icmp eq i32 %i.by, 0
  br i1 %.not115126, label %.thread129, label %bb.x

bb.x:                                             ; preds = %.thread123, %bb.w
  %.0103128 = phi i32 [ %i.by, %.thread123 ], [ %i.bx, %bb.w ]
  %.0118122127 = phi ptr [ %i.bv, %.thread123 ], [ %i.bq, %bb.w ]
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef %.0103128, i32 noundef 1604, ptr noundef nonnull @__func__.CVodeSensInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9)
  tail call fastcc void @cvSensFreeVectors(ptr noundef %0)
  %i.bz = tail call i32 @SUNNonlinSolFree(ptr noundef nonnull %.0118122127) #13 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store i32 1, ptr %i.ca, align 8, !tbaa !173
  br label %bb.z

.thread129:                                       ; preds = %.thread123
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 1, ptr %i.cb, align 8, !tbaa !174
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread129, %._crit_edge, %bb.x, %bb.v, %bb.t, %bb.p, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0105 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.l ], [ -20, %bb.t ], [ -20, %bb.p ], [ -20, %bb.v ], [ -20, %bb.x ], [ -28, %._crit_edge ], [ 0, %.thread129 ], [ 0, %bb.y ]
  ret i32 %.0105
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cvSensAllocVectors(ptr nofree noundef nonnull initializes((760, 768)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 33 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  %i.c = tail call ptr @N_VCloneVectorArray(i32 noundef %i.b, ptr noundef %1) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !175
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !156
  %i.g = tail call ptr @N_VCloneVectorArray(i32 noundef %i.f, ptr noundef %1) #13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !176
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.k = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.j, i32 noundef %i.k) #13
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 8, !tbaa !156
  %i.m = tail call ptr @N_VCloneVectorArray(i32 noundef %i.l, ptr noundef %1) #13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 6 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !177
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.q = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.p, i32 noundef %i.q) #13
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.s = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.r, i32 noundef %i.s) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.a, align 8, !tbaa !156
  %i.u = tail call ptr @N_VCloneVectorArray(i32 noundef %i.t, ptr noundef %1) #13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 5 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !178
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.y = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.x, i32 noundef %i.y) #13
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.z, i32 noundef %i.aa) #13
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ab, i32 noundef %i.ac) #13
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !156
  %i.ae = tail call ptr @N_VCloneVectorArray(i32 noundef %i.ad, ptr noundef %1) #13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !179
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not129 = icmp slt i32 %i.ai, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.al = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ak, i32 noundef %i.al) #13
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.an = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.am, i32 noundef %i.an) #13
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ao, i32 noundef %i.ap) #13
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.aq, i32 noundef %i.ar) #13
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv150 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next151, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.as = load i32, ptr %i.a, align 8, !tbaa !156
  %i.at = tail call ptr @N_VCloneVectorArray(i32 noundef %i.as, ptr noundef %1) #13 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8, !tbaa !164
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.aw, i32 noundef %i.ax) #13
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.az = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ay, i32 noundef %i.az) #13
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.ba, i32 noundef %i.bb) #13
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bc, i32 noundef %i.bd) #13
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !179
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.be, i32 noundef %i.bf) #13
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %indvars.iv150 to i64
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %indvars.iv147 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next148, %.lr.ph133 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv147
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bh, i32 noundef %i.bi) #13
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph133

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bj = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bk
  %indvars.iv.next151 = add nuw nsw i32 %indvars.iv150, 1
  br i1 %.not.not, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %.lcssa = phi i32 [ %i.ai, %.preheader ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !156 ; 4 uses
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %i.bo = shl nsw i64 %i.bn, 3
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #14 ; 2 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !65
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !175
  tail call void @N_VDestroyVectorArray(ptr noundef %i.br, i32 noundef %i.bm) #13
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bs, i32 noundef %i.bt) #13
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.bv = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bu, i32 noundef %i.bv) #13
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.bw, i32 noundef %i.bx) #13
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !179
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.by, i32 noundef %i.bz) #13
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !26
  %.not122139 = icmp slt i32 %i.ca, 0
  br i1 %.not122139, label %.loopexit, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph142, %bb.n
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next157, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv156
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !164
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cd, i32 noundef %i.ce) #13
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %i.cf = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.cg = sext i32 %i.cf to i64
  %.not122.not = icmp slt i64 %indvars.iv156, %i.cg
  br i1 %.not122.not, label %bb.n, label %.loopexit

bb.o:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ci = shl nsw i64 %i.bn, 2
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #14 ; 2 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !66
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !175
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cl, i32 noundef %i.bm) #13
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cm, i32 noundef %i.cn) #13
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.co, i32 noundef %i.cp) #13
  %i.cq = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cq, i32 noundef %i.cr) #13
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !179
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cs, i32 noundef %i.ct) #13
  %i.cu = load i32, ptr %i.ah, align 8, !tbaa !26
  %.not121134 = icmp slt i32 %i.cu, 0
  br i1 %.not121134, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph137, %bb.q
  %indvars.iv153 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next154, %bb.q ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv153
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !164
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.cx, i32 noundef %i.cy) #13
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %i.cz = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.da = sext i32 %i.cz to i64
  %.not121.not = icmp slt i64 %indvars.iv153, %i.da
  br i1 %.not121.not, label %bb.q, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.q, %bb.p
  %i.db = load ptr, ptr %i.bl, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.db) #13
  store ptr null, ptr %i.bl, align 8, !tbaa !65
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %i.dc = add nsw i32 %.lcssa, 6
  %i.dd = mul nsw i32 %i.bm, %i.dc
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !92
  %i.dh = mul nsw i64 %i.dg, %i.de
  %i.di = add nsw i64 %i.dh, %i.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !49
  %i.dl = add nsw i64 %i.di, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !93
  %i.do = mul nsw i64 %i.dn, %i.de
  %i.dp = add nsw i64 %i.do, %i.bn
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !50
  %i.ds = add nsw i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2128
  store i32 %.lcssa, ptr %i.dt, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133, %bb.n, %bb.k, %bb.m, %bb.a, %bb.r, %._crit_edge138, %bb.i, %bb.g, %bb.e, %bb.c
  %.0120 = phi i32 [ 1, %bb.r ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %._crit_edge138 ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %.lr.ph133 ]
  ret i32 %.0120
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @cvSensFreeVectors(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.d, i32 noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.i = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.h, i32 noundef %i.i) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.l = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.k, i32 noundef %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !178
  %i.o = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.n, i32 noundef %i.o) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !179
  %i.r = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.q, i32 noundef %i.r) #13
  %.not53 = icmp slt i32 %i.b, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.t = add nuw i32 %i.b, 1
  %wide.trip.count = zext i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.w = load i32, ptr %i.e, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.v, i32 noundef %i.w) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.aa) #13
  store ptr null, ptr %i.z, align 8, !tbaa !66
  %i.ab = add nsw i32 %i.b, 6
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !156 ; 3 uses
  %i.ad = mul nsw i32 %i.ac, %i.ab
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !92
  %i.ah = mul nsw i64 %i.ag, %i.ae
  %i.ai = sext i32 %i.ac to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 6 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.al = add i64 %i.ah, %i.ai
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !93
  %i.ap = mul nsw i64 %i.ao, %i.ae
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 4 uses
end_hunk_0
begin_hunk_1_@CVode:bb.a
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !134
  %i.xn = icmp eq i32 %i.xm, 3
  %i.xo = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  br i1 %i.xn, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3443, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, double noundef %i.xo)
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3448, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, double noundef %i.xo)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.xp = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.xp, ptr %3, align 8, !tbaa !29
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xp, ptr %i.xq, align 8, !tbaa !237
  %i.xr = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.xr, ptr noundef nonnull %2) #13
  br label %bb.pf

bb.fj:                                            ; preds = %bb.fe
  %i.xs = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not570 = icmp eq i32 %i.xs, 0
  br i1 %.not570, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xt = load i32, ptr %i.ps, align 8, !tbaa !239
  %.not571 = icmp eq i32 %i.xt, 0
  br i1 %.not571, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xu = load ptr, ptr %i.pt, align 8, !tbaa !63
  %i.xv = load ptr, ptr %i.pu, align 8, !tbaa !141
  %i.xw = call fastcc i32 @cvQuadEwtSet(ptr noundef %0, ptr noundef %i.xu, ptr noundef %i.xv)
  %.not572 = icmp eq i32 %i.xw, 0
  br i1 %.not572, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xx = load double, ptr %i.qi, align 8, !tbaa !103
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3463, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, double noundef %i.xx)
  %i.xy = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.xy, ptr %3, align 8, !tbaa !29
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.xy, ptr %i.xz, align 8, !tbaa !237
  %i.ya = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ya, ptr noundef nonnull %2) #13
  br label %bb.pf

bb.fn:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %i.yb = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not573 = icmp eq i32 %i.yb, 0
  br i1 %.not573, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.yc = load ptr, ptr %i.pw, align 8, !tbaa !164
  %i.yd = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.ye = call fastcc i32 @cvSensEwtSet(ptr noundef %0, ptr noundef %i.yc, ptr noundef %i.yd)
  %.not574 = icmp eq i32 %i.ye, 0
  br i1 %.not574, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.yf = load double, ptr %i.qi, align 8, !tbaa !103
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3477, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, double noundef %i.yf)
  %i.yg = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.yg, ptr %3, align 8, !tbaa !29
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yg, ptr %i.yh, align 8, !tbaa !237
  %i.yi = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yi, ptr noundef nonnull %2) #13
  br label %bb.pf

bb.fq:                                            ; preds = %bb.fo, %bb.fn
  %i.yj = load i32, ptr %i.py, align 8, !tbaa !212
  %.not575 = icmp eq i32 %i.yj, 0
  br i1 %.not575, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yk = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not576 = icmp eq i32 %i.yk, 0
  br i1 %.not576, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yl = load ptr, ptr %i.qa, align 8, !tbaa !164
  %i.ym = load ptr, ptr %i.qb, align 8, !tbaa !203
  %i.yn = call fastcc i32 @cvQuadSensEwtSet(ptr noundef %0, ptr noundef %i.yl, ptr noundef %i.ym)
  %.not577 = icmp eq i32 %i.yn, 0
  br i1 %.not577, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.yo = load double, ptr %i.qi, align 8, !tbaa !103
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 3491, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, double noundef %i.yo)
  %i.yp = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.yp, ptr %3, align 8, !tbaa !29
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yp, ptr %i.yq, align 8, !tbaa !237
  %i.yr = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yr, ptr noundef nonnull %2) #13
  br label %bb.pf

bb.fu:                                            ; preds = %bb.fq, %bb.fr, %bb.fs, %.backedge
  %i.ys = load i64, ptr %i.qc, align 8, !tbaa !27 ; 2 uses
  %i.yt = icmp slt i64 %i.ys, 1
  %.not578 = icmp slt i64 %.0519, %i.ys
  %or.cond597 = select i1 %i.yt, i1 true, i1 %.not578
  br i1 %or.cond597, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.yu = load double, ptr %i.qi, align 8, !tbaa !103
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 3504, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, double noundef %i.yu)
  %i.yv = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.yv, ptr %3, align 8, !tbaa !29
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.yv, ptr %i.yw, align 8, !tbaa !237
  %i.yx = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.yx, ptr noundef nonnull %2) #13
  br label %bb.pf

bb.fw:                                            ; preds = %bb.fu
  %i.yy = load ptr, ptr %i.po, align 8, !tbaa !63
  %i.yz = load ptr, ptr %i.pp, align 8, !tbaa !69
  %i.za = call double @N_VWrmsNorm(ptr noundef %i.yy, ptr noundef %i.yz) #13 ; 4 uses
  %i.zb = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not579 = icmp eq i32 %i.zb, 0
  br i1 %.not579, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.zc = load i32, ptr %i.ps, align 8, !tbaa !239
  %.not580 = icmp eq i32 %i.zc, 0
  br i1 %.not580, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zd = load ptr, ptr %i.pt, align 8, !tbaa !63
  %i.ze = load ptr, ptr %i.pu, align 8, !tbaa !141
  %i.zf = call double @N_VWrmsNorm(ptr noundef %i.zd, ptr noundef %i.ze) #13 ; 2 uses
  %i.zg = fcmp ogt double %i.za, %i.zf
  %..i600 = select i1 %i.zg, double %i.za, double %i.zf
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %.0512 = phi double [ %..i600, %bb.fy ], [ %i.za, %bb.fx ], [ %i.za, %bb.fw ] ; 4 uses
  %i.zh = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not581 = icmp eq i32 %i.zh, 0
  br i1 %.not581, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zi = load i32, ptr %i.qd, align 8, !tbaa !263
  %.not582 = icmp eq i32 %i.zi, 0
  br i1 %.not582, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zj = load ptr, ptr %i.pw, align 8, !tbaa !164
  %i.zk = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.zl = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.zm = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.zn = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.zl, ptr noundef %i.zj, ptr noundef %i.zk, ptr noundef %i.zm) #13 ; 0 uses
  %i.zo = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !29 ; 3 uses
  %i.zq = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.zr = icmp sgt i32 %i.zq, 1
  br i1 %i.zr, label %.lr.ph.preheader.i.i, label %cvSensUpdateNorm.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.gb
  %wide.trip.count.i.i = zext nneg i32 %i.zq to i64
  %i.zs = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %i.zs, 3                    ; 3 uses
  %i.zt = add nsw i32 %i.zq, -2
  %i.zu = icmp ult i32 %i.zt, 3
  br i1 %i.zu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.zs, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.016.i.i = phi double [ %i.zp, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.3, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i.i
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !29 ; 2 uses
  %i.zx = fcmp ogt double %i.zw, %.016.i.i
  %.1.i.i = select i1 %i.zx, double %i.zw, double %.016.i.i ; 2 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !29 ; 2 uses
  %i.aab = fcmp ogt double %i.aaa, %.1.i.i
  %.1.i.i.1 = select i1 %i.aab, double %i.aaa, double %.1.i.i ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i.i
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !29 ; 2 uses
  %i.aaf = fcmp ogt double %i.aae, %.1.i.i.1
  %.1.i.i.2 = select i1 %i.aaf, double %i.aae, double %.1.i.i.1 ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !29 ; 2 uses
  %i.aaj = fcmp ogt double %i.aai, %.1.i.i.2
  %.1.i.i.3 = select i1 %i.aaj, double %i.aai, double %.1.i.i.2 ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cvSensUpdateNorm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

cvSensUpdateNorm.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cvSensUpdateNorm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %cvSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %.016.i.i.epil.init = phi double [ %i.zp, %.lr.ph.preheader.i.i ], [ %.1.i.i.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %lcmp.mod1150 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1150)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.016.i.i.epil = phi double [ %.016.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %.1.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i.i.epil
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !29 ; 2 uses
  %i.aam = fcmp ogt double %i.aal, %.016.i.i.epil
  %.1.i.i.epil = select i1 %i.aam, double %i.aal, double %.016.i.i.epil ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cvSensUpdateNorm.exit, label %.lr.ph.i.i.epil, !llvm.loop !264

cvSensUpdateNorm.exit:                            ; preds = %cvSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.gb
  %.0.lcssa.i.i = phi double [ %i.zp, %bb.gb ], [ %.1.i.i.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %i.aan = fcmp ogt double %.0512, %.0.lcssa.i.i
  %..i601 = select i1 %i.aan, double %.0512, double %.0.lcssa.i.i
  br label %bb.gc

bb.gc:                                            ; preds = %cvSensUpdateNorm.exit, %bb.ga, %bb.fz
  %.1 = phi double [ %..i601, %cvSensUpdateNorm.exit ], [ %.0512, %bb.ga ], [ %.0512, %bb.fz ] ; 4 uses
  %i.aao = load i32, ptr %i.py, align 8, !tbaa !212
  %.not583 = icmp eq i32 %i.aao, 0
  br i1 %.not583, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aap = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not584 = icmp eq i32 %i.aap, 0
  br i1 %.not584, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aaq = load ptr, ptr %i.qa, align 8, !tbaa !164
  %i.aar = load ptr, ptr %i.qb, align 8, !tbaa !203
  %i.aas = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.aat = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.aau = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.aas, ptr noundef %i.aaq, ptr noundef %i.aar, ptr noundef %i.aat) #13 ; 0 uses
  %i.aav = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !29 ; 3 uses
  %i.aax = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.aay = icmp sgt i32 %i.aax, 1
  br i1 %i.aay, label %.lr.ph.preheader.i.i604, label %cvQuadSensUpdateNorm.exit

.lr.ph.preheader.i.i604:                          ; preds = %bb.ge
  %wide.trip.count.i.i605 = zext nneg i32 %i.aax to i64
  %i.aaz = add nsw i64 %wide.trip.count.i.i605, -1 ; 2 uses
  %xtraiter1151 = and i64 %i.aaz, 3               ; 3 uses
  %i.aba = add nsw i32 %i.aax, -2
  %i.abb = icmp ult i32 %i.aba, 3
  br i1 %i.abb, label %.lr.ph.i.i606.epil.preheader, label %.lr.ph.preheader.i.i604.new

.lr.ph.preheader.i.i604.new:                      ; preds = %.lr.ph.preheader.i.i604
  %unroll_iter1156 = and i64 %i.aaz, -4
  br label %.lr.ph.i.i606

.lr.ph.i.i606:                                    ; preds = %.lr.ph.i.i606, %.lr.ph.preheader.i.i604.new
  %indvars.iv.i.i607 = phi i64 [ 1, %.lr.ph.preheader.i.i604.new ], [ %indvars.iv.next.i.i610.3, %.lr.ph.i.i606 ] ; 5 uses
  %.016.i.i608 = phi double [ %i.aaw, %.lr.ph.preheader.i.i604.new ], [ %.1.i.i609.3, %.lr.ph.i.i606 ] ; 2 uses
  %niter1157 = phi i64 [ 0, %.lr.ph.preheader.i.i604.new ], [ %niter1157.next.3, %.lr.ph.i.i606 ]
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv.i.i607
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !29 ; 2 uses
  %i.abe = fcmp ogt double %i.abd, %.016.i.i608
  %.1.i.i609 = select i1 %i.abe, double %i.abd, double %.016.i.i608 ; 2 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv.i.i607
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !29 ; 2 uses
  %i.abi = fcmp ogt double %i.abh, %.1.i.i609
  %.1.i.i609.1 = select i1 %i.abi, double %i.abh, double %.1.i.i609 ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv.i.i607
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !29 ; 2 uses
  %i.abm = fcmp ogt double %i.abl, %.1.i.i609.1
  %.1.i.i609.2 = select i1 %i.abm, double %i.abl, double %.1.i.i609.1 ; 2 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv.i.i607
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !29 ; 2 uses
  %i.abq = fcmp ogt double %i.abp, %.1.i.i609.2
  %.1.i.i609.3 = select i1 %i.abq, double %i.abp, double %.1.i.i609.2 ; 3 uses
  %indvars.iv.next.i.i610.3 = add nuw nsw i64 %indvars.iv.i.i607, 4 ; 2 uses
  %niter1157.next.3 = add nuw nsw i64 %niter1157, 4 ; 2 uses
  %niter1157.ncmp.3 = icmp eq i64 %niter1157.next.3, %unroll_iter1156
  br i1 %niter1157.ncmp.3, label %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i606

cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i.i606
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1151, 0
  br i1 %lcmp.mod1153.not, label %cvQuadSensUpdateNorm.exit, label %.lr.ph.i.i606.epil.preheader

.lr.ph.i.i606.epil.preheader:                     ; preds = %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i604
  %indvars.iv.i.i607.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i604 ], [ %indvars.iv.next.i.i610.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %.016.i.i608.epil.init = phi double [ %i.aaw, %.lr.ph.preheader.i.i604 ], [ %.1.i.i609.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %lcmp.mod1155 = icmp ne i64 %xtraiter1151, 0
  call void @llvm.assume(i1 %lcmp.mod1155)
  br label %.lr.ph.i.i606.epil

.lr.ph.i.i606.epil:                               ; preds = %.lr.ph.i.i606.epil, %.lr.ph.i.i606.epil.preheader
  %indvars.iv.i.i607.epil = phi i64 [ %indvars.iv.i.i607.epil.init, %.lr.ph.i.i606.epil.preheader ], [ %indvars.iv.next.i.i610.epil, %.lr.ph.i.i606.epil ] ; 2 uses
  %.016.i.i608.epil = phi double [ %.016.i.i608.epil.init, %.lr.ph.i.i606.epil.preheader ], [ %.1.i.i609.epil, %.lr.ph.i.i606.epil ] ; 2 uses
  %epil.iter1152 = phi i64 [ 0, %.lr.ph.i.i606.epil.preheader ], [ %epil.iter1152.next, %.lr.ph.i.i606.epil ]
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv.i.i607.epil
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !29 ; 2 uses
  %i.abt = fcmp ogt double %i.abs, %.016.i.i608.epil
  %.1.i.i609.epil = select i1 %i.abt, double %i.abs, double %.016.i.i608.epil ; 2 uses
  %indvars.iv.next.i.i610.epil = add nuw nsw i64 %indvars.iv.i.i607.epil, 1
  %epil.iter1152.next = add i64 %epil.iter1152, 1 ; 2 uses
  %epil.iter1152.cmp.not = icmp eq i64 %epil.iter1152.next, %xtraiter1151
  br i1 %epil.iter1152.cmp.not, label %cvQuadSensUpdateNorm.exit, label %.lr.ph.i.i606.epil, !llvm.loop !266

cvQuadSensUpdateNorm.exit:                        ; preds = %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.i.i606.epil, %bb.ge
  %.0.lcssa.i.i602 = phi double [ %i.aaw, %bb.ge ], [ %.1.i.i609.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ], [ %.1.i.i609.epil, %.lr.ph.i.i606.epil ] ; 2 uses
  %i.abu = fcmp ogt double %.1, %.0.lcssa.i.i602
  %..i603 = select i1 %i.abu, double %.1, double %.0.lcssa.i.i602
  br label %bb.gf

bb.gf:                                            ; preds = %cvQuadSensUpdateNorm.exit, %bb.gd, %bb.gc
  %.2 = phi double [ %..i603, %cvQuadSensUpdateNorm.exit ], [ %.1, %bb.gd ], [ %.1, %bb.gc ]
  %i.abv = load double, ptr %i.qg, align 8, !tbaa !24
  %i.abw = fmul double %.2, %i.abv                ; 2 uses
  store double %i.abw, ptr %i.qh, align 8, !tbaa !112
  %i.abx = fcmp ogt double %i.abw, 1.000000e+00
  br i1 %i.abx, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.aby = load double, ptr %i.qi, align 8, !tbaa !103
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 3530, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.58, double noundef %i.aby)
  %i.abz = load double, ptr %i.qi, align 8, !tbaa !103 ; 2 uses
  store double %i.abz, ptr %3, align 8, !tbaa !29
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store double %i.abz, ptr %i.aca, align 8, !tbaa !237
  %i.acb = load ptr, ptr %i.po, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.acb, ptr noundef nonnull %2) #13
  %i.acc = load double, ptr %i.qh, align 8, !tbaa !112
  %i.acd = fmul double %i.acc, 2.000000e+00
  store double %i.acd, ptr %i.qh, align 8, !tbaa !112
  br label %bb.pf

bb.gh:                                            ; preds = %bb.gf
  store double 1.000000e+00, ptr %i.qh, align 8, !tbaa !112
  %i.ace = load double, ptr %i.qi, align 8, !tbaa !103 ; 3 uses
  %i.acf = load double, ptr %i.pj, align 8, !tbaa !250 ; 2 uses
  %i.acg = fadd double %i.ace, %i.acf
  %i.ach = fcmp oeq double %i.acg, %i.ace
  br i1 %i.ach, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  %i.aci = load i32, ptr %i.qj, align 8, !tbaa !119 ; 2 uses
  %i.acj = add nsw i32 %i.aci, 1                  ; 2 uses
  store i32 %i.acj, ptr %i.qj, align 8, !tbaa !119
  %i.ack = load i32, ptr %i.qk, align 8, !tbaa !28 ; 2 uses
  %.not585.not = icmp slt i32 %i.aci, %i.ack
  br i1 %.not585.not, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 3546, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, double noundef %i.ace, double noundef %i.acf)
  %.pre781 = load i32, ptr %i.qj, align 8, !tbaa !119
  %.pre782 = load i32, ptr %i.qk, align 8, !tbaa !28
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.acl = phi i32 [ %.pre782, %bb.gj ], [ %i.ack, %bb.gi ]
  %i.acm = phi i32 [ %.pre781, %bb.gj ], [ %i.acj, %bb.gi ]
  %i.acn = icmp eq i32 %i.acm, %i.acl
  br i1 %i.acn, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 3551, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.60)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gk, %bb.gl, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  %i.aco = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not.i612 = icmp eq i32 %i.aco, 0
  br i1 %.not.i612, label %.thread.i613, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.acp = load i32, ptr %i.ql, align 4, !tbaa !157 ; 2 uses
  %i.acq = icmp eq i32 %i.acp, 2
  %i.acr = icmp eq i32 %i.acp, 3
  br label %.thread.i613

.thread.i613:                                     ; preds = %bb.gn, %bb.gm
  %i.acs = phi i1 [ %i.acq, %bb.gn ], [ false, %bb.gm ] ; 3 uses
  %i.act = phi i1 [ %i.acr, %bb.gn ], [ false, %bb.gm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #13
  store i32 0, ptr %i.u, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #13
  store i32 0, ptr %i.v, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #13
  store i32 0, ptr %i.w, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #13
  store i32 0, ptr %i.x, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #13
  store i32 0, ptr %i.y, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #13
  store i32 0, ptr %i.z, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #13
  store i32 0, ptr %i.aa, align 4, !tbaa !67
  br i1 %i.act, label %.preheader348.i, label %.loopexit349.i

.preheader348.i:                                  ; preds = %.thread.i613
  %i.acu = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.acv = icmp sgt i32 %i.acu, 0
  br i1 %i.acv, label %.lr.ph.i, label %.loopexit349.i

.lr.ph.i:                                         ; preds = %.preheader348.i
  %i.acw = load ptr, ptr %i.qm, align 8, !tbaa !184
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.go ] ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %indvars.iv.i
  store i32 0, ptr %i.acx, align 4, !tbaa !67
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.acy = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.acz = sext i32 %i.acy to i64
  %i.ada = icmp slt i64 %indvars.iv.next.i, %i.acz
  br i1 %i.ada, label %bb.go, label %.loopexit349.i

.loopexit349.i:                                   ; preds = %bb.go, %.preheader348.i, %.thread.i613
  %i.adb = load i64, ptr %i.aj, align 8, !tbaa !236
  %i.adc = icmp sgt i64 %i.adb, 0
  br i1 %i.adc, label %bb.gp, label %bb.gu

bb.gp:                                            ; preds = %.loopexit349.i
  %i.add = load double, ptr %i.qn, align 8, !tbaa !254
  %i.ade = load double, ptr %i.pj, align 8, !tbaa !250
  %i.adf = fcmp une double %i.add, %i.ade
  br i1 %i.adf, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  %i.adg = load i32, ptr %i.qo, align 4, !tbaa !267 ; 3 uses
  %i.adh = load i32, ptr %i.pl, align 8, !tbaa !105 ; 2 uses
  %.not.i.i = icmp eq i32 %i.adg, %i.adh
  br i1 %.not.i.i, label %cvAdjustParams.exit.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.adi = load i32, ptr %i.qp, align 8, !tbaa !259
  %.not14.i.i = icmp eq i32 %i.adi, 0
  br i1 %.not14.i.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.adj = sub nsw i32 %i.adg, %i.adh
  call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %i.adj)
  %.pre.i.i = load i32, ptr %i.qo, align 4, !tbaa !267
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.adk = phi i32 [ %.pre.i.i, %bb.gs ], [ %i.adg, %bb.gr ] ; 2 uses
  store i32 %i.adk, ptr %i.pl, align 8, !tbaa !105
  %i.adl = add nsw i32 %i.adk, 1                  ; 2 uses
  store i32 %i.adl, ptr %i.qq, align 8, !tbaa !106
  store i32 %i.adl, ptr %i.qr, align 4, !tbaa !107
  br label %cvAdjustParams.exit.i

cvAdjustParams.exit.i:                            ; preds = %bb.gt, %bb.gq
  call void @cvRescale(ptr noundef nonnull %0)
  br label %bb.gu

bb.gu:                                            ; preds = %cvAdjustParams.exit.i, %bb.gp, %.loopexit349.i
  %i.adm = load i32, ptr %i.qs, align 8, !tbaa !242
  %.not214.i = icmp eq i32 %i.adm, 0
  br i1 %.not214.i, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.adn = load ptr, ptr %i.qt, align 8, !tbaa !243 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !268 ; 2 uses
  %i.adq = icmp sgt i64 %i.adp, 0
  br i1 %i.adq, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.adr = load i64, ptr %i.aj, align 8, !tbaa !236 ; 2 uses
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 24
end_hunk_1
begin_hunk_2_@CVode:bb.a
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.azu = load ptr, ptr %i.tj, align 8, !tbaa !308
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.azu) #13
  store i32 1, ptr %i.te, align 8, !tbaa !309
  %i.azv = load ptr, ptr %i.tk, align 8, !tbaa !196
  %i.azw = load ptr, ptr %i.tl, align 8, !tbaa !310
  %i.azx = load ptr, ptr %i.tj, align 8, !tbaa !308
  %i.azy = load ptr, ptr %i.tm, align 8, !tbaa !311
  %i.azz = load double, ptr %i.rg, align 8, !tbaa !29
  %i.baa = call i32 @SUNNonlinSolSolve(ptr noundef %i.azv, ptr noundef %i.azw, ptr noundef %i.azx, ptr noundef %i.azy, double noundef %i.azz, i32 noundef 0, ptr noundef nonnull %0) #13 ; 2 uses
  %i.bab = load ptr, ptr %i.tk, align 8, !tbaa !196
  %i.bac = call i32 @SUNNonlinSolGetNumIters(ptr noundef %i.bab, ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.bad = load i64, ptr %i.k, align 8, !tbaa !91
  %i.bae = load i64, ptr %i.tn, align 8, !tbaa !167
  %i.baf = add nsw i64 %i.bae, %i.bad
  store i64 %i.baf, ptr %i.tn, align 8, !tbaa !167
  %i.bag = load ptr, ptr %i.tk, align 8, !tbaa !196
  %i.bah = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %i.bag, ptr noundef nonnull %i.l) #13 ; 0 uses
  %i.bai = load i64, ptr %i.l, align 8, !tbaa !91
  %i.baj = load i64, ptr %i.to, align 8, !tbaa !168
  %i.bak = add nsw i64 %i.baj, %i.bai
  store i64 %i.bak, ptr %i.to, align 8, !tbaa !168
  store i32 0, ptr %i.te, align 8, !tbaa !309
  %.not.i253.i = icmp eq i32 %i.baa, 0
  br i1 %.not.i253.i, label %bb.jv, label %cvStgrNls.exit.i

bb.jv:                                            ; preds = %bb.ju
  %i.bal = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bam = load ptr, ptr %i.pw, align 8, !tbaa !164
  %i.ban = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bao = load ptr, ptr %i.sd, align 8, !tbaa !175
  %i.bap = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bal, double noundef 1.000000e+00, ptr noundef %i.bam, double noundef 1.000000e+00, ptr noundef %i.ban, ptr noundef %i.bao) #13 ; 0 uses
  store i32 0, ptr %i.sf, align 8, !tbaa !301
  br label %cvStgrNls.exit.i

cvStgrNls.exit.i:                                 ; preds = %bb.jv, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  store i32 %i.baa, ptr %i.t, align 4, !tbaa !67
  %i.baq = call fastcc i32 @cvHandleNFlag(ptr noundef nonnull %0, ptr noundef %i.t, double noundef %i.adw, ptr noundef nonnull %i.x, ptr noundef nonnull %i.tp)
  br label %.loopexit.i

bb.jw:                                            ; preds = %cvStgr1Nls.exit.i
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %i.bar = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bas = sext i32 %i.bar to i64
  %i.bat = icmp slt i64 %indvars.iv.next417.i, %i.bas
  br i1 %i.bat, label %.lr.ph385.i, label %.thread341.i

.lr.ph385.i:                                      ; preds = %.preheader346.i, %bb.jw
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i, %bb.jw ], [ 0, %.preheader346.i ] ; 13 uses
  %i.bau = trunc nuw nsw i64 %indvars.iv416.i to i32
  store i32 %i.bau, ptr %i.td, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i64 0, ptr %i.i, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i64 0, ptr %i.j, align 8, !tbaa !91
  %i.bav = load ptr, ptr %i.rl, align 8, !tbaa !287
  %i.baw = icmp eq ptr %i.bav, null
  br i1 %i.baw, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %.lr.ph385.i
  store double 1.000000e+00, ptr %i.rs, align 8, !tbaa !307
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %.lr.ph385.i
  %i.bax = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bay = getelementptr inbounds nuw [8 x i8], ptr %i.bax, i64 %indvars.iv416.i
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !63
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.baz) #13
  store i32 1, ptr %i.te, align 8, !tbaa !309
  %i.bba = load ptr, ptr %i.tf, align 8, !tbaa !197
  %i.bbb = load ptr, ptr %i.pw, align 8, !tbaa !164
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.bbb, i64 %indvars.iv416.i
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !63
  %i.bbe = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %i.bbe, i64 %indvars.iv416.i
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !63
  %i.bbh = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.bbh, i64 %indvars.iv416.i
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !63
  %i.bbk = load double, ptr %i.rg, align 8, !tbaa !29
  %i.bbl = call i32 @SUNNonlinSolSolve(ptr noundef %i.bba, ptr noundef %i.bbd, ptr noundef %i.bbg, ptr noundef %i.bbj, double noundef %i.bbk, i32 noundef 0, ptr noundef nonnull %0) #13 ; 2 uses
  %i.bbm = load ptr, ptr %i.tf, align 8, !tbaa !197
  %i.bbn = call i32 @SUNNonlinSolGetNumIters(ptr noundef %i.bbm, ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.bbo = load i64, ptr %i.i, align 8, !tbaa !91
  %i.bbp = load ptr, ptr %i.tg, align 8, !tbaa !186
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %indvars.iv416.i ; 2 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !91
  %i.bbs = add nsw i64 %i.bbr, %i.bbo
  store i64 %i.bbs, ptr %i.bbq, align 8, !tbaa !91
  %i.bbt = load ptr, ptr %i.tf, align 8, !tbaa !197
  %i.bbu = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %i.bbt, ptr noundef nonnull %i.j) #13 ; 0 uses
  %i.bbv = load i64, ptr %i.j, align 8, !tbaa !91
  %i.bbw = load ptr, ptr %i.th, align 8, !tbaa !187
  %i.bbx = getelementptr inbounds nuw [8 x i8], ptr %i.bbw, i64 %indvars.iv416.i ; 2 uses
  %i.bby = load i64, ptr %i.bbx, align 8, !tbaa !91
  %i.bbz = add nsw i64 %i.bby, %i.bbv
  store i64 %i.bbz, ptr %i.bbx, align 8, !tbaa !91
  store i32 0, ptr %i.te, align 8, !tbaa !309
  %.not.i254.i = icmp eq i32 %i.bbl, 0
  br i1 %.not.i254.i, label %bb.jz, label %cvStgr1Nls.exit.i

bb.jz:                                            ; preds = %bb.jy
  %i.bca = load ptr, ptr %i.pw, align 8, !tbaa !164
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.bca, i64 %indvars.iv416.i
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !63
  %i.bcd = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %i.bcd, i64 %indvars.iv416.i
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !63
  %i.bcg = load ptr, ptr %i.sd, align 8, !tbaa !175
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.bcg, i64 %indvars.iv416.i
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !63
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bcc, double noundef 1.000000e+00, ptr noundef %i.bcf, ptr noundef %i.bci) #13
  store i32 0, ptr %i.sf, align 8, !tbaa !301
  br label %cvStgr1Nls.exit.i

cvStgr1Nls.exit.i:                                ; preds = %bb.jz, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  store i32 %i.bbl, ptr %i.t, align 4, !tbaa !67
  %i.bcj = load ptr, ptr %i.qm, align 8, !tbaa !184
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %indvars.iv416.i
  %i.bcl = load ptr, ptr %i.ti, align 8, !tbaa !185
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %i.bcl, i64 %indvars.iv416.i
  %i.bcn = call fastcc i32 @cvHandleNFlag(ptr noundef nonnull %0, ptr noundef %i.t, double noundef %i.adw, ptr noundef %i.bck, ptr noundef %i.bcm) ; 2 uses
  %.not228.i = icmp eq i32 %i.bcn, 2
  br i1 %.not228.i, label %bb.jw, label %.loopexit.i

.loopexit.i:                                      ; preds = %cvStgr1Nls.exit.i, %cvStgrNls.exit.i
  %.2189.i = phi i32 [ %i.baq, %cvStgrNls.exit.i ], [ %i.bcn, %cvStgr1Nls.exit.i ] ; 2 uses
  switch i32 %.2189.i, label %cvStep.exit [
    i32 3, label %.backedge.i
    i32 2, label %.thread341.i
  ]

.thread341.i:                                     ; preds = %bb.jw, %.loopexit.i, %.preheader346.i
  %i.bco = load i32, ptr %i.qd, align 8, !tbaa !263
  %.not230.i = icmp eq i32 %i.bco, 0
  br i1 %.not230.i, label %bb.kf, label %bb.ka

bb.ka:                                            ; preds = %.thread341.i
  %i.bcp = load i32, ptr %i.tq, align 8, !tbaa !312
  %.not231.i = icmp eq i32 %i.bcp, 0
  br i1 %.not231.i, label %bb.kb, label %._crit_edge430.i

._crit_edge430.i:                                 ; preds = %bb.ka
  %.pre.i617 = load double, ptr %i.tr, align 8, !tbaa !313
  br label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.bcq = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bcr = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.bcs = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bct = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.bcu = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.bcs, ptr noundef %i.bcq, ptr noundef %i.bcr, ptr noundef %i.bct) #13 ; 0 uses
  %i.bcv = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.bcw = load double, ptr %i.bcv, align 8, !tbaa !29 ; 3 uses
  %i.bcx = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.bcy = icmp sgt i32 %i.bcx, 1
  br i1 %i.bcy, label %.lr.ph.preheader.i.i619, label %cvSensNorm.exit.i

.lr.ph.preheader.i.i619:                          ; preds = %bb.kb
  %wide.trip.count.i.i620 = zext nneg i32 %i.bcx to i64
  %i.bcz = add nsw i64 %wide.trip.count.i.i620, -1 ; 2 uses
  %xtraiter1186 = and i64 %i.bcz, 3               ; 3 uses
  %i.bda = add nsw i32 %i.bcx, -2
  %i.bdb = icmp ult i32 %i.bda, 3
  br i1 %i.bdb, label %.lr.ph.i.i621.epil.preheader, label %.lr.ph.preheader.i.i619.new

.lr.ph.preheader.i.i619.new:                      ; preds = %.lr.ph.preheader.i.i619
  %unroll_iter1191 = and i64 %i.bcz, -4
  br label %.lr.ph.i.i621

.lr.ph.i.i621:                                    ; preds = %.lr.ph.i.i621, %.lr.ph.preheader.i.i619.new
  %indvars.iv.i256.i = phi i64 [ 1, %.lr.ph.preheader.i.i619.new ], [ %indvars.iv.next.i258.i.3, %.lr.ph.i.i621 ] ; 5 uses
  %.016.i.i622 = phi double [ %i.bcw, %.lr.ph.preheader.i.i619.new ], [ %.1.i257.i.3, %.lr.ph.i.i621 ] ; 2 uses
  %niter1192 = phi i64 [ 0, %.lr.ph.preheader.i.i619.new ], [ %niter1192.next.3, %.lr.ph.i.i621 ]
  %i.bdc = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %indvars.iv.i256.i
  %i.bdd = load double, ptr %i.bdc, align 8, !tbaa !29 ; 2 uses
  %i.bde = fcmp ogt double %i.bdd, %.016.i.i622
  %.1.i257.i = select i1 %i.bde, double %i.bdd, double %.016.i.i622 ; 2 uses
  %i.bdf = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %indvars.iv.i256.i
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 8
  %i.bdh = load double, ptr %i.bdg, align 8, !tbaa !29 ; 2 uses
  %i.bdi = fcmp ogt double %i.bdh, %.1.i257.i
  %.1.i257.i.1 = select i1 %i.bdi, double %i.bdh, double %.1.i257.i ; 2 uses
  %i.bdj = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %indvars.iv.i256.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdl = load double, ptr %i.bdk, align 8, !tbaa !29 ; 2 uses
  %i.bdm = fcmp ogt double %i.bdl, %.1.i257.i.1
  %.1.i257.i.2 = select i1 %i.bdm, double %i.bdl, double %.1.i257.i.1 ; 2 uses
  %i.bdn = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %indvars.iv.i256.i
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 24
  %i.bdp = load double, ptr %i.bdo, align 8, !tbaa !29 ; 2 uses
  %i.bdq = fcmp ogt double %i.bdp, %.1.i257.i.2
  %.1.i257.i.3 = select i1 %i.bdq, double %i.bdp, double %.1.i257.i.2 ; 3 uses
  %indvars.iv.next.i258.i.3 = add nuw nsw i64 %indvars.iv.i256.i, 4 ; 2 uses
  %niter1192.next.3 = add nuw nsw i64 %niter1192, 4 ; 2 uses
  %niter1192.ncmp.3 = icmp eq i64 %niter1192.next.3, %unroll_iter1191
  br i1 %niter1192.ncmp.3, label %cvSensNorm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i621

cvSensNorm.exit.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i621
  %lcmp.mod1188.not = icmp eq i64 %xtraiter1186, 0
  br i1 %lcmp.mod1188.not, label %cvSensNorm.exit.i, label %.lr.ph.i.i621.epil.preheader

.lr.ph.i.i621.epil.preheader:                     ; preds = %cvSensNorm.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i619
  %indvars.iv.i256.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i619 ], [ %indvars.iv.next.i258.i.3, %cvSensNorm.exit.i.loopexit.unr-lcssa ]
  %.016.i.i622.epil.init = phi double [ %i.bcw, %.lr.ph.preheader.i.i619 ], [ %.1.i257.i.3, %cvSensNorm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1190 = icmp ne i64 %xtraiter1186, 0
  call void @llvm.assume(i1 %lcmp.mod1190)
  br label %.lr.ph.i.i621.epil

.lr.ph.i.i621.epil:                               ; preds = %.lr.ph.i.i621.epil, %.lr.ph.i.i621.epil.preheader
  %indvars.iv.i256.i.epil = phi i64 [ %indvars.iv.i256.i.epil.init, %.lr.ph.i.i621.epil.preheader ], [ %indvars.iv.next.i258.i.epil, %.lr.ph.i.i621.epil ] ; 2 uses
  %.016.i.i622.epil = phi double [ %.016.i.i622.epil.init, %.lr.ph.i.i621.epil.preheader ], [ %.1.i257.i.epil, %.lr.ph.i.i621.epil ] ; 2 uses
  %epil.iter1187 = phi i64 [ 0, %.lr.ph.i.i621.epil.preheader ], [ %epil.iter1187.next, %.lr.ph.i.i621.epil ]
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %indvars.iv.i256.i.epil
  %i.bds = load double, ptr %i.bdr, align 8, !tbaa !29 ; 2 uses
  %i.bdt = fcmp ogt double %i.bds, %.016.i.i622.epil
  %.1.i257.i.epil = select i1 %i.bdt, double %i.bds, double %.016.i.i622.epil ; 2 uses
  %indvars.iv.next.i258.i.epil = add nuw nsw i64 %indvars.iv.i256.i.epil, 1
  %epil.iter1187.next = add i64 %epil.iter1187, 1 ; 2 uses
  %epil.iter1187.cmp.not = icmp eq i64 %epil.iter1187.next, %xtraiter1186
  br i1 %epil.iter1187.cmp.not, label %cvSensNorm.exit.i, label %.lr.ph.i.i621.epil, !llvm.loop !314

cvSensNorm.exit.i:                                ; preds = %cvSensNorm.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i621.epil, %bb.kb
  %.0.lcssa.i.i618 = phi double [ %i.bcw, %bb.kb ], [ %.1.i257.i.3, %cvSensNorm.exit.i.loopexit.unr-lcssa ], [ %.1.i257.i.epil, %.lr.ph.i.i621.epil ] ; 2 uses
  store double %.0.lcssa.i.i618, ptr %i.tr, align 8, !tbaa !313
  br label %bb.kc

bb.kc:                                            ; preds = %cvSensNorm.exit.i, %._crit_edge430.i
  %i.bdu = phi double [ %.pre.i617, %._crit_edge430.i ], [ %.0.lcssa.i.i618, %cvSensNorm.exit.i ]
  %i.bdv = call fastcc i32 @cvDoErrorTest(ptr noundef nonnull %0, ptr noundef %i.t, double noundef %i.adw, double noundef %i.bdu, ptr noundef %i.y, ptr noundef %i.ts, ptr noundef %i.r) ; 2 uses
  switch i32 %i.bdv, label %cvStep.exit [
    i32 5, label %.backedge.i
    i32 0, label %bb.kd
  ]

bb.kd:                                            ; preds = %bb.kc
  %i.bdw = load double, ptr %i.r, align 8, !tbaa !29 ; 2 uses
  %i.bdx = load double, ptr %i.p, align 8, !tbaa !29
  %i.bdy = fcmp ogt double %i.bdw, %i.bdx
  br i1 %i.bdy, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  store double %i.bdw, ptr %i.p, align 8, !tbaa !29
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %.thread341.i, %bb.jm
  %i.bdz = load i32, ptr %i.py, align 8, !tbaa !212
  %.not233.i = icmp eq i32 %i.bdz, 0
  br i1 %.not233.i, label %.loopexit347.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  store i32 0, ptr %i.w, align 4, !tbaa !67
  store i32 0, ptr %i.u, align 4, !tbaa !67
  %i.bea = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not234.i = icmp eq i32 %i.bea, 0
  br i1 %.not234.i, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  store i32 0, ptr %i.z, align 4, !tbaa !67
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  br i1 %i.acs, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  store i32 0, ptr %i.y, align 4, !tbaa !67
  store i32 0, ptr %i.x, align 4, !tbaa !67
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %.pre431.i = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  br i1 %i.act, label %.preheader345.i, label %bb.km

.preheader345.i:                                  ; preds = %bb.kk
  %i.beb = icmp sgt i32 %.pre431.i, 0
  br i1 %i.beb, label %.lr.ph387.i, label %._crit_edge.i616

.lr.ph387.i:                                      ; preds = %.preheader345.i
  %i.bec = load ptr, ptr %i.qm, align 8, !tbaa !184
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kl, %.lr.ph387.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph387.i ], [ %indvars.iv.next420.i, %bb.kl ] ; 2 uses
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.bec, i64 %indvars.iv419.i
  store i32 0, ptr %i.bed, align 4, !tbaa !67
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 2 uses
  %i.bee = load i32, ptr %i.qe, align 8, !tbaa !156 ; 2 uses
  %i.bef = sext i32 %i.bee to i64
  %i.beg = icmp slt i64 %indvars.iv.next420.i, %i.bef
  br i1 %i.beg, label %bb.kl, label %._crit_edge.i616

._crit_edge.i616:                                 ; preds = %bb.kl, %.preheader345.i
  %i.beh = phi i32 [ %.pre431.i, %.preheader345.i ], [ %i.bee, %bb.kl ]
  store i32 0, ptr %i.y, align 4, !tbaa !67
  br label %bb.km

bb.km:                                            ; preds = %._crit_edge.i616, %bb.kk
  %i.bei = phi i32 [ %i.beh, %._crit_edge.i616 ], [ %.pre431.i, %bb.kk ]
  %i.bej = load ptr, ptr %i.tt, align 8, !tbaa !207
  %i.bek = load double, ptr %i.qi, align 8, !tbaa !103
  %i.bel = load ptr, ptr %i.af, align 8, !tbaa !235
  %i.bem = load ptr, ptr %i.sd, align 8, !tbaa !175
  %i.ben = load ptr, ptr %i.sw, align 8, !tbaa !201
  %i.beo = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bep = load ptr, ptr %i.su, align 8, !tbaa !72
  %i.beq = load ptr, ptr %i.sj, align 8, !tbaa !95
  %i.ber = load ptr, ptr %i.tv, align 8, !tbaa !144
  %i.bes = call i32 %i.bej(i32 noundef %i.bei, double noundef %i.bek, ptr noundef %i.bel, ptr noundef %i.bem, ptr noundef %i.ben, ptr noundef %i.beo, ptr noundef %i.bep, ptr noundef %i.beq, ptr noundef %i.ber) #13, !inline_history !315 ; 2 uses
  %i.bet = load i64, ptr %i.tw, align 8, !tbaa !246
  %i.beu = add nsw i64 %i.bet, 1
  store i64 %i.beu, ptr %i.tw, align 8, !tbaa !246
  %i.bev = icmp slt i32 %i.bes, 0
  br i1 %i.bev, label %cvQuadSensNls.exit.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.not.i259.i = icmp eq i32 %i.bes, 0
  br i1 %.not.i259.i, label %.preheader.i260.i, label %cvQuadSensNls.exit.i

.preheader.i260.i:                                ; preds = %bb.kn
  %i.bew = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bex = icmp sgt i32 %i.bew, 0
  br i1 %i.bex, label %.lr.ph.i261.i, label %cvQuadSensNls.exit.i

.lr.ph.i261.i:                                    ; preds = %.preheader.i260.i, %.lr.ph.i261.i
  %indvars.iv.i262.i = phi i64 [ %indvars.iv.next.i263.i, %.lr.ph.i261.i ], [ 0, %.preheader.i260.i ] ; 7 uses
  %i.bey = load double, ptr %i.pj, align 8, !tbaa !250
  %i.bez = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bfa = getelementptr inbounds nuw [8 x i8], ptr %i.bez, i64 %indvars.iv.i262.i
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !63 ; 2 uses
  %i.bfc = load ptr, ptr %i.tx, align 8, !tbaa !164
  %i.bfd = getelementptr inbounds nuw [8 x i8], ptr %i.bfc, i64 %indvars.iv.i262.i
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !63
  call void @N_VLinearSum(double noundef %i.bey, ptr noundef %i.bfb, double noundef -1.000000e+00, ptr noundef %i.bfe, ptr noundef %i.bfb) #13
  %i.bff = load double, ptr %i.rh, align 8, !tbaa !283
  %i.bfg = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %i.bfg, i64 %indvars.iv.i262.i
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !63 ; 2 uses
  call void @N_VScale(double noundef %i.bff, ptr noundef %i.bfi, ptr noundef %i.bfi) #13
  %i.bfj = load ptr, ptr %i.qa, align 8, !tbaa !164
  %i.bfk = getelementptr inbounds nuw [8 x i8], ptr %i.bfj, i64 %indvars.iv.i262.i
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !63
  %i.bfm = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %i.bfm, i64 %indvars.iv.i262.i
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !63
  %i.bfp = load ptr, ptr %i.ty, align 8, !tbaa !202
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.bfp, i64 %indvars.iv.i262.i
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !63
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bfl, double noundef 1.000000e+00, ptr noundef %i.bfo, ptr noundef %i.bfr) #13
  %indvars.iv.next.i263.i = add nuw nsw i64 %indvars.iv.i262.i, 1 ; 2 uses
  %i.bfs = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = icmp slt i64 %indvars.iv.next.i263.i, %i.bft
  br i1 %i.bfu, label %.lr.ph.i261.i, label %cvQuadSensNls.exit.i

cvQuadSensNls.exit.i:                             ; preds = %.lr.ph.i261.i, %.preheader.i260.i, %bb.kn, %bb.km
  %.034.i.i = phi i32 [ 15, %bb.kn ], [ -51, %bb.km ], [ 0, %.preheader.i260.i ], [ 0, %.lr.ph.i261.i ]
  store i32 %.034.i.i, ptr %i.t, align 4, !tbaa !67
  %i.bfv = call fastcc i32 @cvHandleNFlag(ptr noundef nonnull %0, ptr noundef %i.t, double noundef %i.adw, ptr noundef nonnull %i.u, ptr noundef nonnull %i.sg) ; 2 uses
  switch i32 %i.bfv, label %cvStep.exit [
    i32 3, label %.backedge.i
    i32 2, label %bb.ko
  ]

bb.ko:                                            ; preds = %cvQuadSensNls.exit.i
  %i.bfw = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not236.i = icmp eq i32 %i.bfw, 0
  br i1 %.not236.i, label %.loopexit347.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bfx = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bfy = load ptr, ptr %i.qb, align 8, !tbaa !203
  %i.bfz = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bga = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.bgb = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.bfz, ptr noundef %i.bfx, ptr noundef %i.bfy, ptr noundef %i.bga) #13 ; 0 uses
  %i.bgc = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.bgd = load double, ptr %i.bgc, align 8, !tbaa !29 ; 3 uses
  %i.bge = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.bgf = icmp sgt i32 %i.bge, 1
  br i1 %i.bgf, label %.lr.ph.preheader.i266.i, label %cvQuadSensNorm.exit.i

.lr.ph.preheader.i266.i:                          ; preds = %bb.kp
  %wide.trip.count.i267.i = zext nneg i32 %i.bge to i64
  %i.bgg = add nsw i64 %wide.trip.count.i267.i, -1 ; 2 uses
  %xtraiter1193 = and i64 %i.bgg, 3               ; 3 uses
  %i.bgh = add nsw i32 %i.bge, -2
  %i.bgi = icmp ult i32 %i.bgh, 3
  br i1 %i.bgi, label %.lr.ph.i268.i.epil.preheader, label %.lr.ph.preheader.i266.i.new

.lr.ph.preheader.i266.i.new:                      ; preds = %.lr.ph.preheader.i266.i
  %unroll_iter1198 = and i64 %i.bgg, -4
  br label %.lr.ph.i268.i

.lr.ph.i268.i:                                    ; preds = %.lr.ph.i268.i, %.lr.ph.preheader.i266.i.new
  %indvars.iv.i269.i = phi i64 [ 1, %.lr.ph.preheader.i266.i.new ], [ %indvars.iv.next.i272.i.3, %.lr.ph.i268.i ] ; 5 uses
  %.016.i270.i = phi double [ %i.bgd, %.lr.ph.preheader.i266.i.new ], [ %.1.i271.i.3, %.lr.ph.i268.i ] ; 2 uses
  %niter1199 = phi i64 [ 0, %.lr.ph.preheader.i266.i.new ], [ %niter1199.next.3, %.lr.ph.i268.i ]
  %i.bgj = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %indvars.iv.i269.i
  %i.bgk = load double, ptr %i.bgj, align 8, !tbaa !29 ; 2 uses
  %i.bgl = fcmp ogt double %i.bgk, %.016.i270.i
  %.1.i271.i = select i1 %i.bgl, double %i.bgk, double %.016.i270.i ; 2 uses
  %i.bgm = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %indvars.iv.i269.i
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  %i.bgo = load double, ptr %i.bgn, align 8, !tbaa !29 ; 2 uses
  %i.bgp = fcmp ogt double %i.bgo, %.1.i271.i
  %.1.i271.i.1 = select i1 %i.bgp, double %i.bgo, double %.1.i271.i ; 2 uses
  %i.bgq = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %indvars.iv.i269.i
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16
  %i.bgs = load double, ptr %i.bgr, align 8, !tbaa !29 ; 2 uses
  %i.bgt = fcmp ogt double %i.bgs, %.1.i271.i.1
  %.1.i271.i.2 = select i1 %i.bgt, double %i.bgs, double %.1.i271.i.1 ; 2 uses
  %i.bgu = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %indvars.iv.i269.i
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 24
  %i.bgw = load double, ptr %i.bgv, align 8, !tbaa !29 ; 2 uses
  %i.bgx = fcmp ogt double %i.bgw, %.1.i271.i.2
  %.1.i271.i.3 = select i1 %i.bgx, double %i.bgw, double %.1.i271.i.2 ; 3 uses
  %indvars.iv.next.i272.i.3 = add nuw nsw i64 %indvars.iv.i269.i, 4 ; 2 uses
  %niter1199.next.3 = add nuw nsw i64 %niter1199, 4 ; 2 uses
  %niter1199.ncmp.3 = icmp eq i64 %niter1199.next.3, %unroll_iter1198
  br i1 %niter1199.ncmp.3, label %cvQuadSensNorm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i268.i

cvQuadSensNorm.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i268.i
  %lcmp.mod1195.not = icmp eq i64 %xtraiter1193, 0
  br i1 %lcmp.mod1195.not, label %cvQuadSensNorm.exit.i, label %.lr.ph.i268.i.epil.preheader

.lr.ph.i268.i.epil.preheader:                     ; preds = %cvQuadSensNorm.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i266.i
  %indvars.iv.i269.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i266.i ], [ %indvars.iv.next.i272.i.3, %cvQuadSensNorm.exit.i.loopexit.unr-lcssa ]
  %.016.i270.i.epil.init = phi double [ %i.bgd, %.lr.ph.preheader.i266.i ], [ %.1.i271.i.3, %cvQuadSensNorm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1197 = icmp ne i64 %xtraiter1193, 0
  call void @llvm.assume(i1 %lcmp.mod1197)
  br label %.lr.ph.i268.i.epil

.lr.ph.i268.i.epil:                               ; preds = %.lr.ph.i268.i.epil, %.lr.ph.i268.i.epil.preheader
  %indvars.iv.i269.i.epil = phi i64 [ %indvars.iv.i269.i.epil.init, %.lr.ph.i268.i.epil.preheader ], [ %indvars.iv.next.i272.i.epil, %.lr.ph.i268.i.epil ] ; 2 uses
  %.016.i270.i.epil = phi double [ %.016.i270.i.epil.init, %.lr.ph.i268.i.epil.preheader ], [ %.1.i271.i.epil, %.lr.ph.i268.i.epil ] ; 2 uses
  %epil.iter1194 = phi i64 [ 0, %.lr.ph.i268.i.epil.preheader ], [ %epil.iter1194.next, %.lr.ph.i268.i.epil ]
  %i.bgy = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %indvars.iv.i269.i.epil
  %i.bgz = load double, ptr %i.bgy, align 8, !tbaa !29 ; 2 uses
  %i.bha = fcmp ogt double %i.bgz, %.016.i270.i.epil
  %.1.i271.i.epil = select i1 %i.bha, double %i.bgz, double %.016.i270.i.epil ; 2 uses
  %indvars.iv.next.i272.i.epil = add nuw nsw i64 %indvars.iv.i269.i.epil, 1
  %epil.iter1194.next = add i64 %epil.iter1194, 1 ; 2 uses
  %epil.iter1194.cmp.not = icmp eq i64 %epil.iter1194.next, %xtraiter1193
  br i1 %epil.iter1194.cmp.not, label %cvQuadSensNorm.exit.i, label %.lr.ph.i268.i.epil, !llvm.loop !316

cvQuadSensNorm.exit.i:                            ; preds = %cvQuadSensNorm.exit.i.loopexit.unr-lcssa, %.lr.ph.i268.i.epil, %bb.kp
  %.0.lcssa.i265.i = phi double [ %i.bgd, %bb.kp ], [ %.1.i271.i.3, %cvQuadSensNorm.exit.i.loopexit.unr-lcssa ], [ %.1.i271.i.epil, %.lr.ph.i268.i.epil ] ; 2 uses
  store double %.0.lcssa.i265.i, ptr %i.tz, align 8, !tbaa !317
  %i.bhb = call fastcc i32 @cvDoErrorTest(ptr noundef nonnull %0, ptr noundef %i.t, double noundef %i.adw, double noundef %.0.lcssa.i265.i, ptr noundef %i.aa, ptr noundef %i.ua, ptr noundef %i.s) ; 2 uses
  switch i32 %i.bhb, label %cvStep.exit [
    i32 5, label %.backedge.i
    i32 0, label %bb.kq
  ]

bb.kq:                                            ; preds = %cvQuadSensNorm.exit.i
  %i.bhc = load double, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  %i.bhd = load double, ptr %i.p, align 8, !tbaa !29
  %i.bhe = fcmp ogt double %i.bhc, %i.bhd
  br i1 %i.bhe, label %bb.kr, label %.loopexit347.i

bb.kr:                                            ; preds = %bb.kq
  store double %i.bhc, ptr %i.p, align 8, !tbaa !29
  br label %.loopexit347.i

.loopexit347.i:                                   ; preds = %bb.ko, %bb.kf, %bb.kr, %bb.kq
  %i.bhf = load i64, ptr %i.aj, align 8, !tbaa !236 ; 2 uses
  %i.bhg = add nsw i64 %i.bhf, 1
  store i64 %i.bhg, ptr %i.aj, align 8, !tbaa !236
  %i.bhh = load i32, ptr %i.ub, align 8, !tbaa !120
  %i.bhi = add nsw i32 %i.bhh, 1
  store i32 %i.bhi, ptr %i.ub, align 8, !tbaa !120
  %i.bhj = load double, ptr %i.pj, align 8, !tbaa !250 ; 2 uses
  store double %i.bhj, ptr %i.uc, align 8, !tbaa !111
  %i.bhk = load i32, ptr %i.pl, align 8, !tbaa !105 ; 7 uses
  store i32 %i.bhk, ptr %i.ud, align 4, !tbaa !110
  store i32 0, ptr %i.qp, align 8, !tbaa !259
  %i.bhl = icmp sgt i32 %i.bhk, 1
  br i1 %i.bhl, label %._crit_edge.thread.i.i, label %._crit_edge.i274.i

._crit_edge.thread.i.i:                           ; preds = %.loopexit347.i
  %i.bhm = zext nneg i32 %i.bhk to i64
  %i.bhn = shl nuw nsw i64 %i.bhm, 3
  %i.bho = add nsw i32 %i.bhk, -2
  %i.bhp = zext nneg i32 %i.bho to i64
  %.neg395.i = mul nsw i64 %i.bhp, -8             ; 2 uses
  %i.bhq = getelementptr i8, ptr %0, i64 %i.bhn   ; 2 uses
  %i.bhr = getelementptr i8, ptr %i.bhq, i64 1048
  %scevgep.i.i = getelementptr i8, ptr %i.bhr, i64 %.neg395.i
  %i.bhs = getelementptr i8, ptr %i.bhq, i64 1040
  %scevgep108.i.i = getelementptr i8, ptr %i.bhs, i64 %.neg395.i
  %i.bht = add nsw i32 %i.bhk, -1
  %i.bhu = zext nneg i32 %i.bht to i64
  %i.bhv = shl nuw nsw i64 %i.bhu, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.i, ptr align 8 %scevgep108.i.i, i64 %i.bhv, i1 false), !tbaa !29
  br label %bb.kt

._crit_edge.i274.i:                               ; preds = %.loopexit347.i
  %i.bhw = icmp eq i32 %i.bhk, 1
  %i.bhx = icmp sgt i64 %i.bhf, 0
  %or.cond.i275.i = select i1 %i.bhw, i1 %i.bhx, i1 false
  br i1 %or.cond.i275.i, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %._crit_edge.i274.i
  %i.bhy = load double, ptr %i.ue, align 8, !tbaa !29
  store double %i.bhy, ptr %i.uf, align 8, !tbaa !29
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %._crit_edge.i274.i, %._crit_edge.thread.i.i
  store double %i.bhj, ptr %i.ue, align 8, !tbaa !29
  %i.bhz = add nsw i32 %i.bhk, 1
  %i.bia = load ptr, ptr %i.ru, align 8, !tbaa !94
  %i.bib = call i32 @N_VScaleAddMulti(i32 noundef %i.bhz, ptr noundef nonnull %i.qx, ptr noundef %i.bia, ptr noundef nonnull %i.po, ptr noundef nonnull %i.po) #13 ; 0 uses
  %i.bic = load i32, ptr %i.sq, align 4, !tbaa !244
  %.not.i276.i = icmp eq i32 %i.bic, 0
  br i1 %.not.i276.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bid = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bie = add nsw i32 %i.bid, 1
  %i.bif = load ptr, ptr %i.sj, align 8, !tbaa !95
  %i.big = call i32 @N_VScaleAddMulti(i32 noundef %i.bie, ptr noundef nonnull %i.qz, ptr noundef %i.bif, ptr noundef nonnull %i.po, ptr noundef nonnull %i.po) #13 ; 0 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bih = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not91.i.i = icmp eq i32 %i.bih, 0
  br i1 %.not91.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bii = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bij = add nsw i32 %i.bii, 1
  %i.bik = load ptr, ptr %i.st, align 8, !tbaa !142
  %i.bil = call i32 @N_VScaleAddMulti(i32 noundef %i.bij, ptr noundef nonnull %i.qx, ptr noundef %i.bik, ptr noundef nonnull %i.pt, ptr noundef nonnull %i.pt) #13 ; 0 uses
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %i.bim = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not92.i.i = icmp eq i32 %i.bim, 0
  br i1 %.not92.i.i, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bin = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bio = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bip = add nsw i32 %i.bio, 1
  %i.biq = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bir = call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.bin, i32 noundef %i.bip, ptr noundef nonnull %i.qx, ptr noundef %i.biq, ptr noundef nonnull %i.pw, ptr noundef nonnull %i.pw) #13 ; 0 uses
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.bis = load i32, ptr %i.py, align 8, !tbaa !212
  %.not93.i.i = icmp eq i32 %i.bis, 0
  br i1 %.not93.i.i, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bit = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.biu = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.biv = add nsw i32 %i.biu, 1
  %i.biw = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bix = call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.bit, i32 noundef %i.biv, ptr noundef nonnull %i.qx, ptr noundef %i.biw, ptr noundef nonnull %i.qa, ptr noundef nonnull %i.qa) #13 ; 0 uses
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %i.biy = load i32, ptr %i.qr, align 4, !tbaa !107
  %i.biz = add nsw i32 %i.biy, -1                 ; 2 uses
  store i32 %i.biz, ptr %i.qr, align 4, !tbaa !107
  %i.bja = icmp eq i32 %i.biz, 1
  br i1 %i.bja, label %bb.lc, label %cvCompleteStep.exit.i

bb.lc:                                            ; preds = %bb.lb
  %i.bjb = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bjc = load i32, ptr %i.ug, align 8, !tbaa !26 ; 2 uses
  %.not94.i.i = icmp eq i32 %i.bjb, %i.bjc
  br i1 %.not94.i.i, label %cvCompleteStep.exit.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bjd = load ptr, ptr %i.ru, align 8, !tbaa !94
  %i.bje = sext i32 %i.bjc to i64
  %i.bjf = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.bje
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bjd, ptr noundef %i.bjg) #13
  %i.bjh = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not95.i.i = icmp eq i32 %i.bjh, 0
  br i1 %.not95.i.i, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bji = load ptr, ptr %i.st, align 8, !tbaa !142
  %i.bjj = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.bjk
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bji, ptr noundef %i.bjm) #13
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %i.bjn = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not96.i.i = icmp eq i32 %i.bjn, 0
  br i1 %.not96.i.i, label %bb.lg, label %.preheader98.i.i

.preheader98.i.i:                                 ; preds = %bb.lf
  %i.bjo = load i32, ptr %i.qe, align 8, !tbaa !156 ; 4 uses
  %i.bjp = icmp sgt i32 %i.bjo, 0
  %i.bjq = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 3 uses
  br i1 %i.bjp, label %.lr.ph102.i.i, label %._crit_edge103.i.i

.lr.ph102.i.i:                                    ; preds = %.preheader98.i.i
  %wide.trip.count.i278.i = zext nneg i32 %i.bjo to i64 ; 3 uses
  %min.iters.check984 = icmp ult i32 %i.bjo, 4
  br i1 %min.iters.check984, label %scalar.ph983.preheader, label %vector.ph985

vector.ph985:                                     ; preds = %.lr.ph102.i.i
  %n.vec986 = and i64 %wide.trip.count.i278.i, 2147483644 ; 3 uses
  br label %vector.body987

vector.body987:                                   ; preds = %vector.body987, %vector.ph985
  %index988 = phi i64 [ 0, %vector.ph985 ], [ %index.next989, %vector.body987 ] ; 2 uses
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr %i.bjq, i64 %index988 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bjr, align 8, !tbaa !29
end_hunk_2
begin_hunk_3_@CVode:bb.a
  store double 1.000000e+00, ptr %i.bki, align 8, !tbaa !29
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %exitcond115.not.i.i = icmp eq i64 %indvars.iv.next112.i.i, %wide.trip.count114.i.i
  br i1 %exitcond115.not.i.i, label %._crit_edge106.i.i, label %scalar.ph973, !llvm.loop !321

._crit_edge106.i.i:                               ; preds = %scalar.ph973, %middle.block980, %.preheader.i277.i
  %i.bkj = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bkk = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bkl = sext i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.bkl
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !164
  %i.bko = call i32 @N_VScaleVectorArray(i32 noundef %i.bkc, ptr noundef %i.bke, ptr noundef %i.bkj, ptr noundef %i.bkn) #13 ; 0 uses
  br label %bb.lh

bb.lh:                                            ; preds = %._crit_edge106.i.i, %bb.lg
  %i.bkp = load double, ptr %i.rb, align 8, !tbaa !29
  store double %i.bkp, ptr %i.uh, align 8, !tbaa !322
  %i.bkq = load i32, ptr %i.ug, align 8, !tbaa !26
  store i32 %i.bkq, ptr %i.ui, align 8, !tbaa !323
  br label %cvCompleteStep.exit.i

cvCompleteStep.exit.i:                            ; preds = %bb.lh, %bb.lc, %bb.lb
  %i.bkr = load double, ptr %i.uj, align 8, !tbaa !109 ; 3 uses
  %i.bks = fcmp oeq double %i.bkr, 1.000000e+00
  br i1 %i.bks, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %cvCompleteStep.exit.i
  %i.bkt = load i32, ptr %i.qr, align 4, !tbaa !107
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.bkt, i32 2)
  store i32 %spec.select.i.i, ptr %i.qr, align 4, !tbaa !107
  %i.bku = load i32, ptr %i.pl, align 8, !tbaa !105
  store i32 %i.bku, ptr %i.qo, align 4, !tbaa !267
  %i.bkv = load double, ptr %i.pj, align 8, !tbaa !250
  store double %i.bkv, ptr %i.qn, align 8, !tbaa !254
  store double 1.000000e+00, ptr %i.sp, align 8, !tbaa !262
  br label %cvPrepareNextStep.exit.i

bb.lj:                                            ; preds = %cvCompleteStep.exit.i
  %i.bkw = load double, ptr %i.p, align 8, !tbaa !29
  %i.bkx = fmul double %i.bkw, 6.000000e+00
  %i.bky = load i32, ptr %i.qq, align 8, !tbaa !106
  %i.bkz = sitofp i32 %i.bky to double
  %i.bla = fdiv double 1.000000e+00, %i.bkz
  %i.blb = call double @pow(double noundef %i.bkx, double noundef %i.bla) #13
  %i.blc = fadd double %i.blb, f0x3EB0C6F7A0B5ED8D
  %i.bld = fdiv double 1.000000e+00, %i.blc       ; 9 uses
  store double %i.bld, ptr %i.uk, align 8, !tbaa !324
  %i.ble = load i32, ptr %i.qr, align 4, !tbaa !107
  %.not.i282.i = icmp eq i32 %i.ble, 0
  br i1 %.not.i282.i, label %bb.lp, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  store double %i.bld, ptr %i.sp, align 8, !tbaa !262
  %i.blf = load i32, ptr %i.pl, align 8, !tbaa !105
  store i32 %i.blf, ptr %i.qo, align 4, !tbaa !267
  %i.blg = load double, ptr %i.ul, align 8, !tbaa !325
  %i.blh = fcmp ogt double %i.bld, %i.blg
  %i.bli = load double, ptr %i.um, align 8, !tbaa !326 ; 2 uses
  %i.blj = fcmp olt double %i.bld, %i.bli
  %or.cond.i.i283.i = select i1 %i.blh, i1 %i.blj, i1 false
  br i1 %or.cond.i.i283.i, label %bb.ll, label %._crit_edge.i.i284.i

bb.ll:                                            ; preds = %bb.lk
  store double 1.000000e+00, ptr %i.sp, align 8, !tbaa !262
  %i.blk = load double, ptr %i.pj, align 8, !tbaa !250
  store double %i.blk, ptr %i.qn, align 8, !tbaa !254
  br label %cvPrepareNextStep.exit.i

._crit_edge.i.i284.i:                             ; preds = %bb.lk
  %i.bll = fcmp ult double %i.bld, %i.bli
  br i1 %i.bll, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %._crit_edge.i.i284.i
  %i.blm = fcmp olt double %i.bld, %i.bkr
  %..i.i.i = select i1 %i.blm, double %i.bld, double %i.bkr ; 2 uses
  %i.bln = load double, ptr %i.pj, align 8, !tbaa !250 ; 2 uses
  %i.blo = call double @llvm.fabs.f64(double %i.bln)
  %i.blp = load double, ptr %i.un, align 8, !tbaa !251
  %i.blq = fmul double %i.blo, %i.blp
  %i.blr = fmul double %..i.i.i, %i.blq           ; 2 uses
  %i.bls = fcmp olt double %i.blr, 1.000000e+00
  %i.blt = select i1 %i.bls, double 1.000000e+00, double %i.blr
  %i.blu = fdiv double %..i.i.i, %i.blt
  br label %bb.lo

bb.ln:                                            ; preds = %._crit_edge.i.i284.i
  %i.blv = load double, ptr %i.uo, align 8, !tbaa !327 ; 2 uses
  %i.blw = fcmp ogt double %i.bld, %i.blv
  %.45.i.i.i = select i1 %i.blw, double %i.bld, double %i.blv ; 2 uses
  %i.blx = load double, ptr %i.sn, align 8, !tbaa !252
  %i.bly = load double, ptr %i.pj, align 8, !tbaa !250 ; 2 uses
  %i.blz = call double @llvm.fabs.f64(double %i.bly)
  %i.bma = fdiv double %i.blx, %i.blz             ; 2 uses
  %i.bmb = fcmp ogt double %.45.i.i.i, %i.bma
  %i.bmc = select i1 %i.bmb, double %.45.i.i.i, double %i.bma
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.bmd = phi double [ %i.bly, %bb.ln ], [ %i.bln, %bb.lm ]
  %storemerge.i.i.i = phi double [ %i.bmc, %bb.ln ], [ %i.blu, %bb.lm ] ; 2 uses
  store double %storemerge.i.i.i, ptr %i.sp, align 8, !tbaa !262
  %i.bme = fmul double %i.bmd, %storemerge.i.i.i
  store double %i.bme, ptr %i.qn, align 8, !tbaa !254
  br label %cvPrepareNextStep.exit.i

bb.lp:                                            ; preds = %bb.lj
  store i32 2, ptr %i.qr, align 4, !tbaa !107
  store double 0.000000e+00, ptr %i.up, align 8, !tbaa !328
  %i.bmf = load i32, ptr %i.pl, align 8, !tbaa !105 ; 3 uses
  %i.bmg = icmp sgt i32 %i.bmf, 1
  br i1 %i.bmg, label %bb.lq, label %cvComputeEtaqm1.exit.i.i

bb.lq:                                            ; preds = %bb.lp
  %i.bmh = zext nneg i32 %i.bmf to i64
  %i.bmi = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.bmh
  %i.bmj = load ptr, ptr %i.bmi, align 8, !tbaa !63
  %i.bmk = load ptr, ptr %i.pp, align 8, !tbaa !69
  %i.bml = call double @N_VWrmsNorm(ptr noundef %i.bmj, ptr noundef %i.bmk) #13 ; 4 uses
  %i.bmm = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not.i.i291.i = icmp eq i32 %i.bmm, 0
  br i1 %.not.i.i291.i, label %bb.lt, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bmn = load i32, ptr %i.ps, align 8, !tbaa !239
  %.not33.i.i.i = icmp eq i32 %i.bmn, 0
  br i1 %.not33.i.i.i, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bmo = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bmp = sext i32 %i.bmo to i64
  %i.bmq = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.bmp
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !63
  %i.bms = load ptr, ptr %i.pu, align 8, !tbaa !141
  %i.bmt = call double @N_VWrmsNorm(ptr noundef %i.bmr, ptr noundef %i.bms) #13 ; 2 uses
  %i.bmu = fcmp ogt double %i.bml, %i.bmt
  %..i.i.i.i = select i1 %i.bmu, double %i.bml, double %i.bmt
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr, %bb.lq
  %.0.i.i.i = phi double [ %..i.i.i.i, %bb.ls ], [ %i.bml, %bb.lr ], [ %i.bml, %bb.lq ] ; 4 uses
  %i.bmv = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not34.i.i.i = icmp eq i32 %i.bmv, 0
  br i1 %.not34.i.i.i, label %bb.lw, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.bmw = load i32, ptr %i.qd, align 8, !tbaa !263
  %.not35.i.i.i = icmp eq i32 %i.bmw, 0
  br i1 %.not35.i.i.i, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bmx = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bmy = sext i32 %i.bmx to i64
  %i.bmz = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.bmy
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !164
  %i.bnb = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.bnc = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bnd = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.bne = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.bnc, ptr noundef %i.bna, ptr noundef %i.bnb, ptr noundef %i.bnd) #13 ; 0 uses
  %i.bnf = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.bng = load double, ptr %i.bnf, align 8, !tbaa !29 ; 3 uses
  %i.bnh = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.bni = icmp sgt i32 %i.bnh, 1
  br i1 %i.bni, label %.lr.ph.preheader.i.i.i.i.i, label %cvSensUpdateNorm.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.lv
  %wide.trip.count.i.i.i.i292.i = zext nneg i32 %i.bnh to i64
  %i.bnj = add nsw i64 %wide.trip.count.i.i.i.i292.i, -1 ; 2 uses
  %xtraiter1200 = and i64 %i.bnj, 3               ; 3 uses
  %i.bnk = add nsw i32 %i.bnh, -2
  %i.bnl = icmp ult i32 %i.bnk, 3
  br i1 %i.bnl, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.i.new:                   ; preds = %.lr.ph.preheader.i.i.i.i.i
  %unroll_iter1205 = and i64 %i.bnj, -4
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.new
  %indvars.iv.i.i.i.i293.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i294.i.3, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.016.i.i.i.i.i = phi double [ %i.bng, %.lr.ph.preheader.i.i.i.i.i.new ], [ %.1.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %niter1206 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.new ], [ %niter1206.next.3, %.lr.ph.i.i.i.i.i ]
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %indvars.iv.i.i.i.i293.i
  %i.bnn = load double, ptr %i.bnm, align 8, !tbaa !29 ; 2 uses
  %i.bno = fcmp ogt double %i.bnn, %.016.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.bno, double %i.bnn, double %.016.i.i.i.i.i ; 2 uses
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %indvars.iv.i.i.i.i293.i
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 8
  %i.bnr = load double, ptr %i.bnq, align 8, !tbaa !29 ; 2 uses
  %i.bns = fcmp ogt double %i.bnr, %.1.i.i.i.i.i
  %.1.i.i.i.i.i.1 = select i1 %i.bns, double %i.bnr, double %.1.i.i.i.i.i ; 2 uses
  %i.bnt = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %indvars.iv.i.i.i.i293.i
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 16
  %i.bnv = load double, ptr %i.bnu, align 8, !tbaa !29 ; 2 uses
  %i.bnw = fcmp ogt double %i.bnv, %.1.i.i.i.i.i.1
  %.1.i.i.i.i.i.2 = select i1 %i.bnw, double %i.bnv, double %.1.i.i.i.i.i.1 ; 2 uses
  %i.bnx = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %indvars.iv.i.i.i.i293.i
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 24
  %i.bnz = load double, ptr %i.bny, align 8, !tbaa !29 ; 2 uses
  %i.boa = fcmp ogt double %i.bnz, %.1.i.i.i.i.i.2
  %.1.i.i.i.i.i.3 = select i1 %i.boa, double %i.bnz, double %.1.i.i.i.i.i.2 ; 3 uses
  %indvars.iv.next.i.i.i.i294.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i293.i, 4 ; 2 uses
  %niter1206.next.3 = add nuw nsw i64 %niter1206, 4 ; 2 uses
  %niter1206.ncmp.3 = icmp eq i64 %niter1206.next.3, %unroll_iter1205
  br i1 %niter1206.ncmp.3, label %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa:   ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod1202.not = icmp eq i64 %xtraiter1200, 0
  br i1 %lcmp.mod1202.not, label %cvSensUpdateNorm.exit.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i293.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i294.i.3, %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ]
  %.016.i.i.i.i.i.epil.init = phi double [ %i.bng, %.lr.ph.preheader.i.i.i.i.i ], [ %.1.i.i.i.i.i.3, %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1204 = icmp ne i64 %xtraiter1200, 0
  call void @llvm.assume(i1 %lcmp.mod1204)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i293.i.epil = phi i64 [ %indvars.iv.i.i.i.i293.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.i294.i.epil, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %.016.i.i.i.i.i.epil = phi double [ %.016.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %.1.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %epil.iter1201 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter1201.next, %.lr.ph.i.i.i.i.i.epil ]
  %i.bob = getelementptr inbounds nuw [8 x i8], ptr %i.bnf, i64 %indvars.iv.i.i.i.i293.i.epil
  %i.boc = load double, ptr %i.bob, align 8, !tbaa !29 ; 2 uses
  %i.bod = fcmp ogt double %i.boc, %.016.i.i.i.i.i.epil
  %.1.i.i.i.i.i.epil = select i1 %i.bod, double %i.boc, double %.016.i.i.i.i.i.epil ; 2 uses
  %indvars.iv.next.i.i.i.i294.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i293.i.epil, 1
  %epil.iter1201.next = add i64 %epil.iter1201, 1 ; 2 uses
  %epil.iter1201.cmp.not = icmp eq i64 %epil.iter1201.next, %xtraiter1200
  br i1 %epil.iter1201.cmp.not, label %cvSensUpdateNorm.exit.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !329

cvSensUpdateNorm.exit.i.i.i:                      ; preds = %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.lv
  %.0.lcssa.i.i.i.i.i = phi double [ %i.bng, %bb.lv ], [ %.1.i.i.i.i.i.3, %cvSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %i.boe = fcmp ogt double %.0.i.i.i, %.0.lcssa.i.i.i.i.i
  %..i38.i.i.i = select i1 %i.boe, double %.0.i.i.i, double %.0.lcssa.i.i.i.i.i
  br label %bb.lw

bb.lw:                                            ; preds = %cvSensUpdateNorm.exit.i.i.i, %bb.lu, %bb.lt
  %.1.i.i.i = phi double [ %..i38.i.i.i, %cvSensUpdateNorm.exit.i.i.i ], [ %.0.i.i.i, %bb.lu ], [ %.0.i.i.i, %bb.lt ] ; 4 uses
  %i.bof = load i32, ptr %i.py, align 8, !tbaa !212
  %.not36.i.i.i = icmp eq i32 %i.bof, 0
  br i1 %.not36.i.i.i, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bog = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not37.i.i.i = icmp eq i32 %i.bog, 0
  br i1 %.not37.i.i.i, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.boh = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.boi = sext i32 %i.boh to i64
  %i.boj = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.boi
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !164
  %i.bol = load ptr, ptr %i.qb, align 8, !tbaa !203
  %i.bom = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bon = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.boo = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.bom, ptr noundef %i.bok, ptr noundef %i.bol, ptr noundef %i.bon) #13 ; 0 uses
  %i.bop = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.boq = load double, ptr %i.bop, align 8, !tbaa !29 ; 3 uses
  %i.bor = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.bos = icmp sgt i32 %i.bor, 1
  br i1 %i.bos, label %.lr.ph.preheader.i.i41.i.i.i, label %cvQuadSensUpdateNorm.exit.i.i.i

.lr.ph.preheader.i.i41.i.i.i:                     ; preds = %bb.ly
  %wide.trip.count.i.i42.i.i.i = zext nneg i32 %i.bor to i64
  %i.bot = add nsw i64 %wide.trip.count.i.i42.i.i.i, -1 ; 2 uses
  %xtraiter1207 = and i64 %i.bot, 3               ; 3 uses
  %i.bou = add nsw i32 %i.bor, -2
  %i.bov = icmp ult i32 %i.bou, 3
  br i1 %i.bov, label %.lr.ph.i.i43.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i41.i.i.i.new

.lr.ph.preheader.i.i41.i.i.i.new:                 ; preds = %.lr.ph.preheader.i.i41.i.i.i
  %unroll_iter1212 = and i64 %i.bot, -4
  br label %.lr.ph.i.i43.i.i.i

.lr.ph.i.i43.i.i.i:                               ; preds = %.lr.ph.i.i43.i.i.i, %.lr.ph.preheader.i.i41.i.i.i.new
  %indvars.iv.i.i44.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i41.i.i.i.new ], [ %indvars.iv.next.i.i47.i.i.i.3, %.lr.ph.i.i43.i.i.i ] ; 5 uses
  %.016.i.i45.i.i.i = phi double [ %i.boq, %.lr.ph.preheader.i.i41.i.i.i.new ], [ %.1.i.i46.i.i.i.3, %.lr.ph.i.i43.i.i.i ] ; 2 uses
  %niter1213 = phi i64 [ 0, %.lr.ph.preheader.i.i41.i.i.i.new ], [ %niter1213.next.3, %.lr.ph.i.i43.i.i.i ]
  %i.bow = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %indvars.iv.i.i44.i.i.i
  %i.box = load double, ptr %i.bow, align 8, !tbaa !29 ; 2 uses
  %i.boy = fcmp ogt double %i.box, %.016.i.i45.i.i.i
  %.1.i.i46.i.i.i = select i1 %i.boy, double %i.box, double %.016.i.i45.i.i.i ; 2 uses
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %indvars.iv.i.i44.i.i.i
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 8
  %i.bpb = load double, ptr %i.bpa, align 8, !tbaa !29 ; 2 uses
  %i.bpc = fcmp ogt double %i.bpb, %.1.i.i46.i.i.i
  %.1.i.i46.i.i.i.1 = select i1 %i.bpc, double %i.bpb, double %.1.i.i46.i.i.i ; 2 uses
  %i.bpd = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %indvars.iv.i.i44.i.i.i
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 16
  %i.bpf = load double, ptr %i.bpe, align 8, !tbaa !29 ; 2 uses
  %i.bpg = fcmp ogt double %i.bpf, %.1.i.i46.i.i.i.1
  %.1.i.i46.i.i.i.2 = select i1 %i.bpg, double %i.bpf, double %.1.i.i46.i.i.i.1 ; 2 uses
  %i.bph = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %indvars.iv.i.i44.i.i.i
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 24
  %i.bpj = load double, ptr %i.bpi, align 8, !tbaa !29 ; 2 uses
  %i.bpk = fcmp ogt double %i.bpj, %.1.i.i46.i.i.i.2
  %.1.i.i46.i.i.i.3 = select i1 %i.bpk, double %i.bpj, double %.1.i.i46.i.i.i.2 ; 3 uses
  %indvars.iv.next.i.i47.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i44.i.i.i, 4 ; 2 uses
  %niter1213.next.3 = add nuw nsw i64 %niter1213, 4 ; 2 uses
  %niter1213.ncmp.3 = icmp eq i64 %niter1213.next.3, %unroll_iter1212
  br i1 %niter1213.ncmp.3, label %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i43.i.i.i

cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i43.i.i.i
  %lcmp.mod1209.not = icmp eq i64 %xtraiter1207, 0
  br i1 %lcmp.mod1209.not, label %cvQuadSensUpdateNorm.exit.i.i.i, label %.lr.ph.i.i43.i.i.i.epil.preheader

.lr.ph.i.i43.i.i.i.epil.preheader:                ; preds = %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i41.i.i.i
  %indvars.iv.i.i44.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i41.i.i.i ], [ %indvars.iv.next.i.i47.i.i.i.3, %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ]
  %.016.i.i45.i.i.i.epil.init = phi double [ %i.boq, %.lr.ph.preheader.i.i41.i.i.i ], [ %.1.i.i46.i.i.i.3, %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1211 = icmp ne i64 %xtraiter1207, 0
  call void @llvm.assume(i1 %lcmp.mod1211)
  br label %.lr.ph.i.i43.i.i.i.epil

.lr.ph.i.i43.i.i.i.epil:                          ; preds = %.lr.ph.i.i43.i.i.i.epil, %.lr.ph.i.i43.i.i.i.epil.preheader
  %indvars.iv.i.i44.i.i.i.epil = phi i64 [ %indvars.iv.i.i44.i.i.i.epil.init, %.lr.ph.i.i43.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i47.i.i.i.epil, %.lr.ph.i.i43.i.i.i.epil ] ; 2 uses
  %.016.i.i45.i.i.i.epil = phi double [ %.016.i.i45.i.i.i.epil.init, %.lr.ph.i.i43.i.i.i.epil.preheader ], [ %.1.i.i46.i.i.i.epil, %.lr.ph.i.i43.i.i.i.epil ] ; 2 uses
  %epil.iter1208 = phi i64 [ 0, %.lr.ph.i.i43.i.i.i.epil.preheader ], [ %epil.iter1208.next, %.lr.ph.i.i43.i.i.i.epil ]
  %i.bpl = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %indvars.iv.i.i44.i.i.i.epil
  %i.bpm = load double, ptr %i.bpl, align 8, !tbaa !29 ; 2 uses
  %i.bpn = fcmp ogt double %i.bpm, %.016.i.i45.i.i.i.epil
  %.1.i.i46.i.i.i.epil = select i1 %i.bpn, double %i.bpm, double %.016.i.i45.i.i.i.epil ; 2 uses
  %indvars.iv.next.i.i47.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i44.i.i.i.epil, 1
  %epil.iter1208.next = add i64 %epil.iter1208, 1 ; 2 uses
  %epil.iter1208.cmp.not = icmp eq i64 %epil.iter1208.next, %xtraiter1207
  br i1 %epil.iter1208.cmp.not, label %cvQuadSensUpdateNorm.exit.i.i.i, label %.lr.ph.i.i43.i.i.i.epil, !llvm.loop !330

cvQuadSensUpdateNorm.exit.i.i.i:                  ; preds = %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i43.i.i.i.epil, %bb.ly
  %.0.lcssa.i.i39.i.i.i = phi double [ %i.boq, %bb.ly ], [ %.1.i.i46.i.i.i.3, %cvQuadSensUpdateNorm.exit.i.i.i.loopexit.unr-lcssa ], [ %.1.i.i46.i.i.i.epil, %.lr.ph.i.i43.i.i.i.epil ] ; 2 uses
  %i.bpo = fcmp ogt double %.1.i.i.i, %.0.lcssa.i.i39.i.i.i
  %..i40.i.i.i = select i1 %i.bpo, double %.1.i.i.i, double %.0.lcssa.i.i39.i.i.i
  br label %bb.lz

bb.lz:                                            ; preds = %cvQuadSensUpdateNorm.exit.i.i.i, %bb.lx, %bb.lw
  %.2.i.i.i = phi double [ %..i40.i.i.i, %cvQuadSensUpdateNorm.exit.i.i.i ], [ %.1.i.i.i, %bb.lx ], [ %.1.i.i.i, %bb.lw ]
  %i.bpp = load double, ptr %i.rc, align 8, !tbaa !29
  %i.bpq = fmul double %.2.i.i.i, %i.bpp
  %i.bpr = fmul double %i.bpq, 6.000000e+00
  %i.bps = load i32, ptr %i.pl, align 8, !tbaa !105 ; 2 uses
  %i.bpt = sitofp i32 %i.bps to double
  %i.bpu = fdiv double 1.000000e+00, %i.bpt
  %i.bpv = call double @pow(double noundef %i.bpr, double noundef %i.bpu) #13
  %i.bpw = fadd double %i.bpv, f0x3EB0C6F7A0B5ED8D
  %i.bpx = fdiv double 1.000000e+00, %i.bpw
  br label %cvComputeEtaqm1.exit.i.i

cvComputeEtaqm1.exit.i.i:                         ; preds = %bb.lz, %bb.lp
  %i.bpy = phi i32 [ %i.bps, %bb.lz ], [ %i.bmf, %bb.lp ]
  %i.bpz = phi double [ %i.bpx, %bb.lz ], [ 0.000000e+00, %bb.lp ] ; 3 uses
  store double %i.bpz, ptr %i.up, align 8, !tbaa !328
  store double 0.000000e+00, ptr %i.uq, align 8, !tbaa !331
  %i.bqa = load i32, ptr %i.ug, align 8, !tbaa !26
  %.not.i25.i.i = icmp eq i32 %i.bpy, %i.bqa
  br i1 %.not.i25.i.i, label %cvComputeEtaqp1.exit.i.i, label %bb.ma

bb.ma:                                            ; preds = %cvComputeEtaqm1.exit.i.i
  %i.bqb = load double, ptr %i.uh, align 8, !tbaa !322 ; 2 uses
  %i.bqc = fcmp oeq double %i.bqb, 0.000000e+00
  br i1 %i.bqc, label %cvComputeEtaqp1.exit.i.i, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bqd = load double, ptr %i.rb, align 8, !tbaa !29
  %i.bqe = fdiv double %i.bqd, %i.bqb
  %i.bqf = load double, ptr %i.pj, align 8, !tbaa !250
  %i.bqg = load double, ptr %i.uf, align 8, !tbaa !29
  %i.bqh = fdiv double %i.bqf, %i.bqg
  %i.bqi = load i32, ptr %i.qq, align 8, !tbaa !106
  %i.bqj = call double @SUNRpowerI(double noundef %i.bqh, i32 noundef %i.bqi) #13
  %i.bqk = fneg double %i.bqj
  %i.bql = fmul double %i.bqe, %i.bqk             ; 4 uses
  %i.bqm = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.bqn
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !63
  %i.bqq = load ptr, ptr %i.ru, align 8, !tbaa !94
  %i.bqr = load ptr, ptr %i.sj, align 8, !tbaa !95
  call void @N_VLinearSum(double noundef %i.bql, ptr noundef %i.bqp, double noundef 1.000000e+00, ptr noundef %i.bqq, ptr noundef %i.bqr) #13
  %i.bqs = load ptr, ptr %i.sj, align 8, !tbaa !95
  %i.bqt = load ptr, ptr %i.pp, align 8, !tbaa !69
  %i.bqu = call double @N_VWrmsNorm(ptr noundef %i.bqs, ptr noundef %i.bqt) #13 ; 4 uses
  %i.bqv = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not61.i.i.i = icmp eq i32 %i.bqv, 0
  br i1 %.not61.i.i.i, label %bb.me, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bqw = load i32, ptr %i.ps, align 8, !tbaa !239
  %.not62.i.i.i = icmp eq i32 %i.bqw, 0
  br i1 %.not62.i.i.i, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bqx = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.bqy
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !63
  %i.brb = load ptr, ptr %i.st, align 8, !tbaa !142
  %i.brc = load ptr, ptr %i.tv, align 8, !tbaa !144
  call void @N_VLinearSum(double noundef %i.bql, ptr noundef %i.bra, double noundef 1.000000e+00, ptr noundef %i.brb, ptr noundef %i.brc) #13
  %i.brd = load ptr, ptr %i.tv, align 8, !tbaa !144
  %i.bre = load ptr, ptr %i.pu, align 8, !tbaa !141
  %i.brf = call double @N_VWrmsNorm(ptr noundef %i.brd, ptr noundef %i.bre) #13 ; 2 uses
  %i.brg = fcmp ogt double %i.bqu, %i.brf
  %..i.i26.i.i = select i1 %i.brg, double %i.bqu, double %i.brf
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc, %bb.mb
  %.0.i27.i.i = phi double [ %..i.i26.i.i, %bb.md ], [ %i.bqu, %bb.mc ], [ %i.bqu, %bb.mb ] ; 4 uses
  %i.brh = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not63.i.i.i = icmp eq i32 %i.brh, 0
  br i1 %.not63.i.i.i, label %bb.mh, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bri = load i32, ptr %i.qd, align 8, !tbaa !263
  %.not64.i.i.i = icmp eq i32 %i.bri, 0
  br i1 %.not64.i.i.i, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.brj = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.brk = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.brl = sext i32 %i.brk to i64
  %i.brm = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.brl
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !164
  %i.bro = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.brp = load ptr, ptr %i.ur, align 8, !tbaa !178
  %i.brq = call i32 @N_VLinearSumVectorArray(i32 noundef %i.brj, double noundef %i.bql, ptr noundef %i.brn, double noundef 1.000000e+00, ptr noundef %i.bro, ptr noundef %i.brp) #13 ; 0 uses
  %i.brr = load ptr, ptr %i.ur, align 8, !tbaa !178
  %i.brs = load ptr, ptr %i.px, align 8, !tbaa !176
  %i.brt = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bru = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.brv = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.brt, ptr noundef %i.brr, ptr noundef %i.brs, ptr noundef %i.bru) #13 ; 0 uses
  %i.brw = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.brx = load double, ptr %i.brw, align 8, !tbaa !29 ; 3 uses
  %i.bry = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.brz = icmp sgt i32 %i.bry, 1
  br i1 %i.brz, label %.lr.ph.preheader.i.i.i32.i.i, label %cvSensUpdateNorm.exit.i28.i.i

.lr.ph.preheader.i.i.i32.i.i:                     ; preds = %bb.mg
  %wide.trip.count.i.i.i33.i.i = zext nneg i32 %i.bry to i64
  %i.bsa = add nsw i64 %wide.trip.count.i.i.i33.i.i, -1 ; 2 uses
  %xtraiter1214 = and i64 %i.bsa, 3               ; 3 uses
  %i.bsb = add nsw i32 %i.bry, -2
  %i.bsc = icmp ult i32 %i.bsb, 3
  br i1 %i.bsc, label %.lr.ph.i.i.i34.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i32.i.i.new

.lr.ph.preheader.i.i.i32.i.i.new:                 ; preds = %.lr.ph.preheader.i.i.i32.i.i
  %unroll_iter1219 = and i64 %i.bsa, -4
  br label %.lr.ph.i.i.i34.i.i

.lr.ph.i.i.i34.i.i:                               ; preds = %.lr.ph.i.i.i34.i.i, %.lr.ph.preheader.i.i.i32.i.i.new
  %indvars.iv.i.i.i35.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i32.i.i.new ], [ %indvars.iv.next.i.i.i38.i.i.3, %.lr.ph.i.i.i34.i.i ] ; 5 uses
  %.016.i.i.i36.i.i = phi double [ %i.brx, %.lr.ph.preheader.i.i.i32.i.i.new ], [ %.1.i.i.i37.i.i.3, %.lr.ph.i.i.i34.i.i ] ; 2 uses
  %niter1220 = phi i64 [ 0, %.lr.ph.preheader.i.i.i32.i.i.new ], [ %niter1220.next.3, %.lr.ph.i.i.i34.i.i ]
  %i.bsd = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.i.i.i35.i.i
  %i.bse = load double, ptr %i.bsd, align 8, !tbaa !29 ; 2 uses
  %i.bsf = fcmp ogt double %i.bse, %.016.i.i.i36.i.i
  %.1.i.i.i37.i.i = select i1 %i.bsf, double %i.bse, double %.016.i.i.i36.i.i ; 2 uses
  %i.bsg = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.i.i.i35.i.i
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 8
  %i.bsi = load double, ptr %i.bsh, align 8, !tbaa !29 ; 2 uses
  %i.bsj = fcmp ogt double %i.bsi, %.1.i.i.i37.i.i
  %.1.i.i.i37.i.i.1 = select i1 %i.bsj, double %i.bsi, double %.1.i.i.i37.i.i ; 2 uses
  %i.bsk = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.i.i.i35.i.i
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 16
  %i.bsm = load double, ptr %i.bsl, align 8, !tbaa !29 ; 2 uses
  %i.bsn = fcmp ogt double %i.bsm, %.1.i.i.i37.i.i.1
  %.1.i.i.i37.i.i.2 = select i1 %i.bsn, double %i.bsm, double %.1.i.i.i37.i.i.1 ; 2 uses
  %i.bso = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.i.i.i35.i.i
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 24
  %i.bsq = load double, ptr %i.bsp, align 8, !tbaa !29 ; 2 uses
  %i.bsr = fcmp ogt double %i.bsq, %.1.i.i.i37.i.i.2
  %.1.i.i.i37.i.i.3 = select i1 %i.bsr, double %i.bsq, double %.1.i.i.i37.i.i.2 ; 3 uses
  %indvars.iv.next.i.i.i38.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i35.i.i, 4 ; 2 uses
  %niter1220.next.3 = add nuw nsw i64 %niter1220, 4 ; 2 uses
  %niter1220.ncmp.3 = icmp eq i64 %niter1220.next.3, %unroll_iter1219
  br i1 %niter1220.ncmp.3, label %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i34.i.i

cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i34.i.i
  %lcmp.mod1216.not = icmp eq i64 %xtraiter1214, 0
  br i1 %lcmp.mod1216.not, label %cvSensUpdateNorm.exit.i28.i.i, label %.lr.ph.i.i.i34.i.i.epil.preheader

.lr.ph.i.i.i34.i.i.epil.preheader:                ; preds = %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i32.i.i
  %indvars.iv.i.i.i35.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i32.i.i ], [ %indvars.iv.next.i.i.i38.i.i.3, %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa ]
  %.016.i.i.i36.i.i.epil.init = phi double [ %i.brx, %.lr.ph.preheader.i.i.i32.i.i ], [ %.1.i.i.i37.i.i.3, %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1218 = icmp ne i64 %xtraiter1214, 0
  call void @llvm.assume(i1 %lcmp.mod1218)
  br label %.lr.ph.i.i.i34.i.i.epil

.lr.ph.i.i.i34.i.i.epil:                          ; preds = %.lr.ph.i.i.i34.i.i.epil, %.lr.ph.i.i.i34.i.i.epil.preheader
  %indvars.iv.i.i.i35.i.i.epil = phi i64 [ %indvars.iv.i.i.i35.i.i.epil.init, %.lr.ph.i.i.i34.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i38.i.i.epil, %.lr.ph.i.i.i34.i.i.epil ] ; 2 uses
  %.016.i.i.i36.i.i.epil = phi double [ %.016.i.i.i36.i.i.epil.init, %.lr.ph.i.i.i34.i.i.epil.preheader ], [ %.1.i.i.i37.i.i.epil, %.lr.ph.i.i.i34.i.i.epil ] ; 2 uses
  %epil.iter1215 = phi i64 [ 0, %.lr.ph.i.i.i34.i.i.epil.preheader ], [ %epil.iter1215.next, %.lr.ph.i.i.i34.i.i.epil ]
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.brw, i64 %indvars.iv.i.i.i35.i.i.epil
  %i.bst = load double, ptr %i.bss, align 8, !tbaa !29 ; 2 uses
  %i.bsu = fcmp ogt double %i.bst, %.016.i.i.i36.i.i.epil
  %.1.i.i.i37.i.i.epil = select i1 %i.bsu, double %i.bst, double %.016.i.i.i36.i.i.epil ; 2 uses
  %indvars.iv.next.i.i.i38.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i35.i.i.epil, 1
  %epil.iter1215.next = add i64 %epil.iter1215, 1 ; 2 uses
  %epil.iter1215.cmp.not = icmp eq i64 %epil.iter1215.next, %xtraiter1214
  br i1 %epil.iter1215.cmp.not, label %cvSensUpdateNorm.exit.i28.i.i, label %.lr.ph.i.i.i34.i.i.epil, !llvm.loop !332

cvSensUpdateNorm.exit.i28.i.i:                    ; preds = %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i34.i.i.epil, %bb.mg
  %.0.lcssa.i.i.i29.i.i = phi double [ %i.brx, %bb.mg ], [ %.1.i.i.i37.i.i.3, %cvSensUpdateNorm.exit.i28.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i37.i.i.epil, %.lr.ph.i.i.i34.i.i.epil ] ; 2 uses
  %i.bsv = fcmp ogt double %.0.i27.i.i, %.0.lcssa.i.i.i29.i.i
  %..i67.i.i.i = select i1 %i.bsv, double %.0.i27.i.i, double %.0.lcssa.i.i.i29.i.i
  br label %bb.mh

bb.mh:                                            ; preds = %cvSensUpdateNorm.exit.i28.i.i, %bb.mf, %bb.me
  %.1.i30.i.i = phi double [ %..i67.i.i.i, %cvSensUpdateNorm.exit.i28.i.i ], [ %.0.i27.i.i, %bb.mf ], [ %.0.i27.i.i, %bb.me ] ; 4 uses
  %i.bsw = load i32, ptr %i.py, align 8, !tbaa !212
  %.not65.i.i.i = icmp eq i32 %i.bsw, 0
  br i1 %.not65.i.i.i, label %bb.mk, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bsx = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not66.i.i.i = icmp eq i32 %i.bsx, 0
  br i1 %.not66.i.i.i, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bsy = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.bsz = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.bta
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !164
  %i.btd = load ptr, ptr %i.tu, align 8, !tbaa !204
  %i.bte = load ptr, ptr %i.us, align 8, !tbaa !205
  %i.btf = call i32 @N_VLinearSumVectorArray(i32 noundef %i.bsy, double noundef %i.bql, ptr noundef %i.btc, double noundef 1.000000e+00, ptr noundef %i.btd, ptr noundef %i.bte) #13 ; 0 uses
  %i.btg = load ptr, ptr %i.us, align 8, !tbaa !205
  %i.bth = load ptr, ptr %i.qb, align 8, !tbaa !203
  %i.bti = load i32, ptr %i.qe, align 8, !tbaa !156
  %i.btj = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.btk = call i32 @N_VWrmsNormVectorArray(i32 noundef %i.bti, ptr noundef %i.btg, ptr noundef %i.bth, ptr noundef %i.btj) #13 ; 0 uses
  %i.btl = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 6 uses
  %i.btm = load double, ptr %i.btl, align 8, !tbaa !29 ; 3 uses
  %i.btn = load i32, ptr %i.qe, align 8, !tbaa !156 ; 3 uses
  %i.bto = icmp sgt i32 %i.btn, 1
  br i1 %i.bto, label %.lr.ph.preheader.i.i70.i.i.i, label %cvSensUpdateNorm.exit78.i.i.i

.lr.ph.preheader.i.i70.i.i.i:                     ; preds = %bb.mj
  %wide.trip.count.i.i71.i.i.i = zext nneg i32 %i.btn to i64
  %i.btp = add nsw i64 %wide.trip.count.i.i71.i.i.i, -1 ; 2 uses
  %xtraiter1221 = and i64 %i.btp, 3               ; 3 uses
  %i.btq = add nsw i32 %i.btn, -2
  %i.btr = icmp ult i32 %i.btq, 3
  br i1 %i.btr, label %.lr.ph.i.i72.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i70.i.i.i.new

.lr.ph.preheader.i.i70.i.i.i.new:                 ; preds = %.lr.ph.preheader.i.i70.i.i.i
  %unroll_iter1226 = and i64 %i.btp, -4
  br label %.lr.ph.i.i72.i.i.i

.lr.ph.i.i72.i.i.i:                               ; preds = %.lr.ph.i.i72.i.i.i, %.lr.ph.preheader.i.i70.i.i.i.new
  %indvars.iv.i.i73.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i70.i.i.i.new ], [ %indvars.iv.next.i.i76.i.i.i.3, %.lr.ph.i.i72.i.i.i ] ; 5 uses
  %.016.i.i74.i.i.i = phi double [ %i.btm, %.lr.ph.preheader.i.i70.i.i.i.new ], [ %.1.i.i75.i.i.i.3, %.lr.ph.i.i72.i.i.i ] ; 2 uses
  %niter1227 = phi i64 [ 0, %.lr.ph.preheader.i.i70.i.i.i.new ], [ %niter1227.next.3, %.lr.ph.i.i72.i.i.i ]
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btl, i64 %indvars.iv.i.i73.i.i.i
  %i.btt = load double, ptr %i.bts, align 8, !tbaa !29 ; 2 uses
  %i.btu = fcmp ogt double %i.btt, %.016.i.i74.i.i.i
  %.1.i.i75.i.i.i = select i1 %i.btu, double %i.btt, double %.016.i.i74.i.i.i ; 2 uses
  %i.btv = getelementptr inbounds nuw [8 x i8], ptr %i.btl, i64 %indvars.iv.i.i73.i.i.i
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 8
  %i.btx = load double, ptr %i.btw, align 8, !tbaa !29 ; 2 uses
  %i.bty = fcmp ogt double %i.btx, %.1.i.i75.i.i.i
  %.1.i.i75.i.i.i.1 = select i1 %i.bty, double %i.btx, double %.1.i.i75.i.i.i ; 2 uses
  %i.btz = getelementptr inbounds nuw [8 x i8], ptr %i.btl, i64 %indvars.iv.i.i73.i.i.i
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 16
  %i.bub = load double, ptr %i.bua, align 8, !tbaa !29 ; 2 uses
  %i.buc = fcmp ogt double %i.bub, %.1.i.i75.i.i.i.1
  %.1.i.i75.i.i.i.2 = select i1 %i.buc, double %i.bub, double %.1.i.i75.i.i.i.1 ; 2 uses
  %i.bud = getelementptr inbounds nuw [8 x i8], ptr %i.btl, i64 %indvars.iv.i.i73.i.i.i
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 24
  %i.buf = load double, ptr %i.bue, align 8, !tbaa !29 ; 2 uses
  %i.bug = fcmp ogt double %i.buf, %.1.i.i75.i.i.i.2
  %.1.i.i75.i.i.i.3 = select i1 %i.bug, double %i.buf, double %.1.i.i75.i.i.i.2 ; 3 uses
  %indvars.iv.next.i.i76.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i73.i.i.i, 4 ; 2 uses
  %niter1227.next.3 = add nuw nsw i64 %niter1227, 4 ; 2 uses
  %niter1227.ncmp.3 = icmp eq i64 %niter1227.next.3, %unroll_iter1226
  br i1 %niter1227.ncmp.3, label %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i72.i.i.i

cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i72.i.i.i
  %lcmp.mod1223.not = icmp eq i64 %xtraiter1221, 0
  br i1 %lcmp.mod1223.not, label %cvSensUpdateNorm.exit78.i.i.i, label %.lr.ph.i.i72.i.i.i.epil.preheader

.lr.ph.i.i72.i.i.i.epil.preheader:                ; preds = %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i70.i.i.i
  %indvars.iv.i.i73.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i70.i.i.i ], [ %indvars.iv.next.i.i76.i.i.i.3, %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa ]
  %.016.i.i74.i.i.i.epil.init = phi double [ %i.btm, %.lr.ph.preheader.i.i70.i.i.i ], [ %.1.i.i75.i.i.i.3, %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1225 = icmp ne i64 %xtraiter1221, 0
  call void @llvm.assume(i1 %lcmp.mod1225)
  br label %.lr.ph.i.i72.i.i.i.epil

.lr.ph.i.i72.i.i.i.epil:                          ; preds = %.lr.ph.i.i72.i.i.i.epil, %.lr.ph.i.i72.i.i.i.epil.preheader
  %indvars.iv.i.i73.i.i.i.epil = phi i64 [ %indvars.iv.i.i73.i.i.i.epil.init, %.lr.ph.i.i72.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i76.i.i.i.epil, %.lr.ph.i.i72.i.i.i.epil ] ; 2 uses
  %.016.i.i74.i.i.i.epil = phi double [ %.016.i.i74.i.i.i.epil.init, %.lr.ph.i.i72.i.i.i.epil.preheader ], [ %.1.i.i75.i.i.i.epil, %.lr.ph.i.i72.i.i.i.epil ] ; 2 uses
  %epil.iter1222 = phi i64 [ 0, %.lr.ph.i.i72.i.i.i.epil.preheader ], [ %epil.iter1222.next, %.lr.ph.i.i72.i.i.i.epil ]
  %i.buh = getelementptr inbounds nuw [8 x i8], ptr %i.btl, i64 %indvars.iv.i.i73.i.i.i.epil
  %i.bui = load double, ptr %i.buh, align 8, !tbaa !29 ; 2 uses
  %i.buj = fcmp ogt double %i.bui, %.016.i.i74.i.i.i.epil
  %.1.i.i75.i.i.i.epil = select i1 %i.buj, double %i.bui, double %.016.i.i74.i.i.i.epil ; 2 uses
  %indvars.iv.next.i.i76.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i73.i.i.i.epil, 1
  %epil.iter1222.next = add i64 %epil.iter1222, 1 ; 2 uses
  %epil.iter1222.cmp.not = icmp eq i64 %epil.iter1222.next, %xtraiter1221
  br i1 %epil.iter1222.cmp.not, label %cvSensUpdateNorm.exit78.i.i.i, label %.lr.ph.i.i72.i.i.i.epil, !llvm.loop !333

cvSensUpdateNorm.exit78.i.i.i:                    ; preds = %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i72.i.i.i.epil, %bb.mj
  %.0.lcssa.i.i68.i.i.i = phi double [ %i.btm, %bb.mj ], [ %.1.i.i75.i.i.i.3, %cvSensUpdateNorm.exit78.i.i.i.loopexit.unr-lcssa ], [ %.1.i.i75.i.i.i.epil, %.lr.ph.i.i72.i.i.i.epil ] ; 2 uses
  %i.buk = fcmp ogt double %.1.i30.i.i, %.0.lcssa.i.i68.i.i.i
  %..i69.i.i.i = select i1 %i.buk, double %.1.i30.i.i, double %.0.lcssa.i.i68.i.i.i
  br label %bb.mk

bb.mk:                                            ; preds = %cvSensUpdateNorm.exit78.i.i.i, %bb.mi, %bb.mh
  %.2.i31.i.i = phi double [ %..i69.i.i.i, %cvSensUpdateNorm.exit78.i.i.i ], [ %.1.i30.i.i, %bb.mi ], [ %.1.i30.i.i, %bb.mh ]
  %i.bul = load double, ptr %i.re, align 8, !tbaa !29
  %i.bum = fmul double %.2.i31.i.i, %i.bul
  %i.bun = fmul double %i.bum, 1.000000e+01
  %i.buo = load i32, ptr %i.qq, align 8, !tbaa !106
  %i.bup = add nsw i32 %i.buo, 1
  %i.buq = sitofp i32 %i.bup to double
  %i.bur = fdiv double 1.000000e+00, %i.buq
  %i.bus = call double @pow(double noundef %i.bun, double noundef %i.bur) #13
  %i.but = fadd double %i.bus, f0x3EB0C6F7A0B5ED8D
  %i.buu = fdiv double 1.000000e+00, %i.but
  %.pre.i285.i = load double, ptr %i.up, align 8, !tbaa !328
  br label %cvComputeEtaqp1.exit.i.i

cvComputeEtaqp1.exit.i.i:                         ; preds = %bb.mk, %bb.ma, %cvComputeEtaqm1.exit.i.i
  %i.buv = phi double [ %i.bpz, %bb.ma ], [ %.pre.i285.i, %bb.mk ], [ %i.bpz, %cvComputeEtaqm1.exit.i.i ] ; 4 uses
  %.059.i.i.i = phi double [ 0.000000e+00, %bb.ma ], [ %i.buu, %bb.mk ], [ 0.000000e+00, %cvComputeEtaqm1.exit.i.i ] ; 4 uses
  store double %.059.i.i.i, ptr %i.uq, align 8, !tbaa !331
  %i.buw = load double, ptr %i.uk, align 8, !tbaa !324 ; 4 uses
  %i.bux = fcmp ogt double %i.buw, %.059.i.i.i
  %..i40.i.i = select i1 %i.bux, double %i.buw, double %.059.i.i.i ; 2 uses
  %i.buy = fcmp ogt double %i.buv, %..i40.i.i
  %i.buz = select i1 %i.buy, double %i.buv, double %..i40.i.i ; 4 uses
  %i.bva = load double, ptr %i.ul, align 8, !tbaa !325
  %i.bvb = fcmp ogt double %i.buz, %i.bva
  br i1 %i.bvb, label %bb.ml, label %bb.mn

bb.ml:                                            ; preds = %cvComputeEtaqp1.exit.i.i
  %i.bvc = load double, ptr %i.um, align 8, !tbaa !326
  %i.bvd = fcmp olt double %i.buz, %i.bvc
  br i1 %i.bvd, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  store double 1.000000e+00, ptr %i.sp, align 8, !tbaa !262
  %i.bve = load i32, ptr %i.pl, align 8, !tbaa !105
  store i32 %i.bve, ptr %i.qo, align 4, !tbaa !267
  br label %cvChooseEta.exit.i.i

bb.mn:                                            ; preds = %bb.ml, %cvComputeEtaqp1.exit.i.i
  %i.bvf = fcmp oeq double %i.buz, %i.buw
  br i1 %i.bvf, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  store double %i.buw, ptr %i.sp, align 8, !tbaa !262
  %i.bvg = load i32, ptr %i.pl, align 8, !tbaa !105
  store i32 %i.bvg, ptr %i.qo, align 4, !tbaa !267
  br label %cvChooseEta.exit.i.i

bb.mp:                                            ; preds = %bb.mn
  %i.bvh = fcmp oeq double %i.buz, %i.buv
  br i1 %i.bvh, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  store double %i.buv, ptr %i.sp, align 8, !tbaa !262
  %i.bvi = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bvj = add nsw i32 %i.bvi, -1
  store i32 %i.bvj, ptr %i.qo, align 4, !tbaa !267
  br label %cvChooseEta.exit.i.i

bb.mr:                                            ; preds = %bb.mp
  store double %.059.i.i.i, ptr %i.sp, align 8, !tbaa !262
  %i.bvk = load i32, ptr %i.pl, align 8, !tbaa !105
  %i.bvl = add nsw i32 %i.bvk, 1
  store i32 %i.bvl, ptr %i.qo, align 4, !tbaa !267
  %i.bvm = load i32, ptr %i.qw, align 8, !tbaa !23
  %i.bvn = icmp eq i32 %i.bvm, 2
  br i1 %i.bvn, label %bb.ms, label %cvChooseEta.exit.i.i

bb.ms:                                            ; preds = %bb.mr
  %i.bvo = load ptr, ptr %i.ru, align 8, !tbaa !94
  %i.bvp = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bvq = sext i32 %i.bvp to i64
  %i.bvr = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.bvq
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bvo, ptr noundef %i.bvs) #13
  %i.bvt = load i32, ptr %i.pr, align 8, !tbaa !148
  %.not.i41.i.i = icmp eq i32 %i.bvt, 0
  br i1 %.not.i41.i.i, label %bb.mv, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bvu = load i32, ptr %i.ps, align 8, !tbaa !239
  %.not75.i.i.i = icmp eq i32 %i.bvu, 0
  br i1 %.not75.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bvv = load ptr, ptr %i.st, align 8, !tbaa !142
  %i.bvw = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bvx = sext i32 %i.bvw to i64
  %i.bvy = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.bvx
  %i.bvz = load ptr, ptr %i.bvy, align 8, !tbaa !63
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bvv, ptr noundef %i.bvz) #13
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %bb.ms
  %i.bwa = load i32, ptr %i.pv, align 4, !tbaa !172
  %.not76.i.i.i = icmp eq i32 %i.bwa, 0
  br i1 %.not76.i.i.i, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bwb = load i32, ptr %i.qd, align 8, !tbaa !263
  %.not77.i.i.i = icmp eq i32 %i.bwb, 0
  br i1 %.not77.i.i.i, label %bb.mx, label %.preheader81.i.i.i

.preheader81.i.i.i:                               ; preds = %bb.mw
  %i.bwc = load i32, ptr %i.qe, align 8, !tbaa !156 ; 4 uses
  %i.bwd = icmp sgt i32 %i.bwc, 0
  %i.bwe = load ptr, ptr %i.qf, align 8, !tbaa !100 ; 3 uses
  br i1 %i.bwd, label %.lr.ph.i.i.i, label %._crit_edge.i42.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader81.i.i.i
  %wide.trip.count.i.i287.i = zext nneg i32 %i.bwc to i64 ; 3 uses
  %min.iters.check964 = icmp ult i32 %i.bwc, 4
  br i1 %min.iters.check964, label %scalar.ph963.preheader, label %vector.ph965

vector.ph965:                                     ; preds = %.lr.ph.i.i.i
  %n.vec966 = and i64 %wide.trip.count.i.i287.i, 2147483644 ; 3 uses
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next969, %vector.body967 ] ; 2 uses
  %i.bwf = getelementptr inbounds nuw [8 x i8], ptr %i.bwe, i64 %index968 ; 2 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bwf, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.bwg, align 8, !tbaa !29
  %index.next969 = add nuw i64 %index968, 4       ; 2 uses
  %i.bwh = icmp eq i64 %index.next969, %n.vec966
  br i1 %i.bwh, label %middle.block970, label %vector.body967, !llvm.loop !334

middle.block970:                                  ; preds = %vector.body967
  %cmp.n971 = icmp eq i64 %n.vec966, %wide.trip.count.i.i287.i
  br i1 %cmp.n971, label %._crit_edge.i42.i.i, label %scalar.ph963.preheader

scalar.ph963.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block970
  %indvars.iv.i.i288.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec966, %middle.block970 ]
  br label %scalar.ph963

scalar.ph963:                                     ; preds = %scalar.ph963.preheader, %scalar.ph963
  %indvars.iv.i.i288.i = phi i64 [ %indvars.iv.next.i.i289.i, %scalar.ph963 ], [ %indvars.iv.i.i288.i.ph, %scalar.ph963.preheader ] ; 2 uses
  %i.bwi = getelementptr inbounds nuw [8 x i8], ptr %i.bwe, i64 %indvars.iv.i.i288.i
  store double 1.000000e+00, ptr %i.bwi, align 8, !tbaa !29
  %indvars.iv.next.i.i289.i = add nuw nsw i64 %indvars.iv.i.i288.i, 1 ; 2 uses
  %exitcond.not.i.i290.i = icmp eq i64 %indvars.iv.next.i.i289.i, %wide.trip.count.i.i287.i
  br i1 %exitcond.not.i.i290.i, label %._crit_edge.i42.i.i, label %scalar.ph963, !llvm.loop !335

._crit_edge.i42.i.i:                              ; preds = %scalar.ph963, %middle.block970, %.preheader81.i.i.i
  %i.bwj = load ptr, ptr %i.sc, align 8, !tbaa !177
  %i.bwk = load i32, ptr %i.ug, align 8, !tbaa !26
  %i.bwl = sext i32 %i.bwk to i64
  %i.bwm = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.bwl
  %i.bwn = load ptr, ptr %i.bwm, align 8, !tbaa !164
  %i.bwo = call i32 @N_VScaleVectorArray(i32 noundef %i.bwc, ptr noundef %i.bwe, ptr noundef %i.bwj, ptr noundef %i.bwn) #13 ; 0 uses
  br label %bb.mx

bb.mx:                                            ; preds = %._crit_edge.i42.i.i, %bb.mw, %bb.mv
  %i.bwp = load i32, ptr %i.py, align 8, !tbaa !212
  %.not78.i.i.i = icmp eq i32 %i.bwp, 0
  br i1 %.not78.i.i.i, label %cvChooseEta.exit.i.i, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bwq = load i32, ptr %i.pz, align 4, !tbaa !240
  %.not79.i.i286.i = icmp eq i32 %i.bwq, 0
  br i1 %.not79.i.i286.i, label %cvChooseEta.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.my
  %i.bwr = load i32, ptr %i.qe, align 8, !tbaa !156 ; 4 uses
  %i.bws = icmp sgt i32 %i.bwr, 0
end_hunk_3
begin_hunk_4_@cvHin:bb.a
  br i1 %.not123.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = load i32, ptr %i.df, align 8, !tbaa !263
  %.not124.i = icmp eq i32 %i.fx, 0
  br i1 %.not124.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = load ptr, ptr %i.dr, align 8, !tbaa !96 ; 2 uses
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !94  ; 2 uses
  %i.ga = load double, ptr %i.a, align 8, !tbaa !103
  %i.gb = fadd double %i.ep, %i.ga                ; 2 uses
  %i.gc = load ptr, ptr %i.de, align 8, !tbaa !235 ; 2 uses
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !95  ; 2 uses
  %i.ge = load ptr, ptr %i.dj, align 8, !tbaa !175 ; 2 uses
  %i.gf = load ptr, ptr %i.ds, align 8, !tbaa !178 ; 2 uses
  %i.gg = load i32, ptr %i.dt, align 4, !tbaa !43
  %i.gh = icmp eq i32 %i.gg, 2
  br i1 %i.gh, label %bb.ac, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ab
  %i.gi = load i32, ptr %i.dg, align 8, !tbaa !156 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.i.i, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.gl = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.gm = load ptr, ptr %i.dv, align 8, !tbaa !158
  %i.gn = tail call i32 %i.gk(i32 noundef %i.gl, double noundef %i.gb, ptr noundef %i.gc, ptr noundef %i.gd, ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef %i.gm, ptr noundef %i.fy, ptr noundef %i.fz) #13, !inline_history !348
  %i.go = load i64, ptr %i.dw, align 8, !tbaa !345
  %i.gp = add nsw i64 %i.go, 1
  store i64 %i.gp, ptr %i.dw, align 8, !tbaa !345
  br label %cvSensRhsWrapper.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gq = load i32, ptr %i.dg, align 8, !tbaa !156 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %indvars.iv.next.i.i, %i.gr
  br i1 %i.gs, label %.lr.ph.i.i, label %.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ad ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.gt = phi i32 [ %i.gq, %bb.ad ], [ %i.gi, %.preheader.i.i ]
  %i.gu = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !63
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i.i
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !63
  %i.gz = load ptr, ptr %i.dv, align 8, !tbaa !158
  %i.ha = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.hb = tail call i32 %i.gu(i32 noundef %i.gt, double noundef %i.gb, ptr noundef %i.gc, ptr noundef %i.gd, i32 noundef %i.ha, ptr noundef %i.gw, ptr noundef %i.gy, ptr noundef %i.gz, ptr noundef %i.fy, ptr noundef %i.fz) #13, !inline_history !348 ; 2 uses
  %i.hc = load i64, ptr %i.dw, align 8, !tbaa !345
  %i.hd = add nsw i64 %i.hc, 1
  store i64 %i.hd, ptr %i.dw, align 8, !tbaa !345
  %.not.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i, label %bb.ad, label %cvSensRhsWrapper.exit.i

cvSensRhsWrapper.exit.i:                          ; preds = %.lr.ph.i.i, %bb.ac
  %.1.i.i = phi i32 [ %i.gn, %bb.ac ], [ %i.hb, %.lr.ph.i.i ] ; 2 uses
  %i.he = icmp slt i32 %.1.i.i, 0
  br i1 %i.he, label %cvYddNorm.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %cvSensRhsWrapper.exit.i
  %.not125.i = icmp eq i32 %.1.i.i, 0
  br i1 %.not125.i, label %.thread.i, label %bb.at

.thread.i:                                        ; preds = %bb.ad, %bb.ae, %.preheader.i.i, %bb.aa, %bb.z
  %i.hf = load i32, ptr %i.br, align 8, !tbaa !212
  %.not126.i = icmp eq i32 %i.hf, 0
  br i1 %.not126.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.thread.i
  %i.hg = load i32, ptr %i.dy, align 4, !tbaa !240
  %.not127.i = icmp eq i32 %i.hg, 0
  br i1 %.not127.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = load ptr, ptr %i.dr, align 8, !tbaa !96
  %i.hi = load ptr, ptr %i.dz, align 8, !tbaa !142
  %i.hj = load ptr, ptr %i.ea, align 8, !tbaa !207
  %i.hk = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.hl = load double, ptr %i.a, align 8, !tbaa !103
  %i.hm = fadd double %i.ep, %i.hl
  %i.hn = load ptr, ptr %i.de, align 8, !tbaa !235
  %i.ho = load ptr, ptr %i.dj, align 8, !tbaa !175
  %i.hp = load ptr, ptr %i.dp, align 8, !tbaa !144
  %i.hq = load ptr, ptr %i.eb, align 8, !tbaa !205
  %i.hr = load ptr, ptr %i.ec, align 8, !tbaa !208
  %i.hs = tail call i32 %i.hj(i32 noundef %i.hk, double noundef %i.hm, ptr noundef %i.hn, ptr noundef %i.ho, ptr noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hh, ptr noundef %i.hi) #13, !inline_history !347 ; 2 uses
  %i.ht = load i64, ptr %i.ed, align 8, !tbaa !246
  %i.hu = add nsw i64 %i.ht, 1
  store i64 %i.hu, ptr %i.ed, align 8, !tbaa !246
  %i.hv = icmp slt i32 %i.hs, 0
  br i1 %i.hv, label %cvYddNorm.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not128.i = icmp eq i32 %i.hs, 0
  br i1 %.not128.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.thread.i
  %i.hw = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.hx ; 2 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 1 ; 4 uses
  %i.ia = extractelement <2 x double> %i.hy, i64 0 ; 4 uses
  %i.ib = load ptr, ptr %i.m, align 8, !tbaa !95  ; 2 uses
  %i.ic = load ptr, ptr %i.y, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef %i.ia, ptr noundef %i.ib, double noundef %i.hz, ptr noundef %i.ic, ptr noundef %i.ib) #13
  %i.id = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.ie = load ptr, ptr %i.ee, align 8, !tbaa !69
  %i.if = tail call double @N_VWrmsNorm(ptr noundef %i.id, ptr noundef %i.ie) #13 ; 4 uses
  %i.ig = load i32, ptr %i.ab, align 8, !tbaa !148
  %.not129.i = icmp eq i32 %i.ig, 0
  br i1 %.not129.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ih = load i32, ptr %i.dn, align 8, !tbaa !239
  %.not130.i = icmp eq i32 %i.ih, 0
  br i1 %.not130.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = load ptr, ptr %i.dp, align 8, !tbaa !144 ; 2 uses
  %i.ij = load ptr, ptr %i.ef, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef %i.ia, ptr noundef %i.ii, double noundef %i.hz, ptr noundef %i.ij, ptr noundef %i.ii) #13
  %i.ik = load ptr, ptr %i.dp, align 8, !tbaa !144
  %i.il = load ptr, ptr %i.eg, align 8, !tbaa !141
  %i.im = tail call double @N_VWrmsNorm(ptr noundef %i.ik, ptr noundef %i.il) #13 ; 2 uses
  %i.in = fcmp ogt double %i.if, %i.im
  %..i.i = select i1 %i.in, double %i.if, double %i.im
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.3 = phi double [ %i.if, %bb.ai ], [ %i.if, %bb.aj ], [ %..i.i, %bb.ak ] ; 4 uses
  %i.io = load i32, ptr %i.ar, align 4, !tbaa !172
  %.not131.i = icmp eq i32 %i.io, 0
  br i1 %.not131.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ip = load i32, ptr %i.df, align 8, !tbaa !263
  %.not132.i = icmp eq i32 %i.ip, 0
  br i1 %.not132.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.ir = load ptr, ptr %i.ds, align 8, !tbaa !178 ; 2 uses
  %i.is = load ptr, ptr %i.di, align 8, !tbaa !164
  %i.it = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.iq, double noundef %i.ia, ptr noundef %i.ir, double noundef %i.hz, ptr noundef %i.is, ptr noundef %i.ir) #13
  %.not133.i = icmp eq i32 %i.it, 0
  br i1 %.not133.i, label %bb.ao, label %cvYddNorm.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.iu = load ptr, ptr %i.ds, align 8, !tbaa !178
  %i.iv = load ptr, ptr %i.eh, align 8, !tbaa !176
  %i.iw = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.ix = load ptr, ptr %i.ei, align 8, !tbaa !100
  %i.iy = tail call i32 @N_VWrmsNormVectorArray(i32 noundef %i.iw, ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.ix) #13 ; 0 uses
  %i.iz = load ptr, ptr %i.ei, align 8, !tbaa !100 ; 6 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !29 ; 3 uses
  %i.jb = load i32, ptr %i.dg, align 8, !tbaa !156 ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %.lr.ph.preheader.i.i101, label %cvSensUpdateNorm.exit

.lr.ph.preheader.i.i101:                          ; preds = %bb.ao
  %wide.trip.count.i.i102 = zext nneg i32 %i.jb to i64
  %i.jd = add nsw i64 %wide.trip.count.i.i102, -1 ; 2 uses
  %xtraiter = and i64 %i.jd, 3                    ; 3 uses
  %i.je = add nsw i32 %i.jb, -2
  %i.jf = icmp ult i32 %i.je, 3
  br i1 %i.jf, label %.lr.ph.i.i103.epil.preheader, label %.lr.ph.preheader.i.i101.new

.lr.ph.preheader.i.i101.new:                      ; preds = %.lr.ph.preheader.i.i101
  %unroll_iter = and i64 %i.jd, -4
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103, %.lr.ph.preheader.i.i101.new
  %indvars.iv.i.i104 = phi i64 [ 1, %.lr.ph.preheader.i.i101.new ], [ %indvars.iv.next.i.i107.3, %.lr.ph.i.i103 ] ; 5 uses
  %.016.i.i105 = phi double [ %i.ja, %.lr.ph.preheader.i.i101.new ], [ %.1.i.i106.3, %.lr.ph.i.i103 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i101.new ], [ %niter.next.3, %.lr.ph.i.i103 ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i104
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !29 ; 2 uses
  %i.ji = fcmp ogt double %i.jh, %.016.i.i105
  %.1.i.i106 = select i1 %i.ji, double %i.jh, double %.016.i.i105 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i104
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !29 ; 2 uses
  %i.jm = fcmp ogt double %i.jl, %.1.i.i106
  %.1.i.i106.1 = select i1 %i.jm, double %i.jl, double %.1.i.i106 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i104
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !29 ; 2 uses
  %i.jq = fcmp ogt double %i.jp, %.1.i.i106.1
  %.1.i.i106.2 = select i1 %i.jq, double %i.jp, double %.1.i.i106.1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i104
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load double, ptr %i.js, align 8, !tbaa !29 ; 2 uses
  %i.ju = fcmp ogt double %i.jt, %.1.i.i106.2
  %.1.i.i106.3 = select i1 %i.ju, double %i.jt, double %.1.i.i106.2 ; 3 uses
  %indvars.iv.next.i.i107.3 = add nuw nsw i64 %indvars.iv.i.i104, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cvSensUpdateNorm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i103

cvSensUpdateNorm.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i103
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cvSensUpdateNorm.exit, label %.lr.ph.i.i103.epil.preheader

.lr.ph.i.i103.epil.preheader:                     ; preds = %cvSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i101
  %indvars.iv.i.i104.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i101 ], [ %indvars.iv.next.i.i107.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %.016.i.i105.epil.init = phi double [ %i.ja, %.lr.ph.preheader.i.i101 ], [ %.1.i.i106.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.i.i103.epil

.lr.ph.i.i103.epil:                               ; preds = %.lr.ph.i.i103.epil, %.lr.ph.i.i103.epil.preheader
  %indvars.iv.i.i104.epil = phi i64 [ %indvars.iv.i.i104.epil.init, %.lr.ph.i.i103.epil.preheader ], [ %indvars.iv.next.i.i107.epil, %.lr.ph.i.i103.epil ] ; 2 uses
  %.016.i.i105.epil = phi double [ %.016.i.i105.epil.init, %.lr.ph.i.i103.epil.preheader ], [ %.1.i.i106.epil, %.lr.ph.i.i103.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i103.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i103.epil ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.i.i104.epil
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !29 ; 2 uses
  %i.jx = fcmp ogt double %i.jw, %.016.i.i105.epil
  %.1.i.i106.epil = select i1 %i.jx, double %i.jw, double %.016.i.i105.epil ; 2 uses
  %indvars.iv.next.i.i107.epil = add nuw nsw i64 %indvars.iv.i.i104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cvSensUpdateNorm.exit, label %.lr.ph.i.i103.epil, !llvm.loop !349

cvSensUpdateNorm.exit:                            ; preds = %cvSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.i.i103.epil, %bb.ao
  %.0.lcssa.i.i99 = phi double [ %i.ja, %bb.ao ], [ %.1.i.i106.3, %cvSensUpdateNorm.exit.loopexit.unr-lcssa ], [ %.1.i.i106.epil, %.lr.ph.i.i103.epil ] ; 2 uses
  %i.jy = fcmp ogt double %.3, %.0.lcssa.i.i99
  %..i100 = select i1 %i.jy, double %.3, double %.0.lcssa.i.i99
  br label %bb.ap

bb.ap:                                            ; preds = %cvSensUpdateNorm.exit, %bb.am, %bb.al
  %.4 = phi double [ %.3, %bb.al ], [ %.3, %bb.am ], [ %..i100, %cvSensUpdateNorm.exit ] ; 4 uses
  %i.jz = load i32, ptr %i.br, align 8, !tbaa !212
  %.not134.i = icmp eq i32 %i.jz, 0
  br i1 %.not134.i, label %cvYddNorm.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ka = load i32, ptr %i.dy, align 4, !tbaa !240
  %.not135.i = icmp eq i32 %i.ka, 0
  br i1 %.not135.i, label %cvYddNorm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kb = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.kc = load ptr, ptr %i.eb, align 8, !tbaa !205 ; 2 uses
  %i.kd = load ptr, ptr %i.ej, align 8, !tbaa !164
  %i.ke = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.kb, double noundef %i.ia, ptr noundef %i.kc, double noundef %i.hz, ptr noundef %i.kd, ptr noundef %i.kc) #13
  %.not136.i = icmp eq i32 %i.ke, 0
  br i1 %.not136.i, label %bb.as, label %cvYddNorm.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.kf = load ptr, ptr %i.eb, align 8, !tbaa !205
  %i.kg = load ptr, ptr %i.ek, align 8, !tbaa !203
  %i.kh = load i32, ptr %i.dg, align 8, !tbaa !156
  %i.ki = load ptr, ptr %i.ei, align 8, !tbaa !100
  %i.kj = tail call i32 @N_VWrmsNormVectorArray(i32 noundef %i.kh, ptr noundef %i.kf, ptr noundef %i.kg, ptr noundef %i.ki) #13 ; 0 uses
  %i.kk = load ptr, ptr %i.ei, align 8, !tbaa !100 ; 6 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !29 ; 3 uses
  %i.km = load i32, ptr %i.dg, align 8, !tbaa !156 ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %.lr.ph.preheader.i.i, label %cvQuadSensUpdateNorm.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.as
  %wide.trip.count.i.i = zext nneg i32 %i.km to i64
  %i.ko = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter214 = and i64 %i.ko, 3                 ; 3 uses
  %i.kp = add nsw i32 %i.km, -2
  %i.kq = icmp ult i32 %i.kp, 3
  br i1 %i.kq, label %.lr.ph.i.i95.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter219 = and i64 %i.ko, -4
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i96 = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i98.3, %.lr.ph.i.i95 ] ; 5 uses
  %.016.i.i = phi double [ %i.kl, %.lr.ph.preheader.i.i.new ], [ %.1.i.i97.3, %.lr.ph.i.i95 ] ; 2 uses
  %niter220 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter220.next.3, %.lr.ph.i.i95 ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i96
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !29 ; 2 uses
  %i.kt = fcmp ogt double %i.ks, %.016.i.i
  %.1.i.i97 = select i1 %i.kt, double %i.ks, double %.016.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i96
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !29 ; 2 uses
  %i.kx = fcmp ogt double %i.kw, %.1.i.i97
  %.1.i.i97.1 = select i1 %i.kx, double %i.kw, double %.1.i.i97 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i96
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load double, ptr %i.kz, align 8, !tbaa !29 ; 2 uses
  %i.lb = fcmp ogt double %i.la, %.1.i.i97.1
  %.1.i.i97.2 = select i1 %i.lb, double %i.la, double %.1.i.i97.1 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i96
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load double, ptr %i.ld, align 8, !tbaa !29 ; 2 uses
  %i.lf = fcmp ogt double %i.le, %.1.i.i97.2
  %.1.i.i97.3 = select i1 %i.lf, double %i.le, double %.1.i.i97.2 ; 3 uses
  %indvars.iv.next.i.i98.3 = add nuw nsw i64 %indvars.iv.i.i96, 4 ; 2 uses
  %niter220.next.3 = add nuw nsw i64 %niter220, 4 ; 2 uses
  %niter220.ncmp.3 = icmp eq i64 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i95

cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i.i95
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %cvQuadSensUpdateNorm.exit, label %.lr.ph.i.i95.epil.preheader

.lr.ph.i.i95.epil.preheader:                      ; preds = %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i96.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i98.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %.016.i.i.epil.init = phi double [ %i.kl, %.lr.ph.preheader.i.i ], [ %.1.i.i97.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.i.i95.epil

.lr.ph.i.i95.epil:                                ; preds = %.lr.ph.i.i95.epil, %.lr.ph.i.i95.epil.preheader
  %indvars.iv.i.i96.epil = phi i64 [ %indvars.iv.i.i96.epil.init, %.lr.ph.i.i95.epil.preheader ], [ %indvars.iv.next.i.i98.epil, %.lr.ph.i.i95.epil ] ; 2 uses
  %.016.i.i.epil = phi double [ %.016.i.i.epil.init, %.lr.ph.i.i95.epil.preheader ], [ %.1.i.i97.epil, %.lr.ph.i.i95.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.i.i95.epil.preheader ], [ %epil.iter215.next, %.lr.ph.i.i95.epil ]
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i.i96.epil
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !29 ; 2 uses
  %i.li = fcmp ogt double %i.lh, %.016.i.i.epil
  %.1.i.i97.epil = select i1 %i.li, double %i.lh, double %.016.i.i.epil ; 2 uses
  %indvars.iv.next.i.i98.epil = add nuw nsw i64 %indvars.iv.i.i96.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %cvQuadSensUpdateNorm.exit, label %.lr.ph.i.i95.epil, !llvm.loop !350

cvQuadSensUpdateNorm.exit:                        ; preds = %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa, %.lr.ph.i.i95.epil, %bb.as
  %.0.lcssa.i.i = phi double [ %i.kl, %bb.as ], [ %.1.i.i97.3, %cvQuadSensUpdateNorm.exit.loopexit.unr-lcssa ], [ %.1.i.i97.epil, %.lr.ph.i.i95.epil ] ; 2 uses
  %i.lj = fcmp ogt double %.4, %.0.lcssa.i.i
  %..i = select i1 %i.lj, double %.4, double %.0.lcssa.i.i
  br label %cvYddNorm.exit

bb.at:                                            ; preds = %bb.ae, %bb.ah, %bb.u, %bb.y
  %.0.i.ph117 = phi i32 [ 13, %bb.y ], [ 10, %bb.u ], [ 15, %bb.ah ], [ 14, %bb.ae ]
  %i.lk = fmul double %.177143, 2.000000e-01
  %i.ll = add nuw nsw i32 %.078142, 1             ; 2 uses
  %exitcond = icmp eq i32 %i.ll, 5
  br i1 %exitcond, label %cvYddNorm.exit.thread123, label %bb.q

cvYddNorm.exit.thread123:                         ; preds = %bb.at
  %i.lm = icmp samesign ult i32 %.079144, 3
  br i1 %i.lm, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %cvYddNorm.exit.thread123
  switch i32 %.0.i.ph117, label %.loopexit [
    i32 10, label %cvYddNorm.exit.thread
    i32 13, label %bb.av
    i32 14, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  br label %cvYddNorm.exit.thread

bb.aw:                                            ; preds = %bb.au
  br label %cvYddNorm.exit.thread

cvYddNorm.exit:                                   ; preds = %cvQuadSensUpdateNorm.exit, %bb.aq, %bb.ap
  %.2113 = phi double [ %.4, %bb.aq ], [ %..i, %cvQuadSensUpdateNorm.exit ], [ %.4, %bb.ap ] ; 2 uses
  %i.ln = fmul double %.0104.i, %.2113
  %i.lo = fmul double %.0104.i, %i.ln
  %i.lp = fcmp ogt double %i.lo, 2.000000e+00
  br i1 %i.lp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %cvYddNorm.exit
  %i.lq = fdiv double 2.000000e+00, %.2113        ; 2 uses
  %i.lr = fcmp ugt double %i.lq, 0.000000e+00
  br i1 %i.lr, label %.sink.split, label %bb.az

bb.ay:                                            ; preds = %cvYddNorm.exit
  %i.ls = fmul double %.0104.i, %.177143          ; 2 uses
  %i.lt = fcmp ugt double %i.ls, 0.000000e+00
  br i1 %i.lt, label %.sink.split, label %bb.az

.sink.split:                                      ; preds = %bb.ay, %bb.ax
  %.sink = phi double [ %i.lq, %bb.ax ], [ %i.ls, %bb.ay ]
  %i.lu = tail call double @sqrt(double noundef %.sink) #13
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.ay, %bb.ax
  %i.lv = phi double [ 0.000000e+00, %bb.ax ], [ 0.000000e+00, %bb.ay ], [ %i.lu, %.sink.split ] ; 4 uses
  %i.lw = icmp eq i32 %.079144, 4
  br i1 %i.lw, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lx = fdiv double %i.lv, %.177143             ; 3 uses
  %i.ly = fcmp ogt double %i.lx, 5.000000e-01
  %i.lz = fcmp olt double %i.lx, 2.000000e+00
  %or.cond = and i1 %i.ly, %i.lz
  br i1 %or.cond, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ma = icmp samesign ugt i32 %.079144, 1
  %i.mb = fcmp ogt double %i.lx, 2.000000e+00
  %or.cond3 = and i1 %i.ma, %i.mb
  br i1 %or.cond3, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mc = add nuw nsw i32 %.079144, 1
  br label %.preheader

.loopexit:                                        ; preds = %bb.bb, %bb.ba, %bb.az, %cvYddNorm.exit.thread123, %bb.au
  %.174 = phi double [ %.075146, %cvYddNorm.exit.thread123 ], [ %.075146, %bb.au ], [ %i.lv, %bb.az ], [ %i.lv, %bb.ba ], [ %.177143, %bb.bb ]
  %i.md = fmul double %.174, 5.000000e-01         ; 2 uses
  %i.me = fcmp olt double %i.md, %i.l
  %.072 = select i1 %i.me, double %i.l, double %i.md ; 2 uses
  %i.mf = fcmp ogt double %.072, %.0104.i
  %.1 = select i1 %i.mf, double %.0104.i, double %.072 ; 2 uses
  %i.mg = fneg double %.1
  %.2 = select i1 %i.d, double %i.mg, double %.1
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %.2, ptr %i.mh, align 8, !tbaa !250
  br label %cvYddNorm.exit.thread

cvYddNorm.exit.thread:                            ; preds = %bb.an, %bb.ar, %bb.ag, %cvSensRhsWrapper.exit.i, %bb.x, %bb.t, %bb.s, %bb.au, %bb.o, %bb.p, %.loopexit, %bb.aw, %bb.av
  %.083 = phi i32 [ -43, %bb.aw ], [ 0, %bb.o ], [ 0, %.loopexit ], [ -10, %bb.au ], [ -33, %bb.av ], [ 0, %bb.p ], [ -51, %bb.ag ], [ -28, %bb.s ], [ -8, %bb.t ], [ -31, %bb.x ], [ -41, %cvSensRhsWrapper.exit.i ], [ -28, %bb.ar ], [ -28, %bb.an ]
  ret i32 %.083
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -9999, -2) i32 @cvHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.ab [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -8, label %bb.f
    i32 -11, label %bb.g
    i32 -10, label %bb.h
    i32 -12, label %bb.i
    i32 -31, label %bb.j
    i32 -34, label %bb.k
    i32 -33, label %bb.l
    i32 -41, label %bb.m
    i32 -44, label %bb.n
    i32 -43, label %bb.o
    i32 -51, label %bb.p
    i32 -54, label %bb.q
    i32 -53, label %bb.r
    i32 -27, label %bb.s
    i32 -21, label %bb.t
    i32 -9999, label %bb.u
    i32 -14, label %bb.v
    i32 -15, label %bb.w
    i32 -16, label %bb.x
    i32 -56, label %bb.y
    i32 -57, label %bb.z
    i32 -58, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load double, ptr %i.a, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.d = load double, ptr %i.c, align 8, !tbaa !250
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 8197, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, double noundef %i.b, double noundef %i.d)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.f = load double, ptr %i.e, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.h = load double, ptr %i.g, align 8, !tbaa !250
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 8201, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.83, double noundef %i.f, double noundef %i.h)
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.j = load double, ptr %i.i, align 8, !tbaa !103
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 8205, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84, double noundef %i.j)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.l = load double, ptr %i.k, align 8, !tbaa !103
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 8209, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, double noundef %i.l)
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.n = load double, ptr %i.m, align 8, !tbaa !103
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 8213, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, double noundef %i.n)
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.p = load double, ptr %i.o, align 8, !tbaa !103
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 8217, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86, double noundef %i.p)
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.r = load double, ptr %i.q, align 8, !tbaa !103
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 8221, ptr noundef nonnull @__func__.cvHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, double noundef %i.r)
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.t = load double, ptr %i.s, align 8, !tbaa !103
end_hunk_4
begin_hunk_5_@cvQuadSensEwtSet:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8, !tbaa !218
  switch i32 %i.b, label %cvQuadSensEwtSetEE.exit [
    i32 4, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  tail call void @N_VScale(double noundef %i.l, ptr noundef %i.n, ptr noundef %i.e) #13
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = tail call fastcc i32 @cvQuadEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.e, ptr noundef %i.p)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %cvQuadSensEwtSetEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !29
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  tail call void @N_VScale(double noundef %i.t, ptr noundef %i.u, ptr noundef %i.u) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.g, align 8, !tbaa !156
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !156
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i10, label %cvQuadSensEwtSetEE.exit

.lr.ph.i10:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i13, %bb.g ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i11
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !144
  tail call void @N_VAbs(ptr noundef %i.ag, ptr noundef %i.ah) #13
  %i.ai = load double, ptr %i.ac, align 8, !tbaa !219
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 2 uses
  tail call void @N_VScale(double noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.aj) #13
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !221
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i11
  %i.an = load double, ptr %i.am, align 8, !tbaa !29
  tail call void @N_VAddConst(ptr noundef %i.ak, double noundef %i.an, ptr noundef %i.ak) #13
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !222
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i11
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !67
  %.not.i12 = icmp eq i32 %i.aq, 0
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.as = tail call double @N_VMin(ptr noundef %i.ar) #13
  %i.at = fcmp ugt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.g, label %cvQuadSensEwtSetEE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !144
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63
  tail call void @N_VInv(ptr noundef %i.au, ptr noundef %i.aw) #13
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !156
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i13, %i.ay
  br i1 %i.az, label %bb.e, label %cvQuadSensEwtSetEE.exit

bb.h:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !156
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i14, label %cvQuadSensEwtSetEE.exit

.lr.ph.i14:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ 0, %.lr.ph.i14 ], [ %indvars.iv.next.i17, %bb.k ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i15
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !144
  tail call void @N_VAbs(ptr noundef %i.bi, ptr noundef %i.bj) #13
  %i.bk = load double, ptr %i.be, align 8, !tbaa !219
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !144 ; 2 uses
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !224
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i15
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef %i.bk, ptr noundef %i.bl, double noundef 1.000000e+00, ptr noundef %i.bo, ptr noundef %i.bl) #13
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !222
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i15
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !67
  %.not.i16 = icmp eq i32 %i.br, 0
  br i1 %.not.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !144
  %i.bt = tail call double @N_VMin(ptr noundef %i.bs) #13
  %i.bu = fcmp ugt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.k, label %cvQuadSensEwtSetEE.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !144
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i15
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63
  tail call void @N_VInv(ptr noundef %i.bv, ptr noundef %i.bx) #13
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %i.by = load i32, ptr %i.ba, align 8, !tbaa !156
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next.i17, %i.bz
  br i1 %i.ca, label %bb.i, label %cvQuadSensEwtSetEE.exit

cvQuadSensEwtSetEE.exit:                          ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %.lr.ph.i, %bb.h, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -1, %bb.f ], [ 0, %bb.b ], [ -1, %.lr.ph.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.g ], [ -1, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define double @cvSensUpdateNorm(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = tail call i32 @N_VWrmsNormVectorArray(i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %i.d) #13 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !100  ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !29 ; 3 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %cvSensNorm.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = add nsw i32 %i.h, -2
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.016.i = phi double [ %i.g, %.lr.ph.preheader.i.new ], [ %.1.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !29 ; 2 uses
  %i.o = fcmp ogt double %i.n, %.016.i
  %.1.i = select i1 %i.o, double %i.n, double %.016.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %i.s = fcmp ogt double %i.r, %.1.i
  %.1.i.1 = select i1 %i.s, double %i.r, double %.1.i ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.w = fcmp ogt double %i.v, %.1.i.1
  %.1.i.2 = select i1 %i.w, double %i.v, double %.1.i.1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !29 ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.1.i.2
  %.1.i.3 = select i1 %i.aa, double %i.z, double %.1.i.2 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cvSensNorm.exit.loopexit.unr-lcssa, label %.lr.ph.i

cvSensNorm.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cvSensNorm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %cvSensNorm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %cvSensNorm.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi double [ %i.g, %.lr.ph.preheader.i ], [ %.1.i.3, %cvSensNorm.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.016.i.epil = phi double [ %.016.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.1.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.epil
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %.016.i.epil
  %.1.i.epil = select i1 %i.ad, double %i.ac, double %.016.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cvSensNorm.exit, label %.lr.ph.i.epil, !llvm.loop !372

cvSensNorm.exit:                                  ; preds = %cvSensNorm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.0.lcssa.i = phi double [ %i.g, %bb.a ], [ %.1.i.3, %cvSensNorm.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %i.ae = fcmp ogt double %1, %.0.lcssa.i
  %. = select i1 %i.ae, double %1, double %.0.lcssa.i
  ret double %.
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @CVodeComputeState(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3713, ptr noundef nonnull @__func__.CVodeComputeState, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @CVodeComputeStateSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3739, ptr noundef nonnull @__func__.CVodeComputeStateSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i32, ptr %i.b, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.f = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.c, double noundef 1.000000e+00, ptr noundef %i.e, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  %.not = icmp eq i32 %i.f, 0
  %. = select i1 %.not, i32 0, i32 -28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ %., %bb.c ]
  ret i32 %.0
}

declare i32 @N_VLinearSumVectorArray(i32 noundef, double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @CVodeComputeStateSens1(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3770, ptr noundef nonnull @__func__.CVodeComputeStateSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.f, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %3) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @SUNRpowerI(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @CVodeGetQuad(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3899, ptr noundef nonnull @__func__.CVodeGetQuad, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load double, ptr %i.b, align 8, !tbaa !237 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !29
  %i.d = tail call i32 @CVodeGetQuadDky(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @CVodeGetQuadDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3939, ptr noundef nonnull @__func__.CVodeGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 8, !tbaa !148
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -30, i32 noundef 3948, ptr noundef nonnull @__func__.CVodeGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14)
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3956, ptr noundef nonnull @__func__.CVodeGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.62)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105  ; 5 uses
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -24, i32 noundef 3964, ptr noundef nonnull @__func__.CVodeGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !24
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.m = load double, ptr %i.l, align 8, !tbaa !103 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.p = load double, ptr %i.o, align 8, !tbaa !111 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.067 = select i1 %i.t, double %i.u, double %i.s ; 2 uses
  %i.v = fsub double %i.m, %i.p
  %i.w = fsub double %i.v, %.067
  %i.x = fadd double %i.m, %.067
  %i.y = fsub double %1, %i.w
  %i.z = fsub double %1, %i.x
  %i.aa = fmul double %i.y, %i.z
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.k, label %.lr.ph86

end_hunk_5
begin_hunk_6_@CVodeSensFree:bb.a
bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.au) #13
  store ptr null, ptr %i.at, align 8, !tbaa !200
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @CVodeQuadSensFree(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2180 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !213
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2132
  %i.e = load i32, ptr %i.d, align 4, !tbaa !206  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  tail call void @N_VDestroy(ptr noundef %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.i, i32 noundef %i.k) #13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203
  %i.n = load i32, ptr %i.j, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.m, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !204
  %i.q = load i32, ptr %i.j, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.p, i32 noundef %i.q) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !205
  %i.t = load i32, ptr %i.j, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.s, i32 noundef %i.t) #13
  %.not42.i = icmp slt i32 %i.e, 0
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.v = add nuw i32 %i.e, 1
  %wide.trip.count.i = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164
  %i.y = load i32, ptr %i.j, align 8, !tbaa !156
  tail call void @N_VDestroyVectorArray(ptr noundef %i.x, i32 noundef %i.y) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.z = add nsw i32 %i.e, 5
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !156 ; 2 uses
  %i.ab = mul nsw i32 %i.aa, %i.z
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !139
  %i.af = mul nsw i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 6 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ai = sub nsw i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !140
  %i.al = mul nsw i64 %i.ak, %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ao = sub nsw i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2172 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !223
  %.not40.i = icmp eq i32 %i.aq, 0
  br i1 %.not40.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !224
  tail call void @N_VDestroyVectorArray(ptr noundef %i.as, i32 noundef %i.aa) #13
  %i.at = load i32, ptr %i.j, align 8, !tbaa !156
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !139
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ay = sub nsw i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !49
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !140
  %i.ba = mul nsw i64 %i.az, %i.au
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !50
  %i.bc = sub nsw i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.am, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !220
  %.not41.i = icmp eq i32 %i.be, 0
  br i1 %.not41.i, label %cvQuadSensFreeVectors.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !221
  tail call void @free(ptr noundef %i.bg) #13
  store ptr null, ptr %i.bf, align 8, !tbaa !221
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !156
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.bk = sub nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.ag, align 8, !tbaa !49
  br label %cvQuadSensFreeVectors.exit

cvQuadSensFreeVectors.exit:                       ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.ap, align 4, !tbaa !223
  store i32 0, ptr %i.bd, align 8, !tbaa !220
  store i32 0, ptr %i.b, align 4, !tbaa !213
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.bl, align 8, !tbaa !212
  br label %bb.h

bb.h:                                             ; preds = %cvQuadSensFreeVectors.exit, %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !222 ; 2 uses
  %.not10 = icmp eq ptr %i.bn, null
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.bn) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !222
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

declare void @CVodeAdjFree(ptr noundef) local_unnamed_addr #4

declare i32 @cvProjFree(ptr noundef) local_unnamed_addr #4

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @cvRescale(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 15 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !262
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 8 uses
  store double %i.b, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !105  ; 4 uses
  %.not114 = icmp slt i32 %i.f, 1
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %load_initial = load double, ptr %i.d, align 8  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp ult i32 %i.f, 4
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.i = load double, ptr %i.a, align 8, !tbaa !262
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = fmul double %i.i, %store_forwarded       ; 2 uses
  store double %i.k, ptr %i.j, align 8, !tbaa !29
  %i.l = load double, ptr %i.a, align 8, !tbaa !262
  %i.m = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = fmul double %i.l, %i.k                   ; 2 uses
  store double %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = load double, ptr %i.a, align 8, !tbaa !262
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = fmul double %i.p, %i.o                   ; 2 uses
  store double %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = load double, ptr %i.a, align 8, !tbaa !262
  %i.u = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = fmul double %i.t, %i.s                   ; 3 uses
  store double %i.w, ptr %i.v, align 8, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod231 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.z, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.x = load double, ptr %i.a, align 8, !tbaa !262
  %i.y = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.z = fmul double %i.x, %store_forwarded.epil  ; 2 uses
  store double %i.z, ptr %i.y, align 8, !tbaa !29
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !381

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ab = tail call i32 @N_VScaleVectorArray(i32 noundef %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa) #13 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !148
  %.not97 = icmp eq i32 %i.ad, 0
  br i1 %.not97, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !105
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.ah = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ag) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !172
  %.not98 = icmp eq i32 %i.aj, 0                  ; 2 uses
  br i1 %.not98, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !212
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !156 ; 10 uses
  %i.ao = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.ao, label %.lr.ph118, label %.preheader109.thread

.preheader109.thread:                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !105
  br label %._crit_edge125.split

.lr.ph118:                                        ; preds = %bb.e
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %wide.trip.count144 = zext nneg i32 %i.an to i64 ; 7 uses
  %.pre = load double, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %n.vec = and i64 %wide.trip.count144, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !29
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count144
  br i1 %cmp.n, label %.preheader109, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph118, %middle.block
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader109:                                    ; preds = %scalar.ph, %middle.block
  %i.au = load i32, ptr %i.e, align 8, !tbaa !105 ; 4 uses
  %.not100123 = icmp sgt i32 %i.au, 0
  br i1 %.not100123, label %.preheader108.lr.ph.split, label %._crit_edge125.split

.preheader108.lr.ph.split:                        ; preds = %.preheader109
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !100 ; 4 uses
  %i.aw = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ax = add nuw i32 %i.au, 1
  %wide.trip.count154 = zext i32 %i.ax to i64     ; 2 uses
  %wide.trip.count149 = zext nneg i32 %i.an to i64
  %i.ay = shl nuw nsw i64 %wide.trip.count144, 3
  %scevgep = getelementptr nuw i8, ptr %i.av, i64 %i.ay
  %i.az = mul nuw nsw i64 %wide.trip.count144, %wide.trip.count154
  %i.ba = shl i64 %i.az, 3
  %scevgep187 = getelementptr i8, ptr %i.av, i64 %i.ba
  %scevgep188 = getelementptr i8, ptr %0, i64 1024
  %min.iters.check190 = icmp ult i32 %i.an, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep188
  %bound1 = icmp ult ptr %i.a, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  %n.vec192 = and i64 %wide.trip.count144, 2147483644 ; 3 uses
  %cmp.n200 = icmp eq i64 %n.vec192, %wide.trip.count144
  %xtraiter232 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br label %.preheader108

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph ], [ %indvars.iv141.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv141
  store double %.pre, ptr %i.bb, align 8, !tbaa !29
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.preheader109, label %scalar.ph, !llvm.loop !383

.preheader108:                                    ; preds = %.preheader108.lr.ph.split, %._crit_edge122
  %indvars.iv151 = phi i64 [ 1, %.preheader108.lr.ph.split ], [ %indvars.iv.next152, %._crit_edge122 ] ; 3 uses
  %i.bc = add nsw i64 %indvars.iv151, -1
  %i.bd = mul nsw i64 %i.bc, %i.aw
  %i.be = mul nuw nsw i64 %indvars.iv151, %i.aw
  %invariant.gep = getelementptr [8 x i8], ptr %i.av, i64 %i.bd ; 6 uses
  %invariant.gep185 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.be ; 6 uses
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %.preheader108
  %i.bf = load double, ptr %i.a, align 8, !tbaa !262, !alias.scope !384
  %broadcast.splatinsert196 = insertelement <2 x double> poison, double %i.bf, i64 0
  %broadcast.splat197 = shufflevector <2 x double> %broadcast.splatinsert196, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index194 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <2 x double>, ptr %i.bg, align 8, !tbaa !29, !alias.scope !387
  %wide.load195 = load <2 x double>, ptr %i.bh, align 8, !tbaa !29, !alias.scope !387
  %i.bi = fmul <2 x double> %broadcast.splat197, %wide.load
  %i.bj = fmul <2 x double> %broadcast.splat197, %wide.load195
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %index194 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x double> %i.bi, ptr %i.bk, align 8, !tbaa !29, !alias.scope !389, !noalias !384
  store <2 x double> %i.bj, ptr %i.bl, align 8, !tbaa !29, !alias.scope !389, !noalias !384
  %index.next198 = add nuw i64 %index194, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bm, label %middle.block199, label %vector.body193, !llvm.loop !391

middle.block199:                                  ; preds = %vector.body193
  br i1 %cmp.n200, label %._crit_edge122, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %.preheader108, %middle.block199
  %indvars.iv146.ph = phi i64 [ %n.vec192, %middle.block199 ], [ 0, %.preheader108 ] ; 3 uses
  br i1 %lcmp.mod233.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol

scalar.ph189.prol:                                ; preds = %scalar.ph189.preheader, %scalar.ph189.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %scalar.ph189.prol ], [ %indvars.iv146.ph, %scalar.ph189.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph189.prol ], [ 0, %scalar.ph189.preheader ]
  %i.bn = load double, ptr %i.a, align 8, !tbaa !262
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146.prol
  %i.bo = load double, ptr %gep.prol, align 8, !tbaa !29
  %i.bp = fmul double %i.bn, %i.bo
  %gep186.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv146.prol
  store double %i.bp, ptr %gep186.prol, align 8, !tbaa !29
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol, !llvm.loop !392

scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %scalar.ph189.preheader ], [ %indvars.iv.next147.prol, %scalar.ph189.prol ]
  %i.bq = sub nsw i64 %indvars.iv146.ph, %i.aw
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge122, label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %scalar.ph189 ], [ %indvars.iv146.unr, %scalar.ph189.prol.loopexit ] ; 6 uses
  %i.bs = load double, ptr %i.a, align 8, !tbaa !262
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146
  %i.bt = load double, ptr %gep, align 8, !tbaa !29
  %i.bu = fmul double %i.bs, %i.bt
  %gep186 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep185, i64 %indvars.iv146
  store double %i.bu, ptr %gep186, align 8, !tbaa !29
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.bv = load double, ptr %i.a, align 8, !tbaa !262
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next147
end_hunk_6
begin_hunk_7_@cvRestore:bb.a
  %.not85 = icmp slt i32 %i.c, 1
  br i1 %.not85, label %._crit_edge, label %.preheader83.lr.ph

.preheader83.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.lr.ph, %bb.c
  %indvars.iv97 = phi i64 [ 1, %.preheader83.lr.ph ], [ %indvars.iv.next98, %bb.c ] ; 3 uses
  %i.e = phi i32 [ %i.c, %.preheader83.lr.ph ], [ %i.k, %bb.c ]
  %i.f = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader83, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.preheader83 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.i, double noundef -1.000000e+00, ptr noundef %i.j, ptr noundef %i.i) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not75.not = icmp sgt i64 %indvars.iv, %indvars.iv97
  br i1 %.not75.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %i.k = load i32, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.l = sext i32 %i.k to i64
  %.not.not = icmp slt i64 %indvars.iv97, %i.l
  br i1 %.not.not, label %.preheader83, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !148
  %.not66 = icmp eq i32 %i.o, 0
  %.not6788 = icmp slt i32 %i.m, 1
  %or.cond = or i1 %.not66, %.not6788
  br i1 %or.cond, label %.loopexit82, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %.preheader80

.preheader80:                                     ; preds = %.preheader80.lr.ph, %bb.e
  %indvars.iv103 = phi i64 [ 1, %.preheader80.lr.ph ], [ %indvars.iv.next104, %bb.e ] ; 3 uses
  %i.q = phi i32 [ %i.m, %.preheader80.lr.ph ], [ %i.w, %bb.e ]
  %i.r = sext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader80, %bb.d
  %indvars.iv100 = phi i64 [ %i.r, %.preheader80 ], [ %indvars.iv.next101, %bb.d ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv100 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !63
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.u, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.u) #13
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1
  %.not74.not = icmp sgt i64 %indvars.iv100, %indvars.iv103
  br i1 %.not74.not, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.x = sext i32 %i.w to i64
  %.not67.not = icmp slt i64 %indvars.iv103, %i.x
  br i1 %.not67.not, label %.preheader80, label %.loopexit82

.loopexit82:                                      ; preds = %bb.e, %._crit_edge
  %i.y = phi i32 [ %i.m, %._crit_edge ], [ %i.w, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !172
  %.not68 = icmp eq i32 %i.aa, 0
  %.not6991 = icmp slt i32 %i.y, 1
  %or.cond125 = or i1 %.not68, %.not6991
  br i1 %or.cond125, label %.loopexit79, label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.loopexit82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %bb.g
  %indvars.iv109 = phi i64 [ 1, %.preheader77.lr.ph ], [ %indvars.iv.next110, %bb.g ] ; 3 uses
  %i.ad = phi i32 [ %i.y, %.preheader77.lr.ph ], [ %i.al, %bb.g ]
  %i.ae = sext i32 %i.ad to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader77, %bb.f
  %indvars.iv106 = phi i64 [ %i.ae, %.preheader77 ], [ %indvars.iv.next107, %bb.f ] ; 3 uses
  %i.af = load i32, ptr %i.ab, align 8, !tbaa !156
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv106 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !164 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !164
  %i.ak = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.af, double noundef 1.000000e+00, ptr noundef %i.ai, double noundef -1.000000e+00, ptr noundef %i.aj, ptr noundef %i.ai) #13 ; 0 uses
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1
  %.not73.not = icmp sgt i64 %indvars.iv106, %indvars.iv109
  br i1 %.not73.not, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %i.al = load i32, ptr %i.b, align 8, !tbaa !105 ; 3 uses
  %i.am = sext i32 %i.al to i64
  %.not69.not = icmp slt i64 %indvars.iv109, %i.am
  br i1 %.not69.not, label %.preheader77, label %.loopexit79

.loopexit79:                                      ; preds = %bb.g, %.loopexit82
  %i.an = phi i32 [ %i.y, %.loopexit82 ], [ %i.al, %bb.g ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !212
  %.not70 = icmp eq i32 %i.ap, 0
  %.not7194 = icmp slt i32 %i.an, 1
  %or.cond126 = or i1 %.not70, %.not7194
  br i1 %or.cond126, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit79
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %indvars.iv115 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next116, %bb.i ] ; 3 uses
  %i.as = phi i32 [ %i.an, %.preheader.lr.ph ], [ %i.ba, %bb.i ]
  %i.at = sext i32 %i.as to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv112 = phi i64 [ %i.at, %.preheader ], [ %indvars.iv.next113, %bb.h ] ; 3 uses
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !156
  %i.av = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv112 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !164 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !164
  %i.az = tail call i32 @N_VLinearSumVectorArray(i32 noundef %i.au, double noundef 1.000000e+00, ptr noundef %i.ax, double noundef -1.000000e+00, ptr noundef %i.ay, ptr noundef %i.ax) #13 ; 0 uses
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1
  %.not72.not = icmp sgt i64 %indvars.iv112, %indvars.iv115
  br i1 %.not72.not, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %i.ba = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not71.not = icmp slt i64 %indvars.iv115, %i.bb
  br i1 %.not71.not, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.loopexit79
  ret void
}

; Function Attrs: nounwind uwtable
define double @cvSensNorm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = tail call i32 @N_VWrmsNormVectorArray(i32 noundef %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %i.d) #13 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !100  ; 6 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !29 ; 3 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !156  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.h to i64
  %i.j = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = add nsw i32 %i.h, -2
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.016 = phi double [ %i.g, %.lr.ph.preheader.new ], [ %.1.3, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !29 ; 2 uses
  %i.o = fcmp ogt double %i.n, %.016
  %.1 = select i1 %i.o, double %i.n, double %.016 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %i.s = fcmp ogt double %i.r, %.1
  %.1.1 = select i1 %i.s, double %i.r, double %.1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.w = fcmp ogt double %i.v, %.1.1
  %.1.2 = select i1 %i.w, double %i.v, double %.1.1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !29 ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.1.2
  %.1.3 = select i1 %i.aa, double %i.z, double %.1.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.016.epil.init = phi double [ %i.g, %.lr.ph.preheader ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.016.epil = phi double [ %.016.epil.init, %.lr.ph.epil.preheader ], [ %.1.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %.016.epil
  %.1.epil = select i1 %i.ad, double %i.ac, double %.016.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !400

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ %i.g, %bb.a ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil ]
  ret double %.0.lcssa
}

declare i32 @N_VWrmsNormVectorArray(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @cvSensRhs1Wrapper(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.g = tail call i32 %i.b(i32 noundef %i.d, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.f, ptr noundef %7, ptr noundef %8) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !345
  %i.j = add nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !345
  ret i32 %i.g
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #4

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @cvProjInit(ptr noundef) local_unnamed_addr #4

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -53, 4) i32 @cvHandleNFlag(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, double noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !67     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !91
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %4, align 8, !tbaa !91
  tail call void @cvRestore(ptr noundef nonnull %0, double noundef %2)
  %i.e = icmp slt i32 %i.a, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add nsw i32 %i.a, 51         ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 46
  br i1 %i.f, label %switch.lookup, label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %3, align 4, !tbaa !67
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %3, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.k = load double, ptr %i.j, align 8, !tbaa !250
  %i.l = tail call double @llvm.fabs.f64(double %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.n = load double, ptr %i.m, align 8, !tbaa !252 ; 2 uses
  %i.o = fmul double %i.n, f0x3FF000010C6F7A0B
  %i.p = fcmp ugt double %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33
  %i.s = icmp eq i32 %i.h, %i.r
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  switch i32 %i.a, label %bb.k [
    i32 902, label %bb.l
    i32 10, label %bb.g
    i32 13, label %bb.h
    i32 14, label %bb.i
    i32 15, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.u = load double, ptr %i.t, align 8, !tbaa !401 ; 2 uses
  %i.v = fdiv double %i.n, %i.l                   ; 2 uses
  %i.w = fcmp ogt double %i.u, %i.v
  %. = select i1 %i.w, double %i.u, double %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store double %., ptr %i.x, align 8, !tbaa !262
  store i32 7, ptr %1, align 4, !tbaa !67
  tail call void @cvRescale(ptr noundef nonnull %0)
  br label %bb.l

switch.lookup:                                    ; preds = %bb.c
  %i.y = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.cvHandleNFlag, i64 %i.y
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %switch.lookup, %bb.f, %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ 3, %bb.k ], [ 2, %bb.a ], [ -4, %bb.f ], [ -53, %bb.j ], [ -43, %bb.i ], [ -33, %bb.h ], [ -10, %bb.g ], [ %switch.load, %switch.lookup ], [ -16, %bb.c ]
  ret i32 %.0
}

declare i32 @cvDoProjection(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -54, 6) i32 @cvDoErrorTest(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, double noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load double, ptr %i.a, align 8, !tbaa !29
  %i.c = fmul double %3, %i.b                     ; 3 uses
  store double %i.c, ptr %6, align 8, !tbaa !29
  %i.d = fcmp ugt double %i.c, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !67
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %4, align 4, !tbaa !67
  %i.g = load i64, ptr %5, align 8, !tbaa !91
  %i.h = add nsw i64 %i.g, 1
  store i64 %i.h, ptr %5, align 8, !tbaa !91
  store i32 9, ptr %1, align 4, !tbaa !67
  tail call void @cvRestore(ptr noundef nonnull %0, double noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 6 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !250 ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.m = load double, ptr %i.l, align 8, !tbaa !252 ; 3 uses
  %i.n = fmul double %i.m, f0x3FF000010C6F7A0B
  %i.o = fcmp ugt double %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
end_hunk_7
begin_hunk_8_@cvAdjustOrder:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %bb.d, label %.preheader82.i

.preheader82.i:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %.not85.i = icmp slt i32 %i.j, 0
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader82.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.l = add nuw i32 %i.j, 1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, i8 0, i64 %i.n, i1 false), !tbaa !29
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !106
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.t) #13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !148
  %.not79.i = icmp eq i32 %i.v, 0
  br i1 %.not79.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.x = load i32, ptr %i.p, align 8, !tbaa !106
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.aa) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !172
  %.not80.i = icmp eq i32 %i.ac, 0
  br i1 %.not80.i, label %cvAdjustAdams.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !106
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !164
  %i.ak = tail call i32 @N_VConstVectorArray(i32 noundef %i.ae, double noundef 0.000000e+00, ptr noundef %i.aj) #13 ; 0 uses
  br label %cvAdjustAdams.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader82.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 15 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !29
  %i.an = add nsw i32 %i.c, -2
  %.not7588.i = icmp slt i32 %i.c, 3
  br i1 %.not7588.i, label %cvAdjustAdams.exit, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !253
  %i.ar = add nsw i32 %i.c, -1
  %wide.trip.count.i = zext i32 %i.ar to i64      ; 2 uses
  br label %bb.h

.loopexit.i:                                      ; preds = %scalar.ph92, %scalar.ph92.1, %scalar.ph92.2, %middle.block111
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader81.i, label %bb.h

.preheader81.i:                                   ; preds = %.loopexit.i
  %i.as = uitofp nneg i32 %i.c to double          ; 5 uses
  %.pre.i = load double, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %i.at = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter130 = and i64 %i.at, 3                 ; 3 uses
  %i.au = add nsw i32 %i.c, -3
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader81.i.new

.preheader81.i.new:                               ; preds = %.preheader81.i
  %unroll_iter = and i64 %i.at, -4
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph92.i
  %indvars.iv103.i = phi i64 [ 1, %.lr.ph92.i ], [ %indvars.iv.next104.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph92.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 7 uses
  %.090.i = phi double [ 0.000000e+00, %.lr.ph92.i ], [ %i.ay, %.loopexit.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv103.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29
  %i.ay = fadd double %.090.i, %i.ax              ; 2 uses
  %i.az = fdiv double %i.ay, %i.aq                ; 4 uses
  %min.iters.check93 = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %min.iters.check93, label %scalar.ph92, label %vector.ph94

vector.ph94:                                      ; preds = %bb.h
  %n.vec95 = and i64 %indvars.iv.i, 9223372036854775804 ; 2 uses
  %i.ba = and i64 %indvars.iv.i, 3
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.az, i64 0 ; 2 uses
  %i.bb = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next110, %vector.body98 ] ; 2 uses
  %i.bd = sub i64 %indvars.iv.i, %index99
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -24 ; 2 uses
  %wide.load100 = load <2 x double>, ptr %i.bf, align 8, !tbaa !29
  %wide.load101 = load <2 x double>, ptr %i.bg, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.be, i64 -16
  %i.bi = getelementptr i8, ptr %i.be, i64 -32
  %wide.load104 = load <2 x double>, ptr %i.bh, align 8, !tbaa !29
  %wide.load105 = load <2 x double>, ptr %i.bi, align 8, !tbaa !29
  %reverse108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load100, <2 x double> %i.bb, <2 x double> %wide.load104)
  %reverse109 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load101, <2 x double> %i.bc, <2 x double> %wide.load105)
  store <2 x double> %reverse108, ptr %i.bf, align 8, !tbaa !29
  store <2 x double> %reverse109, ptr %i.bg, align 8, !tbaa !29
  %index.next110 = add nuw i64 %index99, 4        ; 2 uses
  %i.bj = icmp eq i64 %index.next110, %n.vec95
  br i1 %i.bj, label %middle.block111, label %vector.body98, !llvm.loop !408

middle.block111:                                  ; preds = %vector.body98
  %cmp.n112 = icmp eq i64 %indvars.iv.i, %n.vec95
  br i1 %cmp.n112, label %.loopexit.i, label %scalar.ph92

scalar.ph92:                                      ; preds = %middle.block111, %bb.h
  %indvars.iv100.i.ph = phi i64 [ %indvars.iv.i, %bb.h ], [ %i.ba, %middle.block111 ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv100.i.ph ; 3 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !29
  %i.bm = getelementptr i8, ptr %i.bk, i64 -8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !29
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.az, double %i.bn)
  store double %i.bo, ptr %i.bk, align 8, !tbaa !29
  %i.bp = icmp samesign ugt i64 %indvars.iv100.i.ph, 1
  br i1 %i.bp, label %scalar.ph92.1, label %.loopexit.i

scalar.ph92.1:                                    ; preds = %scalar.ph92
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv100.i.ph ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8     ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !29
  %i.bt = getelementptr i8, ptr %i.bq, i64 -16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !29
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.az, double %i.bu)
  store double %i.bv, ptr %i.br, align 8, !tbaa !29
  %i.bw = icmp eq i64 %indvars.iv100.i.ph, 3
  br i1 %i.bw, label %scalar.ph92.2, label %.loopexit.i

scalar.ph92.2:                                    ; preds = %scalar.ph92.1
  %i.bx = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv100.i.ph ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -16    ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !29
  %i.ca = getelementptr i8, ptr %i.bx, i64 -24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !29
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.az, double %i.cb)
  store double %i.cc, ptr %i.by, align 8, !tbaa !29
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.i, %.preheader81.i.new
  %i.cd = phi double [ %.pre.i, %.preheader81.i.new ], [ %i.cw, %bb.i ]
  %indvars.iv106.i = phi i64 [ 1, %.preheader81.i.new ], [ %indvars.iv.next107.i.3, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader81.i.new ], [ %niter.next.3, %bb.i ]
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next107.i to i32
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = fdiv double %i.cd, %i.cf
  %i.ch = fmul double %i.cg, %i.as                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next107.i
  store double %i.ch, ptr %i.ci, align 8, !tbaa !29
  %indvars.iv.next107.i.1 = add nuw nsw i64 %indvars.iv106.i, 2 ; 2 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv.next107.i.1 to i32
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fdiv double %i.ch, %i.ck
  %i.cm = fmul double %i.cl, %i.as                ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next107.i.1
  store double %i.cm, ptr %i.cn, align 8, !tbaa !29
  %indvars.iv.next107.i.2 = add nuw nsw i64 %indvars.iv106.i, 3 ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.next107.i.2 to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fdiv double %i.cm, %i.cp
  %i.cr = fmul double %i.cq, %i.as                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next107.i.2
  store double %i.cr, ptr %i.cs, align 8, !tbaa !29
  %indvars.iv.next107.i.3 = add nuw nsw i64 %indvars.iv106.i, 4 ; 4 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv.next107.i.3 to i32
  %i.cu = uitofp nneg i32 %i.ct to double
  %i.cv = fdiv double %i.cr, %i.cu
  %i.cw = fmul double %i.cv, %i.as                ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next107.i.3
  store double %i.cw, ptr %i.cx, align 8, !tbaa !29
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.unr-lcssa, label %bb.i

.preheader.i.unr-lcssa:                           ; preds = %bb.i
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.preheader81.i
  %.epil.init = phi double [ %.pre.i, %.preheader81.i ], [ %i.cw, %.preheader.i.unr-lcssa ]
  %indvars.iv106.i.epil.init = phi i64 [ 1, %.preheader81.i ], [ %indvars.iv.next107.i.3, %.preheader.i.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter130, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %i.cy = phi double [ %.epil.init, %.epil.preheader ], [ %i.dc, %bb.j ]
  %indvars.iv106.i.epil = phi i64 [ %indvars.iv106.i.epil.init, %.epil.preheader ], [ %indvars.iv.next107.i.epil, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %indvars.iv.next107.i.epil = add nuw nsw i64 %indvars.iv106.i.epil, 1 ; 3 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.next107.i.epil to i32
  %i.da = uitofp nneg i32 %i.cz to double
  %i.db = fdiv double %i.cy, %i.da
  %i.dc = fmul double %i.db, %i.as                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next107.i.epil
  store double %i.dc, ptr %i.dd, align 8, !tbaa !29
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter130
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %bb.j, !llvm.loop !409

.preheader.i:                                     ; preds = %bb.j, %.preheader.i.unr-lcssa
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !100 ; 8 uses
  %wide.trip.count114.i = zext nneg i32 %i.c to i64 ; 5 uses
  %i.dg = add nsw i64 %wide.trip.count114.i, -2   ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.dg, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.preheader.i
  %i.dh = ptrtoaddr ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.a
  %i.dj = add i64 %i.di, -1225
  %diff.check115 = icmp ult i64 %i.dj, 31
  br i1 %diff.check115, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.dg, -4                   ; 3 uses
  %i.dk = or disjoint i64 %n.vec119, 2
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.dl = or disjoint i64 %index121, 2            ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load122 = load <2 x double>, ptr %i.dm, align 8, !tbaa !29
  %wide.load123 = load <2 x double>, ptr %i.dn, align 8, !tbaa !29
  %i.do = fneg <2 x double> %wide.load122
  %i.dp = fneg <2 x double> %wide.load123
  %i.dq = getelementptr [8 x i8], ptr %i.df, i64 %i.dl ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -16
  store <2 x double> %i.do, ptr %i.dr, align 8, !tbaa !29
  store <2 x double> %i.dp, ptr %i.dq, align 8, !tbaa !29
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.ds, label %middle.block125, label %vector.body120, !llvm.loop !410

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %i.dg, %n.vec119
  br i1 %cmp.n126, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck114, %.preheader.i, %middle.block125
  %indvars.iv111.i.ph = phi i64 [ 2, %vector.memcheck114 ], [ 2, %.preheader.i ], [ %i.dk, %middle.block125 ] ; 4 uses
  %i.dt = sub nsw i64 %wide.trip.count114.i, %indvars.iv111.i.ph
  %xtraiter133 = and i64 %i.dt, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %indvars.iv111.i.prol = phi i64 [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ], [ %indvars.iv111.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv111.i.prol
  %i.dv = load double, ptr %i.du, align 8, !tbaa !29
  %i.dw = fneg double %i.dv
  %i.dx = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv111.i.prol
  %i.dy = getelementptr i8, ptr %i.dx, i64 -16
  store double %i.dw, ptr %i.dy, align 8, !tbaa !29
  %indvars.iv.next112.i.prol = add nuw nsw i64 %indvars.iv111.i.prol, 1 ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !411

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %indvars.iv111.i.unr = phi i64 [ %indvars.iv111.i.ph, %scalar.ph116.preheader ], [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ]
  %i.dz = sub nsw i64 %indvars.iv111.i.ph, %wide.trip.count114.i
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.loopexit, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i.3, %scalar.ph116 ], [ %indvars.iv111.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv111.i
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !29
  %i.ed = fneg double %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv111.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 -16
  store double %i.ed, ptr %i.ef, align 8, !tbaa !29
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next112.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !29
  %i.ei = fneg double %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.next112.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 -16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !29
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next112.i.1
  %i.em = load double, ptr %i.el, align 8, !tbaa !29
  %i.en = fneg double %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.next112.i.1
  %i.ep = getelementptr i8, ptr %i.eo, i64 -16
  store double %i.en, ptr %i.ep, align 8, !tbaa !29
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next112.i.2
  %i.er = load double, ptr %i.eq, align 8, !tbaa !29
  %i.es = fneg double %i.er
  %i.et = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.next112.i.2
  %i.eu = getelementptr i8, ptr %i.et, i64 -16
  store double %i.es, ptr %i.eu, align 8, !tbaa !29
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %exitcond115.not.i.3 = icmp eq i64 %indvars.iv.next112.i.3, %wide.trip.count114.i
  br i1 %exitcond115.not.i.3, label %.loopexit, label %scalar.ph116, !llvm.loop !412

.loopexit:                                        ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block125
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %wide.trip.count114.i
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !63
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ez = tail call i32 @N_VScaleAddMulti(i32 noundef %i.an, ptr noundef nonnull %i.df, ptr noundef %i.ex, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ey) #13 ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !148
  %.not77.i = icmp eq i32 %i.fb, 0
  br i1 %.not77.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.fc = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.fd = add nsw i32 %i.fc, -2
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !100
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fg = sext i32 %i.fc to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !63
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.fk = tail call i32 @N_VScaleAddMulti(i32 noundef %i.fd, ptr noundef %i.fe, ptr noundef %i.fi, ptr noundef nonnull %i.fj, ptr noundef nonnull %i.fj) #13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !172
  %.not78.i = icmp eq i32 %i.fm, 0
  br i1 %.not78.i, label %cvAdjustAdams.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !156
  %i.fp = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.fq = add nsw i32 %i.fp, -2
  %i.fr = load ptr, ptr %i.de, align 8, !tbaa !100
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !164
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.fx = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.fo, i32 noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fw) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.n:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.o
    i32 -1, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !26 ; 2 uses
  %.not127.i.i = icmp slt i32 %i.fz, 0
  br i1 %.not127.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.gb = add nuw i32 %i.fz, 1
  %i.gc = zext i32 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ga, i8 0, i64 %i.gd, i1 false), !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.o
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 5 uses
  store double 1.000000e+00, ptr %i.gf, align 8, !tbaa !29
  %i.gg = icmp sgt i32 %i.c, 1
  br i1 %i.gg, label %bb.p, label %.loopexit123.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !253 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64
  br label %.lr.ph131.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph131.i.i, %middle.block65
  %i.gk = fadd double %.0105136.i.i, %i.gx        ; 2 uses
  %i.gl = fdiv double %i.gk, %i.gi                ; 3 uses
  %i.gm = fmul double %.0107134.i.i, %i.gl        ; 2 uses
  %i.gn = trunc nuw nsw i64 %indvars.iv.next152.i.i to i32
  %i.go = uitofp nneg i32 %i.gn to double
  %i.gp = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.go, i64 1
  %i.gr = fdiv <2 x double> splat (double 1.000000e+00), %i.gq ; 2 uses
  %i.gs = fadd <2 x double> %i.gv, %i.gr
  %i.gt = fsub <2 x double> %i.gv, %i.gr
  %i.gu = shufflevector <2 x double> %i.gs, <2 x double> %i.gt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit123.i.i, label %.lr.ph131.preheader.i.i

.lr.ph131.preheader.i.i:                          ; preds = %.loopexit.i.i, %bb.p
  %indvars.iv151.i.i = phi i64 [ 1, %bb.p ], [ %indvars.iv.next152.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 3, %bb.p ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 4 uses
  %.0105136.i.i = phi double [ %i.gi, %bb.p ], [ %i.gk, %.loopexit.i.i ]
  %.0106135.i.i = phi double [ 1.000000e+00, %bb.p ], [ %i.gl, %.loopexit.i.i ] ; 2 uses
  %.0107134.i.i = phi double [ 1.000000e+00, %bb.p ], [ %i.gm, %.loopexit.i.i ]
  %i.gv = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %bb.p ], [ %i.gu, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 6 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next152.i.i
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !29
  %min.iters.check47 = icmp samesign ult i64 %indvars.iv151.i.i, 3
  br i1 %min.iters.check47, label %.lr.ph131.i.i.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph131.preheader.i.i
  %n.vec49 = and i64 %indvars.iv.next152.i.i, 9223372036854775804 ; 3 uses
  %i.gy = sub nsw i64 %indvars.iv.i.i, %n.vec49
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %.0106135.i.i, i64 0 ; 2 uses
  %i.gz = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph48
  %index53 = phi i64 [ 0, %vector.ph48 ], [ %index.next64, %vector.body52 ] ; 2 uses
  %i.hb = sub i64 %indvars.iv.i.i, %index53
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hb ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -24 ; 2 uses
  %wide.load54 = load <2 x double>, ptr %i.hd, align 8, !tbaa !29
  %wide.load55 = load <2 x double>, ptr %i.he, align 8, !tbaa !29
  %i.hf = getelementptr i8, ptr %i.hc, i64 -16
  %i.hg = getelementptr i8, ptr %i.hc, i64 -32
  %wide.load58 = load <2 x double>, ptr %i.hf, align 8, !tbaa !29
  %wide.load59 = load <2 x double>, ptr %i.hg, align 8, !tbaa !29
  %reverse62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load54, <2 x double> %i.gz, <2 x double> %wide.load58)
  %reverse63 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load55, <2 x double> %i.ha, <2 x double> %wide.load59)
  store <2 x double> %reverse62, ptr %i.hd, align 8, !tbaa !29
  store <2 x double> %reverse63, ptr %i.he, align 8, !tbaa !29
  %index.next64 = add nuw i64 %index53, 4         ; 2 uses
  %i.hh = icmp eq i64 %index.next64, %n.vec49
  br i1 %i.hh, label %middle.block65, label %vector.body52, !llvm.loop !413

middle.block65:                                   ; preds = %vector.body52
  %cmp.n66 = icmp eq i64 %indvars.iv.next152.i.i, %n.vec49
  br i1 %cmp.n66, label %.loopexit.i.i, label %.lr.ph131.i.i.preheader

.lr.ph131.i.i.preheader:                          ; preds = %.lr.ph131.preheader.i.i, %middle.block65
  %indvars.iv148.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph131.preheader.i.i ], [ %i.gy, %middle.block65 ]
  br label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.preheader, %.lr.ph131.i.i
  %indvars.iv148.i.i = phi i64 [ %indvars.iv.next149.i.i, %.lr.ph131.i.i ], [ %indvars.iv148.i.i.ph, %.lr.ph131.i.i.preheader ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv148.i.i ; 3 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !29
  %i.hk = getelementptr i8, ptr %i.hi, i64 -8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !29
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hj, double %.0106135.i.i, double %i.hl)
  store double %i.hm, ptr %i.hi, align 8, !tbaa !29
  %indvars.iv.next149.i.i = add nsw i64 %indvars.iv148.i.i, -1
  %i.hn = icmp sgt i64 %indvars.iv148.i.i, 2
  br i1 %i.hn, label %.lr.ph131.i.i, label %.loopexit.i.i, !llvm.loop !414

.loopexit123.i.i:                                 ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.1108.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gm, %.loopexit.i.i ]
  %i.ho = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gu, %.loopexit.i.i ] ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  %i.hq = fneg double %i.hp
  %i.hr = extractelement <2 x double> %i.ho, i64 0
  %i.hs = fsub double %i.hq, %i.hr
  %i.ht = fdiv double %i.hs, %.1108.i.i           ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !323
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !63
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 8 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @N_VScale(double noundef %i.ht, ptr noundef %i.hz, ptr noundef %i.ie) #13
  %i.if = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit123.i.i
  %i.ih = add nsw i32 %i.if, -1
  %i.ii = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.in = tail call i32 @N_VScaleAddMulti(i32 noundef %i.ih, ptr noundef nonnull %i.gf, ptr noundef %i.il, ptr noundef nonnull %i.im, ptr noundef nonnull %i.im) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit123.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !148
  %.not119.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not119.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ir = load i32, ptr %i.hv, align 8, !tbaa !323
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !63
  %i.iv = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !63
  tail call void @N_VScale(double noundef %i.ht, ptr noundef %i.iu, ptr noundef %i.iy) #13
  %i.iz = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jb = add nsw i32 %i.iz, -1
  %i.jc = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !63
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.jh = tail call i32 @N_VScaleAddMulti(i32 noundef %i.jb, ptr noundef nonnull %i.gf, ptr noundef %i.jf, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.jg) #13 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !172
  %.not120.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not120.i.i, label %bb.w, label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %bb.u
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !156 ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !100 ; 3 uses
  br i1 %i.jm, label %.lr.ph139.i.i, label %._crit_edge140.i.i

.lr.ph139.i.i:                                    ; preds = %.preheader122.i.i
  %wide.trip.count157.i.i = zext nneg i32 %i.jl to i64 ; 3 uses
  %min.iters.check69 = icmp ult i32 %i.jl, 4
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph139.i.i
  %n.vec71 = and i64 %wide.trip.count157.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.ht, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph70
  %index75 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body74 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index75 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store <2 x double> %broadcast.splat73, ptr %i.jp, align 8, !tbaa !29
  store <2 x double> %broadcast.splat73, ptr %i.jq, align 8, !tbaa !29
  %index.next76 = add nuw i64 %index75, 4         ; 2 uses
  %i.jr = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.jr, label %middle.block77, label %vector.body74, !llvm.loop !415

middle.block77:                                   ; preds = %vector.body74
  %cmp.n78 = icmp eq i64 %n.vec71, %wide.trip.count157.i.i
  br i1 %cmp.n78, label %._crit_edge140.i.i, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %.lr.ph139.i.i, %middle.block77
  %indvars.iv154.i.i.ph = phi i64 [ 0, %.lr.ph139.i.i ], [ %n.vec71, %middle.block77 ]
  br label %scalar.ph68

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %indvars.iv154.i.i = phi i64 [ %indvars.iv.next155.i.i, %scalar.ph68 ], [ %indvars.iv154.i.i.ph, %scalar.ph68.preheader ] ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv154.i.i
  store double %i.ht, ptr %i.js, align 8, !tbaa !29
  %indvars.iv.next155.i.i = add nuw nsw i64 %indvars.iv154.i.i, 1 ; 2 uses
  %exitcond158.not.i.i = icmp eq i64 %indvars.iv.next155.i.i, %wide.trip.count157.i.i
  br i1 %exitcond158.not.i.i, label %._crit_edge140.i.i, label %scalar.ph68, !llvm.loop !416

._crit_edge140.i.i:                               ; preds = %scalar.ph68, %middle.block77, %.preheader122.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.ju = load i32, ptr %i.hv, align 8, !tbaa !323
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !164
  %i.jy = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !164
  %i.kc = tail call i32 @N_VScaleVectorArray(i32 noundef %i.jl, ptr noundef %i.jo, ptr noundef %i.jx, ptr noundef %i.kb) #13 ; 0 uses
  %i.kd = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 1
  br i1 %i.ke, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge140.i.i
  %i.kf = load i32, ptr %i.jk, align 8, !tbaa !156
  %i.kg = add nsw i32 %i.kd, -1
  %i.kh = load i32, ptr %i.ia, align 8, !tbaa !106
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !164
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.km = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.kf, i32 noundef %i.kg, ptr noundef nonnull %i.gf, ptr noundef %i.kk, ptr noundef nonnull %i.kl, ptr noundef nonnull %i.kl) #13 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge140.i.i, %bb.u
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !212
  %.not121.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not121.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !156 ; 4 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !100 ; 3 uses
  br i1 %i.kr, label %.lr.ph142.i.i, label %._crit_edge143.i.i

.lr.ph142.i.i:                                    ; preds = %.preheader.i.i
  %wide.trip.count162.i.i = zext nneg i32 %i.kq to i64 ; 3 uses
  %min.iters.check81 = icmp ult i32 %i.kq, 4
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph142.i.i
  %n.vec83 = and i64 %wide.trip.count162.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.ht, i64 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body86 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index87 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store <2 x double> %broadcast.splat85, ptr %i.ku, align 8, !tbaa !29
  store <2 x double> %broadcast.splat85, ptr %i.kv, align 8, !tbaa !29
  %index.next88 = add nuw i64 %index87, 4         ; 2 uses
  %i.kw = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.kw, label %middle.block89, label %vector.body86, !llvm.loop !417

middle.block89:                                   ; preds = %vector.body86
  %cmp.n90 = icmp eq i64 %n.vec83, %wide.trip.count162.i.i
  br i1 %cmp.n90, label %._crit_edge143.i.i, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.lr.ph142.i.i, %middle.block89
  %indvars.iv159.i.i.ph = phi i64 [ 0, %.lr.ph142.i.i ], [ %n.vec83, %middle.block89 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %indvars.iv159.i.i = phi i64 [ %indvars.iv.next160.i.i, %scalar.ph80 ], [ %indvars.iv159.i.i.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv159.i.i
  store double %i.ht, ptr %i.kx, align 8, !tbaa !29
  %indvars.iv.next160.i.i = add nuw nsw i64 %indvars.iv159.i.i, 1 ; 2 uses
  %exitcond163.not.i.i = icmp eq i64 %indvars.iv.next160.i.i, %wide.trip.count162.i.i
  br i1 %exitcond163.not.i.i, label %._crit_edge143.i.i, label %scalar.ph80, !llvm.loop !418

._crit_edge143.i.i:                               ; preds = %scalar.ph80, %middle.block89, %.preheader.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.kz = load i32, ptr %i.hv, align 8, !tbaa !323
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.la
end_hunk_8
begin_hunk_9_@cvAdjustOrder:bb.a
  %wide.load38 = load <2 x double>, ptr %i.ni, align 8, !tbaa !29
  %wide.load39 = load <2 x double>, ptr %i.nj, align 8, !tbaa !29
  %i.nk = fneg <2 x double> %wide.load38
  %i.nl = fneg <2 x double> %wide.load39
  %i.nm = getelementptr [8 x i8], ptr %i.nb, i64 %i.nh ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 -16
  store <2 x double> %i.nk, ptr %i.nn, align 8, !tbaa !29
  store <2 x double> %i.nl, ptr %i.nm, align 8, !tbaa !29
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.no = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.no, label %middle.block41, label %vector.body36, !llvm.loop !421

middle.block41:                                   ; preds = %vector.body36
  %cmp.n42 = icmp eq i64 %i.nc, %n.vec35
  br i1 %cmp.n42, label %.loopexit128, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %vector.memcheck, %._crit_edge81.i.i, %middle.block41
  %indvars.iv91.i.i.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %._crit_edge81.i.i ], [ %i.ng, %middle.block41 ] ; 4 uses
  %i.np = sub nsw i64 %wide.trip.count94.i.i, %indvars.iv91.i.i.ph
  %xtraiter = and i64 %i.np, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol

scalar.ph32.prol:                                 ; preds = %scalar.ph32.preheader, %scalar.ph32.prol
  %indvars.iv91.i.i.prol = phi i64 [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ], [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph32.prol ], [ 0, %scalar.ph32.preheader ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv91.i.i.prol
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !29
  %i.ns = fneg double %i.nr
  %i.nt = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv91.i.i.prol
  %i.nu = getelementptr i8, ptr %i.nt, i64 -16
  store double %i.ns, ptr %i.nu, align 8, !tbaa !29
  %indvars.iv.next92.i.i.prol = add nuw nsw i64 %indvars.iv91.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol, !llvm.loop !422

scalar.ph32.prol.loopexit:                        ; preds = %scalar.ph32.prol, %scalar.ph32.preheader
  %indvars.iv91.i.i.unr = phi i64 [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ], [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ]
  %i.nv = sub nsw i64 %indvars.iv91.i.i.ph, %wide.trip.count94.i.i
  %i.nw = icmp ugt i64 %i.nv, -4
  br i1 %i.nw, label %.loopexit128, label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32
  %indvars.iv91.i.i = phi i64 [ %indvars.iv.next92.i.i.3, %scalar.ph32 ], [ %indvars.iv91.i.i.unr, %scalar.ph32.prol.loopexit ] ; 6 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv91.i.i
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !29
  %i.nz = fneg double %i.ny
  %i.oa = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv91.i.i
  %i.ob = getelementptr i8, ptr %i.oa, i64 -16
  store double %i.nz, ptr %i.ob, align 8, !tbaa !29
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next92.i.i
  %i.od = load double, ptr %i.oc, align 8, !tbaa !29
  %i.oe = fneg double %i.od
  %i.of = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv.next92.i.i
  %i.og = getelementptr i8, ptr %i.of, i64 -16
  store double %i.oe, ptr %i.og, align 8, !tbaa !29
  %indvars.iv.next92.i.i.1 = add nuw nsw i64 %indvars.iv91.i.i, 2 ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next92.i.i.1
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !29
  %i.oj = fneg double %i.oi
  %i.ok = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv.next92.i.i.1
  %i.ol = getelementptr i8, ptr %i.ok, i64 -16
  store double %i.oj, ptr %i.ol, align 8, !tbaa !29
  %indvars.iv.next92.i.i.2 = add nuw nsw i64 %indvars.iv91.i.i, 3 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next92.i.i.2
  %i.on = load double, ptr %i.om, align 8, !tbaa !29
  %i.oo = fneg double %i.on
  %i.op = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv.next92.i.i.2
  %i.oq = getelementptr i8, ptr %i.op, i64 -16
  store double %i.oo, ptr %i.oq, align 8, !tbaa !29
  %indvars.iv.next92.i.i.3 = add nuw nsw i64 %indvars.iv91.i.i, 4 ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %indvars.iv.next92.i.i.3, %wide.trip.count94.i.i
  br i1 %exitcond95.not.i.i.3, label %.loopexit128, label %scalar.ph32, !llvm.loop !423

.loopexit128:                                     ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32, %middle.block41
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %wide.trip.count94.i.i
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !63
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ov = tail call i32 @N_VScaleAddMulti(i32 noundef %i.ma, ptr noundef nonnull %i.nb, ptr noundef %i.ot, ptr noundef nonnull %i.ou, ptr noundef nonnull %i.ou) #13 ; 0 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !148
  %.not65.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not65.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit128
  %i.oy = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.oz = add nsw i32 %i.oy, -2
  %i.pa = load ptr, ptr %i.na, align 8, !tbaa !100
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pc = sext i32 %i.oy to i64
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !63
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.pg = tail call i32 @N_VScaleAddMulti(i32 noundef %i.oz, ptr noundef %i.pa, ptr noundef %i.pe, ptr noundef nonnull %i.pf, ptr noundef nonnull %i.pf) #13 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit128
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !172
  %.not66.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not66.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !156
  %i.pl = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.pm = add nsw i32 %i.pl, -2
  %i.pn = load ptr, ptr %i.na, align 8, !tbaa !100
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.pp = sext i32 %i.pl to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.pp
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !164
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.pt = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.pk, i32 noundef %i.pm, ptr noundef %i.pn, ptr noundef %i.pr, ptr noundef nonnull %i.ps, ptr noundef nonnull %i.ps) #13 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !212
  %.not67.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not67.i.i, label %cvAdjustAdams.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !156
  %i.py = load i32, ptr %i.b, align 8, !tbaa !105 ; 2 uses
  %i.pz = add nsw i32 %i.py, -2
  %i.qa = load ptr, ptr %i.na, align 8, !tbaa !100
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.qc = sext i32 %i.py to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !164
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.qg = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.px, i32 noundef %i.pz, ptr noundef %i.qa, ptr noundef %i.qe, ptr noundef nonnull %i.qf, ptr noundef nonnull %i.qf) #13 ; 0 uses
  br label %cvAdjustAdams.exit

cvAdjustAdams.exit:                               ; preds = %bb.ad, %bb.ac, %._crit_edge.i3.i, %bb.x, %._crit_edge143.i.i, %bb.w, %bb.n, %bb.m, %bb.l, %._crit_edge.i, %bb.g, %bb.f, %bb.a, %bb.b
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VConstVectorArray(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMultiVectorArray(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"CVodeMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !12, i64 48, !12, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 128, !13, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !14, i64 192, !14, i64 200, !15, i64 208, !5, i64 216, !12, i64 224, !5, i64 232, !5, i64 236, !12, i64 240, !14, i64 248, !16, i64 256, !15, i64 264, !5, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !12, i64 312, !14, i64 320, !16, i64 328, !15, i64 336, !6, i64 344, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !6, i64 512, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !6, i64 648, !16, i64 752, !16, i64 760, !16, i64 768, !16, i64 776, !16, i64 784, !5, i64 792, !6, i64 800, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !13, i64 936, !5, i64 944, !5, i64 948, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !6, i64 1048, !6, i64 1160, !6, i64 1208, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !5, i64 1392, !12, i64 1400, !12, i64 1408, !5, i64 1416, !12, i64 1424, !12, i64 1432, !15, i64 1440, !5, i64 1448, !18, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !12, i64 1544, !12, i64 1552, !12, i64 1560, !12, i64 1568, !18, i64 1576, !5, i64 1584, !18, i64 1592, !18, i64 1600, !18, i64 1608, !18, i64 1616, !18, i64 1624, !18, i64 1632, !18, i64 1640, !18, i64 1648, !18, i64 1656, !19, i64 1664, !18, i64 1672, !18, i64 1680, !19, i64 1688, !18, i64 1696, !18, i64 1704, !19, i64 1712, !18, i64 1720, !18, i64 1728, !18, i64 1736, !18, i64 1744, !18, i64 1752, !18, i64 1760, !5, i64 1768, !12, i64 1776, !12, i64 1784, !12, i64 1792, !18, i64 1800, !18, i64 1808, !18, i64 1816, !18, i64 1824, !18, i64 1832, !18, i64 1840, !20, i64 1848, !5, i64 1856, !20, i64 1864, !5, i64 1872, !20, i64 1880, !5, i64 1888, !20, i64 1896, !5, i64 1904, !5, i64 1908, !18, i64 1912, !5, i64 1920, !11, i64 1928, !5, i64 1936, !13, i64 1944, !13, i64 1952, !13, i64 1960, !13, i64 1968, !13, i64 1976, !13, i64 1984, !5, i64 1992, !5, i64 1996, !11, i64 2000, !11, i64 2008, !11, i64 2016, !11, i64 2024, !11, i64 2032, !11, i64 2040, !18, i64 2048, !12, i64 2056, !5, i64 2064, !5, i64 2068, !18, i64 2072, !12, i64 2080, !12, i64 2088, !12, i64 2096, !5, i64 2104, !5, i64 2108, !12, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !11, i64 2184, !18, i64 2192, !5, i64 2200, !6, i64 2208, !5, i64 2400, !18, i64 2408, !11, i64 2416, !5, i64 2424, !15, i64 2432, !15, i64 2440, !12, i64 2448, !12, i64 2456, !12, i64 2464, !14, i64 2472, !14, i64 2480, !14, i64 2488, !12, i64 2496, !5, i64 2504, !18, i64 2512, !15, i64 2520, !5, i64 2528, !13, i64 2536, !18, i64 2544, !18, i64 2552, !5, i64 2560, !21, i64 2568, !5, i64 2576, !5, i64 2580, !6, i64 2584, !14, i64 2688, !16, i64 2696, !16, i64 2704, !5, i64 2712, !5, i64 2716, !22, i64 2720, !5, i64 2728}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 long", !11, i64 0}
!20 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!21 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!22 = !{!"p1 _ZTS11CVadjMemRec", !11, i64 0}
!23 = !{!9, !5, i64 40}
!24 = !{!9, !12, i64 16}
!25 = !{!9, !5, i64 72}
!26 = !{!9, !5, i64 1448}
!27 = !{!9, !18, i64 1456}
!28 = !{!9, !5, i64 1464}
!29 = !{!12, !12, i64 0}
!30 = !{!9, !18, i64 1576}
!31 = !{!9, !5, i64 1584}
!32 = !{!9, !5, i64 1468}
!33 = !{!9, !5, i64 1472}
!34 = !{!9, !12, i64 1432}
!35 = !{!9, !18, i64 2048}
!36 = !{!9, !12, i64 2056}
!37 = !{!9, !5, i64 2560}
!38 = !{!9, !5, i64 2528}
!39 = !{!9, !5, i64 144}
!40 = !{!9, !11, i64 160}
!41 = !{!9, !11, i64 168}
!42 = !{!9, !5, i64 184}
!43 = !{!9, !5, i64 188}
!44 = !{!9, !5, i64 216}
!45 = !{!9, !5, i64 296}
!46 = !{!9, !5, i64 2120}
!47 = !{!9, !5, i64 2124}
!48 = !{!9, !5, i64 2128}
!49 = !{!9, !18, i64 1832}
!50 = !{!9, !18, i64 1840}
!51 = !{!9, !5, i64 1908}
!52 = !{!53, !55, i64 24}
!53 = !{!"SUNContext_", !11, i64 0, !54, i64 8, !5, i64 16, !55, i64 24, !5, i64 32, !5, i64 36, !56, i64 40, !5, i64 48}
!54 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!55 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!56 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!57 = !{!53, !5, i64 36}
!58 = !{!56, !56, i64 0}
!59 = !{!60, !11, i64 8}
!60 = !{!"SUNErrHandler_", !56, i64 0, !11, i64 8, !11, i64 16}
!61 = !{!60, !11, i64 16}
!62 = distinct !{null}
!63 = !{!13, !13, i64 0}
!64 = !{!9, !12, i64 48}
!65 = !{!9, !14, i64 200}
!66 = !{!9, !15, i64 208}
!67 = !{!5, !5, i64 0}
!68 = !{!9, !14, i64 192}
!69 = !{!9, !13, i64 448}
!70 = !{!9, !12, i64 224}
!71 = !{!9, !11, i64 24}
!72 = !{!9, !11, i64 32}
!73 = !{!9, !18, i64 1624}
!74 = !{!75, !76, i64 8}
!75 = !{!"_generic_N_Vector", !11, i64 0, !76, i64 8, !10, i64 16}
!76 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!77 = !{!78, !11, i64 8}
!78 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!79 = !{!78, !11, i64 24}
!80 = !{!78, !11, i64 88}
!81 = !{!78, !11, i64 96}
!82 = !{!78, !11, i64 104}
!83 = !{!78, !11, i64 112}
!84 = !{!78, !11, i64 120}
!85 = !{!78, !11, i64 128}
!86 = !{!78, !11, i64 136}
!87 = !{!78, !11, i64 144}
!88 = !{!78, !11, i64 160}
!89 = !{!78, !11, i64 168}
!90 = !{!78, !11, i64 32}
!91 = !{!18, !18, i64 0}
!92 = !{!9, !18, i64 1800}
!93 = !{!9, !18, i64 1808}
!94 = !{!9, !13, i64 464}
!95 = !{!9, !13, i64 472}
!96 = !{!9, !13, i64 480}
!97 = !{!9, !13, i64 488}
!98 = !{!9, !13, i64 496}
!99 = !{!9, !13, i64 504}
!100 = !{!9, !14, i64 2688}
!101 = !{!9, !16, i64 2696}
!102 = !{!9, !16, i64 2704}
!103 = !{!9, !12, i64 1032}
!104 = !{!9, !5, i64 1856}
!105 = !{!9, !5, i64 960}
!106 = !{!9, !5, i64 976}
!107 = !{!9, !5, i64 972}
!108 = !{!9, !12, i64 1520}
!109 = !{!9, !12, i64 1496}
!110 = !{!9, !5, i64 2068}
!111 = !{!9, !12, i64 2088}
!112 = !{!9, !12, i64 2112}
!113 = !{!9, !5, i64 2064}
!114 = !{!9, !18, i64 1648}
!115 = !{!9, !18, i64 1720}
!116 = !{!9, !18, i64 1672}
!117 = !{!9, !18, i64 1696}
!118 = !{!9, !18, i64 1752}
!119 = !{!9, !5, i64 1768}
!120 = !{!9, !5, i64 2400}
!121 = !{!9, !18, i64 2512}
!122 = !{!9, !5, i64 2504}
!123 = !{!9, !12, i64 1008}
!124 = !{!9, !5, i64 968}
!125 = !{!9, !18, i64 2408}
!126 = !{!9, !5, i64 2144}
!127 = !{!9, !5, i64 2140}
!128 = !{!9, !13, i64 64}
!129 = !{!9, !13, i64 2536}
!130 = !{!9, !18, i64 2072}
!131 = !{!9, !11, i64 2008}
!132 = !{!9, !12, i64 2080}
!133 = !{!9, !12, i64 56}
!134 = !{!9, !5, i64 44}
!135 = !{!9, !5, i64 76}
!136 = !{!9, !11, i64 80}
!137 = !{!9, !11, i64 88}
!138 = !{!78, !11, i64 184}
!139 = !{!9, !18, i64 1816}
!140 = !{!9, !18, i64 1824}
!141 = !{!9, !13, i64 616}
!142 = !{!9, !13, i64 632}
!143 = !{!9, !13, i64 624}
!144 = !{!9, !13, i64 640}
!145 = !{!9, !11, i64 104}
!146 = !{!9, !18, i64 1608}
!147 = !{!9, !18, i64 1728}
!148 = !{!9, !5, i64 96}
!149 = !{!9, !5, i64 2156}
!150 = !{!9, !5, i64 116}
!151 = !{!9, !12, i64 120}
!152 = !{!9, !12, i64 128}
!153 = !{!9, !5, i64 2152}
!154 = !{!9, !13, i64 136}
!155 = !{!9, !5, i64 2168}
!156 = !{!9, !5, i64 152}
!157 = !{!9, !5, i64 156}
!158 = !{!9, !11, i64 176}
!159 = !{!9, !5, i64 792}
!160 = distinct !{!160, !161, !162}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = distinct !{!163, !162, !161}
!164 = !{!16, !16, i64 0}
!165 = !{!9, !18, i64 1656}
!166 = !{!9, !18, i64 1736}
!167 = !{!9, !18, i64 1680}
!168 = !{!9, !18, i64 1704}
!169 = !{!9, !18, i64 1760}
!170 = distinct !{!170, !161, !162}
!171 = distinct !{!171, !162, !161}
!172 = !{!9, !5, i64 148}
!173 = !{!9, !5, i64 1872}
!174 = !{!9, !5, i64 1888}
!175 = !{!9, !16, i64 760}
!176 = !{!9, !16, i64 752}
!177 = !{!9, !16, i64 768}
!178 = !{!9, !16, i64 776}
end_hunk_9
