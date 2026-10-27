Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g2meet?download=true
inline.NumInlined: 41
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@jpg_decode_data:bb.a
  store i8 %.0.i12.i, ptr %i.es, align 1, !tbaa !31
  %i.et = mul nsw i32 %i.dz, 116130
  %i.eu = add nsw i32 %i.et, 32768
  %i.ev = ashr i32 %i.eu, 16
  %i.ew = add nsw i32 %i.ev, %i.dt
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %.0.i17.i = tail call i32 @llvm.umin.i32(i32 %i.ex, i32 255)
  %.0.i.i133 = trunc nuw i32 %.0.i17.i to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.az
  store i8 %.0.i.i133, ptr %i.ey, align 1, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.x, label %bb.w, !llvm.loop !153

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, 16
  br i1 %exitcond192.not, label %bb.y, label %bb.v, !llvm.loop !154

bb.y:                                             ; preds = %bb.x
  %.not129 = icmp eq i32 %.us-phi156, 0
  br i1 %.not129, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.j
  %.6 = phi i32 [ %.2115160, %bb.j ], [ %.us-phi156, %bb.y ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 16
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count
  br i1 %exitcond200.not, label %._crit_edge, label %bb.f, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.z
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 16
  %i.ez = getelementptr inbounds i8, ptr %.0102166, i64 %i.bb
  %.1 = select i1 %.not124, ptr null, ptr %i.ez
  %i.fa = add nuw nsw i32 %.0111164, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.fa, %i.am
  br i1 %exitcond204.not, label %.loopexit, label %.preheader138, !llvm.loop !156

.loopexit:                                        ; preds = %._crit_edge, %bb.y, %.preheader136, %bb.u, %.preheader.preheader, %bb.n, %bb.p, %bb.s, %.split154.us, %bb.k, %.split.us.us, %bb.l, %bb.e, %.preheader138.lr.ph, %jpg_unescape.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.a ], [ -1094995529, %jpg_unescape.exit ], [ 0, %.preheader138.lr.ph ], [ 0, %bb.y ], [ %i.cd, %.preheader136 ], [ %i.cq, %bb.p ], [ %i.ck, %bb.n ], [ %i.ce, %.preheader.preheader ], [ %i.bz, %.split.us.us ], [ %i.bx, %bb.k ], [ %i.bv, %.split154.us ], [ %i.cz, %bb.u ], [ %i.cw, %bb.s ], [ %i.cb, %bb.l ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16777216) i32 @epic_decode_pixel_pred(ptr noundef %0, i32 noundef range(i32 -2147483648, 16384) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, -1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %3, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %4, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %4, i64 %i.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 3 uses
  %i.l = lshr i32 %i.i, 8
  %i.m = and i32 %i.l, 255                        ; 5 uses
  %i.n = lshr i32 %i.f, 8
  %i.o = and i32 %i.n, 255                        ; 4 uses
  %i.p = lshr i32 %i.k, 8
  %i.q = and i32 %i.p, 255                        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.s = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.t = add nuw nsw i32 %i.m, %i.o
  %i.u = sub nsw i32 %i.t, %i.q                   ; 2 uses
  %..i.i = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.m, i32 range(i32 -765, 766) %i.u)
  %.20.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.m, i32 range(i32 -765, 766) %i.u)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %..i.i)
  %i.w = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.v, i32 %.20.i.i)
  %i.x = lshr i32 %i.s, 1
  %i.y = and i32 %i.s, 1
  %i.z = sub nsw i32 0, %i.y
  %i.aa = xor i32 %i.x, %i.z
  %i.ab = sub i32 %i.w, %i.aa                     ; 3 uses
  %i.ac = lshr i32 %i.i, 16
  %i.ad = and i32 %i.ac, 255
  %i.ae = sub nsw i32 %i.ad, %i.m                 ; 3 uses
  %i.af = lshr i32 %i.f, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = sub nsw i32 %i.ag, %i.o                 ; 2 uses
  %i.ai = lshr i32 %i.k, 16
  %i.aj = and i32 %i.ai, 255
  %.neg = sub nsw i32 %i.q, %i.aj
  %i.ak = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.al = add nsw i32 %i.ae, %i.ah
  %i.am = add nsw i32 %i.al, %.neg                ; 2 uses
  %..i.i79 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.ae, i32 range(i32 -765, 766) %i.am)
  %.20.i.i80 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ae, i32 range(i32 -765, 766) %i.am)
  %i.an = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ah, i32 %..i.i79)
  %i.ao = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.an, i32 %.20.i.i80)
  %i.ap = lshr i32 %i.ak, 1
  %i.aq = and i32 %i.ak, 1
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = xor i32 %i.ap, %i.ar
  %i.at = sub i32 %i.ao, %i.as
  %i.au = add nsw i32 %i.at, %i.ab
  %i.av = and i32 %i.i, 255
  %i.aw = sub nsw i32 %i.av, %i.m                 ; 3 uses
  %i.ax = and i32 %i.f, 255
  %i.ay = sub nsw i32 %i.ax, %i.o                 ; 2 uses
  %i.az = and i32 %i.k, 255
  %.neg83 = sub nsw i32 %i.q, %i.az
  %i.ba = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.bb = add nsw i32 %i.aw, %i.ay
  %i.bc = add nsw i32 %i.bb, %.neg83              ; 2 uses
  %..i.i81 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.aw, i32 range(i32 -765, 766) %i.bc)
  %.20.i.i82 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.aw, i32 range(i32 -765, 766) %i.bc)
  %i.bd = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ay, i32 %..i.i81)
  %i.be = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.bd, i32 %.20.i.i82)
  %i.bf = lshr i32 %i.ba, 1
  %i.bg = and i32 %i.ba, 1
  %i.bh = sub nsw i32 0, %i.bg
  %i.bi = xor i32 %i.bf, %i.bh
  %i.bj = sub i32 %i.be, %i.bi
  %i.bk = add nsw i32 %i.bj, %i.ab
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = sext i32 %1 to i64
  %i.bm = getelementptr [4 x i8], ptr %3, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %.076.in = select i1 %i.a, ptr %i.bn, ptr %4
  %.076 = load i32, ptr %.076.in, align 4, !tbaa !30 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bp = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.bq = lshr i32 %.076, 16
  %i.br = and i32 %i.bq, 255
  %i.bs = lshr i32 %i.bp, 1
  %i.bt = and i32 %i.bp, 1
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = xor i32 %i.bs, %i.bu
  %i.bw = sub i32 %i.br, %i.bv
  %i.bx = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.by = lshr i32 %.076, 8
  %i.bz = and i32 %i.by, 255
  %i.ca = lshr i32 %i.bx, 1
  %i.cb = and i32 %i.bx, 1
  %i.cc = sub nsw i32 0, %i.cb
  %i.cd = xor i32 %i.ca, %i.cc
  %i.ce = sub i32 %i.bz, %i.cd
  %i.cf = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.cg = and i32 %.076, 255
  %i.ch = lshr i32 %i.cf, 1
  %i.ci = and i32 %i.cf, 1
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = xor i32 %i.ch, %i.cj
  %i.cl = sub i32 %i.cg, %i.ck
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.075 = phi i32 [ %i.au, %bb.b ], [ %i.bw, %bb.c ] ; 4 uses
  %.074 = phi i32 [ %i.ab, %bb.b ], [ %i.ce, %bb.c ] ; 4 uses
  %.0 = phi i32 [ %i.bk, %bb.b ], [ %i.cl, %bb.c ] ; 4 uses
  %i.cm = icmp slt i32 %.075, 0
  %i.cn = icmp slt i32 %.074, 0
  %or.cond3 = select i1 %i.cm, i1 true, i1 %i.cn
  %i.co = icmp slt i32 %.0, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.co
  %i.cp = icmp sgt i32 %.075, 255
  %or.cond7 = or i1 %i.cp, %or.cond5
  %i.cq = icmp sgt i32 %.074, 255
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.cq
  %i.cr = icmp sgt i32 %.0, 255
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %i.cr
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef %.075, i32 noundef %.074, i32 noundef %.0) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cs = shl nuw nsw i32 %.075, 16
  %i.ct = shl nuw nsw i32 %.074, 8
  %i.cu = or i32 %i.ct, %i.cs
  %i.cv = or i32 %i.cu, %.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.077 = phi i32 [ 0, %bb.e ], [ %i.cv, %bb.f ]
  ret i32 %.077
}

declare i32 @ff_els_decode_bit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @jpg_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 3 uses
  %i.b = select i1 %i.a, ptr @chroma_quant, ptr @luma_quant
  %i.c = getelementptr i8, ptr %1, i64 8          ; 7 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr i8, ptr %1, i64 12
  %.val54 = load i32, ptr %i.d, align 4, !tbaa !67
  %.not56 = icmp sgt i32 %.val54, %.val
  br i1 %.not56, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 16, !tbaa !161
  tail call void %i.e(ptr noundef %3) #11
  %i.f = zext i1 %i.a to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  %i.j = load i32, ptr %i.c, align 8, !tbaa !69   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68   ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !66     ; 6 uses
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !31
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %i.j, 7
  %i.t = shl i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 23
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !31
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = icmp slt i16 %i.aa, 0
  br i1 %i.ac, label %bb.c, label %get_vlc2.exit53

bb.c:                                             ; preds = %bb.b
  %i.ad = add i32 %i.j, 9
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.ad) ; 3 uses
  %i.af = lshr i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !31
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ae, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.ab, 32
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = add i32 %i.an, %i.y
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !31
  %i.at = sext i16 %i.as to i32
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !31
  %i.av = sext i16 %i.au to i32
  br label %get_vlc2.exit53

get_vlc2.exit53:                                  ; preds = %bb.b, %bb.c
  %.167.i50 = phi i32 [ %i.av, %bb.c ], [ %i.y, %bb.b ] ; 4 uses
  %.165.i51 = phi i32 [ %i.ae, %bb.c ], [ %i.j, %bb.b ]
  %.1.i52 = phi i32 [ %i.at, %bb.c ], [ %i.ab, %bb.b ]
  %i.aw = add i32 %.1.i52, %.165.i51
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.aw) ; 4 uses
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !69
  %i.ay = icmp slt i32 %.167.i50, 0
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %get_vlc2.exit53
  %.not = icmp eq i32 %.167.i50, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = lshr i32 %i.ax, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !31
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %i.ax, 7
  %i.bf = shl i32 %i.bd, %i.be                    ; 2 uses
  %isnotneg.i = icmp sgt i32 %i.bf, -1            ; 2 uses
  %i.bg = sext i1 %isnotneg.i to i32
  %i.bh = add i32 %i.ax, %.167.i50
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.bh)
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !69
  %i.bj = xor i32 %i.bf, %i.bg
  %i.bk = sub nsw i32 32, %.167.i50
  %i.bl = lshr i32 %i.bj, %i.bk                   ; 2 uses
  %i.bm = sub i32 0, %i.bl
  %i.bn = select i1 %isnotneg.i, i32 %i.bm, i32 %i.bl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.043 = phi i32 [ %i.bn, %bb.e ], [ 0, %bb.d ]
  %4 = select i1 %i.a, i32 9, i32 8
  %i.bo = mul nsw i32 %.043, %4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = zext nneg i32 %2 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30
  %i.bt = add nsw i32 %i.bo, %i.bs                ; 2 uses
  %i.bu = trunc i32 %i.bt to i16
  store i16 %i.bu, ptr %3, align 2, !tbaa !70
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !164 ; 2 uses
  %i.bx = load i32, ptr %i.k, align 8, !tbaa !68  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.m
  %i.bz = phi i32 [ %.promoted, %bb.f ], [ %i.eq, %bb.m ] ; 4 uses
  %.04257 = phi i32 [ 0, %bb.f ], [ %i.dn, %bb.m ]
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !31
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = and i32 %i.bz, 7
  %i.cg = shl i32 %i.ce, %i.cf
  %i.ch = lshr i32 %i.cg, 23
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !31
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !31 ; 2 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = icmp slt i16 %i.cn, 0
  br i1 %i.cp, label %bb.h, label %get_vlc2.exit

bb.h:                                             ; preds = %bb.g
  %i.cq = add i32 %i.bz, 9
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.cq) ; 3 uses
  %i.cs = lshr i32 %i.cr, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !31
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = and i32 %i.cr, 7
  %i.cy = shl i32 %i.cw, %i.cx
  %i.cz = add nsw i32 %i.co, 32
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = add i32 %i.da, %i.cl
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !31
  %i.dg = sext i16 %i.df to i32
  %i.dh = load i16, ptr %i.dd, align 2, !tbaa !31
  %i.di = sext i16 %i.dh to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.g, %bb.h
  %.167.i = phi i32 [ %i.di, %bb.h ], [ %i.cl, %bb.g ] ; 3 uses
  %.165.i = phi i32 [ %i.cr, %bb.h ], [ %i.bz, %bb.g ]
  %.1.i = phi i32 [ %i.dg, %bb.h ], [ %i.co, %bb.g ]
  %i.dj = add i32 %.1.i, %.165.i
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.dj) ; 5 uses
  store i32 %i.dk, ptr %i.c, align 8, !tbaa !69
  %i.dl = icmp slt i32 %.167.i, 0
  br i1 %i.dl, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %get_vlc2.exit
  %i.dm = lshr i32 %.167.i, 4
  %i.dn = add nuw nsw i32 %i.dm, %.04257          ; 4 uses
  %i.do = and i32 %.167.i, 15                     ; 3 uses
  %i.dp = icmp samesign ugt i32 %i.dn, 63
  %.not49 = icmp eq i32 %i.do, 0                  ; 2 uses
  br i1 %i.dp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dq = select i1 %.not49, i32 0, i32 -1094995529
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = lshr i32 %i.dk, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !31
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = and i32 %i.dk, 7
  %i.dx = shl i32 %i.dv, %i.dw                    ; 2 uses
  %isnotneg.i55 = icmp sgt i32 %i.dx, -1          ; 2 uses
  %i.dy = sext i1 %isnotneg.i55 to i32
  %i.dz = add i32 %i.dk, %i.do
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.dz) ; 2 uses
  store i32 %i.ea, ptr %i.c, align 8, !tbaa !69
  %i.eb = xor i32 %i.dx, %i.dy
  %i.ec = sub nuw nsw i32 32, %i.do
  %i.ed = lshr i32 %i.eb, %i.ec                   ; 2 uses
  %i.ee = sub nsw i32 0, %i.ed
  %i.ef = select i1 %isnotneg.i55, i32 %i.ee, i32 %i.ed
  %i.eg = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !31
  %i.ej = zext i8 %i.ei to i32
  %i.ek = mul nsw i32 %i.ef, %i.ej
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.eg
  %i.en = load i8, ptr %i.em, align 1, !tbaa !31
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eo
  store i16 %i.el, ptr %i.ep, align 2, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eq = phi i32 [ %i.ea, %bb.l ], [ %i.dk, %bb.k ]
  %.not58 = icmp eq i32 %i.dn, 63
  br i1 %.not58, label %.loopexit, label %bb.g, !llvm.loop !160

.loopexit:                                        ; preds = %bb.m, %get_vlc2.exit, %get_vlc2.exit53, %bb.a, %bb.j
  %.0 = phi i32 [ %i.dq, %bb.j ], [ -1094995529, %bb.a ], [ -1094995529, %get_vlc2.exit53 ], [ 0, %bb.m ], [ -1094995529, %get_vlc2.exit ]
  ret i32 %.0
}

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @kempf_restore_buf(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly captures(none) %8, i32 noundef range(i32 1, 257) %9, i32 noundef range(i32 -2147483648, 256) %10) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %6, 15
  %i.b = and i32 %i.a, -16
  %or.cond.i = icmp ugt i32 %1, 268435455
  %i.c = shl nuw nsw i32 %1, 3
  %i.d = select i1 %or.cond.i, i32 -8, i32 %i.c   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.d, 2147483135
  %i.e = icmp ne ptr %0, null
  %or.cond3.i.i = and i1 %i.e, %or.cond.i.i       ; 2 uses
  %i.f = add nuw nsw i32 %i.d, 8
  %i.g = select i1 %or.cond3.i.i, i32 %i.f, i32 8 ; 3 uses
  br i1 %or.cond3.i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i32 %9, 3
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %9, 5
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %9, 17
  %. = select i1 %i.j, i32 4, i32 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ], [ %., %bb.d ] ; 3 uses
  %i.k = icmp sgt i32 %7, 0
  br i1 %i.k, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.e
  %i.l = icmp sgt i32 %6, 0
  %i.m = sub nuw nsw i32 32, %.0
  %i.n = sub nsw i32 %i.b, %6
  %i.o = mul nsw i32 %.0, %i.n                    ; 2 uses
  %i.p = sext i32 %3 to i64
  %i.q = sext i32 %5 to i64
  br i1 %i.l, label %.lr.ph59.split.us.preheader, label %.loopexit

.lr.ph59.split.us.preheader:                      ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph59.split.us

.lr.ph59.split.us:                                ; preds = %.lr.ph59.split.us.preheader, %bb.f
  %.03357.us = phi i32 [ %i.aq, %bb.f ], [ 0, %.lr.ph59.split.us.preheader ]
  %.03655.us = phi ptr [ %i.ar, %bb.f ], [ %2, %.lr.ph59.split.us.preheader ] ; 2 uses
  %.03753.us = phi ptr [ %i.as, %bb.f ], [ %4, %.lr.ph59.split.us.preheader ] ; 2 uses
  %.sroa.5.052.us = phi i32 [ %.sroa.5.2.us, %bb.f ], [ 0, %.lr.ph59.split.us.preheader ] ; 3 uses
  %i.r = lshr i32 %.sroa.5.052.us, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i32, ptr %i.t, align 1, !tbaa !31
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = and i32 %.sroa.5.052.us, 7
  %i.x = shl i32 %i.v, %i.w
  %i.y = add i32 %.sroa.5.052.us, 8
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.y) ; 2 uses
  %.not.us = icmp ult i32 %i.x, 16777216
  br i1 %.not.us, label %.preheader.us, label %bb.f

.preheader.us:                                    ; preds = %.lr.ph59.split.us, %.preheader.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.us ], [ 0, %.lr.ph59.split.us ] ; 2 uses
  %.sroa.5.150.us = phi i32 [ %i.aj, %.preheader.us ], [ %i.z, %.lr.ph59.split.us ] ; 3 uses
  %i.aa = lshr i32 %.sroa.5.150.us, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !31
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = and i32 %.sroa.5.150.us, 7
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = lshr i32 %i.ag, %i.m                    ; 2 uses
end_hunk_0
