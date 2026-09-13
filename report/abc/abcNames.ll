Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcNames?download=true
inline.NumInlined: 298
inline.NumDeleted: 47
begin_hunk_0_@Abc_NtkTransferOrder:bb.a
  %.val5276 = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.cm = getelementptr i8, ptr %.val5276, i64 4
  %.val52.val77 = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.cn = icmp sgt i32 %.val52.val77, 0
  br i1 %i.cn, label %.critedge4, label %.critedge6

.lr.ph75:                                         ; preds = %.critedge2, %.lr.ph75
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.lr.ph75 ], [ 0, %.critedge2 ] ; 2 uses
  %.val4874 = phi ptr [ %.val48, %.lr.ph75 ], [ %.val4871, %.critedge2 ]
  %i.co = getelementptr i8, ptr %.val4874, i64 8
  %.val50.val = load ptr, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val50.val, i64 %indvars.iv87
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  store i32 0, ptr %i.cr, align 8, !tbaa !44
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %.val48 = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.cs = getelementptr i8, ptr %.val48, i64 4
  %.val48.val = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.ct = sext i32 %.val48.val to i64
  %i.cu = icmp slt i64 %indvars.iv.next88, %i.ct
  br i1 %i.cu, label %.lr.ph75, label %.critedge4.preheader, !llvm.loop !83

.critedge4:                                       ; preds = %.critedge4.preheader, %.critedge4
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.critedge4 ], [ 0, %.critedge4.preheader ] ; 2 uses
  %.val5279 = phi ptr [ %.val52, %.critedge4 ], [ %.val5276, %.critedge4.preheader ]
  %i.cv = getelementptr i8, ptr %.val5279, i64 8
  %.val54.val = load ptr, ptr %i.cv, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val54.val, i64 %indvars.iv90
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i32 0, ptr %i.cy, align 8, !tbaa !44
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %.val52 = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val52, i64 4
  %.val52.val = load i32, ptr %i.cz, align 4, !tbaa !40
  %i.da = sext i32 %.val52.val to i64
  %i.db = icmp slt i64 %indvars.iv.next91, %i.da
  br i1 %i.db, label %.critedge4, label %.critedge6, !llvm.loop !84

.critedge6:                                       ; preds = %.critedge4, %.critedge4.preheader
  ret void
}

declare i32 @Abc_NamStrFind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Abc_NamDeref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NodeCompareCiCo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.b = getelementptr i8, ptr %.val31, i64 4
  %.val31.val = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = getelementptr i8, ptr %1, i64 40
  %.val30 = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.d, align 4, !tbaa !40
  %.not = icmp eq i32 %.val31.val, %.val30.val
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 48
  %.val33 = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.f = getelementptr i8, ptr %.val33, i64 4
  %.val33.val = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = getelementptr i8, ptr %1, i64 48
  %.val32 = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.h, align 4, !tbaa !40
  %.not21 = icmp eq i32 %.val33.val, %.val32.val
  br i1 %.not21, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 128
  %.val35 = load i32, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr i8, ptr %1, i64 128
  %.val34 = load i32, ptr %i.j, align 8, !tbaa !48
  %.not22 = icmp eq i32 %.val35, %.val34
  br i1 %.not22, label %.preheader36, label %.loopexit

.preheader36:                                     ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val38 = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %i.l = getelementptr i8, ptr %.val38, i64 4
  %.val.val39 = load i32, ptr %i.l, align 4, !tbaa !40
  %i.m = icmp sgt i32 %.val.val39, 0
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader36
  %i.n = getelementptr i8, ptr %1, i64 56
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !37  ; 2 uses
  %i.o = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.o, align 4, !tbaa !40
  %i.p = sext i32 %.val.val to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.e, label %.preheader, !llvm.loop !85

.preheader:                                       ; preds = %bb.d, %.preheader36
  %i.r = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val2742 = load ptr, ptr %i.r, align 8, !tbaa !41 ; 2 uses
  %i.s = getelementptr i8, ptr %.val2742, i64 4
  %.val27.val43 = load i32, ptr %i.s, align 4, !tbaa !40
  %i.t = icmp sgt i32 %.val27.val43, 0
  br i1 %i.t, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %.preheader
  %i.u = getelementptr i8, ptr %1, i64 64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.val41 = phi ptr [ %.val38, %.lr.ph ], [ %.val, %bb.d ]
  %i.v = getelementptr i8, ptr %.val41, i64 8
  %.val26.val = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val26.val, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.ad = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.aa, i32 noundef %i.ac) #17
  %.val25 = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.ae = getelementptr i8, ptr %.val25, i64 8
  %.val25.val = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25.val, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !36
  %i.am = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.aj, i32 noundef %i.al) #17
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %i.am) #19
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %bb.d, label %.loopexit

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %.val27 = load ptr, ptr %i.r, align 8, !tbaa !41 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.ap = sext i32 %.val27.val to i64
  %i.aq = icmp slt i64 %indvars.iv.next52, %i.ap
  br i1 %i.aq, label %bb.g, label %.loopexit, !llvm.loop !86

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %indvars.iv51 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next52, %bb.f ] ; 3 uses
  %.val2745 = phi ptr [ %.val2742, %.lr.ph46 ], [ %.val27, %bb.f ]
  %i.ar = getelementptr i8, ptr %.val2745, i64 8
  %.val29.val = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val29.val, i64 %indvars.iv51
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !36
  %i.az = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.aw, i32 noundef %i.ay) #17
  %.val28 = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ba = getelementptr i8, ptr %.val28, i64 8
  %.val28.val = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val28.val, i64 %indvars.iv51
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !36
  %i.bi = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.bf, i32 noundef %i.bh) #17
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) %i.bi) #19
  %.not23 = icmp eq i32 %i.bj, 0
  br i1 %.not23, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f, %.preheader, %bb.c, %bb.b, %bb.a
  %.020 = phi i32 [ 1, %.preheader ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkAddDummyPiNames(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.b = getelementptr i8, ptr %.val8, i64 4
  %.val8.val = load i32, ptr %i.b, align 4, !tbaa !40 ; 4 uses
  %i.c = icmp ult i32 %.val8.val, 2
  br i1 %i.c, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = add i32 %.val8.val, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.f, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %i.e = udiv i32 %.0812.i, 10
  %i.f = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !2

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.09.i = phi i32 [ %.val8.val, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.g = icmp sgt i32 %.val8.val, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_Base10Log.exit ] ; 3 uses
  %.val13 = phi ptr [ %.val, %.lr.ph ], [ %.val8, %Abc_Base10Log.exit ]
  %i.h = getelementptr i8, ptr %.val13, i64 8
  %.val9.val = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val9.val, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3, i32 noundef %.09.i, i32 noundef %i.k) #17 ; 0 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 15
  %i.u = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.t, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.v = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.v, align 4, !tbaa !40
  %i.w = sext i32 %.val.val to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph, %Abc_Base10Log.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkAddCharPiNames(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.b = getelementptr i8, ptr %.val7, i64 4
  %.val.val8 = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = icmp sgt i32 %.val.val8, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.val10 = phi ptr [ %.val, %.lr.ph ], [ %.val7, %bb.a ]
  %i.d = getelementptr i8, ptr %.val10, i64 8
  %.val6.val = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = trunc i64 %indvars.iv to i8
  %char.i = add i8 %i.g, 97
  store i8 %char.i, ptr @Abc_ObjNameChar.Buffer, align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_ObjNameChar.Buffer, i64 1), align 1
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 15
  %i.p = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull @Abc_ObjNameChar.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.q = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.q, align 4, !tbaa !40
  %i.r = sext i32 %.val.val to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkAddDummyPoNames(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %i.b = getelementptr i8, ptr %.val8, i64 4
  %.val8.val = load i32, ptr %i.b, align 4, !tbaa !40 ; 4 uses
  %i.c = icmp ult i32 %.val8.val, 2
  br i1 %i.c, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = add i32 %.val8.val, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.f, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %i.e = udiv i32 %.0812.i, 10
  %i.f = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !2

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.09.i = phi i32 [ %.val8.val, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.g = icmp sgt i32 %.val8.val, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_Base10Log.exit ] ; 3 uses
  %.val13 = phi ptr [ %.val, %.lr.ph ], [ %.val8, %Abc_Base10Log.exit ]
  %i.h = getelementptr i8, ptr %.val13, i64 8
  %.val9.val = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val9.val, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.4, i32 noundef %.09.i, i32 noundef %i.k) #17 ; 0 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 15
  %i.u = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.t, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.v = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.v, align 4, !tbaa !40
  %i.w = sext i32 %.val.val to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %Abc_Base10Log.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkAddCharPoNames(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %i.b = getelementptr i8, ptr %.val7, i64 4
  %.val.val8 = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = icmp sgt i32 %.val.val8, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.val10 = phi ptr [ %.val, %.lr.ph ], [ %.val7, %bb.a ]
  %i.d = getelementptr i8, ptr %.val10, i64 8
  %.val6.val = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = trunc i64 %indvars.iv to i8
  %char.i = add i8 %i.g, 65
  store i8 %char.i, ptr @Abc_ObjNameChar.Buffer, align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_ObjNameChar.Buffer, i64 1), align 1
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 15
  %i.p = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.j, i32 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull @Abc_ObjNameChar.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.q = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.q, align 4, !tbaa !40
  %i.r = sext i32 %.val.val to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkAddDummyBoxNames(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val7483 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.d = getelementptr i8, ptr %.val7483, i64 4
  %.val74.val84 = load i32, ptr %i.d, align 4, !tbaa !40
  %i.e = icmp sgt i32 %.val74.val84, 0
  br i1 %i.e, label %.lr.ph89, label %.critedge.preheader

.critedge.preheader:                              ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val7698 = load ptr, ptr %i.f, align 8, !tbaa !57 ; 2 uses
  %i.g = getelementptr i8, ptr %.val7698, i64 4
  %.val76.val99 = load i32, ptr %i.g, align 4, !tbaa !40
  %i.h = icmp sgt i32 %.val76.val99, 0
  br i1 %i.h, label %.lr.ph103, label %.critedge2._crit_edge

.lr.ph89:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.val7487 = phi ptr [ %.val74, %._crit_edge ], [ %.val7483, %bb.a ]
  %.086 = phi i32 [ %i.u, %._crit_edge ], [ 0, %bb.a ]
  %i.i = getelementptr i8, ptr %.val7487, i64 8
  %.val75.val = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val75.val, i64 %indvars.iv121
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !36
  %i.q = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.n, i32 noundef %i.p) #17 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !44
  %cond80 = icmp eq i8 %i.r, 108
  br i1 %cond80, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph89, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph89 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next
  %i.t = load i8, ptr %i.s, align 1, !tbaa !44
  %cond = icmp eq i8 %i.t, 108
  br i1 %cond, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph89
  %.056.lcssa = phi i32 [ 0, %.lr.ph89 ], [ %indvars, %._crit_edge.loopexit ]
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %.086, i32 %.056.lcssa) ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %.val74 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.v = getelementptr i8, ptr %.val74, i64 4
  %.val74.val = load i32, ptr %i.v, align 4, !tbaa !40
  %i.w = sext i32 %.val74.val to i64
  %i.x = icmp slt i64 %indvars.iv.next122, %i.w
  br i1 %i.x, label %.lr.ph89, label %.critedge.preheader, !llvm.loop !88

.lr.ph103:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %.val76102 = phi ptr [ %.val76, %.critedge ], [ %.val7698, %.critedge.preheader ]
  %.1101 = phi i32 [ %i.ak, %.critedge ], [ %.0.lcssa, %.critedge.preheader ]
  %i.y = getelementptr i8, ptr %.val76102, i64 8
  %.val77.val = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val77.val, i64 %indvars.iv131
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !36
  %i.ag = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.ad, i32 noundef %i.af) #17 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !44
  %cond6791 = icmp eq i8 %i.ah, 108
  br i1 %cond6791, label %.lr.ph95, label %.critedge

.lr.ph95:                                         ; preds = %.lr.ph103, %.lr.ph95
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %.lr.ph95 ], [ 0, %.lr.ph103 ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next126
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !44
  %cond67 = icmp eq i8 %i.aj, 108
  br i1 %cond67, label %.lr.ph95, label %.critedge.loopexit, !llvm.loop !89

.critedge.loopexit:                               ; preds = %.lr.ph95
  %indvars127 = trunc i64 %indvars.iv.next126 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph103
  %.157.lcssa = phi i32 [ 0, %.lr.ph103 ], [ %indvars127, %.critedge.loopexit ]
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %.1101, i32 %.157.lcssa) ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %.val76 = load ptr, ptr %i.f, align 8, !tbaa !57 ; 2 uses
  %i.al = getelementptr i8, ptr %.val76, i64 4
  %.val76.val = load i32, ptr %i.al, align 4, !tbaa !40
  %i.am = sext i32 %.val76.val to i64
  %i.an = icmp slt i64 %indvars.iv.next132, %i.am
  br i1 %i.an, label %.lr.ph103, label %.critedge2._crit_edge, !llvm.loop !90

.critedge2._crit_edge:                            ; preds = %.critedge, %.critedge.preheader
  %.1.lcssa = phi i32 [ %.0.lcssa, %.critedge.preheader ], [ %i.ak, %.critedge ]
  %i.ao = zext nneg i32 %.1.lcssa to i64          ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 108, i64 %i.ap, i1 false), !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 108, i64 %i.ap, i1 false), !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 105, ptr %i.aq, align 1, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  store i8 111, ptr %i.ar, align 1, !tbaa !44
  %i.as = add nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !44
  %i.av = getelementptr i8, ptr %0, i64 128
  %.val78 = load i32, ptr %i.av, align 8, !tbaa !48 ; 3 uses
  %i.aw = icmp ult i32 %.val78, 2
  br i1 %i.aw, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge2._crit_edge
  %i.ax = add i32 %.val78, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ax, %.lr.ph.preheader.i ] ; 2 uses
  %i.ay = udiv i32 %.0812.i, 10
  %i.az = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %Abc_Base10Log.exit, label %.lr.ph.i, !llvm.loop !2

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i, %.critedge2._crit_edge
  %.09.i = phi i32 [ %.val78, %.critedge2._crit_edge ], [ %i.az, %.lr.ph.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val109 = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.bd = icmp sgt i32 %.val109, 0
  br i1 %i.bd, label %.lr.ph111, label %.critedge4

.lr.ph111:                                        ; preds = %Abc_Base10Log.exit, %bb.c
  %i.be = phi ptr [ %i.da, %bb.c ], [ %i.bb, %Abc_Base10Log.exit ] ; 2 uses
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %bb.c ], [ 0, %Abc_Base10Log.exit ] ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val72.val = load ptr, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val72.val, i64 %indvars.iv139
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 7 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 20     ; 2 uses
  %.val73 = load i32, ptr %i.bi, align 4
  %i.bj = and i32 %.val73, 15
  %.not79 = icmp eq i32 %i.bj, 8
  br i1 %.not79, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph111
  %i.bk = trunc nuw nsw i64 %indvars.iv139 to i32 ; 3 uses
  %i.bl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.5, i32 noundef %.09.i, i32 noundef %i.bk) #17 ; 0 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !36
  %i.br = load i32, ptr %i.bi, align 4
  %i.bs = and i32 %i.br, 15
  %i.bt = call ptr @Nm_ManStoreIdName(ptr noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.bs, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %.val70 = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bu = getelementptr i8, ptr %i.bh, i64 32
  %.val71 = load ptr, ptr %i.bu, align 8, !tbaa !51
  %i.bv = getelementptr i8, ptr %.val70, i64 32
  %.val70.val = load ptr, ptr %i.bv, align 8, !tbaa !47
  %.val71.val = load i32, ptr %.val71, align 4, !tbaa !48
  %i.bw = getelementptr i8, ptr %.val70.val, i64 8
  %.val70.val.val = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.bx = sext i32 %.val71.val to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.val70.val.val, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43 ; 3 uses
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.a, i32 noundef %.09.i, i32 noundef %i.bk) #17 ; 0 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 15
  %i.cj = call ptr @Nm_ManStoreIdName(ptr noundef %i.cd, i32 noundef %i.cf, i32 noundef %i.ci, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %.val68 = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.ck = getelementptr i8, ptr %i.bh, i64 48
  %.val69 = load ptr, ptr %i.ck, align 8, !tbaa !46
  %i.cl = getelementptr i8, ptr %.val68, i64 32
  %.val68.val = load ptr, ptr %i.cl, align 8, !tbaa !47
  %.val69.val = load i32, ptr %.val69, align 4, !tbaa !48
  %i.cm = getelementptr i8, ptr %.val68.val, i64 8
  %.val68.val.val = load ptr, ptr %i.cm, align 8, !tbaa !42
  %i.cn = sext i32 %.val69.val to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %.val68.val.val, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43 ; 3 uses
  %i.cq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.b, i32 noundef %.09.i, i32 noundef %i.bk) #17 ; 0 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 15
  %i.cz = call ptr @Nm_ManStoreIdName(ptr noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cy, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph111
  %i.da = phi ptr [ %.pre, %bb.b ], [ %i.be, %.lr.ph111 ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %.val = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dc = sext i32 %.val to i64
  %i.dd = icmp slt i64 %indvars.iv.next140, %i.dc
  br i1 %i.dd, label %.lr.ph111, label %.critedge4, !llvm.loop !91

.critedge4:                                       ; preds = %bb.c, %Abc_Base10Log.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkShortNames(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @Nm_ManFree(ptr noundef %i.b) #17
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr i8, ptr %0, i64 64
  %.val8 = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %.val8, i64 4
  %.val8.val = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = add nsw i32 %.val8.val, %.val.val
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val9 = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.i, align 4, !tbaa !40
  %i.j = add nsw i32 %i.g, %.val9.val
  %i.k = tail call ptr @Nm_ManCreate(i32 noundef %i.j) #17
  store ptr %i.k, ptr %i.a, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val8.i = load ptr, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  %i.m = getelementptr i8, ptr %.val8.i, i64 4
  %.val8.val.i = load i32, ptr %i.m, align 4, !tbaa !40 ; 4 uses
  %i.n = icmp ult i32 %.val8.val.i, 2
  br i1 %i.n, label %Abc_Base10Log.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.o = add i32 %.val8.val.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.013.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.0812.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ %i.o, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.p = udiv i32 %.0812.i.i, 10
  %i.q = add nuw nsw i32 %.013.i.i, 1             ; 2 uses
  %.not.i.i = icmp ult i32 %.0812.i.i, 10
  br i1 %.not.i.i, label %Abc_Base10Log.exit.i, label %.lr.ph.i.i, !llvm.loop !2

Abc_Base10Log.exit.i:                             ; preds = %.lr.ph.i.i, %bb.a
  %.09.i.i = phi i32 [ %.val8.val.i, %bb.a ], [ %i.q, %.lr.ph.i.i ]
  %i.r = icmp sgt i32 %.val8.val.i, 0
  br i1 %i.r, label %.lr.ph.i, label %Abc_NtkAddDummyPiNames.exit

.lr.ph.i:                                         ; preds = %Abc_Base10Log.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %Abc_Base10Log.exit.i ] ; 3 uses
  %.val13.i = phi ptr [ %.val.i, %.lr.ph.i ], [ %.val8.i, %Abc_Base10Log.exit.i ]
  %i.s = getelementptr i8, ptr %.val13.i, i64 8
  %.val9.val.i = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val9.val.i, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.w = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.3, i32 noundef %.09.i.i, i32 noundef %i.v) #17 ; 0 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 15
  %i.af = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ae, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  %i.ag = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ah = sext i32 %.val.val.i to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %Abc_NtkAddDummyPiNames.exit, !llvm.loop !3

Abc_NtkAddDummyPiNames.exit:                      ; preds = %.lr.ph.i, %Abc_Base10Log.exit.i
  %i.aj = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val8.i10 = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val8.i10, i64 4
  %.val8.val.i11 = load i32, ptr %i.ak, align 4, !tbaa !40 ; 4 uses
  %i.al = icmp ult i32 %.val8.val.i11, 2
  br i1 %i.al, label %Abc_Base10Log.exit.i17, label %.lr.ph.preheader.i.i12

.lr.ph.preheader.i.i12:                           ; preds = %Abc_NtkAddDummyPiNames.exit
  %i.am = add i32 %.val8.val.i11, -1
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13, %.lr.ph.preheader.i.i12
  %.013.i.i14 = phi i32 [ %i.ao, %.lr.ph.i.i13 ], [ 0, %.lr.ph.preheader.i.i12 ]
  %.0812.i.i15 = phi i32 [ %i.an, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.preheader.i.i12 ] ; 2 uses
  %i.an = udiv i32 %.0812.i.i15, 10
  %i.ao = add nuw nsw i32 %.013.i.i14, 1          ; 2 uses
  %.not.i.i16 = icmp ult i32 %.0812.i.i15, 10
  br i1 %.not.i.i16, label %Abc_Base10Log.exit.i17, label %.lr.ph.i.i13, !llvm.loop !2

Abc_Base10Log.exit.i17:                           ; preds = %.lr.ph.i.i13, %Abc_NtkAddDummyPiNames.exit
  %.09.i.i18 = phi i32 [ %.val8.val.i11, %Abc_NtkAddDummyPiNames.exit ], [ %i.ao, %.lr.ph.i.i13 ]
  %i.ap = icmp sgt i32 %.val8.val.i11, 0
  br i1 %i.ap, label %.lr.ph.i19, label %Abc_NtkAddDummyPoNames.exit

.lr.ph.i19:                                       ; preds = %Abc_Base10Log.exit.i17, %.lr.ph.i19
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i23, %.lr.ph.i19 ], [ 0, %Abc_Base10Log.exit.i17 ] ; 3 uses
  %.val13.i21 = phi ptr [ %.val.i24, %.lr.ph.i19 ], [ %.val8.i10, %Abc_Base10Log.exit.i17 ]
  %i.aq = getelementptr i8, ptr %.val13.i21, i64 8
  %.val9.val.i22 = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val9.val.i22, i64 %indvars.iv.i20
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43 ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.i20 to i32
  %i.au = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Abc_ObjNameDummy.Buffer, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.4, i32 noundef %.09.i.i18, i32 noundef %i.at) #17 ; 0 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 15
  %i.bd = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.ax, i32 noundef %i.az, i32 noundef %i.bc, ptr noundef nonnull @Abc_ObjNameDummy.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %.val.i24 = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %i.be = getelementptr i8, ptr %.val.i24, i64 4
  %.val.val.i25 = load i32, ptr %i.be, align 4, !tbaa !40
  %i.bf = sext i32 %.val.val.i25 to i64
  %i.bg = icmp slt i64 %indvars.iv.next.i23, %i.bf
  br i1 %i.bg, label %.lr.ph.i19, label %Abc_NtkAddDummyPoNames.exit, !llvm.loop !5

Abc_NtkAddDummyPoNames.exit:                      ; preds = %.lr.ph.i19, %Abc_Base10Log.exit.i17
  tail call void @Abc_NtkAddDummyBoxNames(ptr noundef nonnull %0)
  ret void
}

declare void @Nm_ManFree(ptr noundef) local_unnamed_addr #1

declare ptr @Nm_ManCreate(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Abc_NtkCharNames(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @Nm_ManFree(ptr noundef %i.b) #17
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr i8, ptr %0, i64 64
  %.val8 = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %.val8, i64 4
  %.val8.val = load i32, ptr %i.f, align 4, !tbaa !40
  %i.g = add nsw i32 %.val8.val, %.val.val
  %i.h = getelementptr i8, ptr %0, i64 80
  %.val9 = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.i, align 4, !tbaa !40
  %i.j = add nsw i32 %i.g, %.val9.val
  %i.k = tail call ptr @Nm_ManCreate(i32 noundef %i.j) #17
  store ptr %i.k, ptr %i.a, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val7.i = load ptr, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  %i.m = getelementptr i8, ptr %.val7.i, i64 4
  %.val.val8.i = load i32, ptr %i.m, align 4, !tbaa !40
  %i.n = icmp sgt i32 %.val.val8.i, 0
  br i1 %i.n, label %.lr.ph.i, label %Abc_NtkAddCharPiNames.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %.val10.i = phi ptr [ %.val.i, %.lr.ph.i ], [ %.val7.i, %bb.a ]
  %i.o = getelementptr i8, ptr %.val10.i, i64 8
  %.val6.val.i = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 3 uses
  %i.r = trunc i64 %indvars.iv.i to i8
  %char.i.i = add i8 %i.r, 97
  store i8 %char.i.i, ptr @Abc_ObjNameChar.Buffer, align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_ObjNameChar.Buffer, i64 1), align 1
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 15
  %i.aa = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.u, i32 noundef %i.w, i32 noundef %i.z, ptr noundef nonnull @Abc_ObjNameChar.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ac = sext i32 %.val.val.i to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %Abc_NtkAddCharPiNames.exit, !llvm.loop !4

Abc_NtkAddCharPiNames.exit:                       ; preds = %.lr.ph.i, %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val7.i10 = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.af = getelementptr i8, ptr %.val7.i10, i64 4
  %.val.val8.i11 = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ag = icmp sgt i32 %.val.val8.i11, 0
  br i1 %i.ag, label %.lr.ph.i12, label %Abc_NtkAddCharPoNames.exit

.lr.ph.i12:                                       ; preds = %Abc_NtkAddCharPiNames.exit, %.lr.ph.i12
  %indvars.iv.i13 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i12 ], [ 0, %Abc_NtkAddCharPiNames.exit ] ; 3 uses
  %.val10.i14 = phi ptr [ %.val.i18, %.lr.ph.i12 ], [ %.val7.i10, %Abc_NtkAddCharPiNames.exit ]
  %i.ah = getelementptr i8, ptr %.val10.i14, i64 8
  %.val6.val.i15 = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i15, i64 %indvars.iv.i13
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 3 uses
  %i.ak = trunc i64 %indvars.iv.i13 to i8
  %char.i.i16 = add i8 %i.ak, 65
  store i8 %char.i.i16, ptr @Abc_ObjNameChar.Buffer, align 16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_ObjNameChar.Buffer, i64 1), align 1
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 15
  %i.at = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.an, i32 noundef %i.ap, i32 noundef %i.as, ptr noundef nonnull @Abc_ObjNameChar.Buffer, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %.val.i18 = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.au = getelementptr i8, ptr %.val.i18, i64 4
  %.val.val.i19 = load i32, ptr %i.au, align 4, !tbaa !40
  %i.av = sext i32 %.val.val.i19 to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i17, %i.av
  br i1 %i.aw, label %.lr.ph.i12, label %Abc_NtkAddCharPoNames.exit, !llvm.loop !6

Abc_NtkAddCharPoNames.exit:                       ; preds = %.lr.ph.i12, %Abc_NtkAddCharPiNames.exit
  tail call void @Abc_NtkAddDummyBoxNames(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkCleanNames(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr i8, ptr %.val25, i64 4
  %.val25.val = load i32, ptr %i.b, align 4, !tbaa !40
  %i.c = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val28 = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr i8, ptr %.val28, i64 4
  %.val28.val = load i32, ptr %i.d, align 4, !tbaa !40
  %i.e = add nsw i32 %.val28.val, %.val25.val
  %i.f = getelementptr i8, ptr %0, i64 80
  %.val30 = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.g, align 4, !tbaa !40
  %i.h = add nsw i32 %i.e, %.val30.val
  %i.i = tail call ptr @Nm_ManCreate(i32 noundef %i.h) #17 ; 3 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %i.j = getelementptr i8, ptr %.val31, i64 4
  %.val.val32 = load i32, ptr %i.j, align 4, !tbaa !40
  %i.k = icmp sgt i32 %.val.val32, 0
  br i1 %i.k, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %.val2735 = load ptr, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  %i.l = getelementptr i8, ptr %.val2735, i64 4
  %.val27.val36 = load i32, ptr %i.l, align 4, !tbaa !40
  %i.m = icmp sgt i32 %.val27.val36, 0
  br i1 %i.m, label %.critedge, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val34 = phi ptr [ %.val, %.lr.ph ], [ %.val31, %bb.a ]
  %i.n = getelementptr i8, ptr %.val34, i64 8
  %.val26.val = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val26.val, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 15
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = tail call ptr @Nm_ManCreateUniqueName(ptr noundef %i.x, i32 noundef %i.r) #17
  %i.z = tail call ptr @Nm_ManStoreIdName(ptr noundef %i.i, i32 noundef %i.r, i32 noundef %i.u, ptr noundef %i.y, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.aa = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ab = sext i32 %.val.val to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.critedge.preheader, !llvm.loop !92

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
end_hunk_0
