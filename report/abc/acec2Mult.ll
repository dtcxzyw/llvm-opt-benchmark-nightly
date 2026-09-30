Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acec2Mult?download=true
inline.NumInlined: 256
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Sdb_StoComputeCutsDetect:bb.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.063 = phi i32 [ %i.h, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.val55 = load ptr, ptr %i.g, align 8, !tbaa !36
  %.not = icmp eq ptr %.val55, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @Sdb_StoRefObj(ptr noundef %i.a, i32 noundef %.063)
  %i.h = add nuw nsw i32 %.063, 1                 ; 2 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !70
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  tail call void @Sdb_StoComputeCutsConst0(ptr noundef %i.a, i32 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !186  ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val5765 = load i32, ptr %i.m, align 4, !tbaa !65
  %i.n = icmp sgt i32 %.val5765, 0
  br i1 %i.n, label %.lr.ph67, label %.critedge2

.lr.ph67:                                         ; preds = %.critedge
  %i.o = getelementptr i8, ptr %i.a, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph67, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %i.l, %.lr.ph67 ], [ %i.u, %bb.d ]
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val59.val = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val59.val, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43   ; 2 uses
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.t = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !41
  tail call fastcc void @Sdb_CutAddUnit(ptr %.val.val.i, i32 noundef %i.s)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !186  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val57 = load i32, ptr %i.v, align 4, !tbaa !65
  %i.w = sext i32 %.val57 to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.c, label %.critedge2, !llvm.loop !184

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge
  %i.y = load i32, ptr %i.d, align 8, !tbaa !70
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph70, label %.critedge4

.lr.ph70:                                         ; preds = %.critedge2, %bb.g
  %i.aa = phi ptr [ %i.ah, %bb.g ], [ %i.c, %.critedge2 ] ; 2 uses
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.g ], [ 0, %.critedge2 ] ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %.not52 = icmp eq ptr %.val, null
  br i1 %.not52, label %.critedge4, label %bb.e

bb.e:                                             ; preds = %.lr.ph70
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv73
  %.val56 = load i64, ptr %i.ac, align 4          ; 2 uses
  %i.ad = and i64 %.val56, 2147483648
  %.not.i = icmp ne i64 %i.ad, 0
  %i.ae = and i64 %.val56, 536870911
  %i.af = icmp eq i64 %i.ae, 536870911
  %narrow.i.not = or i1 %.not.i, %i.af
  br i1 %narrow.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc nuw nsw i64 %indvars.iv73 to i32
  tail call void @Sdb_StoMergeCuts(ptr noundef %i.a, i32 noundef %i.ag)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !70
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next74, %i.ak
  br i1 %i.al, label %.lr.ph70, label %.critedge4, !llvm.loop !185

.critedge4:                                       ; preds = %.lr.ph70, %bb.g, %.critedge2
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !75
  %.not53 = icmp eq i32 %i.an, 0
  br i1 %.not53, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge4
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ao, i32 noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7824 ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !48
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.at) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 7832
  %i.aw = load double, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %i.ax = fmul double %i.aw, 1.000000e+02
  %i.ay = load double, ptr %i.as, align 8, !tbaa !48
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.aw, double noundef %i.az) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 7840
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !48 ; 2 uses
  %i.bd = fmul double %i.bc, 1.000000e+02
  %i.be = load double, ptr %i.as, align 8, !tbaa !48
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.bc, double noundef %i.bf) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 7848 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %i.bj = fmul double %i.bi, 1.000000e+02
  %i.bk = load double, ptr %i.as, align 8, !tbaa !48
  %i.bl = fdiv double %i.bj, %i.bk
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %i.bi, double noundef %i.bl) ; 0 uses
  %i.bn = load double, ptr %i.bh, align 8, !tbaa !48
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !70
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !186
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.val3.i = load i32, ptr %i.bt, align 4, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !187
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  %.val.i61 = load i32, ptr %i.bw, align 4, !tbaa !65
  %i.bx = add i32 %.val.i61, %.val3.i
  %i.by = xor i32 %i.bx, -1
  %i.bz = add i32 %i.bq, %i.by
  %i.ca = sitofp i32 %i.bz to double
  %i.cb = fdiv double %i.bn, %i.ca
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.cb) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 7820
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !64
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.ce) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.cg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %Abc_Clock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load i64, ptr %1, align 8, !tbaa !72
  %i.cj = mul nsw i64 %i.ci, 1000000
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !73
  %i.cm = sdiv i64 %i.cl, 1000
  %i.cn = add nsw i64 %i.cm, %i.cj
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.cn, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !74
  %i.cq = sub nsw i64 %.0.i, %i.cp
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15)
  %i.cr = sitofp i64 %i.cq to double
  %i.cs = fdiv double %i.cr, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, double noundef %i.cs)
  br label %bb.j

bb.j:                                             ; preds = %Abc_Clock.exit, %.critedge4
  %i.ct = call ptr @Sdb_StoIterCuts(ptr noundef nonnull %i.a)
  call void @Sdb_StoFree(ptr noundef nonnull %i.a)
  ret ptr %i.ct
}

; Function Attrs: nounwind uwtable
define void @Sdb_StoComputeCutsTest(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @Sdb_StoComputeCutsDetect(ptr noundef %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.c) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !65 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val15, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i.i, 1                     ; 9 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !66
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre40.i = zext nneg i32 %i.i to i64
  %.pre41.i = shl nuw nsw i64 %.pre40.i, 2
  br label %.lr.ph.i15.i

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !42
  store i32 %i.i, ptr %i.d, align 8, !tbaa !66
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi42.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi42.i, i1 false), !tbaa !43
  store i32 %i.i, ptr %i.e, align 4, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !197
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !57 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !60    ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !61 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.as = shl nuw i32 %i.ak, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp slt i32 %i.as, 8
  %2 = add nsw i32 %smax.i.i.i, -9
  %3 = icmp ult i32 %2, -8
  %or.cond = select i1 %min.iters.check, i1 true, i1 %3
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 8      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !43
  %wide.load93 = load <4 x i32>, ptr %5, align 4, !tbaa !43
  %6 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %7 = mul <4 x i32> %wide.load93, <i32 6343, i32 7103, i32 7873, i32 8147>
  %8 = add <4 x i32> %6, %vec.phi                 ; 2 uses
  %9 = add <4 x i32> %7, %vec.phi92               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %9, %8
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.012.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %11, %middle.block ] ; 2 uses
  %xtraiter.a = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.012.i.i.i.prol = phi i32 [ %18, %.lr.ph.i.i.i.prol ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.prol
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = and i64 %indvars.iv.i.i.i.prol, 7
  %15 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = mul i32 %16, %13
  %18 = add i32 %17, %.012.i.i.i.prol             ; 3 uses
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !189

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa125.unr = phi i32 [ poison, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.012.i.i.i.unr = phi i32 [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %19 = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %20 = icmp ugt i64 %19, -4
  br i1 %20, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3.a, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.012.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.i ], [ %.012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  %i.av = and i64 %indvars.iv.i.i.i, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bc = and i64 %indvars.iv.next.i.i.i, 7
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !43
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !190

Vec_MemHashKey.exit.i.i:                          ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %11, %middle.block ], [ %.lcssa125.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !65
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !78
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !78 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !42 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !191

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !43 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !191

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !191

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !65 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !43
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !66
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #23
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !66
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !65
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !42
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !65
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !43
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !197
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !192

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !60    ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.ee = shl nuw i32 %i.ec, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 5 uses
  %min.iters.check98 = icmp slt i32 %i.ee, 8
  %21 = add nsw i32 %smax.i.i, -9
  %22 = icmp ult i32 %21, -8
  %or.cond117 = select i1 %min.iters.check98, i1 true, i1 %22
  br i1 %or.cond117, label %.lr.ph.i.i21.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec100 = and i64 %wide.trip.count.i.i, 8     ; 3 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph99 ], [ %27, %vector.body101 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph99 ], [ %28, %vector.body101 ]
  %23 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index102 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load105 = load <4 x i32>, ptr %23, align 4, !tbaa !43
  %wide.load106 = load <4 x i32>, ptr %24, align 4, !tbaa !43
  %25 = mul <4 x i32> %wide.load105, <i32 1699, i32 4177, i32 5147, i32 5647>
  %26 = mul <4 x i32> %wide.load106, <i32 6343, i32 7103, i32 7873, i32 8147>
  %27 = add <4 x i32> %25, %vec.phi103            ; 2 uses
  %28 = add <4 x i32> %26, %vec.phi104            ; 2 uses
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %29 = icmp eq i64 %index.next109, %n.vec100
  br i1 %29, label %middle.block110, label %vector.body101, !llvm.loop !193

middle.block110:                                  ; preds = %vector.body101
  %bin.rdx111 = add <4 x i32> %28, %27
  %30 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx111) ; 2 uses
  %cmp.n112 = icmp eq i64 %n.vec100, %wide.trip.count.i.i
  br i1 %cmp.n112, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block110
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec100, %middle.block110 ] ; 3 uses
  %.012.i.i22.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %30, %middle.block110 ] ; 2 uses
  %xtraiter131 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader, %.lr.ph.i.i21.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ] ; 3 uses
  %.012.i.i22.prol = phi i32 [ %37, %.lr.ph.i.i21.prol ], [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.prol
  %32 = load i32, ptr %31, align 4, !tbaa !43
  %33 = and i64 %indvars.iv.i.i.prol, 7
  %34 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !43
  %36 = mul i32 %35, %32
  %37 = add i32 %36, %.012.i.i22.prol             ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !194

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ]
  %.012.i.i22.unr = phi i32 [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %38 = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %39 = icmp ugt i64 %38, -4
  br i1 %39, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3.a, %.lr.ph.i.i21 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 6 uses
  %.012.i.i22 = phi i32 [ %i.fg, %.lr.ph.i.i21 ], [ %.012.i.i22.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !43
  %i.eh = and i64 %indvars.iv.i.i, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !43
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !43
  %i.eo = and i64 %indvars.iv.next.i.i, 7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !43
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !43
  %i.ev = and i64 %indvars.iv.next.i.i.1, 7
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !43
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !43
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !43
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %indvars.iv.next.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21, !llvm.loop !195

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21, %middle.block110, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %30, %middle.block110 ], [ %.lcssa.unr, %.lr.ph.i.i21.prol.loopexit ], [ %i.fg, %.lr.ph.i.i21 ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !65
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !42
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !43 ; 5 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !56 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !57 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !61 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !59
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i41 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i42 = icmp eq i32 %bcmp.i41, 0
  br i1 %.not15.i42, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !78
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !42 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !59
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !191

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !43 ; 5 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !191

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !78 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !65 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !43
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !66
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !42 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !66
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !65
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !42
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !65
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !43
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !197 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !57 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !76 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !198 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !56 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !198
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #23
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !76
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !57
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !56
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !60
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !56
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i24 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.it, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #24
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i26
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !59
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !196

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !76
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !197
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !56
  %i.iz = sext i32 %.pre-phi.i to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !59
  %i.jc = load i32, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !61
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.gt, align 8, !tbaa !78
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %.val = load i32, ptr %i.jm, align 4, !tbaa !65
  %i.jn = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.jn, %Vec_MemPush.exit ], [ %i.fm, %.lr.ph.i18 ], [ %i.gr, %bb.u ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #14 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !43
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #22 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #22
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #22 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !203
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #22 ; 0 uses
  call void @free(ptr noundef %i.d) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !203, !noalias !204
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #22, !inline_history !201 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #15

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44}
!3 = distinct !{!3, !44}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS10Gia_Man_t_", !12, i64 0}
!14 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!15 = !{!"p1 _ZTS10Vec_Wec_t_", !12, i64 0}
!16 = !{!"p1 _ZTS10Vec_Mem_t_", !12, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"Sdb_Sto_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !16, i64 48, !8, i64 56, !8, i64 7400, !9, i64 7808, !9, i64 7812, !9, i64 7816, !9, i64 7820, !8, i64 7824, !17, i64 7856}
!19 = !{!18, !13, i64 24}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"p1 _ZTS10Gia_Obj_t_", !12, i64 0}
!22 = !{!"p1 int", !12, i64 0}
!23 = !{!"Vec_Int_t_", !9, i64 0, !9, i64 4, !22, i64 8}
!24 = !{!"p1 _ZTS10Gia_Rpr_t_", !12, i64 0}
!25 = !{!"p1 _ZTS10Vec_Str_t_", !12, i64 0}
!26 = !{!"p1 _ZTS10Abc_Cex_t_", !12, i64 0}
!27 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!28 = !{!"p1 _ZTS10Gia_Plc_t_", !12, i64 0}
!29 = !{!"p1 _ZTS10Vec_Flt_t_", !12, i64 0}
!30 = !{!"float", !8, i64 0}
!31 = !{!"p1 _ZTS10Vec_Vec_t_", !12, i64 0}
!32 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!33 = !{!"p1 _ZTS10Vec_Bit_t_", !12, i64 0}
!34 = !{!"p1 _ZTS10Gia_Dat_t_", !12, i64 0}
!35 = !{!"Gia_Man_t_", !20, i64 0, !20, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !21, i64 32, !22, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !14, i64 64, !14, i64 72, !23, i64 80, !23, i64 96, !9, i64 112, !9, i64 116, !9, i64 120, !23, i64 128, !22, i64 144, !22, i64 152, !14, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !22, i64 184, !24, i64 192, !22, i64 200, !22, i64 208, !22, i64 216, !9, i64 224, !9, i64 228, !22, i64 232, !9, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !15, i64 272, !15, i64 280, !14, i64 288, !12, i64 296, !14, i64 304, !14, i64 312, !25, i64 320, !20, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !26, i64 376, !26, i64 384, !27, i64 392, !23, i64 400, !23, i64 416, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !20, i64 520, !28, i64 528, !13, i64 536, !29, i64 544, !29, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !9, i64 600, !30, i64 604, !30, i64 608, !14, i64 616, !22, i64 624, !9, i64 632, !27, i64 640, !27, i64 648, !27, i64 656, !14, i64 664, !14, i64 672, !14, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !31, i64 736, !29, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !17, i64 776, !17, i64 784, !12, i64 792, !22, i64 800, !9, i64 808, !9, i64 812, !9, i64 816, !9, i64 820, !9, i64 824, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !32, i64 856, !32, i64 864, !32, i64 872, !32, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !33, i64 912, !9, i64 920, !9, i64 924, !9, i64 928, !14, i64 936, !9, i64 944, !9, i64 948, !14, i64 952, !14, i64 960, !27, i64 968, !32, i64 976, !14, i64 984, !14, i64 992, !9, i64 1000, !9, i64 1004, !32, i64 1008, !23, i64 1016, !23, i64 1032, !23, i64 1048, !34, i64 1064, !25, i64 1072, !25, i64 1080, !9, i64 1088, !9, i64 1092, !9, i64 1096, !9, i64 1100, !25, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !27, i64 1136}
!36 = !{!35, !21, i64 32}
!37 = !{!18, !9, i64 0}
!38 = !{!18, !9, i64 4}
!39 = !{!18, !15, i64 40}
!40 = !{!"Vec_Wec_t_", !9, i64 0, !9, i64 4, !14, i64 8}
!41 = !{!40, !14, i64 8}
!42 = !{!23, !22, i64 8}
!43 = !{!9, !9, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!18, !14, i64 32}
!47 = !{!"double", !8, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!18, !9, i64 8}
!52 = !{!18, !16, i64 48}
!53 = !{!"any p2 pointer", !12, i64 0}
!54 = !{!"p2 long", !53, i64 0}
!55 = !{!"Vec_Mem_t_", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !54, i64 24, !14, i64 32, !14, i64 40}
!56 = !{!55, !54, i64 24}
!57 = !{!55, !9, i64 8}
!58 = !{!"p1 long", !12, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!55, !9, i64 0}
!61 = !{!55, !9, i64 12}
!62 = !{!17, !17, i64 0}
!63 = !{!18, !9, i64 12}
!64 = !{!18, !9, i64 7820}
!65 = !{!23, !9, i64 4}
!66 = !{!23, !9, i64 0}
!67 = !{!40, !9, i64 4}
!68 = !{!22, !22, i64 0}
!69 = !{!40, !9, i64 0}
!70 = !{!35, !9, i64 24}
!71 = !{!"timespec", !17, i64 0, !17, i64 8}
!72 = !{!71, !17, i64 0}
!73 = !{!71, !17, i64 8}
!74 = !{!18, !17, i64 7856}
!75 = !{!18, !9, i64 16}
!76 = !{!55, !9, i64 20}
!77 = !{!55, !14, i64 32}
!78 = !{!55, !14, i64 40}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !45}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !45}
!86 = distinct !{!86, !45}
!87 = distinct !{!87, !44, !49, !50}
!88 = distinct !{!88, !45}
!89 = distinct !{!89, !44, !49}
!90 = distinct !{!90, !44, !49, !50}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !44, !49}
!93 = distinct !{!93, !44}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !44, !49, !50}
!101 = distinct !{!101, !44, !49}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44, !49, !50}
!105 = distinct !{!105, !44, !50, !49}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !44, !49, !50}
!113 = distinct !{!113, !44, !49}
!114 = distinct !{!114, !44, !49, !50}
!115 = distinct !{!115, !44, !50, !49}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !44, !49, !50}
!122 = distinct !{!122, !44, !49}
!123 = distinct !{!123, !44, !49, !50}
!124 = distinct !{!124, !44, !50, !49}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = !{!"Sdb_Cut_t_", !17, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 23, !8, i64 24}
!138 = !{!137, !9, i64 8}
!139 = !{!137, !17, i64 0}
!140 = !{!"p1 _ZTS10Sdb_Cut_t_", !12, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!98}
!143 = !{!99}
!144 = !{!110}
!145 = !{!111}
!146 = !{!119}
!147 = !{!120}
!148 = !{!18, !9, i64 7808}
!149 = !{!18, !9, i64 7812}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !44}
!154 = distinct !{!154, !44}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !44}
!157 = distinct !{!157, !44}
!158 = distinct !{!158, !44}
!159 = distinct !{!159, !44}
!160 = distinct !{!160, !44, !49, !50}
!161 = distinct !{!161, !44, !50, !49}
!162 = distinct !{!162, !44}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !45}
!165 = distinct !{!165, !44}
!166 = distinct !{!166, !44}
!167 = distinct !{!167, !45}
!168 = distinct !{!168, !44}
!169 = distinct !{!169, !44}
!170 = distinct !{!170, !44}
!171 = distinct !{!171, !44}
!172 = distinct !{!172, !44, !49, !50}
!173 = distinct !{!173, !44, !49, !50}
!174 = distinct !{!174, !44, !49, !50}
!175 = distinct !{!175, !44}
!176 = distinct !{!176, !44}
!177 = distinct !{!177, !44}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = distinct !{!181, !44}
!182 = !{!14, !14, i64 0}
!183 = distinct !{!183, !44}
!184 = distinct !{!184, !44}
!185 = distinct !{!185, !44}
!186 = !{!35, !14, i64 64}
!187 = !{!35, !14, i64 72}
!188 = distinct !{!188, !44, !49, !50}
!189 = distinct !{!189, !45}
!190 = distinct !{!190, !44, !49}
!191 = distinct !{!191, !44}
!192 = distinct !{!192, !44}
!193 = distinct !{!193, !44, !49, !50}
!194 = distinct !{!194, !45}
!195 = distinct !{!195, !44, !49}
!196 = distinct !{!196, !44}
!197 = !{!55, !9, i64 4}
!198 = !{!55, !9, i64 16}
!199 = distinct !{!199, !"vprintf"}
!200 = distinct !{!200, !199, !"vprintf: argument 0"}
!201 = distinct !{null}
!202 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!203 = !{!202, !202, i64 0}
!204 = !{!200}
end_hunk_0
