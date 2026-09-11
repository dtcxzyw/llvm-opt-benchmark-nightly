Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/io_dec?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPYUV444Converters = external local_unnamed_addr global [0 x ptr], align 8
@WebPApplyAlphaMultiply4444 = external local_unnamed_addr global ptr, align 8
@WebPDispatchAlpha = external local_unnamed_addr global ptr, align 8
@WebPApplyAlphaMultiply = external local_unnamed_addr global ptr, align 8
@WebPSamplers = external local_unnamed_addr global [0 x ptr], align 8
@WebPUpsamplers = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @WebPInitCustomIo(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((56, 88)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @CustomPut, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @CustomSetup, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @CustomTeardown, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %0, ptr %i.d, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CustomPut(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp slt i32 %i.d, 1
  %i.h = icmp slt i32 %i.f, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %i.b) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.k) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !22
  %i.q = add nsw i32 %i.p, %i.k
  store i32 %i.q, ptr %i.o, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CustomSetup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !13       ; 20 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = load i32, ptr %4, align 8, !tbaa !25       ; 6 uses
  %6 = icmp ugt i32 %5, 10                        ; 2 uses
  switch i32 %5, label %WebPIsAlphaMode.exit [
    i32 12, label %WebPIsAlphaMode.exit.thread
    i32 5, label %WebPIsAlphaMode.exit.thread
    i32 4, label %WebPIsAlphaMode.exit.thread
    i32 3, label %WebPIsAlphaMode.exit.thread
    i32 1, label %WebPIsAlphaMode.exit.thread
  ]

WebPIsAlphaMode.exit.thread:                      ; preds = %1, %1, %1, %1, %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  br label %bb.a

WebPIsAlphaMode.exit:                             ; preds = %1
  %8 = add i32 %5, -11
  %narrow.i.i = icmp ult i32 %8, -4               ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %spec.select78 = select i1 %narrow.i.i, i32 12, i32 11
  br label %bb.a

bb.a:                                             ; preds = %WebPIsAlphaMode.exit, %WebPIsAlphaMode.exit.thread
  %10 = phi ptr [ %7, %WebPIsAlphaMode.exit.thread ], [ %9, %WebPIsAlphaMode.exit ] ; 3 uses
  %.not77 = phi i1 [ false, %WebPIsAlphaMode.exit.thread ], [ %narrow.i.i, %WebPIsAlphaMode.exit ] ; 3 uses
  %11 = phi i32 [ 11, %WebPIsAlphaMode.exit.thread ], [ %spec.select78, %WebPIsAlphaMode.exit ]
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.in = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load ptr, ptr %.in, align 8, !tbaa !73
  %i.e = tail call i32 @WebPIoInitFromOptions(ptr noundef %i.d, ptr noundef nonnull %0, i32 noundef %11) #7
  %.not51 = icmp eq i32 %i.e, 0
  br i1 %.not51, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %5, -11
  %narrow.i = icmp ult i32 %i.f, -4
  %or.cond72 = or i1 %narrow.i, %.not77
  br i1 %or.cond72, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @WebPInitUpsamplers() #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !23     ; 9 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %switch.tableidx83 = add i32 %i.j, -1           ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx83, 12
  %switch.maskindex84 = trunc i32 %switch.tableidx83 to i16
  %switch.shifted85 = lshr i16 2077, %switch.maskindex84
  %switch.lobit86 = trunc i16 %switch.shifted85 to i1
  %or.cond87 = select i1 %i.k, i1 %switch.lobit86, i1 false
  %i.l = add i32 %i.j, -7
  %narrow.i.i.i65 = icmp ult i32 %i.l, 4
  %.not.i60.not = select i1 %or.cond87, i1 true, i1 %narrow.i.i.i65 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26   ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !75   ; 7 uses
  br i1 %6, label %WebPIsAlphaMode.exit.i59, label %WebPIsAlphaMode.exit.i

WebPIsAlphaMode.exit.i:                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = add nsw i32 %i.r, 1
  %i.t = ashr i32 %i.s, 1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !15
  %i.w = add nsw i32 %i.v, 1
  %i.x = ashr i32 %i.w, 1                         ; 2 uses
  %i.y = sext i32 %i.n to i64                     ; 5 uses
  %i.z = shl nsw i64 %i.y, 1                      ; 2 uses
  %spec.select79 = select i1 %.not.i60.not, i64 4, i64 3 ; 3 uses
  %i.aa = mul nsw i64 %i.z, %spec.select79        ; 2 uses
  %i.ab = mul nsw i64 %spec.select79, %i.y
  %i.ac = shl nsw i64 %i.aa, 2
  %i.ad = add nsw i64 %i.ac, %i.ab                ; 2 uses
  %i.ae = mul nuw nsw i64 %spec.select79, 104
  %i.af = add nuw nsw i64 %i.ae, 31
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.ag) #7 ; 8 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !27
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.critedge, label %bb.f

bb.f:                                             ; preds = %WebPIsAlphaMode.exit.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aa ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.ad
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 31
  %i.an = and i64 %i.am, -32
  %i.ao = inttoptr i64 %i.an to ptr               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 312
  %i.av = select i1 %.not.i60.not, ptr %i.au, ptr null
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !31
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !14
  %i.ay = load i32, ptr %i.u, align 8, !tbaa !15
  %i.az = tail call i32 @WebPRescalerInit(ptr noundef %i.ao, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull %i.aj, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.ah) #7
  %.not80.i = icmp eq i32 %i.az, 0
  br i1 %.not80.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.bb = getelementptr inbounds i8, ptr %i.aj, i64 %i.y
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.z
  %i.bd = tail call i32 @WebPRescalerInit(ptr noundef %i.ba, i32 noundef %i.t, i32 noundef %i.x, ptr noundef nonnull %i.bb, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bc) #7
  %.not81.i = icmp eq i32 %i.bd, 0
  br i1 %.not81.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.bf = shl nsw i32 %i.n, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aj, i64 %i.bg
  %.idx.i = shl nsw i64 %i.y, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %i.bj = tail call i32 @WebPRescalerInit(ptr noundef %i.be, i32 noundef %i.t, i32 noundef %i.x, ptr noundef nonnull %i.bh, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bi) #7
  %.not82.i = icmp eq i32 %i.bj, 0
  br i1 %.not82.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @EmitRescaledRGB, ptr %i.a, align 8, !tbaa !20
  tail call void @WebPInitYUV444Converters() #7
  br i1 %.not.i60.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.bl = load i32, ptr %i.q, align 4, !tbaa !14
  %i.bm = load i32, ptr %i.u, align 8, !tbaa !15
  %i.bn = mul nsw i32 %i.n, 3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.aj, i64 %i.bo
  %.idx83.i = mul nsw i64 %i.y, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx83.i
  %i.br = tail call i32 @WebPRescalerInit(ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef nonnull %i.bp, i32 noundef %i.n, i32 noundef %i.p, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bq) #7
  %.not84.i = icmp eq i32 %i.br, 0
  br i1 %.not84.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @EmitRescaledAlphaRGB, ptr %i.b, align 8, !tbaa !21
  %i.bs = load ptr, ptr %3, align 8, !tbaa !23
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i32 %i.bt, 5
  %switch.selectcmp.case2.i = icmp eq i32 %i.bt, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.bu = select i1 %switch.selectcmp.i, ptr @ExportAlphaRGBA4444, ptr @ExportAlpha
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !32
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

WebPIsAlphaMode.exit.i59:                         ; preds = %bb.e
  %i.bv = add nsw i32 %i.n, 1                     ; 2 uses
  %i.bw = ashr i32 %i.bv, 1                       ; 2 uses
  %i.bx = add nsw i32 %i.p, 1
  %i.by = ashr i32 %i.bx, 1                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = add nsw i32 %i.ca, 1
  %i.cc = ashr i32 %i.cb, 1                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !15
  %i.cf = add nsw i32 %i.ce, 1
  %i.cg = ashr i32 %i.cf, 1                       ; 2 uses
  %i.ch = sext i32 %i.n to i64                    ; 2 uses
  %i.ci = shl nsw i64 %i.ch, 1                    ; 2 uses
  %i.cj = and i32 %i.bv, -2
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = shl nsw i64 %i.ck, 1                    ; 2 uses
  %i.cm = add nsw i64 %i.cl, %i.ci
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = shl nsw i64 %i.ch, 3
  %spec.select80 = select i1 %.not.i60.not, i64 447, i64 343
  %spec.select81 = select i1 %.not.i60.not, i64 %i.co, i64 0
  %.0.i62 = add nsw i64 %i.cn, %spec.select81     ; 2 uses
  %i.cp = add nsw i64 %.0.i62, %spec.select80
  %i.cq = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.cp) #7 ; 5 uses
  store ptr %i.cq, ptr %10, align 8, !tbaa !27
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.critedge, label %bb.l

bb.l:                                             ; preds = %WebPIsAlphaMode.exit.i59
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %.0.i62
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = add i64 %i.cu, 31
  %i.cw = and i64 %i.cv, -32
  %i.cx = inttoptr i64 %i.cw to ptr               ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 208
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 312
  %i.de = select i1 %.not.i60.not, ptr %i.dd, ptr null
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !31
  %i.dg = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.dh = load i32, ptr %i.cd, align 8, !tbaa !15
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !35
  %i.dl = tail call i32 @WebPRescalerInit(ptr noundef %i.cx, i32 noundef %i.dg, i32 noundef %i.dh, ptr noundef %i.di, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.dk, i32 noundef 1, ptr noundef nonnull %i.cq) #7
  %.not78.i = icmp eq i32 %i.dl, 0
  br i1 %.not78.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !37
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ci ; 3 uses
  %i.ds = tail call i32 @WebPRescalerInit(ptr noundef %i.dm, i32 noundef %i.cc, i32 noundef %i.cg, ptr noundef %i.do, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %i.dq, i32 noundef 1, ptr noundef nonnull %i.dr) #7
  %.not79.i = icmp eq i32 %i.ds, 0
  br i1 %.not79.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ck
  %i.dz = tail call i32 @WebPRescalerInit(ptr noundef %i.dt, i32 noundef %i.cc, i32 noundef %i.cg, ptr noundef %i.dv, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %i.dx, i32 noundef 1, ptr noundef nonnull %i.dy) #7
  %.not80.i63 = icmp eq i32 %i.dz, 0
  br i1 %.not80.i63, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @EmitRescaledYUV, ptr %i.a, align 8, !tbaa !20
  br i1 %.not.i60.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ea = load ptr, ptr %i.df, align 8, !tbaa !31
  %i.eb = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.ec = load i32, ptr %i.cd, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cl
  %i.ei = tail call i32 @WebPRescalerInit(ptr noundef %i.ea, i32 noundef %i.eb, i32 noundef %i.ec, ptr noundef %i.ee, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.eg, i32 noundef 1, ptr noundef nonnull %i.eh) #7
  %.not81.i64 = icmp eq i32 %i.ei, 0
  br i1 %.not81.i64, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @EmitRescaledAlphaYUV, ptr %i.b, align 8, !tbaa !21
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

bb.r:                                             ; preds = %bb.d
  br i1 %6, label %.thread67.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @WebPInitSamplers() #7
  store ptr @EmitSampledRGB, ptr %i.a, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !42
  %.not55 = icmp eq i32 %i.ek, 0
  br i1 %.not55, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14 ; 2 uses
  %i.en = add nsw i32 %i.em, 1                    ; 2 uses
  %i.eo = and i32 %i.en, -2
  %i.ep = add nsw i32 %i.eo, %i.em
  %i.eq = sext i32 %i.ep to i64
  %i.er = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.eq) #7 ; 4 uses
  store ptr %i.er, ptr %10, align 8, !tbaa !27
  %.not56 = icmp eq ptr %i.er, null
  br i1 %.not56, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = ashr i32 %i.en, 1
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.er, ptr %i.et, align 8, !tbaa !43
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !14
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.er, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !44
  %i.ey = sext i32 %i.es to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !45
  store ptr @EmitFancyRGB, ptr %i.a, align 8, !tbaa !20
  tail call void @WebPInitUpsamplers() #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  br i1 %.not77, label %.critedge, label %bb.w

.thread67.a:                                      ; preds = %bb.r
  store ptr @EmitYUV, ptr %i.a, align 8, !tbaa !20
  br i1 %.not77, label %.critedge, label %.thread68

.thread68:                                        ; preds = %.thread67.a
  store ptr @EmitAlphaYUV, ptr %i.b, align 8, !tbaa !21
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.fb = icmp eq i32 %5, 5
  %i.fc = icmp eq i32 %5, 10
  %or.cond = or i1 %i.fb, %i.fc
  %i.fd = select i1 %or.cond, ptr @EmitAlphaRGBA4444, ptr @EmitAlphaRGB
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !21
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.n, %bb.l, %bb.p, %WebPIsAlphaMode.exit.i59, %bb.g, %bb.h, %bb.f, %bb.j, %WebPIsAlphaMode.exit.i, %bb.w, %bb.v, %bb.q, %bb.o, %bb.k, %bb.i, %.thread67.a, %.thread68, %bb.t, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %bb.t ], [ 1, %.thread68 ], [ 1, %.thread67.a ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %WebPIsAlphaMode.exit.i ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %WebPIsAlphaMode.exit.i59 ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.n ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @CustomTeardown(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !27
  ret void
}

declare i32 @WebPIoInitFromOptions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WebPInitUpsamplers() local_unnamed_addr #2

declare void @WebPInitSamplers() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitSampledRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.a, align 8, !tbaa !25
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @WebPSamplers, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  tail call void @WebPSamplerProcessPlane(ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i32 noundef %i.u, ptr noundef %i.k, i32 noundef %i.h, i32 noundef %i.w, i32 noundef %i.y, ptr noundef %i.ac) #7
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !15
  ret i32 %i.ad
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitFancyRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l ; 5 uses
  %i.n = load i32, ptr %i.c, align 8, !tbaa !25
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @WebPUpsamplers, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = add nsw i32 %i.g, %i.b                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14 ; 6 uses
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sdiv i32 %i.ac, 2
  %i.ae = icmp eq i32 %i.g, 0
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %i.q(ptr noundef %i.s, ptr noundef null, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.m, ptr noundef null, i32 noundef %i.ab) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = sub nsw i64 0, %i.k
  %i.ak = getelementptr inbounds i8, ptr %i.m, i64 %i.aj
  tail call void %i.q(ptr noundef %i.ai, ptr noundef %i.s, ptr noundef %i.ag, ptr noundef %i.af, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.ak, ptr noundef %i.m, i32 noundef %i.ab) #7
  %i.al = add nsw i32 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.091 = phi i32 [ %i.b, %bb.b ], [ %i.al, %bb.c ] ; 3 uses
  %i.am = icmp sgt i32 %i.b, 2
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.an = add nsw i32 %i.g, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.aq = phi i32 [ %i.an, %.lr.ph ], [ %i.bj, %bb.e ]
  %.08797 = phi ptr [ %i.w, %.lr.ph ], [ %i.au, %bb.e ] ; 2 uses
  %.08896 = phi ptr [ %i.u, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.08995 = phi ptr [ %i.s, %.lr.ph ], [ %i.bc, %bb.e ]
  %.09094 = phi ptr [ %i.m, %.lr.ph ], [ %i.ay, %bb.e ]
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.08896, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.08797, i64 %i.as ; 3 uses
  %i.av = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %.09094, i64 %i.ax ; 4 uses
  %i.az = load i32, ptr %i.ap, align 8, !tbaa !51 ; 2 uses
  %i.ba = shl nsw i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %.08995, i64 %i.bb ; 4 uses
  %i.bd = sext i32 %i.az to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  %i.bg = sext i32 %i.av to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.ay, i64 %i.bh
  tail call void %i.q(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %.08896, ptr noundef %.08797, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.bi, ptr noundef %i.ay, i32 noundef %i.ab) #7
  %i.bj = add nsw i32 %i.aq, 2                    ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.z
  br i1 %i.bk, label %bb.e, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.090.lcssa = phi ptr [ %i.m, %bb.d ], [ %i.ay, %bb.e ]
  %.089.lcssa = phi ptr [ %i.s, %bb.d ], [ %i.bc, %bb.e ]
  %.088.lcssa = phi ptr [ %i.u, %bb.d ], [ %i.at, %bb.e ] ; 3 uses
  %.087.lcssa = phi ptr [ %i.w, %bb.d ], [ %i.au, %bb.e ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !51
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.089.lcssa, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !57
  %i.br = add nsw i32 %i.bq, %i.z
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = sext i32 %i.ab to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bo, i64 %i.bx, i1 false)
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.bz = sext i32 %i.ad to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %.088.lcssa, i64 %i.bz, i1 false)
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %.087.lcssa, i64 %i.bz, i1 false)
  %i.cb = add nsw i32 %.091, -1
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.cc = and i32 %i.z, 1
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.i, align 8, !tbaa !49
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.ce
  tail call void %i.q(ptr noundef %i.bo, ptr noundef null, ptr noundef %.088.lcssa, ptr noundef %.087.lcssa, ptr noundef %.088.lcssa, ptr noundef %.087.lcssa, ptr noundef %i.cf, ptr noundef null, i32 noundef %i.ab) #7
  br label %bb.i
end_hunk_0
