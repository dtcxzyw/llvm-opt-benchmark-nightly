Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absVta?download=true
inline.NumInlined: 421
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Vta_ObjPreds:bb.a
  %.pn.i38 = sext i32 %.pr.i37 to i64
  %.01418.i.i39 = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %.pn.i38 ; 4 uses
  %i.bc = load i32, ptr %.01418.i.i39, align 4, !tbaa !71
  %i.bd = icmp eq i32 %i.bc, %i.as
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %Vta_ManObj.exit16.i.i36
  %i.be = getelementptr inbounds nuw i8, ptr %.01418.i.i39, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !85
  %i.bg = icmp eq i32 %i.bf, %i.t
  br i1 %i.bg, label %Vga_ManFind.exit41, label %bb.i

bb.i:                                             ; preds = %bb.h, %Vta_ManObj.exit16.i.i36
  %i.bh = getelementptr inbounds nuw i8, ptr %.01418.i.i39, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21 ; 2 uses
  %.not.i15.i.i40 = icmp eq i32 %i.bi, 0
  br i1 %.not.i15.i.i40, label %Vga_ManFind.exit41, label %Vta_ManObj.exit16.i.i36

Vga_ManFind.exit41:                               ; preds = %bb.h, %bb.i, %Vga_ManFind.exit
  %i.bj = phi ptr [ null, %Vga_ManFind.exit ], [ %.01418.i.i39, %bb.h ], [ null, %bb.i ]
  store ptr %i.bj, ptr %4, align 8, !tbaa !87
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.bk = getelementptr i8, ptr %i.i, i64 72
  %.val4.i = load ptr, ptr %i.bk, align 8, !tbaa !92 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val4.i, i64 4
  %.val4.val.i = load i32, ptr %i.bl, align 4, !tbaa !27
  %i.bm = getelementptr i8, ptr %i.i, i64 64
  %.val5.i = load ptr, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bo = lshr i64 %.val25, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 536870911
  %i.br = add i32 %.val4.val.i, %i.bq
  %i.bs = sub i32 %i.br, %.val5.val.i
  %i.bt = getelementptr i8, ptr %i.i, i64 32
  %.val6.i = load ptr, ptr %i.bt, align 8, !tbaa !69
  %i.bu = getelementptr i8, ptr %.val4.i, i64 8
  %.val7.val.i = load ptr, ptr %i.bu, align 8, !tbaa !20
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val7.val.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [12 x i8], ptr %.val6.i, i64 %i.by
  %.val3.i42 = load i64, ptr %i.bz, align 4
  %i.ca = trunc i64 %.val3.i42 to i32
  %i.cb = and i32 %i.ca, 536870911
  %i.cc = sub nsw i32 %i.bx, %i.cb                ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !85 ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !90
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !91
  %i.ck = add nsw i32 %i.cc, %i.cf
  %i.cl = add i32 %i.cc, %i.ce
  %i.cm = mul nsw i32 %i.cl, %i.ck
  %i.cn = urem i32 %i.cm, %i.cj
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21 ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i43, label %Vga_ManFind.exit50, label %Vta_ManObj.exit.i.i44

Vta_ManObj.exit.i.i44:                            ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !68
  br label %Vta_ManObj.exit16.i.i45

Vta_ManObj.exit16.i.i45:                          ; preds = %bb.l, %Vta_ManObj.exit.i.i44
  %.pr.i46 = phi i32 [ %i.cq, %Vta_ManObj.exit.i.i44 ], [ %i.cz, %bb.l ]
  %.pn.i47 = sext i32 %.pr.i46 to i64
  %.01418.i.i48 = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %.pn.i47 ; 4 uses
  %i.ct = load i32, ptr %.01418.i.i48, align 4, !tbaa !71
  %i.cu = icmp eq i32 %i.ct, %i.cc
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Vta_ManObj.exit16.i.i45
  %i.cv = getelementptr inbounds nuw i8, ptr %.01418.i.i48, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !85
  %i.cx = icmp eq i32 %i.cw, %i.cf
  br i1 %i.cx, label %Vga_ManFind.exit50, label %bb.l

bb.l:                                             ; preds = %bb.k, %Vta_ManObj.exit16.i.i45
  %i.cy = getelementptr inbounds nuw i8, ptr %.01418.i.i48, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !21 ; 2 uses
  %.not.i15.i.i49 = icmp eq i32 %i.cz, 0
  br i1 %.not.i15.i.i49, label %Vga_ManFind.exit50, label %Vta_ManObj.exit16.i.i45

Vga_ManFind.exit50:                               ; preds = %bb.k, %bb.l, %bb.j
  %i.da = phi ptr [ null, %bb.j ], [ %.01418.i.i48, %bb.k ], [ null, %bb.l ]
  store ptr %i.da, ptr %3, align 8, !tbaa !87
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.c, %Vga_ManFind.exit50, %Vga_ManFind.exit41
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Vta_ManCollectNodes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !27
  %i.d = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr i8, ptr %i.d, i64 72
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr i8, ptr %.val10, i64 8
  %.val10.val = load ptr, ptr %i.g, align 8, !tbaa !20
  %.val10.val.val = load i32, ptr %.val10.val, align 4, !tbaa !21 ; 2 uses
  %i.h = sext i32 %.val10.val.val to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %.val9, i64 %i.h
  %.val3.i = load i64, ptr %i.i, align 4
  %i.j = trunc i64 %.val3.i to i32
  %i.k = and i32 %i.j, 536870911
  %i.l = sub nsw i32 %.val10.val.val, %i.k        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91
  %i.q = add nsw i32 %i.l, %1                     ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  %i.s = mul nsw i32 %i.r, %i.q
  %i.t = urem i32 %i.s, %i.p
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %Vga_ManFind.exit, label %Vta_ManObj.exit.i.i

Vta_ManObj.exit.i.i:                              ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  br label %Vta_ManObj.exit16.i.i

Vta_ManObj.exit16.i.i:                            ; preds = %bb.c, %Vta_ManObj.exit.i.i
  %.pr.i = phi i32 [ %i.w, %Vta_ManObj.exit.i.i ], [ %i.af, %bb.c ]
  %.pn.i = sext i32 %.pr.i to i64
  %.01418.i.i = getelementptr inbounds [16 x i8], ptr %i.y, i64 %.pn.i ; 4 uses
  %i.z = load i32, ptr %.01418.i.i, align 4, !tbaa !71
  %i.aa = icmp eq i32 %i.z, %i.l
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Vta_ManObj.exit16.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !85
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %Vga_ManFind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %Vta_ManObj.exit16.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21 ; 2 uses
  %.not.i15.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i15.i.i, label %Vga_ManFind.exit, label %Vta_ManObj.exit16.i.i

Vga_ManFind.exit:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.ag = phi ptr [ null, %bb.a ], [ %.01418.i.i, %bb.b ], [ null, %bb.c ]
  tail call void @Vta_ManCollectNodes_rec(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef %i.b)
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !93
  ret ptr %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Vta_ManSatVerify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !67
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = icmp sgt i32 %i.r, 1
  br i1 %i.i, label %.lr.ph45, label %.critedge2

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.m = getelementptr i8, ptr %i.l, i64 288
  %.val37 = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val37, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %.not42 = icmp eq i32 %i.o, 1
  %1 = select i1 %.not42, i32 536870912, i32 268435456
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %3 = load i32, ptr %2, align 4
  %i.p = and i32 %3, -805306369
  %i.q = or disjoint i32 %i.p, %1
  store i32 %i.q, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.c, align 8, !tbaa !67   ; 3 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.preheader, !llvm.loop !3

.lr.ph45:                                         ; preds = %.critedge.preheader, %Gia_ObjIsRo.exit.thread
  %i.u = phi i32 [ %i.af, %Gia_ObjIsRo.exit.thread ], [ %i.r, %.critedge.preheader ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %Gia_ObjIsRo.exit.thread ], [ 1, %.critedge.preheader ] ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv47 ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !46
  %i.y = load i32, ptr %i.w, align 4, !tbaa !71
  %i.z = getelementptr i8, ptr %i.x, i64 32
  %.val = load ptr, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.aa
  %.not32 = icmp eq ptr %.val, null
  br i1 %.not32, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %.lr.ph45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 1073741824
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %Gia_ObjIsRo.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @Vta_ObjPreds(ptr noundef nonnull %0, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ab, ptr noundef %i.a, ptr noundef %i.b)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !67
  br label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit.thread:                          ; preds = %bb.d, %bb.c
  %i.af = phi i32 [ %.pre, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next48, %i.ag
  br i1 %i.ah, label %.lr.ph45, label %.critedge2, !llvm.loop !4

.critedge2:                                       ; preds = %.lr.ph45, %Gia_ObjIsRo.exit.thread, %bb.a, %.critedge.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define void @Vta_ManProfileAddition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr i8, ptr %1, i64 4
  %.val18 = load i32, ptr %i.i, align 4, !tbaa !27 ; 2 uses
  %i.j = icmp sgt i32 %.val18, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !20
  %wide.trip.count = zext nneg i32 %.val18 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.critedge, label %Vta_ManObj.exit

Vta_ManObj.exit:                                  ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %.val19 = load ptr, ptr %i.o, align 8, !tbaa !69
  %.not16 = icmp eq ptr %.val19, null
  br i1 %.not16, label %.critedge, label %bb.c

bb.c:                                             ; preds = %Vta_ManObj.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !85
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !145

.critedge:                                        ; preds = %Vta_ManObj.exit, %bb.c, %bb.b, %bb.a
  %.not1723 = icmp slt i32 %i.d, 0
  br i1 %.not1723, label %._crit_edge, label %.lr.ph25

.lr.ph25:                                         ; preds = %.critedge, %.lr.ph25
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph25 ], [ 0, %.critedge ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv27
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str, i32 noundef %i.z)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !64
  %i.ad = sext i32 %i.ac to i64
  %.not17.not = icmp slt i64 %indvars.iv27, %i.ad
  br i1 %.not17.not, label %.lr.ph25, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %.lr.ph25, %.critedge
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #11 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #29 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #29
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #29 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !95
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #30
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #29 ; 0 uses
  call void @free(ptr noundef %i.d) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !95, !noalias !150
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #29, !inline_history !149 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Vta_ManRefineAbstraction(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !27
  %i.f = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val9.i = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr i8, ptr %i.f, i64 72
  %.val10.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr i8, ptr %.val10.i, i64 8
  %.val10.val.i = load ptr, ptr %i.i, align 8, !tbaa !20
  %.val10.val.val.i = load i32, ptr %.val10.val.i, align 4, !tbaa !21 ; 2 uses
  %i.j = sext i32 %.val10.val.val.i to i64
  %i.k = getelementptr inbounds [12 x i8], ptr %.val9.i, i64 %i.j
  %.val3.i.i = load i64, ptr %i.k, align 4
  %i.l = trunc i64 %.val3.i.i to i32
  %i.m = and i32 %i.l, 536870911
  %i.n = sub nsw i32 %.val10.val.val.i, %i.m      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !91
  %i.s = add nsw i32 %i.n, %1                     ; 2 uses
  %i.t = add nsw i32 %i.s, 1
  %i.u = mul nsw i32 %i.t, %i.s
  %i.v = urem i32 %i.u, %i.r
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %Vta_ManCollectNodes.exit, label %Vta_ManObj.exit.i.i.i

Vta_ManObj.exit.i.i.i:                            ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  br label %Vta_ManObj.exit16.i.i.i
end_hunk_0
begin_hunk_1_@Gia_VtaPerformInt:bb.a
  %i.vb = ptrtoint ptr %.ph.i420 to i64
  br label %Vga_ManFind.exit.i421

Vga_ManFind.exit.i421:                            ; preds = %Vga_ManFind.exit.loopexit.i419, %Abc_Clock.exit406
  %i.vc = phi i64 [ 0, %Abc_Clock.exit406 ], [ %i.vb, %Vga_ManFind.exit.loopexit.i419 ] ; 2 uses
  br i1 %i.jn, label %bb.bb, label %Gia_ObjIsRo.exit.thread.i422

bb.bb:                                            ; preds = %Vga_ManFind.exit.i421
  %i.vd = and i64 %.val3.i.i411, 536870911
  %i.ve = sub nsw i64 0, %i.vd
  %i.vf = getelementptr inbounds [12 x i8], ptr %i.uf, i64 %i.ve
  %.val19.i427 = load i64, ptr %i.vf, align 4     ; 2 uses
  %i.vg = and i64 %.val19.i427, 2684354559
  %narrow.i.not.i.i428 = icmp eq i64 %i.vg, 2684354559
  br i1 %narrow.i.not.i.i428, label %Gia_ObjIsRo.exit.i429, label %Gia_ObjIsRo.exit.thread.i422

Gia_ObjIsRo.exit.i429:                            ; preds = %bb.bb
  %i.vh = lshr i64 %.val19.i427, 32
  %i.vi = trunc nuw i64 %i.vh to i32
  %i.vj = and i32 %i.vi, 536870911
  %i.vk = getelementptr i8, ptr %i.ua, i64 16
  %.val.i.i430 = load i32, ptr %i.vk, align 8, !tbaa !60
  %i.vl = getelementptr i8, ptr %i.ua, i64 64
  %.val3.i22.i431 = load ptr, ptr %i.vl, align 8, !tbaa !61
  %i.vm = getelementptr i8, ptr %.val3.i22.i431, i64 4
  %.val3.val.i.i432 = load i32, ptr %i.vm, align 4, !tbaa !27
  %i.vn = sub nsw i32 %.val3.val.i.i432, %.val.i.i430
  %.not24.i433 = icmp sge i32 %i.vj, %i.vn
  %i.vo = and i32 %i.ug, 536870912
  %.not14.i434 = icmp eq i32 %i.vo, 0
  %or.cond.i435 = and i1 %.not14.i434, %.not24.i433
  br i1 %or.cond.i435, label %bb.bc, label %Gia_ObjIsRo.exit.thread.i422

bb.bc:                                            ; preds = %Gia_ObjIsRo.exit.i429
  %.val15.i436 = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.vp = ptrtoint ptr %.val15.i436 to i64
  %i.vq = sub i64 %i.vc, %i.vp
  %i.vr = lshr exact i64 %i.vq, 4
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = sub nsw i32 0, %i.vs
  br label %Vga_ManGetOutLit.exit437

Gia_ObjIsRo.exit.thread.i422:                     ; preds = %Gia_ObjIsRo.exit.i429, %bb.bb, %Vga_ManFind.exit.i421
  %.val.i423 = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.vu = ptrtoint ptr %.val.i423 to i64
  %i.vv = sub i64 %i.vc, %i.vu
  %i.vw = lshr i32 %i.ug, 29
  %i.vx = and i32 %i.vw, 1
  %sh.diff.i424 = lshr i64 %i.vv, 3
  %tr.sh.diff.i425 = trunc i64 %sh.diff.i424 to i32
  %i.vy = and i32 %tr.sh.diff.i425, -2
  %i.vz = or disjoint i32 %i.vy, %i.vx
  br label %Vga_ManGetOutLit.exit437

Vga_ManGetOutLit.exit437:                         ; preds = %bb.bc, %Gia_ObjIsRo.exit.thread.i422
  %.0.i426 = phi i32 [ %i.vz, %Gia_ObjIsRo.exit.thread.i422 ], [ %i.vt, %bb.bc ]
  %i.wa = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.wb = load i32, ptr %i.cu, align 4, !tbaa !190
  %i.wc = call ptr @Vta_ManUnsatCore(i32 noundef %.0.i426, ptr noundef %i.wa, i32 noundef %i.wb, i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.wd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %22) #29
  %i.we = icmp slt i32 %i.wd, 0
  br i1 %i.we, label %Abc_Clock.exit439, label %bb.bd

bb.bd:                                            ; preds = %Vga_ManGetOutLit.exit437
  %i.wf = load i64, ptr %22, align 8, !tbaa !184
  %i.wg = mul nsw i64 %i.wf, 1000000
  %i.wh = load i64, ptr %i.dh, align 8, !tbaa !185
  %i.wi = sdiv i64 %i.wh, 1000
  %i.wj = add nsw i64 %i.wi, %i.wg
  br label %Abc_Clock.exit439

Abc_Clock.exit439:                                ; preds = %Vga_ManGetOutLit.exit437, %bb.bd
  %.0.i438 = phi i64 [ %i.wj, %bb.bd ], [ -1, %Vga_ManGetOutLit.exit437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.wk = add i64 %.0.i438, %.0.i405.neg
  %i.wl = load i64, ptr %i.df, align 8, !tbaa !205
  %i.wm = add nsw i64 %i.wk, %i.wl
  store i64 %i.wm, ptr %i.df, align 8, !tbaa !205
  %i.wn = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  switch i32 %i.wn, label %bb.bn [
    i32 -1, label %Vga_ManRollBack.exit.thread.loopexit599
    i32 0, label %bb.bk
  ]

bb.be:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.wo = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %21) #29
  %i.wp = icmp slt i32 %i.wo, 0
  br i1 %i.wp, label %Abc_Clock.exit441, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.wq = load i64, ptr %21, align 8, !tbaa !184
  %i.wr = mul nsw i64 %i.wq, 1000000
  %i.ws = load i64, ptr %i.cx, align 8, !tbaa !185
  %i.wt = sdiv i64 %i.ws, 1000
  %i.wu = add nsw i64 %i.wt, %i.wr
  br label %Abc_Clock.exit441

Abc_Clock.exit441:                                ; preds = %bb.be, %bb.bf
  %.0.i440 = phi i64 [ %i.wu, %bb.bf ], [ -1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.wv = add i64 %.0.i440, %.0.i327.neg597
  %i.ww = load i64, ptr %i.cy, align 8, !tbaa !206
  %i.wx = add nsw i64 %i.wv, %i.ww
  store i64 %i.wx, ptr %i.cy, align 8, !tbaa !206
  %i.wy = load i32, ptr %i.cz, align 4, !tbaa !125
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.cz, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.xa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %20) #29
  %i.xb = icmp slt i32 %i.xa, 0
  br i1 %i.xb, label %Abc_Clock.exit443, label %bb.bg

bb.bg:                                            ; preds = %Abc_Clock.exit441
  %i.xc = load i64, ptr %20, align 8, !tbaa !184
  %.neg516 = mul i64 %i.xc, -1000000
  %i.xd = load i64, ptr %i.da, align 8, !tbaa !185
  %.neg515 = sdiv i64 %i.xd, -1000
  %.neg517 = add i64 %.neg515, %.neg516
  br label %Abc_Clock.exit443

Abc_Clock.exit443:                                ; preds = %Abc_Clock.exit441, %bb.bg
  %.0.i442.neg = phi i64 [ %.neg517, %bb.bg ], [ 1, %Abc_Clock.exit441 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.xe = call ptr @Vta_ManRefineAbstraction(ptr noundef nonnull %i.au, i32 noundef %i.ds) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.xf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %19) #29
  %i.xg = icmp slt i32 %i.xf, 0
  br i1 %i.xg, label %Abc_Clock.exit445, label %bb.bh

bb.bh:                                            ; preds = %Abc_Clock.exit443
  %i.xh = load i64, ptr %19, align 8, !tbaa !184
  %i.xi = mul nsw i64 %i.xh, 1000000
  %i.xj = load i64, ptr %i.db, align 8, !tbaa !185
  %i.xk = sdiv i64 %i.xj, 1000
  %i.xl = add nsw i64 %i.xk, %i.xi
  br label %Abc_Clock.exit445

Abc_Clock.exit445:                                ; preds = %Abc_Clock.exit443, %bb.bh
  %.0.i444 = phi i64 [ %i.xl, %bb.bh ], [ -1, %Abc_Clock.exit443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.xm = add i64 %.0.i444, %.0.i442.neg
  %i.xn = load i64, ptr %i.dc, align 8, !tbaa !207
  %i.xo = add nsw i64 %i.xm, %i.xn
  store i64 %i.xo, ptr %i.dc, align 8, !tbaa !207
  %.not240 = icmp eq ptr %i.xe, null
  br i1 %.not240, label %bb.bi, label %Vga_ManRollBack.exit.thread.thread

bb.bi:                                            ; preds = %Abc_Clock.exit445
  %i.xp = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.xq = getelementptr i8, ptr %i.xp, i64 560
  %.val285 = load i64, ptr %i.xq, align 8, !tbaa !123
  %i.xr = trunc i64 %.val285 to i32
  %i.xs = sub nsw i32 %i.xr, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.xt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %18) #29
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %Abc_Clock.exit447, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xv = load i64, ptr %18, align 8, !tbaa !184
  %i.xw = mul nsw i64 %i.xv, 1000000
  %i.xx = load i64, ptr %i.dd, align 8, !tbaa !185
  %i.xy = sdiv i64 %i.xx, 1000
  %i.xz = add nsw i64 %i.xy, %i.xw
  br label %Abc_Clock.exit447

Abc_Clock.exit447:                                ; preds = %bb.bi, %bb.bj
  %.0.i446 = phi i64 [ %i.xz, %bb.bj ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.ya = sub nsw i64 %.0.i446, %.0.i
  %i.yb = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 112
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !120
  %i.ye = call i32 @Vta_ManAbsPrintFrame(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef %indvars, i32 noundef %i.xs, i32 noundef %.1217, i64 noundef %i.ya, i32 noundef %i.yd) ; 0 uses
  %i.yf = add nuw nsw i32 %.1217, 1
  br label %bb.x

bb.bk:                                            ; preds = %Abc_Clock.exit439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.yg = load i32, ptr %i.ck, align 8, !tbaa !67
  %i.yh = icmp sgt i32 %i.yg, 1
  br i1 %i.yh, label %.lr.ph.i448, label %Vga_ManRollBack.exit.thread

.critedge.preheader.i:                            ; preds = %.lr.ph.i448
  %i.yi = icmp sgt i32 %i.yr, 1
  br i1 %i.yi, label %.lr.ph45.i, label %Vga_ManRollBack.exit.thread

.lr.ph.i448:                                      ; preds = %bb.bk, %.lr.ph.i448
  %indvars.iv.i449 = phi i64 [ %indvars.iv.next.i450, %.lr.ph.i448 ], [ 1, %bb.bk ] ; 3 uses
  %i.yj = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %i.yj, i64 %indvars.iv.i449
  %i.yl = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.ym = getelementptr i8, ptr %i.yl, i64 288
  %.val37.i = load ptr, ptr %i.ym, align 8, !tbaa !84
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.val37.i, i64 %indvars.iv.i449
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !21
  %.not42.i = icmp eq i32 %i.yo, 1
  %29 = select i1 %.not42.i, i32 536870912, i32 268435456
  %30 = getelementptr inbounds nuw i8, ptr %i.yk, i64 12 ; 2 uses
  %31 = load i32, ptr %30, align 4
  %i.yp = and i32 %31, -805306369
  %i.yq = or disjoint i32 %i.yp, %29
  store i32 %i.yq, ptr %30, align 4
  %indvars.iv.next.i450 = add nuw nsw i64 %indvars.iv.i449, 1 ; 2 uses
  %i.yr = load i32, ptr %i.ck, align 8, !tbaa !67 ; 3 uses
  %i.ys = sext i32 %i.yr to i64
  %i.yt = icmp slt i64 %indvars.iv.next.i450, %i.ys
  br i1 %i.yt, label %.lr.ph.i448, label %.critedge.preheader.i, !llvm.loop !3

.lr.ph45.i:                                       ; preds = %.critedge.preheader.i, %Gia_ObjIsRo.exit.thread.i453
  %i.yu = phi i32 [ %i.zf, %Gia_ObjIsRo.exit.thread.i453 ], [ %i.yr, %.critedge.preheader.i ]
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %Gia_ObjIsRo.exit.thread.i453 ], [ 1, %.critedge.preheader.i ] ; 2 uses
  %i.yv = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.yv, i64 %indvars.iv47.i ; 3 uses
  %i.yx = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.yy = load i32, ptr %i.yw, align 4, !tbaa !71
  %i.yz = getelementptr i8, ptr %i.yx, i64 32
  %.val.i451 = load ptr, ptr %i.yz, align 8, !tbaa !69 ; 2 uses
  %i.za = sext i32 %i.yy to i64
  %i.zb = getelementptr inbounds [12 x i8], ptr %.val.i451, i64 %i.za
  %.not32.i = icmp eq ptr %.val.i451, null
  br i1 %.not32.i, label %Vga_ManRollBack.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph45.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 12
  %i.zd = load i32, ptr %i.zc, align 4
  %i.ze = and i32 %i.zd, 1073741824
  %.not33.i = icmp eq i32 %i.ze, 0
  br i1 %.not33.i, label %Gia_ObjIsRo.exit.thread.i453, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @Vta_ObjPreds(ptr noundef nonnull readonly %i.au, ptr noundef nonnull %i.yw, ptr noundef nonnull %i.zb, ptr noundef %i.a, ptr noundef %i.b)
  %.pre.i452 = load i32, ptr %i.ck, align 8, !tbaa !67
  br label %Gia_ObjIsRo.exit.thread.i453

Gia_ObjIsRo.exit.thread.i453:                     ; preds = %bb.bm, %bb.bl
  %i.zf = phi i32 [ %.pre.i452, %bb.bm ], [ %i.yu, %bb.bl ] ; 2 uses
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %i.zg = sext i32 %i.zf to i64
  %i.zh = icmp slt i64 %indvars.iv.next48.i, %i.zg
  br i1 %i.zh, label %.lr.ph45.i, label %Vga_ManRollBack.exit.thread, !llvm.loop !4

bb.bn:                                            ; preds = %Abc_Clock.exit439
  %i.zi = getelementptr i8, ptr %i.wc, i64 4      ; 2 uses
  %.val1214.i454 = load i32, ptr %i.zi, align 4, !tbaa !27 ; 2 uses
  %i.zj = icmp sgt i32 %.val1214.i454, 0
  %i.zk = getelementptr i8, ptr %i.wc, i64 8
  %.val.i456 = load ptr, ptr %i.zk, align 8, !tbaa !20 ; 2 uses
  br i1 %i.zj, label %Vta_ManObj.exit.lr.ph.i455, label %.Vta_ManUnsatCoreRemap.exit462_crit_edge

.Vta_ManUnsatCoreRemap.exit462_crit_edge:         ; preds = %bb.bn
  %.pre641 = sext i32 %.val1214.i454 to i64
  br label %Vta_ManUnsatCoreRemap.exit462

Vta_ManObj.exit.lr.ph.i455:                       ; preds = %bb.bn
  %i.zl = load ptr, ptr %i.ct, align 8, !tbaa !68
  br label %Vta_ManObj.exit.i457

Vta_ManObj.exit.i457:                             ; preds = %Vta_ManObj.exit.i457, %Vta_ManObj.exit.lr.ph.i455
  %indvars.iv.i458 = phi i64 [ 0, %Vta_ManObj.exit.lr.ph.i455 ], [ %indvars.iv.next.i460, %Vta_ManObj.exit.i457 ] ; 2 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.val.i456, i64 %indvars.iv.i458 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !21 ; 2 uses
  %.not.i.i459 = icmp ne i32 %i.zn, 0
  call void @llvm.assume(i1 %.not.i.i459)
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [16 x i8], ptr %i.zl, i64 %i.zo ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !85
  %i.zs = load i32, ptr %i.cp, align 8, !tbaa !86
  %i.zt = shl i32 %i.zr, %i.zs
  %i.zu = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zv = or i32 %i.zt, %i.zu
  store i32 %i.zv, ptr %i.zm, align 4, !tbaa !21
  %indvars.iv.next.i460 = add nuw nsw i64 %indvars.iv.i458, 1 ; 2 uses
  %.val12.i461 = load i32, ptr %i.zi, align 4, !tbaa !27
  %i.zw = sext i32 %.val12.i461 to i64            ; 2 uses
  %i.zx = icmp slt i64 %indvars.iv.next.i460, %i.zw
  br i1 %i.zx, label %Vta_ManObj.exit.i457, label %Vta_ManUnsatCoreRemap.exit462, !llvm.loop !1

Vta_ManUnsatCoreRemap.exit462:                    ; preds = %Vta_ManObj.exit.i457, %.Vta_ManUnsatCoreRemap.exit462_crit_edge
  %.pre-phi642 = phi i64 [ %.pre641, %.Vta_ManUnsatCoreRemap.exit462_crit_edge ], [ %i.zw, %Vta_ManObj.exit.i457 ]
  call void @qsort(ptr noundef %.val.i456, i64 noundef %.pre-phi642, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare2) #29
  %i.zy = load ptr, ptr %i.cn, align 8, !tbaa !107 ; 6 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 4 ; 3 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !24 ; 7 uses
  %i.aab = load i32, ptr %i.zy, align 8, !tbaa !25
  %i.aac = icmp eq i32 %i.aaa, %i.aab
  br i1 %i.aac, label %bb.bo, label %Vec_PtrPush.exit

bb.bo:                                            ; preds = %Vta_ManUnsatCoreRemap.exit462
  %i.aad = icmp slt i32 %i.aaa, 16
  br i1 %i.aad, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i465 = icmp eq ptr %i.aaf, null
  br i1 %.not9.i.i465, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.aag = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.aaf, i64 noundef 128) #27
  br label %Vec_PtrGrow.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.aah = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.br, %bb.bq
  %i.aai = phi ptr [ %i.aag, %bb.bq ], [ %i.aah, %bb.br ]
  store ptr %i.aai, ptr %i.aae, align 8, !tbaa !26
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.bs:                                            ; preds = %bb.bo
  %i.aaj = icmp samesign ult i32 %i.aaa, 1073741823
  %i.aak = shl nuw nsw i32 %i.aaa, 1
  %spec.select.i463 = select i1 %i.aaj, i32 %i.aak, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.aaa, %spec.select.i463
  br i1 %.not.i10.i, label %bb.bt, label %Vec_PtrPush.exit

bb.bt:                                            ; preds = %bb.bs
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !26 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.aam, null
  %i.aan = zext nneg i32 %spec.select.i463 to i64
  %i.aao = shl nuw nsw i64 %i.aan, 3              ; 2 uses
  br i1 %.not9.i11.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aap = call ptr @realloc(ptr noundef nonnull %i.aam, i64 noundef %i.aao) #27
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.aaq = call noalias ptr @malloc(i64 noundef %i.aao) #26
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.aar = phi ptr [ %i.aap, %bb.bu ], [ %i.aaq, %bb.bv ]
  store ptr %i.aar, ptr %i.aal, align 8, !tbaa !26
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.bw, %Vec_PtrGrow.exit.i
  %spec.select.sink.i464 = phi i32 [ %spec.select.i463, %bb.bw ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i464, ptr %i.zy, align 8, !tbaa !25
  %.pre635 = load i32, ptr %i.zz, align 4, !tbaa !24
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Vta_ManUnsatCoreRemap.exit462, %bb.bs, %Vec_PtrGrow.exit12.sink.split.i
  %i.aas = phi i32 [ %i.aaa, %Vta_ManUnsatCoreRemap.exit462 ], [ %i.aaa, %bb.bs ], [ %.pre635, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !26
  %i.aav = add nsw i32 %i.aas, 1
  store i32 %i.aav, ptr %i.zz, align 4, !tbaa !24
  %i.aaw = sext i32 %i.aas to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.aau, i64 %i.aaw
  store ptr %i.wc, ptr %i.aax, align 8, !tbaa !30
  %i.aay = load ptr, ptr %i.ch, align 8, !tbaa !72
  %i.aaz = getelementptr i8, ptr %i.aay, i64 560
  %.val284 = load i64, ptr %i.aaz, align 8, !tbaa !123
  %i.aba = trunc i64 %.val284 to i32
  %i.abb = sub nsw i32 %i.aba, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.abc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %17) #29
  %i.abd = icmp slt i32 %i.abc, 0
  br i1 %i.abd, label %Abc_Clock.exit467, label %bb.bx

bb.bx:                                            ; preds = %Vec_PtrPush.exit
  %i.abe = load i64, ptr %17, align 8, !tbaa !184
  %i.abf = mul nsw i64 %i.abe, 1000000
  %i.abg = load i64, ptr %i.di, align 8, !tbaa !185
  %i.abh = sdiv i64 %i.abg, 1000
  %i.abi = add nsw i64 %i.abh, %i.abf
  br label %Abc_Clock.exit467

Abc_Clock.exit467:                                ; preds = %Vec_PtrPush.exit, %bb.bx
  %.0.i466 = phi i64 [ %i.abi, %bb.bx ], [ -1, %Vec_PtrPush.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.abj = sub nsw i64 %.0.i466, %.0.i
  %i.abk = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 112
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !120
  %i.abn = call i32 @Vta_ManAbsPrintFrame(ptr noundef nonnull %i.au, ptr noundef nonnull %i.wc, i32 noundef %indvars, i32 noundef %i.abb, i32 noundef %.1217, i64 noundef %i.abj, i32 noundef %i.abm)
  %.not241 = icmp eq i32 %i.abn, 0
  br i1 %.not241, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %Abc_Clock.exit467
  %i.abo = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 144
  store i32 0, ptr %i.abp, align 8, !tbaa !208
  br label %bb.ce

bb.bz:                                            ; preds = %Abc_Clock.exit467
  %i.abq = add nsw i32 %.0211591, 1               ; 2 uses
  %i.abr = icmp eq i32 %i.abq, 2
  br i1 %i.abr, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.abs = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 144 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !208
  %i.abv = add nsw i32 %i.abu, 1
  store i32 %i.abv, ptr %i.abt, align 8, !tbaa !208
  %i.abw = call i32 (...) @Abc_FrameIsBridgeMode() #29
  %.not242 = icmp eq i32 %i.abw, 0
end_hunk_1
