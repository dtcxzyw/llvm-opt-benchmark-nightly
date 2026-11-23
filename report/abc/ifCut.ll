Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifCut?download=true
inline.NumInlined: 87
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@If_CutCountTotalFanins:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.c, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.d ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ] ; 2 uses
  %.120 = phi i32 [ %i.y, %bb.d ], [ %.01934, %bb.c ], [ %.01934, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.ab, %bb.d ], [ %.035, %bb.c ], [ %.035, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val26 = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ae = sext i32 %.val26 to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.critedge, !llvm.loop !158

.critedge:                                        ; preds = %bb.e, %Abc_Clock.exit
  %.019.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.120, %bb.e ]
  %.0.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.1, %bb.e ]
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %.019.lcssa, i32 noundef %.0.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.ag = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #21
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %Abc_Clock.exit29, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ai = load i64, ptr %1, align 8, !tbaa !71
  %i.aj = mul nsw i64 %i.ai, 1000000
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !72
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.aj
  br label %Abc_Clock.exit29

Abc_Clock.exit29:                                 ; preds = %.critedge, %bb.f
  %.0.i28 = phi i64 [ %i.an, %bb.f ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ao = add i64 %.0.i28, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10)
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = fdiv double %i.ap, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.14, double noundef %i.aq)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.g

bb.g:                                             ; preds = %Abc_Clock.exit29
  call void @free(ptr noundef nonnull %i.ar) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Abc_Clock.exit29, %bb.g
  call void @free(ptr noundef nonnull %i.f) #21
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -128, 128) i32 @If_CutFilter2_rec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58   ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr %.val, i64 %i.f ; 5 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !79    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i8 %i.h to i32
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !74   ; 7 uses
  %i.n = load i32, ptr %i.k, align 8, !tbaa !75
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.m, 16
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.r, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  store ptr %i.u, ptr %i.q, align 8, !tbaa !67
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %i.m, 1073741823
  %i.w = shl nuw nsw i32 %i.m, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.m, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = phi ptr [ %i.ab, %bb.j ], [ %i.ac, %bb.k ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !67
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.k, align 8, !tbaa !75
  %.pre = load i32, ptr %i.l, align 4, !tbaa !74
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ae = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.ah = add nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.l, align 4, !tbaa !74
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai
  store i32 %i.d, ptr %i.aj, align 4, !tbaa !19
  %i.ak = load i32, ptr %1, align 8
  %i.al = lshr i32 %i.ak, 13
  %.not20 = icmp sgt i32 %i.al, %2
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit
  store i8 1, ptr %i.g, align 1, !tbaa !79
  br label %bb.s

bb.n:                                             ; preds = %Vec_IntPush.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68
  %i.ao = tail call i32 @If_CutFilter2_rec(ptr noundef nonnull %0, ptr noundef %i.an, i32 noundef %2)
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.g, align 1, !tbaa !79
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call i32 @If_CutFilter2_rec(ptr noundef nonnull %0, ptr noundef %i.ar, i32 noundef %2)
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.g, align 1, !tbaa !79
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 2, ptr %i.g, align 1, !tbaa !79
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 1, %bb.m ], [ 1, %bb.o ], [ 1, %bb.q ], [ 2, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @If_CutFilter2(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 6 uses
  %i.c = load i64, ptr %i.b, align 4
  %i.d = and i64 %i.c, 4278190080
  %.not74 = icmp eq i64 %i.d, 0
  br i1 %.not74, label %.critedge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %3 = getelementptr i8, ptr %2, i64 39
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %bb.q
  %.05069 = phi i32 [ 0, %.lr.ph72 ], [ %i.ct, %bb.q ] ; 4 uses
  %i.h = sext i32 %.05069 to i64                  ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %.val55 = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.k = getelementptr i8, ptr %.val55, i64 8
  %.val55.val = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val55.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !74
  %i.q = load i64, ptr %i.b, align 4              ; 2 uses
  %i.r = and i64 %i.q, 4278190080
  %.not75 = icmp eq i64 %i.r, 0
  br i1 %.not75, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.o
  %i.s = phi i64 [ %i.bk, %bb.o ], [ %i.q, %bb.c ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.c ] ; 2 uses
  %.061 = phi i32 [ %.1, %bb.o ], [ 1000000000, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %.val = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.v = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 4 uses
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = icmp eq ptr %i.y, %i.n
  br i1 %i.z, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.y, align 8
  %i.ab = lshr i32 %i.aa, 13
  %i.ac = tail call range(i32 0, 524288) i32 @llvm.umin.i32(i32 range(i32 0, 1000000001) %.061, i32 range(i32 0, 524288) %i.ab)
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val58 = load ptr, ptr %i.ag, align 8, !tbaa !78
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds i8, ptr %.val58, i64 %i.ah
  store i8 2, ptr %i.ai, align 1, !tbaa !79
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !80  ; 6 uses
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74 ; 7 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.au = phi ptr [ %i.as, %bb.h ], [ %i.at, %bb.i ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !67
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = phi ptr [ %i.bb, %bb.l ], [ %i.bc, %bb.m ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !67
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.aj, align 8, !tbaa !75
  %.pre = load i32, ptr %i.al, align 4, !tbaa !74
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.e ], [ %i.am, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !74
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 %i.ak, ptr %i.bj, align 4, !tbaa !19
  %.pre83 = load i64, ptr %i.b, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %Vec_IntPush.exit
  %i.bk = phi i64 [ %i.s, %bb.d ], [ %.pre83, %Vec_IntPush.exit ] ; 2 uses
  %.1 = phi i32 [ %.061, %bb.d ], [ %i.ac, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = lshr i64 %i.bk, 24
  %i.bm = and i64 %i.bl, 255
  %i.bn = icmp samesign ult i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %.lr.ph, label %.critedge2, !llvm.loop !159

.critedge2:                                       ; preds = %.lr.ph, %bb.o, %bb.c
  %.0.lcssa = phi i32 [ 1000000000, %bb.c ], [ %.1, %bb.o ], [ %.061, %.lr.ph ]
  %i.bo = tail call i32 @If_CutFilter2_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i32 noundef %.0.lcssa)
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !80  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %.val5664 = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.br = icmp sgt i32 %.val5664, 0
  br i1 %i.br, label %.lr.ph66, label %.critedge4

.lr.ph66:                                         ; preds = %.critedge2, %.lr.ph66
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph66 ], [ 0, %.critedge2 ] ; 2 uses
  %i.bs = phi ptr [ %i.ca, %.lr.ph66 ], [ %i.bp, %.critedge2 ]
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val59 = load ptr, ptr %i.bt, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv77
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val57 = load ptr, ptr %i.bx, align 8, !tbaa !78
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds i8, ptr %.val57, i64 %i.by
  store i8 0, ptr %i.bz, align 1, !tbaa !79
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !80  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val56 = load i32, ptr %i.cb, align 4, !tbaa !74
  %i.cc = sext i32 %.val56 to i64
  %i.cd = icmp slt i64 %indvars.iv.next78, %i.cc
  br i1 %i.cd, label %.lr.ph66, label %.critedge4, !llvm.loop !160

.critedge4:                                       ; preds = %.lr.ph66, %.critedge2
  %i.ce = icmp eq i32 %i.bo, 2
  %.pre84 = load i64, ptr %i.b, align 4           ; 2 uses
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge4
  %i.cf = add i64 %.pre84, 4278190080
  %4 = lshr i64 %i.cf, 24
  %5 = trunc i64 %4 to i8
  store i8 %5, ptr %3, align 1
  %6 = load i64, ptr %i.b, align 4                ; 2 uses
  %i.cg = trunc i64 %6 to i32
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = icmp slt i32 %.05069, %i.ch
  br i1 %i.ci, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.p, %.lr.ph68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph68 ], [ %i.h, %bb.p ] ; 2 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next81
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv80
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !19
  %i.cm = load i64, ptr %i.b, align 4             ; 2 uses
  %i.cn = lshr i64 %i.cm, 24
  %i.co = and i64 %i.cn, 255
  %i.cp = icmp slt i64 %indvars.iv.next81, %i.co
  br i1 %i.cp, label %.lr.ph68, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph68, %bb.p
  %i.cq = phi i64 [ %6, %bb.p ], [ %i.cm, %.lr.ph68 ]
  %i.cr = add nsw i32 %.05069, -1
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.critedge4
  %i.cs = phi i64 [ %i.cq, %._crit_edge ], [ %.pre84, %.critedge4 ]
  %.151 = phi i32 [ %i.cr, %._crit_edge ], [ %.05069, %.critedge4 ]
  %i.ct = add nsw i32 %.151, 1                    ; 2 uses
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = lshr i32 %i.cu, 24
  %i.cw = icmp slt i32 %i.ct, %i.cv
  br i1 %i.cw, label %bb.b, label %.critedge, !llvm.loop !162

.critedge:                                        ; preds = %bb.b, %bb.q, %bb.a
  ret i32 0
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS9If_Set_t_", !10, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p2 _ZTS9If_Cut_t_", !12, i64 0}
!14 = !{!"If_Set_t_", !9, i64 0, !9, i64 2, !11, i64 8, !13, i64 16}
!15 = !{!14, !9, i64 2}
!16 = !{!14, !13, i64 16}
!17 = !{!"p1 _ZTS9If_Cut_t_", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"float", !5, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"If_Cut_t_", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 37, !6, i64 37, !6, i64 37, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !5, i64 44}
!24 = !{!23, !6, i64 28}
!25 = !{!23, !6, i64 32}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!"p1 _ZTS9If_Par_t_", !10, i64 0}
!28 = !{!"p1 _ZTS9If_Obj_t_", !10, i64 0}
!29 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!30 = !{!"p1 long", !10, i64 0}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!32 = !{!"p1 _ZTS10Vec_Wrd_t_", !10, i64 0}
!33 = !{!"p1 _ZTS12Mem_Fixed_t_", !10, i64 0}
!34 = !{!"p1 _ZTS12If_DsdMan_t_", !10, i64 0}
!35 = !{!"p1 _ZTS14Hash_IntMan_t_", !10, i64 0}
!36 = !{!"p1 _ZTS10Vec_Str_t_", !10, i64 0}
!37 = !{!"p1 _ZTS10Vec_Mem_t_", !10, i64 0}
!38 = !{!"p1 _ZTS10Tim_Man_t_", !10, i64 0}
!39 = !{!"If_Man_t_", !26, i64 0, !27, i64 8, !28, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !5, i64 64, !6, i64 84, !21, i64 88, !21, i64 92, !21, i64 96, !21, i64 100, !6, i64 104, !21, i64 108, !6, i64 112, !6, i64 116, !5, i64 120, !30, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !31, i64 176, !5, i64 184, !6, i64 568, !6, i64 572, !6, i64 576, !31, i64 584, !31, i64 592, !32, i64 600, !32, i64 608, !32, i64 616, !29, i64 624, !31, i64 632, !6, i64 640, !6, i64 644, !6, i64 648, !5, i64 652, !6, i64 716, !6, i64 720, !6, i64 724, !6, i64 728, !33, i64 736, !33, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !6, i64 776, !6, i64 780, !5, i64 784, !5, i64 912, !6, i64 1040, !6, i64 1044, !6, i64 1048, !6, i64 1052, !34, i64 1056, !5, i64 1064, !5, i64 1192, !5, i64 1320, !5, i64 1448, !5, i64 1576, !5, i64 1704, !5, i64 1832, !35, i64 1960, !31, i64 1968, !36, i64 1976, !37, i64 1984, !5, i64 1992, !6, i64 2024, !6, i64 2028, !6, i64 2032, !5, i64 2040, !5, i64 2088, !5, i64 2096, !31, i64 2104, !5, i64 2112, !29, i64 2176, !10, i64 2184, !31, i64 2192, !5, i64 2200, !36, i64 2264, !31, i64 2272, !31, i64 2280, !31, i64 2288, !28, i64 2296, !17, i64 2304, !6, i64 2312, !5, i64 2316, !5, i64 2444, !21, i64 2572, !6, i64 2576, !38, i64 2584, !31, i64 2592, !5, i64 2600, !5, i64 2608, !5, i64 2616, !33, i64 2632}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!23, !21, i64 12}
!44 = !{!39, !21, i64 88}
!45 = !{!23, !21, i64 0}
!46 = !{!39, !27, i64 8}
!47 = !{!"p1 _ZTS12If_LibLut_t_", !10, i64 0}
!48 = !{!"p1 _ZTS13If_LibCell_t_", !10, i64 0}
!49 = !{!"p1 float", !10, i64 0}
!50 = !{!"If_Par_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !21, i64 24, !21, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !26, i64 208, !6, i64 216, !21, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !21, i64 280, !21, i64 284, !21, i64 288, !47, i64 296, !48, i64 304, !49, i64 312, !49, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368}
!51 = !{!23, !21, i64 8}
!52 = !{!23, !21, i64 4}
!53 = !{!39, !29, i64 40}
!54 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !12, i64 8}
!55 = !{!54, !12, i64 8}
!56 = !{!10, !10, i64 0}
!57 = !{!"If_Obj_t_", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !28, i64 24, !28, i64 32, !28, i64 40, !21, i64 48, !21, i64 52, !21, i64 56, !5, i64 64, !11, i64 72, !23, i64 80}
!58 = !{!57, !6, i64 4}
!59 = !{!50, !6, i64 44}
!60 = !{!50, !47, i64 296}
!61 = !{!21, !21, i64 0}
!62 = !{!57, !6, i64 12}
!63 = !{!57, !21, i64 48}
!64 = !{!39, !31, i64 176}
!65 = !{!"p1 int", !10, i64 0}
!66 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !65, i64 8}
!67 = !{!66, !65, i64 8}
!68 = !{!57, !28, i64 24}
!69 = !{!57, !28, i64 32}
!70 = !{!"timespec", !22, i64 0, !22, i64 8}
!71 = !{!70, !22, i64 0}
!72 = !{!70, !22, i64 8}
!73 = !{!54, !6, i64 4}
!74 = !{!66, !6, i64 4}
!75 = !{!66, !6, i64 0}
!76 = !{!39, !36, i64 2264}
!77 = !{!"Vec_Str_t_", !6, i64 0, !6, i64 4, !26, i64 8}
!78 = !{!77, !26, i64 8}
!79 = !{!5, !5, i64 0}
!80 = !{!39, !31, i64 2272}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20, !40, !41}
!90 = distinct !{!90, !20, !40}
!91 = distinct !{!91, !20, !40, !41}
!92 = distinct !{!92, !20, !40}
!93 = !{!39, !6, i64 568}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20, !40, !41}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !20, !40}
!98 = distinct !{!98, !20, !40, !41}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !20, !40}
!101 = distinct !{!101, !20, !40, !41}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20, !40, !41}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !20, !40}
!107 = distinct !{!107, !20, !40}
!108 = distinct !{!108, !20}
end_hunk_0
