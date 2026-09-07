Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_drawline?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_DrawLines:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.f, %bb.b
  %.035 = phi i1 [ %i.f, %bb.b ], [ %i.p, %bb.f ], [ true, %bb.n ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i1 %.035
}

declare zeroext i1 @SDL_DrawPoint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @SDL_DrawLine1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %2, %4
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = sdiv i32 %i.c, %i.h
  %.not225 = icmp sgt i32 %1, %3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = mul nsw i32 %i.i, %2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 2 uses
  br i1 %.not225, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = sub i32 %3, %1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = sext i32 %3 to i64
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  %not. = xor i1 %6, true
  %spec.select.idx = zext i1 %not. to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx
  %i.t = sub i32 %1, %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.t, %bb.d ], [ %i.q, %bb.c ]
  %.1197 = phi ptr [ %spec.select, %bb.d ], [ %i.p, %bb.c ]
  %i.u = zext i1 %6 to i32
  %i.v = add nuw nsw i32 %.sink, %i.u
  %i.w = trunc i32 %5 to i8
  %i.x = sext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1197, i8 %i.w, i64 %i.x, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %1, %3
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = sdiv i32 %i.aa, %i.af                   ; 4 uses
  %.not223 = icmp sgt i32 %2, %4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not223, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = mul nsw i32 %i.ag, %2
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  %i.ao = sub i32 %4, %2
  br label %.lr.ph245

bb.i:                                             ; preds = %bb.g
  %i.ap = mul nsw i32 %i.ag, %4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj
  %i.at = sext i32 %i.ag to i64
  %.0191.idx = select i1 %6, i64 0, i64 %i.at
  %.0191 = getelementptr inbounds i8, ptr %i.as, i64 %.0191.idx
  %i.au = sub i32 %2, %4
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.h, %bb.i
  %.sink264 = phi i32 [ %i.ao, %bb.h ], [ %i.au, %bb.i ]
  %.1192 = phi ptr [ %i.an, %bb.h ], [ %.0191, %bb.i ] ; 2 uses
  %i.av = zext i1 %6 to i32
  %i.aw = add i32 %.sink264, %i.av                ; 4 uses
  %i.ax = trunc i32 %5 to i8                      ; 9 uses
  %i.ay = sext i32 %i.ag to i64                   ; 9 uses
  %i.az = add i32 %i.aw, -1
  %xtraiter272 = and i32 %i.aw, 7                 ; 2 uses
  %lcmp.mod273.not = icmp eq i32 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.prol.loopexit271, label %.prol.preheader270

.prol.preheader270:                               ; preds = %.lr.ph245, %.prol.preheader270
  %.2193244.prol = phi ptr [ %i.bb, %.prol.preheader270 ], [ %.1192, %.lr.ph245 ] ; 2 uses
  %.1195243.prol = phi i32 [ %i.ba, %.prol.preheader270 ], [ %i.aw, %.lr.ph245 ]
  %prol.iter274 = phi i32 [ %prol.iter274.next, %.prol.preheader270 ], [ 0, %.lr.ph245 ]
  %i.ba = add nsw i32 %.1195243.prol, -1          ; 2 uses
  store i8 %i.ax, ptr %.2193244.prol, align 1
  %i.bb = getelementptr inbounds i8, ptr %.2193244.prol, i64 %i.ay ; 2 uses
  %prol.iter274.next = add i32 %prol.iter274, 1   ; 2 uses
  %prol.iter274.cmp.not = icmp eq i32 %prol.iter274.next, %xtraiter272
  br i1 %prol.iter274.cmp.not, label %.prol.loopexit271, label %.prol.preheader270, !llvm.loop !9

.prol.loopexit271:                                ; preds = %.prol.preheader270, %.lr.ph245
  %.2193244.unr = phi ptr [ %.1192, %.lr.ph245 ], [ %i.bb, %.prol.preheader270 ]
  %.1195243.unr = phi i32 [ %i.aw, %.lr.ph245 ], [ %i.ba, %.prol.preheader270 ]
  %i.bc = icmp ult i32 %i.az, 7
  br i1 %i.bc, label %.loopexit, label %.lr.ph245.new

.lr.ph245.new:                                    ; preds = %.prol.loopexit271, %.lr.ph245.new
  %.2193244 = phi ptr [ %i.bl, %.lr.ph245.new ], [ %.2193244.unr, %.prol.loopexit271 ] ; 2 uses
  %.1195243 = phi i32 [ %i.bk, %.lr.ph245.new ], [ %.1195243.unr, %.prol.loopexit271 ]
  store i8 %i.ax, ptr %.2193244, align 1
  %i.bd = getelementptr inbounds i8, ptr %.2193244, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.bd, align 1
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.be, align 1
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ay ; 2 uses
  %i.bk = add nsw i32 %.1195243, -8               ; 2 uses
  store i8 %i.ax, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.ay
  %.not224.7 = icmp eq i32 %i.bk, 0
  br i1 %.not224.7, label %.loopexit, label %.lr.ph245.new, !llvm.loop !10

bb.j:                                             ; preds = %bb.f
  %i.bm = sub nsw i32 %1, %3
  %i.bn = tail call i32 @llvm.abs.i32(i32 %i.bm, i1 true)
  %i.bo = sub nsw i32 %2, %4                      ; 2 uses
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = sdiv i32 %i.bs, %i.bx                   ; 4 uses
  %.not219 = icmp sgt i32 %2, %4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %.not219, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = mul nsw i32 %i.by, %2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %i.cc
  %i.ce = sext i32 %1 to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %.not221 = icmp sgt i32 %1, %3
  %.0185.v = select i1 %.not221, i32 -1, i32 1
  %.0185 = add nsw i32 %i.by, %.0185.v
  %i.cg = sub nsw i32 %4, %2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ch = mul nsw i32 %i.by, %4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ca, i64 %i.ci
  %i.ck = sext i32 %3 to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not220 = icmp sgt i32 %3, %1
  %.1186.v = select i1 %.not220, i32 -1, i32 1
  %.1186 = add nsw i32 %i.by, %.1186.v            ; 2 uses
  %i.cm = sext i32 %.1186 to i64
  %.0182.idx = select i1 %6, i64 0, i64 %i.cm
  %.0182 = getelementptr inbounds i8, ptr %i.cl, i64 %.0182.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0188 = phi i32 [ %i.cg, %bb.l ], [ %i.bo, %bb.m ]
  %.2187 = phi i32 [ %.0185, %bb.l ], [ %.1186, %bb.m ]
  %.1183 = phi ptr [ %i.cf, %bb.l ], [ %.0182, %bb.m ] ; 2 uses
  %i.cn = zext i1 %6 to i32
  %spec.select226 = add nuw nsw i32 %.0188, %i.cn ; 5 uses
  %.not222238 = icmp eq i32 %spec.select226, 0
  br i1 %.not222238, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %bb.n
  %i.co = trunc i32 %5 to i8                      ; 9 uses
  %i.cp = sext i32 %.2187 to i64                  ; 9 uses
  %xtraiter = and i32 %spec.select226, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph241, %.prol.preheader
  %.2184240.prol = phi ptr [ %i.cr, %.prol.preheader ], [ %.1183, %.lr.ph241 ] ; 2 uses
  %.2190239.prol = phi i32 [ %i.cq, %.prol.preheader ], [ %spec.select226, %.lr.ph241 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph241 ]
  %i.cq = add nsw i32 %.2190239.prol, -1          ; 2 uses
  store i8 %i.co, ptr %.2184240.prol, align 1
  %i.cr = getelementptr inbounds i8, ptr %.2184240.prol, i64 %i.cp ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph241
  %.2184240.unr = phi ptr [ %.1183, %.lr.ph241 ], [ %i.cr, %.prol.preheader ]
  %.2190239.unr = phi i32 [ %spec.select226, %.lr.ph241 ], [ %i.cq, %.prol.preheader ]
  %i.cs = icmp samesign ult i32 %spec.select226, 8
  br i1 %i.cs, label %.loopexit, label %.lr.ph241.new

.lr.ph241.new:                                    ; preds = %.prol.loopexit, %.lr.ph241.new
  %.2184240 = phi ptr [ %i.db, %.lr.ph241.new ], [ %.2184240.unr, %.prol.loopexit ] ; 2 uses
  %.2190239 = phi i32 [ %i.da, %.lr.ph241.new ], [ %.2190239.unr, %.prol.loopexit ]
  store i8 %i.co, ptr %.2184240, align 1
  %i.ct = getelementptr inbounds i8, ptr %.2184240, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i8 %i.co, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cp ; 2 uses
  %i.da = add nsw i32 %.2190239, -8               ; 2 uses
  store i8 %i.co, ptr %i.cz, align 1
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.cp
  %.not222.7 = icmp eq i32 %i.da, 0
  br i1 %.not222.7, label %.loopexit, label %.lr.ph241.new, !llvm.loop !12

bb.o:                                             ; preds = %bb.j
  %i.dc = sub nsw i32 %3, %1
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 true) ; 6 uses
  %i.de = sub nsw i32 %4, %2
  %i.df = tail call i32 @llvm.abs.i32(i32 %i.de, i1 true) ; 6 uses
  %.not = icmp samesign ult i32 %i.dd, %i.df
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = shl nuw nsw i32 %i.df, 1                ; 2 uses
  %i.dh = sub nsw i32 %i.dg, %i.dd
  %i.di = sub nsw i32 %i.df, %i.dd
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dj = shl nuw nsw i32 %i.dd, 1                ; 2 uses
  %i.dk = sub nsw i32 %i.dj, %i.df
  %i.dl = sub nsw i32 %i.dd, %i.df
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0179.in = phi i32 [ %i.dd, %bb.p ], [ %i.df, %bb.q ]
  %.0177 = phi i32 [ %i.dh, %bb.p ], [ %i.dk, %bb.q ]
  %.0176 = phi i32 [ %i.dg, %bb.p ], [ %i.dj, %bb.q ]
  %.0175.in = phi i32 [ %i.di, %bb.p ], [ %i.dl, %bb.q ]
  %.0171 = phi i32 [ 1, %bb.p ], [ 0, %bb.q ]     ; 2 uses
  %.0165 = phi i32 [ 0, %bb.p ], [ 1, %bb.q ]     ; 2 uses
  %.0175 = shl nsw i32 %.0175.in, 1
  %i.dm = icmp sgt i32 %1, %3                     ; 2 uses
  %i.dn = sub nsw i32 0, %.0171
  %spec.select227 = select i1 %i.dm, i32 %i.dn, i32 %.0171
  %spec.select228 = select i1 %i.dm, i32 -1, i32 1
  %i.do = icmp sgt i32 %2, %4                     ; 2 uses
  %i.dp = sub nsw i32 0, %.0165
  %.1166 = select i1 %i.do, i32 %i.dp, i32 %.0165
  %.1 = select i1 %i.do, i32 -1, i32 1
  %.0179 = zext i1 %6 to i32
  %.1180 = add nuw nsw i32 %.0179.in, %.0179      ; 2 uses
  %.not246 = icmp eq i32 %.1180, 0
  br i1 %.not246, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.dq = trunc i32 %5 to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %.0167237 = phi i32 [ %2, %.lr.ph ], [ %.1168, %bb.s ] ; 2 uses
  %.0173236 = phi i32 [ %1, %.lr.ph ], [ %.1174, %bb.s ] ; 2 uses
  %.1178235 = phi i32 [ %.0177, %.lr.ph ], [ %.2, %bb.s ] ; 2 uses
  %.0181234 = phi i32 [ 0, %.lr.ph ], [ %i.eb, %bb.s ]
  %i.dt = load ptr, ptr %i.dr, align 8
  %i.du = load i32, ptr %i.ds, align 8
  %i.dv = mul nsw i32 %i.du, %.0167237
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.dw
  %i.dy = sext i32 %.0173236 to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy
  store i8 %i.dq, ptr %i.dz, align 1
  %i.ea = icmp slt i32 %.1178235, 0               ; 3 uses
  %.0176..0175 = select i1 %i.ea, i32 %.0176, i32 %.0175
  %spec.select227.spec.select228 = select i1 %i.ea, i32 %spec.select227, i32 %spec.select228
  %.1166..1 = select i1 %i.ea, i32 %.1166, i32 %.1
  %.1168 = add nsw i32 %.0167237, %.1166..1
  %.1174 = add nsw i32 %spec.select227.spec.select228, %.0173236
  %.2 = add nsw i32 %.0176..0175, %.1178235
  %i.eb = add nuw nsw i32 %.0181234, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %.1180
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !13

.loopexit:                                        ; preds = %bb.s, %.prol.loopexit, %.lr.ph241.new, %.prol.loopexit271, %.lr.ph245.new, %bb.r, %bb.n, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SDL_DrawLine2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = icmp eq i32 %2, %4
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = sdiv i32 %i.g, %i.l
  %.not411 = icmp sgt i32 %1, %3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = mul nsw i32 %i.m, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.q ; 2 uses
  br i1 %.not411, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s
  %i.u = sub i32 %3, %1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = sext i32 %3 to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.v
  %spec.select.idx = select i1 %6, i64 0, i64 2
  %spec.select = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.idx
  %i.x = sub i32 %1, %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %.1362 = phi ptr [ %spec.select, %bb.d ], [ %i.t, %bb.c ] ; 5 uses
  %i.y = zext i1 %6 to i32
  %i.z = add nuw nsw i32 %.sink, %i.y             ; 4 uses
  %.not412450 = icmp eq i32 %i.z, 0
  br i1 %.not412450, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.aa = trunc i32 %5 to i16                     ; 3 uses
  %i.ab = zext i32 %.sink to i64
  %i.ac = zext i1 %6 to i64
  %i.ad = add nuw nsw i64 %i.ab, %i.ac            ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check494 = icmp samesign ult i64 %i.ad, 16
  br i1 %min.iters.check494, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, 8589934576              ; 5 uses
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %.1362, i64 %i.af
  %i.ah = trunc i64 %n.vec to i32
  %i.ai = sub i32 %i.z, %i.ah
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.1362, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec496 = and i64 %i.ad, 8589934588           ; 4 uses
  %i.am = shl nuw nsw i64 %n.vec496, 1
  %i.an = getelementptr i8, ptr %.1362, i64 %i.am
  %i.ao = trunc i64 %n.vec496 to i32
  %i.ap = sub i32 %i.z, %i.ao
  %broadcast.splatinsert497 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat498 = shufflevector <4 x i16> %broadcast.splatinsert497, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index499 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next501, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index499, 1
  %next.gep500 = getelementptr i8, ptr %.1362, i64 %i.aq
  store <4 x i16> %broadcast.splat498, ptr %next.gep500, align 2
  %index.next501 = add nuw i64 %index499, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n502 = icmp eq i64 %i.ad, %n.vec496
  br i1 %cmp.n502, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2363452.ph = phi ptr [ %.1362, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.1365451.ph = phi i32 [ %i.z, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.2363452 = phi ptr [ %i.at, %vec.epilog.scalar.ph ], [ %.2363452.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1365451 = phi i32 [ %i.as, %vec.epilog.scalar.ph ], [ %.1365451.ph, %vec.epilog.scalar.ph.preheader ]
  %i.as = add nsw i32 %.1365451, -1               ; 2 uses
  store i16 %i.aa, ptr %.2363452, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %.2363452, i64 2
  %.not412 = icmp eq i32 %i.as, 0
  br i1 %.not412, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !16

bb.f:                                             ; preds = %bb.a
  %i.au = icmp eq i32 %1, %3
  br i1 %i.au, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sdiv i32 %i.aw, %i.bb                   ; 4 uses
  %.not409 = icmp sgt i32 %2, %4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not409, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = mul nsw i32 %i.bc, %2
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = sub i32 %4, %2
  br label %.lr.ph449

bb.i:                                             ; preds = %bb.g
  %i.bl = mul nsw i32 %i.bc, %4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bm
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bf
  %i.bp = sext i32 %i.bc to i64
  %.0356.idx = select i1 %6, i64 0, i64 %i.bp
  %.0356 = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %.0356.idx
  %i.bq = sub i32 %2, %4
  br label %.lr.ph449

.lr.ph449:                                        ; preds = %bb.h, %bb.i
  %.sink488 = phi i32 [ %i.bk, %bb.h ], [ %i.bq, %bb.i ]
  %.1357 = phi ptr [ %i.bj, %bb.h ], [ %.0356, %bb.i ] ; 2 uses
  %i.br = zext i1 %6 to i32
  %i.bs = add i32 %.sink488, %i.br                ; 4 uses
  %i.bt = trunc i32 %5 to i16                     ; 9 uses
  %i.bu = sext i32 %i.bc to i64                   ; 9 uses
  %i.bv = add i32 %i.bs, -1
  %xtraiter511 = and i32 %i.bs, 7                 ; 2 uses
  %lcmp.mod512.not = icmp eq i32 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.prol.loopexit510, label %.prol.preheader509

.prol.preheader509:                               ; preds = %.lr.ph449, %.prol.preheader509
  %.2358448.prol = phi ptr [ %i.bx, %.prol.preheader509 ], [ %.1357, %.lr.ph449 ] ; 2 uses
  %.1360447.prol = phi i32 [ %i.bw, %.prol.preheader509 ], [ %i.bs, %.lr.ph449 ]
  %prol.iter513 = phi i32 [ %prol.iter513.next, %.prol.preheader509 ], [ 0, %.lr.ph449 ]
  %i.bw = add nsw i32 %.1360447.prol, -1          ; 2 uses
  store i16 %i.bt, ptr %.2358448.prol, align 2
  %i.bx = getelementptr inbounds [2 x i8], ptr %.2358448.prol, i64 %i.bu ; 2 uses
  %prol.iter513.next = add i32 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i32 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.prol.loopexit510, label %.prol.preheader509, !llvm.loop !17

.prol.loopexit510:                                ; preds = %.prol.preheader509, %.lr.ph449
  %.2358448.unr = phi ptr [ %.1357, %.lr.ph449 ], [ %i.bx, %.prol.preheader509 ]
  %.1360447.unr = phi i32 [ %i.bs, %.lr.ph449 ], [ %i.bw, %.prol.preheader509 ]
  %i.by = icmp ult i32 %i.bv, 7
  br i1 %i.by, label %.loopexit, label %.lr.ph449.new

.lr.ph449.new:                                    ; preds = %.prol.loopexit510, %.lr.ph449.new
  %.2358448 = phi ptr [ %i.ch, %.lr.ph449.new ], [ %.2358448.unr, %.prol.loopexit510 ] ; 2 uses
  %.1360447 = phi i32 [ %i.cg, %.lr.ph449.new ], [ %.1360447.unr, %.prol.loopexit510 ]
  store i16 %i.bt, ptr %.2358448, align 2
  %i.bz = getelementptr inbounds [2 x i8], ptr %.2358448, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.ca, align 2
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.cc, align 2
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.bu ; 2 uses
  store i16 %i.bt, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.bu ; 2 uses
  %i.cg = add nsw i32 %.1360447, -8               ; 2 uses
  store i16 %i.bt, ptr %i.cf, align 2
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.bu
  %.not410.7 = icmp eq i32 %i.cg, 0
  br i1 %.not410.7, label %.loopexit, label %.lr.ph449.new, !llvm.loop !18

bb.j:                                             ; preds = %bb.f
  %i.ci = sub nsw i32 %1, %3
  %i.cj = tail call i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %i.ck = sub nsw i32 %2, %4                      ; 2 uses
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = icmp eq i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = sdiv i32 %i.co, %i.ct                   ; 4 uses
  %.not405 = icmp sgt i32 %2, %4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  br i1 %.not405, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = mul nsw i32 %i.cu, %2
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cy
  %i.da = sext i32 %1 to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.da
  %.not407 = icmp sgt i32 %1, %3
  %.0350.v = select i1 %.not407, i32 -1, i32 1
  %.0350 = add nsw i32 %i.cu, %.0350.v
  %i.dc = sub nsw i32 %4, %2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dd = mul nsw i32 %i.cu, %4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.de
  %i.dg = sext i32 %3 to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dg
  %.not406 = icmp sgt i32 %3, %1
  %.1351.v = select i1 %.not406, i32 -1, i32 1
  %.1351 = add nsw i32 %i.cu, %.1351.v            ; 2 uses
  %i.di = sext i32 %.1351 to i64
  %.0347.idx = select i1 %6, i64 0, i64 %i.di
  %.0347 = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %.0347.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0353 = phi i32 [ %i.dc, %bb.l ], [ %i.ck, %bb.m ]
  %.2352 = phi i32 [ %.0350, %bb.l ], [ %.1351, %bb.m ]
  %.1348 = phi ptr [ %i.db, %bb.l ], [ %.0347, %bb.m ] ; 2 uses
  %i.dj = zext i1 %6 to i32
  %spec.select413 = add nuw nsw i32 %.0353, %i.dj ; 5 uses
  %.not408442 = icmp eq i32 %spec.select413, 0
  br i1 %.not408442, label %.loopexit, label %.lr.ph445

.lr.ph445:                                        ; preds = %bb.n
  %i.dk = trunc i32 %5 to i16                     ; 9 uses
  %i.dl = sext i32 %.2352 to i64                  ; 9 uses
  %xtraiter = and i32 %spec.select413, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph445, %.prol.preheader
  %.2349444.prol = phi ptr [ %i.dn, %.prol.preheader ], [ %.1348, %.lr.ph445 ] ; 2 uses
  %.2355443.prol = phi i32 [ %i.dm, %.prol.preheader ], [ %spec.select413, %.lr.ph445 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph445 ]
  %i.dm = add nsw i32 %.2355443.prol, -1          ; 2 uses
  store i16 %i.dk, ptr %.2349444.prol, align 2
  %i.dn = getelementptr inbounds [2 x i8], ptr %.2349444.prol, i64 %i.dl ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph445
  %.2349444.unr = phi ptr [ %.1348, %.lr.ph445 ], [ %i.dn, %.prol.preheader ]
  %.2355443.unr = phi i32 [ %spec.select413, %.lr.ph445 ], [ %i.dm, %.prol.preheader ]
  %i.do = icmp samesign ult i32 %spec.select413, 8
  br i1 %i.do, label %.loopexit, label %.lr.ph445.new

.lr.ph445.new:                                    ; preds = %.prol.loopexit, %.lr.ph445.new
  %.2349444 = phi ptr [ %i.dx, %.lr.ph445.new ], [ %.2349444.unr, %.prol.loopexit ] ; 2 uses
  %.2355443 = phi i32 [ %i.dw, %.lr.ph445.new ], [ %.2355443.unr, %.prol.loopexit ]
  store i16 %i.dk, ptr %.2349444, align 2
  %i.dp = getelementptr inbounds [2 x i8], ptr %.2349444, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.dp, align 2
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.ds, align 2
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.dt, align 2
  %i.du = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.dl ; 2 uses
  store i16 %i.dk, ptr %i.du, align 2
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.dl ; 2 uses
  %i.dw = add nsw i32 %.2355443, -8               ; 2 uses
  store i16 %i.dk, ptr %i.dv, align 2
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.dl
  %.not408.7 = icmp eq i32 %i.dw, 0
  br i1 %.not408.7, label %.loopexit, label %.lr.ph445.new, !llvm.loop !20

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8
  call void @SDL_GetRGBA_REAL(i32 noundef %5, ptr noundef %i.dz, ptr noundef %i.eb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sub nsw i32 %3, %1
  %i.ef = call i32 @llvm.abs.i32(i32 %i.ee, i1 true) ; 16 uses
  %i.eg = sub nsw i32 %4, %2
  %i.eh = call i32 @llvm.abs.i32(i32 %i.eg, i1 true) ; 16 uses
  %.not = icmp samesign ult i32 %i.ef, %i.eh      ; 3 uses
  switch i32 %i.ed, label %bb.z [
    i32 31744, label %bb.p
    i32 63488, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = shl nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.ej = sub nsw i32 %i.ei, %i.ef
  %i.ek = sub nsw i32 %i.eh, %i.ef
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.el = shl nuw nsw i32 %i.ef, 1                ; 2 uses
  %i.em = sub nsw i32 %i.el, %i.eh
  %i.en = sub nsw i32 %i.ef, %i.eh
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0344.in = phi i32 [ %i.ef, %bb.q ], [ %i.eh, %bb.r ]
  %.0341 = phi i32 [ %i.ej, %bb.q ], [ %i.em, %bb.r ]
  %.0340 = phi i32 [ %i.ei, %bb.q ], [ %i.el, %bb.r ]
  %.0339.in = phi i32 [ %i.ek, %bb.q ], [ %i.en, %bb.r ]
  %.0335 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]     ; 2 uses
  %.0329 = phi i32 [ 0, %bb.q ], [ 1, %bb.r ]     ; 2 uses
  %.0339 = shl nsw i32 %.0339.in, 1
  %i.eo = icmp sgt i32 %1, %3                     ; 2 uses
  %i.ep = sub nsw i32 0, %.0335
  %spec.select414 = select i1 %i.eo, i32 %i.ep, i32 %.0335
  %spec.select415 = select i1 %i.eo, i32 -1, i32 1
  %i.eq = icmp sgt i32 %2, %4                     ; 2 uses
  %i.er = sub nsw i32 0, %.0329
  %.1330 = select i1 %i.eq, i32 %i.er, i32 %.0329
  %.1328 = select i1 %i.eq, i32 -1, i32 1
  %.0344 = zext i1 %6 to i32
  %.1345 = add nuw nsw i32 %.0344.in, %.0344      ; 2 uses
  %.not455 = icmp eq i32 %.1345, 0
  br i1 %.not455, label %.loopexit425, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.s
  %i.es = trunc i32 %5 to i16
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph436, %bb.t
  %.0331435 = phi i32 [ %2, %.lr.ph436 ], [ %.1332, %bb.t ] ; 2 uses
  %.0337434 = phi i32 [ %1, %.lr.ph436 ], [ %.1338, %bb.t ] ; 2 uses
  %.1342433 = phi i32 [ %.0341, %.lr.ph436 ], [ %.2343, %bb.t ] ; 2 uses
  %.0346432 = phi i32 [ 0, %.lr.ph436 ], [ %i.fe, %bb.t ]
  %i.ev = load ptr, ptr %i.et, align 8
  %i.ew = load i32, ptr %i.eu, align 8
  %i.ex = mul nsw i32 %i.ew, %.0331435
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  %i.fa = shl nsw i32 %.0337434, 1
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.fb
  store i16 %i.es, ptr %i.fc, align 2
  %i.fd = icmp slt i32 %.1342433, 0               ; 3 uses
  %.0340..0339 = select i1 %i.fd, i32 %.0340, i32 %.0339
  %spec.select414.spec.select415 = select i1 %i.fd, i32 %spec.select414, i32 %spec.select415
  %.1330..1328 = select i1 %i.fd, i32 %.1330, i32 %.1328
  %.1332 = add nsw i32 %.0331435, %.1330..1328
  %.1338 = add nsw i32 %spec.select414.spec.select415, %.0337434
  %.2343 = add nsw i32 %.0340..0339, %.1342433
  %i.fe = add nuw nsw i32 %.0346432, 1            ; 2 uses
  %exitcond461.not = icmp eq i32 %i.fe, %.1345
  br i1 %exitcond461.not, label %.loopexit425, label %bb.t, !llvm.loop !21

bb.u:                                             ; preds = %bb.o
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = shl nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.fg = sub nsw i32 %i.ff, %i.ef
  %i.fh = sub nsw i32 %i.eh, %i.ef
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fi = shl nuw nsw i32 %i.ef, 1                ; 2 uses
  %i.fj = sub nsw i32 %i.fi, %i.eh
  %i.fk = sub nsw i32 %i.ef, %i.eh
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0324.in = phi i32 [ %i.ef, %bb.v ], [ %i.eh, %bb.w ]
  %.0321 = phi i32 [ %i.fg, %bb.v ], [ %i.fj, %bb.w ]
  %.0320 = phi i32 [ %i.ff, %bb.v ], [ %i.fi, %bb.w ]
  %.0319.in = phi i32 [ %i.fh, %bb.v ], [ %i.fk, %bb.w ]
  %.0315 = phi i32 [ 1, %bb.v ], [ 0, %bb.w ]     ; 2 uses
  %.0309 = phi i32 [ 0, %bb.v ], [ 1, %bb.w ]     ; 2 uses
  %.0319 = shl nsw i32 %.0319.in, 1
  %i.fl = icmp sgt i32 %1, %3                     ; 2 uses
  %i.fm = sub nsw i32 0, %.0315
  %spec.select416 = select i1 %i.fl, i32 %i.fm, i32 %.0315
  %spec.select417 = select i1 %i.fl, i32 -1, i32 1
  %i.fn = icmp sgt i32 %2, %4                     ; 2 uses
  %i.fo = sub nsw i32 0, %.0309
  %.1310 = select i1 %i.fn, i32 %i.fo, i32 %.0309
  %.1308 = select i1 %i.fn, i32 -1, i32 1
  %.0324 = zext i1 %6 to i32
  %.1325 = add nuw nsw i32 %.0324.in, %.0324      ; 2 uses
  %.not454 = icmp eq i32 %.1325, 0
  br i1 %.not454, label %.loopexit425, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.fp = trunc i32 %5 to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.0311431 = phi i32 [ %2, %.lr.ph ], [ %.1312, %bb.y ] ; 2 uses
  %.0317430 = phi i32 [ %1, %.lr.ph ], [ %.1318, %bb.y ] ; 2 uses
  %.1322429 = phi i32 [ %.0321, %.lr.ph ], [ %.2323, %bb.y ] ; 2 uses
  %.0326428 = phi i32 [ 0, %.lr.ph ], [ %i.gb, %bb.y ]
  %i.fs = load ptr, ptr %i.fq, align 8
  %i.ft = load i32, ptr %i.fr, align 8
  %i.fu = mul nsw i32 %i.ft, %.0311431
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  %i.fx = shl nsw i32 %.0317430, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy
  store i16 %i.fp, ptr %i.fz, align 2
  %i.ga = icmp slt i32 %.1322429, 0               ; 3 uses
  %.0320..0319 = select i1 %i.ga, i32 %.0320, i32 %.0319
  %spec.select416.spec.select417 = select i1 %i.ga, i32 %spec.select416, i32 %spec.select417
  %.1310..1308 = select i1 %i.ga, i32 %.1310, i32 %.1308
  %.1312 = add nsw i32 %.0311431, %.1310..1308
  %.1318 = add nsw i32 %spec.select416.spec.select417, %.0317430
  %.2323 = add nsw i32 %.0320..0319, %.1322429
  %i.gb = add nuw nsw i32 %.0326428, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gb, %.1325
  br i1 %exitcond.not, label %.loopexit425, label %bb.y, !llvm.loop !22

bb.z:                                             ; preds = %bb.o
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = shl nuw nsw i32 %i.eh, 1                ; 2 uses
  %i.gd = sub nsw i32 %i.gc, %i.ef
  %i.ge = sub nsw i32 %i.eh, %i.ef
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gf = shl nuw nsw i32 %i.ef, 1                ; 2 uses
  %i.gg = sub nsw i32 %i.gf, %i.eh
  %i.gh = sub nsw i32 %i.ef, %i.eh
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0304.in = phi i32 [ %i.ef, %bb.aa ], [ %i.eh, %bb.ab ]
  %.0302 = phi i32 [ %i.gd, %bb.aa ], [ %i.gg, %bb.ab ]
  %.0301 = phi i32 [ %i.gc, %bb.aa ], [ %i.gf, %bb.ab ]
end_hunk_0
begin_hunk_1_@SDL_DrawLine4:bb.a
bb.d:                                             ; preds = %bb.b
  %i.v = sext i32 %3 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.v
  %spec.select.idx = select i1 %6, i64 0, i64 4
  %spec.select = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.idx
  %i.x = sub i32 %1, %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %.1362 = phi ptr [ %spec.select, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.y = zext i1 %6 to i32
  %i.z = add nuw nsw i32 %.sink, %i.y             ; 3 uses
  %.not412450 = icmp eq i32 %i.z, 0
  br i1 %.not412450, label %.loopexit, label %.lr.ph453.preheader

.lr.ph453.preheader:                              ; preds = %bb.e
  %i.aa = zext i32 %.sink to i64
  %i.ab = zext i1 %6 to i64
  %i.ac = add nuw nsw i64 %i.aa, %i.ab            ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph453.preheader495, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph453.preheader
  %n.vec = and i64 %i.ac, 8589934584              ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.1362, i64 %i.ad
  %i.af = trunc i64 %n.vec to i32
  %i.ag = sub i32 %i.z, %i.af
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1362, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph453.preheader495

.lr.ph453.preheader495:                           ; preds = %.lr.ph453.preheader, %middle.block
  %.2363452.ph = phi ptr [ %.1362, %.lr.ph453.preheader ], [ %i.ae, %middle.block ]
  %.1365451.ph = phi i32 [ %i.z, %.lr.ph453.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph453

.lr.ph453:                                        ; preds = %.lr.ph453.preheader495, %.lr.ph453
  %.2363452 = phi ptr [ %i.al, %.lr.ph453 ], [ %.2363452.ph, %.lr.ph453.preheader495 ] ; 2 uses
  %.1365451 = phi i32 [ %i.ak, %.lr.ph453 ], [ %.1365451.ph, %.lr.ph453.preheader495 ]
  %i.ak = add nsw i32 %.1365451, -1               ; 2 uses
  store i32 %5, ptr %.2363452, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.2363452, i64 4
  %.not412 = icmp eq i32 %i.ak, 0
  br i1 %.not412, label %.loopexit, label %.lr.ph453, !llvm.loop !26

bb.f:                                             ; preds = %bb.a
  %i.am = icmp eq i32 %1, %3
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = sdiv i32 %i.ao, %i.at                   ; 4 uses
  %.not409 = icmp sgt i32 %2, %4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not409, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = mul nsw i32 %i.au, %2
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ax
  %i.bc = sub i32 %4, %2
  br label %.lr.ph449

bb.i:                                             ; preds = %bb.g
  %i.bd = mul nsw i32 %i.au, %4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ax
  %i.bh = sext i32 %i.au to i64
  %.0356.idx = select i1 %6, i64 0, i64 %i.bh
  %.0356 = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.0356.idx
  %i.bi = sub i32 %2, %4
  br label %.lr.ph449

.lr.ph449:                                        ; preds = %bb.h, %bb.i
  %.sink488 = phi i32 [ %i.bc, %bb.h ], [ %i.bi, %bb.i ]
  %.1357 = phi ptr [ %i.bb, %bb.h ], [ %.0356, %bb.i ] ; 2 uses
  %i.bj = zext i1 %6 to i32
  %i.bk = add i32 %.sink488, %i.bj                ; 4 uses
  %i.bl = sext i32 %i.au to i64                   ; 9 uses
  %i.bm = add i32 %i.bk, -1
  %xtraiter502 = and i32 %i.bk, 7                 ; 2 uses
  %lcmp.mod503.not = icmp eq i32 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %.prol.loopexit501, label %.prol.preheader500

.prol.preheader500:                               ; preds = %.lr.ph449, %.prol.preheader500
  %.2358448.prol = phi ptr [ %i.bo, %.prol.preheader500 ], [ %.1357, %.lr.ph449 ] ; 2 uses
  %.1360447.prol = phi i32 [ %i.bn, %.prol.preheader500 ], [ %i.bk, %.lr.ph449 ]
  %prol.iter504 = phi i32 [ %prol.iter504.next, %.prol.preheader500 ], [ 0, %.lr.ph449 ]
  %i.bn = add nsw i32 %.1360447.prol, -1          ; 2 uses
  store i32 %5, ptr %.2358448.prol, align 4
  %i.bo = getelementptr inbounds [4 x i8], ptr %.2358448.prol, i64 %i.bl ; 2 uses
  %prol.iter504.next = add i32 %prol.iter504, 1   ; 2 uses
  %prol.iter504.cmp.not = icmp eq i32 %prol.iter504.next, %xtraiter502
  br i1 %prol.iter504.cmp.not, label %.prol.loopexit501, label %.prol.preheader500, !llvm.loop !27

.prol.loopexit501:                                ; preds = %.prol.preheader500, %.lr.ph449
  %.2358448.unr = phi ptr [ %.1357, %.lr.ph449 ], [ %i.bo, %.prol.preheader500 ]
  %.1360447.unr = phi i32 [ %i.bk, %.lr.ph449 ], [ %i.bn, %.prol.preheader500 ]
  %i.bp = icmp ult i32 %i.bm, 7
  br i1 %i.bp, label %.loopexit, label %.lr.ph449.new

.lr.ph449.new:                                    ; preds = %.prol.loopexit501, %.lr.ph449.new
  %.2358448 = phi ptr [ %i.by, %.lr.ph449.new ], [ %.2358448.unr, %.prol.loopexit501 ] ; 2 uses
  %.1360447 = phi i32 [ %i.bx, %.lr.ph449.new ], [ %.1360447.unr, %.prol.loopexit501 ]
  store i32 %5, ptr %.2358448, align 4
  %i.bq = getelementptr inbounds [4 x i8], ptr %.2358448, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.bq, align 4
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.br, align 4
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bl ; 2 uses
  store i32 %5, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bl ; 2 uses
  %i.bx = add nsw i32 %.1360447, -8               ; 2 uses
  store i32 %5, ptr %i.bw, align 4
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bl
  %.not410.7 = icmp eq i32 %i.bx, 0
  br i1 %.not410.7, label %.loopexit, label %.lr.ph449.new, !llvm.loop !28

bb.j:                                             ; preds = %bb.f
  %i.bz = sub nsw i32 %1, %3
  %i.ca = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = sub nsw i32 %2, %4                      ; 2 uses
  %i.cc = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = sdiv i32 %i.cf, %i.ck                   ; 4 uses
  %.not405 = icmp sgt i32 %2, %4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %.not405, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = mul nsw i32 %i.cl, %2
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = sext i32 %1 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  %.not407 = icmp sgt i32 %1, %3
  %.0350.v = select i1 %.not407, i32 -1, i32 1
  %.0350 = add nsw i32 %i.cl, %.0350.v
  %i.ct = sub nsw i32 %4, %2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cu = mul nsw i32 %i.cl, %4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = sext i32 %3 to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  %.not406 = icmp sgt i32 %3, %1
  %.1351.v = select i1 %.not406, i32 -1, i32 1
  %.1351 = add nsw i32 %i.cl, %.1351.v            ; 2 uses
  %i.cz = sext i32 %.1351 to i64
  %.0347.idx = select i1 %6, i64 0, i64 %i.cz
  %.0347 = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.0347.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0353 = phi i32 [ %i.ct, %bb.l ], [ %i.cb, %bb.m ]
  %.2352 = phi i32 [ %.0350, %bb.l ], [ %.1351, %bb.m ]
  %.1348 = phi ptr [ %i.cs, %bb.l ], [ %.0347, %bb.m ] ; 2 uses
  %i.da = zext i1 %6 to i32
  %spec.select413 = add nuw nsw i32 %.0353, %i.da ; 5 uses
  %.not408442 = icmp eq i32 %spec.select413, 0
  br i1 %.not408442, label %.loopexit, label %.lr.ph445

.lr.ph445:                                        ; preds = %bb.n
  %i.db = sext i32 %.2352 to i64                  ; 9 uses
  %xtraiter = and i32 %spec.select413, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph445, %.prol.preheader
  %.2349444.prol = phi ptr [ %i.dd, %.prol.preheader ], [ %.1348, %.lr.ph445 ] ; 2 uses
  %.2355443.prol = phi i32 [ %i.dc, %.prol.preheader ], [ %spec.select413, %.lr.ph445 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph445 ]
  %i.dc = add nsw i32 %.2355443.prol, -1          ; 2 uses
  store i32 %5, ptr %.2349444.prol, align 4
  %i.dd = getelementptr inbounds [4 x i8], ptr %.2349444.prol, i64 %i.db ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph445
  %.2349444.unr = phi ptr [ %.1348, %.lr.ph445 ], [ %i.dd, %.prol.preheader ]
  %.2355443.unr = phi i32 [ %spec.select413, %.lr.ph445 ], [ %i.dc, %.prol.preheader ]
  %i.de = icmp samesign ult i32 %spec.select413, 8
  br i1 %i.de, label %.loopexit, label %.lr.ph445.new

.lr.ph445.new:                                    ; preds = %.prol.loopexit, %.lr.ph445.new
  %.2349444 = phi ptr [ %i.dn, %.lr.ph445.new ], [ %.2349444.unr, %.prol.loopexit ] ; 2 uses
  %.2355443 = phi i32 [ %i.dm, %.lr.ph445.new ], [ %.2355443.unr, %.prol.loopexit ]
  store i32 %5, ptr %.2349444, align 4
  %i.df = getelementptr inbounds [4 x i8], ptr %.2349444, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.df, align 4
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.dh, align 4
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.di, align 4
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.db ; 2 uses
  store i32 %5, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.db ; 2 uses
  %i.dm = add nsw i32 %.2355443, -8               ; 2 uses
  store i32 %5, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.db
  %.not408.7 = icmp eq i32 %i.dm, 0
  br i1 %.not408.7, label %.loopexit, label %.lr.ph445.new, !llvm.loop !30

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8
  call void @SDL_GetRGBA_REAL(i32 noundef %5, ptr noundef %i.dp, ptr noundef %i.dr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = icmp eq i32 %i.dt, 16711680
  br i1 %i.du, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dw = load i32, ptr %i.dv, align 4
  %.not402 = icmp eq i32 %i.dw, 0
  %i.dx = sub nsw i32 %3, %1
  %i.dy = call i32 @llvm.abs.i32(i32 %i.dx, i1 true) ; 11 uses
  %i.dz = sub nsw i32 %4, %2
  %i.ea = call i32 @llvm.abs.i32(i32 %i.dz, i1 true) ; 11 uses
  %.not403 = icmp samesign ult i32 %i.dy, %i.ea   ; 2 uses
  br i1 %.not402, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %.not403, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = shl nuw nsw i32 %i.ea, 1                ; 2 uses
  %i.ec = sub nsw i32 %i.eb, %i.dy
  %i.ed = sub nsw i32 %i.ea, %i.dy
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ee = shl nuw nsw i32 %i.dy, 1                ; 2 uses
  %i.ef = sub nsw i32 %i.ee, %i.ea
  %i.eg = sub nsw i32 %i.dy, %i.ea
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0344.in = phi i32 [ %i.dy, %bb.r ], [ %i.ea, %bb.s ]
  %.0341 = phi i32 [ %i.ec, %bb.r ], [ %i.ef, %bb.s ]
  %.0340 = phi i32 [ %i.eb, %bb.r ], [ %i.ee, %bb.s ]
  %.0339.in = phi i32 [ %i.ed, %bb.r ], [ %i.eg, %bb.s ]
  %.0335 = phi i32 [ 1, %bb.r ], [ 0, %bb.s ]     ; 2 uses
  %.0329 = phi i32 [ 0, %bb.r ], [ 1, %bb.s ]     ; 2 uses
  %.0339 = shl nsw i32 %.0339.in, 1
  %i.eh = icmp sgt i32 %1, %3                     ; 2 uses
  %i.ei = sub nsw i32 0, %.0335
  %spec.select414 = select i1 %i.eh, i32 %i.ei, i32 %.0335
  %spec.select415 = select i1 %i.eh, i32 -1, i32 1
  %i.ej = icmp sgt i32 %2, %4                     ; 2 uses
  %i.ek = sub nsw i32 0, %.0329
  %.1330 = select i1 %i.ej, i32 %i.ek, i32 %.0329
  %.1328 = select i1 %i.ej, i32 -1, i32 1
  %.0344 = zext i1 %6 to i32
  %.1345 = add nuw nsw i32 %.0344.in, %.0344      ; 2 uses
  %.not456 = icmp eq i32 %.1345, 0
  br i1 %.not456, label %.loopexit425, label %.lr.ph441

.lr.ph441:                                        ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph441, %bb.u
  %.0331440 = phi i32 [ %2, %.lr.ph441 ], [ %.1332, %bb.u ] ; 2 uses
  %.0337439 = phi i32 [ %1, %.lr.ph441 ], [ %.1338, %bb.u ] ; 2 uses
  %.1342438 = phi i32 [ %.0341, %.lr.ph441 ], [ %.2343, %bb.u ] ; 2 uses
  %.0346437 = phi i32 [ 0, %.lr.ph441 ], [ %i.ew, %bb.u ]
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = load i32, ptr %i.em, align 8
  %i.ep = mul nsw i32 %i.eo, %.0331440
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = shl nsw i32 %.0337439, 2
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.et
  store i32 %5, ptr %i.eu, align 4
  %i.ev = icmp slt i32 %.1342438, 0               ; 3 uses
  %.0340..0339 = select i1 %i.ev, i32 %.0340, i32 %.0339
  %spec.select414.spec.select415 = select i1 %i.ev, i32 %spec.select414, i32 %spec.select415
  %.1330..1328 = select i1 %i.ev, i32 %.1330, i32 %.1328
  %.1332 = add nsw i32 %.0331440, %.1330..1328
  %.1338 = add nsw i32 %spec.select414.spec.select415, %.0337439
  %.2343 = add nsw i32 %.0340..0339, %.1342438
  %i.ew = add nuw nsw i32 %.0346437, 1            ; 2 uses
  %exitcond462.not = icmp eq i32 %i.ew, %.1345
  br i1 %exitcond462.not, label %.loopexit425, label %bb.u, !llvm.loop !31

bb.v:                                             ; preds = %bb.p
  br i1 %.not403, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = shl nuw nsw i32 %i.ea, 1                ; 2 uses
  %i.ey = sub nsw i32 %i.ex, %i.dy
  %i.ez = sub nsw i32 %i.ea, %i.dy
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fa = shl nuw nsw i32 %i.dy, 1                ; 2 uses
  %i.fb = sub nsw i32 %i.fa, %i.ea
  %i.fc = sub nsw i32 %i.dy, %i.ea
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0324.in = phi i32 [ %i.dy, %bb.w ], [ %i.ea, %bb.x ]
  %.0321 = phi i32 [ %i.ey, %bb.w ], [ %i.fb, %bb.x ]
  %.0320 = phi i32 [ %i.ex, %bb.w ], [ %i.fa, %bb.x ]
  %.0319.in = phi i32 [ %i.ez, %bb.w ], [ %i.fc, %bb.x ]
  %.0315 = phi i32 [ 1, %bb.w ], [ 0, %bb.x ]     ; 2 uses
  %.0309 = phi i32 [ 0, %bb.w ], [ 1, %bb.x ]     ; 2 uses
  %.0319 = shl nsw i32 %.0319.in, 1
  %i.fd = icmp sgt i32 %1, %3                     ; 2 uses
  %i.fe = sub nsw i32 0, %.0315
  %spec.select416 = select i1 %i.fd, i32 %i.fe, i32 %.0315
  %spec.select417 = select i1 %i.fd, i32 -1, i32 1
  %i.ff = icmp sgt i32 %2, %4                     ; 2 uses
  %i.fg = sub nsw i32 0, %.0309
  %.1310 = select i1 %i.ff, i32 %i.fg, i32 %.0309
  %.1308 = select i1 %i.ff, i32 -1, i32 1
  %.0324 = zext i1 %6 to i32
  %.1325 = add nuw nsw i32 %.0324.in, %.0324      ; 2 uses
  %.not455 = icmp eq i32 %.1325, 0
  br i1 %.not455, label %.loopexit425, label %.lr.ph436

.lr.ph436:                                        ; preds = %bb.y
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph436, %bb.z
  %.0311435 = phi i32 [ %2, %.lr.ph436 ], [ %.1312, %bb.z ] ; 2 uses
  %.0317434 = phi i32 [ %1, %.lr.ph436 ], [ %.1318, %bb.z ] ; 2 uses
  %.1322433 = phi i32 [ %.0321, %.lr.ph436 ], [ %.2323, %bb.z ] ; 2 uses
  %.0326432 = phi i32 [ 0, %.lr.ph436 ], [ %i.fs, %bb.z ]
  %i.fj = load ptr, ptr %i.fh, align 8
  %i.fk = load i32, ptr %i.fi, align 8
  %i.fl = mul nsw i32 %i.fk, %.0311435
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  %i.fo = shl nsw i32 %.0317434, 2
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fn, i64 %i.fp
  store i32 %5, ptr %i.fq, align 4
  %i.fr = icmp slt i32 %.1322433, 0               ; 3 uses
  %.0320..0319 = select i1 %i.fr, i32 %.0320, i32 %.0319
  %spec.select416.spec.select417 = select i1 %i.fr, i32 %spec.select416, i32 %spec.select417
  %.1310..1308 = select i1 %i.fr, i32 %.1310, i32 %.1308
  %.1312 = add nsw i32 %.0311435, %.1310..1308
  %.1318 = add nsw i32 %spec.select416.spec.select417, %.0317434
  %.2323 = add nsw i32 %.0320..0319, %.1322433
  %i.fs = add nuw nsw i32 %.0326432, 1            ; 2 uses
  %exitcond461.not = icmp eq i32 %i.fs, %.1325
  br i1 %exitcond461.not, label %.loopexit425, label %bb.z, !llvm.loop !32

bb.aa:                                            ; preds = %bb.o
  %i.ft = sub nsw i32 %3, %1
  %i.fu = call i32 @llvm.abs.i32(i32 %i.ft, i1 true) ; 6 uses
  %i.fv = sub nsw i32 %4, %2
  %i.fw = call i32 @llvm.abs.i32(i32 %i.fv, i1 true) ; 6 uses
  %.not = icmp samesign ult i32 %i.fu, %i.fw
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fx = shl nuw nsw i32 %i.fw, 1                ; 2 uses
  %i.fy = sub nsw i32 %i.fx, %i.fu
  %i.fz = sub nsw i32 %i.fw, %i.fu
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ga = shl nuw nsw i32 %i.fu, 1                ; 2 uses
  %i.gb = sub nsw i32 %i.ga, %i.fw
end_hunk_1
