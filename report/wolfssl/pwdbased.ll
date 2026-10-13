Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/pwdbased?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wc_PBKDF1_ex:bb.a
  %i.j = icmp sgt i32 %1, %i.i
  %or.cond = select i1 %or.cond7, i1 true, i1 %i.j
  %i.k = icmp slt i32 %8, 1
  %or.cond141 = or i1 %i.k, %or.cond
  %i.l = load i32, ptr @current_wc_pbkdf_max_iterations, align 4
  %i.m = icmp sgt i32 %8, %i.l
  %or.cond143 = select i1 %or.cond141, i1 true, i1 %i.m
  br i1 %or.cond143, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @wc_HashTypeConvert(i32 noundef %9) #8 ; 9 uses
  %i.o = tail call i32 @wc_HashGetDigestSize(i32 noundef %i.n) #8 ; 9 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @wc_HashInit_ex(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef %10, i32 noundef -2) #8 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.preheader159, label %bb.s

.preheader159:                                    ; preds = %bb.c
  %i.r = add nsw i32 %3, %1                       ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph169, label %.thread149

.lr.ph169:                                        ; preds = %.preheader159
  %.not130 = icmp eq ptr %6, null
  %i.t = icmp samesign ugt i32 %8, 1
  %.not137 = icmp eq ptr %2, null
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph169, %bb.q
  %.094168 = phi i32 [ 0, %.lr.ph169 ], [ %.3, %bb.q ] ; 9 uses
  %.096167 = phi i32 [ %3, %.lr.ph169 ], [ %.298, %bb.q ] ; 6 uses
  %.099166 = phi i32 [ %1, %.lr.ph169 ], [ %.1100, %bb.q ] ; 5 uses
  %.not127 = icmp eq i32 %.094168, 0
  br i1 %.not127, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @wc_HashUpdate(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef nonnull %i.c, i32 noundef %i.o) #8 ; 2 uses
  %.not128 = icmp eq i32 %i.u, 0
  br i1 %.not128, label %bb.f, label %.thread149

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = call i32 @wc_HashUpdate(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef %4, i32 noundef %5) #8 ; 2 uses
  %.not129 = icmp eq i32 %i.v, 0
  br i1 %.not129, label %bb.g, label %.thread149

bb.g:                                             ; preds = %bb.f
  br i1 %.not130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 @wc_HashUpdate(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef nonnull %6, i32 noundef %7) #8 ; 2 uses
  %.not131 = icmp eq i32 %i.w, 0
  br i1 %.not131, label %bb.i, label %.thread149

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = call i32 @wc_HashFinal(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef nonnull %i.c) #8 ; 2 uses
  %.not132 = icmp eq i32 %i.x, 0
  br i1 %.not132, label %.preheader, label %.thread149

.preheader:                                       ; preds = %bb.i
  br i1 %i.t, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.k
  %i.y = add nuw nsw i32 %.095165, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.095165 = phi i32 [ %i.y, %bb.j ], [ 1, %.preheader ]
  %i.z = call i32 @wc_HashUpdate(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef nonnull %i.c, i32 noundef %i.o) #8 ; 2 uses
  %.not133 = icmp eq i32 %i.z, 0
  br i1 %.not133, label %bb.k, label %.thread149

bb.k:                                             ; preds = %.lr.ph
  %i.aa = call i32 @wc_HashFinal(ptr noundef nonnull %11, i32 noundef %i.n, ptr noundef nonnull %i.c) #8 ; 2 uses
  %.not134 = icmp eq i32 %i.aa, 0
  br i1 %.not134, label %bb.j, label %.thread149

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.not136 = icmp eq i32 %.099166, 0
  br i1 %.not136, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = icmp uge i32 %.099166, %i.o
  %i.ac = sext i1 %i.ab to i32
  store volatile i32 %i.ac, ptr %i.b, align 4, !tbaa !8
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.ad = xor i32 %.0..0..0..0..0..0..i, -1
  %i.ae = and i32 %.099166, %i.ad
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.af = and i32 %.0..0..0..0..0..0.2.i, %i.o
  %i.ag = or i32 %i.af, %i.ae                     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = sub nsw i32 %1, %.099166
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = sext i32 %i.ag to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 16 %i.c, i64 %i.ak, i1 false)
  %i.al = add nsw i32 %i.ag, %.094168
  %i.am = sub nsw i32 %.099166, %i.ag
  %i.an = sub nsw i32 %i.o, %i.ag
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.1100 = phi i32 [ %i.am, %bb.l ], [ 0, %._crit_edge ]
  %.1 = phi i32 [ %i.al, %bb.l ], [ %.094168, %._crit_edge ] ; 2 uses
  %.0 = phi i32 [ %i.an, %bb.l ], [ %i.o, %._crit_edge ] ; 4 uses
  %i.ao = icmp ne i32 %.096167, 0
  %i.ap = icmp ne i32 %.0, 0
  %or.cond9 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond9, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = icmp uge i32 %.096167, %.0
  %i.ar = sext i1 %i.aq to i32
  store volatile i32 %i.ar, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..i144 = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.as = xor i32 %.0..0..0..0..0..0..i144, -1
  %i.at = and i32 %.096167, %i.as
  %.0..0..0..0..0..0.2.i145 = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.au = and i32 %.0..0..0..0..0..0.2.i145, %.0
  %i.av = or i32 %i.au, %i.at                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not137, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = sub nsw i32 %3, %.096167
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = sub nsw i32 %i.o, %.0
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = sext i32 %i.av to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.bb, i64 %i.bc, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bd = add nsw i32 %i.av, %.1
  %i.be = sub nsw i32 %.096167, %i.av
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.298 = phi i32 [ %.096167, %bb.m ], [ %i.be, %bb.p ]
  %.3 = phi i32 [ %.1, %bb.m ], [ %i.bd, %bb.p ]  ; 3 uses
  %i.bf = icmp slt i32 %.3, %i.r
  br i1 %i.bf, label %bb.d, label %.thread149

.thread149:                                       ; preds = %bb.q, %bb.e, %bb.f, %bb.h, %bb.i, %bb.k, %.lr.ph, %.preheader159
  %.094164 = phi i32 [ 0, %.preheader159 ], [ %.094168, %bb.k ], [ %.094168, %.lr.ph ], [ %.3, %bb.q ], [ %.094168, %bb.e ], [ %.094168, %bb.f ], [ %.094168, %bb.h ], [ %.094168, %bb.i ]
  %.4106 = phi i32 [ 0, %.preheader159 ], [ %i.aa, %bb.k ], [ %i.z, %.lr.ph ], [ 0, %bb.q ], [ %i.u, %bb.e ], [ %i.v, %bb.f ], [ %i.w, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.bg = call i32 @wc_HashFree(ptr noundef nonnull %11, i32 noundef %i.n) #8 ; 0 uses
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !tbaa !11
  fence seq_cst
  %.not138 = icmp eq i32 %.4106, 0
  br i1 %.not138, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread149
  %.not139 = icmp eq i32 %.094164, %i.r
  %. = select i1 %.not139, i32 0, i32 -132
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread149, %bb.c, %bb.b, %bb.a
  %.0107 = phi i32 [ %.4106, %.thread149 ], [ -173, %bb.a ], [ %., %bb.r ], [ %i.q, %bb.c ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.0107
}

declare i32 @wc_HashTypeConvert(i32 noundef) local_unnamed_addr #4

declare i32 @wc_HashGetDigestSize(i32 noundef) local_unnamed_addr #4

declare i32 @wc_HashInit_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_HashUpdate(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_HashFinal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @wc_HashFree(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @wc_PBKDF1(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_PBKDF1_ex(ptr noundef %0, i32 noundef %6, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %7, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_PBKDF2_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca [64 x i8], align 16               ; 17 uses
  %10 = alloca [1 x %struct.Hmac], align 16       ; 19 uses
  %i.c = alloca i8, align 1                       ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.d = icmp eq ptr %0, null
  %i.e = or i32 %4, %2
  %i.f = or i32 %i.e, %6
  %i.g = icmp slt i32 %i.f, 0
  %or.cond5 = or i1 %i.d, %i.g
  %i.h = icmp slt i32 %5, 1
  %or.cond = or i1 %i.h, %or.cond5
  %i.i = load i32, ptr @current_wc_pbkdf_max_iterations, align 4
  %i.j = icmp sgt i32 %5, %i.i
  %or.cond86 = select i1 %or.cond, i1 true, i1 %i.j
  br i1 %or.cond86, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @wc_HashTypeConvert(i32 noundef %7) #8
  %i.l = tail call i32 @wc_HashGetDigestSize(i32 noundef %i.k) #8 ; 8 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %ForceZero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @wc_HmacInit(ptr noundef nonnull %10, ptr noundef %8, i32 noundef %9) #8 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.preheader16.i

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @wc_HmacSetKey(ptr noundef nonnull %10, i32 noundef %7, ptr noundef %1, i32 noundef %2) #8 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ne i32 %6, 0
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %.lr.ph117, label %.thread98

.lr.ph117:                                        ; preds = %bb.d
  %i.t = icmp samesign ugt i32 %5, 1
  br i1 %i.t, label %.lr.ph117.split.us.preheader, label %.lr.ph117.split.split

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %11 = ptrtoaddr ptr %i.b to i64                 ; 3 uses
  %i.u = or disjoint i64 %11, 8
  %i.v = xor i64 %11, -1
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %._crit_edge.us
  %.054115.us = phi i32 [ %i.dr, %._crit_edge.us ], [ 1, %.lr.ph117.split.us.preheader ] ; 5 uses
  %.061114.us = phi ptr [ %i.dp, %._crit_edge.us ], [ %0, %.lr.ph117.split.us.preheader ] ; 7 uses
  %.063113.us = phi i32 [ %i.dq, %._crit_edge.us ], [ %6, %.lr.ph117.split.us.preheader ] ; 3 uses
  %i.w = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef %3, i32 noundef %4) #8 ; 2 uses
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.preheader.us.preheader, label %.thread98

.preheader.us.preheader:                          ; preds = %.lr.ph117.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.x = lshr i32 %.054115.us, 24
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.c, align 1, !tbaa !12
  %i.z = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.us = icmp eq i32 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.us, label %.preheader.us.1, label %.thread98

.preheader.us.1:                                  ; preds = %.preheader.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.aa = lshr i32 %.054115.us, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.c, align 1, !tbaa !12
  %i.ac = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.us.1 = icmp eq i32 %i.ac, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.us.1, label %.preheader.us.2, label %.thread98

.preheader.us.2:                                  ; preds = %.preheader.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ad = lshr i32 %.054115.us, 8
  %i.ae = trunc i32 %i.ad to i8
  store i8 %i.ae, ptr %i.c, align 1, !tbaa !12
  %i.af = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.us.2 = icmp eq i32 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.us.2, label %.preheader.us.3, label %.thread98

.preheader.us.3:                                  ; preds = %.preheader.us.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ag = trunc i32 %.054115.us to i8
  store i8 %i.ag, ptr %i.c, align 1, !tbaa !12
  %i.ah = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.us.3 = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.us.3, label %bb.e, label %.thread98

bb.e:                                             ; preds = %.preheader.us.3
  %i.ai = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not81.us = icmp eq i32 %i.ai, 0
  br i1 %.not81.us, label %.lr.ph.us, label %.thread98

.lr.ph.us:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = icmp uge i32 %.063113.us, %i.l
  %i.ak = sext i1 %i.aj to i32
  store volatile i32 %i.ak, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..i.us = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.al = xor i32 %.0..0..0..0..0..0..i.us, -1
  %i.am = and i32 %.063113.us, %i.al
  %.0..0..0..0..0..0.2.i.us = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.an = and i32 %.0..0..0..0..0..0.2.i.us, %i.l
  %i.ao = or i32 %i.an, %i.am                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061114.us, ptr nonnull align 16 %i.b, i64 %i.ap, i1 false)
  %i.aq = ptrtoint ptr %.061114.us to i64
  %i.ar = and i64 %i.aq, 7
  %or.cond.i.us = icmp ne i64 %i.ar, 0            ; 2 uses
  %i.as = and i32 %i.ao, -8
  %.idx.i30.i.us = zext i32 %i.as to i64          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i30.i.us
  %.not.i31.i.us = icmp ult i32 %i.ao, 8
  %i.au = and i32 %i.ao, 7                        ; 3 uses
  %brmerge = select i1 %or.cond.i.us, i1 true, i1 %.not.i31.i.us
  %.mux = select i1 %or.cond.i.us, i32 %i.ao, i32 %i.au
  %i.av = add i64 %11, %.idx.i30.i.us
  %i.aw = call i64 @llvm.umax.i64(i64 %i.av, i64 %i.u)
  %i.ax = add i64 %i.aw, %i.v                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.ax, 24
  %n.vec217 = and i64 %i.az, 4611686018427387900  ; 3 uses
  %i.ba = shl i64 %n.vec217, 3                    ; 2 uses
  %i.bb = getelementptr i8, ptr %.061114.us, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.ba   ; 2 uses
  %cmp.n228 = icmp eq i64 %i.az, %n.vec217
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %xorbuf.exit.us
  %.1112.us = phi i32 [ 1, %.lr.ph.us ], [ %i.do, %xorbuf.exit.us ]
  %i.bd = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i32 noundef %i.l) #8 ; 2 uses
  %.not82.us = icmp eq i32 %i.bd, 0
  br i1 %.not82.us, label %bb.g, label %.thread98

bb.g:                                             ; preds = %bb.f
  %i.be = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not83.us = icmp eq i32 %i.be, 0
  br i1 %.not83.us, label %bb.h, label %.thread98

bb.h:                                             ; preds = %bb.g
  br i1 %brmerge, label %XorWords.exit33.i.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %bb.h
  br i1 %min.iters.check215, label %.lr.ph.i.i.us.preheader230, label %vector.body218

vector.body218:                                   ; preds = %.lr.ph.i.i.us.preheader, %vector.body218
  %index219 = phi i64 [ %index.next226, %vector.body218 ], [ 0, %.lr.ph.i.i.us.preheader ] ; 2 uses
  %i.bf = shl i64 %index219, 3                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %.061114.us, i64 %i.bf ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.b, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep221, i64 16
  %wide.load222 = load <2 x i64>, ptr %next.gep221, align 16, !tbaa !11
  %wide.load223 = load <2 x i64>, ptr %i.bg, align 16, !tbaa !11
  %i.bh = getelementptr i8, ptr %next.gep220, i64 16 ; 2 uses
  %wide.load224 = load <2 x i64>, ptr %next.gep220, align 8, !tbaa !11
  %wide.load225 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !11
  %i.bi = xor <2 x i64> %wide.load224, %wide.load222
  %i.bj = xor <2 x i64> %wide.load225, %wide.load223
  store <2 x i64> %i.bi, ptr %next.gep220, align 8, !tbaa !11
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !11
  %index.next226 = add nuw i64 %index219, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next226, %n.vec217
  br i1 %i.bk, label %middle.block227, label %vector.body218, !llvm.loop !17

middle.block227:                                  ; preds = %vector.body218
  br i1 %cmp.n228, label %XorWords.exit33.i.us, label %.lr.ph.i.i.us.preheader230

.lr.ph.i.i.us.preheader230:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block227
  %.sroa.039.0.i.us.ph = phi ptr [ %.061114.us, %.lr.ph.i.i.us.preheader ], [ %i.bb, %middle.block227 ]
  %.ph = phi ptr [ %i.b, %.lr.ph.i.i.us.preheader ], [ %i.bc, %middle.block227 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader230, %.lr.ph.i.i.us
  %.sroa.039.0.i.us = phi ptr [ %i.bo, %.lr.ph.i.i.us ], [ %.sroa.039.0.i.us.ph, %.lr.ph.i.i.us.preheader230 ] ; 3 uses
  %i.bl = phi ptr [ %i.bm, %.lr.ph.i.i.us ], [ %.ph, %.lr.ph.i.i.us.preheader230 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i.us, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.sroa.039.0.i.us, align 8, !tbaa !11
  %i.bq = xor i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %.sroa.039.0.i.us, align 8, !tbaa !11
  %i.br = icmp ult ptr %i.bm, %i.at
  br i1 %i.br, label %.lr.ph.i.i.us, label %XorWords.exit33.i.us, !llvm.loop !18

XorWords.exit33.i.us:                             ; preds = %.lr.ph.i.i.us, %middle.block227, %bb.h
  %.126.i.us = phi i32 [ %.mux, %bb.h ], [ %i.au, %middle.block227 ], [ %i.au, %.lr.ph.i.i.us ] ; 9 uses
  %.123.i.us = phi ptr [ %.061114.us, %bb.h ], [ %i.bb, %middle.block227 ], [ %i.bo, %.lr.ph.i.i.us ] ; 8 uses
  %.1.i.us = phi ptr [ %i.b, %bb.h ], [ %i.bc, %middle.block227 ], [ %i.bm, %.lr.ph.i.i.us ] ; 8 uses
  %.not51.i.us = icmp eq i32 %.126.i.us, 0
  br i1 %.not51.i.us, label %xorbuf.exit.us, label %iter.check

iter.check:                                       ; preds = %XorWords.exit33.i.us
  %i.bs = zext i32 %.126.i.us to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %.126.i.us, 4
  br i1 %min.iters.check, label %.lr.ph56.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.123.i.us, i64 1
  %i.bt = add i32 %.126.i.us, -1
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep, i64 %i.bu
  %scevgep195 = getelementptr i8, ptr %.1.i.us, i64 1
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.bu
  %bound0 = icmp ult ptr %.123.i.us, %scevgep196
  %bound1 = icmp ult ptr %.1.i.us, %scevgep194
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check197 = icmp ult i32 %.126.i.us, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bs, 28
  %n.vec = and i64 %i.bs, 4294967264              ; 6 uses
  %i.bw = getelementptr i8, ptr %.1.i.us, i64 %n.vec
  %i.bx = getelementptr i8, ptr %.123.i.us, i64 %n.vec
  %i.by = trunc nuw i64 %n.vec to i32
  %i.bz = sub i32 %.126.i.us, %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1.i.us, i64 %index ; 2 uses
  %next.gep198 = getelementptr i8, ptr %.123.i.us, i64 %index ; 3 uses
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12, !alias.scope !27
  %wide.load199 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !12, !alias.scope !27
  %i.cb = getelementptr i8, ptr %next.gep198, i64 16 ; 2 uses
  %wide.load200 = load <16 x i8>, ptr %next.gep198, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %wide.load201 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %i.cc = xor <16 x i8> %wide.load200, %wide.load
  %i.cd = xor <16 x i8> %wide.load201, %wide.load199
  store <16 x i8> %i.cc, ptr %next.gep198, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  store <16 x i8> %i.cd, ptr %i.cb, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bs
  br i1 %cmp.n, label %xorbuf.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.i.us.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec204 = and i64 %i.bs, 4294967292           ; 5 uses
  %i.cf = getelementptr i8, ptr %.1.i.us, i64 %n.vec204
  %i.cg = getelementptr i8, ptr %.123.i.us, i64 %n.vec204
  %i.ch = trunc nuw i64 %n.vec204 to i32
  %i.ci = sub i32 %.126.i.us, %i.ch
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index205 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 3 uses
  %next.gep206 = getelementptr i8, ptr %.1.i.us, i64 %index205
  %next.gep207 = getelementptr i8, ptr %.123.i.us, i64 %index205 ; 2 uses
  %wide.load208 = load <4 x i8>, ptr %next.gep206, align 1, !tbaa !12, !alias.scope !27
  %wide.load209 = load <4 x i8>, ptr %next.gep207, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %i.cj = xor <4 x i8> %wide.load209, %wide.load208
  store <4 x i8> %i.cj, ptr %next.gep207, align 1, !tbaa !12, !alias.scope !28, !noalias !27
  %index.next210 = add nuw i64 %index205, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %n.vec204, %i.bs
  br i1 %cmp.n211, label %xorbuf.exit.us, label %.lr.ph56.i.us.preheader

.lr.ph56.i.us.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.us.ph = phi ptr [ %.1.i.us, %iter.check ], [ %.1.i.us, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.us.ph = phi ptr [ %.123.i.us, %iter.check ], [ %.123.i.us, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.us.ph = phi i32 [ %.126.i.us, %iter.check ], [ %.126.i.us, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 4 uses
  %i.cl = add i32 %.22752.i.us.ph, -1
  %xtraiter = and i32 %.22752.i.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.us.prol.loopexit, label %.lr.ph56.i.us.prol

.lr.ph56.i.us.prol:                               ; preds = %.lr.ph56.i.us.preheader, %.lr.ph56.i.us.prol
  %.254.i.us.prol = phi ptr [ %i.cm, %.lr.ph56.i.us.prol ], [ %.254.i.us.ph, %.lr.ph56.i.us.preheader ] ; 2 uses
  %.22453.i.us.prol = phi ptr [ %i.co, %.lr.ph56.i.us.prol ], [ %.22453.i.us.ph, %.lr.ph56.i.us.preheader ] ; 3 uses
  %.22752.i.us.prol = phi i32 [ %i.cr, %.lr.ph56.i.us.prol ], [ %.22752.i.us.ph, %.lr.ph56.i.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.us.prol ], [ 0, %.lr.ph56.i.us.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.254.i.us.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.254.i.us.prol, align 1, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.22453.i.us.prol, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.22453.i.us.prol, align 1, !tbaa !12
  %i.cq = xor i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %.22453.i.us.prol, align 1, !tbaa !12
  %i.cr = add i32 %.22752.i.us.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.us.prol.loopexit, label %.lr.ph56.i.us.prol, !llvm.loop !24

.lr.ph56.i.us.prol.loopexit:                      ; preds = %.lr.ph56.i.us.prol, %.lr.ph56.i.us.preheader
  %.254.i.us.unr = phi ptr [ %.254.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.cm, %.lr.ph56.i.us.prol ]
  %.22453.i.us.unr = phi ptr [ %.22453.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.co, %.lr.ph56.i.us.prol ]
  %.22752.i.us.unr = phi i32 [ %.22752.i.us.ph, %.lr.ph56.i.us.preheader ], [ %i.cr, %.lr.ph56.i.us.prol ]
  %i.cs = icmp ult i32 %i.cl, 3
  br i1 %i.cs, label %xorbuf.exit.us, label %.lr.ph56.i.us

.lr.ph56.i.us:                                    ; preds = %.lr.ph56.i.us.prol.loopexit, %.lr.ph56.i.us
  %.254.i.us = phi ptr [ %i.di, %.lr.ph56.i.us ], [ %.254.i.us.unr, %.lr.ph56.i.us.prol.loopexit ] ; 5 uses
  %.22453.i.us = phi ptr [ %i.dk, %.lr.ph56.i.us ], [ %.22453.i.us.unr, %.lr.ph56.i.us.prol.loopexit ] ; 6 uses
  %.22752.i.us = phi i32 [ %i.dn, %.lr.ph56.i.us ], [ %.22752.i.us.unr, %.lr.ph56.i.us.prol.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 1
  %i.cu = load i8, ptr %.254.i.us, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.22453.i.us, align 1, !tbaa !12
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %.22453.i.us, align 1, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 2
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 2 ; 2 uses
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.dc = xor i8 %i.db, %i.cz
  store i8 %i.dc, ptr %i.cv, align 1, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 3
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 3 ; 2 uses
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dh = xor i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.da, align 1, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.254.i.us, i64 4
  %i.dj = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.22453.i.us, i64 4
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !12
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %i.df, align 1, !tbaa !12
  %i.dn = add i32 %.22752.i.us, -4                ; 2 uses
  %.not.i.us.3 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.us.3, label %xorbuf.exit.us, label %.lr.ph56.i.us, !llvm.loop !25

xorbuf.exit.us:                                   ; preds = %.lr.ph56.i.us.prol.loopexit, %.lr.ph56.i.us, %middle.block, %vec.epilog.middle.block, %XorWords.exit33.i.us
  %i.do = add nuw nsw i32 %.1112.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %5
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !26

._crit_edge.us:                                   ; preds = %xorbuf.exit.us
  %i.dp = getelementptr inbounds i8, ptr %.061114.us, i64 %i.ap
  %i.dq = sub nsw i32 %.063113.us, %i.ao          ; 2 uses
  %i.dr = add i32 %.054115.us, 1
  %.not146 = icmp eq i32 %i.dq, 0
  br i1 %.not146, label %.thread98, label %.lr.ph117.split.us

.lr.ph117.split.split:                            ; preds = %.lr.ph117, %bb.j
  %.054115 = phi i32 [ %i.eo, %bb.j ], [ 1, %.lr.ph117 ] ; 5 uses
  %.061114 = phi ptr [ %i.em, %bb.j ], [ %0, %.lr.ph117 ] ; 2 uses
  %.063113 = phi i32 [ %i.en, %bb.j ], [ %6, %.lr.ph117 ] ; 3 uses
  %i.ds = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef %3, i32 noundef %4) #8 ; 2 uses
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %.preheader.preheader, label %.thread98

.preheader.preheader:                             ; preds = %.lr.ph117.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.dt = lshr i32 %.054115, 24
  %i.du = trunc nuw i32 %i.dt to i8
  store i8 %i.du, ptr %i.c, align 1, !tbaa !12
  %i.dv = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79 = icmp eq i32 %i.dv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79, label %.preheader.1, label %.thread98

.preheader.1:                                     ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.dw = lshr i32 %.054115, 16
  %i.dx = trunc i32 %i.dw to i8
  store i8 %i.dx, ptr %i.c, align 1, !tbaa !12
  %i.dy = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.1 = icmp eq i32 %i.dy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.1, label %.preheader.2, label %.thread98

.preheader.2:                                     ; preds = %.preheader.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.dz = lshr i32 %.054115, 8
  %i.ea = trunc i32 %i.dz to i8
  store i8 %i.ea, ptr %i.c, align 1, !tbaa !12
  %i.eb = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.2 = icmp eq i32 %i.eb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.2, label %.preheader.3, label %.thread98

.preheader.3:                                     ; preds = %.preheader.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ec = trunc i32 %.054115 to i8
  store i8 %i.ec, ptr %i.c, align 1, !tbaa !12
  %i.ed = call i32 @wc_HmacUpdate(ptr noundef nonnull %10, ptr noundef nonnull %i.c, i32 noundef 1) #8 ; 2 uses
  %.not79.3 = icmp eq i32 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not79.3, label %bb.i, label %.thread98

bb.i:                                             ; preds = %.preheader.3
  %i.ee = call i32 @wc_HmacFinal(ptr noundef nonnull %10, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not81 = icmp eq i32 %i.ee, 0
  br i1 %.not81, label %bb.j, label %.thread98

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ef = icmp uge i32 %.063113, %i.l
  %i.eg = sext i1 %i.ef to i32
  store volatile i32 %i.eg, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.eh = xor i32 %.0..0..0..0..0..0..i, -1
  %i.ei = and i32 %.063113, %i.eh
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.ej = and i32 %.0..0..0..0..0..0.2.i, %i.l
  %i.ek = or i32 %i.ej, %i.ei                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061114, ptr nonnull align 16 %i.b, i64 %i.el, i1 false)
  %i.em = getelementptr inbounds i8, ptr %.061114, i64 %i.el
  %i.en = sub nsw i32 %.063113, %i.ek             ; 2 uses
  %i.eo = add i32 %.054115, 1
  %.not145 = icmp eq i32 %i.en, 0
  br i1 %.not145, label %.thread98, label %.lr.ph117.split.split

.thread98:                                        ; preds = %bb.j, %.lr.ph117.split.split, %bb.i, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %._crit_edge.us, %.lr.ph117.split.us, %bb.e, %.preheader.us.preheader, %.preheader.us.1, %.preheader.us.2, %.preheader.us.3, %bb.g, %bb.f, %bb.d
  %.6 = phi i32 [ %i.be, %bb.g ], [ 0, %._crit_edge.us ], [ %i.p, %bb.d ], [ %i.bd, %bb.f ], [ %i.w, %.lr.ph117.split.us ], [ %i.ai, %bb.e ], [ %i.af, %.preheader.us.2 ], [ %i.ac, %.preheader.us.1 ], [ %i.z, %.preheader.us.preheader ], [ %i.ah, %.preheader.us.3 ], [ %i.eb, %.preheader.2 ], [ %i.dy, %.preheader.1 ], [ %i.dv, %.preheader.preheader ], [ %i.ee, %bb.i ], [ %i.ed, %.preheader.3 ], [ 0, %bb.j ], [ %i.ds, %.lr.ph117.split.split ]
  call void @wc_HmacFree(ptr noundef nonnull %10) #8
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.thread98, %bb.c
  %.7 = phi i32 [ %.6, %.thread98 ], [ %i.n, %bb.c ]
  %i.ep = zext nneg i32 %i.l to i64               ; 3 uses
  fence seq_cst
  %i.eq = icmp ugt i32 %i.l, 7
  br i1 %i.eq, label %.lr.ph25.preheader.i, label %.preheader.i89

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.er = and i64 %i.ep, 2147483640               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.er, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.er
  %i.es = and i64 %i.ep, 7
  br label %.preheader.i89

.preheader.i89:                                   ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %i.ep, %.preheader16.i ], [ %i.es, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i90 = phi ptr [ %i.b, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i91, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i89
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i90, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !12
  br label %._crit_edge.i91

._crit_edge.i91:                                  ; preds = %.lr.ph31.preheader.i, %.preheader.i89
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %._crit_edge.i91, %bb.b, %bb.a
  %.060 = phi i32 [ -173, %bb.b ], [ -173, %bb.a ], [ %.7, %._crit_edge.i91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.060
}

declare i32 @wc_HmacInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_HmacSetKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_HmacUpdate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_HmacFinal(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @wc_HmacFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @wc_PBKDF2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_PBKDF2_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef null, i32 noundef -2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_PKCS12_PBKDF(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_PKCS12_PBKDF_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_PKCS12_PBKDF_ex(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree readnone captures(none) %9) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %10 = alloca [1 x %struct.wc_HashAlg], align 16 ; 9 uses
  %i.b = alloca [1024 x i8], align 8              ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %2, 1
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %4, 1
  %or.cond3 = or i1 %or.cond, %i.f
  %i.g = icmp slt i32 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.g
  %i.h = icmp slt i32 %5, 1
  %or.cond178 = or i1 %i.h, %or.cond5
  %i.i = load i32, ptr @current_wc_pbkdf_max_iterations, align 4
  %i.j = icmp sgt i32 %5, %i.i
  %or.cond180 = select i1 %or.cond178, i1 true, i1 %i.j
  br i1 %or.cond180, label %.split.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @wc_HashTypeConvert(i32 noundef %7) #8 ; 8 uses
  %i.l = tail call i32 @wc_HashGetDigestSize(i32 noundef %i.k) #8 ; 13 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.split.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %.split.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @wc_HashGetBlockSize(i32 noundef %i.k) #8
  %.fr = freeze i32 %i.o                          ; 17 uses
  %i.p = icmp slt i32 %.fr, 0
  br i1 %i.p, label %.split.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %.fr, 0
  br i1 %i.q, label %.split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %4, -1
  %i.s = add nuw i32 %i.r, %.fr                   ; 2 uses
  %i.t = urem i32 %i.s, %.fr
  %i.u = sub nuw i32 %i.s, %i.t                   ; 7 uses
  %i.v = add nsw i32 %2, -1
  %i.w = add nuw i32 %i.v, %.fr                   ; 2 uses
  %i.x = urem i32 %i.w, %.fr
  %i.y = sub nuw i32 %i.w, %i.x                   ; 5 uses
  %i.z = xor i32 %i.u, -1
  %.not = icmp ugt i32 %i.y, %i.z
  br i1 %.not, label %.split.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %i.y, %i.u                      ; 4 uses
  %i.ab = xor i32 %.fr, -1
  %.not173 = icmp ugt i32 %i.aa, %i.ab
  br i1 %.not173, label %.split.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add i32 %i.aa, %.fr                     ; 4 uses
  %i.ad = lshr i32 %.fr, 3                        ; 4 uses
  %i.ae = udiv i32 %i.aa, %.fr                    ; 2 uses
  %i.af = zext i32 %i.ac to i64                   ; 3 uses
  %i.ag = icmp ugt i32 %i.ac, 1024
  br i1 %i.ag, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call ptr @wolfSSL_Malloc(i64 noundef %i.af) #8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.split.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %i.ah, %bb.i ], [ %i.b, %bb.h ] ; 8 uses
  %i.aj = zext nneg i32 %.fr to i64               ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0136, i64 %i.aj ; 24 uses
  %i.al = trunc i32 %8 to i8
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0136, i8 %i.al, i64 %i.aj, i1 false)
  %i.am = zext i32 %i.u to i64                    ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = icmp ult i32 %i.u, 4
  br i1 %i.an, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, 4294967292
  br label %.lr.ph

.lr.ph279.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph279.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph279.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph279.preheader.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ao = trunc nuw i64 %indvars.iv.epil to i32
  %i.ap = urem i32 %i.ao, %4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.epil
  store i8 %i.as, ptr %i.at, align 1, !tbaa !12
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph279.preheader, label %.lr.ph.epil, !llvm.loop !30

.lr.ph279.preheader:                              ; preds = %.lr.ph.epil, %.lr.ph279.preheader.unr-lcssa
  %i.au = zext i32 %i.y to i64                    ; 2 uses
  %xtraiter380 = and i64 %i.au, 1
  %i.av = icmp ult i32 %i.y, 2
  br i1 %i.av, label %.lr.ph279.epil.preheader, label %.lr.ph279.preheader.new

.lr.ph279.preheader.new:                          ; preds = %.lr.ph279.preheader
  %unroll_iter384 = and i64 %i.au, 4294967294
  br label %.lr.ph279

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aw = trunc nuw i64 %indvars.iv to i32
  %i.ax = urem i32 %i.aw, %4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv.next to i32
  %i.bd = urem i32 %i.bc, %4
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !12
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.bj = urem i32 %i.bi, %4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.bp = urem i32 %i.bo, %4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.lr.ph279.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !31

.preheader273.unr-lcssa:                          ; preds = %.lr.ph279
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod382.not, label %.preheader273, label %.lr.ph279.epil.preheader

.lr.ph279.epil.preheader:                         ; preds = %.preheader273.unr-lcssa, %.lr.ph279.preheader
  %indvars.iv305.epil.init = phi i64 [ 0, %.lr.ph279.preheader ], [ %indvars.iv.next306.1, %.preheader273.unr-lcssa ]
  %lcmp.mod383 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod383)
end_hunk_0
