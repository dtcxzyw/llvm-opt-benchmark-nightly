Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_topology?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@tm_optimize_topology:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %putchar8.i = tail call i32 @putchar(i32 58)    ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.g, align 8, !tbaa !40
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.c, label %tm_display_arity.exit, !llvm.loop !3

tm_display_arity.exit:                            ; preds = %bb.f, %bb.b
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %tm_display_arity.exit, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !40   ; 3 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !13
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2                      ; 2 uses
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #27 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !59
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.ab, i64 %i.z, i1 false)
  %i.ac = tail call i32 @tm_get_verbose_level() #23
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ac, 4
  br i1 %i.al, label %bb.h, label %topology_numbering_cpy.exit

bb.h:                                             ; preds = %bb.g
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.ak) ; 0 uses
  br label %topology_numbering_cpy.exit

topology_numbering_cpy.exit:                      ; preds = %bb.g, %bb.h
  %sext = shl i64 %i.aj, 32
  %i.an = ashr exact i64 %sext, 30                ; 2 uses
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #27 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.aq, i64 %i.an, i1 false)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !81    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !38 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %.not.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i20, label %topology_constraints_cpy.exit, label %bb.i

bb.i:                                             ; preds = %topology_numbering_cpy.exit
  %i.aw = sext i32 %i.at to i64
  %i.ax = shl nsw i64 %i.aw, 2                    ; 2 uses
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr nonnull align 4 %i.av, i64 %i.ax, i1 false)
  br label %topology_constraints_cpy.exit

topology_constraints_cpy.exit:                    ; preds = %topology_numbering_cpy.exit, %bb.i
  %.037 = phi ptr [ %i.ay, %bb.i ], [ null, %topology_numbering_cpy.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bc) #27 ; 2 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bd, ptr align 8 %i.bf, i64 %i.bc, i1 false)
  %i.bg = add nsw i32 %i.x, -2
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b, i32 noundef %i.bg)
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !13
  %i.bj = call ptr @tm_build_synthetic_topology(ptr noundef %i.bh, ptr noundef null, i32 noundef %i.bi, ptr noundef %i.ao, i32 noundef %i.ak) ; 7 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !60  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store ptr %.037, ptr %i.bm, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  store i32 %i.at, ptr %i.bn, align 8, !tbaa !38
  %i.bo = load ptr, ptr %0, align 8, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 84
  %i.br = load <2 x i32>, ptr %i.bp, align 4, !tbaa !13
  store <2 x i32> %i.br, ptr %i.bq, align 4, !tbaa !13
  br i1 %i.e, label %bb.j, label %bb.p

bb.j:                                             ; preds = %topology_constraints_cpy.exit
  %.not = icmp eq ptr %.037, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.bt = icmp sgt i32 %i.at, 0
  br i1 %i.bt, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.037, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.bv) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !40 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i22.preheader, label %tm_display_arity.exit27

.lr.ph.i22.preheader:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !42
  %.not.i24 = icmp eq ptr %i.bk, null
  %i.ca = zext nneg i32 %i.by to i64
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %bb.o
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.o ], [ 0, %.lr.ph.i22.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.i23
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.cc) ; 0 uses
  br i1 %.not.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i22
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i23
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !58
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.cf) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  %putchar8.i26 = call i32 @putchar(i32 58)       ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next.i25, %i.ca
  br i1 %i.ch, label %.lr.ph.i22, label %tm_display_arity.exit27, !llvm.loop !3

tm_display_arity.exit27:                          ; preds = %bb.o, %bb.l
  %putchar.i21 = call i32 @putchar(i32 10)        ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %tm_display_arity.exit27, %topology_constraints_cpy.exit
  call void @free(ptr noundef %i.bh) #23
  call void @free(ptr noundef %i.ao) #23
  %i.ci = load ptr, ptr %0, align 8, !tbaa !81    ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  call void @free(ptr noundef %i.ck) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !48
  call void @free(ptr noundef %i.cm) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39
  call void @free(ptr noundef %i.co) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  call void @free(ptr noundef %i.cq) #23
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !42
  call void @free(ptr noundef %i.cr) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  call void @free(ptr noundef %i.ct) #23
  call void @free(ptr noundef %i.ci) #23
  store ptr %i.bj, ptr %0, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @optimize_arity(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 15 uses
  %i.e = zext nneg i32 %3 to i64                  ; 17 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 6 uses
  %i.h = srem i32 %i.g, 3
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp sgt i32 %i.g, 3
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %2, align 4, !tbaa !13
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.l, ptr %2, align 4, !tbaa !13
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #27 ; 9 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !59
  %i.p = load i32, ptr %2, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #27 ; 10 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !60
  %.not109 = icmp eq i32 %3, 0
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !60 ; 8 uses
  %.pre122155 = ptrtoaddr ptr %.pre122 to i64     ; 2 uses
  br i1 %.not109, label %._crit_edge104, label %vector.memcheck153

vector.memcheck153:                               ; preds = %bb.c
  %min.iters.check154 = icmp ult i32 %3, 6
  %i.u = sub i64 %.pre122155, %i.t
  %diff.check156 = icmp ugt i64 %i.u, -32
  %or.cond186 = select i1 %min.iters.check154, i1 true, i1 %diff.check156
  br i1 %or.cond186, label %.lr.ph103.preheader196, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec161 = and i64 %i.e, 2147483644            ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index163 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load164 = load <2 x i32>, ptr %i.v, align 4, !tbaa !13
  %wide.load165 = load <2 x i32>, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index163 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <2 x i32> %wide.load164, ptr %i.x, align 4, !tbaa !13
  store <2 x i32> %wide.load165, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %index163 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load166 = load <2 x double>, ptr %i.z, align 8, !tbaa !58
  %wide.load167 = load <2 x double>, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index163 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load166, ptr %i.ab, align 8, !tbaa !58
  store <2 x double> %wide.load167, ptr %i.ac, align 8, !tbaa !58
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.ad, label %middle.block169, label %vector.body162, !llvm.loop !82

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %n.vec161, %i.e
  br i1 %cmp.n170, label %._crit_edge104, label %.lr.ph103.preheader196

.lr.ph103.preheader196:                           ; preds = %vector.memcheck153, %middle.block169
  %indvars.iv114.ph = phi i64 [ 0, %vector.memcheck153 ], [ %n.vec161, %middle.block169 ] ; 7 uses
  %xtraiter199 = and i64 %i.e, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader196
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114.ph
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114.ph
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114.ph
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114.ph
  store double %i.ai, ptr %i.aj, align 8, !tbaa !58
  %indvars.iv.next115.prol = or disjoint i64 %indvars.iv114.ph, 1
  br label %.lr.ph103.prol.loopexit

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader196
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %.lr.ph103.preheader196 ], [ %indvars.iv.next115.prol, %.lr.ph103.prol ]
  %i.ak = add nsw i64 %i.e, -1
  %i.al = icmp eq i64 %indvars.iv114.ph, %i.ak
  br i1 %i.al, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.1, %.lr.ph103 ], [ %indvars.iv114.unr, %.lr.ph103.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114
  store double %i.aq, ptr %i.ar, align 8, !tbaa !58
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next115
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next115
  store i32 %i.at, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv.next115
  %i.aw = load double, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115
  store double %i.aw, ptr %i.ax, align 8, !tbaa !58
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %exitcond118.not.1 = icmp eq i64 %indvars.iv.next115.1, %i.e
  br i1 %exitcond118.not.1, label %._crit_edge104, label %.lr.ph103, !llvm.loop !83

._crit_edge104:                                   ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block169, %bb.c
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e
  store i32 3, ptr %i.ay, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.e
  %i.ba = load double, ptr %i.az, align 8, !tbaa !58 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.e
  store double %i.ba, ptr %i.bb, align 8, !tbaa !58
  %i.bc = udiv i32 %i.g, 3
  %i.bd = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.be ; 2 uses
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.be
  store double %i.ba, ptr %i.bg, align 8, !tbaa !58
  %i.bh = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.bi = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %i.bk = zext nneg i32 %i.bh to i64              ; 5 uses
  %i.bl = add i32 %i.bi, -3
  %i.bm = sub i32 %i.bl, %3                       ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check178 = icmp ugt i32 %i.bm, 16
  %i.bp = add i32 %i.bi, -2
  %.not192 = icmp ugt i32 %i.bp, %3
  %or.cond193 = and i1 %min.iters.check178, %.not192
  br i1 %or.cond193, label %vector.memcheck173, label %.lr.ph107.preheader195

vector.memcheck173:                               ; preds = %.lr.ph107.preheader
  %i.bq = shl nuw nsw i64 %i.bk, 3
  %i.br = add i64 %i.bq, %i.t
  %i.bs = add nuw i32 %3, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add i64 %i.bu, %.pre122155
  %i.bw = sub i64 %i.bv, %i.br
  %diff.check175 = icmp ugt i64 %i.bw, -32
  br i1 %diff.check175, label %.lr.ph107.preheader195, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck173
  %n.vec180 = and i64 %i.bo, 8589934588           ; 3 uses
  %i.bx = add nuw nsw i64 %n.vec180, %i.bk
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.by = add nuw i64 %index182, %i.bk            ; 3 uses
  %i.bz = add nuw i64 %i.by, 4294967295
  %i.ca = and i64 %i.bz, 4294967295               ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.load183 = load <2 x i32>, ptr %i.cb, align 4, !tbaa !13
  %wide.load184 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !13
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.by ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store <2 x i32> %wide.load183, ptr %i.cd, align 4, !tbaa !13
  store <2 x i32> %wide.load184, ptr %i.ce, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.ca ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load185 = load <2 x double>, ptr %i.cf, align 8, !tbaa !58
  %wide.load186 = load <2 x double>, ptr %i.cg, align 8, !tbaa !58
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.by ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x double> %wide.load185, ptr %i.ch, align 8, !tbaa !58
  store <2 x double> %wide.load186, ptr %i.ci, align 8, !tbaa !58
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.cj, label %middle.block188, label %vector.body181, !llvm.loop !84

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.bo, %n.vec180
  br i1 %cmp.n189, label %._crit_edge108, label %.lr.ph107.preheader195

.lr.ph107.preheader195:                           ; preds = %vector.memcheck173, %.lr.ph107.preheader, %middle.block188
  %indvars.iv119.ph = phi i64 [ %i.bk, %vector.memcheck173 ], [ %i.bk, %.lr.ph107.preheader ], [ %i.bx, %middle.block188 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader195, %.lr.ph107
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.lr.ph107 ], [ %indvars.iv119.ph, %.lr.ph107.preheader195 ] ; 4 uses
  %i.ck = add nuw i64 %indvars.iv119, 4294967295
  %i.cl = and i64 %i.ck, 4294967295               ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv119
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !13
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.cl
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119
  store double %i.cq, ptr %i.cr, align 8, !tbaa !58
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cs = trunc nuw i64 %indvars.iv.next120 to i32
  %i.ct = icmp sgt i32 %i.bi, %i.cs
  br i1 %i.ct, label %.lr.ph107, label %._crit_edge108, !llvm.loop !85

._crit_edge108:                                   ; preds = %.lr.ph107, %middle.block188, %._crit_edge104
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.cu = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.cu) #23
  %i.cv = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.cw = icmp eq i32 %i.cv, 3
  %. = select i1 %i.cw, i32 %3, i32 %i.bd
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.)
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.cx, ptr %0, align 8, !tbaa !59
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.cy, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.cz = and i32 %i.g, 1
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = icmp sgt i32 %i.g, 2
  %or.cond3 = and i1 %i.db, %i.da
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dc = load i32, ptr %2, align 4, !tbaa !13
  %i.dd = add nsw i32 %i.dc, 1                    ; 2 uses
  store i32 %i.dd, ptr %2, align 4, !tbaa !13
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.df) #27 ; 9 uses
  store ptr %i.dg, ptr %i.a, align 8, !tbaa !59
  %i.dh = load i32, ptr %2, align 4, !tbaa !13
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  %i.dk = tail call noalias ptr @malloc(i64 noundef %i.dj) #27 ; 10 uses
  %i.dl = ptrtoaddr ptr %i.dk to i64              ; 2 uses
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !60
  %.not = icmp eq i32 %3, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !60    ; 8 uses
  %.pre130 = ptrtoaddr ptr %.pre to i64           ; 2 uses
  br i1 %.not, label %._crit_edge, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %min.iters.check = icmp ult i32 %3, 6
  %i.dm = sub i64 %.pre130, %i.dl
  %diff.check131 = icmp ugt i64 %i.dm, -32
  %or.cond188 = select i1 %min.iters.check, i1 true, i1 %diff.check131
  br i1 %or.cond188, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %wide.load = load <2 x i32>, ptr %i.dn, align 4, !tbaa !13
  %wide.load132.a = load <2 x i32>, ptr %i.do, align 4, !tbaa !13
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store <2 x i32> %wide.load, ptr %i.dp, align 4, !tbaa !13
  store <2 x i32> %wide.load132.a, ptr %i.dq, align 4, !tbaa !13
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load133.a = load <2 x double>, ptr %i.dr, align 8, !tbaa !58
  %wide.load134 = load <2 x double>, ptr %i.ds, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x double> %wide.load133.a, ptr %i.dt, align 8, !tbaa !58
  store <2 x double> %wide.load134, ptr %i.du, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader198
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.ph
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !13
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.ph
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !58
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.ph
  store double %i.ea, ptr %i.eb, align 8, !tbaa !58
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader198
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader198 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ec = add nsw i64 %i.e, -1
  %i.ed = icmp eq i64 %indvars.iv.ph, %i.ec
  br i1 %i.ed, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !13
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  store double %i.ei, ptr %i.ej, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !13
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next
  store i32 %i.el, ptr %i.em, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.eo = load double, ptr %i.en, align 8, !tbaa !58
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next
  store double %i.eo, ptr %i.ep, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.e
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.e
  store i32 2, ptr %i.eq, align 4, !tbaa !13
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %i.es = load double, ptr %i.er, align 8, !tbaa !58 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.e
  store double %i.es, ptr %i.et, align 8, !tbaa !58
  %i.eu = lshr exact i32 %i.g, 1
  %i.ev = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ew ; 2 uses
  store i32 %i.eu, ptr %i.ex, align 4, !tbaa !13
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ew
  store double %i.es, ptr %i.ey, align 8, !tbaa !58
  %i.ez = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.fa = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.fc = zext nneg i32 %i.ez to i64              ; 5 uses
  %i.fd = add i32 %i.fa, -3
  %i.fe = sub i32 %i.fd, %3                       ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check140 = icmp ugt i32 %i.fe, 16
  %i.fh = add i32 %i.fa, -2
  %.not191 = icmp ugt i32 %i.fh, %3
  %or.cond194 = and i1 %min.iters.check140, %.not191
  br i1 %or.cond194, label %vector.memcheck135, label %.lr.ph99.preheader197

vector.memcheck135:                               ; preds = %.lr.ph99.preheader
  %i.fi = shl nuw nsw i64 %i.fc, 3
  %i.fj = add i64 %i.fi, %i.dl
  %i.fk = add nuw i32 %3, 1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add i64 %i.fm, %.pre130
  %i.fo = sub i64 %i.fn, %i.fj
  %diff.check137 = icmp ugt i64 %i.fo, -32
  br i1 %diff.check137, label %.lr.ph99.preheader197, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck135
  %n.vec142 = and i64 %i.fg, 8589934588           ; 3 uses
  %i.fp = add nuw nsw i64 %n.vec142, %i.fc
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.fq = add nuw i64 %index144, %i.fc            ; 3 uses
  %i.fr = add nuw i64 %i.fq, 4294967295
  %i.fs = and i64 %i.fr, 4294967295               ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %wide.load145.a = load <2 x i32>, ptr %i.ft, align 4, !tbaa !13
  %wide.load146 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !13
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.fq ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store <2 x i32> %wide.load145.a, ptr %i.fv, align 4, !tbaa !13
  store <2 x i32> %wide.load146, ptr %i.fw, align 4, !tbaa !13
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load147 = load <2 x double>, ptr %i.fx, align 8, !tbaa !58
  %wide.load148 = load <2 x double>, ptr %i.fy, align 8, !tbaa !58
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.fq ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x double> %wide.load147, ptr %i.fz, align 8, !tbaa !58
  store <2 x double> %wide.load148, ptr %i.ga, align 8, !tbaa !58
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.gb, label %middle.block150, label %vector.body143, !llvm.loop !88

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.fg, %n.vec142
  br i1 %cmp.n151, label %._crit_edge100, label %.lr.ph99.preheader197

.lr.ph99.preheader197:                            ; preds = %vector.memcheck135, %.lr.ph99.preheader, %middle.block150
  %indvars.iv111.ph = phi i64 [ %i.fc, %vector.memcheck135 ], [ %i.fc, %.lr.ph99.preheader ], [ %i.fp, %middle.block150 ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader197, %.lr.ph99
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph99 ], [ %indvars.iv111.ph, %.lr.ph99.preheader197 ] ; 4 uses
  %i.gc = add nuw i64 %indvars.iv111, 4294967295
  %i.gd = and i64 %i.gc, 4294967295               ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !13
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv111
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !13
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gd
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !58
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv111
  store double %i.gi, ptr %i.gj, align 8, !tbaa !58
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.gk = trunc nuw i64 %indvars.iv.next112 to i32
  %i.gl = icmp sgt i32 %i.fa, %i.gk
  br i1 %i.gl, label %.lr.ph99, label %._crit_edge100, !llvm.loop !89

._crit_edge100:                                   ; preds = %.lr.ph99, %middle.block150, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.gm = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.gm) #23
  %i.gn = load i32, ptr %i.ex, align 4, !tbaa !13
  %i.go = icmp eq i32 %i.gn, 2
  %.129 = select i1 %i.go, i32 %3, i32 %i.ev
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.129)
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.gp, ptr %0, align 8, !tbaa !59
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.gq, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.gr = add nsw i32 %3, -1
  tail call fastcc void @optimize_arity(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.gr)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge108, %bb.f, %._crit_edge100, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @tm_build_synthetic_topology(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #27 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 1, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !40
  %i.f = sext i32 %2 to i64                       ; 3 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #27 ; 4 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !42
  %i.i = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !41
  %.not = icmp ne ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #30 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %1, i64 %i.i, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi ptr [ null, %.thread ], [ %i.l, %bb.b ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %bb.c
  %i.p = add nsw i32 %2, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.t = zext nneg i32 %i.p to i64
  %wide.trip.count78 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph70, %.loopexit66
  %indvars.iv75 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next76, %.loopexit66 ] ; 4 uses
  %.069 = phi i32 [ 1, %.lr.ph70 ], [ %i.bi, %.loopexit66 ] ; 8 uses
  %i.u = sext i32 %.069 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv75
  store i64 %i.u, ptr %i.v, align 8, !tbaa !45
  %i.w = icmp eq i64 %indvars.iv75, %i.t
  br i1 %i.w, label %bb.e, label %.loopexit66

bb.e:                                             ; preds = %bb.d
  %i.x = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.y, ptr %i.q, align 8, !tbaa !47
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #27 ; 4 uses
  store ptr %i.z, ptr %i.r, align 8, !tbaa !48
  store i32 %.069, ptr %i.b, align 8, !tbaa !38
  store i32 %.069, ptr %i.s, align 8, !tbaa !21
  %i.aa = icmp sgt i32 %.069, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit66

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %.069 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %.069, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ad = srem i32 %i.ac, %4                      ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13
  %i.ah = sub nuw nsw i32 %i.ac, %i.ad
  %i.ai = add nsw i32 %i.ag, %i.ah                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  store i32 %i.ac, ptr %i.al, align 4, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  %i.an = srem i32 %i.am, %4                      ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = sub nuw nsw i32 %i.am, %i.an
  %i.as = add nsw i32 %i.aq, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.au
  store i32 %i.am, ptr %i.av, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit66.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !90

.loopexit66.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit66, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit66.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit66.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %.069 to i1
end_hunk_0
