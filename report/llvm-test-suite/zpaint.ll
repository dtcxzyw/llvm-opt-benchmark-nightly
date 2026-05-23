inline.NumInlined: 1
begin_hunk_0
@zpaint_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { ptr @.str.3, ptr @zeofill }, %struct.op_def { ptr @.str.4, ptr @zerasepage }, %struct.op_def { ptr @.str.5, ptr @zfill }, %struct.op_def { ptr @.str.6, ptr @zcolorimage }, %struct.op_def { ptr @.str.7, ptr @zimage }, %struct.op_def { ptr @.str.8, ptr @zimagemask }, %struct.op_def { ptr @.str.9, ptr @zstroke }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"0eofill\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0erasepage\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"0fill\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"7colorimage\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"5image\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"5imagemask\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0stroke\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zerasepage(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_erasepage(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_erasepage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zfill(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_fill(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zeofill(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_eofill(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_eofill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zstroke(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_stroke(ptr noundef %i.a) #4
  ret i32 %i.b
}

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @zcolorimage(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 20
  br i1 %i.e, label %bb.b, label %zimage.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !11
  %i.i = and i16 %i.h, 252
  %i.j = icmp eq i16 %i.i, 4
  br i1 %i.j, label %bb.c, label %zimage.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  br i1 %i.l, label %zimage.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw nsw i64 %i.k to i32            ; 3 uses
  switch i32 %i.m, label %zimage.exit [
    i32 1, label %bb.e
    i32 3, label %bb.i
    i32 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @osp, align 8, !tbaa !15
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -32
  store ptr %i.o, ptr @osp, align 8, !tbaa !15
  %i.p = getelementptr inbounds i8, ptr %0, i64 -24
  %i.q = load i16, ptr %i.p, align 8, !tbaa !11
  %i.r = and i16 %i.q, 252
  %i.s = icmp eq i16 %i.r, 20
  br i1 %i.s, label %bb.f, label %zimage.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.u = icmp ugt i64 %i.t, 8
  br i1 %i.u, label %zimage.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = trunc nuw nsw i64 %i.t to i32
  %i.w = tail call i32 @image_setup(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef 1) ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.h, label %zimage.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @osp, align 8, !tbaa !15
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -80
  br label %zimage.exit.sink.split

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.aa = load i16, ptr %i.f, align 8, !tbaa !14
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.neg = sub nuw nsw i64 -6, %i.k
  %i.ab = shl nuw nsw i64 %i.k, 32
  %sext = add nsw i64 %i.ab, -4294967296
  %i.ac = ashr exact i64 %sext, 32
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ad
  %i.af = sub nsw i32 0, %i.m
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.022 = phi i32 [ %i.af, %bb.j ], [ %i.m, %bb.i ]
  %.021.neg = phi i64 [ %.neg, %bb.j ], [ -7, %bb.i ]
  %.020 = phi ptr [ %i.ae, %bb.j ], [ %i.a, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.020, i64 -24
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !11
  %i.ai = and i16 %i.ah, 252
  %i.aj = icmp eq i16 %i.ai, 20
  br i1 %i.aj, label %bb.l, label %zimage.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds i8, ptr %.020, i64 -32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 8
  br i1 %i.am, label %zimage.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc nuw nsw i64 %i.al to i32
  %i.ao = tail call i32 @image_setup(ptr noundef nonnull %.020, i32 noundef %i.an, i32 noundef %.022) ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.n, label %zimage.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr @osp, align 8, !tbaa !15
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %.021.neg
  br label %zimage.exit.sink.split

zimage.exit.sink.split:                           ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.z, %bb.h ], [ %i.ar, %bb.n ]
  %.0.ph = phi i32 [ %i.w, %bb.h ], [ %i.ao, %bb.n ]
  store ptr %.sink, ptr @osp, align 8, !tbaa !15
  br label %zimage.exit

zimage.exit:                                      ; preds = %zimage.exit.sink.split, %bb.g, %bb.f, %bb.e, %bb.m, %bb.l, %bb.k, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -20, %bb.b ], [ -15, %bb.c ], [ %i.ao, %bb.m ], [ -20, %bb.k ], [ -15, %bb.l ], [ -15, %bb.d ], [ -20, %bb.a ], [ %i.w, %bb.g ], [ -20, %bb.e ], [ -15, %bb.f ], [ %.0.ph, %zimage.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @image_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = tail call i32 @llvm.smin.i32(i32 %2, i32 -1) ; 3 uses
  %i.b = load ptr, ptr @esp, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr @estop, align 8, !tbaa !15
  %i.e = icmp ugt ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 -56
  %i.h = load i16, ptr %i.g, align 8, !tbaa !11
  %i.i = and i16 %i.h, 252
  %i.j = icmp eq i16 %i.i, 20
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 -40
  %i.m = load i16, ptr %i.l, align 8, !tbaa !11
  %i.n = and i16 %i.m, 252
  %i.o = icmp eq i16 %i.n, 20
  br i1 %i.o, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.p = sub i32 0, %i.a
  %wide.trip.count = zext i32 %i.p to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %4 = lshr i16 %i.s, 2
  %5 = and i16 %4, 63
  switch i16 %5, label %.loopexit [
    i16 13, label %bb.e
    i16 0, label %bb.d
    i16 10, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader, %.preheader
  %i.t = and i16 %i.s, 3
  %.not49 = icmp eq i16 %i.t, 3
  br i1 %.not49, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.f, align 8, !tbaa !14
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds i8, ptr %0, i64 -16
  %i.aa = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %i.z, ptr noundef nonnull %3) #4 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr @gs_image_enum_sizeof, align 4, !tbaa !4
  %i.ad = call ptr @alloc(i32 noundef 1, i32 noundef %i.ac, ptr noundef nonnull @.str) #4 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = icmp eq i32 %2, 0
  %i.ag = load ptr, ptr @igs, align 8, !tbaa !8   ; 2 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !14
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !14
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call i32 @gs_imagemask_init(ptr noundef nonnull %i.ad, ptr noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %1, ptr noundef nonnull %3) #4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = call i32 @gs_image_init(ptr noundef nonnull %i.ad, ptr noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = phi i32 [ %i.al, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @esp, align 8, !tbaa !15  ; 20 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i16 0, ptr %i.aq, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i16 33, ptr %i.ar, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr %i.as, ptr @esp, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %.not47.1 = icmp sgt i32 %2, -2
  br i1 %.not47.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !19
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %i.at, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i16 32, ptr %i.av, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  %.not47.2 = icmp samesign ugt i32 %i.a, -3
  br i1 %.not47.2, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  store i64 0, ptr %i.aw, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store i16 32, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 2 uses
  %.not47.3 = icmp eq i32 %2, -3
  br i1 %.not47.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !19
  br label %bb.v

bb.u:                                             ; preds = %.thread, %bb.s
  %i.bc = phi ptr [ %i.ay, %.thread ], [ %i.ba, %bb.s ]
  store i64 0, ptr %i.bc, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store i16 32, ptr %i.bd, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store i64 0, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store i16 20, ptr %i.bf, align 8, !tbaa !11
  %i.bg = trunc i32 %i.a to i16
  %i.bh = xor i16 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 106
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store ptr %i.ad, ptr %i.bj, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store i16 52, ptr %i.bk, align 8, !tbaa !11
  %i.bl = load i32, ptr @gs_image_enum_sizeof, align 4, !tbaa !4
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 122
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  store ptr @image_continue, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store i16 37, ptr %i.bp, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 138
  store i16 0, ptr %i.bq, align 2, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  store ptr %i.br, ptr @esp, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.n, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c, %bb.b, %bb.a, %bb.v
  %.0 = phi i32 [ -5, %bb.a ], [ -20, %bb.c ], [ -23, %bb.g ], [ %i.an, %bb.n ], [ -23, %bb.f ], [ 0, %bb.h ], [ %i.aa, %bb.i ], [ -25, %bb.j ], [ 1, %bb.v ], [ -20, %bb.b ], [ -7, %bb.d ], [ -20, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @zimage(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 8
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %i.f to i32
  %i.i = tail call i32 @image_setup(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @osp, align 8, !tbaa !15
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -80
  store ptr %i.l, ptr @osp, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ -15, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @zimagemask(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !14
  %i.g = zext i16 %i.f to i32
  %i.h = tail call i32 @image_setup(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef 0) ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d
end_hunk_0
