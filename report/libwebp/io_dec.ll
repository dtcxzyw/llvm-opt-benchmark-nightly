Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/io_dec?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPYUV444Converters = external local_unnamed_addr global [13 x ptr], align 16
@WebPApplyAlphaMultiply4444 = external local_unnamed_addr global ptr, align 8
@WebPDispatchAlpha = external local_unnamed_addr global ptr, align 8
@WebPApplyAlphaMultiply = external local_unnamed_addr global ptr, align 8
@WebPSamplers = external local_unnamed_addr global [13 x ptr], align 16
@WebPUpsamplers = external local_unnamed_addr global [13 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @WebPInitCustomIo(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((56, 88)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @CustomPut, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @CustomSetup, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @CustomTeardown, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %0, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CustomPut(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp slt i32 %i.d, 1
  %i.h = icmp slt i32 %i.f, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %i.b) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.k) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = add nsw i32 %i.p, %i.k
  store i32 %i.q, ptr %i.o, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CustomSetup(ptr noundef %0) #1 {
WebPIsAlphaMode.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 6 uses
  %i.e = icmp ugt i32 %i.d, 10                    ; 2 uses
  %switch.tableidx = add i32 %i.d, -1             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond85 = select i1 %i.f, i1 %switch.lobit, i1 false
  %i.g = add i32 %i.d, -11
  %narrow.i.i = icmp ult i32 %i.g, -4
  %not.or.cond85 = xor i1 %or.cond85, true
  %.not53 = select i1 %not.or.cond85, i1 %narrow.i.i, i1 false ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = tail call i32 @WebPIoInitFromOptions(ptr noundef %i.n, ptr noundef nonnull %0, i32 noundef 11) #7
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.a

bb.a:                                             ; preds = %WebPIsAlphaMode.exit
  %i.p = add i32 %i.d, -11
  %narrow.i = icmp ult i32 %i.p, -4
  %or.cond = or i1 %narrow.i, %.not53
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @WebPInitUpsamplers() #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !24   ; 9 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %switch.tableidx91 = add i32 %i.t, -1           ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx91, 12
  %switch.maskindex92 = trunc i32 %switch.tableidx91 to i16
  %switch.shifted93 = lshr i16 2077, %switch.maskindex92
  %switch.lobit94 = trunc i16 %switch.shifted93 to i1
  %or.cond95 = select i1 %i.u, i1 %switch.lobit94, i1 false
  %i.v = add i32 %i.t, -7
  %narrow.i.i.i67 = icmp ult i32 %i.v, 4
  %.not.i62.not = select i1 %or.cond95, i1 true, i1 %narrow.i.i.i67 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load i32, ptr %i.y, align 8, !tbaa !77   ; 7 uses
  br i1 %i.e, label %WebPIsAlphaMode.exit.i61, label %WebPIsAlphaMode.exit.i

WebPIsAlphaMode.exit.i:                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = ashr i32 %i.ac, 1                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = ashr i32 %i.ag, 1                       ; 2 uses
  %i.ai = sext i32 %i.x to i64                    ; 5 uses
  %i.aj = shl nsw i64 %i.ai, 1                    ; 2 uses
  %spec.select = select i1 %.not.i62.not, i64 4, i64 3 ; 3 uses
  %i.ak = mul nsw i64 %i.aj, %spec.select         ; 2 uses
  %i.al = mul nsw i64 %spec.select, %i.ai
  %i.am = shl nsw i64 %i.ak, 2
  %i.an = add nsw i64 %i.am, %i.al                ; 2 uses
  %1 = mul nuw nsw i64 %spec.select, 104
  %i.ao = add nuw nsw i64 %1, 31
  %i.ap = add nsw i64 %i.ao, %i.an
  %i.aq = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.ap) #7 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.e

bb.e:                                             ; preds = %WebPIsAlphaMode.exit.i
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ak ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.an
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = add i64 %i.au, 31
  %i.aw = and i64 %i.av, -32
  %i.ax = inttoptr i64 %i.aw to ptr               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.be = select i1 %.not.i62.not, ptr %i.bd, ptr null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !32
  %i.bg = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bh = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bi = tail call i32 @WebPRescalerInit(ptr noundef %i.ax, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull %i.as, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.aq) #7
  %.not80.i = icmp eq i32 %i.bi, 0
  br i1 %.not80.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bk = getelementptr inbounds i8, ptr %i.as, i64 %i.ai
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.aj
  %i.bm = tail call i32 @WebPRescalerInit(ptr noundef %i.bj, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bk, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bl) #7
  %.not81.i = icmp eq i32 %i.bm, 0
  br i1 %.not81.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.bo = shl nsw i32 %i.x, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.as, i64 %i.bp
  %.idx.i = shl nsw i64 %i.ai, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i
  %i.bs = tail call i32 @WebPRescalerInit(ptr noundef %i.bn, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bq, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.br) #7
  %.not82.i = icmp eq i32 %i.bs, 0
  br i1 %.not82.i, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @EmitRescaledRGB, ptr %i.j, align 8, !tbaa !21
  tail call void @WebPInitYUV444Converters() #7
  br i1 %.not.i62.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bu = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bw = mul nsw i32 %i.x, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.as, i64 %i.bx
  %.idx83.i = mul nsw i64 %i.ai, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx83.i
  %i.ca = tail call i32 @WebPRescalerInit(ptr noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull %i.by, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bz) #7
  %.not84.i = icmp eq i32 %i.ca, 0
  br i1 %.not84.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @EmitRescaledAlphaRGB, ptr %i.k, align 8, !tbaa !22
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !26 ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i32 %i.cc, 5
  %switch.selectcmp.case2.i = icmp eq i32 %i.cc, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.cd = select i1 %switch.selectcmp.i, ptr @ExportAlphaRGBA4444, ptr @ExportAlpha
  store ptr %i.cd, ptr %i.l, align 8, !tbaa !33
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

WebPIsAlphaMode.exit.i61:                         ; preds = %bb.d
  %i.ce = add nsw i32 %i.x, 1                     ; 2 uses
  %i.cf = ashr i32 %i.ce, 1                       ; 2 uses
  %i.cg = add nsw i32 %i.z, 1
  %i.ch = ashr i32 %i.cg, 1                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.ck = add nsw i32 %i.cj, 1
  %i.cl = ashr i32 %i.ck, 1                       ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !16
  %i.co = add nsw i32 %i.cn, 1
  %i.cp = ashr i32 %i.co, 1                       ; 2 uses
  %i.cq = sext i32 %i.x to i64                    ; 2 uses
  %i.cr = shl nsw i64 %i.cq, 1                    ; 2 uses
  %i.cs = and i32 %i.ce, -2
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 1                    ; 2 uses
  %i.cv = add nsw i64 %i.cu, %i.cr
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = shl nsw i64 %i.cq, 3
  %spec.select82 = select i1 %.not.i62.not, i64 447, i64 343
  %spec.select83 = select i1 %.not.i62.not, i64 %i.cx, i64 0
  %.0.i64 = add nsw i64 %i.cw, %spec.select83     ; 2 uses
  %i.cy = add nsw i64 %.0.i64, %spec.select82
  %i.cz = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.cy) #7 ; 5 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.q, label %bb.k

bb.k:                                             ; preds = %WebPIsAlphaMode.exit.i61
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.cz, ptr %i.h, align 8, !tbaa !28
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %.0.i64
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = add i64 %i.dd, 31
  %i.df = and i64 %i.de, -32
  %i.dg = inttoptr i64 %i.df to ptr               ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 208
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 312
  %i.dn = select i1 %.not.i62.not, ptr %i.dm, ptr null
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !32
  %i.dp = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.dq = load i32, ptr %i.cm, align 8, !tbaa !16
  %i.dr = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !36
  %i.du = tail call i32 @WebPRescalerInit(ptr noundef %i.dg, i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef %i.dr, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.dt, i32 noundef 1, ptr noundef nonnull %i.cz) #7
  %.not78.i = icmp eq i32 %i.du, 0
  br i1 %.not78.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !38
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cr ; 3 uses
  %i.eb = tail call i32 @WebPRescalerInit(ptr noundef %i.dv, i32 noundef %i.cl, i32 noundef %i.cp, ptr noundef %i.dx, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.dz, i32 noundef 1, ptr noundef nonnull %i.ea) #7
  %.not79.i = icmp eq i32 %i.eb, 0
  br i1 %.not79.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = load ptr, ptr %i.dl, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ct
  %i.ei = tail call i32 @WebPRescalerInit(ptr noundef %i.ec, i32 noundef %i.cl, i32 noundef %i.cp, ptr noundef %i.ee, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.eg, i32 noundef 1, ptr noundef nonnull %i.eh) #7
  %.not80.i65 = icmp eq i32 %i.ei, 0
  br i1 %.not80.i65, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @EmitRescaledYUV, ptr %i.j, align 8, !tbaa !21
  br i1 %.not.i62.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !32
  %i.ek = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.el = load i32, ptr %i.cm, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !42
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.cu
  %i.er = tail call i32 @WebPRescalerInit(ptr noundef %i.ej, i32 noundef %i.ek, i32 noundef %i.el, ptr noundef %i.en, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ep, i32 noundef 1, ptr noundef nonnull %i.eq) #7
  %.not81.i66 = icmp eq i32 %i.er, 0
  br i1 %.not81.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @EmitRescaledAlphaYUV, ptr %i.k, align 8, !tbaa !22
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

bb.q:                                             ; preds = %WebPIsAlphaMode.exit.i, %bb.i, %bb.e, %bb.g, %bb.f, %WebPIsAlphaMode.exit.i61, %bb.o, %bb.k, %bb.m, %bb.l
  store i32 1, ptr %i.i, align 8, !tbaa !74
  br label %.critedge

bb.r:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @WebPInitSamplers() #7
  store ptr @EmitSampledRGB, ptr %i.j, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.et = load i32, ptr %i.es, align 8, !tbaa !43
  %.not57 = icmp eq i32 %i.et, 0
  br i1 %.not57, label %.thread74, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !15 ; 2 uses
end_hunk_0
