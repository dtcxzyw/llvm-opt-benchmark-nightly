Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@unicode_sequence_prop1:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = icmp ult i32 %i.bg, %i.bi
  br i1 %i.bj, label %.preheader193, label %._crit_edge268

.preheader193:                                    ; preds = %bb.f, %.preheader193
  %.2172267 = phi i32 [ %i.bk, %.preheader193 ], [ %i.bg, %bb.f ] ; 6 uses
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127995, ptr %i.bc, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127996, ptr %i.bc, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127997, ptr %i.bc, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127998, ptr %i.bc, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  store i32 %.2172267, ptr %i.a, align 16, !tbaa !14
  store i32 127999, ptr %i.bc, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.bk = add nuw nsw i32 %.2172267, 1            ; 2 uses
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv330
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = icmp ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader193, label %._crit_edge268.loopexit, !llvm.loop !97

._crit_edge268.loopexit:                          ; preds = %.preheader193
  %.pre343 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %bb.f
  %i.bq = phi i32 [ %.pre343, %._crit_edge268.loopexit ], [ %i.bd, %bb.f ] ; 2 uses
  %i.br = phi ptr [ %i.bl, %._crit_edge268.loopexit ], [ %i.be, %bb.f ]
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next331 to i32
  %i.bt = icmp sgt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.a
  %i.bu = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 18)
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %.preheader196

.preheader196:                                    ; preds = %bb.g
  %i.bw = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph265, label %.loopexit

.lr.ph265:                                        ; preds = %.preheader196
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre340 = load ptr, ptr %i.by, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph265, %._crit_edge263
  %i.ca = phi i32 [ %i.bw, %.lr.ph265 ], [ %i.cr, %._crit_edge263 ]
  %i.cb = phi ptr [ %.pre340, %.lr.ph265 ], [ %i.cs, %._crit_edge263 ] ; 2 uses
  %indvars.iv326 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next327, %._crit_edge263 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv326 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = icmp ult i32 %i.cd, %i.cf
  br i1 %i.cg, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.h, %.lr.ph262
  %.3173260 = phi i32 [ %i.cl, %.lr.ph262 ], [ %i.cd, %bb.h ] ; 3 uses
  %i.ch = sdiv i32 %.3173260, 26
  %i.ci = srem i32 %.3173260, 26
  %i.cj = add nsw i32 %i.ch, 127462
  store i32 %i.cj, ptr %i.a, align 16, !tbaa !14
  %i.ck = add nsw i32 %i.ci, 127462
  store i32 %i.ck, ptr %i.bz, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 2) #21
  %i.cl = add nuw nsw i32 %.3173260, 1            ; 2 uses
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv326
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cq = icmp ult i32 %i.cl, %i.cp
  br i1 %i.cq, label %.lr.ph262, label %._crit_edge263.loopexit, !llvm.loop !99

._crit_edge263.loopexit:                          ; preds = %.lr.ph262
  %.pre341 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit, %bb.h
  %i.cr = phi i32 [ %.pre341, %._crit_edge263.loopexit ], [ %i.ca, %bb.h ] ; 2 uses
  %i.cs = phi ptr [ %i.cm, %._crit_edge263.loopexit ], [ %i.cb, %bb.h ]
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 2 ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv.next327 to i32
  %i.cu = icmp sgt i32 %i.cr, %i.ct
  br i1 %i.cu, label %bb.h, label %.loopexit, !llvm.loop !100

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.j

.loopexit199:                                     ; preds = %.preheader198.us251.us, %.split.split.us.us.split, %.split.split.us.us.split.us.us, %.preheader198.us, %.preheader198.us.us, %.preheader198.us251
  %.5.lcssa387394 = phi i32 [ %i.ei, %.split.split.us.us.split ], [ %i.ei, %.split.split.us.us.split.us.us ], [ %i.ei, %.preheader198.us ], [ %.5.lcssa387.ph415, %.preheader198.us251 ], [ %i.ei, %.preheader198.us.us ], [ %i.ei, %.preheader198.us251.us ] ; 2 uses
  %i.cw = icmp ult i32 %.5.lcssa387394, 2392
  br i1 %i.cw, label %bb.j, label %bb.u, !llvm.loop !101

bb.j:                                             ; preds = %bb.i, %.loopexit199
  %.4259 = phi i32 [ 0, %bb.i ], [ %.5.lcssa387394, %.loopexit199 ] ; 3 uses
  %i.cx = zext nneg i32 %.4259 to i64             ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16  ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %.5217 = add nuw nsw i32 %.4259, 1
  %.not284 = icmp eq i8 %i.cz, 0
  br i1 %.not284, label %.preheader198.us251, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.j
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  %i.dc = add nuw nsw i64 %i.cx, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph226, %bb.q
  %indvars.iv308 = phi i64 [ %i.cx, %.lr.ph226 ], [ %indvars.iv.next309, %bb.q ]
  %indvars.iv306 = phi i64 [ %i.dc, %.lr.ph226 ], [ %indvars.iv.next307, %bb.q ] ; 2 uses
  %.0152223 = phi i32 [ -1, %.lr.ph226 ], [ %.1, %bb.q ]
  %.0153222 = phi i32 [ 0, %.lr.ph226 ], [ %.1154, %bb.q ] ; 3 uses
  %.0155221 = phi i32 [ 0, %.lr.ph226 ], [ %.1156, %bb.q ]
  %.0157220 = phi i32 [ 0, %.lr.ph226 ], [ %.3, %bb.q ] ; 4 uses
  %.1168218 = phi i32 [ 0, %.lr.ph226 ], [ %i.ef, %bb.q ] ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv306
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_zwj_sequence, i64 %indvars.iv.next309
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16  ; 2 uses
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = lshr i32 %i.di, 5
  %i.dl = and i32 %i.dk, 3                        ; 2 uses
  %.masked = and i32 %i.dj, 7936                  ; 2 uses
  %i.dm = icmp samesign ult i32 %.masked, 4096
  %.4174.v = select i1 %i.dm, i32 8192, i32 122880
  %i.dn = or disjoint i32 %.4174.v, %i.df
  %.4174 = or disjoint i32 %i.dn, %.masked        ; 2 uses
  %i.do = icmp eq i32 %.4174, 129456
  %.1 = select i1 %i.do, i32 %.0157220, i32 %.0152223 ; 7 uses
  %i.dp = add nsw i32 %.0157220, 1                ; 3 uses
  %i.dq = sext i32 %.0157220 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dq
  store i32 %.4174, ptr %i.dr, align 4, !tbaa !14
  %.not186 = icmp eq i32 %i.dl, 0
  br i1 %.not186, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = add nsw i32 %.0153222, 1
  %i.dt = sext i32 %.0153222 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dt
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !14
  %i.dv = add nsw i32 %.0157220, 2
  %i.dw = sext i32 %i.dp to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw
  store i32 0, ptr %i.dx, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1158 = phi i32 [ %i.dv, %bb.l ], [ %i.dp, %bb.k ] ; 3 uses
  %.1156 = phi i32 [ %i.dl, %bb.l ], [ %.0155221, %bb.k ] ; 3 uses
  %.1154 = phi i32 [ %i.ds, %bb.l ], [ %.0153222, %bb.k ]
  %.not187 = icmp sgt i8 %i.dh, -1
  br i1 %.not187, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = add nsw i32 %.1158, 1
  %i.dz = sext i32 %.1158 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz
  store i32 65039, ptr %i.ea, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.dy, %bb.n ], [ %.1158, %bb.m ] ; 3 uses
  %i.eb = icmp slt i32 %.1168218, %i.db
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = add nsw i32 %.2, 1
  %i.ed = sext i32 %.2 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ed
  store i32 8205, ptr %i.ee, align 4, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3 = phi i32 [ %i.ec, %bb.p ], [ %.2, %bb.o ]  ; 15 uses
  %i.ef = add nuw nsw i32 %.1168218, 1            ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2
  %exitcond.not = icmp eq i32 %i.ef, %i.da
  br i1 %exitcond.not, label %._crit_edge227, label %bb.k, !llvm.loop !102

._crit_edge227:                                   ; preds = %bb.q
  %i.eg = shl nuw nsw i32 %i.db, 1
  %i.eh = add nuw nsw i32 %i.eg, 3
  %i.ei = add nuw i32 %i.eh, %.4259               ; 6 uses
  switch i32 %.1156, label %default.unreachable [
    i32 1, label %.split241.us
    i32 2, label %.split241.us246
    i32 3, label %bb.r
    i32 0, label %.split241.us250
  ]

bb.r:                                             ; preds = %._crit_edge227
  br label %.split241.us246

default.unreachable:                              ; preds = %._crit_edge227
  unreachable

.split241.us:                                     ; preds = %._crit_edge227
  %i.ej = icmp sgt i32 %.1, -1                    ; 2 uses
  %. = select i1 %i.ej, i32 4, i32 1              ; 2 uses
  %i.ek = zext nneg i32 %.1 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ek ; 5 uses
  %i.em = load i32, ptr %i.b, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en ; 10 uses
  br i1 %i.ej, label %.preheader198.us.us, label %.preheader198.us

.preheader198.us.us:                              ; preds = %.split241.us, %.preheader198.us.us
  %.0148240.us.us = phi i32 [ %i.eq, %.preheader198.us.us ], [ 0, %.split241.us ] ; 2 uses
  %i.ep = add nuw nsw i32 %.0148240.us.us, 129456 ; 5 uses
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.eq = add nuw nsw i32 %.0148240.us.us, 1      ; 2 uses
  %exitcond325.not = icmp eq i32 %i.eq, %.
  br i1 %exitcond325.not, label %.loopexit199, label %.preheader198.us.us, !llvm.loop !103

.preheader198.us:                                 ; preds = %.split241.us, %.preheader198.us
  %.0148240.us = phi i32 [ %i.er, %.preheader198.us ], [ 0, %.split241.us ]
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.er = add nuw nsw i32 %.0148240.us, 1         ; 2 uses
  %exitcond323.not = icmp eq i32 %i.er, %.
  br i1 %exitcond323.not, label %.loopexit199, label %.preheader198.us, !llvm.loop !103

.split241.us246:                                  ; preds = %._crit_edge227, %bb.r
  %.0151.ph = phi i32 [ 20, %bb.r ], [ 25, %._crit_edge227 ] ; 2 uses
  %i.es = icmp sgt i32 %.1, -1                    ; 2 uses
  %.393 = select i1 %i.es, i32 4, i32 1           ; 2 uses
  %i.et = zext nneg i32 %.1 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et
  %i.ev = icmp eq i32 %.1156, 3                   ; 2 uses
  %i.ew = load i32, ptr %i.b, align 4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.cv, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fa ; 2 uses
  br i1 %i.es, label %.preheader198.us247.us, label %.preheader198.us247

.preheader198.us247.us:                           ; preds = %.split241.us246, %.split.split.us.us.split.us.us
  %.0148240.us248.us = phi i32 [ %i.fj, %.split.split.us.us.split.us.us ], [ 0, %.split241.us246 ] ; 2 uses
  %i.fc = add nuw nsw i32 %.0148240.us248.us, 129456
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader198.us247.us
  %.0149232.us234.us.us.us = phi i32 [ 0, %.preheader198.us247.us ], [ %i.fi, %bb.s ] ; 3 uses
  store i32 %i.fc, ptr %i.eu, align 4, !tbaa !14
  %i.fd = udiv i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %i.fe = urem i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %.not185.us.us.us.us = icmp samesign uge i32 %i.fd, %i.fe
  %or.cond.not.us.us.us.us = select i1 %i.ev, i1 %.not185.us.us.us.us, i1 false
  %i.ff = zext i1 %or.cond.not.us.us.us.us to i32
  %.0.us.us.us.us = add nuw nsw i32 %i.fd, 127995
  %i.fg = add nuw nsw i32 %.0.us.us.us.us, %i.ff
  store i32 %i.fg, ptr %i.ey, align 4, !tbaa !14
  %i.fh = add nuw nsw i32 %i.fe, 127995
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fi = add nuw nsw i32 %.0149232.us234.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i32 %i.fi, %.0151.ph
  br i1 %exitcond320.not, label %.split.split.us.us.split.us.us, label %bb.s, !llvm.loop !104

.split.split.us.us.split.us.us:                   ; preds = %bb.s
  %i.fj = add nuw nsw i32 %.0148240.us248.us, 1   ; 2 uses
  %exitcond321.not = icmp eq i32 %i.fj, %.393
  br i1 %exitcond321.not, label %.loopexit199, label %.preheader198.us247.us, !llvm.loop !103

.preheader198.us247:                              ; preds = %.split241.us246, %.split.split.us.us.split
  %.0148240.us248 = phi i32 [ %i.fq, %.split.split.us.us.split ], [ 0, %.split241.us246 ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader198.us247
  %.0149232.us234.us = phi i32 [ 0, %.preheader198.us247 ], [ %i.fp, %bb.t ] ; 3 uses
  %i.fk = udiv i32 %.0149232.us234.us, 5          ; 2 uses
  %i.fl = urem i32 %.0149232.us234.us, 5          ; 2 uses
  %.not185.us.us = icmp samesign uge i32 %i.fk, %i.fl
  %or.cond.not.us.us = select i1 %i.ev, i1 %.not185.us.us, i1 false
  %i.fm = zext i1 %or.cond.not.us.us to i32
  %.0.us.us = add nuw nsw i32 %i.fk, 127995
  %i.fn = add nuw nsw i32 %.0.us.us, %i.fm
  store i32 %i.fn, ptr %i.ey, align 4, !tbaa !14
  %i.fo = add nuw nsw i32 %i.fl, 127995
  store i32 %i.fo, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fp = add nuw nsw i32 %.0149232.us234.us, 1   ; 2 uses
  %exitcond318.not = icmp eq i32 %i.fp, %.0151.ph
  br i1 %exitcond318.not, label %.split.split.us.us.split, label %bb.t, !llvm.loop !104

.split.split.us.us.split:                         ; preds = %bb.t
  %i.fq = add nuw nsw i32 %.0148240.us248, 1      ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fq, %.393
  br i1 %exitcond319.not, label %.loopexit199, label %.preheader198.us247, !llvm.loop !103

.split241.us250:                                  ; preds = %._crit_edge227
  %i.fr = icmp sgt i32 %.1, -1                    ; 2 uses
  %.406 = select i1 %i.fr, i32 4, i32 1
  %i.fs = zext nneg i32 %.1 to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs
  br i1 %i.fr, label %.preheader198.us251.us, label %.preheader198.us251

.preheader198.us251.us:                           ; preds = %.split241.us250, %.preheader198.us251.us
  %.0148240.us252.us = phi i32 [ %i.fv, %.preheader198.us251.us ], [ 0, %.split241.us250 ] ; 2 uses
  %i.fu = add nuw nsw i32 %.0148240.us252.us, 129456
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fv = add nuw nsw i32 %.0148240.us252.us, 1   ; 2 uses
  %exitcond317.not = icmp eq i32 %i.fv, %.406
  br i1 %exitcond317.not, label %.loopexit199, label %.preheader198.us251.us, !llvm.loop !103

.preheader198.us251:                              ; preds = %bb.j, %.split241.us250
  %.0157.lcssa381.ph416 = phi i32 [ %.3, %.split241.us250 ], [ 0, %bb.j ]
  %.5.lcssa387.ph415 = phi i32 [ %i.ei, %.split241.us250 ], [ %.5217, %bb.j ]
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa381.ph416) #21
  br label %.loopexit199

bb.u:                                             ; preds = %.loopexit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit

.preheader200:                                    ; preds = %bb.a, %._crit_edge214
  %.6216 = phi i32 [ %.lcssa, %._crit_edge214 ], [ 0, %bb.a ] ; 2 uses
  store i32 127988, ptr %i.a, align 16, !tbaa !14
  %i.fw = add nuw nsw i32 %.6216, 1
  %i.fx = zext nneg i32 %.6216 to i64             ; 3 uses
  %i.fy = shl nuw nsw i64 1, %i.fx
  %i.fz = and i64 %i.fy, 133152
  %.not210 = icmp eq i64 %i.fz, 0
  br i1 %.not210, label %.lr.ph213.preheader, label %._crit_edge214

.lr.ph213.preheader:                              ; preds = %.preheader200
  %i.ga = add nuw nsw i64 %i.fx, 1
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %indvars.iv301 = phi i64 [ 1, %.lr.ph213.preheader ], [ %indvars.iv.next302, %.lr.ph213 ] ; 2 uses
  %indvars.iv299 = phi i64 [ %i.ga, %.lr.ph213.preheader ], [ %indvars.iv.next300, %.lr.ph213 ] ; 3 uses
  %i.gb = phi i64 [ %i.fx, %.lr.ph213.preheader ], [ %indvars.iv299, %.lr.ph213 ]
  %i.gc = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_tag_sequence, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32
  %i.gf = or disjoint i32 %i.ge, 917504
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !14
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.gh = shl nuw i64 1, %indvars.iv299
  %i.gi = and i64 %i.gh, 133152
  %.not = icmp eq i64 %i.gi, 0
  br i1 %.not, label %.lr.ph213, label %._crit_edge214.loopexit

._crit_edge214.loopexit:                          ; preds = %.lr.ph213
  %i.gj = trunc nuw i64 %indvars.iv.next302 to i32
  %i.gk = trunc nuw i64 %indvars.iv.next300 to i32
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %.preheader200
  %.2169.lcssa = phi i32 [ 1, %.preheader200 ], [ %i.gj, %._crit_edge214.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.fw, %.preheader200 ], [ %i.gk, %._crit_edge214.loopexit ] ; 2 uses
  %i.gl = add nuw nsw i32 %.2169.lcssa, 1
  %i.gm = zext nneg i32 %.2169.lcssa to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gm
  store i32 917631, ptr %i.gn, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.gl) #21
end_hunk_0
