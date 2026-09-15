Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ffgtclll:bb.a
bb.s:                                             ; preds = %.thread
  %i.bc = getelementptr i8, ptr %i.z, i64 -80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !64
  store i32 %i.bd, ptr %2, align 4, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.not44 = icmp eq ptr %4, null
  br i1 %.not44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %i.z, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  store i64 %i.bf, ptr %4, align 8, !tbaa !43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr i8, ptr %i.z, i64 -72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.w
  %.sink = phi i64 [ %i.bh, %bb.w ], [ 1, %bb.r ]
  store i64 %.sink, ptr %3, align 8, !tbaa !43
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v, %bb.r
  %i.bi = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

ffghdt.exit.thread:                               ; preds = %ffghdt.exit, %bb.j, %bb.a, %bb.x, %bb.i, %bb.f
  %.0 = phi i32 [ %i.q, %bb.f ], [ 302, %bb.i ], [ %i.c, %bb.a ], [ %i.bi, %bb.x ], [ %i.ax, %ffghdt.exit ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffghdt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  br i1 %i.d, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.l
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.m = add nsw i32 %i.c, 1
  %i.n = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  store i32 %i.v, ptr %1, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1148
  %i.x = load i32, ptr %i.w, align 4, !tbaa !49
  %.not21 = icmp eq i32 %i.x, 0
  %spec.store.select = select i1 %.not21, i32 %i.v, i32 0
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %storemerge = phi i32 [ %spec.store.select, %bb.g ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %1, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %i.y = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.y, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffeqty(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = call i32 @ffeqtyll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) ; 0 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.d, ptr %3, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not9 = icmp eq ptr %4, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.e, ptr %4, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load i32, ptr %5, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffeqtyll(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %ffghdt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = icmp slt i32 %1, 1
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 944
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  %i.v = icmp sgt i32 %1, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 976
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = zext nneg i32 %1 to i64
  %i.z = getelementptr [160 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %i.aa = load i32, ptr %5, align 4, !tbaa !27    ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %ffghdt.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.ac, %i.ai
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.aj = add nsw i32 %i.ac, 1
  %i.ak = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef null, ptr noundef nonnull %5), !inline_history !46 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5), !inline_history !46
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %ffghdt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1148
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49
  %.not21.i = icmp eq i32 %i.au, 0
  %i.av = icmp eq i32 %i.as, 1
  %i.aw = select i1 %.not21.i, i1 %i.av, i1 false
  br label %ffghdt.exit

ffghdt.exit:                                      ; preds = %bb.o, %bb.p
  %.0136 = phi i1 [ undef, %bb.o ], [ %i.aw, %bb.p ]
  %i.ax = load i32, ptr %5, align 4, !tbaa !27    ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %ffghdt.exit.thread, label %bb.q

bb.q:                                             ; preds = %ffghdt.exit
  br i1 %.0136, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.z, i64 -20
  %i.ba = call i32 @ffasfm(ptr noundef %i.az, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5) ; 0 uses
  %.not131 = icmp eq ptr %4, null
  br i1 %.not131, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !54
  store i64 %i.bb, ptr %4, align 8, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not132 = icmp eq ptr %3, null
  br i1 %.not132, label %bb.z, label %.sink.split

.thread:                                          ; preds = %bb.l, %bb.q
  %.not128 = icmp eq ptr %2, null
  br i1 %.not128, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.bc = getelementptr i8, ptr %i.z, i64 -80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !64
  store i32 %i.bd, ptr %2, align 4, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread
  %.not129 = icmp eq ptr %4, null
  br i1 %.not129, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr i8, ptr %i.z, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  store i64 %i.bf, ptr %4, align 8, !tbaa !43
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not130 = icmp eq ptr %3, null
  br i1 %.not130, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = getelementptr i8, ptr %i.z, i64 -72
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !66
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.y
  %.sink = phi i64 [ %i.bh, %bb.y ], [ 1, %bb.t ]
  store i64 %.sink, ptr %3, align 8, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x, %bb.t
  %.not133 = icmp eq ptr %2, null
  br i1 %.not133, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.bj = getelementptr i8, ptr %i.z, i64 -64
  %6 = getelementptr i8, ptr %i.z, i64 -56
  %7 = load double, ptr %6, align 8, !tbaa !67    ; 8 uses
  %8 = load double, ptr %i.bj, align 8, !tbaa !68 ; 6 uses
  %i.bk = fcmp oeq double %8, 1.000000e+00
  %i.bl = fcmp oeq double %7, 0.000000e+00
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bn = load i32, ptr %2, align 4, !tbaa !27    ; 2 uses
  %i.bo = call i32 @llvm.abs.i32(i32 %i.bn, i1 true) ; 3 uses
  %i.bp = add nsw i32 %i.bo, -11                  ; 2 uses
  %i.bq = call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 31) ; 4 uses
  %i.br = icmp ult i32 %i.bq, 36
  %switch.maskindex = zext nneg i32 %i.bq to i64
  %switch.shifted = lshr i64 34359771169, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond162 = select i1 %i.br, i1 %switch.lobit, i1 false
  br i1 %or.cond162, label %switch.lookup, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

switch.lookup:                                    ; preds = %bb.ad
  %i.bt = zext nneg i32 %i.bq to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ffeqtyll, i64 %i.bt
  %switch.load = load double, ptr %switch.gep, align 8
  %i.bu = zext nneg i32 %i.bq to i64
  %switch.gep160 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ffeqtyll.1, i64 %i.bu
  %switch.load161 = load double, ptr %switch.gep160, align 8
  %i.bv = fcmp ult double %8, 0.000000e+00        ; 2 uses
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %i.bw = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x double> poison, double %switch.load, i64 0
  %i.bx = insertelement <2 x double> %10, double %switch.load161, i64 1
  %i.by = insertelement <2 x double> poison, double %7, i64 0
  %11 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %11) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 3 uses
  %i.cb = call double @llvm.fmuladd.f64(double %8, double %i.ca, double %7)
  %.1112 = select i1 %i.bv, double %i.cb, double %i.ca ; 5 uses
  %i.cc = extractelement <2 x double> %i.bz, i64 1
  %.1 = select i1 %i.bv, double %i.ca, double %i.cc ; 7 uses
  %i.cd = fcmp une double %7, f0x41E0000000000000
  %i.ce = fcmp une double %7, f0x43E0000000000000
  %or.cond3 = and i1 %i.cd, %i.ce
  br i1 %or.cond3, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %switch.lookup
  %i.cf = fptosi double %8 to i64
  %i.cg = fcmp olt double %7, f0x41E0000000000000
  %i.ch = fptosi double %7 to i64
  %i.ci = sitofp i64 %i.ch to double
  %.0 = select i1 %i.cg, double %i.ci, double 0.000000e+00
  %i.cj = fcmp une double %.0, %7
  %i.ck = sitofp i64 %i.cf to double
  %i.cl = fcmp une double %8, %i.ck
  %or.cond135 = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond135, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %switch.selectcmp.case1 = icmp eq i32 %i.bo, 21
  %switch.selectcmp.case2 = icmp eq i32 %i.bo, 11
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.cm = select i1 %switch.selectcmp, i32 42, i32 82
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %switch.lookup
  %i.cn = fcmp oeq double %.1112, -1.280000e+02
  %i.co = fcmp oeq double %.1, 1.270000e+02
  %or.cond7 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond7, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = fcmp oge double %.1112, -3.276800e+04
  %i.cq = fcmp ole double %.1, 3.276700e+04
  %or.cond9 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond9, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = fcmp oge double %.1112, 0.000000e+00    ; 3 uses
  %i.cs = fcmp ole double %.1, 6.553500e+04
  %or.cond11 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond11, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = fcmp oge double %.1112, f0xC1E0000000000000
  %i.cu = fcmp ole double %.1, f0x41DFFFFFFFC00000
  %or.cond13 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond13, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = fcmp olt double %.1, f0x41F0000000000000
  %or.cond15 = select i1 %i.cr, i1 %i.cv, i1 false
  br i1 %or.cond15, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = fcmp oge double %.1112, f0xC3E0000000000000
  %i.cx = fcmp ole double %.1, f0x43E0000000000000
  %or.cond17 = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = fcmp ole double %.1, f0x43F0000000000000
  %or.cond19 = select i1 %i.cr, i1 %i.cy, i1 false
  %. = select i1 %or.cond19, i32 80, i32 82
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0113 = phi i32 [ 81, %bb.am ], [ %i.cm, %bb.ag ], [ %., %bb.an ], [ 12, %bb.ah ], [ 21, %bb.ai ], [ 20, %bb.aj ], [ 41, %bb.ak ], [ 40, %bb.al ] ; 2 uses
  %i.cz = icmp slt i32 %i.bn, 0
  %i.da = sub nsw i32 0, %.0113
  %storemerge = select i1 %i.cz, i32 %i.da, i32 %.0113
  store i32 %storemerge, ptr %2, align 4, !tbaa !27
  %i.db = load i32, ptr %5, align 4, !tbaa !27
  br label %ffghdt.exit.thread

ffghdt.exit.thread:                               ; preds = %ffghdt.exit, %bb.j, %bb.a, %bb.ao, %bb.ae, %bb.ac, %bb.aa, %bb.i, %bb.f
  %.0114 = phi i32 [ %i.q, %bb.f ], [ 302, %bb.i ], [ %i.c, %bb.a ], [ %i.bm, %bb.ac ], [ %i.bs, %bb.ae ], [ %i.db, %bb.ao ], [ %i.bi, %bb.aa ], [ %i.ax, %ffghdt.exit ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgncl(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 944
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  store i32 %i.u, ptr %1, align 4, !tbaa !27
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgnrw(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  store i64 %i.u, ptr %1, align 8, !tbaa !54
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgnrwll(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 235, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  store i64 %i.u, ptr %1, align 8, !tbaa !43
  %i.v = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 235, %bb.h ], [ %i.v, %bb.i ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgacl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [75 x i8], align 16               ; 6 uses
  %i.b = alloca [73 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %i.l = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %10) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %10)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = icmp slt i32 %1, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = icmp sgt i32 %1, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = zext nneg i32 %1 to i64
  %i.aa = getelementptr [160 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 -160
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.aa, i64 -88
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %3, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not62 = icmp eq ptr %5, null
  br i1 %.not62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %i.aa, i64 -20
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %i.ag) #28 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not63 = icmp eq ptr %6, null
  br i1 %.not63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %i.aa, i64 -64
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !68
  store double %i.aj, ptr %6, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not64 = icmp eq ptr %7, null
  br i1 %.not64, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr i8, ptr %i.aa, i64 -56
  %i.al = load double, ptr %i.ak, align 8, !tbaa !67
  store double %i.al, ptr %7, align 8, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not65 = icmp eq ptr %8, null
  br i1 %.not65, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr i8, ptr %i.aa, i64 -40
  %i.an = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.am) #28 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not66 = icmp eq ptr %4, null
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = call i32 @ffkeyn(ptr noundef nonnull @.str.335, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %4, align 1, !tbaa !29
  %i.ap = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not67 = icmp eq ptr %9, null
  br i1 %.not67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = call i32 @ffkeyn(ptr noundef nonnull @.str.336, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %9, align 1, !tbaa !29
  %i.ar = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.as = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z, %bb.i, %bb.f
  %.0 = phi i32 [ %i.r, %bb.f ], [ 302, %bb.i ], [ %i.as, %bb.z ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

declare i32 @ffgkys(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgbcl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @ffgbclll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %10) ; 0 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.f, ptr %5, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not19 = icmp eq ptr %8, null
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.g, ptr %8, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.h, %bb.f ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgbclll(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [75 x i8], align 16               ; 6 uses
  %i.b = alloca [73 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %10, align 4, !tbaa !27    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %i.l = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %10) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %10)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = icmp slt i32 %1, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = icmp sgt i32 %1, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 302, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = zext nneg i32 %1 to i64
  %i.aa = getelementptr [160 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %.not84 = icmp eq ptr %2, null
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 -160
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not85 = icmp eq ptr %4, null
  br i1 %.not85, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.aa, i64 -80    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !64
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 80, ptr %4, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %4, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !64
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  switch i32 %i.ah, label %bb.aa [
    i32 1, label %.sink.split
    i32 11, label %bb.q
    i32 14, label %bb.r
    i32 16, label %bb.s
    i32 21, label %bb.t
    i32 41, label %bb.u
    i32 81, label %bb.v
    i32 42, label %bb.w
    i32 82, label %bb.x
    i32 83, label %bb.y
    i32 163, label %bb.z
  ]

bb.q:                                             ; preds = %bb.p
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  br label %.sink.split

bb.s:                                             ; preds = %bb.p
  br label %.sink.split

bb.t:                                             ; preds = %bb.p
  br label %.sink.split

bb.u:                                             ; preds = %bb.p
  br label %.sink.split

bb.v:                                             ; preds = %bb.p
  br label %.sink.split

bb.w:                                             ; preds = %bb.p
  br label %.sink.split

bb.x:                                             ; preds = %bb.p
  br label %.sink.split

bb.y:                                             ; preds = %bb.p
  br label %.sink.split

bb.z:                                             ; preds = %bb.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r
  %.sink = phi i16 [ 66, %bb.q ], [ 76, %bb.r ], [ 73, %bb.t ], [ 75, %bb.v ], [ 68, %bb.x ], [ 77, %bb.z ], [ 67, %bb.y ], [ 69, %bb.w ], [ 74, %bb.u ], [ 65, %bb.s ], [ 88, %bb.p ]
  %strlen104 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %4)
  %endptr105 = getelementptr inbounds i8, ptr %4, i64 %strlen104
  store i16 %.sink, ptr %endptr105, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.p, %bb.l
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = getelementptr i8, ptr %i.aa, i64 -72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !66
  store i64 %i.aj, ptr %5, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not107 = icmp eq ptr %6, null
  br i1 %.not107, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = getelementptr i8, ptr %i.aa, i64 -64
  %i.al = load double, ptr %i.ak, align 8, !tbaa !68
  store double %i.al, ptr %6, align 8, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not108 = icmp eq ptr %7, null
  br i1 %.not108, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.am = getelementptr i8, ptr %i.aa, i64 -56
  %i.an = load double, ptr %i.am, align 8, !tbaa !67
  store double %i.an, ptr %7, align 8, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not109 = icmp eq ptr %8, null
  br i1 %.not109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ao = getelementptr i8, ptr %i.aa, i64 -48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !70
  store i64 %i.ap, ptr %8, align 8, !tbaa !43
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not110 = icmp eq ptr %3, null
  br i1 %.not110, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aq = call i32 @ffkeyn(ptr noundef nonnull @.str.335, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %3, align 1, !tbaa !29
  %i.ar = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not111 = icmp eq ptr %9, null
  br i1 %.not111, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.as = call i32 @ffkeyn(ptr noundef nonnull @.str.336, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %10) ; 0 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  store i8 0, ptr %9, align 1, !tbaa !29
  %i.at = call i32 @ffgkys(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.au = load i32, ptr %10, align 4, !tbaa !27
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %bb.am, %bb.i, %bb.f
  %.0 = phi i32 [ %i.r, %bb.f ], [ 302, %bb.i ], [ %i.au, %bb.am ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @ffghdn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !34
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.b, ptr %1, align 4, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffghadll(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %4)
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  store i64 %i.w, ptr %1, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  store i64 %i.z, ptr %2, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43
  store i64 %i.ai, ptr %3, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %bb.e, %bb.c
  %i.aj = load i32, ptr %4, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.aj, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffghof(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull %4)
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  store i64 %i.w, ptr %1, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  store i64 %i.z, ptr %2, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@ffpinit:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %._crit_edge180.loopexit, label %.lr.ph179, !llvm.loop !150

._crit_edge180.loopexit:                          ; preds = %bb.q
  %.pre195 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %bb.m
  %i.ef = phi ptr [ %.pre195, %._crit_edge180.loopexit ], [ %i.bj, %bb.m ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1368
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  call void @free(ptr noundef %i.eh) #28
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1344
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  call void @free(ptr noundef %i.ek) #28
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1336
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !81
  call void @free(ptr noundef %i.en) #28
  %i.eo = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1360
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !78
  call void @free(ptr noundef %i.eq) #28
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1352
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !76
  call void @free(ptr noundef %i.et) #28
  %i.eu = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1328
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !75
  call void @free(ptr noundef %i.ew) #28
  %i.ex = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, i8 0, i64 48, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge180, %bb.l
  %i.ez = phi ptr [ %i.ex, %._crit_edge180 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !59 ; 2 uses
  %.not169 = icmp eq ptr %i.fb, null
  br i1 %.not169, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.fb) #28
  %.pre196 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fc = phi ptr [ %.pre196, %bb.s ], [ %i.ez, %bb.r ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 976
  store ptr null, ptr %i.fd, align 8, !tbaa !59
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  br label %bb.af

bb.u:                                             ; preds = %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bj, i64 960
  store i64 %i.cs, ptr %i.ff, align 8, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bj, i64 952
  store i64 %i.cs, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 968
  store i64 %i.cr, ptr %i.fh, align 8, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bj, i64 944
  store i32 2, ptr %i.fi, align 8, !tbaa !58
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bj, i64 1328
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !75
  %.not163 = icmp eq ptr %i.fk, null
  br i1 %.not163, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1176
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !54
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1088
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !54
  %i.fq = sdiv i64 %i.fn, %i.fp                   ; 2 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp ult i32 %i.fr, 2147483647
  br i1 %i.fs, label %.lr.ph176.preheader, label %._crit_edge

.lr.ph176.preheader:                              ; preds = %bb.v
  %i.ft = add nuw nsw i64 %i.fq, 1
  %wide.trip.count185 = and i64 %i.ft, 4294967295
  br label %.lr.ph176

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.z
  %indvars.iv182 = phi i64 [ 0, %.lr.ph176.preheader ], [ %indvars.iv.next183, %bb.z ] ; 3 uses
  %i.fu = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1352
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv182
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !77 ; 2 uses
  %.not166 = icmp eq ptr %i.fy, null
  br i1 %.not166, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph176
  call void @free(ptr noundef nonnull %i.fy) #28
  %.pre192 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph176
  %i.fz = phi ptr [ %.pre192, %bb.w ], [ %i.fu, %.lr.ph176 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1360
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !78
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv182
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !77 ; 2 uses
  %.not167 = icmp eq ptr %i.gd, null
  br i1 %.not167, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.gd) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge.loopexit, label %.lr.ph176, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre193 = load ptr, ptr %i.r, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.ge = phi ptr [ %.pre193, %._crit_edge.loopexit ], [ %i.bj, %bb.v ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1368
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !79
  call void @free(ptr noundef %i.gg) #28
  %i.gh = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1344
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !80
  call void @free(ptr noundef %i.gj) #28
  %i.gk = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1336
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !81
  call void @free(ptr noundef %i.gm) #28
  %i.gn = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1360
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !78
  call void @free(ptr noundef %i.gp) #28
  %i.gq = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1352
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76
  call void @free(ptr noundef %i.gs) #28
  %i.gt = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1328
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !75
  call void @free(ptr noundef %i.gv) #28
  %i.gw = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, i8 0, i64 48, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.u
  %i.gy = phi ptr [ %i.gw, %._crit_edge ], [ %i.bj, %bb.u ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 976
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !59 ; 2 uses
  %.not164 = icmp eq ptr %i.ha, null
  br i1 %.not164, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.ha) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hb = call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 2, i64 noundef 160) #32 ; 14 uses
  %.not165 = icmp eq ptr %i.hb, null
  br i1 %.not165, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.359)
  %i.hc = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 976
  store ptr null, ptr %i.hd, align 8, !tbaa !59
  store i32 111, ptr %1, align 4, !tbaa !27
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.he = load ptr, ptr %i.r, align 8, !tbaa !17  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 976
  store ptr %i.hb, ptr %i.hf, align 8, !tbaa !59
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  store i32 %.0146, ptr %i.hg, align 8, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 152
  store i64 %.0145, ptr %i.hh, align 8, !tbaa !65
  %i.hi = load i64, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !66
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store double 1.000000e+00, ptr %i.hk, align 8, !tbaa !68
  %i.hl = load i64, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !70
  %i.hn = mul nsw i64 %i.hi, %.0145
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 232
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !69
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  store i32 %.0146, ptr %i.hp, align 8, !tbaa !64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 312
  store i64 %.0145, ptr %i.hq, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 248
  store i64 %.2, ptr %i.hr, align 8, !tbaa !66
  %i.hs = load double, ptr %i.l, align 8, !tbaa !57
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 256
  store double %i.hs, ptr %i.ht, align 8, !tbaa !68
  %i.hu = load double, ptr %i.m, align 8, !tbaa !57
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 264
  store double %i.hu, ptr %i.hv, align 8, !tbaa !67
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 272
  store i64 %i.hl, ptr %i.hw, align 8, !tbaa !70
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.t
  %i.hx = phi ptr [ %i.he, %bb.ae ], [ %i.fc, %bb.t ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 104
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 84
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !35
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ic
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !39
  %i.ig = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %bb.a, %bb.af, %bb.ad
  %.0147 = phi i32 [ %i.o, %bb.a ], [ %i.ig, %bb.af ], [ 111, %bb.ad ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0147
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffc2s(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  switch i8 %i.c, label %bb.d [
    i8 39, label %bb.e
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !29
  store i32 204, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #28 ; 0 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.043 = phi i64 [ %i.p, %bb.g ], [ 1, %bb.e ]   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.043
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.043, 1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = icmp eq i8 %i.m, 39
  br i1 %i.n, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.1 = phi i64 [ %.043, %.lr.ph ], [ %i.k, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.i, ptr %i.o, align 1, !tbaa !29
  %i.p = add i64 %.1, 1                           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.f
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.037.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.g ], [ %indvars.iv, %bb.f ] ; 2 uses
  %.0.lcssa.ph = phi i64 [ %i.p, %bb.g ], [ %.043, %bb.f ]
  %i.r = and i64 %.037.lcssa.ph.in, 4294967295    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !29
  %i.t = icmp eq i64 %.0.lcssa.ph, %i.f
  br i1 %i.t, label %bb.h, label %.preheader

._crit_edge.thread:                               ; preds = %bb.e
  store i8 0, ptr %1, align 1, !tbaa !29
  %i.u = icmp eq i64 %i.f, 1
  br i1 %i.u, label %bb.h, label %._crit_edge51

.preheader:                                       ; preds = %._crit_edge
  %.037.lcssa.ph = trunc i64 %.037.lcssa.ph.in to i32
  %i.v = icmp sgt i32 %.037.lcssa.ph, 0
  br i1 %i.v, label %.lr.ph50, label %._crit_edge51

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.554)
  tail call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %0)
  store i32 205, ptr %2, align 4, !tbaa !27
  br label %bb.j

.lr.ph50:                                         ; preds = %.preheader, %bb.i
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.i ], [ %i.r, %.preheader ] ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next55 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.i, label %._crit_edge51

bb.i:                                             ; preds = %.lr.ph50
  store i8 0, ptr %i.w, align 1, !tbaa !29
  %i.z = icmp samesign ugt i64 %indvars.iv54, 1
  br i1 %i.z, label %.lr.ph50, label %._crit_edge51, !llvm.loop !153

._crit_edge51:                                    ; preds = %bb.i, %.lr.ph50, %._crit_edge.thread, %.preheader
  %i.aa = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge51, %bb.h, %bb.d, %bb.c
  %.039 = phi i32 [ %i.aa, %._crit_edge51 ], [ 204, %bb.c ], [ %i.e, %bb.d ], [ 205, %bb.h ], [ %i.a, %bb.a ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffainit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [75 x i8], align 16               ; 13 uses
  %i.f = alloca [71 x i8], align 16               ; 7 uses
  %i.g = alloca [73 x i8], align 16               ; 4 uses
  %i.h = alloca [81 x i8], align 16               ; 12 uses
  %i.i = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.j = load i32, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.l, 1
  %i.r = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull %1) ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i32 1, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = call i32 @ffgttb(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !43
  %.not143 = icmp eq i64 %i.aa, 0
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.360)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !43
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 81, ptr noundef nonnull @.str.361, i64 noundef %i.ab) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.i)
  store i32 214, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !43
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !17  ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 968
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !74
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 944
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1328
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %.not144 = icmp eq ptr %i.ak, null
  br i1 %.not144, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 1176
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = add nsw i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 1088
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !54
  %i.aq = sdiv i64 %i.an, %i.ap                   ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp ult i32 %i.ar, 2147483647
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.at = add nuw nsw i64 %i.aq, 1
  %wide.trip.count = and i64 %i.at, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1352
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77 ; 2 uses
  %.not155 = icmp eq ptr %i.ay, null
  br i1 %.not155, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @free(ptr noundef nonnull %i.ay) #28
  %.pre215 = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.az = phi ptr [ %.pre215, %bb.j ], [ %i.au, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1360
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77 ; 2 uses
  %.not156 = icmp eq ptr %i.bd, null
  br i1 %.not156, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.bd) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !154

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre216 = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.be = phi ptr [ %.pre216, %._crit_edge.loopexit ], [ %i.ae, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1368
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79
  call void @free(ptr noundef %i.bg) #28
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1344
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !80
  call void @free(ptr noundef %i.bj) #28
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1336
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !81
  call void @free(ptr noundef %i.bm) #28
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1360
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !78
  call void @free(ptr noundef %i.bp) #28
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1352
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76
  call void @free(ptr noundef %i.bs) #28
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1328
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !75
  call void @free(ptr noundef %i.bv) #28
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i8 0, i64 48, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.h
  %i.by = phi ptr [ %i.bw, %._crit_edge ], [ %i.ae, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 976
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 2 uses
  %.not145 = icmp eq ptr %i.ca, null
  br i1 %.not145, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.ca) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !54  ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = call noalias ptr @calloc(i64 noundef %i.cb, i64 noundef 160) #32 ; 4 uses
  %.not146 = icmp eq ptr %i.cd, null
  br i1 %.not146, label %bb.r, label %.lr.ph182.preheader

bb.r:                                             ; preds = %bb.q
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.362)
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 976
  store ptr null, ptr %i.cf, align 8, !tbaa !59
  store i32 111, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 976
  store ptr null, ptr %i.ch, align 8, !tbaa !59
  br label %._crit_edge183

.lr.ph182.preheader:                              ; preds = %bb.q
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !17  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 976
  store ptr %i.cd, ptr %i.cj, align 8, !tbaa !59
  %xtraiter = and i64 %i.cb, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cb, 4
  br i1 %i.ck, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter = and i64 %i.cb, 9223372036854775804
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182, %.lr.ph182.preheader.new
  %.1180 = phi ptr [ %i.cd, %.lr.ph182.preheader.new ], [ %i.de, %.lr.ph182 ] ; 21 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %niter.next.3, %.lr.ph182 ]
  store i8 0, ptr %.1180, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %.1180, i64 96
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cl, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %.1180, i64 120
  store i8 1, ptr %i.cm, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %.1180, i64 72
  store i64 -1, ptr %i.cn, align 8, !tbaa !69
  %i.co = getelementptr inbounds nuw i8, ptr %.1180, i64 80
  store i32 -9999, ptr %i.co, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %.1180, i64 160
  store i8 0, ptr %i.cp, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %.1180, i64 256
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cq, align 8, !tbaa !57
  %i.cr = getelementptr inbounds nuw i8, ptr %.1180, i64 280
  store i8 1, ptr %i.cr, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %.1180, i64 232
  store i64 -1, ptr %i.cs, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %.1180, i64 240
  store i32 -9999, ptr %i.ct, align 8, !tbaa !64
  %i.cu = getelementptr inbounds nuw i8, ptr %.1180, i64 320
  store i8 0, ptr %i.cu, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %.1180, i64 416
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.cv, align 8, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %.1180, i64 440
  store i8 1, ptr %i.cw, align 8, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %.1180, i64 392
  store i64 -1, ptr %i.cx, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %.1180, i64 400
  store i32 -9999, ptr %i.cy, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %.1180, i64 480
  store i8 0, ptr %i.cz, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %.1180, i64 576
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.da, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %.1180, i64 600
  store i8 1, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %.1180, i64 552
  store i64 -1, ptr %i.dc, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %.1180, i64 560
  store i32 -9999, ptr %i.dd, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %.1180, i64 640 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge183.loopexit.unr-lcssa, label %.lr.ph182, !llvm.loop !155

._crit_edge183.loopexit.unr-lcssa:                ; preds = %.lr.ph182
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge183, label %.lr.ph182.epil.preheader

.lr.ph182.epil.preheader:                         ; preds = %._crit_edge183.loopexit.unr-lcssa, %.lr.ph182.preheader
  %.1180.epil.init = phi ptr [ %i.cd, %.lr.ph182.preheader ], [ %i.de, %._crit_edge183.loopexit.unr-lcssa ]
  %lcmp.mod284 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod284)
  br label %.lr.ph182.epil

.lr.ph182.epil:                                   ; preds = %.lr.ph182.epil, %.lr.ph182.epil.preheader
  %.1180.epil = phi ptr [ %.1180.epil.init, %.lr.ph182.epil.preheader ], [ %i.dj, %.lr.ph182.epil ] ; 6 uses
  %epil.iter = phi i64 [ 0, %.lr.ph182.epil.preheader ], [ %epil.iter.next, %.lr.ph182.epil ]
  store i8 0, ptr %.1180.epil, align 8, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %.1180.epil, i64 96
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.df, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %.1180.epil, i64 120
  store i8 1, ptr %i.dg, align 8, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %.1180.epil, i64 72
  store i64 -1, ptr %i.dh, align 8, !tbaa !69
  %i.di = getelementptr inbounds nuw i8, ptr %.1180.epil, i64 80
  store i32 -9999, ptr %i.di, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %.1180.epil, i64 160
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge183, label %.lr.ph182.epil, !llvm.loop !156

._crit_edge183:                                   ; preds = %._crit_edge183.loopexit.unr-lcssa, %.lr.ph182.epil, %bb.s
  %i.dk = phi ptr [ %i.cg, %bb.s ], [ %i.ci, %.lr.ph182.epil ], [ %i.ci, %._crit_edge183.loopexit.unr-lcssa ] ; 5 uses
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !43  ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 960
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !60
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 952
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !61
  %i.do = load i64, ptr %i.c, align 8, !tbaa !43
  %i.dp = mul nsw i64 %i.do, %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 984
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !73
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 992
  store i64 0, ptr %i.dr, align 8, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 1148
  store i32 0, ptr %i.ds, align 4, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %._crit_edge183
  %.2128 = phi i32 [ 8, %._crit_edge183 ], [ %i.ei, %bb.z ] ; 2 uses
  %.0124 = phi i32 [ 0, %._crit_edge183 ], [ %.1125, %bb.z ] ; 2 uses
  %i.dt = call i32 @ffgkyn(ptr noundef nonnull %0, i32 noundef %.2128, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %1) #28 ; 0 uses
  %i.du = load i32, ptr %1, align 4, !tbaa !27    ; 4 uses
  switch i32 %i.du, label %bb.w [
    i32 205, label %bb.u
    i32 207, label %.thread160.sink.split
    i32 107, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.f)
  %endptr = getelementptr inbounds i8, ptr %i.f, i64 %strlen
  store i16 39, ptr %endptr, align 1
  br label %.thread160.sink.split

bb.v:                                             ; preds = %bb.t
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.363)
  store i32 210, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.w:                                             ; preds = %bb.t
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.loopexit, label %.thread160

.thread160.sink.split:                            ; preds = %bb.t, %bb.u
  store i32 0, ptr %1, align 4, !tbaa !27
  br label %.thread160

.thread160:                                       ; preds = %.thread160.sink.split, %bb.w
  %i.dw = phi i32 [ %i.du, %bb.w ], [ 0, %.thread160.sink.split ]
  %i.dx = load i8, ptr %i.e, align 16, !tbaa !29  ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 84
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread160
  %i.dz = call i32 @ffgtbp(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %1) ; 0 uses
  %.pre217 = load i8, ptr %i.e, align 16, !tbaa !29
  br label %bb.z

bb.y:                                             ; preds = %.thread160
  %.not147 = icmp eq i8 %i.dx, 69
  %lhsv = load i32, ptr %i.e, align 16            ; 2 uses
  %.not149 = icmp eq i32 %lhsv, 4476485
  %or.cond158 = select i1 %.not147, i1 %.not149, i1 false
  %i.ea = trunc i32 %lhsv to i8
  br i1 %or.cond158, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eb = phi i8 [ %i.ea, %bb.y ], [ %.pre217, %bb.x ]
  %i.ec = icmp ne i8 %i.eb, 0
  %i.ed = load i8, ptr %i.f, align 16
  %i.ee = icmp ne i8 %i.ed, 0
  %or.cond = select i1 %i.ec, i1 true, i1 %i.ee
  %i.ef = load i8, ptr %i.g, align 16
  %i.eg = icmp ne i8 %i.ef, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.eg
  %i.eh = add nsw i32 %.0124, 1
  %.1125 = select i1 %or.cond5, i32 0, i32 %i.eh
  %i.ei = add nuw nsw i32 %.2128, 1
  br label %bb.t

bb.aa:                                            ; preds = %bb.y
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !17  ; 7 uses
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 976
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !59
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 968
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph187, %.thread161
  %indvars.iv211 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next212, %.thread161 ] ; 5 uses
  %.2185 = phi ptr [ %i.en, %.lr.ph187 ], [ %i.fv, %.thread161 ] ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.2185, i64 72
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !69 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.2185, i64 80
  %i.es = load i32, ptr %i.er, align 8, !tbaa !64
  %i.et = icmp eq i32 %i.es, -9999
  br i1 %i.et, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.ev = add nuw nsw i32 %i.eu, 1
  %i.ew = call i32 @ffkeyn(ptr noundef nonnull @.str.364, i32 noundef %i.ev, ptr noundef nonnull %i.e, ptr noundef nonnull %1) ; 0 uses
  %i.ex = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 81, ptr noundef nonnull @.str.365, ptr noundef nonnull %i.e) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 232, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.ey = icmp eq i64 %i.eq, -1
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ez = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.fa = add nuw nsw i32 %i.ez, 1
  %i.fb = call i32 @ffkeyn(ptr noundef nonnull @.str.366, i32 noundef %i.fa, ptr noundef nonnull %i.e, ptr noundef nonnull %1) ; 0 uses
  %i.fc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 81, ptr noundef nonnull @.str.365, ptr noundef nonnull %i.e) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 231, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.fd = load i64, ptr %i.eo, align 8, !tbaa !74 ; 3 uses
  %.not152 = icmp eq i64 %i.fd, 0
  br i1 %.not152, label %.thread161, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = icmp sgt i64 %i.eq, -1
  %.not153 = icmp slt i64 %i.eq, %i.fd
  %or.cond159 = and i1 %i.fe, %.not153
  br i1 %or.cond159, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.fg = add nuw nsw i32 %i.ff, 1
  %i.fh = call i32 @ffkeyn(ptr noundef nonnull @.str.366, i32 noundef %i.fg, ptr noundef nonnull %i.e, ptr noundef nonnull %1) ; 0 uses
  %i.fi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 81, ptr noundef nonnull @.str.367, ptr noundef nonnull %i.e, i64 noundef %i.eq) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 234, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %.2185, i64 152
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !65
  %i.fl = add nsw i64 %i.fk, %i.eq
  %i.fm = icmp sgt i64 %i.fl, %i.fd
  br i1 %i.fm, label %bb.aj, label %.thread161

bb.aj:                                            ; preds = %bb.ai
  %i.fn = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.fo = add nuw nsw i32 %i.fn, 1
  %i.fp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 81, ptr noundef nonnull @.str.368, i32 noundef %i.fo) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  %i.fq = getelementptr inbounds nuw i8, ptr %.2185, i64 140
  %i.fr = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 968
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !74
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 81, ptr noundef nonnull @.str.369, ptr noundef nonnull %i.fq, i64 noundef %i.ft) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 236, ptr %1, align 4, !tbaa !27
  br label %.loopexit

.thread161:                                       ; preds = %bb.af, %bb.ai
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.2185, i64 160
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, %i.ek
  br i1 %exitcond214.not, label %._crit_edge188, label %bb.ab, !llvm.loop !157

._crit_edge188:                                   ; preds = %.thread161, %bb.aa
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ej, i64 128 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !39
  %.fr150 = freeze i64 %i.fx                      ; 2 uses
  %i.fy = mul i32 %.0124, 80
  %i.fz = add i32 %i.fy, 80
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sub nsw i64 %.fr150, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !45
  %i.gd = add i64 %.fr150, -80                    ; 2 uses
  %i.ge = srem i64 %i.gd, 2880
  %i.gf = sub nsw i64 %i.gd, %i.ge
  %i.gg = add i64 %i.gf, 2880                     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !47
  %i.gi = load i64, ptr %i.c, align 8, !tbaa !43
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !43
  %i.gk = mul nsw i64 %i.gj, %i.gi
  %.fr151 = freeze i64 %i.gk
  %i.gl = add i64 %.fr151, 2879                   ; 2 uses
  %i.gm = srem i64 %i.gl, 2880
  %i.gn = add i64 %i.gl, %i.gg
  %i.go = sub i64 %i.gn, %i.gm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !41
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ej, i64 84
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !35
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %i.gq, i64 %i.gt ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  store i64 %i.go, ptr %i.gv, align 8, !tbaa !43
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !43
  store i64 %i.gw, ptr %i.fw, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.a, %._crit_edge188, %bb.aj, %bb.ah, %bb.ae, %bb.ac, %bb.v, %bb.r, %bb.g, %bb.e
  %.0129 = phi i32 [ 111, %bb.r ], [ %i.z, %bb.e ], [ 214, %bb.g ], [ 210, %bb.v ], [ %i.j, %bb.a ], [ 232, %bb.ac ], [ 231, %bb.ae ], [ 234, %bb.ah ], [ 236, %bb.aj ], [ %i.dw, %._crit_edge188 ], [ %i.du, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffbinit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca [75 x i8], align 16               ; 11 uses
  %i.g = alloca [71 x i8], align 16               ; 8 uses
  %i.h = alloca [73 x i8], align 16               ; 4 uses
  %i.i = alloca [81 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  %i.j = load i32, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.l, 1
  %i.r = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef null, ptr noundef nonnull %1) ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %.pre, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i32 2, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = call i32 @ffgttb(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 4, !tbaa !27
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !43
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !17  ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 968
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !74
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 944
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1328
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %.not131 = icmp eq ptr %i.ah, null
  br i1 %.not131, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1176
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 1088
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
end_hunk_1
begin_hunk_2_@ffgtbp:bb.a
  %i.be = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) %i.v) #28 ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %bb.d
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.377, i64 noundef 4) #29
  %.not166 = icmp eq i32 %i.bf, 0
  br i1 %.not166, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.bh = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !27
  %i.bi = call i64 @strtol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.i, i32 noundef 10) #28 ; 3 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bm = icmp eq i32 %i.bl, 34                   ; 2 uses
  switch i8 %i.bk, label %.thread252 [
    i8 0, label %bb.n
    i8 32, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br i1 %i.bm, label %ffc2ii.exit194.thread, label %bb.o

.thread252:                                       ; preds = %bb.m
  br i1 %i.bm, label %ffc2ii.exit194.thread, label %ffc2ii.exit194.thread253

ffc2ii.exit194.thread:                            ; preds = %.thread252, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.j, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.bn = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.bg, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.j)
  store i32 0, ptr %i.bh, align 4, !tbaa !27
  br label %ffc2ii.exit194.thread253

ffc2ii.exit194.thread253:                         ; preds = %.thread252, %ffc2ii.exit194.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  br label %.sink.split

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %i.bo = icmp slt i64 %i.bi, 1
  br i1 %i.bo, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 944
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !58
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp sgt i64 %i.bi, %i.bs
  br i1 %i.bt, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 976
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw [160 x i8], ptr %i.bv, i64 %i.bi ; 9 uses
  %i.bx = call i32 @ffc2s(ptr noundef %2, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m)
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -20
  %i.ca = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 9) #28 ; 0 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 -11
  store i8 0, ptr %i.cb, align 1, !tbaa !29
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !48
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cg = call i32 @ffasfm(ptr noundef nonnull %i.v, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %3)
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds i8, ptr %i.bw, i64 -80
  store i32 16, ptr %i.ci, align 8, !tbaa !64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 -72
  store i64 1, ptr %i.cj, align 8, !tbaa !66
  %i.ck = load i64, ptr %i.p, align 8, !tbaa !54
  %i.cl = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !65
  br label %.sink.split

bb.u:                                             ; preds = %bb.r
  %i.cm = call i32 @ffbnfm(ptr noundef nonnull %i.v, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.p, ptr noundef nonnull %3)
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i32, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.bw, i64 -80
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !64
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.bw, i64 -72
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !66
  %i.cs = icmp eq i32 %i.co, 16
  br i1 %i.cs, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !65 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = icmp sgt i64 %i.cu, %i.cq
  %or.cond185 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond185, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.cx = load i64, ptr %i.p, align 8, !tbaa !54
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !65
  br label %.sink.split

bb.y:                                             ; preds = %bb.v
  %i.cy = load i64, ptr %i.p, align 8, !tbaa !54
  %i.cz = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !65
  br label %.sink.split

bb.z:                                             ; preds = %bb.d
  %i.da = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.378, i64 noundef 4) #29
  %.not168 = icmp eq i32 %i.da, 0
  br i1 %.not168, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.dc = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.dc, align 4, !tbaa !27
  %i.dd = call i64 @strtol(ptr noundef nonnull %i.db, ptr noundef nonnull %i.g, i32 noundef 10) #28 ; 3 uses
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
  %i.dg = load i32, ptr %i.dc, align 4, !tbaa !27
  %i.dh = icmp eq i32 %i.dg, 34                   ; 2 uses
  switch i8 %i.df, label %.thread254 [
    i8 0, label %bb.ab
    i8 32, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br i1 %i.dh, label %ffc2ii.exit196.thread, label %bb.ac

.thread254:                                       ; preds = %bb.aa
  br i1 %i.dh, label %ffc2ii.exit196.thread, label %ffc2ii.exit196.thread255

ffc2ii.exit196.thread:                            ; preds = %.thread254, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.h, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.di = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.db, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.h)
  store i32 0, ptr %i.dc, align 4, !tbaa !27
  br label %ffc2ii.exit196.thread255

ffc2ii.exit196.thread255:                         ; preds = %.thread254, %ffc2ii.exit196.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %.sink.split

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.dj = icmp slt i64 %i.dd, 1
  br i1 %i.dj, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 944
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !58
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp sgt i64 %i.dd, %i.dn
  br i1 %i.do, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 976
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw [160 x i8], ptr %i.dq, i64 %i.dd
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !48
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = call i32 @ffc2ii(ptr noundef %2, ptr noundef nonnull %i.s, ptr noundef nonnull %3)
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.dy = load i64, ptr %i.s, align 8, !tbaa !54
  %i.dz = add nsw i64 %i.dy, -1
  %i.ea = getelementptr inbounds i8, ptr %i.dr, i64 -88
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !69
  br label %.sink.split

bb.ai:                                            ; preds = %bb.d
  %i.eb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.380, i64 noundef 4) #29
  %.not170 = icmp eq i32 %i.eb, 0
  br i1 %.not170, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ed = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.ed, align 4, !tbaa !27
  %i.ee = call i64 @strtol(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.e, i32 noundef 10) #28 ; 3 uses
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.ei = icmp eq i32 %i.eh, 34                   ; 2 uses
  switch i8 %i.eg, label %.thread256 [
    i8 0, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  br i1 %i.ei, label %ffc2ii.exit198.thread, label %bb.al

.thread256:                                       ; preds = %bb.aj
  br i1 %i.ei, label %ffc2ii.exit198.thread, label %ffc2ii.exit198.thread257

ffc2ii.exit198.thread:                            ; preds = %.thread256, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.f, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.ej = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.ec, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.f)
  store i32 0, ptr %i.ed, align 4, !tbaa !27
  br label %ffc2ii.exit198.thread257

ffc2ii.exit198.thread257:                         ; preds = %.thread256, %ffc2ii.exit198.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.sink.split

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ek = icmp slt i64 %i.ee, 1
  br i1 %i.ek, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 944
  %i.en = load i32, ptr %i.em, align 8, !tbaa !58
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp sgt i64 %i.ee, %i.eo
  br i1 %i.ep, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 976
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !59
  %i.es = call i32 @ffc2dd(ptr noundef %2, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m)
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.381, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds nuw [160 x i8], ptr %i.er, i64 %i.ee
  %i.ew = load double, ptr %i.u, align 8, !tbaa !57
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -64
  store double %i.ew, ptr %i.ex, align 8, !tbaa !68
  br label %.sink.split

bb.aq:                                            ; preds = %bb.d
  %i.ey = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.382, i64 noundef 4) #29
  %.not172 = icmp eq i32 %i.ey, 0
  br i1 %.not172, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.fa = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.fa, align 4, !tbaa !27
  %i.fb = call i64 @strtol(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.c, i32 noundef 10) #28 ; 3 uses
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !29
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !27
  %i.ff = icmp eq i32 %i.fe, 34                   ; 2 uses
  switch i8 %i.fd, label %.thread258 [
    i8 0, label %bb.as
    i8 32, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  br i1 %i.ff, label %ffc2ii.exit200.thread, label %bb.at

.thread258:                                       ; preds = %bb.ar
  br i1 %i.ff, label %ffc2ii.exit200.thread, label %ffc2ii.exit200.thread259

ffc2ii.exit200.thread:                            ; preds = %.thread258, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.d, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.fg = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ez, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 0, ptr %i.fa, align 4, !tbaa !27
  br label %ffc2ii.exit200.thread259

ffc2ii.exit200.thread259:                         ; preds = %.thread258, %ffc2ii.exit200.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.sink.split

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.fh = icmp slt i64 %i.fb, 1
  br i1 %i.fh, label %.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 944
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !58
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp sgt i64 %i.fb, %i.fl
  br i1 %i.fm, label %.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 976
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !59
  %i.fp = call i32 @ffc2dd(ptr noundef %2, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m)
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.381, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw [160 x i8], ptr %i.fo, i64 %i.fb
  %i.ft = load double, ptr %i.u, align 8, !tbaa !57
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -56
  store double %i.ft, ptr %i.fu, align 8, !tbaa !67
  br label %.sink.split

bb.ay:                                            ; preds = %bb.d
  %i.fv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.383, i64 noundef 4) #29
  %.not174 = icmp eq i32 %i.fv, 0
  br i1 %.not174, label %bb.az, label %.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.fx = tail call ptr @__errno_location() #30   ; 3 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !27
  %i.fy = call i64 @strtol(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.a, i32 noundef 10) #28 ; 3 uses
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !29
  %i.gb = load i32, ptr %i.fx, align 4, !tbaa !27
  %i.gc = icmp eq i32 %i.gb, 34                   ; 2 uses
  switch i8 %i.ga, label %.thread260 [
    i8 0, label %bb.ba
    i8 32, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  br i1 %i.gc, label %ffc2ii.exit202.thread, label %bb.bb

.thread260:                                       ; preds = %bb.az
  br i1 %i.gc, label %ffc2ii.exit202.thread, label %ffc2ii.exit202.thread261

ffc2ii.exit202.thread:                            ; preds = %.thread260, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(54) %i.b, ptr noundef nonnull align 1 dereferenceable(54) @.str.551, i64 54, i1 false) #28
  %i.gd = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.fw, i64 noundef 25) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.b)
  store i32 0, ptr %i.fx, align 4, !tbaa !27
  br label %ffc2ii.exit202.thread261

ffc2ii.exit202.thread261:                         ; preds = %.thread260, %ffc2ii.exit202.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.sink.split

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ge = icmp slt i64 %i.fy, 1
  br i1 %i.ge, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 944
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !58
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp sgt i64 %i.fy, %i.gi
  br i1 %i.gj, label %.sink.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 976
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !59
  %i.gm = getelementptr inbounds nuw [160 x i8], ptr %i.gl, i64 %i.fy ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gq = call i32 @ffc2s(ptr noundef %2, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m)
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 -40
  %i.gt = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.gs, ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 17) #28 ; 0 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gm, i64 -23
  store i8 0, ptr %i.gu, align 1, !tbaa !29
  br label %.sink.split

bb.bg:                                            ; preds = %bb.bd
  %i.gv = call i32 @ffc2jj(ptr noundef %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m)
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.gy = load i64, ptr %i.t, align 8, !tbaa !43
  %i.gz = getelementptr inbounds i8, ptr %i.gm, i64 -48
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !70
  br label %.sink.split

sub_1:                                            ; preds = %bb.d
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.hb = load i8, ptr %i.ha, align 1
  %.not234 = icmp eq i8 %i.hb, 73
  br i1 %.not234, label %.tail, label %.sink.split

.tail:                                            ; preds = %sub_1
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = icmp eq i8 %i.hd, 77
  br i1 %i.he, label %bb.bj, label %.sink.split

bb.bj:                                            ; preds = %.tail
  %i.hf = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 88
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !48
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hk = call i32 @ffc2ii(ptr noundef nonnull %i.hj, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m)
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load i64, ptr %i.r, align 8, !tbaa !54  ; 3 uses
  %i.hn = icmp slt i64 %i.hm, 1
  br i1 %i.hn, label %.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ho = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 944
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !58
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp sgt i64 %i.hm, %i.hr
  br i1 %i.hs, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 976
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !59
  %i.hv = getelementptr inbounds nuw [160 x i8], ptr %i.hu, i64 %i.hm ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -80
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !64
  switch i32 %i.hx, label %.sink.split [
    i32 -9999, label %bb.bo
    i32 16, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.hy = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 40) #29 ; 2 uses
  %.not179 = icmp eq ptr %i.hy, null
  br i1 %.not179, label %.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  store ptr %i.hz, ptr %i.w, align 8, !tbaa !30
  %i.ia = call i64 @strtol(ptr noundef nonnull %i.hz, ptr noundef nonnull %i.w, i32 noundef 10) #28 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hv, i64 -72
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !66 ; 2 uses
  %.not180 = icmp ne i64 %i.ic, 1
  %i.id = icmp slt i64 %i.ic, %i.ia
  %or.cond191 = select i1 %.not180, i1 %i.id, i1 false
  br i1 %or.cond191, label %.sink.split, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ie = getelementptr inbounds i8, ptr %i.hv, i64 -8
  store i64 %i.ia, ptr %i.ie, align 8, !tbaa !65
  br label %.sink.split

bb.br:                                            ; preds = %bb.d
  %i.if = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(5) @.str.385, i64 noundef 4) #29
  %.not182 = icmp eq i32 %i.if, 0
  br i1 %.not182, label %bb.bs, label %.sink.split

bb.bs:                                            ; preds = %bb.br
  %i.ig = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 88
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !48
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = call i32 @ffc2jj(ptr noundef %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.m)
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.im = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 81, ptr noundef nonnull @.str.379, ptr noundef nonnull %1, ptr noundef %2) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.x)
  br label %.sink.split

bb.bv:                                            ; preds = %bb.bt
  %i.in = load i64, ptr %i.t, align 8, !tbaa !43
  %i.io = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 984
  store i64 %i.in, ptr %i.ip, align 8, !tbaa !73
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.ah, %bb.ax, %bb.bq, %bb.br, %bb.bf, %bb.bi, %bb.ap, %bb.t, %bb.x, %bb.y, %bb.w, %.tail, %bb.ay, %bb.aq, %bb.l, %bb.e, %bb.z, %bb.ai, %bb.d, %sub_1, %bb.bs, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bm, %bb.bk, %bb.bj, %bb.be, %bb.bb, %bb.bc, %bb.at, %bb.au, %bb.al, %bb.am, %bb.ae, %bb.ac, %bb.ad, %bb.u, %bb.s, %bb.q, %bb.o, %bb.p, %bb.j, %bb.h, %bb.i, %ffc2ii.exit.thread251, %ffc2ii.exit194.thread253, %ffc2ii.exit196.thread255, %bb.ag, %ffc2ii.exit198.thread257, %bb.ao, %ffc2ii.exit200.thread259, %bb.aw, %ffc2ii.exit202.thread261, %bb.bh, %bb.bu, %bb.bv
  %i.iq = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.y, %bb.a ], [ %i.iq, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgtbc(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.d, 1
  %i.j = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.s

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 944
  %i.s = load i32, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 976
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  store i64 0, ptr %1, align 8, !tbaa !43
  %i.v = icmp sgt i32 %i.s, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.r
  %i.w = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.g ]
  %.04152 = phi ptr [ %i.bf, %bb.r ], [ %i.u, %bb.g ] ; 9 uses
  %.04351 = phi i32 [ %i.be, %bb.r ], [ 0, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %.04152, i64 72
  store i64 %i.w, ptr %i.x, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %.04152, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64   ; 3 uses
  switch i32 %i.z, label %bb.j [
    i32 16, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.04152, i64 88
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !66
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.04152, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !66
  %i.ae = add nsw i64 %i.ad, 7
  %i.af = sdiv i64 %i.ae, 8
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.04152, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.aj = udiv i32 %i.z, 10
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ai, %i.ak
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.04152, i64 140 ; 2 uses
  %i.an = tail call ptr @__ctype_b_loc() #30
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ %i.am, %bb.l ], [ %i.au, %bb.m ] ; 2 uses
  %i.ap = load i8, ptr %.0, align 1, !tbaa !29    ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !53
  %i.at = and i16 %i.as, 2048
  %.not49 = icmp eq i16 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not49, label %bb.n, label %bb.m, !llvm.loop !161

bb.n:                                             ; preds = %bb.m
  switch i8 %i.ap, label %bb.q [
    i8 80, label %bb.o
    i8 81, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.04152, i64 88
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !66
  %i.ax = shl nsw i64 %i.aw, 3
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.04152, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.ba = shl nsw i64 %i.az, 4
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 81, ptr noundef nonnull @.str.375, ptr noundef nonnull %i.am) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.a)
  store i32 261, ptr %2, align 4, !tbaa !27
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %bb.o, %bb.p, %bb.k, %bb.h
  %.042 = phi i64 [ %i.ab, %bb.h ], [ %i.af, %bb.i ], [ %i.al, %bb.k ], [ %i.ax, %bb.o ], [ %i.ba, %bb.p ]
  %i.bc = load i64, ptr %1, align 8, !tbaa !43
  %i.bd = add nsw i64 %i.bc, %.042                ; 2 uses
  store i64 %i.bd, ptr %1, align 8, !tbaa !43
  %i.be = add nuw nsw i32 %.04351, 1              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04152, i64 160
  %exitcond.not = icmp eq i32 %i.be, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.r, %bb.g
  %i.bg = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %._crit_edge, %bb.q, %bb.f
  %.044 = phi i32 [ %i.p, %bb.f ], [ 261, %bb.q ], [ %i.bg, %._crit_edge ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.044
}

declare i32 @imcomp_get_compressed_image_par(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgabc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %5, align 4, !tbaa !27     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !54
  %i.f = icmp slt i32 %0, 1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %4, align 8, !tbaa !54
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre = load i64, ptr %3, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i64 [ %.pre, %bb.c ], [ %i.q, %bb.d ]
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = add nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %i.i, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = call i32 @ffasfm(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %5) ; 0 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !54
  %i.o = add nsw i64 %i.n, %i.g
  %i.p = load i64, ptr %3, align 8, !tbaa !54
  %i.q = add nsw i64 %i.o, %i.p                   ; 3 uses
  store i64 %i.q, ptr %3, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !163

bb.e:                                             ; preds = %bb.d
  %i.r = sub nsw i64 %i.q, %i.g
  store i64 %i.r, ptr %3, align 8, !tbaa !54
  %i.s = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.020 = phi i32 [ %i.s, %bb.e ], [ %i.d, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffc2dd(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [81 x i8], align 16               ; 10 uses
  %i.c = alloca [73 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @ffc2dd.decimalpt, align 1  ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @localeconv() #28
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  store i8 %i.i, ptr @ffc2dd.decimalpt, align 1, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i8 [ %i.i, %bb.c ], [ %i.f, %bb.b ]
  %i.k = tail call ptr @__errno_location() #30    ; 3 uses
  store i32 0, ptr %i.k, align 4, !tbaa !27
  store double 0.000000e+00, ptr %1, align 8, !tbaa !57
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 68) #29
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp eq i8 %i.j, 44                      ; 2 uses
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.p = icmp ugt i64 %i.o, 72
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.b, ptr noundef nonnull align 1 dereferenceable(42) @.str.557, i64 42, i1 false) #28
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.b)
  store i32 409, ptr %2, align 4, !tbaa !27
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.q = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0) #28 ; 0 uses
end_hunk_2
begin_hunk_3_@ffc2jj:bb.a
    i8 0, label %bb.d
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store i32 407, ptr %2, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.i = load i32, ptr %i.e, align 4, !tbaa !27
  %i.j = icmp eq i32 %i.i, 34
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(58) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.552, i64 58, i1 false) #28
  %i.k = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 23) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.b)
  store i32 412, ptr %2, align 4, !tbaa !27
  store i32 0, ptr %i.e, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.l, %bb.f ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcprll(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef captures(none) %17, ptr nofree noundef writeonly captures(none) %18, ptr noundef %19, ptr noundef %20) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca [81 x i8], align 16               ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef %20) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef %20)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.f:                                             ; preds = %bb.c
  %i.r = icmp sgt i32 %5, 0
  %i.s = icmp ne i32 %5, 15
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr @STREAM_DRIVER, align 4, !tbaa !27 ; 2 uses
  %i.u = add i32 %i.t, -41
  %or.cond3 = icmp ult i32 %i.u, -40
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @urltype2driver(ptr noundef nonnull @.str.386, ptr noundef nonnull @STREAM_DRIVER) #28 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !17
  %.pre371 = load i32, ptr @STREAM_DRIVER, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.w = phi i32 [ %i.t, %bb.g ], [ %.pre371, %bb.h ]
  %i.x = phi ptr [ %i.g, %bb.g ], [ %.pre, %bb.h ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %i.aa = icmp eq i32 %i.z, %i.w
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ah = add nsw i64 %i.ag, -2880
  %. = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 %i.ah)
  %.not354 = icmp eq i64 %i.ac, %.
  br i1 %.not354, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @ffwend(ptr noundef nonnull %0, ptr noundef %20) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.k, %bb.j, %bb.f, %bb.b
  %i.aj = icmp slt i64 %2, 1
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !17  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !48 ; 3 uses
  br i1 %i.aj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = sitofp i64 %2 to double                 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.387, double noundef %i.ao) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 307, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.o:                                             ; preds = %bb.m
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.388, double noundef %i.ao) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 307, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.p:                                             ; preds = %bb.l
  %i.ar = icmp ne i32 %i.am, 1
  %i.as = icmp slt i64 %3, 1
  %or.cond5 = and i1 %i.as, %i.ar
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.389, i64 noundef %3) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 308, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.r:                                             ; preds = %bb.p
  %i.au = icmp slt i64 %4, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = sitofp i64 %4 to double
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.390, double noundef %i.av) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 306, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp slt i32 %1, 1
  br i1 %i.ax, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 944
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !58
  %i.ba = icmp sgt i32 %1, %i.az
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.391, i32 noundef %1) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 944
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !58
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.392, i32 noundef %i.be) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 302, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.w:                                             ; preds = %bb.u
  store i32 %i.am, ptr %17, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 968
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !74
  store i64 %i.bh, ptr %16, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 976
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59
  %i.bm = zext nneg i32 %1 to i64
  %i.bn = getelementptr [160 x i8], ptr %i.bl, i64 %i.bm ; 9 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -64
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !68
  store double %i.bp, ptr %6, align 8, !tbaa !57
  %i.bq = getelementptr i8, ptr %i.bn, i64 -56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !67
  store double %i.br, ptr %7, align 8, !tbaa !57
  %i.bs = getelementptr i8, ptr %i.bn, i64 -48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.bt, ptr %18, align 8, !tbaa !43
  %i.bu = getelementptr i8, ptr %i.bn, i64 -88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !69
  %i.bw = getelementptr i8, ptr %i.bn, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !65 ; 2 uses
  store i64 %i.bx, ptr %9, align 8, !tbaa !54
  store i64 %i.bx, ptr %14, align 8, !tbaa !54
  %i.by = getelementptr i8, ptr %i.bn, i64 -80    ; 4 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !64
  store i32 %i.bz, ptr %10, align 4, !tbaa !27
  %i.ca = getelementptr i8, ptr %i.bn, i64 -72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !66
  store i64 %i.cb, ptr %15, align 8, !tbaa !43
  %i.cc = getelementptr i8, ptr %i.bn, i64 -20
  %i.cd = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %i.cc) #28 ; 0 uses
  %i.ce = getelementptr i8, ptr %i.bn, i64 -40
  %i.cf = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %i.ce) #28 ; 0 uses
  %i.cg = load i32, ptr %17, align 4, !tbaa !27
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %19, align 1, !tbaa !29
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %19, ptr noundef nonnull align 1 dereferenceable(18) @.str.393, i64 18, i1 false) #28
  %i.ck = load i64, ptr %9, align 8, !tbaa !54    ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 17
  %sext = shl i64 %i.ck, 32
  %i.cm = ashr exact i64 %sext, 32
  %i.cn = select i1 %i.cl, i64 17, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %19, i64 %i.cn
  store i8 0, ptr %i.co, align 1, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cp = add i32 %5, -15
  %or.cond7 = icmp ult i32 %i.cp, 4
  %.pre372 = load i32, ptr %10, align 4, !tbaa !27 ; 5 uses
  br i1 %or.cond7, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cq = tail call i32 @llvm.abs.i32(i32 %.pre372, i1 true)
  %i.cr = icmp eq i32 %i.cq, 16
  br i1 %i.cr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load i32, ptr %17, align 4, !tbaa !27
  %.not355 = icmp eq i32 %i.cs, 1
  br i1 %.not355, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 1, ptr %14, align 8, !tbaa !54
  %i.ct = icmp slt i32 %.pre372, 0
  br i1 %i.ct, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i64, ptr %9, align 8, !tbaa !54
  store i64 %i.cu, ptr %15, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  store i64 1, ptr %9, align 8, !tbaa !54
  store double 1.000000e+00, ptr %6, align 8, !tbaa !57
  store double 0.000000e+00, ptr %7, align 8, !tbaa !57
  store i64 1234554321, ptr %18, align 8, !tbaa !43
  store i32 28800, ptr %11, align 4, !tbaa !27
  %i.cv = load i32, ptr %10, align 4, !tbaa !27
  %i.cw = icmp slt i32 %i.cv, 0
  %.415 = select i1 %i.cw, i32 -11, i32 11        ; 2 uses
  store i32 %.415, ptr %10, align 4, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %i.cx = phi i32 [ %.pre372, %bb.ab ], [ %.pre372, %bb.aa ], [ %.415, %.sink.split ]
  %i.cy = add nsw i32 %5, -16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %i.cz = phi i32 [ %i.cx, %bb.ae ], [ %.pre372, %bb.z ] ; 3 uses
  %.0323 = phi i32 [ %i.cy, %bb.ae ], [ %5, %bb.z ] ; 2 uses
  %i.da = icmp ne i32 %.0323, -1                  ; 2 uses
  %spec.select = select i1 %i.da, i32 %.0323, i32 0 ; 2 uses
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = mul nsw i32 %i.cz, 11                   ; 2 uses
  store i32 %i.dd, ptr %10, align 4, !tbaa !27
  %i.de = load i64, ptr %15, align 8, !tbaa !43
  %i.df = add nsw i64 %i.de, 7
  %i.dg = sdiv i64 %i.df, 8
  store i64 %i.dg, ptr %15, align 8, !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pr = phi i32 [ %i.dd, %bb.ag ], [ %i.cz, %bb.af ] ; 6 uses
  %i.dh = load i32, ptr %17, align 4, !tbaa !27   ; 2 uses
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %bb.ai, label %thread-pre-split

bb.ai:                                            ; preds = %bb.ah
  switch i32 %.pr, label %thread-pre-split [
    i32 16, label %bb.aj
    i32 -16, label %.thread369
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load i64, ptr %9, align 8, !tbaa !54    ; 2 uses
  %.not356 = icmp eq i64 %i.dj, 0
  br i1 %.not356, label %thread-pre-split.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i64, ptr %15, align 8, !tbaa !43
  %i.dl = sdiv i64 %i.dk, %i.dj
  br label %thread-pre-split.thread

.thread369:                                       ; preds = %bb.ai
  store i64 1, ptr %14, align 8, !tbaa !54
  store i64 %4, ptr %9, align 8, !tbaa !54
  %i.dm = add nsw i64 %3, -1
  store i64 %i.dm, ptr %13, align 8, !tbaa !43
  br label %bb.ap

thread-pre-split.thread:                          ; preds = %bb.aj, %bb.ak
  %.sink406 = phi i64 [ %i.dl, %bb.ak ], [ 0, %bb.aj ]
  store i64 %.sink406, ptr %15, align 8, !tbaa !43
  %i.dn = add nsw i64 %3, -1
  store i64 %i.dn, ptr %13, align 8, !tbaa !43
  br label %bb.ap

thread-pre-split:                                 ; preds = %bb.ai, %bb.ah
  %i.do = icmp eq i32 %i.dh, 1
  %i.dp = add nsw i64 %3, -1
  %storemerge = select i1 %i.do, i64 0, i64 %i.dp
  store i64 %storemerge, ptr %13, align 8, !tbaa !43
  %i.dq = add i32 %.pr, -83
  %i.dr = icmp ult i32 %i.dq, -165
  br i1 %i.dr, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %thread-pre-split
  %i.ds = icmp sgt i32 %.pr, 0
  br i1 %i.ds, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dt = add nuw nsw i32 %.pr, 1
  %i.du = lshr i32 %i.dt, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.nonneg = sub i32 1, %.pr
  %i.dv = lshr i32 %.nonneg, 1
  %.neg = sub nsw i32 0, %i.dv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %storemerge357 = phi i32 [ %.neg, %bb.an ], [ %i.du, %bb.am ] ; 2 uses
  store i32 %storemerge357, ptr %10, align 4, !tbaa !27
  %i.dw = load i64, ptr %15, align 8, !tbaa !43
  %i.dx = shl nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %15, align 8, !tbaa !43
  %i.dy = load i64, ptr %9, align 8, !tbaa !54
  %i.dz = sdiv i64 %i.dy, 2
  store i64 %i.dz, ptr %9, align 8, !tbaa !54
  %i.ea = load i64, ptr %14, align 8, !tbaa !54
  %i.eb = sdiv i64 %i.ea, 2
  store i64 %i.eb, ptr %14, align 8, !tbaa !54
  br label %bb.ap

bb.ap:                                            ; preds = %thread-pre-split.thread, %.thread369, %bb.ao, %thread-pre-split
  %i.ec = phi i32 [ -16, %.thread369 ], [ %storemerge357, %bb.ao ], [ %.pr, %thread-pre-split ], [ 16, %thread-pre-split.thread ]
  %i.ed = tail call i32 @llvm.abs.i32(i32 %i.ec, i1 true)
  switch i32 %i.ed, label %bb.au [
    i32 42, label %.sink.split407
    i32 82, label %bb.aq
    i32 16, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %.sink.split407

bb.ar:                                            ; preds = %bb.ap
  %i.ee = load i64, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not358 = icmp eq i64 %i.ee, 0
  br i1 %.not358, label %.sink.split407, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = sdiv i64 28799, %i.ee                   ; 2 uses
  %i.eg = trunc nsw i64 %i.ef to i32
  store i32 %i.eg, ptr %11, align 4, !tbaa !27
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ei = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 81, ptr noundef nonnull @.str.394, i64 noundef %i.ee, i32 noundef 28799) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.d)
  store i32 236, ptr %20, align 4, !tbaa !27
  br label %bb.cs

bb.au:                                            ; preds = %bb.ap
end_hunk_3
begin_hunk_4_@ffwend:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %.fr = freeze i64 %i.j                          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = srem i64 %.fr, 2880
  %i.o = add i64 %.fr, 2880
  %i.p = sub i64 %i.o, %i.n                       ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  %i.r = sub nsw i64 %i.q, %.fr                   ; 2 uses
  %i.s = sdiv i64 %i.r, 80                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %i.b, ptr noundef nonnull align 1 dereferenceable(41) @.str.181, i64 41, i1 false) #28
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.b)
  %endptr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %endptr, ptr noundef nonnull align 1 dereferenceable(41) @.str.181, i64 41, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %i.c, ptr noundef nonnull align 1 dereferenceable(41) @.str.424, i64 41, i1 false) #28
  %strlen57 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr58 = getelementptr inbounds i8, ptr %i.c, i64 %strlen57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %endptr58, ptr noundef nonnull align 1 dereferenceable(41) @.str.181, i64 41, i1 false)
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.t = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.fr, i32 noundef 0, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.u = icmp sgt i64 %i.r, 79                    ; 2 uses
  br i1 %i.u, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4
  %i.v = icmp ne i32 %.pre, 0
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.w = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !27
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %.lr.ph
  %i.y = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80) #29
  %.not59 = icmp eq i32 %i.y, 0
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80) #29
  %.not60 = icmp eq i32 %i.z, 0
  br i1 %.not60, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.g, %bb.f, %.._crit_edge_crit_edge
  %i.aa = phi i1 [ %i.v, %.._crit_edge_crit_edge ], [ false, %bb.f ], [ false, %bb.g ]
  %.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.s, %bb.g ], [ %indvars.iv, %bb.f ]
  %i.ab = icmp ne i64 %i.s, %.lcssa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.aa
  br i1 %or.cond, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !47
  %i.af = add nsw i64 %i.ae, -2880
  %.fr. = call i64 @llvm.smax.i64(i64 %.fr, i64 %i.af) ; 2 uses
  %i.ag = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.fr., i32 noundef 0, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ah = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ai = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80) #29
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond3 = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond3, label %._crit_edge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  store i64 %.fr., ptr %i.an, align 8, !tbaa !83
  br label %.sink.split

._crit_edge.thread:                               ; preds = %.lr.ph, %bb.h, %._crit_edge
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.aq, i32 noundef 1, ptr noundef nonnull %1) #28 ; 0 uses
  br i1 %i.u, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge.thread, %.lr.ph68
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph68 ], [ 0, %._crit_edge.thread ]
  %i.as = call i32 @ffpbyt(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #28 ; 0 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, %i.s
  br i1 %exitcond74.not, label %._crit_edge69, label %.lr.ph68, !llvm.loop !165

._crit_edge69:                                    ; preds = %.lr.ph68, %._crit_edge.thread
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.av = load i64, ptr %i.au, align 8, !tbaa !47
  %i.aw = add nsw i64 %i.av, -2880
  %. = call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.aw) ; 2 uses
  %i.ax = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %., i32 noundef 0, ptr noundef nonnull %1) #28 ; 0 uses
  %i.ay = call i32 @ffpbyt(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.c, ptr noundef nonnull %1) #28 ; 0 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  store i64 %., ptr %i.ba, align 8, !tbaa !83
  %i.bb = load i32, ptr %1, align 4, !tbaa !27    ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge69
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.425)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.j
  %.pre75 = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge69, %bb.a
  %.051 = phi i32 [ %i.bb, %._crit_edge69 ], [ %i.e, %bb.a ], [ %.pre75, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.051
}

declare i32 @ffirow(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgdesll(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.v

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr [160 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 317, ptr %5, align 4, !tbaa !27
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 968
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !74
  %i.ad = add nsw i64 %2, -1
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = add nsw i64 %i.ae, %i.aa
  %i.ag = getelementptr i8, ptr %i.v, i64 -88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = add nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.v, i64 -20
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !29
  %i.al = icmp eq i8 %i.ak, 80
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.v, i64 -19
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = icmp eq i8 %i.an, 80
  br i1 %i.ao, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %i.ai, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #28
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %.not45 = icmp eq ptr %3, null
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !27
  %i.as = zext i32 %i.ar to i64
  store i64 %i.as, ptr %3, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not46 = icmp eq ptr %4, null
  br i1 %.not46, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !27
  %i.av = zext i32 %i.au to i64
  br label %.sink.split

bb.p:                                             ; preds = %bb.j
  %i.aw = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %i.ai, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %5) #28
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load i64, ptr %i.b, align 16, !tbaa !43
  store i64 %i.ay, ptr %3, align 8, !tbaa !43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not44 = icmp eq ptr %4, null
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.t
  %.sink = phi i64 [ %i.ba, %bb.t ], [ %i.av, %bb.o ]
  store i64 %.sink, ptr %4, align 8, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.p, %bb.s, %bb.k, %bb.n
  %i.bb = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %bb.h, %bb.f
  %.0 = phi i32 [ %i.q, %bb.f ], [ 317, %bb.h ], [ %i.bb, %bb.u ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpdes(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %5, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %5) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.p

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr [160 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 317, ptr %5, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 968
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !74
  %i.ad = add nsw i64 %2, -1
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = add nsw i64 %i.ae, %i.aa
  %i.ag = getelementptr i8, ptr %i.v, i64 -88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = add nsw i64 %i.af, %i.ah
  %i.aj = tail call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.ai, i32 noundef 1, ptr noundef nonnull %5) #28 ; 0 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 -20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !29
  %i.am = icmp eq i8 %i.al, 80
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.v, i64 -19
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = icmp eq i8 %i.ao, 80
  br i1 %i.ap, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = or i64 %4, %3
  %or.cond5.not = icmp ult i64 %i.aq, 4294967296
  br i1 %or.cond5.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.417)
  store i32 412, ptr %5, align 4, !tbaa !27
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ar = trunc nuw i64 %3 to i32
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !27
  %i.as = trunc nuw i64 %4 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !27
  %i.au = call i32 @ffpi4b(ptr noundef nonnull %0, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #28 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  store i64 %3, ptr %i.b, align 16, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %i.av, align 8, !tbaa !43
  %i.aw = call i32 @ffpi8b(ptr noundef nonnull %0, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %5) #28 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = load i32, ptr %5, align 4, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.l, %bb.f
  %.0 = phi i32 [ %i.q, %bb.f ], [ 412, %bb.l ], [ %i.ax, %bb.o ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffiblk(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2880 x i8], align 16             ; 6 uses
  %i.c = alloca [2880 x i8], align 16             ; 8 uses
  %i.d = alloca [81 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = load i32, ptr %3, align 4, !tbaa !27     ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = icmp slt i64 %1, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %2, 0                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 6 uses
  br i1 %i.h, label %.thread126, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48
  %i.m = icmp eq i32 %i.l, 1
  %spec.select = select i1 %i.m, i8 32, i8 0      ; 2 uses
  %i.n = icmp eq i32 %2, -1
  br i1 %i.n, label %.thread134, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 984
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  %i.v = add nsw i64 %i.s, %i.u
  %.fr122 = freeze i64 %i.v
  %i.w = add i64 %.fr122, 2879                    ; 2 uses
  %i.x = srem i64 %i.w, 2880
  %i.y = sub nsw i64 %i.w, %i.x                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %i.c, i8 %spec.select, i64 2880, i1 false)
  %i.z = icmp eq i64 %1, 1
  br i1 %i.z, label %.thread131, label %ffmrhd.exit.preheader

.thread134:                                       ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 1 dereferenceable(48) @.str.440, i64 48, i1 false) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %i.c, i8 %spec.select, i64 2880, i1 false)
  %i.aa = icmp eq i64 %1, 1
  br i1 %i.aa, label %.thread136, label %ffmrhd.exit.preheader

.thread126:                                       ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %i.c, i8 32, i64 2880, i1 false)
  %i.ad = icmp eq i64 %1, 1
  br i1 %i.ad, label %.thread131, label %ffmrhd.exit.preheader

.thread136:                                       ; preds = %.thread134
  %i.ae = call i32 @ffmrec(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %3) #28 ; 0 uses
  br label %.thread131

.thread131:                                       ; preds = %bb.d, %.thread126, %.thread136
  %.0114129133 = phi i64 [ %i.ac, %.thread126 ], [ 0, %.thread136 ], [ %i.y, %bb.d ] ; 3 uses
  %i.af = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.0114129133, i32 noundef 0, ptr noundef nonnull %3) #28 ; 0 uses
  %i.ag = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 2880, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28 ; 0 uses
  %i.ah = load i32, ptr %3, align 4, !tbaa !27
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.thread131, %bb.e
  %.0153 = phi ptr [ %.0110152, %bb.e ], [ %i.c, %.thread131 ] ; 3 uses
  %.0110152 = phi ptr [ %.0153, %bb.e ], [ %i.b, %.thread131 ] ; 2 uses
  %.1115151 = phi i64 [ %i.an, %bb.e ], [ %.0114129133, %.thread131 ] ; 2 uses
  %i.aj = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.1115151, i32 noundef 0, ptr noundef nonnull %3) #28 ; 0 uses
  %i.ak = call i32 @ffpbyt(ptr noundef nonnull %0, i64 noundef 2880, ptr noundef %.0153, ptr noundef nonnull %3) #28 ; 0 uses
  %i.al = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph154
  %i.an = add nsw i64 %.1115151, 2880             ; 3 uses
  %i.ao = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.an, i32 noundef 0, ptr noundef nonnull %3) #28 ; 0 uses
  %i.ap = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 2880, ptr noundef %.0153, ptr noundef nonnull %3) #28 ; 0 uses
  %i.aq = load i32, ptr %3, align 4, !tbaa !27
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph154, label %._crit_edge155, !llvm.loop !166

._crit_edge155:                                   ; preds = %bb.e, %.thread131
  %.1115.lcssa = phi i64 [ %.0114129133, %.thread131 ], [ %i.an, %bb.e ]
  %.0.lcssa = phi ptr [ %i.c, %.thread131 ], [ %.0110152, %bb.e ]
  store i32 %i.e, ptr %3, align 4, !tbaa !27
  %i.as = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.1115.lcssa, i32 noundef 1, ptr noundef nonnull %3) #28 ; 0 uses
  %i.at = call i32 @ffpbyt(ptr noundef nonnull %0, i64 noundef 2880, ptr noundef %.0.lcssa, ptr noundef nonnull %3) #28 ; 0 uses
  br label %.loopexit139

ffmrhd.exit.preheader:                            ; preds = %bb.d, %.thread126, %.thread134
  %.0114130 = phi i64 [ %i.ac, %.thread126 ], [ %i.y, %bb.d ], [ 0, %.thread134 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  br label %ffmrhd.exit

ffmrhd.exit:                                      ; preds = %ffmrhd.exit.preheader, %ffmrhd.exit
  %i.ax = load i32, ptr %0, align 8, !tbaa !34
  %i.ay = add i32 %i.ax, 2
  %i.az = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %3) ; 0 uses
  %i.ba = load i32, ptr %3, align 4, !tbaa !27    ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %ffmrhd.exit, label %._crit_edge, !llvm.loop !167

._crit_edge:                                      ; preds = %ffmrhd.exit
  %i.bc = icmp eq i32 %i.ba, 107
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  store i32 %i.e, ptr %3, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bd = add nsw i32 %i.aw, 1
  %i.be = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef nonnull %3) ; 0 uses
  %i.bf = icmp eq i32 %2, -1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = call i32 @ffmrec(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %3) #28 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.bq = sub nsw i64 %i.bp, %.0114130            ; 2 uses
  %i.br = sdiv i64 %i.bq, 2880
  %i.bs = icmp sgt i64 %i.bq, 2879
  br i1 %i.bs, label %.lr.ph, label %.lr.ph150.preheader

.lr.ph:                                           ; preds = %bb.i
  %i.bt = mul nuw nsw i64 %1, 2880
  br label %bb.j
end_hunk_4
begin_hunk_5_@ffdblk:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %i.a, i8 0, i64 2880, i1 false)
  %i.ad = call i32 @ffmbyt(ptr noundef %0, i64 noundef %.0.lcssa, i32 noundef 0, ptr noundef nonnull %2) #28 ; 0 uses
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next, %.lr.ph58 ]
  %i.ae = call i32 @ffpbyt(ptr noundef %0, i64 noundef 2880, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #28 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph58, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph58
  %i.af = add nsw i64 %.0.lcssa, -1
  %i.ag = call i32 @ffmbyt(ptr noundef %0, i64 noundef %i.af, i32 noundef 0, ptr noundef nonnull %2) #28 ; 0 uses
  %i.ah = call i32 @fftrun(ptr noundef %0, i64 noundef %.0.lcssa, ptr noundef nonnull %2) #28 ; 0 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !17  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 84
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.am = load i32, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  %.not5059 = icmp sgt i32 %i.ak, %i.am
  br i1 %.not5059, label %.sink.split, label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.ap = sext i32 %i.ak to i64                   ; 3 uses
  %i.aq = add i32 %i.am, 1
  %i.ar = sub i32 %i.am, %i.ak                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ar, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62
  %n.vec = and i64 %i.at, 8589934588              ; 3 uses
  %i.au = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.aw = getelementptr i8, ptr %gep, i64 24      ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !43
  %wide.load71 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !43
  %i.ax = sub nsw <2 x i64> %wide.load, %broadcast.splat
  %i.ay = sub nsw <2 x i64> %wide.load71, %broadcast.splat
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !43
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.sink.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph62, %middle.block
  %indvars.iv65.ph = phi i64 [ %i.ap, %.lr.ph62 ], [ %i.au, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %scalar.ph ], [ %indvars.iv65.ph, %scalar.ph.preheader ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1 ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next66 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !43
  %i.bc = sub nsw i64 %i.bb, %i.s
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !43
  %lftr.wideiv = trunc i64 %indvars.iv.next66 to i32
  %exitcond68.not = icmp eq i32 %i.aq, %lftr.wideiv
  br i1 %exitcond68.not, label %.sink.split, label %scalar.ph, !llvm.loop !188

.sink.split:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge, %bb.d
  %i.bd = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.046 = phi i32 [ %i.c, %bb.a ], [ %i.bd, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.046
}

declare i32 @ffgkyjj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare i32 @ffmkyj(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgdes(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = call i32 @ffgdesll(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5)
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.e, ptr %3, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not14 = icmp eq ptr %4, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr %i.b, align 8, !tbaa !43
  store i64 %i.f, ptr %4, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = load i32, ptr %5, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

declare i32 @ffgi4b(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare i32 @ffgi8b(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgdess(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address) %4, ptr nofree noundef writeonly captures(address) %5, ptr noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %6, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %6) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr [160 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 317, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 968
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47
  %i.ad = add nsw i64 %2, -1
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = add nsw i64 %i.ac, %i.ae
  %i.ag = getelementptr i8, ptr %i.v, i64 -88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = add nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.v, i64 -20
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !29
  %i.al = icmp eq i8 %i.ak, 80
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.v, i64 -19
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = icmp eq i8 %i.an, 80
  br i1 %i.ao, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ap = icmp sgt i64 %3, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.s

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = icmp sgt i64 %3, 0
  br i1 %i.ar, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph81, %bb.q
  %.080 = phi i64 [ 0, %.lr.ph81 ], [ %i.bc, %bb.q ]
  %.05779 = phi i64 [ %i.ai, %.lr.ph81 ], [ %i.bb, %bb.q ] ; 2 uses
  %.06078 = phi ptr [ %5, %.lr.ph81 ], [ %.161, %bb.q ] ; 3 uses
  %.06277 = phi ptr [ %4, %.lr.ph81 ], [ %.163, %bb.q ] ; 3 uses
  %i.at = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %.05779, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %6) #28
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not70 = icmp eq ptr %.06277, null
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr %i.a, align 8, !tbaa !27
  %i.aw = sext i32 %i.av to i64
  store i64 %i.aw, ptr %.06277, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.06277, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.163 = phi ptr [ %i.ax, %bb.n ], [ null, %bb.m ]
  %.not71 = icmp eq ptr %.06078, null
  br i1 %.not71, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !27
  %i.az = sext i32 %i.ay to i64
  store i64 %i.az, ptr %.06078, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %.06078, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.161 = phi ptr [ %i.ba, %bb.p ], [ null, %bb.o ]
  %i.bb = add nsw i64 %.05779, %i.aa
  %i.bc = add nuw nsw i64 %.080, 1                ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond83.not, label %.loopexit, label %bb.l, !llvm.loop !189

bb.r:                                             ; preds = %bb.l
  %i.bd = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.s:                                             ; preds = %.lr.ph, %bb.x
  %.176 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.x ]
  %.15875 = phi i64 [ %i.ai, %.lr.ph ], [ %i.bk, %bb.x ] ; 2 uses
  %.274 = phi ptr [ %5, %.lr.ph ], [ %.3, %bb.x ] ; 3 uses
  %.26473 = phi ptr [ %4, %.lr.ph ], [ %.365, %bb.x ] ; 3 uses
  %i.be = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %.15875, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %6) #28
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %.not68 = icmp eq ptr %.26473, null
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i64, ptr %i.b, align 16, !tbaa !43
  store i64 %i.bg, ptr %.26473, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %.26473, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.365 = phi ptr [ %i.bh, %bb.u ], [ null, %bb.t ]
  %.not69 = icmp eq ptr %.274, null
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !43
  store i64 %i.bi, ptr %.274, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %.274, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi ptr [ %i.bj, %bb.w ], [ null, %bb.v ]
  %i.bk = add nsw i64 %.15875, %i.aa
  %i.bl = add nuw nsw i64 %.176, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !190

bb.y:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

.loopexit:                                        ; preds = %bb.x, %bb.q, %.preheader, %bb.k
  %i.bn = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %.loopexit, %bb.y, %bb.r, %bb.h, %bb.f
  %.059 = phi i32 [ %i.q, %bb.f ], [ 317, %bb.h ], [ %i.bd, %bb.r ], [ %i.bn, %.loopexit ], [ %i.bm, %bb.y ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.059
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgdessll(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address) %4, ptr nofree noundef writeonly captures(address) %5, ptr noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %6, align 4, !tbaa !27     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.e, 1
  %i.k = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %6) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr [160 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 317, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 968
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47
  %i.ad = add nsw i64 %2, -1
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = add nsw i64 %i.ac, %i.ae
  %i.ag = getelementptr i8, ptr %i.v, i64 -88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = add nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = getelementptr i8, ptr %i.v, i64 -20
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !29
  %i.al = icmp eq i8 %i.ak, 80
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.v, i64 -19
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = icmp eq i8 %i.an, 80
  br i1 %i.ao, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ap = icmp sgt i64 %3, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.s

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = icmp sgt i64 %3, 0
  br i1 %i.ar, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph79, %bb.q
  %.078 = phi i64 [ 0, %.lr.ph79 ], [ %i.bc, %bb.q ]
  %.05577 = phi i64 [ %i.ai, %.lr.ph79 ], [ %i.bb, %bb.q ] ; 2 uses
  %.05876 = phi ptr [ %5, %.lr.ph79 ], [ %.159, %bb.q ] ; 3 uses
  %.06075 = phi ptr [ %4, %.lr.ph79 ], [ %.161, %bb.q ] ; 3 uses
  %i.at = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %.05577, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %6) #28
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not68 = icmp eq ptr %.06075, null
  br i1 %.not68, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr %i.a, align 8, !tbaa !27
  %i.aw = zext i32 %i.av to i64
  store i64 %i.aw, ptr %.06075, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %.06075, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.161 = phi ptr [ %i.ax, %bb.n ], [ null, %bb.m ]
  %.not69 = icmp eq ptr %.05876, null
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !27
  %i.az = zext i32 %i.ay to i64
  store i64 %i.az, ptr %.05876, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %.05876, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.159 = phi ptr [ %i.ba, %bb.p ], [ null, %bb.o ]
  %i.bb = add nsw i64 %.05577, %i.aa
  %i.bc = add nuw nsw i64 %.078, 1                ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond81.not, label %.loopexit, label %bb.l, !llvm.loop !191

bb.r:                                             ; preds = %bb.l
  %i.bd = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.s:                                             ; preds = %.lr.ph, %bb.x
  %.174 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.x ]
  %.15673 = phi i64 [ %i.ai, %.lr.ph ], [ %i.bk, %bb.x ] ; 2 uses
  %.272 = phi ptr [ %5, %.lr.ph ], [ %.3, %bb.x ] ; 3 uses
  %.26271 = phi ptr [ %4, %.lr.ph ], [ %.363, %bb.x ] ; 3 uses
  %i.be = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %.15673, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %6) #28
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %.not66 = icmp eq ptr %.26271, null
  br i1 %.not66, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i64, ptr %i.b, align 16, !tbaa !43
  store i64 %i.bg, ptr %.26271, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %.26271, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.363 = phi ptr [ %i.bh, %bb.u ], [ null, %bb.t ]
  %.not67 = icmp eq ptr %.272, null
  br i1 %.not67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !43
  store i64 %i.bi, ptr %.272, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.272, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi ptr [ %i.bj, %bb.w ], [ null, %bb.v ]
  %i.bk = add nsw i64 %.15673, %i.aa
  %i.bl = add nuw nsw i64 %.174, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !192

bb.y:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

.loopexit:                                        ; preds = %bb.x, %bb.q, %.preheader, %bb.k
  %i.bn = load i32, ptr %6, align 4, !tbaa !27
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %.loopexit, %bb.y, %bb.r, %bb.h, %bb.f
  %.057 = phi i32 [ %i.q, %bb.f ], [ 317, %bb.h ], [ %i.bd, %bb.r ], [ %i.bn, %.loopexit ], [ %i.bm, %bb.y ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.057
}

declare i32 @ffpi4b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare i32 @ffpi8b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffchdu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.c, 1
  %i.i = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.h, ptr noundef null, ptr noundef %1) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @urltype2driver(ptr noundef nonnull @.str.386, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = load i32, ptr %i.b, align 4, !tbaa !27
  %.not52 = icmp eq i32 %i.p, %i.q
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.n, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 992
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @ffuptf(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = call i32 @ffpdfl(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.b
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !194
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 976
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %.not53 = icmp eq ptr %i.ad, null
  br i1 %.not53, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ad) #28
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !17  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 976
  store ptr null, ptr %i.af, align 8, !tbaa !59
end_hunk_5
begin_hunk_6_@ffchdu:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1360
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77 ; 2 uses
  %.not57 = icmp eq ptr %i.ba, null
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.ba) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !193

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre61 = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bb = phi ptr [ %.pre61, %._crit_edge.loopexit ], [ %i.ae, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1368
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  call void @free(ptr noundef %i.bd) #28
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1344
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80
  call void @free(ptr noundef %i.bg) #28
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1336
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81
  call void @free(ptr noundef %i.bj) #28
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1360
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78
  call void @free(ptr noundef %i.bm) #28
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1352
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76
  call void @free(ptr noundef %i.bp) #28
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1328
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !75
  call void @free(ptr noundef %i.bs) #28
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i8 0, i64 48, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %._crit_edge, %bb.k, %bb.i
  %i.bv = phi ptr [ %i.y, %bb.j ], [ %i.bt, %._crit_edge ], [ %i.ae, %bb.k ], [ %i.y, %bb.i ]
  %i.bw = load i32, ptr %1, align 4, !tbaa !27    ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 1
  %.not55 = icmp eq i32 %i.bw, 999
  %or.cond = or i1 %i.bx, %.not55
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 81, ptr noundef nonnull @.str.418, i32 noundef %i.bz) #28 ; 0 uses
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.a)
  %.pre62 = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi i32 [ %.pre62, %bb.r ], [ %i.bw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %i.cb
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffuptf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [73 x i8], align 16               ; 6 uses
  %i.f = alloca [75 x i8], align 16               ; 5 uses
  %i.g = alloca [71 x i8], align 16               ; 7 uses
  %i.h = alloca [71 x i8], align 16               ; 10 uses
  %i.i = alloca [40 x i8], align 16               ; 5 uses
  %i.j = alloca [81 x i8], align 16               ; 4 uses
  %i.k = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  %i.l = tail call i32 @ffmaky(ptr noundef %0, i32 noundef 2, ptr noundef %1) #28 ; 0 uses
  %i.m = call i32 @ffgkyjj(ptr noundef %0, ptr noundef nonnull @.str.419, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %1) #28 ; 0 uses
  %i.n = call i32 @ffgkyj(ptr noundef %0, ptr noundef nonnull @.str.271, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %1) #28 ; 0 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !54
  %.not61 = icmp slt i64 %i.o, 1
  br i1 %.not61, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.t
  %indvars.iv = phi i64 [ 1, %.lr.ph66 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %.04962 = phi i64 [ undef, %.lr.ph66 ], [ %.2, %bb.t ] ; 5 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = call i32 @ffkeyn(ptr noundef nonnull @.str.364, i32 noundef %i.q, ptr noundef nonnull %i.f, ptr noundef %1) ; 0 uses
  %i.s = call i32 @ffgkys(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %1) #28
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.k, ptr noundef nonnull align 1 dereferenceable(68) @.str.420, i64 68, i1 false)
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull %i.k)
  %i.u = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.v = load <2 x i8>, ptr %i.g, align 16
  %i.w = and <2 x i8> %i.v, splat (i8 -2)
  %i.x = icmp eq <2 x i8> %i.w, splat (i8 80)     ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %or.cond11 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond11, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.d
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !43
  %.not4551 = icmp slt i64 %i.aa, 1
  br i1 %.not4551, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = load i32, ptr %1, align 4, !tbaa !27
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %._crit_edge.loopexit, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %ffgdesll.exit
  %.054 = phi i64 [ %i.bu, %ffgdesll.exit ], [ 1, %.lr.ph ] ; 3 uses
  %.04053 = phi i64 [ %spec.select, %ffgdesll.exit ], [ 0, %.lr.ph ]
  %.152 = phi i64 [ %.4, %ffgdesll.exit ], [ %.04962, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %1, align 4, !tbaa !27
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %ffgdesll.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.af = load i32, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !17  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.af, 1
  %i.ak = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef null, ptr noundef nonnull %1), !inline_history !198 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !198
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %ffgdesll.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !17  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 976
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.at = getelementptr [160 x i8], ptr %i.as, i64 %indvars.iv ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !64
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 317, ptr %1, align 4, !tbaa !27
  br label %ffgdesll.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 968
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !74
  %i.bb = add nsw i64 %.054, -1
  %i.bc = mul nsw i64 %i.ba, %i.bb
  %i.bd = add nsw i64 %i.bc, %i.ay
  %i.be = getelementptr i8, ptr %i.at, i64 -88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = add nsw i64 %i.bd, %i.bf                ; 2 uses
  %i.bh = getelementptr i8, ptr %i.at, i64 -20
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !29
  %i.bj = icmp eq i8 %i.bi, 80
  br i1 %i.bj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.at, i64 -19
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bm = icmp eq i8 %i.bl, 80
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = call i32 @ffgi4b(ptr noundef nonnull %0, i64 noundef %i.bg, i64 noundef 2, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %bb.n, label %ffgdesll.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !27
  %i.bq = zext i32 %i.bp to i64
  br label %ffgdesll.exit

bb.o:                                             ; preds = %bb.l
  %i.br = call i32 @ffgi8b(ptr noundef nonnull %0, i64 noundef %i.bg, i64 noundef 2, i64 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #28, !inline_history !198
  %i.bs = icmp slt i32 %i.br, 1
  %i.bt = load i64, ptr %i.b, align 16
  %spec.select50 = select i1 %i.bs, i64 %i.bt, i64 %.152
  br label %ffgdesll.exit

ffgdesll.exit:                                    ; preds = %bb.o, %bb.m, %bb.n, %bb.h, %.lr.ph.split, %bb.j
  %.4 = phi i64 [ %.152, %.lr.ph.split ], [ %.152, %bb.h ], [ %.152, %bb.j ], [ %i.bq, %bb.n ], [ %.152, %bb.m ], [ %spec.select50, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %spec.select = call i64 @llvm.smax.i64(i64 %.4, i64 %.04053) ; 2 uses
  %i.bu = add nuw nsw i64 %.054, 1
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !43
  %.not45.not = icmp slt i64 %.054, %i.bv
  br i1 %.not45.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bw = call i64 @llvm.smax.i64(i64 %.04962, i64 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %ffgdesll.exit, %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i64 [ %.04962, %.preheader ], [ %.04962, %._crit_edge.loopexit ], [ %.4, %ffgdesll.exit ]
  %.040.lcssa = phi i64 [ 0, %.preheader ], [ %i.bw, %._crit_edge.loopexit ], [ %spec.select, %ffgdesll.exit ]
  store i16 39, ptr %i.h, align 16
  %i.bx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 40) #29 ; 2 uses
  %.not46 = icmp eq ptr %i.bx, null
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.bx, align 1, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #29
  %i.bz = uitofp nneg i64 %.040.lcssa to double
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 40, ptr noundef nonnull @.str.421, double noundef %i.bz) #28 ; 0 uses
  %sext = shl i64 %i.by, 32
  %i.cb = ashr exact i64 %sext, 32
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.cd = add i64 %i.cc, -69
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = icmp ult i64 %i.ce, -71
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ffxmsg(i32 noundef 5, ptr noundef nonnull @.str.422)
  store i32 261, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cg = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.g) #28 ; 0 uses
  %i.ch = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 0 uses
  %i.ci = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 9
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %bb.s, %.lr.ph58
  %i.ck = phi i64 [ %i.cl, %.lr.ph58 ], [ %i.ci, %bb.s ]
  %endptr48 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ck
  store i16 32, ptr %endptr48, align 1
  %i.cl = call i64 @strlen(ptr nonnull dereferenceable(1) %i.h) ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 9
  br i1 %i.cm, label %.lr.ph58, label %._crit_edge59, !llvm.loop !196

._crit_edge59:                                    ; preds = %.lr.ph58, %bb.s
  %.lcssa = phi i64 [ %i.ci, %bb.s ], [ %i.cl, %.lr.ph58 ]
  %endptr = getelementptr inbounds i8, ptr %i.h, i64 %.lcssa
  store i16 39, ptr %endptr, align 1
  %i.cn = call i32 @ffmkky(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  %i.co = call i32 @ffmkey(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef %1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge59, %bb.d
  %.2 = phi i64 [ %.1.lcssa, %._crit_edge59 ], [ %.04962, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !54
  %.not.not = icmp sgt i64 %i.cp, %indvars.iv
  br i1 %.not.not, label %bb.b, label %._crit_edge67, !llvm.loop !197

._crit_edge67:                                    ; preds = %bb.t, %bb.a
  %i.cq = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge67, %bb.r, %bb.c
  %.042 = phi i32 [ %i.u, %bb.c ], [ 261, %bb.r ], [ %i.cq, %._crit_edge67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpdfl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [2880 x i8], align 16             ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = load i32, ptr %1, align 4, !tbaa !27     ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.i
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 984
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = add nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 992
  %i.q = load i64, ptr %i.p, align 8, !tbaa !62
  %i.r = add nsw i64 %i.o, %i.q
  %.fr52 = freeze i64 %i.r                        ; 5 uses
  %i.s = add i64 %.fr52, 2879
  %i.t = srem i64 %i.s, 2880                      ; 3 uses
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = sub nsw i32 2879, %i.u                   ; 4 uses
  %i.w = icmp slt i64 %i.t, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 264, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !48
  %i.z = icmp eq i32 %i.y, 1
  %. = select i1 %i.z, i8 32, i8 0                ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %.not53 = icmp eq i64 %i.t, 2879
  br i1 %.not53, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %.fr52, -1                  ; 2 uses
  %i.ab = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %i.aa, i32 noundef 0, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ac = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !27
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ag = call i32 @ffmbyt(ptr noundef nonnull %0, i64 noundef %.fr52, i32 noundef 0, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.ah = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ai = call i32 @ffgbyt(ptr noundef nonnull %0, i64 noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28 ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !27
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.not54 = icmp eq i8 %i.am, %.
  br i1 %.not54, label %bb.j, label %._crit_edge
end_hunk_6
begin_hunk_7_@fits_strncasecmp:bb.a
; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @fits_recalloc(ptr noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef %3) #32
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, %1
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %2, %1
  %i.g = mul i64 %3, %2
  %i.h = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %i.g) #31 ; 4 uses
  %.not36 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sub nuw i64 %2, %1
  %i.l = mul i64 %i.k, %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.k, %bb.j, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.j ], [ null, %bb.e ], [ %0, %bb.c ], [ %i.h, %bb.k ], [ null, %bb.h ], [ %i.h, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"", !10, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"long long", !9, i64 0}
!20 = !{!"p1 long long", !15, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"double", !9, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"p1 long", !15, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !18, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !19, i64 40, !19, i64 48, !10, i64 56, !19, i64 64, !19, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !20, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !10, i64 144, !9, i64 152, !10, i64 944, !10, i64 948, !19, i64 952, !19, i64 960, !19, i64 968, !15, i64 976, !19, i64 984, !19, i64 992, !10, i64 1000, !9, i64 1008, !13, i64 1056, !10, i64 1060, !10, i64 1064, !10, i64 1068, !10, i64 1072, !13, i64 1076, !10, i64 1080, !10, i64 1084, !9, i64 1088, !13, i64 1136, !10, i64 1140, !10, i64 1144, !10, i64 1148, !9, i64 1152, !10, i64 1164, !10, i64 1168, !9, i64 1176, !21, i64 1224, !21, i64 1232, !10, i64 1240, !10, i64 1244, !10, i64 1248, !10, i64 1252, !10, i64 1256, !10, i64 1260, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !10, i64 1304, !10, i64 1308, !10, i64 1312, !13, i64 1316, !10, i64 1320, !23, i64 1328, !24, i64 1336, !23, i64 1344, !25, i64 1352, !25, i64 1360, !23, i64 1368, !18, i64 1376, !9, i64 1384, !9, i64 1704, !9, i64 1864}
!27 = !{!10, !10, i64 0}
!28 = !{!26, !10, i64 92}
!29 = !{!9, !9, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !23, i64 0}
!34 = !{!16, !10, i64 0}
!35 = !{!26, !10, i64 84}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!26, !19, i64 128}
!40 = !{!26, !10, i64 100}
!41 = !{!26, !20, i64 104}
!42 = !{!26, !10, i64 96}
!43 = !{!19, !19, i64 0}
!44 = !{!26, !19, i64 48}
!45 = !{!26, !19, i64 112}
!46 = !{ptr @ffghdt}
!47 = !{!26, !19, i64 136}
!48 = !{!26, !10, i64 88}
!49 = !{!26, !10, i64 1148}
!50 = !{!"p1 short", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!21, !21, i64 0}
!55 = !{!"lconv", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 81, !9, i64 82, !9, i64 83, !9, i64 84, !9, i64 85, !9, i64 86, !9, i64 87, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93}
!56 = !{!55, !18, i64 0}
!57 = !{!22, !22, i64 0}
!58 = !{!26, !10, i64 944}
!59 = !{!26, !15, i64 976}
!60 = !{!26, !19, i64 960}
!61 = !{!26, !19, i64 952}
!62 = !{!26, !19, i64 992}
!63 = !{!"", !9, i64 0, !19, i64 72, !10, i64 80, !19, i64 88, !22, i64 96, !22, i64 104, !19, i64 112, !9, i64 120, !9, i64 140, !21, i64 152}
!64 = !{!63, !10, i64 80}
!65 = !{!63, !21, i64 152}
!66 = !{!63, !19, i64 88}
!67 = !{!63, !22, i64 104}
!68 = !{!63, !22, i64 96}
!69 = !{!63, !19, i64 72}
!70 = !{!63, !19, i64 112}
!71 = !{!26, !10, i64 56}
!72 = !{!26, !10, i64 144}
!73 = !{!26, !19, i64 984}
!74 = !{!26, !19, i64 968}
!75 = !{!26, !23, i64 1328}
!76 = !{!26, !25, i64 1352}
!77 = !{!15, !15, i64 0}
!78 = !{!26, !25, i64 1360}
!79 = !{!26, !23, i64 1368}
!80 = !{!26, !23, i64 1344}
!81 = !{!26, !24, i64 1336}
!82 = !{!26, !10, i64 4}
!83 = !{!26, !19, i64 120}
!84 = !{!26, !10, i64 1168}
!85 = !{!26, !18, i64 16}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31, !36, !37}
!95 = distinct !{!95, !31, !36, !37}
!96 = distinct !{!96, !31, !37, !36}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !31}
!100 = !{ptr @ffgext}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31, !36, !37}
!118 = distinct !{!118, !31, !36, !37}
!119 = distinct !{!119, !31, !37, !36}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = !{!26, !10, i64 948}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !31}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
!154 = distinct !{!154, !31}
!155 = distinct !{!155, !31}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, !31}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !31}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = distinct !{!163, !31}
!164 = distinct !{!164, !31}
!165 = distinct !{!165, !31}
!166 = distinct !{!166, !31}
!167 = distinct !{!167, !31}
!168 = distinct !{!168, !31}
!169 = distinct !{!169, !31}
!170 = distinct !{!170, !31, !36, !37}
!171 = distinct !{!171, !31, !37, !36}
!172 = distinct !{!172, !31, !37, !36}
!173 = distinct !{!173, !31}
!174 = distinct !{!174, !31, !36, !37}
!175 = distinct !{!175, !31, !36, !37}
!176 = distinct !{!176, !31, !36, !37}
!177 = distinct !{!177, !31, !36, !37}
!178 = distinct !{!178, !31, !37, !36}
!179 = distinct !{!179, !31}
!180 = distinct !{!180, !31, !36, !37}
!181 = distinct !{!181, !31, !37, !36}
!182 = !{!"branch_weights", i32 4, i32 28}
!183 = distinct !{!183, !31}
!184 = distinct !{!184, !31}
!185 = distinct !{!185, !31}
!186 = distinct !{!186, !31}
!187 = distinct !{!187, !31, !36, !37}
!188 = distinct !{!188, !31, !37, !36}
!189 = distinct !{!189, !31}
!190 = distinct !{!190, !31}
!191 = distinct !{!191, !31}
!192 = distinct !{!192, !31}
!193 = distinct !{!193, !31}
!194 = !{!26, !10, i64 8}
!195 = distinct !{!195, !31, !199}
!196 = distinct !{!196, !31}
!197 = distinct !{!197, !31}
!198 = !{ptr @ffgdesll}
!199 = !{!"llvm.loop.unswitch.partial.disable"}
!200 = distinct !{!200, !31}
!201 = distinct !{!201, !31}
!202 = distinct !{!202, !31}
!203 = distinct !{!203, !31, !204}
!204 = !{!"llvm.loop.peeled.count", i32 1}
!205 = !{!26, !10, i64 1064}
!206 = !{!26, !10, i64 1144}
!207 = distinct !{!207, !31, !36, !37}
!208 = distinct !{!208, !31, !37, !36}
!209 = distinct !{!209, !31, !36, !37}
!210 = distinct !{!210, !32}
!211 = distinct !{!211, !31, !36}
!212 = distinct !{!212, !31, !36, !37}
!213 = distinct !{!213, !31, !37, !36}
!214 = distinct !{!214, !31, !36, !37}
!215 = distinct !{!215, !32}
!216 = distinct !{!216, !31, !36}
!217 = distinct !{!217, !31, !36, !37}
!218 = distinct !{!218, !32}
!219 = distinct !{!219, !31, !36}
!220 = distinct !{!220, !31, !36, !37}
!221 = distinct !{!221, !31, !37, !36}
!222 = distinct !{!222, !31, !36, !37}
!223 = distinct !{!223, !32}
!224 = distinct !{!224, !31, !36}
!225 = distinct !{!225, !31, !36, !37}
!226 = distinct !{!226, !31, !37, !36}
!227 = !{!26, !10, i64 28}
!228 = distinct !{!228, !31}
!229 = distinct !{!229, !32}
!230 = distinct !{!230, !31}
!231 = distinct !{!231, !31}
!232 = distinct !{!232, !31}
end_hunk_7
