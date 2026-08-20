inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FontPageUsed:bb.a
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ah = phi ptr [ %i.q, %.thread ], [ %.pre, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 3 uses
  store ptr %i.aj, ptr @zz_tmp, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %0, ptr %i.am, align 8, !tbaa !8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = load i32, ptr @font_curr_page, align 4, !tbaa !4
  %i.ap = trunc i32 %i.ao to i16
  store i16 %i.ap, ptr %i.a, align 2, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @FontNeeded(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @font_root, align 8, !tbaa !9 ; 3 uses
  %.023.in39 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.02340 = load ptr, ptr %.023.in39, align 8, !tbaa !8 ; 2 uses
  %.not41 = icmp eq ptr %.02340, %i.a
  br i1 %.not41, label %._crit_edge, label %.preheader31

.loopexit30.loopexit:                             ; preds = %.loopexit
  %.pre = load ptr, ptr @font_root, align 8, !tbaa !9
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %.preheader29
  %i.b = phi ptr [ %i.c, %.preheader29 ], [ %.pre, %.loopexit30.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02442, %.preheader29 ], [ 0, %.loopexit30.loopexit ] ; 2 uses
  %.023.in = getelementptr inbounds nuw i8, ptr %.02343, i64 8
  %.023 = load ptr, ptr %.023.in, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %.023, %i.b
  br i1 %.not, label %._crit_edge, label %.preheader31, !llvm.loop !117

.preheader31:                                     ; preds = %bb.a, %.loopexit30
  %i.c = phi ptr [ %i.b, %.loopexit30 ], [ %i.a, %bb.a ]
  %.02343 = phi ptr [ %.023, %.loopexit30 ], [ %.02340, %bb.a ] ; 2 uses
  %.02442 = phi i32 [ %.1.lcssa, %.loopexit30 ], [ 1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader31, %bb.b
  %.023.pn = phi ptr [ %.021, %bb.b ], [ %.02343, %.preheader31 ]
  %.021.in = getelementptr inbounds nuw i8, ptr %.023.pn, i64 16
  %.021 = load ptr, ptr %.021.in, align 8, !tbaa !8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %.preheader29, !llvm.loop !118

.preheader29:                                     ; preds = %bb.b
  %.022.in34 = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.02235 = load ptr, ptr %.022.in34, align 8, !tbaa !8 ; 2 uses
  %.not2636 = icmp eq ptr %.02235, %.021
  br i1 %.not2636, label %.loopexit30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader29
  %i.g = icmp eq i32 %.02442, 0
  %i.h = select i1 %i.g, ptr @.str.72, ptr @.str.71
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.02238 = phi ptr [ %.022, %.loopexit ], [ %.02235, %.preheader.preheader ] ; 2 uses
  %.137 = phi ptr [ @.str.72, %.loopexit ], [ %i.h, %.preheader.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.022.pn = phi ptr [ %.020, %bb.c ], [ %.02238, %.preheader ]
  %.020.in = getelementptr inbounds nuw i8, ptr %.022.pn, i64 16
  %.020 = load ptr, ptr %.020.in, align 8, !tbaa !8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.pn28 = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.e ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn28, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !8   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !8
  switch i8 %i.o, label %bb.f [
    i8 0, label %bb.e
    i8 11, label %.loopexit
    i8 12, label %.loopexit
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.q = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %i.p, ptr noundef nonnull @.str.68) #14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.e, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 64
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %.137, ptr noundef nonnull %i.r) #14 ; 0 uses
  %.022.in = getelementptr inbounds nuw i8, ptr %.02238, i64 8
  %.022 = load ptr, ptr %.022.in, align 8, !tbaa !8 ; 2 uses
  %.not26 = icmp eq ptr %.022, %.021
  br i1 %.not26, label %.loopexit30.loopexit, label %.preheader, !llvm.loop !120

._crit_edge:                                      ; preds = %.loopexit30, %bb.a
  %.024.lcssa = phi i32 [ 1, %bb.a ], [ %.1.lcssa, %.loopexit30 ]
  ret i32 %.024.lcssa
}

declare ptr @InsertSym(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare i32 @DbRetrieve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SwitchScope(ptr noundef) local_unnamed_addr #1

declare ptr @ReadFromFile(i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @UnSwitchScope(ptr noundef) local_unnamed_addr #1

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SymName(ptr noundef) local_unnamed_addr #1

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #1

declare i32 @MapLoad(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @MakeWordTwo(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @StringInt(i32 noundef) local_unnamed_addr #1

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @ReadCharMetrics(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i16 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 14 uses
  %i.b = alloca [512 x i8], align 16              ; 11 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn = phi ptr [ %i.k, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !8   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %.preheader168, !llvm.loop !121

.preheader168:                                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 4 uses
  %i.p = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef %8)
  %.not187 = icmp eq ptr %i.p, null
  br i1 %.not187, label %.critedge, label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader168
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = icmp ne i32 %1, 0
  %9 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %2, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph193, %._crit_edge.thread
  %.0129188 = phi i32 [ undef, %.lr.ph193 ], [ %.1130.lcssa235, %._crit_edge.thread ] ; 2 uses
  %i.s = phi <4 x i32> [ undef, %.lr.ph193 ], [ %i.ex, %._crit_edge.thread ] ; 2 uses
  %i.t = call i32 @StringBeginsWith(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.131) #14
  %.not141 = icmp eq i32 %i.t, 0
  br i1 %.not141, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @StringBeginsWith(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) #14
  %.not142 = icmp eq i32 %i.u, 0
  br i1 %.not142, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %7, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %7, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  switch i8 %i.y, label %.lr.ph [
    i8 32, label %bb.f
    i8 10, label %._crit_edge.thread
  ]

.lr.ph:                                           ; preds = %bb.f, %.loopexit164
  %.pn266 = phi i64 [ %i.dh, %.loopexit164 ], [ %indvars.iv, %bb.f ]
  %.0115179 = phi i32 [ %.1, %.loopexit164 ], [ 0, %bb.f ] ; 5 uses
  %.0116178 = phi i32 [ %.1117, %.loopexit164 ], [ 0, %bb.f ] ; 5 uses
  %.1130173 = phi i32 [ %.2131, %.loopexit164 ], [ %.0129188, %bb.f ] ; 5 uses
  %.1133172.in = phi i64 [ %indvars.iv.next213, %.loopexit164 ], [ %indvars.iv, %bb.f ] ; 6 uses
  %.0135171 = phi i8 [ %.1136, %.loopexit164 ], [ 0, %bb.f ] ; 8 uses
  %i.z = phi <4 x i32> [ %i.cz, %.loopexit164 ], [ %i.s, %bb.f ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %.pn266 ; 4 uses
  %i.ab = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.b) #14 ; 0 uses
  %lhsv = load i16, ptr %i.b, align 16            ; 2 uses
  %.not150 = icmp eq i16 %lhsv, 78
  br i1 %.not150, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ac = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.ad = load i8, ptr %i.q, align 4
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %i.b, i32 noundef %i.af) #14
  br label %bb.x

bb.h:                                             ; preds = %.lr.ph
  %i.ah = load i16, ptr %i.b, align 16
  %i.ai = xor i16 %i.ah, 22615
  %i.aj = getelementptr i8, ptr %i.b, i64 2
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = zext i8 %i.ak to i16
  %i.am = or i16 %i.ai, %i.al
  %i.an = icmp ne i16 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.136, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.ar = load float, ptr %i.c, align 4, !tbaa !51
  %i.as = fptosi float %i.ar to i32
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  switch i16 %lhsv, label %bb.x [
    i16 66, label %bb.k
    i16 76, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.at = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #14 ; 0 uses
  %i.au = load float, ptr %i.d, align 4, !tbaa !51
  %i.av = load float, ptr %i.e, align 4, !tbaa !51
  %i.aw = load float, ptr %i.f, align 4, !tbaa !51
  %i.ax = load float, ptr %i.g, align 4, !tbaa !51
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.au, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.aw, i64 3
  %i.bc = fptosi <4 x float> %i.bb to <4 x i32>
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr @BackEnd, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !49
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = icmp ne i8 %.0135171, 0
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.bi = zext i8 %.0135171 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bi ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %4, align 4, !tbaa !4
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bj, align 1, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = load i32, ptr %4, align 4, !tbaa !4     ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %4, align 4, !tbaa !4
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds i8, ptr %3, i64 %i.bq
  store i8 %.0135171, ptr %i.br, align 1, !tbaa !8
  %sext221 = shl i64 %.1133172.in, 32
  %i.bs = ashr exact i64 %sext221, 32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.p ], [ %i.bs, %bb.o ]
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next200
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 32
  br i1 %i.bv, label %bb.p, label %.preheader166, !llvm.loop !122

.loopexit:                                        ; preds = %.critedge6
  br label %.preheader166, !llvm.loop !123

.preheader166:                                    ; preds = %bb.p, %.loopexit
  %i.bw = phi i8 [ %i.ct, %.loopexit ], [ %i.bu, %bb.p ]
  %.3.in = phi i64 [ %indvars.iv205, %.loopexit ], [ %indvars.iv.next200, %bb.p ] ; 2 uses
  %sext = shl i64 %.3.in, 32
  %i.bx = ashr exact i64 %sext, 32                ; 2 uses
  switch i8 %i.bw, label %bb.q [
    i8 59, label %.critedge4
    i8 10, label %.critedge4
  ]

bb.q:                                             ; preds = %.preheader166
  %i.by = getelementptr inbounds i8, ptr %i.a, i64 %i.bx
  %i.bz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.by, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.ca = load i8, ptr %i.q, align 4
  %i.cb = and i8 %i.ca, 127
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = call zeroext i8 @MapCharEncoding(ptr noundef nonnull %i.b, i32 noundef %i.cc) #14 ; 2 uses
  %.not159 = icmp eq i8 %i.cd, 0
  br i1 %.not159, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load i32, ptr %4, align 4, !tbaa !4     ; 2 uses
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %4, align 4, !tbaa !4
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds i8, ptr %3, i64 %i.cg
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ci = call ptr @FileName(i16 noundef zeroext %5) #14
  %i.cj = load i32, ptr %7, align 4, !tbaa !4
  %i.ck = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 1, ptr noundef nonnull @.str.140, i32 noundef 2, ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef %i.ci, i32 noundef %i.cj) #14 ; 0 uses
  store i8 1, ptr %i.bj, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cl = load i32, ptr %4, align 4, !tbaa !4
  %i.cm = icmp sgt i32 %i.cl, 507
  br i1 %i.cm, label %bb.u, label %.preheader288

bb.u:                                             ; preds = %bb.t
  %i.cn = call ptr @FileName(i16 noundef zeroext %5) #14
  %i.co = load i32, ptr %7, align 4, !tbaa !4
  %i.cp = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef %i.cn, i32 noundef %i.co) #14 ; 0 uses
  br label %.preheader288

.preheader288:                                    ; preds = %bb.u, %bb.t
  br label %bb.v

bb.v:                                             ; preds = %.preheader288, %bb.w
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %bb.w ], [ %i.bx, %.preheader288 ] ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv202
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  switch i8 %i.cr, label %bb.w [
    i8 32, label %.critedge6.preheader
    i8 59, label %.critedge6.preheader
  ]

.critedge6.preheader:                             ; preds = %bb.v, %bb.v
  br label %.critedge6

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, 1
  br label %bb.v, !llvm.loop !124

.critedge6:                                       ; preds = %.critedge6.preheader, %.critedge6
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.critedge6 ], [ %indvars.iv202, %.critedge6.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv205
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 32
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1
  br i1 %i.cu, label %.critedge6, label %.loopexit, !llvm.loop !125

.critedge4:                                       ; preds = %.preheader166, %.preheader166
  %i.cv = load i32, ptr %4, align 4, !tbaa !4     ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %4, align 4, !tbaa !4
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds i8, ptr %3, i64 %i.cx
  store i8 0, ptr %i.cy, align 1, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %bb.j, %bb.i, %bb.l, %.critedge4, %bb.k, %bb.g
  %.1136 = phi i8 [ %i.ag, %bb.g ], [ %.0135171, %bb.i ], [ %.0135171, %bb.k ], [ %.0135171, %.critedge4 ], [ %.0135171, %bb.l ], [ %.0135171, %bb.j ] ; 3 uses
  %.6.in = phi i64 [ %.1133172.in, %bb.g ], [ %.1133172.in, %bb.i ], [ %.1133172.in, %bb.k ], [ %.3.in, %.critedge4 ], [ %.1133172.in, %bb.l ], [ %.1133172.in, %bb.j ]
  %.2131 = phi i32 [ %.1130173, %bb.g ], [ %i.as, %bb.i ], [ %.1130173, %bb.k ], [ %.1130173, %.critedge4 ], [ %.1130173, %bb.l ], [ %.1130173, %bb.j ] ; 6 uses
  %.1117 = phi i32 [ %.0116178, %bb.g ], [ 1, %bb.i ], [ %.0116178, %bb.k ], [ %.0116178, %.critedge4 ], [ %.0116178, %bb.l ], [ %.0116178, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %.0115179, %bb.g ], [ %.0115179, %bb.i ], [ 1, %bb.k ], [ %.0115179, %.critedge4 ], [ %.0115179, %bb.l ], [ %.0115179, %bb.j ] ; 2 uses
  %i.cz = phi <4 x i32> [ %i.z, %bb.g ], [ %i.z, %bb.i ], [ %i.bc, %bb.k ], [ %i.z, %.critedge4 ], [ %i.z, %bb.l ], [ %i.z, %bb.j ] ; 5 uses
  %sext222 = shl i64 %.6.in, 32
  %i.da = ashr exact i64 %sext222, 32
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %bb.z ], [ %i.da, %bb.x ] ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv208
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  switch i8 %i.dc, label %bb.z [
    i8 59, label %.preheader
    i8 10, label %._crit_edge
  ]

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1
  br label %bb.y, !llvm.loop !126

.preheader:                                       ; preds = %bb.y, %.preheader
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.preheader ], [ %indvars.iv208, %bb.y ]
  %indvars.iv.next213 = add nsw i64 %indvars.iv212, 1 ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next213
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !8   ; 2 uses
  %i.df = icmp eq i8 %i.de, 32
  br i1 %i.df, label %.preheader, label %.loopexit164, !llvm.loop !127

.loopexit164:                                     ; preds = %.preheader
  %i.dg = icmp eq i8 %i.de, 10
  %sext220 = shl i64 %indvars.iv.next213, 32
  %i.dh = ashr exact i64 %sext220, 32
  br i1 %i.dg, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %.loopexit164, %bb.y
  %i.di = icmp eq i32 %.1, 0
  %.not144 = icmp eq i8 %.1136, 0
  br i1 %.not144, label %._crit_edge.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.dj = icmp eq i32 %.1117, 0
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call ptr @FileName(i16 noundef zeroext %5) #14
  %i.dl = load i32, ptr %7, align 4, !tbaa !4
  %i.dm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 3, ptr noundef nonnull @.str.142, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef %i.dk, i32 noundef %i.dl) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = call ptr @FileName(i16 noundef zeroext %5) #14
  %i.do = load i32, ptr %7, align 4, !tbaa !4
  %i.dp = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef %i.dn, i32 noundef %i.do) #14 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dq = zext i8 %.1136 to i64                   ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  switch i8 %i.ds, label %bb.ag [
    i8 1, label %bb.af
    i8 0, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.dr, align 1, !tbaa !8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr %4, align 4, !tbaa !4     ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %4, align 4, !tbaa !4
  %i.dv = sext i32 %i.dt to i64
  %i.dw = getelementptr inbounds i8, ptr %3, i64 %i.dv
  store i8 0, ptr %i.dw, align 1, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %i.dx = load ptr, ptr @BackEnd, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !49
  %.not148 = icmp eq i32 %i.dz, 0
  br i1 %.not148, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.dq
  %i.eb = insertelement <4 x i32> %i.cz, i32 %.2131, i64 3
  %i.ec = sub nsw <4 x i32> %i.eb, %10
  %i.ed = trunc <4 x i32> %i.ec to <4 x i16>
  store <4 x i16> %i.ed, ptr %i.ea, align 2, !tbaa !34
  %i.ee = extractelement <4 x i32> %i.cz, i64 3   ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = icmp eq i32 %.2131, 0
  %or.cond10 = select i1 %i.ef, i1 true, i1 %i.eg
  %or.cond12 = or i1 %i.r, %or.cond10
  %i.eh = sub nsw i32 %i.ee, %.2131
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = select i1 %or.cond12, i16 0, i16 %i.ei
  br label %._crit_edge.thread.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.dq ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i16 0, ptr %i.el, align 2, !tbaa !87
  %i.em = load i32, ptr @PlainCharHeight, align 4, !tbaa !4 ; 2 uses
  %i.en = sdiv i32 %i.em, -2
  %i.eo = trunc i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !88
  %i.eq = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.er = trunc i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 6
  store i16 %i.er, ptr %i.es, align 2, !tbaa !58
  %i.et = sdiv i32 %i.em, 2
  %i.eu = trunc i32 %i.et to i16
  store i16 %i.eu, ptr %i.ek, align 2, !tbaa !89
  br label %._crit_edge.thread.sink.split

._crit_edge.thread.sink.split:                    ; preds = %bb.aj, %bb.ai
  %.sink = phi i16 [ %i.ej, %bb.ai ], [ 0, %bb.aj ]
  %i.ev = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.dq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i16 %.sink, ptr %i.ew, align 2, !tbaa !90
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge.thread.sink.split, %._crit_edge
  %.1130.lcssa235 = phi i32 [ %.2131, %._crit_edge ], [ %.2131, %._crit_edge.thread.sink.split ], [ %.0129188, %bb.f ]
  %i.ex = phi <4 x i32> [ %i.cz, %._crit_edge ], [ %i.cz, %._crit_edge.thread.sink.split ], [ %i.s, %bb.f ]
  %i.ey = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef %8)
  %.not = icmp eq ptr %i.ey, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !129

.critedge:                                        ; preds = %bb.d, %._crit_edge.thread, %bb.c, %.preheader168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare i32 @StringBeginsWith(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @MapCharEncoding(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS3rec", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8font_rec", !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!24, !10, i64 40}
!24 = !{!"font_rec", !25, i64 0, !26, i64 8, !27, i64 16, !28, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !29, i64 56, !29, i64 58, !27, i64 64, !26, i64 72, !26, i64 80, !27, i64 88}
!25 = !{!"p1 _ZTS7metrics", !11, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"p1 short", !11, i64 0}
!28 = !{!"p1 _ZTS13composite_rec", !11, i64 0}
!29 = !{!"short", !6, i64 0}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = !{!29, !29, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !6, i64 0}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS12back_end_rec", !11, i64 0}
!49 = !{!50, !5, i64 40}
!50 = !{!"back_end_rec", !5, i64 0, !26, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !6, i64 0}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = !{!59, !29, i64 6}
!59 = !{!"metrics", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !29, i64 8}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = !{!63, !6, i64 0}
!63 = !{!"composite_rec", !6, i64 0, !29, i64 2, !29, i64 4}
!64 = !{!63, !29, i64 2}
!65 = !{!63, !29, i64 4}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = !{!24, !10, i64 48}
!70 = !{!24, !29, i64 56}
!71 = !{!24, !29, i64 58}
!72 = !{!24, !25, i64 0}
!73 = !{!24, !26, i64 8}
!74 = !{!24, !27, i64 16}
!75 = !{!24, !28, i64 24}
!76 = !{!24, !5, i64 32}
!77 = !{!24, !27, i64 64}
!78 = !{!24, !26, i64 72}
!79 = !{!24, !26, i64 80}
!80 = !{!24, !27, i64 88}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = !{!84, !29, i64 2}
!84 = !{!"", !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !29, i64 2}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = !{!59, !29, i64 4}
!88 = !{!59, !29, i64 2}
!89 = !{!59, !29, i64 0}
!90 = !{!59, !29, i64 8}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = !{!50, !5, i64 44}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTS6mapvec", !11, i64 0}
!97 = distinct !{!97, !16}
end_hunk_0
