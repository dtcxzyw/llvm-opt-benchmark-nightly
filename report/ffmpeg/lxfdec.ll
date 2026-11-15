Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lxfdec?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lxf_read_header:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.a, %bb.j, %bb.e, %bb.c
  %.0 = phi i32 [ %i.f, %bb.a ], [ -1094995529, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.j ], [ -12, %bb.f ], [ -12, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @lxf_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = tail call fastcc i32 @get_packet_header(ptr noundef %0) ; 7 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41   ; 5 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14, i32 noundef %i.h) #5
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.h, 1
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = icmp ult i32 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #5
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.e) #5 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = tail call i32 @avio_read(ptr noundef %i.d, ptr noundef %i.q, i32 noundef %i.e) #5 ; 3 uses
  %.not = icmp eq i32 %i.r, %i.e
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, i32 %i.r, i32 -541478725
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.h, ptr %i.u, align 4, !tbaa !66
  %.not33 = icmp eq i32 %i.h, 0
  br i1 %.not33, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = and i32 %i.w, 8388608
  %.not34.not = icmp eq i32 %i.x, 0
  br i1 %.not34.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !67
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !68 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !68
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.g, %bb.a, %bb.i, %bb.f, %bb.c
  %.0 = phi i32 [ %i.n, %bb.g ], [ -1329874258, %bb.c ], [ -1094995529, %bb.f ], [ %i.e, %bb.a ], [ %i.t, %bb.i ], [ %i.e, %bb.m ], [ %i.e, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_packet_header(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 9 uses
  %i.b = alloca [256 x i8], align 16              ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = call i32 @avio_read(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 8) #5 ; 3 uses
  %.not.i = icmp eq i32 %i.h, 8
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 1
  %i.j = icmp ne i64 %i.i, 79454014096716
  %i.k = zext i1 %i.j to i32
  %.not710.i = icmp eq i32 %i.k, 0
  br i1 %.not710.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.h, 0
  %spec.select100 = select i1 %i.n, i32 %i.h, i32 -541478725
  br label %lxf_sync.exit.thread

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.p = call i32 @avio_feof(ptr noundef %i.o) #5
  %.not8.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i, label %bb.d, label %lxf_sync.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) %i.l, i64 7, i1 false)
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.r = call i32 @avio_r8(ptr noundef %i.q) #5
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %i.m, align 1, !tbaa !28
  %i.t = load i64, ptr %i.a, align 1
  %i.u = icmp ne i64 %i.t, 79454014096716
  %i.v = zext i1 %i.u to i32
  %.not7.i = icmp eq i32 %i.v, 0
  br i1 %.not7.i, label %.loopexit, label %bb.c, !llvm.loop !70

lxf_sync.exit.thread:                             ; preds = %bb.c, %bb.b
  %.0.i.ph = phi i32 [ %spec.select100, %bb.b ], [ -541478725, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.aa

.loopexit:                                        ; preds = %bb.d, %.preheader.i
  store i64 79454014096716, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.w = call i32 @avio_read(ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef 8) #5 ; 3 uses
  %.not = icmp eq i32 %i.w, 8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %i.w, i32 -541478725
  br label %bb.aa

bb.f:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !28  ; 6 uses
  %i.ad = icmp ugt i32 %i.aa, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.aa) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not67 = icmp eq i32 %i.aa, 0                  ; 7 uses
  %i.ae = select i1 %.not67, i32 60, i32 72
  %i.af = icmp uge i32 %i.ac, %i.ae
  %i.ag = icmp ult i32 %i.ac, 257
  %or.cond.not104 = and i1 %i.ag, %i.af
  %i.ah = and i32 %i.ac, 3
  %.not68 = icmp eq i32 %i.ah, 0
  %or.cond73 = and i1 %.not68, %or.cond.not104
  br i1 %or.cond73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.ac) #5
  br label %bb.aa

bb.j:                                             ; preds = %bb.h
  %i.ai = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.aj = add nsw i32 %i.ac, -16
  %i.ak = call i32 @avio_read(ptr noundef %i.f, ptr noundef nonnull %i.ab, i32 noundef %i.aj) #5 ; 4 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.ai, -16
  %.not69 = icmp eq i64 %i.am, %i.al
  br i1 %.not69, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %bb.j
  %1 = add nsw i64 %i.ai, -4                      ; 2 uses
  %2 = lshr exact i64 %1, 2
  %3 = add nuw nsw i64 %2, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %1, 28
  br i1 %min.iters.check, label %.preheader.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %3, 9223372036854775800        ; 9 uses
  %i.an = shl i64 %n.vec, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 16, !tbaa !28 ; 2 uses
  %wide.load126 = load <4 x i32>, ptr %i.ao, align 16, !tbaa !28 ; 2 uses
  %i.ap = icmp eq i64 %n.vec, 8
  br i1 %i.ap, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.aq, align 16, !tbaa !28
  %wide.load126.1 = load <4 x i32>, ptr %i.ar, align 16, !tbaa !28
  %i.as = add <4 x i32> %wide.load.1, %wide.load  ; 2 uses
  %i.at = add <4 x i32> %wide.load126.1, %wide.load126 ; 2 uses
  %i.au = icmp eq i64 %n.vec, 16
  br i1 %i.au, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.av, align 16, !tbaa !28
  %wide.load126.2 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !28
  %i.ax = add <4 x i32> %wide.load.2, %i.as       ; 2 uses
  %i.ay = add <4 x i32> %wide.load126.2, %i.at    ; 2 uses
  %i.az = icmp eq i64 %n.vec, 24
  br i1 %i.az, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.ba, align 16, !tbaa !28
  %wide.load126.3 = load <4 x i32>, ptr %i.bb, align 16, !tbaa !28
  %i.bc = add <4 x i32> %wide.load.3, %i.ax       ; 2 uses
  %i.bd = add <4 x i32> %wide.load126.3, %i.ay    ; 2 uses
  %i.be = icmp eq i64 %n.vec, 32
  br i1 %i.be, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.bf, align 16, !tbaa !28
  %wide.load126.4 = load <4 x i32>, ptr %i.bg, align 16, !tbaa !28
  %i.bh = add <4 x i32> %wide.load.4, %i.bc       ; 2 uses
  %i.bi = add <4 x i32> %wide.load126.4, %i.bd    ; 2 uses
  %i.bj = icmp eq i64 %n.vec, 40
  br i1 %i.bj, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.bk, align 16, !tbaa !28
  %wide.load126.5 = load <4 x i32>, ptr %i.bl, align 16, !tbaa !28
  %i.bm = add <4 x i32> %wide.load.5, %i.bh       ; 2 uses
  %i.bn = add <4 x i32> %wide.load126.5, %i.bi    ; 2 uses
  %i.bo = icmp eq i64 %n.vec, 48
  br i1 %i.bo, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.bp, align 16, !tbaa !28
  %wide.load126.6 = load <4 x i32>, ptr %i.bq, align 16, !tbaa !28
  %i.br = add <4 x i32> %wide.load.6, %i.bm       ; 2 uses
  %i.bs = add <4 x i32> %wide.load126.6, %i.bn    ; 2 uses
  %i.bt = icmp eq i64 %n.vec, 56
  br i1 %i.bt, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %wide.load.7 = load <4 x i32>, ptr %i.bu, align 16, !tbaa !28
  %wide.load126.7 = load <4 x i32>, ptr %i.bv, align 16, !tbaa !28
  %i.bw = add <4 x i32> %wide.load.7, %i.br
  %i.bx = add <4 x i32> %wide.load126.7, %i.bs
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa130 = phi <4 x i32> [ %wide.load, %vector.ph ], [ %i.as, %vector.body.1 ], [ %i.ax, %vector.body.2 ], [ %i.bc, %vector.body.3 ], [ %i.bh, %vector.body.4 ], [ %i.bm, %vector.body.5 ], [ %i.br, %vector.body.6 ], [ %i.bw, %vector.body.7 ]
  %.lcssa129 = phi <4 x i32> [ %wide.load126, %vector.ph ], [ %i.at, %vector.body.1 ], [ %i.ay, %vector.body.2 ], [ %i.bd, %vector.body.3 ], [ %i.bi, %vector.body.4 ], [ %i.bn, %vector.body.5 ], [ %i.bs, %vector.body.6 ], [ %i.bx, %vector.body.7 ]
  %bin.rdx = add <4 x i32> %.lcssa129, %.lcssa130
  %i.by = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %check_checksum.exit, label %.preheader.preheader127

.preheader.preheader127:                          ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.an, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.by, %middle.block ]
  br label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i32 %i.ak, 0
  %i.ca = select i1 %i.bz, i32 %i.ak, i32 -541478725
  br label %bb.aa

.preheader:                                       ; preds = %.preheader.preheader127, %.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader ], [ %indvars.iv.i.ph, %.preheader.preheader127 ] ; 2 uses
  %.08.i = phi i32 [ %i.cd, %.preheader ], [ %.08.i.ph, %.preheader.preheader127 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = add i32 %i.cc, %.08.i                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next.i, %i.ai
  br i1 %i.ce, label %.preheader, label %check_checksum.exit, !llvm.loop !71

check_checksum.exit:                              ; preds = %.preheader, %middle.block
  %.lcssa = phi i32 [ %i.by, %middle.block ], [ %i.cd, %.preheader ]
  %.not70 = icmp eq i32 %.lcssa, 0
  br i1 %.not70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %check_checksum.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %check_checksum.exit
  %i.cf = load i32, ptr %i.ab, align 16, !tbaa !28 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !41
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.sel = select i1 %.not67, ptr %.sroa.gep, ptr %.sroa.gep89 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !40
  switch i32 %i.cf, label %bb.y [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ci = load i32, ptr %.sroa.sel, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !43
  %.sroa.gep108.val = load i32, ptr %.sroa.gep108, align 4
  %.sroa.gep109.val = load i32, ptr %.sroa.gep109, align 4 ; 2 uses
  %i.ck = select i1 %.not67, i32 %.sroa.gep108.val, i32 %.sroa.gep109.val
  %.sroa.gep111 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.gep111.val = load i32, ptr %.sroa.gep111, align 4 ; 2 uses
  %i.cl = select i1 %.not67, i32 %.sroa.gep109.val, i32 %.sroa.gep111.val
  %i.cm = zext i32 %i.cl to i64
  %.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.gep113.val = load i32, ptr %.sroa.gep113, align 4
  %i.cn = select i1 %.not67, i32 %.sroa.gep111.val, i32 %.sroa.gep113.val
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, %i.cm
  %i.cq = call i64 @avio_skip(ptr noundef %i.f, i64 noundef %i.cp) #5 ; 0 uses
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42
  %i.ct = icmp ult i32 %i.cs, 2
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.10) #5
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %.sroa.gep.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.cu = load i32, ptr %.sroa.gep89, align 8, !tbaa !28 ; 2 uses
  %.sroa.gep.sroa.gep.sroa.gep105 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cv = load i32, ptr %.sroa.gep.sroa.gep.sroa.gep, align 4, !tbaa !28
  %i.cw = load i32, ptr %.sroa.gep.sroa.gep.sroa.gep105, align 16, !tbaa !28 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !75 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !77
  %i.db = lshr i32 %i.cu, 6
  %i.dc = and i32 %i.db, 63                       ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !35 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store i32 %i.dc, ptr %i.df, align 8, !tbaa !78
  %i.dg = and i32 %i.cu, 63
  %.not71 = icmp eq i32 %i.dc, %i.dg
  br i1 %.not71, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #5
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %switch.tableidx = add nsw i32 %i.dc, -16       ; 3 uses
  %i.dh = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 65809, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.dh, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #5
  br label %bb.aa

switch.lookup:                                    ; preds = %bb.s
  %i.di = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.get_packet_header, i64 %i.di
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %switch.load, ptr %i.dj, align 4, !tbaa !38
  %i.dk = sext i32 %i.cw to i64                   ; 2 uses
  %i.dl = shl nsw i64 %i.dk, 3
  %i.dm = zext nneg i32 %i.dc to i64
  %i.dn = sdiv i64 %i.dl, %i.dm
  %i.do = trunc nsw i64 %i.dn to i32
  switch i32 %i.do, label %bb.v [
    i32 8008, label %bb.u
    i32 1920, label %bb.w
  ]

bb.u:                                             ; preds = %switch.lookup
  %i.dp = load ptr, ptr %i.cy, align 8, !tbaa !77
  call void @avpriv_set_pts_info(ptr noundef %i.dp, i32 noundef 64, i32 noundef 1001, i32 noundef 30000) #5
  br label %bb.x

bb.v:                                             ; preds = %switch.lookup
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.13) #5
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !75
  br label %bb.w

bb.w:                                             ; preds = %switch.lookup, %bb.v
  %i.dq = phi ptr [ %i.cy, %switch.lookup ], [ %.pre, %bb.v ]
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !77
  call void @avpriv_set_pts_info(ptr noundef %i.dr, i32 noundef 64, i32 noundef 1, i32 noundef 25) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ds = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cv) ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, %i.dk
  %i.dv = icmp ugt i64 %i.du, 2147483647
  %i.dw = mul nsw i32 %i.ds, %i.cw
  %spec.select = select i1 %i.dv, i32 -1094995529, i32 %i.dw
  br label %bb.aa

bb.y:                                             ; preds = %bb.m
  %.sroa.sel.sroa.sel98.v.sroa.sel.v.sroa.sel.v = select i1 %.not67, i64 36, i64 44
  %.sroa.sel.sroa.sel98.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.sroa.sel98.v.sroa.sel.v.sroa.sel.v
  %i.dx = load i32, ptr %.sroa.sel, align 8, !tbaa !28
  %i.dy = load i32, ptr %.sroa.sel.sroa.sel98.v.sroa.sel.v.sroa.sel, align 4, !tbaa !28 ; 2 uses
  %i.dz = icmp eq i32 %i.dx, 1
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.gep117 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.gep89.val = load i32, ptr %.sroa.gep89, align 8
  %.sroa.gep117.val = load i32, ptr %.sroa.gep117, align 16
  %i.ea = select i1 %.not67, i32 %.sroa.gep89.val, i32 %.sroa.gep117.val
  store i32 %i.ea, ptr %i.ch, align 4, !tbaa !40
  br label %bb.aa

bb.aa:                                            ; preds = %lxf_sync.exit.thread, %bb.x, %bb.n, %bb.p, %bb.z, %bb.y, %bb.t, %bb.r, %bb.k, %bb.i, %bb.e
  %.060 = phi i32 [ %.0.i.ph, %lxf_sync.exit.thread ], [ %i.y, %bb.e ], [ -1094995529, %bb.i ], [ %i.ca, %bb.k ], [ %spec.select, %bb.x ], [ -1163346256, %bb.r ], [ -1163346256, %bb.t ], [ %i.dy, %bb.z ], [ %i.dy, %bb.y ], [ %i.ck, %bb.n ], [ %i.ak, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.060
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @avio_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_codec_get_id(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #3

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
end_hunk_0
