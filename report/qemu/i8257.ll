Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/i8257?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@i8257_dma_run:bb.a
  %i.ap = shl i32 %i.ak, 2
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = shl i32 %i.aw, %i.ak
  %i.ay = tail call i32 %i.am(ptr noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ax) #5, !inline_history !15 ; 2 uses
  store i32 %i.ay, ptr %i.ar, align 4
  %i.az = load i16, ptr %i.at, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = shl i32 %i.bb, %i.ak
  %i.bd = icmp eq i32 %i.ay, %i.bc
  br i1 %i.bd, label %bb.h, label %i8257_channel_run.exit.1

bb.h:                                             ; preds = %bb.g
  %i.be = load i8, ptr %i.d, align 16
  %i.bf = or i8 %i.be, 2
  store i8 %i.bf, ptr %i.d, align 16
  br label %i8257_channel_run.exit.1

i8257_channel_run.exit.1:                         ; preds = %bb.h, %bb.g, %bb.f, %i8257_channel_run.exit
  %.1.1 = phi i32 [ %.1, %i8257_channel_run.exit ], [ %.1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ] ; 2 uses
  %i.bg = load i8, ptr %i.c, align 2
  %i.bh = and i8 %i.bg, 4
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %i8257_channel_run.exit.2

bb.i:                                             ; preds = %i8257_channel_run.exit.1
  %i.bj = load i8, ptr %i.d, align 16
  %i.bk = and i8 %i.bj, 64
  %.not16.2 = icmp eq i8 %i.bk, 0
  br i1 %.not16.2, label %i8257_channel_run.exit.2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %i.e, align 4             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bn = load ptr, ptr %i.bm, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = shl i32 %i.bl, 2
  %i.br = or disjoint i32 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 274 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bw, 1
  %i.by = shl i32 %i.bx, %i.bl
  %i.bz = tail call i32 %i.bn(ptr noundef %i.bp, i32 noundef %i.br, i32 noundef %i.bt, i32 noundef %i.by) #5, !inline_history !15 ; 2 uses
  store i32 %i.bz, ptr %i.bs, align 4
  %i.ca = load i16, ptr %i.bu, align 2
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = shl i32 %i.cc, %i.bl
  %i.ce = icmp eq i32 %i.bz, %i.cd
  br i1 %i.ce, label %bb.k, label %i8257_channel_run.exit.2

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.d, align 16
  %i.cg = or i8 %i.cf, 4
  store i8 %i.cg, ptr %i.d, align 16
  br label %i8257_channel_run.exit.2

i8257_channel_run.exit.2:                         ; preds = %bb.k, %bb.j, %bb.i, %i8257_channel_run.exit.1
  %.1.2 = phi i32 [ %.1.1, %i8257_channel_run.exit.1 ], [ %.1.1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ]
  %i.ch = load i8, ptr %i.c, align 2
  %i.ci = and i8 %i.ch, 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.l, label %i8257_channel_run.exit.3

bb.l:                                             ; preds = %i8257_channel_run.exit.2
  %i.ck = load i8, ptr %i.d, align 16
  %.not16.3 = icmp sgt i8 %i.ck, -1
  br i1 %.not16.3, label %i8257_channel_run.exit.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.e, align 4             ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cp = load ptr, ptr %i.co, align 16
  %i.cq = shl i32 %i.cl, 2
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 314 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, 1
  %i.cy = shl i32 %i.cx, %i.cl
  %i.cz = tail call i32 %i.cn(ptr noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.cy) #5, !inline_history !15 ; 2 uses
  store i32 %i.cz, ptr %i.cs, align 4
  %i.da = load i16, ptr %i.cu, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = shl i32 %i.dc, %i.cl
  %i.de = icmp eq i32 %i.cz, %i.dd
  br i1 %i.de, label %bb.n, label %i8257_channel_run.exit.3.thread

bb.n:                                             ; preds = %bb.m
  %i.df = load i8, ptr %i.d, align 16
  %i.dg = or i8 %i.df, 8
  store i8 %i.dg, ptr %i.d, align 16
  br label %i8257_channel_run.exit.3.thread

i8257_channel_run.exit.3.thread:                  ; preds = %bb.m, %bb.n
  store i32 0, ptr %i.a, align 4
  br label %.critedge

i8257_channel_run.exit.3:                         ; preds = %bb.l, %i8257_channel_run.exit.2
  store i32 0, ptr %i.a, align 4
  %i.dh = icmp eq i32 %.1.2, 0
  br i1 %i.dh, label %bb.o, label %.critedge

.critedge:                                        ; preds = %i8257_channel_run.exit.3.thread, %bb.a, %i8257_channel_run.exit.3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.dj = load ptr, ptr %i.di, align 16
  tail call void @qemu_bh_schedule_idle(ptr noundef %i.dj) #5
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 1, ptr %i.dk, align 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %i8257_channel_run.exit.3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 0, 256) i64 @i8257_read_chan(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c                        ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = and i64 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i8, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 179 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  %i.m = zext i1 %.not.i to i8
  store i8 %i.m, ptr %i.k, align 1
  %i.n = and i64 %i.d, 1
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = shl i32 %i.q, %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sub i32 %i.r, %i.t
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = and i8 %i.j, 32
  %.not = icmp eq i8 %i.v, 0
  %i.w = load i32, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = sub i32 0, %i.y
  %i.aa = select i1 %.not, i32 %i.y, i32 %i.z
  %i.ab = add i32 %i.aa, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.ab, %bb.c ]
  %i.ac = zext i8 %i.l to i32
  %i.ad = shl nuw nsw i32 %i.ac, 3
  %i.ae = add i32 %i.ad, %i.b
  %i.af = ashr i32 %.0, %i.ae
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  ret i64 %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @i8257_write_chan(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c                        ; 3 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = and i64 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 179 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %.not.i = icmp eq i8 %i.j, 0                    ; 2 uses
  %i.k = zext i1 %.not.i to i8
  store i8 %i.k, ptr %i.i, align 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i64 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, 255
  %.tr = trunc i64 %2 to i16
  %i.q = shl i16 %.tr, 8
  %i.r = or disjoint i16 %i.p, %i.q
  store i16 %i.r, ptr %i.n, align 2
  %i.s = load i16, ptr %i.m, align 8
  %i.t = zext i16 %i.s to i32
  %i.u = shl i32 %i.t, %i.b
  store i32 %i.u, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.v, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = and i64 %i.d, 1
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.x
  %4 = trunc i64 %2 to i8
  store i8 %4, ptr %i.y, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 256) i32 @i8257_read_page(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 113
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %1) #5 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @channels, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [40 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 197
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i8257_write_page(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 113
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %2) #5 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @channels, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  %i.i = trunc i32 %2 to i8
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr [40 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 197
  store i8 %i.i, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 256) i32 @i8257_read_pageh(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 113
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %1) #5 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @channels, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [40 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 198
  %i.l = load i8, ptr %i.k, align 2
  %i.m = zext i8 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i8257_write_pageh(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = and i32 %1, 7
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 113
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %2) #5 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @channels, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4
  %i.i = trunc i32 %2 to i8
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr [40 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 198
  store i8 %i.i, ptr %i.l, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 0, 256) i64 @i8257_read_cont(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = load i8, ptr %i.g, align 16              ; 2 uses
  %i.i = and i8 %i.h, -16
  store i8 %i.i, ptr %i.g, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.k = load i8, ptr %i.j, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0.shrunk = phi i8 [ %i.k, %bb.c ], [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.l = zext i8 %.0.shrunk to i64
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i8257_write_cont(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 15                         ; 2 uses
  switch i32 %i.f, label %bb.p [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 7, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %2, 251
  %.not40 = icmp eq i64 %i.g, 0
  br i1 %.not40, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 1024
  %.not41 = icmp eq i32 %i.i, 0
  br i1 %.not41, label %bb.q, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i8257_write_cont, i64 noundef %2) #5
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.j = trunc i64 %2 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.j, ptr %i.k, align 1
  br label %bb.q

bb.f:                                             ; preds = %bb.a
end_hunk_0
