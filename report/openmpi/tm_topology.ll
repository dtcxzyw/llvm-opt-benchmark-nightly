Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_topology?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@tm_optimize_topology:bb.a
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
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #27 ; 11 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !60
  %.not109 = icmp eq i32 %3, 0
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !60 ; 9 uses
  br i1 %.not109, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.c
  %min.iters.check154 = icmp ult i32 %3, 6
  %4 = ptrtoaddr ptr %i.s to i64
  %5 = ptrtoaddr ptr %.pre122 to i64
  %i.t = sub i64 %5, %4
  %diff.check152 = icmp ugt i64 %i.t, -32
  %or.cond186 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond186, label %.lr.ph103.preheader191, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph103.preheader
  %n.vec156 = and i64 %i.e, 2147483644            ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index158 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load159 = load <2 x i32>, ptr %i.u, align 4, !tbaa !13
  %wide.load160 = load <2 x i32>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index158 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x i32> %wide.load159, ptr %i.w, align 4, !tbaa !13
  store <2 x i32> %wide.load160, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %index158 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load161 = load <2 x double>, ptr %i.y, align 8, !tbaa !58
  %wide.load162 = load <2 x double>, ptr %i.z, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index158 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load161, ptr %i.aa, align 8, !tbaa !58
  store <2 x double> %wide.load162, ptr %i.ab, align 8, !tbaa !58
  %index.next163 = add nuw i64 %index158, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ac, label %middle.block164, label %vector.body157, !llvm.loop !82

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %n.vec156, %i.e
  br i1 %cmp.n165, label %._crit_edge104, label %.lr.ph103.preheader191

.lr.ph103.preheader191:                           ; preds = %.lr.ph103.preheader, %middle.block164
  %indvars.iv114.ph = phi i64 [ 0, %.lr.ph103.preheader ], [ %n.vec156, %middle.block164 ] ; 7 uses
  %xtraiter194 = and i64 %i.e, 1
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph103.prol.loopexit, label %.lr.ph103.prol

.lr.ph103.prol:                                   ; preds = %.lr.ph103.preheader191
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114.ph
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114.ph
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114.ph
  store double %i.ah, ptr %i.ai, align 8, !tbaa !58
  %indvars.iv.next115.prol = or disjoint i64 %indvars.iv114.ph, 1
  br label %.lr.ph103.prol.loopexit

.lr.ph103.prol.loopexit:                          ; preds = %.lr.ph103.prol, %.lr.ph103.preheader191
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %.lr.ph103.preheader191 ], [ %indvars.iv.next115.prol, %.lr.ph103.prol ]
  %i.aj = add nsw i64 %i.e, -1
  %i.ak = icmp eq i64 %indvars.iv114.ph, %i.aj
  br i1 %i.ak, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.1, %.lr.ph103 ], [ %indvars.iv114.unr, %.lr.ph103.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv114
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv114
  store i32 %i.am, ptr %i.an, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv114
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv114
  store double %i.ap, ptr %i.aq, align 8, !tbaa !58
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next115
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next115
  store i32 %i.as, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %indvars.iv.next115
  %i.av = load double, ptr %i.au, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next115
  store double %i.av, ptr %i.aw, align 8, !tbaa !58
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %exitcond118.not.1 = icmp eq i64 %indvars.iv.next115.1, %i.e
  br i1 %exitcond118.not.1, label %._crit_edge104, label %.lr.ph103, !llvm.loop !83

._crit_edge104:                                   ; preds = %.lr.ph103.prol.loopexit, %.lr.ph103, %middle.block164, %bb.c
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e
  store i32 3, ptr %i.ax, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.e
  %i.az = load double, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.e
  store double %i.az, ptr %i.ba, align 8, !tbaa !58
  %i.bb = udiv i32 %i.g, 3
  %i.bc = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bd ; 2 uses
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bd
  store double %i.az, ptr %i.bf, align 8, !tbaa !58
  %i.bg = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.bh = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %i.bj = zext nneg i32 %i.bg to i64              ; 5 uses
  %i.bk = add i32 %i.bh, -3
  %i.bl = sub i32 %i.bk, %3                       ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check171 = icmp ugt i32 %i.bl, 16
  %i.bo = add i32 %i.bh, -2
  %.not185 = icmp ugt i32 %i.bo, %3
  %or.cond187 = and i1 %min.iters.check171, %.not185
  br i1 %or.cond187, label %vector.memcheck168, label %.lr.ph107.preheader190

vector.memcheck168:                               ; preds = %.lr.ph107.preheader
  %6 = ptrtoaddr ptr %i.s to i64
  %i.bp = shl nuw nsw i64 %i.bj, 3
  %7 = ptrtoaddr ptr %.pre122 to i64
  %i.bq = add nuw i32 %3, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  %8 = add i64 %i.bp, %6
  %i.bt = add i64 %i.bs, %7
  %i.bu = sub i64 %i.bt, %8
  %diff.check169 = icmp ugt i64 %i.bu, -32
  br i1 %diff.check169, label %.lr.ph107.preheader190, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck168
  %n.vec173 = and i64 %i.bn, 8589934588           ; 3 uses
  %i.bv = add nuw nsw i64 %n.vec173, %i.bj
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.bw = add nuw i64 %index175, %i.bj            ; 3 uses
  %i.bx = add nuw i64 %i.bw, 4294967295
  %i.by = and i64 %i.bx, 4294967295               ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %wide.load176 = load <2 x i32>, ptr %i.bz, align 4, !tbaa !13
  %wide.load177 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !13
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bw ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store <2 x i32> %wide.load176, ptr %i.cb, align 4, !tbaa !13
  store <2 x i32> %wide.load177, ptr %i.cc, align 4, !tbaa !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.by ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load178 = load <2 x double>, ptr %i.cd, align 8, !tbaa !58
  %wide.load179 = load <2 x double>, ptr %i.ce, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x double> %wide.load178, ptr %i.cf, align 8, !tbaa !58
  store <2 x double> %wide.load179, ptr %i.cg, align 8, !tbaa !58
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ch, label %middle.block181, label %vector.body174, !llvm.loop !84

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.bn, %n.vec173
  br i1 %cmp.n182, label %._crit_edge108, label %.lr.ph107.preheader190

.lr.ph107.preheader190:                           ; preds = %vector.memcheck168, %.lr.ph107.preheader, %middle.block181
  %indvars.iv119.ph = phi i64 [ %i.bj, %vector.memcheck168 ], [ %i.bj, %.lr.ph107.preheader ], [ %i.bv, %middle.block181 ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader190, %.lr.ph107
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.lr.ph107 ], [ %indvars.iv119.ph, %.lr.ph107.preheader190 ] ; 4 uses
  %i.ci = add nuw i64 %indvars.iv119, 4294967295
  %i.cj = and i64 %i.ci, 4294967295               ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv119
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !13
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre122, i64 %i.cj
  %i.co = load double, ptr %i.cn, align 8, !tbaa !58
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv119
  store double %i.co, ptr %i.cp, align 8, !tbaa !58
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next120 to i32
  %i.cr = icmp sgt i32 %i.bh, %i.cq
  br i1 %i.cr, label %.lr.ph107, label %._crit_edge108, !llvm.loop !85

._crit_edge108:                                   ; preds = %.lr.ph107, %middle.block181, %._crit_edge104
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.cs = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.cs) #23
  %i.ct = load i32, ptr %i.be, align 4, !tbaa !13
  %i.cu = icmp eq i32 %i.ct, 3
  %. = select i1 %i.cu, i32 %3, i32 %i.bc
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.)
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.cv, ptr %0, align 8, !tbaa !59
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.cw, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.cx = and i32 %i.g, 1
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp sgt i32 %i.g, 2
  %or.cond3 = and i1 %i.cz, %i.cy
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.da = load i32, ptr %2, align 4, !tbaa !13
  %i.db = add nsw i32 %i.da, 1                    ; 2 uses
  store i32 %i.db, ptr %2, align 4, !tbaa !13
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dd) #27 ; 9 uses
  store ptr %i.de, ptr %i.a, align 8, !tbaa !59
  %i.df = load i32, ptr %2, align 4, !tbaa !13
  %i.dg = sext i32 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 3
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dh) #27 ; 11 uses
  store ptr %i.di, ptr %i.b, align 8, !tbaa !60
  %.not = icmp eq i32 %3, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !60    ; 9 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check = icmp ult i32 %3, 6
  %9 = ptrtoaddr ptr %i.di to i64
  %10 = ptrtoaddr ptr %.pre to i64
  %i.dj = sub i64 %10, %9
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond188 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond188, label %.lr.ph.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.load = load <2 x i32>, ptr %i.dk, align 4, !tbaa !13
  %wide.load131 = load <2 x i32>, ptr %i.dl, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %wide.load, ptr %i.dm, align 4, !tbaa !13
  store <2 x i32> %wide.load131, ptr %i.dn, align 4, !tbaa !13
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load132 = load <2 x double>, ptr %i.do, align 8, !tbaa !58
  %wide.load133 = load <2 x double>, ptr %i.dp, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x double> %wide.load132, ptr %i.dq, align 8, !tbaa !58
  store <2 x double> %wide.load133, ptr %i.dr, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader193

.lr.ph.preheader193:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader193
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.ph
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !13
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.ph
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !13
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.ph
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !58
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.ph
  store double %i.dx, ptr %i.dy, align 8, !tbaa !58
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader193
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader193 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dz = add nsw i64 %i.e, -1
  %i.ea = icmp eq i64 %indvars.iv.ph, %i.dz
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !13
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !58
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv
  store double %i.ef, ptr %i.eg, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !13
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !13
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.el = load double, ptr %i.ek, align 8, !tbaa !58
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next
  store double %i.el, ptr %i.em, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.e
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.e
  store i32 2, ptr %i.en, align 4, !tbaa !13
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.e
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !58 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.e
  store double %i.ep, ptr %i.eq, align 8, !tbaa !58
  %i.er = lshr exact i32 %i.g, 1
  %i.es = add nuw nsw i32 %3, 1                   ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.et ; 2 uses
  store i32 %i.er, ptr %i.eu, align 4, !tbaa !13
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.et
  store double %i.ep, ptr %i.ev, align 8, !tbaa !58
  %i.ew = add nuw nsw i32 %3, 2                   ; 2 uses
  %i.ex = load i32, ptr %2, align 4, !tbaa !13    ; 4 uses
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.ez = zext nneg i32 %i.ew to i64              ; 5 uses
  %i.fa = add i32 %i.ex, -3
  %i.fb = sub i32 %i.fa, %3                       ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check137 = icmp ugt i32 %i.fb, 16
  %i.fe = add i32 %i.ex, -2
  %.not184 = icmp ugt i32 %i.fe, %3
  %or.cond189 = and i1 %min.iters.check137, %.not184
  br i1 %or.cond189, label %vector.memcheck134, label %.lr.ph99.preheader192

vector.memcheck134:                               ; preds = %.lr.ph99.preheader
  %11 = ptrtoaddr ptr %i.di to i64
  %i.ff = shl nuw nsw i64 %i.ez, 3
  %12 = ptrtoaddr ptr %.pre to i64
  %i.fg = add nuw i32 %3, 1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %13 = add i64 %i.ff, %11
  %i.fj = add i64 %i.fi, %12
  %i.fk = sub i64 %i.fj, %13
  %diff.check135 = icmp ugt i64 %i.fk, -32
  br i1 %diff.check135, label %.lr.ph99.preheader192, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec139 = and i64 %i.fd, 8589934588           ; 3 uses
  %i.fl = add nuw nsw i64 %n.vec139, %i.ez
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %i.fm = add nuw i64 %index141, %i.ez            ; 3 uses
  %i.fn = add nuw i64 %i.fm, 4294967295
  %i.fo = and i64 %i.fn, 4294967295               ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %wide.load142 = load <2 x i32>, ptr %i.fp, align 4, !tbaa !13
  %wide.load143 = load <2 x i32>, ptr %i.fq, align 4, !tbaa !13
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.fm ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store <2 x i32> %wide.load142, ptr %i.fr, align 4, !tbaa !13
  store <2 x i32> %wide.load143, ptr %i.fs, align 4, !tbaa !13
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fo ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load144 = load <2 x double>, ptr %i.ft, align 8, !tbaa !58
  %wide.load145 = load <2 x double>, ptr %i.fu, align 8, !tbaa !58
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.fm ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x double> %wide.load144, ptr %i.fv, align 8, !tbaa !58
  store <2 x double> %wide.load145, ptr %i.fw, align 8, !tbaa !58
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.fx, label %middle.block147, label %vector.body140, !llvm.loop !88

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.fd, %n.vec139
  br i1 %cmp.n148, label %._crit_edge100, label %.lr.ph99.preheader192

.lr.ph99.preheader192:                            ; preds = %vector.memcheck134, %.lr.ph99.preheader, %middle.block147
  %indvars.iv111.ph = phi i64 [ %i.ez, %vector.memcheck134 ], [ %i.ez, %.lr.ph99.preheader ], [ %i.fl, %middle.block147 ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader192, %.lr.ph99
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph99 ], [ %indvars.iv111.ph, %.lr.ph99.preheader192 ] ; 4 uses
  %i.fy = add nuw i64 %indvars.iv111, 4294967295
  %i.fz = and i64 %i.fy, 4294967295               ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !13
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv111
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !13
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fz
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv111
  store double %i.ge, ptr %i.gf, align 8, !tbaa !58
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.gg = trunc nuw i64 %indvars.iv.next112 to i32
  %i.gh = icmp sgt i32 %i.ex, %i.gg
  br i1 %i.gh, label %.lr.ph99, label %._crit_edge100, !llvm.loop !89

._crit_edge100:                                   ; preds = %.lr.ph99, %middle.block147, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.d) #23
  %i.gi = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.gi) #23
  %i.gj = load i32, ptr %i.eu, align 4, !tbaa !13
  %i.gk = icmp eq i32 %i.gj, 2
  %.129 = select i1 %i.gk, i32 %3, i32 %i.es
  call fastcc void @optimize_arity(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, i32 noundef %.129)
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !59
  store ptr %i.gl, ptr %0, align 8, !tbaa !59
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.gm, ptr %1, align 8, !tbaa !60
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.gn = add nsw i32 %3, -1
  tail call fastcc void @optimize_arity(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.gn)
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
end_hunk_0
