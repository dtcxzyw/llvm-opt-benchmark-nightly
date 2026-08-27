Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/crc?download=true
inline.NumInlined: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@AV_CRC_24_IEEE_init_table_once:vector.ph
  %i.g = icmp slt <4 x i32> %i.e, zeroinitializer
  %i.h = select <4 x i1> %i.g, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.i = xor <4 x i32> %i.h, %i.f                 ; 2 uses
  %i.j = shl <4 x i32> %i.i, splat (i32 1)
  %i.k = icmp slt <4 x i32> %i.i, zeroinitializer
  %i.l = select <4 x i1> %i.k, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.m = xor <4 x i32> %i.l, %i.j                 ; 2 uses
  %i.n = shl <4 x i32> %i.m, splat (i32 1)
  %i.o = icmp slt <4 x i32> %i.m, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.q = xor <4 x i32> %i.p, %i.n                 ; 2 uses
  %i.r = shl <4 x i32> %i.q, splat (i32 1)
  %i.s = icmp slt <4 x i32> %i.q, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.u = xor <4 x i32> %i.t, %i.r                 ; 2 uses
  %i.v = shl <4 x i32> %i.u, splat (i32 1)
  %i.w = icmp slt <4 x i32> %i.u, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.y = xor <4 x i32> %i.x, %i.v                 ; 2 uses
  %i.z = shl <4 x i32> %i.y, splat (i32 1)
  %i.aa = icmp slt <4 x i32> %i.y, zeroinitializer
  %i.ab = select <4 x i1> %i.aa, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.ac = xor <4 x i32> %i.ab, %i.z               ; 2 uses
  %i.ad = shl <4 x i32> %i.ac, splat (i32 1)
  %i.ae = icmp slt <4 x i32> %i.ac, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 -2041775360), <4 x i32> zeroinitializer
  %i.ag = xor <4 x i32> %i.af, %i.ad
  %i.ah = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ag)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 24576), i64 %index
  store <4 x i32> %i.ah, ptr %i.ai, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aj = icmp eq i64 %index.next, 256
  br i1 %i.aj, label %.split65.us.i, label %vector.body, !llvm.loop !20

.split65.us.i:                                    ; preds = %vector.body
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 25600), align 16, !tbaa !9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.split65.us.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %.preheader.i ], [ 0, %.split65.us.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 24576), i64 %indvars.iv80.i ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.am = lshr i32 %i.al, 8
  %i.an = and i32 %i.al, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 24576), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = xor i32 %i.am, %i.aq                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !9
  %i.at = lshr i32 %i.ar, 8
  %i.au = and i32 %i.ar, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 24576), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = xor i32 %i.at, %i.ax                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 2048
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !9
  %i.ba = lshr i32 %i.ay, 8
  %i.bb = and i32 %i.ay, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 24576), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = xor i32 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 3072
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !9
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next81.i, 256
  br i1 %exitcond83.not.i, label %av_crc_init.exit, label %.preheader.i, !llvm.loop !15

av_crc_init.exit:                                 ; preds = %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @AV_CRC_32_IEEE_init_table_once() #3 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.a = shl <4 x i32> %vec.ind, splat (i32 25)   ; 2 uses
  %i.b = and <4 x i32> %vec.ind, splat (i32 128)
  %i.c = icmp eq <4 x i32> %i.b, zeroinitializer
  %i.d = select <4 x i1> %i.c, <4 x i32> zeroinitializer, <4 x i32> splat (i32 79764919)
  %i.e = xor <4 x i32> %i.d, %i.a
  %i.f = shl <4 x i32> %i.e, splat (i32 1)        ; 2 uses
  %i.g = icmp slt <4 x i32> %i.a, zeroinitializer
  %i.h = select <4 x i1> %i.g, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.i = xor <4 x i32> %i.f, %i.h
  %i.j = shl <4 x i32> %i.i, splat (i32 1)        ; 2 uses
  %i.k = icmp slt <4 x i32> %i.f, zeroinitializer
  %i.l = select <4 x i1> %i.k, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.m = xor <4 x i32> %i.l, %i.j
  %i.n = shl <4 x i32> %i.m, splat (i32 1)        ; 2 uses
  %i.o = icmp slt <4 x i32> %i.j, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.q = xor <4 x i32> %i.p, %i.n
  %i.r = shl <4 x i32> %i.q, splat (i32 1)        ; 2 uses
  %i.s = icmp slt <4 x i32> %i.n, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.u = xor <4 x i32> %i.t, %i.r
  %i.v = shl <4 x i32> %i.u, splat (i32 1)        ; 2 uses
  %i.w = icmp slt <4 x i32> %i.r, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.y = xor <4 x i32> %i.x, %i.v
  %i.z = shl <4 x i32> %i.y, splat (i32 1)        ; 2 uses
  %i.aa = icmp slt <4 x i32> %i.v, zeroinitializer
  %i.ab = select <4 x i1> %i.aa, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.ac = xor <4 x i32> %i.ab, %i.z
  %i.ad = shl <4 x i32> %i.ac, splat (i32 1)
  %i.ae = icmp slt <4 x i32> %i.z, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.ag = xor <4 x i32> %i.af, %i.ad
  %i.ah = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ag)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 12288), i64 %index
  store <4 x i32> %i.ah, ptr %i.ai, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aj = icmp eq i64 %index.next, 256
  br i1 %i.aj, label %.split65.us.i, label %vector.body, !llvm.loop !21

.split65.us.i:                                    ; preds = %vector.body
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 13312), align 16, !tbaa !9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.split65.us.i
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %.preheader.i ], [ 0, %.split65.us.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 12288), i64 %indvars.iv80.i ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.am = lshr i32 %i.al, 8
  %i.an = and i32 %i.al, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 12288), i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = xor i32 %i.am, %i.aq                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !9
  %i.at = lshr i32 %i.ar, 8
  %i.au = and i32 %i.ar, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 12288), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = xor i32 %i.at, %i.ax                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 2048
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !9
  %i.ba = lshr i32 %i.ay, 8
  %i.bb = and i32 %i.ay, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 12288), i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = xor i32 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 3072
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !9
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next81.i, 256
  br i1 %exitcond83.not.i, label %av_crc_init.exit, label %.preheader.i, !llvm.loop !15

av_crc_init.exit:                                 ; preds = %.preheader.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AV_CRC_32_IEEE_LE_init_table_once() #1 {
bb.a:
  %i.a = tail call i32 @av_crc_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 16384), i32 noundef 1, i32 noundef 32, i32 noundef -306674912, i32 noundef 4096)
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 342) #7
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AV_CRC_16_ANSI_LE_init_table_once() #1 {
bb.a:
  %i.a = tail call i32 @av_crc_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @av_crc_table, i64 20480), i32 noundef 1, i32 noundef 16, i32 noundef 40961, i32 noundef 4096)
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 343) #7
  tail call void @abort() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @av_crc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader34, label %.loopexit

.preheader34:                                     ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = and i64 %i.e, 3
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ne i64 %3, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.preheader34
  %.030.lcssa = phi ptr [ %2, %.preheader34 ], [ %5, %.lr.ph ], [ %20, %.lr.ph.1 ], [ %i.m, %.lr.ph.2 ], [ %36, %.lr.ph.3 ] ; 3 uses
  %.0.lcssa = phi i32 [ %1, %.preheader34 ], [ %13, %.lr.ph ], [ %28, %.lr.ph.1 ], [ %i.u, %.lr.ph.2 ], [ %44, %.lr.ph.3 ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.k = icmp ult ptr %.030.lcssa, %i.j
  br i1 %i.k, label %.lr.ph40, label %.loopexit

.lr.ph:                                           ; preds = %.preheader34
  %4 = and i32 %1, 255
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %6 = load i8, ptr %2, align 1, !tbaa !22
  %7 = zext i8 %6 to i32
  %8 = xor i32 %4, %7
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %12 = lshr i32 %1, 8
  %13 = xor i32 %11, %12                          ; 3 uses
  %14 = ptrtoint ptr %5 to i64
  %15 = and i64 %14, 3
  %16 = icmp ne i64 %15, 0
  %17 = icmp samesign ugt i64 %3, 1
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %.lr.ph.1, label %.preheader

.lr.ph.1:                                         ; preds = %.lr.ph
  %19 = and i32 %13, 255
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %21 = load i8, ptr %5, align 1, !tbaa !22
  %22 = zext i8 %21 to i32
  %23 = xor i32 %19, %22
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = lshr i32 %13, 8
  %28 = xor i32 %26, %27                          ; 3 uses
  %29 = ptrtoint ptr %20 to i64
  %30 = and i64 %29, 3
  %31 = icmp ne i64 %30, 0
  %32 = icmp samesign ugt i64 %3, 2
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %.lr.ph.2, label %.preheader

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.l = and i32 %28, 255
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.n = load i8, ptr %20, align 1, !tbaa !22
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.l, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = lshr i32 %28, 8
  %i.u = xor i32 %i.s, %i.t                       ; 3 uses
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = and i64 %i.v, 3
  %i.x = icmp ne i64 %i.w, 0
  %34 = icmp samesign ugt i64 %3, 3
  %i.y = select i1 %i.x, i1 %34, i1 false
  br i1 %i.y, label %.lr.ph.3, label %.preheader

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %35 = and i32 %i.u, 255
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %37 = load i8, ptr %i.m, align 1, !tbaa !22
  %38 = zext i8 %37 to i32
  %39 = xor i32 %35, %38
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !9
  %43 = lshr i32 %i.u, 8
  %44 = xor i32 %42, %43
  br label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %.139 = phi i32 [ %i.az, %.lr.ph40 ], [ %.0.lcssa, %.preheader ]
  %.13138 = phi ptr [ %i.ab, %.lr.ph40 ], [ %.030.lcssa, %.preheader ] ; 2 uses
  %i.z = load i32, ptr %.13138, align 4, !tbaa !9
  %i.aa = xor i32 %i.z, %.139                     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.13138, i64 4 ; 3 uses
  %i.ac = and i32 %i.aa, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3072
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = lshr i32 %i.aa, 8
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2048
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = xor i32 %i.am, %i.ag
  %i.ao = lshr i32 %i.aa, 16
  %i.ap = and i32 %i.ao, 255
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1024
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = xor i32 %i.an, %i.at
  %i.av = lshr i32 %i.aa, 24
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = xor i32 %i.au, %i.ay                    ; 2 uses
  %i.ba = icmp ult ptr %i.ab, %i.j
  br i1 %i.ba, label %.lr.ph40, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph40, %.preheader, %bb.a
  %.232 = phi ptr [ %2, %bb.a ], [ %.030.lcssa, %.preheader ], [ %i.ab, %.lr.ph40 ] ; 5 uses
  %.2 = phi i32 [ %1, %bb.a ], [ %.0.lcssa, %.preheader ], [ %i.az, %.lr.ph40 ] ; 3 uses
  %i.bb = icmp ult ptr %.232, %i.b
  br i1 %i.bb, label %.lr.ph45.preheader, label %._crit_edge

.lr.ph45.preheader:                               ; preds = %.loopexit
  %.23251 = ptrtoaddr ptr %.232 to i64            ; 2 uses
  %i.bc = add i64 %3, %i.a                        ; 2 uses
  %i.bd = sub i64 %i.bc, %.23251                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.232, i64 %i.bd
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader, %.lr.ph45.prol
  %.344.prol = phi i32 [ %i.bn, %.lr.ph45.prol ], [ %.2, %.lr.ph45.preheader ] ; 2 uses
  %.33343.prol = phi ptr [ %i.bf, %.lr.ph45.prol ], [ %.232, %.lr.ph45.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph45.prol ], [ 0, %.lr.ph45.preheader ]
  %i.be = and i32 %.344.prol, 255
  %i.bf = getelementptr inbounds nuw i8, ptr %.33343.prol, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.33343.prol, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.be, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = lshr i32 %.344.prol, 8
  %i.bn = xor i32 %i.bl, %i.bm                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol, !llvm.loop !24

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader ], [ %i.bn, %.lr.ph45.prol ]
  %.344.unr = phi i32 [ %.2, %.lr.ph45.preheader ], [ %i.bn, %.lr.ph45.prol ]
  %.33343.unr = phi ptr [ %.232, %.lr.ph45.preheader ], [ %i.bf, %.lr.ph45.prol ]
  %i.bo = sub i64 %.23251, %i.bc
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %._crit_edge, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %.344 = phi i32 [ %i.dd, %.lr.ph45 ], [ %.344.unr, %.lr.ph45.prol.loopexit ] ; 2 uses
  %.33343 = phi ptr [ %i.cv, %.lr.ph45 ], [ %.33343.unr, %.lr.ph45.prol.loopexit ] ; 5 uses
  %i.bq = and i32 %.344, 255
  %i.br = getelementptr inbounds nuw i8, ptr %.33343, i64 1
  %i.bs = load i8, ptr %.33343, align 1, !tbaa !22
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 %i.bq, %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !9
  %i.by = lshr i32 %.344, 8
  %i.bz = xor i32 %i.bx, %i.by                    ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = getelementptr inbounds nuw i8, ptr %.33343, i64 2
  %i.cc = load i8, ptr %i.br, align 1, !tbaa !22
  %i.cd = zext i8 %i.cc to i32
  %i.ce = xor i32 %i.ca, %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = lshr i32 %i.bz, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = and i32 %i.cj, 255
  %i.cl = getelementptr inbounds nuw i8, ptr %.33343, i64 3
  %i.cm = load i8, ptr %i.cb, align 1, !tbaa !22
  %i.cn = zext i8 %i.cm to i32
  %i.co = xor i32 %i.ck, %i.cn
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = lshr i32 %i.cj, 8
  %i.ct = xor i32 %i.cr, %i.cs                    ; 2 uses
  %i.cu = and i32 %i.ct, 255
  %i.cv = getelementptr inbounds nuw i8, ptr %.33343, i64 4 ; 2 uses
  %i.cw = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cx = zext i8 %i.cw to i32
  %i.cy = xor i32 %i.cu, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9
  %i.dc = lshr i32 %i.ct, 8
  %i.dd = xor i32 %i.db, %i.dc                    ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.cv, %scevgep
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph45, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %.loopexit
  %.3.lcssa = phi i32 [ %.2, %.loopexit ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.dd, %.lr.ph45 ]
  ret i32 %.3.lcssa
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12, !13}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !12, !13}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !12, !13}
!21 = distinct !{!21, !11, !12, !13}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !11}
end_hunk_0
