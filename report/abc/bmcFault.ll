Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcFault?download=true
inline.NumInlined: 577
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cnf_AddCardinConstrPairWise:.critedge.preheader
  %i.aj = add nsw i64 %n.vec, %i.ah
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !40
  store <4 x i32> %broadcast.splat, ptr %i.ak, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.aj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  store i32 %i.c, ptr %i.am, align 4, !tbaa !40
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !103

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %Vec_IntGrow.exit.i
  store i32 %.0, ptr %i.d, align 4, !tbaa !43
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %bb.b, %._crit_edge.i
  store i32 %i.g, ptr %i.a, align 4, !tbaa !40
  %i.an = shl nsw i32 %i.c, 1
  %i.ao = or disjoint i32 %i.an, 1
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ap) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntFillExtra.exit, %bb.a
  %i.ar = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val35 = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.as = add nsw i32 %.0, -1
  call fastcc void @Cnf_AddCardinConstrRange(ptr noundef %0, ptr noundef %.val35, i32 noundef 0, i32 noundef %i.as, ptr noundef %i.a)
  %.val31 = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = sext i32 %2 to i64                      ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %.val31, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = or disjoint i32 %i.aw, 1
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.az = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ay) #25 ; 0 uses
  %.not30 = icmp eq i32 %3, 0
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.ba = getelementptr [4 x i8], ptr %.val, i64 %i.at
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !40
  %i.bd = shl nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !40
  %i.be = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ay) #25 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.d, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #3

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Cnf_AddCardinConstrRange(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = alloca [3 x i32], align 4                ; 11 uses
  %i.c = sub nsw i32 %3, %2                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 1
  %i.f = add nuw i32 %i.e, %2                     ; 3 uses
  %i.g = add nuw nsw i32 %i.c, 1
  %i.h = lshr i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.o = zext nneg i32 %2 to i64
  %i.p = zext nneg i32 %i.h to i64
  %i.q = add nuw i32 %i.f, 1
  %wide.trip.count = zext i32 %i.q to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.o, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !40     ; 4 uses
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  %i.t = add nsw i32 %i.r, 2
  store i32 %i.t, ptr %4, align 4, !tbaa !40
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.w = load i32, ptr %gep, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.x = shl nsw i32 %i.r, 1                      ; 3 uses
  %i.y = or disjoint i32 %i.x, 1
  store i32 %i.x, ptr %i.b, align 4, !tbaa !40
  %i.z = shl nsw i32 %i.v, 1                      ; 2 uses
  %i.aa = or disjoint i32 %i.z, 1
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !40
  %i.ab = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #25 ; 0 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !40
  %i.ac = shl nsw i32 %i.w, 1                     ; 2 uses
  %i.ad = or disjoint i32 %i.ac, 1
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !40
  %i.ae = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j) #25 ; 0 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !40
  store i32 %i.z, ptr %i.i, align 4, !tbaa !40
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !40
  %i.af = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !40
  %i.ah = load i32, ptr %gep, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ai = shl nsw i32 %i.s, 1                     ; 2 uses
  %i.aj = or disjoint i32 %i.ai, 1                ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !40
  %i.ak = shl nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !40
  %i.al = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m) #25 ; 0 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !40
  %i.am = shl nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.am, ptr %i.l, align 4, !tbaa !40
  %i.an = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m) #25 ; 0 uses
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !40
  %i.ao = or disjoint i32 %i.ak, 1
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !40
  %i.ap = or disjoint i32 %i.am, 1
  store i32 %i.ap, ptr %i.m, align 4, !tbaa !40
  %i.aq = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 %i.r, ptr %i.u, align 4, !tbaa !40
  store i32 %i.s, ptr %gep, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !104

bb.d:                                             ; preds = %bb.c
  call fastcc void @Cnf_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.f, ptr noundef %4)
  %i.ar = add nuw nsw i32 %i.f, 1
  call fastcc void @Cnf_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ar, i32 noundef %3, ptr noundef %4)
  call fastcc void @Cnf_AddCardinConstrMerge(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cnf_AddCardinConstrGeneral(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
.critedge:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  %i.b = alloca [3 x i32], align 4                ; 11 uses
  %i.c = alloca [3 x i32], align 4                ; 11 uses
  %i.d = alloca [2 x i32], align 4                ; 8 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.f = tail call i32 @sat_solver_nvars(ptr noundef %0) #25 ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val77 = load i32, ptr %i.g, align 4, !tbaa !43 ; 11 uses
  %i.h = mul nsw i32 %.val77, %.val77
  %i.i = add nsw i32 %i.h, %i.f
  tail call void @sat_solver_setnvars(ptr noundef %0, i32 noundef %i.i) #25
  %i.j = icmp sgt i32 %.val77, 0
  br i1 %i.j, label %.lr.ph98, label %.critedge.._crit_edge99_crit_edge

.critedge.._crit_edge99_crit_edge:                ; preds = %.critedge
  %.pre = add nsw i32 %.val77, -1
  br label %._crit_edge99

.lr.ph98:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = add nsw i32 %.val77, -1                  ; 4 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = zext nneg i32 %.val77 to i64             ; 2 uses
  %i.y = sext i32 %i.f to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %.val77 to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph98, %bb.m
  %indvars.iv103 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next104, %bb.m ] ; 6 uses
  %.197 = phi i32 [ 0, %.lr.ph98 ], [ %i.dg, %bb.m ] ; 2 uses
  %i.z = and i32 %.197, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = add nsw i64 %indvars.iv103, -1
  %i.ac = mul nsw i64 %i.ab, %i.x
  %i.ad = add nsw i64 %i.ac, %i.y                 ; 6 uses
  %i.ae = mul nuw nsw i64 %indvars.iv103, %i.x
  %i.af = add nsw i64 %i.ae, %i.y                 ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.ah = and i32 %i.ag, 1                        ; 3 uses
  %.not75 = icmp eq i32 %i.ah, 0
  br i1 %.not75, label %bb.c, label %Cnf_AddCardinVar.exit

Cnf_AddCardinVar.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ai = shl nsw i64 %i.af, 1                    ; 2 uses
  %i.aj = trunc nsw i64 %i.ai to i32
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !40
  %4 = shl nsw i64 %i.ad, 1                       ; 2 uses
  %5 = trunc i64 %4 to i32
  %i.ak = or disjoint i32 %5, 1
  store i32 %i.ak, ptr %i.k, align 4, !tbaa !40
  %i.al = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.l) #25
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %sat_solver_add_buffer.exit, label %bb.b

bb.b:                                             ; preds = %Cnf_AddCardinVar.exit
  %i.an = trunc i64 %i.ai to i32
  %i.ao = or disjoint i32 %i.an, 1
  store i32 %i.ao, ptr %i.d, align 4, !tbaa !40
  %6 = trunc nsw i64 %4 to i32
  store i32 %6, ptr %i.k, align 4, !tbaa !40
  %i.ap = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.l) #25 ; 0 uses
  br label %sat_solver_add_buffer.exit

sat_solver_add_buffer.exit:                       ; preds = %Cnf_AddCardinVar.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.c

bb.c:                                             ; preds = %sat_solver_add_buffer.exit, %bb.a
  %i.aq = add nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.val77
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not.i78 = icmp eq i64 %indvars.iv103, 0       ; 2 uses
  %i.as = trunc nsw i64 %i.ad to i32
  %i.at = trunc nsw i64 %i.ad to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Cnf_AddCardinVar.exit89
  %indvars.iv100 = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next101, %Cnf_AddCardinVar.exit89 ] ; 7 uses
  %i.au = phi i32 [ %i.aq, %.lr.ph ], [ %i.cn, %Cnf_AddCardinVar.exit89 ] ; 4 uses
  %i.av = add nsw i64 %indvars.iv100, %i.af       ; 2 uses
  br i1 %.not.i78, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = add nsw i64 %indvars.iv100, %i.ad
  %i.ax = add nsw i32 %i.au, %i.as
  %i.ay = trunc nsw i64 %i.aw to i32
  br label %Cnf_AddCardinVar.exit83

bb.f:                                             ; preds = %bb.d
  %.val.i79 = load ptr, ptr %i.m, align 8, !tbaa !42 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i79, i64 %indvars.iv100
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = zext nneg i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val.i79, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !40
  br label %Cnf_AddCardinVar.exit83

Cnf_AddCardinVar.exit83:                          ; preds = %bb.e, %bb.f
  %i.be = phi i32 [ %i.ay, %bb.e ], [ %i.ba, %bb.f ]
  %i.bf = phi i32 [ %i.ax, %bb.e ], [ %i.bd, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bg = shl nsw i64 %i.av, 1                    ; 2 uses
  %i.bh = trunc nsw i64 %i.bg to i32              ; 2 uses
  store i32 %i.bh, ptr %i.c, align 4, !tbaa !40
  %i.bi = shl nsw i32 %i.be, 1                    ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 1
  store i32 %i.bj, ptr %i.n, align 4, !tbaa !40
  %i.bk = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.o) #25 ; 0 uses
  store i32 %i.bh, ptr %i.c, align 4, !tbaa !40
  %i.bl = shl nsw i32 %i.bf, 1                    ; 2 uses
  %i.bm = or disjoint i32 %i.bl, 1
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !40
  %i.bn = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.o) #25 ; 0 uses
  %i.bo = trunc i64 %i.bg to i32
  %i.bp = or disjoint i32 %i.bo, 1
  store i32 %i.bp, ptr %i.c, align 4, !tbaa !40
  store i32 %i.bi, ptr %i.n, align 4, !tbaa !40
  store i32 %i.bl, ptr %i.o, align 4, !tbaa !40
  %i.bq = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.p) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br i1 %.not.i78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Cnf_AddCardinVar.exit83
  %i.br = add nsw i64 %indvars.iv100, %i.ad
  %i.bs = add nsw i32 %i.au, %i.at
  %i.bt = trunc nsw i64 %i.br to i32
  br label %Cnf_AddCardinVar.exit89

bb.h:                                             ; preds = %Cnf_AddCardinVar.exit83
  %.val.i85 = load ptr, ptr %i.m, align 8, !tbaa !42 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val.i85, i64 %indvars.iv100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = zext nneg i32 %i.au to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val.i85, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  br label %Cnf_AddCardinVar.exit89

Cnf_AddCardinVar.exit89:                          ; preds = %bb.g, %bb.h
  %i.bz = phi i32 [ %i.bt, %bb.g ], [ %i.bv, %bb.h ]
  %i.ca = phi i32 [ %i.bs, %bb.g ], [ %i.by, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.cb = trunc nsw i64 %i.av to i32
  %i.cc = shl i32 %i.cb, 1
  %i.cd = add i32 %i.cc, 2                        ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 1                ; 2 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !40
  %i.cf = shl nsw i32 %i.bz, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.q, align 4, !tbaa !40
  %i.cg = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.r) #25 ; 0 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !40
  %i.ch = shl nsw i32 %i.ca, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.q, align 4, !tbaa !40
  %i.ci = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.r) #25 ; 0 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !40
  %i.cj = or disjoint i32 %i.cf, 1
  store i32 %i.cj, ptr %i.q, align 4, !tbaa !40
  %i.ck = or disjoint i32 %i.ch, 1
  store i32 %i.ck, ptr %i.r, align 4, !tbaa !40
  %i.cl = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.s) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %i.cm = trunc i64 %indvars.iv100 to i32
  %i.cn = add i32 %i.cm, 3                        ; 2 uses
  %i.co = icmp slt i32 %i.cn, %.val77
  br i1 %i.co, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %Cnf_AddCardinVar.exit89
  %i.cp = trunc nuw i64 %indvars.iv.next101 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i32 [ %i.ah, %bb.c ], [ %i.cp, %._crit_edge.loopexit ]
  %i.cq = icmp eq i32 %.0.lcssa, %i.t
  br i1 %i.cq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %.not.i90 = icmp eq i64 %indvars.iv103, 0
  br i1 %.not.i90, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = trunc i64 %i.ad to i32
  %i.cs = add i32 %i.t, %i.cr
  br label %Cnf_AddCardinVar.exit92

bb.k:                                             ; preds = %bb.i
  %.val.i91 = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val.i91, i64 %i.u
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !40
  br label %Cnf_AddCardinVar.exit92

Cnf_AddCardinVar.exit92:                          ; preds = %bb.j, %bb.k
  %i.cv = phi i32 [ %i.cs, %bb.j ], [ %i.cu, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cw = trunc i64 %i.af to i32
  %i.cx = add i32 %.val77, %i.cw
  %i.cy = shl i32 %i.cx, 1
  %i.cz = add i32 %i.cy, -2                       ; 2 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !40
  %i.da = shl nsw i32 %i.cv, 1                    ; 2 uses
  %i.db = or disjoint i32 %i.da, 1
  store i32 %i.db, ptr %i.v, align 4, !tbaa !40
  %i.dc = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.w) #25
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %sat_solver_add_buffer.exit95, label %bb.l

bb.l:                                             ; preds = %Cnf_AddCardinVar.exit92
  %i.de = or disjoint i32 %i.cz, 1
  store i32 %i.de, ptr %i.a, align 4, !tbaa !40
  store i32 %i.da, ptr %i.v, align 4, !tbaa !40
  %i.df = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.w) #25 ; 0 uses
  br label %sat_solver_add_buffer.exit95

sat_solver_add_buffer.exit95:                     ; preds = %Cnf_AddCardinVar.exit92, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %sat_solver_add_buffer.exit95
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.dg = add nuw nsw i32 %.197, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge99, label %bb.a, !llvm.loop !106

._crit_edge99:                                    ; preds = %bb.m, %.critedge.._crit_edge99_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.critedge.._crit_edge99_crit_edge ], [ %i.t, %bb.m ]
  %i.dh = mul nsw i32 %.pre-phi, %.val77
  %i.di = add i32 %i.f, %2
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = shl i32 %i.dj, 1                        ; 2 uses
  %i.dl = or disjoint i32 %i.dk, 1
  store i32 %i.dl, ptr %i.e, align 4, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.dn = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.dm) #25 ; 0 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge99
  %i.do = add i32 %i.dk, -2
  store i32 %i.do, ptr %i.e, align 4, !tbaa !40
  %i.dp = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.dm) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cnf_AddCardinConstrTest() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 16, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !42
  store i32 8, ptr %i.b, align 4, !tbaa !43
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.e, align 4, !tbaa !40
  %i.f = tail call ptr @sat_solver_new() #25      ; 6 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.f, i32 noundef 8) #25
  tail call void @Cnf_AddCardinConstrPairWise(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1)
  %i.g = getelementptr i8, ptr %i.f, i64 328      ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %Vec_IntPush.exit.7, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.dm, %Vec_IntPush.exit.7 ] ; 2 uses
  %i.h = tail call i32 @sat_solver_solve(ptr noundef %i.f, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #25
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !43
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.0) ; 0 uses
  %.promoted32 = load ptr, ptr %i.d, align 8, !tbaa !42 ; 3 uses
  %.promoted29 = load i32, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.val28 = load ptr, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  %i.j = load i32, ptr %.val28, align 4, !tbaa !40
  %i.k = icmp eq i32 %i.j, 1
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %.promoted29, 0
  br i1 %i.m, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %.promoted32, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted32, i64 noundef 64) #23
  %.val27.pre = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.c
  %.val27 = phi ptr [ %.val28, %bb.c ], [ %.val27.pre, %bb.e ], [ %.val28, %bb.f ]
  %storemerge34 = phi ptr [ %.promoted32, %bb.c ], [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 3 uses
  %spec.select.sink.i30 = phi i32 [ %.promoted29, %bb.c ], [ 16, %bb.e ], [ 16, %bb.f ] ; 2 uses
  store i32 %i.l, ptr %storemerge34, align 4, !tbaa !40
  %i.p = load i32, ptr %.val27, align 4, !tbaa !40
  %i.q = icmp eq i32 %i.p, 1
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.r) ; 0 uses
  %.val28.1 = load ptr, ptr %i.g, align 8, !tbaa !60 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val28.1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40
  %i.v = icmp eq i32 %i.u, 1
  %i.w = zext i1 %i.v to i32
  %i.x = or disjoint i32 %i.w, 2
  %i.y = icmp eq i32 %spec.select.sink.i30, 1
  br i1 %i.y, label %bb.g, label %Vec_IntPush.exit.1

bb.g:                                             ; preds = %Vec_IntPush.exit
  %i.z = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge34, i64 noundef 64) #23
  %.val27.pre.1 = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %Vec_IntPush.exit.1

Vec_IntPush.exit.1:                               ; preds = %bb.g, %Vec_IntPush.exit
  %.val27.1 = phi ptr [ %.val28.1, %Vec_IntPush.exit ], [ %.val27.pre.1, %bb.g ]
  %storemerge34.1 = phi ptr [ %storemerge34, %Vec_IntPush.exit ], [ %i.z, %bb.g ] ; 4 uses
  %spec.select.sink.i30.1 = phi i32 [ %spec.select.sink.i30, %Vec_IntPush.exit ], [ 16, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge34.1, i64 4
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.val27.1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ad = icmp eq i32 %i.ac, 1
  %i.ae = zext i1 %i.ad to i32
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ae) ; 0 uses
  %.val28.2 = load ptr, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val28.2, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = zext i1 %i.ai to i32
  %i.ak = or disjoint i32 %i.aj, 4
  %i.al = icmp eq i32 %spec.select.sink.i30.1, 2
  br i1 %i.al, label %bb.h, label %Vec_IntPush.exit.2

bb.h:                                             ; preds = %Vec_IntPush.exit.1
  %.not9.i.i.2 = icmp eq ptr %storemerge34.1, null
  br i1 %.not9.i.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge34.1, i64 noundef 64) #23
  %.val27.pre.2 = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %Vec_IntPush.exit.2

bb.j:                                             ; preds = %bb.h
  %i.an = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit.2

Vec_IntPush.exit.2:                               ; preds = %bb.j, %bb.i, %Vec_IntPush.exit.1
  %.val27.2 = phi ptr [ %.val28.2, %Vec_IntPush.exit.1 ], [ %.val27.pre.2, %bb.i ], [ %.val28.2, %bb.j ]
  %storemerge34.2 = phi ptr [ %storemerge34.1, %Vec_IntPush.exit.1 ], [ %i.am, %bb.i ], [ %i.an, %bb.j ] ; 4 uses
  %spec.select.sink.i30.2 = phi i32 [ %spec.select.sink.i30.1, %Vec_IntPush.exit.1 ], [ 16, %bb.i ], [ 16, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge34.2, i64 8
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %.val27.2, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.as) ; 0 uses
  %.val28.3 = load ptr, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val28.3, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = zext i1 %i.aw to i32
  %i.ay = or disjoint i32 %i.ax, 6
  %i.az = icmp eq i32 %spec.select.sink.i30.2, 3
  br i1 %i.az, label %bb.k, label %Vec_IntPush.exit.3

bb.k:                                             ; preds = %Vec_IntPush.exit.2
  %.not9.i.i.3 = icmp eq ptr %storemerge34.2, null
  br i1 %.not9.i.i.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge34.2, i64 noundef 64) #23
  %.val27.pre.3 = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %Vec_IntPush.exit.3

bb.m:                                             ; preds = %bb.k
  %i.bb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit.3

Vec_IntPush.exit.3:                               ; preds = %bb.m, %bb.l, %Vec_IntPush.exit.2
end_hunk_0
