Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/io_dec?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CustomPut:bb.a
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
  %i.ao = mul nuw nsw i64 %spec.select, 104
  %i.ap = add nuw nsw i64 %i.ao, 31
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.aq) #7 ; 8 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.q, label %bb.e

bb.e:                                             ; preds = %WebPIsAlphaMode.exit.i
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ak ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.an
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %i.av, 31
  %i.ax = and i64 %i.aw, -32
  %i.ay = inttoptr i64 %i.ax to ptr               ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.bf = select i1 %.not.i62.not, ptr %i.be, ptr null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !32
  %i.bh = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bi = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bj = tail call i32 @WebPRescalerInit(ptr noundef %i.ay, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.at, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.ar) #7
  %.not80.i = icmp eq i32 %i.bj, 0
  br i1 %.not80.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bl = getelementptr inbounds i8, ptr %i.at, i64 %i.ai
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aj
  %i.bn = tail call i32 @WebPRescalerInit(ptr noundef %i.bk, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bl, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bm) #7
  %.not81.i = icmp eq i32 %i.bn, 0
  br i1 %.not81.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bp = shl nsw i32 %i.x, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.at, i64 %i.bq
  %.idx.i = shl nsw i64 %i.ai, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %i.bt = tail call i32 @WebPRescalerInit(ptr noundef %i.bo, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.br, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bs) #7
  %.not82.i = icmp eq i32 %i.bt, 0
  br i1 %.not82.i, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @EmitRescaledRGB, ptr %i.j, align 8, !tbaa !21
  tail call void @WebPInitYUV444Converters() #7
  br i1 %.not.i62.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.bw = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.bx = mul nsw i32 %i.x, 3
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.at, i64 %i.by
  %.idx83.i = mul nsw i64 %i.ai, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx83.i
  %i.cb = tail call i32 @WebPRescalerInit(ptr noundef %i.bu, i32 noundef %i.bv, i32 noundef %i.bw, ptr noundef nonnull %i.bz, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.ca) #7
  %.not84.i = icmp eq i32 %i.cb, 0
  br i1 %.not84.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @EmitRescaledAlphaRGB, ptr %i.k, align 8, !tbaa !22
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %switch.selectcmp.case1.i = icmp eq i32 %i.cd, 5
  %switch.selectcmp.case2.i = icmp eq i32 %i.cd, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.ce = select i1 %switch.selectcmp.i, ptr @ExportAlphaRGBA4444, ptr @ExportAlpha
  store ptr %i.ce, ptr %i.l, align 8, !tbaa !33
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

WebPIsAlphaMode.exit.i61:                         ; preds = %bb.d
  %i.cf = add nsw i32 %i.x, 1                     ; 2 uses
  %i.cg = ashr i32 %i.cf, 1                       ; 2 uses
  %i.ch = add nsw i32 %i.z, 1
  %i.ci = ashr i32 %i.ch, 1                       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = ashr i32 %i.cl, 1                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = ashr i32 %i.cp, 1                       ; 2 uses
  %i.cr = sext i32 %i.x to i64                    ; 2 uses
  %i.cs = shl nsw i64 %i.cr, 1                    ; 2 uses
  %i.ct = and i32 %i.cf, -2
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  %i.cw = add nsw i64 %i.cv, %i.cs
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = shl nsw i64 %i.cr, 3
  %spec.select82 = select i1 %.not.i62.not, i64 %i.cy, i64 0
  %.0.i63 = add nsw i64 %i.cx, %spec.select82     ; 2 uses
  %1 = select i1 %.not.i62.not, i64 447, i64 343
  %i.cz = add nsw i64 %.0.i63, %1
  %i.da = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.cz) #7 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.q, label %bb.k

bb.k:                                             ; preds = %WebPIsAlphaMode.exit.i61
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.da, ptr %i.h, align 8, !tbaa !28
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %.0.i63
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = add i64 %i.de, 31
  %i.dg = and i64 %i.df, -32
  %i.dh = inttoptr i64 %i.dg to ptr               ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 208
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 312
  %i.do = select i1 %.not.i62.not, ptr %i.dn, ptr null
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !32
  %i.dq = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.dr = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.ds = load ptr, ptr %i.dc, align 8, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !36
  %i.dv = tail call i32 @WebPRescalerInit(ptr noundef %i.dh, i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef %i.ds, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.du, i32 noundef 1, ptr noundef nonnull %i.da) #7
  %.not78.i = icmp eq i32 %i.dv, 0
  br i1 %.not78.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !38
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cs ; 3 uses
  %i.ec = tail call i32 @WebPRescalerInit(ptr noundef %i.dw, i32 noundef %i.cm, i32 noundef %i.cq, ptr noundef %i.dy, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ea, i32 noundef 1, ptr noundef nonnull %i.eb) #7
  %.not79.i = icmp eq i32 %i.ec, 0
  br i1 %.not79.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !39
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cu
  %i.ej = tail call i32 @WebPRescalerInit(ptr noundef %i.ed, i32 noundef %i.cm, i32 noundef %i.cq, ptr noundef %i.ef, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.eh, i32 noundef 1, ptr noundef nonnull %i.ei) #7
  %.not80.i65 = icmp eq i32 %i.ej, 0
  br i1 %.not80.i65, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @EmitRescaledYUV, ptr %i.j, align 8, !tbaa !21
  br i1 %.not.i62.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %i.dp, align 8, !tbaa !32
  %i.el = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.em = load i32, ptr %i.cn, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !42
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cv
  %i.es = tail call i32 @WebPRescalerInit(ptr noundef %i.ek, i32 noundef %i.el, i32 noundef %i.em, ptr noundef %i.eo, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.eq, i32 noundef 1, ptr noundef nonnull %i.er) #7
  %.not81.i66 = icmp eq i32 %i.es, 0
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
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !43
  %.not57 = icmp eq i32 %i.eu, 0
  br i1 %.not57, label %.thread74, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !15 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1                    ; 2 uses
  %i.ey = and i32 %i.ex, -2
  %i.ez = add nsw i32 %i.ey, %i.ew
  %i.fa = sext i32 %i.ez to i64
  %i.fb = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.fa) #7 ; 4 uses
  store ptr %i.fb, ptr %i.h, align 8, !tbaa !28
  %.not58 = icmp eq ptr %i.fb, null
  br i1 %.not58, label %.thread69, label %bb.u

.thread69:                                        ; preds = %bb.t
  store i32 1, ptr %i.i, align 8, !tbaa !74
  br label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.fc = ashr i32 %i.ex, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !44
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !15
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fb, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !45
  %i.fi = sext i32 %i.fc to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !46
  store ptr @EmitFancyRGB, ptr %i.j, align 8, !tbaa !21
  tail call void @WebPInitUpsamplers() #7
  br i1 %.not53, label %.critedge, label %.thread72

bb.v:                                             ; preds = %bb.r
  store ptr @EmitYUV, ptr %i.j, align 8, !tbaa !21
  br i1 %.not53, label %.critedge, label %bb.w

.thread74:                                        ; preds = %bb.s
  br i1 %.not53, label %.critedge, label %.thread72

bb.w:                                             ; preds = %bb.v
  store ptr @EmitAlphaYUV, ptr %i.k, align 8, !tbaa !22
  br label %.critedge

.thread72:                                        ; preds = %.thread74, %bb.u
  %i.fl = icmp eq i32 %i.d, 5
  %i.fm = icmp eq i32 %i.d, 10
  %or.cond76 = or i1 %i.fl, %i.fm
  %i.fn = select i1 %or.cond76, ptr @EmitAlphaRGBA4444, ptr @EmitAlphaRGB
  store ptr %i.fn, ptr %i.k, align 8, !tbaa !22
  tail call void @WebPInitAlphaProcessing() #7
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %.thread74, %.thread69, %bb.h, %bb.j, %bb.n, %bb.p, %bb.u, %.thread72, %bb.v, %bb.q, %WebPIsAlphaMode.exit
  %.2 = phi i32 [ 0, %WebPIsAlphaMode.exit ], [ 0, %bb.q ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %.thread72 ], [ 1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.j ], [ 1, %bb.h ], [ 0, %.thread69 ], [ 1, %.thread74 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @CustomTeardown(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  tail call void @WebPSafeFree(ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !28
  ret void
}

declare i32 @WebPIoInitFromOptions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WebPInitUpsamplers() local_unnamed_addr #2

declare void @WebPInitSamplers() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitSampledRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.f
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !16
  %i.z = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @WebPSamplers, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  tail call void @WebPSamplerProcessPlane(ptr noundef %i.m, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, i32 noundef %i.u, ptr noundef %i.k, i32 noundef %i.h, i32 noundef %i.w, i32 noundef %i.y, ptr noundef %i.ac) #7
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !16
  ret i32 %i.ad
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
end_hunk_0
