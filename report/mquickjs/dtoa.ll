Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 28
begin_hunk_0_@u64toa_radix:bb.a
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !17
  %.not = icmp ult i64 %.033, %i.z
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %i.ag = ptrtoaddr ptr %i.y to i64
  %i.ah = ptrtoaddr ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %i.af, i64 %i.ai, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %u64toa_bin_len.exit

u64toa_bin_len.exit:                              ; preds = %bb.e, %.split35.u64toa_bin_len.exit45_crit_edge, %.split, %bb.h, %bb.b
  %.032 = phi i64 [ %i.c, %bb.b ], [ %i.ai, %bb.h ], [ 1, %.split ], [ %.pre, %.split35.u64toa_bin_len.exit45_crit_edge ], [ %i.o, %bb.e ]
  ret i64 %.032
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i64 @i64toa_radix(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @u64toa_radix(ptr noundef %0, i64 noundef %1, i32 noundef %2) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = sub i64 0, %1
  %i.e = tail call i64 @u64toa_radix(ptr noundef nonnull %i.c, i64 noundef %i.d, i32 noundef %2) #12
  %i.f = add i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local range(i32 9, -2147483648) i32 @js_dtoa_max_len(double noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %3, 3
  switch i32 %i.a, label %bb.c [
    i32 2, label %bb.i
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %2, %bb.a ]    ; 2 uses
  %i.g = and i32 %3, 12
  %i.h = icmp eq i32 %i.g, 8
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = bitcast double %0 to i64
  %i.j = lshr i64 %i.i, 52
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 2047                       ; 3 uses
  %i.m = icmp eq i32 %i.l, 2047
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.l, -1024                  ; 2 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.p = icmp samesign ult i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.l, 1024
  %.neg.i = add nuw nsw i32 %i.q, 65506
  %i.s = select i1 %i.r, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.s, %i.n
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.t = trunc nuw nsw i32 %i.q to i16
  %.rhs.trunc = xor i16 %i.t, 31
  %i.u = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.u to i32
  br label %mul_log2_radix.exit

bb.g:                                             ; preds = %bb.e
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = sext i32 %i.n to i64
  %i.aa = sext i32 %i.y to i64
  %i.ab = mul nsw i64 %i.aa, %i.z
  %i.ac = lshr i64 %i.ab, 24
  %i.ad = trunc i64 %i.ac to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %.sext, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = tail call i32 @llvm.abs.i32(i32 %.0.i, i1 true)
  %i.af = add i32 %.0, 10
  %i.ag = add i32 %i.af, %i.ae
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  %i.ah = add nsw i32 %.0, 8
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ai = bitcast double %0 to i64
  %i.aj = lshr i64 %i.ai, 52
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 2047                     ; 4 uses
  %i.am = icmp eq i32 %i.al, 2047
  br i1 %i.am, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i32 %i.al, 1023
  br i1 %i.an, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.al, -1024                ; 2 uses
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.aq = icmp samesign ult i32 %i.ap, 2
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true) ; 2 uses
  %i.as = icmp eq i32 %i.al, 1023
  %.neg.i28 = add nuw nsw i32 %i.ar, 65506
  %i.at = select i1 %i.as, i32 %.neg.i28, i32 0
  %.012.i29 = add nsw i32 %i.at, %i.ao
  %.lhs.trunc31 = trunc i32 %.012.i29 to i16
  %i.au = trunc nuw nsw i32 %i.ar to i16
  %.rhs.trunc32 = xor i16 %i.au, 31
  %i.av = sdiv i16 %.lhs.trunc31, %.rhs.trunc32
  %.sext33 = sext i16 %i.av to i32
  br label %mul_log2_radix.exit30

bb.m:                                             ; preds = %bb.k
  %i.aw = sext i32 %1 to i64
  %i.ax = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !19
  %i.ba = sext i32 %i.ao to i64
  %i.bb = sext i32 %i.az to i64
  %i.bc = mul nsw i64 %i.bb, %i.ba
  %i.bd = lshr i64 %i.bc, 24
  %i.be = trunc i64 %i.bd to i32
  br label %mul_log2_radix.exit30

mul_log2_radix.exit30:                            ; preds = %bb.l, %bb.m
  %.0.i27 = phi i32 [ %.sext33, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = add nsw i32 %.0.i27, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %mul_log2_radix.exit30
  %.1 = phi i32 [ %i.bf, %mul_log2_radix.exit30 ], [ 1, %bb.j ]
  %i.bg = add nsw i32 %2, 3
  %i.bh = add nsw i32 %i.bg, %.1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.d, %bb.n, %bb.h, %mul_log2_radix.exit
  %.2 = phi i32 [ %i.bh, %bb.n ], [ %i.ag, %mul_log2_radix.exit ], [ %i.ah, %bb.h ], [ 0, %bb.d ], [ 0, %bb.i ]
  %..i = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.2, i32 9)
  ret i32 %..i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind optsize uwtable
define dso_local noundef i32 @js_dtoa(ptr nofree noundef captures(address) %0, double noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = and i32 %4, 3                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 4 uses
  %i.e = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 8 uses
  %i.f = ashr exact i32 %2, %i.e                  ; 6 uses
  %i.g = bitcast double %1 to i64                 ; 5 uses
  %i.h = lshr i64 %i.g, 52
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 2047                       ; 2 uses
  %i.k = and i64 %i.g, 4503599627370495           ; 5 uses
  switch i32 %i.j, label %bb.n [
    i32 2047, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not250 = icmp sgt i64 %i.g, -1
  br i1 %.not250, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0218 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.c ] ; 2 uses
  store i64 8751735898823355977, ptr %.0218, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0218, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store <2 x i32> <i32 1, i32 0>, ptr %5, align 4, !tbaa !19
  switch i32 %i.c, label %bb.j [
    i32 0, label %bb.k
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %3, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0223 = phi i32 [ %3, %bb.j ], [ %i.q, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %.not248 = icmp sgt i64 %i.g, -1
  %i.r = and i32 %4, 16
  %.not249 = icmp eq i32 %i.r, 0
  %or.cond = or i1 %.not248, %.not249
  br i1 %or.cond, label %mpb_cmp.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !17
  br label %mpb_cmp.exit

bb.m:                                             ; preds = %bb.g
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.k, i1 true) ; 2 uses
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nsw i64 %i.t, -11
  %i.w = sub nsw i32 12, %i.u
  %i.x = shl i64 %i.k, %i.v
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.y = or disjoint i64 %i.k, 4503599627370496
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0233 = phi i64 [ %i.x, %bb.m ], [ %i.y, %bb.n ] ; 9 uses
  %.0232 = phi i32 [ %i.w, %bb.m ], [ %i.j, %bb.n ] ; 7 uses
  %.not = icmp sgt i64 %i.g, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1219 = phi ptr [ %i.z, %bb.p ], [ %0, %bb.o ] ; 10 uses
  %i.aa = add nsw i32 %.0232, -1022
  %i.ab = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.ac = add nsw i32 %.0232, -1023               ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 53
  %or.cond3 = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = sub nuw nsw i32 1075, %.0232
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.af
  %i.ag = xor i64 %notmask, -1
  %i.ah = and i64 %.0233, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = and i32 %4, 12
  %.not246 = icmp eq i32 %i.aj, 4
  %or.cond251 = or i1 %.not246, %i.ai
  br i1 %or.cond251, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = lshr i64 %.0233, %i.af
  %i.al = tail call i64 @u64toa_radix(ptr noundef %.1219, i64 noundef %i.ak, i32 noundef %2) #12
  %i.am = getelementptr inbounds nuw i8, ptr %.1219, i64 %i.al
  br label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.an = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ao = icmp samesign ult i32 %i.an, 2
  br i1 %i.ao, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.aq = icmp slt i32 %.0232, 1023
  %.neg.i = add nuw nsw i32 %i.ap, 65506
  %i.ar = select i1 %i.aq, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.ar, %i.ac
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %.rhs.trunc = xor i16 %i.as, 31
  %i.at = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.at to i32
  br label %mul_log2_radix.exit

bb.v:                                             ; preds = %bb.t
  %i.au = sext i32 %2 to i64
  %i.av = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = sext i32 %i.ac to i64
  %i.az = sext i32 %i.ax to i64
  %i.ba = mul nsw i64 %i.az, %i.ay
  %i.bb = lshr i64 %i.ba, 24
  %i.bc = trunc i64 %i.bb to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.u, %bb.v
  %.0.i = phi i32 [ %.sext, %bb.u ], [ %i.bc, %bb.v ] ; 2 uses
  %i.bd = add nsw i32 %.0.i, 1                    ; 2 uses
  br i1 %i.ab, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %mul_log2_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.be = sext i32 %2 to i64                      ; 4 uses
  %i.bf = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %.0232, -1075               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.bl = icmp ult i64 %.0233, 4294967296
  %..i.i = select i1 %i.bl, i32 1, i32 2
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.w
  %.1224 = phi i32 [ %i.bi, %bb.w ], [ %i.cm, %bb.ac ] ; 4 uses
  %.0216 = phi i32 [ 0, %bb.w ], [ %.0227, %bb.ac ]
  %.0214 = phi i32 [ 0, %bb.w ], [ %.2225.lcssa, %bb.ac ] ; 2 uses
  %.0213 = phi i64 [ 0, %bb.w ], [ %.0212.lcssa, %bb.ac ]
  %i.bm = tail call fastcc i64 @pow_ui(i32 noundef %2, i32 noundef %.1224) #12
  br label %bb.y

bb.y:                                             ; preds = %mpb_get_u64.exit, %bb.x
  %.0227 = phi i32 [ %i.bd, %bb.x ], [ %i.bw, %mpb_get_u64.exit ] ; 5 uses
  %i.bn = sub nsw i32 %.1224, %.0227
  store i64 %.0233, ptr %i.bk, align 4
  store i32 %..i.i, ptr %5, align 4, !tbaa !19
  %i.bo = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.bn, i32 noundef 1, i32 noundef range(i32 -2147483648, 2147482573) %i.bj) #12
  %i.bp = sub nsw i32 %i.bo, %i.bj
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.bp, i32 noundef 0) #12
  %i.bq = load i32, ptr %5, align 4, !tbaa !19
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !19
  %i.bt = zext i32 %i.bs to i64
  br label %mpb_get_u64.exit

bb.aa:                                            ; preds = %bb.y
  %i.bu = load i64, ptr %i.bk, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.z, %bb.aa
  %.0.i255 = phi i64 [ %i.bt, %bb.z ], [ %i.bu, %bb.aa ] ; 4 uses
  %i.bv = icmp ult i64 %.0.i255, %i.bm
  %i.bw = add nsw i32 %.0227, 1
  br i1 %i.bv, label %.preheader, label %bb.y

.preheader:                                       ; preds = %mpb_get_u64.exit
  %i.bx = urem i64 %.0.i255, %i.be
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0212276 = phi i64 [ %i.bz, %.lr.ph ], [ %.0.i255, %.preheader ]
  %.2225275 = phi i32 [ %i.ca, %.lr.ph ], [ %.1224, %.preheader ]
  %i.bz = udiv i64 %.0212276, %i.be               ; 3 uses
  %i.ca = add nsw i32 %.2225275, -1               ; 2 uses
  %i.cb = urem i64 %i.bz, %i.be
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2225.lcssa = phi i32 [ %.1224, %.preheader ], [ %i.ca, %.lr.ph ] ; 4 uses
  %.0212.lcssa = phi i64 [ %.0.i255, %.preheader ], [ %i.bz, %.lr.ph ] ; 4 uses
  %i.cd = icmp eq i32 %.0214, 0
  br i1 %i.cd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i64 %.0212.lcssa, ptr %i.bk, align 4
  %i.ce = icmp ult i64 %.0212.lcssa, 4294967296
  %..i = select i1 %i.ce, i32 1, i32 2
  store i32 %..i, ptr %5, align 4, !tbaa !19
  %i.cf = sub nsw i32 %.0227, %.2225.lcssa
  %i.cg = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.cf, i32 noundef 0, i32 noundef 55) #12
  %i.ch = call fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr noundef nonnull %i.b, ptr noundef nonnull %5, i32 noundef %i.cg) #12
  %i.ci = icmp eq i64 %i.ch, %.0233
  %i.cj = load i32, ptr %i.b, align 4
  %i.ck = icmp eq i32 %i.cj, %i.aa
  %or.cond253 = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %or.cond253, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.cl = icmp eq i32 %.2225.lcssa, 1
  %i.cm = add nsw i32 %.2225.lcssa, -1
  br i1 %i.cl, label %bb.ad, label %bb.x

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.1217 = phi i32 [ %.0227, %bb.ac ], [ %.0216, %bb.ab ]
  %.1215 = phi i32 [ 1, %bb.ac ], [ %.0214, %bb.ab ]
  %.1 = phi i64 [ %.0212.lcssa, %bb.ac ], [ %.0213, %bb.ab ] ; 2 uses
  store i64 %.1, ptr %i.bk, align 4
  %i.cn = icmp ult i64 %.1, 4294967296
  %..i256 = select i1 %i.cn, i32 1, i32 2
  store i32 %..i256, ptr %5, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %mpb_cmp.exit

bb.ae:                                            ; preds = %mul_log2_radix.exit
  %i.co = icmp eq i32 %i.c, 2
  br i1 %i.co, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %or.cond5 = icmp ult i32 %3, 102
  br i1 %or.cond5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1243, ptr noundef nonnull @__PRETTY_FUNCTION__.js_dtoa) #13
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cp = add nsw i32 %.0232, -1075               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 %.0233, ptr %i.cq, align 4
  %i.cr = icmp ult i64 %.0233, 4294967296
  %..i.i257 = select i1 %i.cr, i32 1, i32 2
  store i32 %..i.i257, ptr %5, align 4, !tbaa !19
  %i.cs = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %3, i32 noundef 1, i32 noundef range(i32 -2147483648, 2147482573) %i.cp) #12
  %i.ct = sub nsw i32 %i.cs, %i.cp
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.ct, i32 noundef 1) #12
  %i.cu = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 -1)
  %..i258 = add nsw i32 %i.cu, 2                  ; 2 uses
  %i.cv = add nuw nsw i32 %..i258, %3
  %i.cw = tail call fastcc i32 @output_digits(ptr noundef %.1219, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %i.cv, i32 noundef %..i258) #12 ; 4 uses
  %i.cx = load i8, ptr %.1219, align 1, !tbaa !17
  %i.cy = icmp eq i8 %i.cx, 48
  %i.cz = icmp sgt i32 %i.cw, 1
  %or.cond7 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond7, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %.1219, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@js_dtoa:bb.a
  %i.ed = add nsw i32 %.1228, 1
  br label %bb.ao

mpb_cmp.exit:                                     ; preds = %bb.as, %bb.ao, %bb.ad, %bb.k, %bb.l
  %.2229 = phi i32 [ 1, %bb.l ], [ %.1217, %bb.ad ], [ 1, %bb.k ], [ %.1228, %bb.ao ], [ %.1228, %bb.as ] ; 9 uses
  %.3226 = phi i32 [ %.0223, %bb.l ], [ %.1215, %bb.ad ], [ %.0223, %bb.k ], [ %3, %bb.ao ], [ %3, %bb.as ] ; 7 uses
  %.2 = phi ptr [ %i.s, %bb.l ], [ %.1219, %bb.ad ], [ %0, %bb.k ], [ %.1219, %bb.ao ], [ %.1219, %bb.as ] ; 9 uses
  %i.ee = icmp eq i32 %i.c, 1
  br i1 %i.ee, label %bb.au, label %bb.at

bb.at:                                            ; preds = %mpb_cmp.exit
  %i.ef = sext i32 %2 to i64
  %i.eg = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 -2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !17
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nuw nsw i32 %i.ej, 4
  br label %bb.au

bb.au:                                            ; preds = %mpb_cmp.exit, %bb.at
  %.0220 = phi i32 [ %i.ek, %bb.at ], [ %3, %mpb_cmp.exit ]
  %i.el = and i32 %4, 12
  switch i32 %i.el, label %bb.ba [
    i32 4, label %bb.aw
    i32 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.em = icmp slt i32 %.2229, -5
  %i.en = icmp sgt i32 %.2229, %.0220
  %or.cond254 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond254, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.eo = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3226, i32 noundef 1) #12
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %.2, i64 %i.ep ; 3 uses
  %i.er = add nsw i32 %.2229, -1                  ; 2 uses
  %i.es = icmp eq i32 %2, 10
  br i1 %i.es, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.et = icmp eq i32 %i.f, 1
  %i.eu = icmp samesign ult i32 %i.e, 5
  %or.cond11 = select i1 %i.et, i1 %i.eu, i1 false ; 2 uses
  %spec.select = select i1 %or.cond11, i8 112, i8 64
  %i.ev = select i1 %or.cond11, i32 %i.e, i32 1
  %spec.select316 = mul nsw i32 %i.er, %i.ev
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink315 = phi i8 [ %spec.select, %bb.ax ], [ 101, %bb.aw ]
  %.3230 = phi i32 [ %spec.select316, %bb.ax ], [ %i.er, %bb.aw ] ; 2 uses
  store i8 %.sink315, ptr %i.eq, align 1, !tbaa !17
  %.3 = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ew = icmp slt i32 %.3230, 0
  %.sink = select i1 %i.ew, i8 45, i8 43
  %.4231 = tail call i32 @llvm.abs.i32(i32 %.3230, i1 true)
  store i8 %.sink, ptr %.3, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.08.i = phi i32 [ %.4231, %bb.ay ], [ %i.fc, %bb.az ] ; 3 uses
  %.0.i262 = phi ptr [ %i.ex, %bb.ay ], [ %i.fb, %bb.az ]
  %i.ey = urem i32 %.08.i, 10
  %i.ez = trunc nuw nsw i32 %i.ey to i8
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = getelementptr inbounds i8, ptr %.0.i262, i64 -1 ; 4 uses
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !17
  %i.fc = udiv i32 %.08.i, 10
  %.not.i263 = icmp samesign ult i32 %.08.i, 10
  br i1 %.not.i263, label %u32toa.exit, label %bb.az, !llvm.loop !0

u32toa.exit:                                      ; preds = %bb.az
  %.4 = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.fd = ptrtoaddr ptr %i.ex to i64
  %i.fe = ptrtoaddr ptr %i.fb to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4, ptr nonnull align 1 %i.fb, i64 %i.ff, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fg = getelementptr inbounds nuw i8, ptr %.4, i64 %i.ff
  br label %.loopexit

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.fh = icmp slt i32 %.2229, 1
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fi = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 48, ptr %.2, align 1, !tbaa !17
  %i.fj = getelementptr i8, ptr %.2, i64 2        ; 2 uses
  store i8 46, ptr %i.fi, align 1, !tbaa !17
  %i.fk = icmp slt i32 %.2229, 0
  br i1 %i.fk, label %.lr.ph286.preheader, label %._crit_edge287

.lr.ph286.preheader:                              ; preds = %bb.bb
  %i.fl = sub nsw i32 0, %.2229
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fj, i8 48, i64 %i.fm, i1 false), !tbaa !17
  %i.fn = getelementptr i8, ptr %.2, i64 %i.fm
  %scevgep298 = getelementptr i8, ptr %i.fn, i64 2
  br label %._crit_edge287

._crit_edge287:                                   ; preds = %.lr.ph286.preheader, %bb.bb
  %.5.lcssa = phi ptr [ %i.fj, %bb.bb ], [ %scevgep298, %.lr.ph286.preheader ] ; 2 uses
  %i.fo = tail call fastcc i32 @output_digits(ptr noundef nonnull %.5.lcssa, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3226, i32 noundef %.3226) #12
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.fp
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %..i264 = tail call noundef i32 @llvm.smin.i32(i32 %.3226, i32 %.2229)
  %i.fr = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3226, i32 noundef %..i264) #12
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr i8, ptr %.2, i64 %i.fs    ; 2 uses
  %i.fu = sub nsw i32 %.2229, %.3226              ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph281.preheader, label %.loopexit

.lr.ph281.preheader:                              ; preds = %bb.bc
  %i.fw = zext nneg i32 %i.fu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ft, i8 48, i64 %i.fw, i1 false), !tbaa !17
  %i.fx = xor i32 %.3226, -1
  %i.fy = add i32 %.2229, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr i8, ptr %.2, i64 %i.fs
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %scevgep = getelementptr i8, ptr %i.gb, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281.preheader, %bb.bc, %bb.ak, %u32toa.exit, %._crit_edge287, %bb.e, %bb.f, %bb.s
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.fg, %u32toa.exit ], [ %i.fq, %._crit_edge287 ], [ %i.df, %bb.ak ], [ %i.am, %bb.s ], [ %i.ft, %bb.bc ], [ %scevgep, %.lr.ph281.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !17
  %i.gc = ptrtoaddr ptr %.7 to i64
  %i.gd = ptrtoaddr ptr %0 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  ret i32 %i.gf
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @pow_ui(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %.loopexit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %0 to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5
  %i.c = icmp eq i32 %0, 10                       ; 2 uses
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp ult i32 %1, 18
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @pow5_table, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp samesign ugt i32 %1, 13
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr @pow5h_table, i64 %i.e
  %i.l = getelementptr i8, ptr %i.k, i64 -14
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 32
  %i.p = or disjoint i64 %i.o, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.i, %bb.d ]
  %narrow = select i1 %i.c, i32 %1, i32 0
  %i.q = zext nneg i32 %narrow to i64
  %.1 = shl nuw nsw i64 %.0, %i.q
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.r = zext i32 %0 to i64                       ; 2 uses
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.t = sub nuw nsw i32 30, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.234 = phi i64 [ %i.r, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.03033 = phi i32 [ %i.t, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.u = mul i64 %.234, %.234
  %2 = shl nuw i32 1, %.03033
  %3 = and i32 %2, %1
  %.not = icmp eq i32 %3, 0
  %i.v = select i1 %.not, i64 1, i64 %i.r
  %spec.select = mul i64 %i.u, %i.v               ; 2 uses
  %i.w = add nsw i32 %.03033, -1
  %.not36 = icmp eq i32 %.03033, 0
  br i1 %.not36, label %.loopexit, label %bb.h, !llvm.loop !24

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.f, %bb.b
  %.031 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ], [ %.1, %bb.f ], [ %spec.select, %bb.h ]
  ret i64 %.031
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @mul_pow_round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 32) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @mul_pow(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 55) #12
  %i.b = tail call fastcc i64 @round_to_d(ptr noundef %0, ptr noundef %1, i32 noundef %i.a) #12
  ret i64 %i.b
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @output_digits(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 3 uses
  %i.d = xor i32 %i.c, 31                         ; 2 uses
  %i.e = add nsw i32 %2, -2
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %.not70 = icmp eq i32 %i.c, 31
  %.not = select i1 %i.b, i1 true, i1 %.not70
  br i1 %.not, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.j = lshr i32 2147483647, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = mul nuw nsw i32 %i.d, %i.i
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not5268 = icmp eq i32 %3, 0
  br i1 %.not5268, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f
  %i.o = icmp eq i32 %2, 10
  br label %bb.e

bb.b:                                             ; preds = %.preheader66, %bb.d
  %.047 = phi i32 [ %i.p, %bb.d ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.p = sub nsw i32 %.047, %..i                  ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = icmp sgt i32 %..i, 0
  br i1 %i.s, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.t = load i32, ptr %i.k, align 4, !tbaa !19
  %i.u = zext nneg i32 %..i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.01416.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = and i32 %.01416.i, %i.j                  ; 3 uses
  %i.w = lshr i32 %.01416.i, %i.d
  %i.x = icmp samesign ult i32 %i.v, 10
  %i.y = or disjoint i32 %i.v, 48
  %i.z = add nuw nsw i32 %i.v, 87
  %.013.i = select i1 %i.x, i32 %i.y, i32 %i.z
  %i.aa = trunc i32 %.013.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !17
  %i.ac = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ac, label %bb.c, label %u64toa_bin_len.exit, !llvm.loop !2

u64toa_bin_len.exit:                              ; preds = %bb.c, %bb.b
  %i.ad = icmp eq i32 %i.p, 0
  br i1 %i.ad, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2) #12
  br label %bb.b

bb.e:                                             ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %3, %.lr.ph ], [ %i.ae, %limb_to_a.exit ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 4 uses
  %i.ae = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.af = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %.013.i55 = add i32 %i.af, -1                   ; 2 uses
  %i.ag = icmp sgt i32 %.013.i55, -1
  br i1 %i.ag, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %bb.e
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext nneg i32 %.013.i55 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %i.aj, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.f ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56 ], [ %i.ar, %bb.f ]
  %i.ak = shl nuw i64 %.01214.i, 32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = zext i32 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  %i.ap = udiv i64 %i.ao, %i.ai
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !19
  %i.ar = urem i64 %i.ao, %i.ai                   ; 2 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %.not.i = icmp eq i64 %indvars.iv.i57, 0
  br i1 %.not.i, label %mp_div1.exit, label %bb.f, !llvm.loop !25

mp_div1.exit:                                     ; preds = %bb.f
  %i.as = trunc nuw i64 %i.ar to i32              ; 3 uses
  %i.at = icmp sgt i32 %i.af, 1
  br i1 %i.at, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.g
  %i.au = phi i32 [ %i.az, %bb.g ], [ %i.af, %mp_div1.exit ] ; 3 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %mpb_renorm.exit

bb.g:                                             ; preds = %.lr.ph.i59
  %i.az = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.az, ptr %1, align 4, !tbaa !19
  %i.ba = icmp sgt i32 %i.au, 2
  br i1 %i.ba, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.g, %bb.e, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %bb.e ], [ %i.as, %mp_div1.exit ], [ %i.as, %bb.g ], [ %i.as, %.lr.ph.i59 ] ; 2 uses
  %i.bb = zext nneg i32 %i.ae to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 2 uses
  br i1 %i.o, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %mpb_renorm.exit
  %i.bd = icmp sgt i32 %..i54, 0
  br i1 %i.bd, label %.lr.ph.preheader.i, label %limb_to_a.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.be = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

bb.h:                                             ; preds = %mpb_renorm.exit
  %.08.i.i = add i32 %..i54, -1                   ; 2 uses
  %i.bf = icmp sgt i32 %.08.i.i, -1
  br i1 %i.bf, label %.lr.ph.preheader.i.i, label %limb_to_a.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.bg = zext nneg i32 %.08.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bg, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %.079.i.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i.i ], [ %i.bi, %.lr.ph.i.i ] ; 2 uses
  %i.bh = urem i32 %.079.i.i, 10
  %i.bi = udiv i32 %.079.i.i, 10
  %i.bj = trunc nuw nsw i32 %i.bh to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %limb_to_a.exit, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i
  %indvars.iv.i61 = phi i64 [ %i.be, %.lr.ph.preheader.i ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i ], [ %i.bn, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.bm = urem i32 %.01721.i, %2                  ; 2 uses
  %i.bn = udiv i32 %.01721.i, %2
  %i.bo = icmp slt i32 %i.bm, 10
  %.016.v.i = select i1 %i.bo, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.bm
  %i.bp = trunc i32 %.016.i to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i62
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !17
  %i.br = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.br, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !26

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %.lr.ph.i.i, %.preheader.i, %bb.h
  %.not52 = icmp eq i32 %i.ae, 0
  br i1 %.not52, label %.loopexit, label %bb.e, !llvm.loop !27

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bs = sext i32 %4 to i64
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = sub nsw i32 %3, %4
  %i.bw = sext i32 %i.bv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  store i8 46, ptr %i.bt, align 1, !tbaa !17
  %i.bx = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.bx, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #4 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.b
  %.not7596 = icmp eq i32 %3, 0
  br i1 %.not7596, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.06099 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.06298 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06597 = phi i32 [ %3, %.lr.ph ], [ %i.y, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06597, i32 %i.g) ; 4 uses
  %.not76 = icmp eq i32 %..i, %.06298
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i64 @pow_ui(i32 noundef %1, i32 noundef %..i) #12
  %i.k = trunc i64 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.163 = phi i32 [ %..i, %bb.d ], [ %.06298, %bb.c ]
  %.161 = phi i32 [ %i.k, %bb.d ], [ %.06099, %bb.c ] ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !19     ; 4 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = zext i32 %.161 to i64
  %wide.trip.count.i = zext i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.f ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.m
  %i.r = add nuw i64 %i.q, %.01112.i              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.n, align 4, !tbaa !19
  %i.t = lshr i64 %i.r, 32                        ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mp_mul1.exit, label %bb.f, !llvm.loop !4

mp_mul1.exit:                                     ; preds = %bb.f
  %.not77 = icmp eq i64 %i.t, 0
  br i1 %.not77, label %mp_mul1.exit.thread, label %bb.g

bb.g:                                             ; preds = %mp_mul1.exit
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = add nsw i32 %i.l, 1
  store i32 %i.v, ptr %0, align 4, !tbaa !19
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.w
  store i32 %i.u, ptr %i.x, align 4, !tbaa !19
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.e, %bb.g, %mp_mul1.exit
  %i.y = sub nuw nsw i32 %.06597, %..i            ; 2 uses
  %.not75 = icmp eq i32 %i.y, 0
  br i1 %.not75, label %.loopexit, label %bb.c, !llvm.loop !28

bb.h:                                             ; preds = %bb.b
  %i.z = xor i32 %3, -1
  %i.aa = add nuw i32 %i.g, %i.z
  %i.ab = sdiv i32 %i.aa, %i.g
  %i.ac = shl nsw i32 %i.ab, 5                    ; 2 uses
  %i.ad = add nsw i32 %i.ac, %i.b                 ; 2 uses
  %.not72 = icmp eq i32 %4, 0
  br i1 %.not72, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %mpb_floor_log2.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = shl nsw i32 %i.ae, 5
  %i.ak = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.al = xor i32 %i.ak, -1
  %i.am = add i32 %i.aj, %i.al
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.am, %bb.j ], [ -1, %bb.i ]
  %i.an = sub nsw i32 %5, %.0.i
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %5, 2
  %i.ap = sub i32 %i.ao, %i.ad
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.ap, %bb.k ], [ %i.an, %mpb_floor_log2.exit ]
  %..i79 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.aq = add nsw i32 %i.ac, %..i79
  %i.ar = sub nsw i32 0, %i.aq
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.ar, i32 noundef 2) #12
  %i.as = icmp eq i32 %1, 5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %mpb_renorm.exit
  %.095 = phi i32 [ 0, %bb.l ], [ %.1, %mpb_renorm.exit ]
  %.05894 = phi i32 [ 0, %bb.l ], [ %i.bq, %mpb_renorm.exit ]
  %.293 = phi i32 [ 0, %bb.l ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16692 = phi i32 [ %i.a, %bb.l ], [ %i.bz, %mpb_renorm.exit ] ; 2 uses
  %.08491 = phi i32 [ 0, %bb.l ], [ %.185, %mpb_renorm.exit ]
  %.08690 = phi i32 [ 0, %bb.l ], [ %.187, %mpb_renorm.exit ]
  %..i80 = tail call noundef i32 @llvm.smin.i32(i32 %.16692, i32 %i.g) ; 7 uses
  %.not74 = icmp eq i32 %..i80, %.293
  br i1 %.not74, label %pow_ui_inv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp ult i32 %..i80, 14
  %or.cond3.i = and i1 %i.as, %i.au
  br i1 %or.cond3.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %..i80, -1
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !19 ; 2 uses
  %i.az = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true) ; 2 uses
  %i.ba = shl i32 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19
  br label %pow_ui_inv.exit

bb.p:                                             ; preds = %bb.n
  %i.bd = tail call fastcc i64 @pow_ui(i32 noundef range(i32 2, 1) %1, i32 noundef %..i80) #12
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.be, i1 true) ; 2 uses
  %i.bg = shl i32 %i.be, %i.bf                    ; 3 uses
  %i.bh = xor i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = or disjoint i64 %i.bj, 4294967295
  %i.bl = zext i32 %i.bg to i64
  %i.bm = udiv i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %bb.p, %bb.o, %bb.m
  %.187 = phi i32 [ %.08690, %bb.m ], [ %i.az, %bb.o ], [ %i.bf, %bb.p ] ; 2 uses
  %.185 = phi i32 [ %.08491, %bb.m ], [ %i.bc, %bb.o ], [ %i.bn, %bb.p ] ; 2 uses
  %.3 = phi i32 [ %.293, %bb.m ], [ %..i80, %bb.o ], [ %..i80, %bb.p ]
  %.1 = phi i32 [ %.095, %bb.m ], [ %i.ba, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %i.bo = load i32, ptr %0, align 4, !tbaa !19
  %i.bp = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.at, ptr noundef nonnull %i.at, i32 noundef %i.bo, i32 noundef %.1, i32 noundef %.185, i32 noundef %.187) #12
  %i.bq = or i32 %i.bp, %.05894                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !19   ; 2 uses
  %i.br = icmp sgt i32 %.pr.i, 1
  br i1 %i.br, label %.lr.ph.i82, label %mpb_renorm.exit

.lr.ph.i82:                                       ; preds = %pow_ui_inv.exit, %bb.q
  %i.bs = phi i32 [ %i.bx, %bb.q ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %mpb_renorm.exit

bb.q:                                             ; preds = %.lr.ph.i82
  %i.bx = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bx, ptr %0, align 4, !tbaa !19
  %i.by = icmp sgt i32 %i.bs, 2
  br i1 %i.by, label %.lr.ph.i82, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %.lr.ph.i82, %bb.q, %pow_ui_inv.exit
  %i.bz = sub nsw i32 %.16692, %..i80             ; 2 uses
  %.not73 = icmp eq i32 %i.bz, 0
  br i1 %.not73, label %bb.r, label %bb.m, !llvm.loop !29

bb.r:                                             ; preds = %mpb_renorm.exit
  %i.ca = add nsw i32 %..i79, %i.ad
  %i.cb = icmp ne i32 %i.bq, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = load i32, ptr %i.at, align 4, !tbaa !19
  %i.ce = or i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.at, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.r, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.ca, %bb.r ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 2 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !19
  %i.h = sext i32 %i.g to i64
  %i.i = tail call fastcc i32 @mp_shl(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.h, i32 noundef %i.e) #12
  %i.j = load i32, ptr %0, align 4, !tbaa !19
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  store i32 %i.i, ptr %i.l, align 4, !tbaa !19
  %i.m = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !19
  %i.o = icmp sgt i32 %i.m, 0
  br i1 %i.o, label %.lr.ph.i, label %mpb_renorm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %mpb_renorm.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.u, ptr %0, align 4, !tbaa !19
  %i.v = icmp sgt i32 %i.p, 2
  br i1 %i.v, label %.lr.ph.i, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %bb.e, %.lr.ph.i, %bb.d, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.t, label %bb.f

bb.f:                                             ; preds = %mpb_renorm.exit
  %i.w = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph131, label %.preheader

.lr.ph131:                                        ; preds = %bb.f
  %i.y = zext nneg i32 %i.w to i64
  %i.z = zext nneg i32 %i.d to i64
  %invariant.gep161 = getelementptr [4 x i8], ptr %0, i64 %i.z
  br label %bb.g

.preheader:                                       ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = lshr i32 %i.c, 5
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 1)
  %i.ad = shl nuw nsw i32 %i.ac, 2
  %i.ae = zext nneg i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %i.ae, i1 false), !tbaa !19
  %i.af = add nsw i32 %i.w, %i.d
  store i32 %i.af, ptr %0, align 4, !tbaa !19
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph131, %bb.g
  %indvars.iv141 = phi i64 [ %i.y, %.lr.ph131 ], [ %indvars.iv.next142, %bb.g ] ; 4 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %indvars.iv141
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %gep162 = getelementptr [4 x i8], ptr %invariant.gep161, i64 %indvars.iv141
  store i32 %i.ah, ptr %gep162, align 4, !tbaa !19
  %i.ai = icmp samesign ugt i64 %indvars.iv141, 1
  br i1 %i.ai, label %bb.g, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !19    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit106

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %1, -1                      ; 2 uses
  %i.ak = lshr i32 %i.aj, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.ak, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit106

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.al = and i32 %i.aj, 31                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %3 = shl nuw i32 1, %i.al
  %4 = and i32 %i.ap, %3
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %mpb_get_bit.exit106, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.aq = icmp eq i32 %2, 1
  br i1 %i.aq, label %mpb_get_bit.exit106, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not123 = icmp eq i32 %1, 1
  br i1 %.not123, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not133 = icmp eq i32 %i.ak, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  %.085125 = phi i32 [ %i.at, %.lr.ph ], [ 0, %bb.l ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !19
  %i.at = or i32 %i.as, %.085125                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.at, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.al
  %i.au = xor i32 %notmask, -1
  %i.av = and i32 %i.ap, %i.au
  %i.aw = or i32 %i.av, %.085.lcssa
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread, label %mpb_get_bit.exit106

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ay = lshr i32 %1, 5                          ; 2 uses
  %.not.i104 = icmp samesign ult i32 %i.ay, %.pre
  br i1 %.not.i104, label %bb.m, label %mpb_get_bit.exit106

bb.m:                                             ; preds = %.thread
  %i.az = and i32 %1, 31
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19
  %i.bd = lshr i32 %i.bc, %i.az
  %i.be = and i32 %i.bd, 1
  br label %mpb_get_bit.exit106

mpb_get_bit.exit106:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.be, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.bf = lshr i32 %1, 5                          ; 4 uses
  %i.bg = and i32 %1, 31
  %.not97 = icmp slt i32 %i.bf, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit106
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.bh, align 4, !tbaa !19
  br label %bb.t

bb.o:                                             ; preds = %mpb_get_bit.exit106
  %.not98 = icmp eq i32 %i.bf, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = sub nuw nsw i32 %.pre, %i.bf            ; 4 uses
  store i32 %i.bi, ptr %0, align 4, !tbaa !19
  %.not163 = icmp eq i32 %i.bi, 0
  br i1 %.not163, label %mpb_renorm.exit110, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bk = zext nneg i32 %i.bf to i64
  %wide.trip.count139 = zext nneg i32 %i.bi to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph128, %bb.q
  %indvars.iv136 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next137, %bb.q ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.bl = load i32, ptr %gep, align 4, !tbaa !19
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv136
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !19
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.loopexit, label %bb.q, !llvm.loop !32

.loopexit:                                        ; preds = %bb.q, %bb.o
  %i.bn = phi i32 [ %.pre, %bb.o ], [ %i.bi, %bb.q ] ; 2 uses
  %.not99 = icmp eq i32 %i.bg, 0
  br i1 %.not99, label %mpb_renorm.exit110, label %.lr.ph.i107.preheader

.lr.ph.i107.preheader:                            ; preds = %.loopexit
  %i.bo = zext nneg i32 %i.bn to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader, %.lr.ph.i107
  %.020.i = phi i32 [ %i.bq, %.lr.ph.i107 ], [ 0, %.lr.ph.i107.preheader ]
  %.017.in19.i = phi i64 [ %.017.i, %.lr.ph.i107 ], [ %i.bo, %.lr.ph.i107.preheader ] ; 3 uses
  %.017.i = add nsw i64 %.017.in19.i, -1
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %.017.in19.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !19 ; 2 uses
  %i.br = tail call i32 @llvm.fshr.i32(i32 %.020.i, i32 %i.bq, i32 range(i32 1, 32) %1)
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !19
  %i.bs = icmp samesign ugt i64 %.017.in19.i, 1
  br i1 %i.bs, label %.lr.ph.i107, label %mp_shr.exit, !llvm.loop !33

mp_shr.exit:                                      ; preds = %.lr.ph.i107
  %.pr.i108.pr = load i32, ptr %0, align 4, !tbaa !19 ; 3 uses
  %i.bt = icmp sgt i32 %.pr.i108.pr, 1
  br i1 %i.bt, label %.lr.ph.i109, label %mpb_renorm.exit110

.lr.ph.i109:                                      ; preds = %mp_shr.exit, %bb.r
  %i.bu = phi i32 [ %i.bz, %bb.r ], [ %.pr.i108.pr, %mp_shr.exit ] ; 4 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.r, label %mpb_renorm.exit110

bb.r:                                             ; preds = %.lr.ph.i109
  %i.bz = add nsw i32 %i.bu, -1                   ; 3 uses
  store i32 %i.bz, ptr %0, align 4, !tbaa !19
  %i.ca = icmp sgt i32 %i.bu, 2
  br i1 %i.ca, label %.lr.ph.i109, label %mpb_renorm.exit110, !llvm.loop !3

mpb_renorm.exit110:                               ; preds = %bb.r, %.lr.ph.i109, %bb.p, %mp_shr.exit, %.loopexit
  %i.cb = phi i32 [ 0, %bb.p ], [ %.pr.i108.pr, %mp_shr.exit ], [ %i.bn, %.loopexit ], [ %i.bz, %bb.r ], [ %i.bu, %.lr.ph.i109 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mpb_renorm.exit110
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cd = sext i32 %i.cb to i64                   ; 2 uses
  %i.ce = icmp eq i32 %i.cb, 0
  br i1 %i.ce, label %mp_add_ui.exit.thread, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.s, %.lr.ph.i111
  %.01415.i = phi i64 [ %i.cj, %.lr.ph.i111 ], [ 0, %bb.s ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.01415.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0                    ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !19
  %i.cj = add nuw i64 %.01415.i, 1                ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cd
  %or.cond.not.i = select i1 %i.ck, i1 %i.ci, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i111, label %mp_add_ui.exit, !llvm.loop !34

mp_add_ui.exit:                                   ; preds = %.lr.ph.i111
  br i1 %i.ci, label %mp_add_ui.exit.thread, label %bb.t

mp_add_ui.exit.thread:                            ; preds = %bb.s, %mp_add_ui.exit
  %i.cl = add nsw i32 %i.cb, 1
  store i32 %i.cl, ptr %0, align 4, !tbaa !19
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 1, ptr %i.cm, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit110, %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = and i32 %3, 8
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 256, i32 95         ; 10 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !38
  %i.e = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0195.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !38
  %.pr = load i8, ptr %i.f, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.g = phi i8 [ %.pr, %thread-pre-split ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.f, %thread-pre-split ], [ %0, %bb.a ] ; 21 uses
  %.0195 = phi i64 [ %.0195.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.i = icmp eq i8 %i.g, 48
  br i1 %i.i, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17    ; 7 uses
  switch i8 %i.k, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = and i32 %2, -17
  %or.cond = icmp eq i32 %i.l, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.k, 111
  br i1 %i.n, label %.thread331, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.k, 79
  %i.p = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread331

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.q = and i32 %3, 2
  %.not235 = icmp eq i32 %i.q, 0
  br i1 %.not235, label %.thread331, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

.thread:                                          ; preds = %bb.g, %bb.h
  %i.s = phi i1 [ %i.p, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.t = icmp eq i8 %i.k, 98
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.u = icmp eq i8 %i.k, 66
  %or.cond6 = and i1 %i.s, %i.u
  br i1 %or.cond6, label %.thread317, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.s, label %.thread317, label %.thread331

.thread317:                                       ; preds = %bb.l, %bb.m
  %.old389 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old389, 0
  br i1 %.not236.old, label %.thread331, label %bb.n

bb.n:                                             ; preds = %.thread317
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.o:                                             ; preds = %bb.l
  %i.w = icmp sgt i8 %i.k, 47
  %i.x = icmp samesign ult i8 %i.k, 58
  %or.cond9 = and i1 %i.s, %i.x
  %or.cond461 = select i1 %i.w, i1 %or.cond9, i1 false
  br i1 %or.cond461, label %bb.p, label %.thread320

bb.p:                                             ; preds = %bb.o
  %i.y = and i32 %3, 4
  %.not237 = icmp eq i32 %i.y, 0
  br i1 %.not237, label %.thread331, label %.preheader397

.preheader397:                                    ; preds = %bb.p, %.preheader397
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader397 ], [ 1, %bb.p ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.ab = and i8 %i.aa, -8
  %or.cond254 = icmp eq i8 %i.ab, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond254, label %.preheader397, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.preheader397
  %i.ac = and i8 %i.aa, -2
  %switch = icmp eq i8 %i.ac, 56
  br i1 %switch, label %.thread331, label %.thread322

.thread322:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.sink = phi ptr [ %i.m, %bb.f ], [ %i.r, %bb.k ], [ %i.v, %bb.n ], [ %i.j, %.critedge ] ; 3 uses
  %.1206 = phi i32 [ 16, %bb.f ], [ 8, %bb.k ], [ 2, %bb.n ], [ 8, %.critedge ] ; 2 uses
  %.0186 = phi i32 [ %i.d, %bb.f ], [ %i.d, %bb.k ], [ %i.d, %bb.n ], [ 256, %.critedge ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !38
  %i.ad = load i8, ptr %.sink, align 1, !tbaa !17 ; 3 uses
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.af, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread322
  %i.ag = add i8 %i.ad, -65
  %or.cond3.i = icmp ult i8 %i.ag, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = add nsw i32 %i.ae, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.ai = add i8 %i.ad, -97
  %or.cond5.i = icmp ult i8 %i.ai, 26
  %i.aj = add nsw i32 %i.ae, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.aj, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread322, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ah, %bb.r ], [ %i.af, %.thread322 ]
  %.not238 = icmp slt i32 %.0.i, %.1206
  br i1 %.not238, label %.thread331, label %.thread349

bb.t:                                             ; preds = %bb.c
  %5 = and i32 %3, 1
  %.not233 = icmp eq i32 %5, 0
  br i1 %.not233, label %bb.u, label %.thread320

bb.u:                                             ; preds = %bb.t
  %i.ak = call i32 @strstart(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #14
  %.not234 = icmp eq i32 %i.ak, 0
  br i1 %.not234, label %..thread320_crit_edge, label %bb.cr

..thread320_crit_edge:                            ; preds = %bb.u
  %.promoted.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %.thread320

.thread320:                                       ; preds = %..thread320_crit_edge, %bb.t, %bb.o
  %.promoted.pre = phi ptr [ %.promoted.pre.pre, %..thread320_crit_edge ], [ %i.h, %bb.t ], [ %i.h, %bb.o ]
  %i.al = icmp eq i32 %2, 0
  %spec.select391 = select i1 %i.al, i32 10, i32 %2
  br label %.thread331

.thread331:                                       ; preds = %bb.g, %bb.j, %.thread320, %bb.m, %bb.i, %.thread317, %.critedge, %bb.p, %to_digit.exit
  %.promoted = phi ptr [ %i.h, %bb.i ], [ %.promoted.pre, %.thread320 ], [ %.sink, %to_digit.exit ], [ %i.h, %.critedge ], [ %i.h, %bb.p ], [ %i.h, %bb.m ], [ %i.h, %.thread317 ], [ %i.h, %bb.j ], [ %i.h, %bb.g ]
  %.1187329 = phi i32 [ %i.d, %bb.i ], [ %i.d, %.thread320 ], [ %.0186, %to_digit.exit ], [ 256, %.critedge ], [ %i.d, %bb.p ], [ %i.d, %bb.m ], [ %i.d, %.thread317 ], [ %i.d, %bb.j ], [ %i.d, %bb.g ] ; 3 uses
  %i.am = phi i32 [ %2, %bb.i ], [ %spec.select391, %.thread320 ], [ %.1206, %to_digit.exit ], [ 10, %.critedge ], [ 10, %bb.p ], [ %2, %bb.m ], [ 10, %.thread317 ], [ 10, %bb.j ], [ %2, %bb.g ] ; 10 uses
  %i.an = add nsw i32 %i.am, -2
  %i.ao = sext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr @atod_max_digits_table, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.ao
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19
  %i.ax = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.am, i1 true) ; 3 uses
  %i.ay = ashr exact i32 %i.am, %i.ax             ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  %. = select i1 %i.az, i32 %i.ax, i32 0          ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store <2 x i32> <i32 1, i32 0>, ptr %4, align 4, !tbaa !19
  %6 = and i32 %3, 1
  %.not239 = icmp eq i32 %6, 0                    ; 5 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ai, %.thread331
  %i.bb = phi ptr [ %.promoted, %.thread331 ], [ %i.bz, %bb.ai ] ; 8 uses
  %.0175 = phi i32 [ -1, %.thread331 ], [ %.1176, %bb.ai ] ; 5 uses
  %.0172 = phi i32 [ 0, %.thread331 ], [ %i.ca, %bb.ai ] ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 46
  br i1 %i.bd, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.be = icmp ugt ptr %i.bb, %i.h
  br i1 %i.be, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = sext i8 %i.bg to i32                    ; 5 uses
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %or.cond.i271 = icmp ult i32 %i.bi, 10
  br i1 %or.cond.i271, label %to_digit.exit276, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = add nsw i32 %i.bh, -65
  %or.cond3.i272 = icmp ult i32 %i.bj, 26
  br i1 %or.cond3.i272, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = add nsw i32 %i.bh, -55
  br label %to_digit.exit276

bb.aa:                                            ; preds = %bb.y
  %i.bl = add nsw i32 %i.bh, -97
  %or.cond5.i273 = icmp ult i32 %i.bl, 26
  %i.bm = add nsw i32 %i.bh, -87
  %spec.select.i274 = select i1 %or.cond5.i273, i32 %i.bm, i32 36
  br label %to_digit.exit276

to_digit.exit276:                                 ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i275 = phi i32 [ %spec.select.i274, %bb.aa ], [ %i.bk, %bb.z ], [ %i.bi, %bb.x ]
  %7 = icmp slt i32 %.0.i275, %i.am
  %or.cond255 = and i1 %.not239, %7
  br i1 %or.cond255, label %bb.ac, label %bb.ae

bb.ab:                                            ; preds = %bb.w
  br i1 %.not239, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %to_digit.exit276
  %i.bn = icmp sgt i32 %.0175, -1
  br i1 %i.bn, label %.preheader464, label %bb.ad

.preheader464:                                    ; preds = %bb.ah, %bb.ac
  %.ph = phi i8 [ 46, %bb.ac ], [ %i.bx, %bb.ah ]
  %.ph465 = phi ptr [ %i.bb, %bb.ac ], [ %i.by, %bb.ah ]
  %.3.ph = phi i32 [ %.0175, %bb.ac ], [ %.1176, %bb.ah ]
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 3 uses
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !38
  %.pre = load i8, ptr %i.bo, align 1, !tbaa !17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %to_digit.exit276, %bb.v
  %i.bp = phi i8 [ 46, %bb.ab ], [ %.pre, %bb.ad ], [ 46, %to_digit.exit276 ], [ %i.bc, %bb.v ] ; 3 uses
  %i.bq = phi ptr [ %i.bb, %bb.ab ], [ %i.bo, %bb.ad ], [ %i.bb, %to_digit.exit276 ], [ %i.bb, %bb.v ] ; 4 uses
  %.1176 = phi i32 [ %.0175, %bb.ab ], [ %.0172, %bb.ad ], [ %.0175, %to_digit.exit276 ], [ %.0175, %bb.v ] ; 2 uses
  %i.br = sext i8 %i.bp to i32
  %i.bs = icmp eq i32 %.1187329, %i.br
  %i.bt = icmp ugt ptr %i.bq, %i.h
  %or.cond257.a = and i1 %i.bs, %i.bt
  br i1 %or.cond257.a, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = icmp eq i8 %i.bv, 48
  br i1 %i.bw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !38
  %.pre417.a = load i8, ptr %i.bu, align 1, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bx = phi i8 [ %.pre417.a, %bb.ag ], [ %i.bp, %bb.af ], [ %i.bp, %bb.ae ] ; 2 uses
  %i.by = phi ptr [ %i.bu, %bb.ag ], [ %i.bq, %bb.af ], [ %i.bq, %bb.ae ] ; 2 uses
  %.not240 = icmp eq i8 %i.bx, 48
  br i1 %.not240, label %bb.ai, label %.preheader464

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !38
  %i.ca = add nuw nsw i32 %.0172, 1
  br label %bb.v

bb.aj:                                            ; preds = %.preheader464, %bb.bh
  %i.cb = phi i8 [ %.pre419, %bb.bh ], [ %.ph, %.preheader464 ] ; 2 uses
  %i.cc = phi ptr [ %i.dj, %bb.bh ], [ %.ph465, %.preheader464 ] ; 7 uses
  %.0199 = phi i32 [ %.3202, %bb.bh ], [ 0, %.preheader464 ] ; 3 uses
  %.0196 = phi i32 [ %.2198, %bb.bh ], [ 0, %.preheader464 ] ; 3 uses
  %.0192 = phi i32 [ %.2194, %bb.bh ], [ 0, %.preheader464 ] ; 7 uses
  %.0188 = phi i32 [ %.3191, %bb.bh ], [ 0, %.preheader464 ] ; 4 uses
  %.3 = phi i32 [ %.4, %bb.bh ], [ %.3.ph, %.preheader464 ] ; 5 uses
  %.1173 = phi i32 [ %i.dk, %bb.bh ], [ %.0172, %.preheader464 ] ; 3 uses
  %i.cd = icmp eq i8 %i.cb, 46
  br i1 %i.cd, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.ce = icmp ugt ptr %i.cc, %i.h
  br i1 %i.ce, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = sext i8 %i.cg to i32                    ; 5 uses
  %i.ci = add nsw i32 %i.ch, -48                  ; 2 uses
  %or.cond.i277 = icmp ult i32 %i.ci, 10
  br i1 %or.cond.i277, label %to_digit.exit282, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = add nsw i32 %i.ch, -65
  %or.cond3.i278 = icmp ult i32 %i.cj, 26
  br i1 %or.cond3.i278, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ck = add nsw i32 %i.ch, -55
  br label %to_digit.exit282

bb.ao:                                            ; preds = %bb.am
  %i.cl = add nsw i32 %i.ch, -97
  %or.cond5.i279 = icmp ult i32 %i.cl, 26
  %i.cm = add nsw i32 %i.ch, -87
  %spec.select.i280 = select i1 %or.cond5.i279, i32 %i.cm, i32 36
  br label %to_digit.exit282

to_digit.exit282:                                 ; preds = %bb.al, %bb.an, %bb.ao
  %.0.i281 = phi i32 [ %spec.select.i280, %bb.ao ], [ %i.ck, %bb.an ], [ %i.ci, %bb.al ]
  %8 = icmp slt i32 %.0.i281, %i.am
  %or.cond259 = and i1 %.not239, %8
  br i1 %or.cond259, label %bb.aq, label %bb.as

bb.ap:                                            ; preds = %bb.ak
  br i1 %.not239, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap, %to_digit.exit282
  %i.cn = icmp sgt i32 %.3, -1
  br i1 %i.cn, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  store ptr %i.co, ptr %i.a, align 8, !tbaa !38
  %.pre420.a = load i8, ptr %i.co, align 1, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %to_digit.exit282, %bb.aj
  %i.cp = phi i8 [ 46, %bb.ap ], [ %.pre420.a, %bb.ar ], [ 46, %to_digit.exit282 ], [ %i.cb, %bb.aj ]
  %i.cq = phi ptr [ %i.cc, %bb.ap ], [ %i.co, %bb.ar ], [ %i.cc, %to_digit.exit282 ], [ %i.cc, %bb.aj ] ; 4 uses
  %.4 = phi i32 [ %.3, %bb.ap ], [ %.1173, %bb.ar ], [ %.3, %to_digit.exit282 ], [ %.3, %bb.aj ] ; 2 uses
  %i.cr = sext i8 %i.cp to i32                    ; 3 uses
  %i.cs = icmp eq i32 %.1187329, %i.cr
  %i.ct = icmp ugt ptr %i.cq, %i.h
  %or.cond261 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond261, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !17
  %i.cw = sext i8 %i.cv to i32                    ; 5 uses
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %or.cond.i283 = icmp ult i32 %i.cx, 10
  br i1 %or.cond.i283, label %to_digit.exit288, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cy = add nsw i32 %i.cw, -65
  %or.cond3.i284 = icmp ult i32 %i.cy, 26
  br i1 %or.cond3.i284, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cz = add nsw i32 %i.cw, -55
  br label %to_digit.exit288

bb.aw:                                            ; preds = %bb.au
  %i.da = add nsw i32 %i.cw, -97
  %or.cond5.i285 = icmp ult i32 %i.da, 26
  %i.db = add nsw i32 %i.cw, -87
  %spec.select.i286 = select i1 %or.cond5.i285, i32 %i.db, i32 36
  br label %to_digit.exit288

to_digit.exit288:                                 ; preds = %bb.at, %bb.av, %bb.aw
  %.0.i287 = phi i32 [ %spec.select.i286, %bb.aw ], [ %i.cz, %bb.av ], [ %i.cx, %bb.at ]
  %i.dc = icmp slt i32 %.0.i287, %i.am
  br i1 %i.dc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %to_digit.exit288
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !38
  %.pre421 = load i8, ptr %i.cu, align 1, !tbaa !17
  %.pre425 = sext i8 %.pre421 to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %to_digit.exit288, %bb.as
  %.pre-phi426 = phi i32 [ %.pre425, %bb.ax ], [ %i.cr, %to_digit.exit288 ], [ %i.cr, %bb.as ] ; 5 uses
  %i.dd = phi ptr [ %i.cu, %bb.ax ], [ %i.cq, %to_digit.exit288 ], [ %i.cq, %bb.as ] ; 2 uses
  %i.de = add nsw i32 %.pre-phi426, -48           ; 2 uses
  %or.cond.i289 = icmp ult i32 %i.de, 10
  br i1 %or.cond.i289, label %to_digit.exit294, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.df = add nsw i32 %.pre-phi426, -65
  %or.cond3.i290 = icmp ult i32 %i.df, 26
  br i1 %or.cond3.i290, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dg = add nsw i32 %.pre-phi426, -55
  br label %to_digit.exit294

bb.bb:                                            ; preds = %bb.az
  %i.dh = add nsw i32 %.pre-phi426, -97
  %or.cond5.i291 = icmp ult i32 %i.dh, 26
  %i.di = add nsw i32 %.pre-phi426, -87
  %spec.select.i292 = select i1 %or.cond5.i291, i32 %i.di, i32 36
  br label %to_digit.exit294

to_digit.exit294:                                 ; preds = %bb.ay, %bb.ba, %bb.bb
  %.0.i293 = phi i32 [ %spec.select.i292, %bb.bb ], [ %i.dg, %bb.ba ], [ %i.de, %bb.ay ] ; 3 uses
  %.not242 = icmp ult i32 %.0.i293, %i.am
  br i1 %.not242, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %to_digit.exit294
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 3 uses
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !38
  %i.dk = add nuw nsw i32 %.1173, 1
  %i.dl = icmp slt i32 %.0192, %i.ar
  br i1 %i.dl, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.dm = mul i32 %.0199, %i.am
  %i.dn = add i32 %.0.i293, %i.dm                 ; 2 uses
  %i.do = add nsw i32 %.0188, 1                   ; 2 uses
  %i.dp = icmp eq i32 %i.do, %i.au
  br i1 %i.dp, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call fastcc void @mpb_mul1_base(ptr noundef nonnull %4, i32 noundef %i.aw, i32 noundef %i.dn) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1200 = phi i32 [ 0, %bb.be ], [ %i.dn, %bb.bd ]
  %.1189 = phi i32 [ 0, %bb.be ], [ %i.do, %bb.bd ]
  %i.dq = add nsw i32 %.0192, 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.dr = or i32 %.0.i293, %.0196
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.3202 = phi i32 [ %.1200, %bb.bf ], [ %.0199, %bb.bg ]
  %.2198 = phi i32 [ %.0196, %bb.bf ], [ %i.dr, %bb.bg ]
  %.2194 = phi i32 [ %i.dq, %bb.bf ], [ %.0192, %bb.bg ]
  %.3191 = phi i32 [ %.1189, %bb.bf ], [ %.0188, %bb.bg ]
  %.pre419 = load i8, ptr %i.dj, align 1, !tbaa !17
  br label %bb.aj

bb.bi:                                            ; preds = %bb.aq, %to_digit.exit294
  %i.ds = phi ptr [ %i.dd, %to_digit.exit294 ], [ %i.cc, %bb.aq ] ; 9 uses
  %.5.ph = phi i32 [ %.4, %to_digit.exit294 ], [ %.3, %bb.aq ] ; 2 uses
  %.not243 = icmp eq i32 %.0188, 0
  br i1 %.not243, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dt = call fastcc i64 @pow_ui(i32 noundef %i.am, i32 noundef %.0188) #12
  %i.du = trunc i64 %i.dt to i32
  call fastcc void @mpb_mul1_base(ptr noundef nonnull %4, i32 noundef %i.du, i32 noundef %.0199) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.dv = icmp ne i32 %.0192, 0                   ; 2 uses
  %i.dw = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.dw, i32 %.1173, i32 %.5.ph
  %i.dx = add nsw i32 %.0192, %.0172
  %i.dy = sub i32 %i.dx, %spec.select             ; 2 uses
  %i.dz = icmp ne i32 %., 0                       ; 2 uses
  %i.ea = icmp ne i32 %.0196, 0
  %or.cond12 = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond12, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eb = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.ec = or i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ba, align 4, !tbaa !19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not239, label %bb.bn, label %.thread373

bb.bn:                                            ; preds = %bb.bm
  %cond = icmp eq i32 %i.am, 10
  %i.ed = load i8, ptr %i.ds, align 1, !tbaa !17  ; 7 uses
  br i1 %cond, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  switch i8 %i.ed, label %.thread373 [
    i8 101, label %bb.bs
    i8 69, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bn
  %i.ee = icmp eq i8 %i.ed, 64
  br i1 %i.ee, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ef = add nsw i32 %., -1
  %or.cond15 = icmp ult i32 %i.ef, 4
  br i1 %or.cond15, label %bb.br, label %.thread373

bb.br:                                            ; preds = %bb.bq
  switch i8 %i.ed, label %.thread373 [
    i8 112, label %bb.bs
    i8 80, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.bo, %bb.bo, %bb.bp
  %i.eg = phi i8 [ %i.ed, %bb.br ], [ %i.ed, %bb.br ], [ %i.ed, %bb.bo ], [ %i.ed, %bb.bo ], [ 64, %bb.bp ]
  %i.eh = icmp ugt ptr %i.ds, %i.h
  br i1 %i.eh, label %bb.bt, label %.thread373

bb.bt:                                            ; preds = %bb.bs
  %i.ei = and i8 %i.eg, -33
  %narrow = icmp ne i8 %i.ei, 80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 3 uses
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !38
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !17
  switch i8 %i.ek, label %bb.bv [
    i8 43, label %.sink.split
    i8 45, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bt, %bb.bu
  %.not247.ph = phi i1 [ false, %bb.bu ], [ true, %bb.bt ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 2 ; 2 uses
  store ptr %i.el, ptr %i.a, align 8, !tbaa !38
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.bt
  %.promoted405 = phi ptr [ %i.ej, %bb.bt ], [ %i.el, %.sink.split ] ; 2 uses
  %.not247 = phi i1 [ true, %bb.bt ], [ %.not247.ph, %.sink.split ] ; 2 uses
  %i.em = load i8, ptr %.promoted405, align 1, !tbaa !17 ; 2 uses
  %i.en = sext i8 %i.em to i32                    ; 4 uses
  %i.eo = add nsw i32 %i.en, -48                  ; 2 uses
  %or.cond.i295 = icmp ult i32 %i.eo, 10
  br i1 %or.cond.i295, label %.preheader.preheader, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ep = add nsw i32 %i.en, -65
  %or.cond3.i296 = icmp ult i32 %i.ep, 26
  br i1 %or.cond3.i296, label %.thread349, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eq = add nsw i32 %i.en, -123
  %or.cond5.i297 = icmp ult i32 %i.eq, -26
  %i.er = add nsw i32 %i.en, -87
  %i.es = icmp sgt i8 %i.em, 96
  %or.cond463 = or i1 %or.cond5.i297, %i.es
  br i1 %or.cond463, label %.thread349, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bx, %bb.bv
  %.0179.ph = phi i32 [ %i.eo, %bb.bv ], [ %i.er, %bb.bx ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %to_digit.exit312.thread364
  %.pn407 = phi ptr [ %.pn406, %to_digit.exit312.thread364 ], [ %.promoted405, %.preheader.preheader ] ; 2 uses
  %.0179 = phi i32 [ %.1180, %to_digit.exit312.thread364 ], [ %.0179.ph, %.preheader.preheader ] ; 5 uses
  %.0167 = phi i1 [ %or.cond268, %to_digit.exit312.thread364 ], [ false, %.preheader.preheader ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn407, i64 1 ; 5 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !38
  %i.et = load i8, ptr %storemerge, align 1, !tbaa !17 ; 4 uses
  %i.eu = sext i8 %i.et to i32                    ; 4 uses
  %i.ev = icmp eq i32 %.1187329, %i.eu
  br i1 %i.ev, label %bb.by, label %to_digit.exit306.thread

bb.by:                                            ; preds = %.preheader
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn407, i64 2 ; 4 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !17  ; 2 uses
  %i.ey = sext i8 %i.ex to i32                    ; 3 uses
  %i.ez = add nsw i32 %i.ey, -48
  %or.cond.i301 = icmp ult i32 %i.ez, 10
  br i1 %or.cond.i301, label %to_digit.exit306.thread360, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fa = add nsw i32 %i.ey, -65
  %or.cond3.i302 = icmp ult i32 %i.fa, 26
  br i1 %or.cond3.i302, label %to_digit.exit306.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fb = add nsw i32 %i.ey, -97
  %or.cond5.i303 = icmp ult i32 %i.fb, 26
  %i.fc = icmp slt i8 %i.ex, 97
  %or.cond393 = and i1 %i.fc, %or.cond5.i303
  br i1 %or.cond393, label %to_digit.exit306.thread360, label %to_digit.exit306.thread

to_digit.exit306.thread360:                       ; preds = %bb.ca, %bb.by
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !38
  %.pre422 = load i8, ptr %i.ew, align 1, !tbaa !17 ; 2 uses
  %.pre424 = sext i8 %.pre422 to i32
  br label %to_digit.exit306.thread

to_digit.exit306.thread:                          ; preds = %bb.bz, %bb.ca, %to_digit.exit306.thread360, %.preheader
  %.pre-phi = phi i32 [ %i.eu, %bb.bz ], [ %i.eu, %bb.ca ], [ %.pre424, %to_digit.exit306.thread360 ], [ %i.eu, %.preheader ] ; 4 uses
  %i.fd = phi i8 [ %i.et, %bb.bz ], [ %i.et, %bb.ca ], [ %.pre422, %to_digit.exit306.thread360 ], [ %i.et, %.preheader ]
  %.pn406 = phi ptr [ %storemerge, %bb.bz ], [ %storemerge, %bb.ca ], [ %i.ew, %to_digit.exit306.thread360 ], [ %storemerge, %.preheader ] ; 2 uses
  %i.fe = add nsw i32 %.pre-phi, -48              ; 2 uses
  %or.cond.i307 = icmp ult i32 %i.fe, 10
  br i1 %or.cond.i307, label %to_digit.exit312.thread364, label %bb.cb

bb.cb:                                            ; preds = %to_digit.exit306.thread
  %i.ff = add nsw i32 %.pre-phi, -65
  %or.cond3.i308 = icmp ult i32 %i.ff, 26
  br i1 %or.cond3.i308, label %to_digit.exit312.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fg = add nsw i32 %.pre-phi, -123
  %or.cond5.i309 = icmp ult i32 %i.fg, -26
  %i.fh = add nsw i32 %.pre-phi, -87
  %i.fi = icmp sgt i8 %i.fd, 96
  %or.cond395 = or i1 %i.fi, %or.cond5.i309
  br i1 %or.cond395, label %to_digit.exit312.thread, label %to_digit.exit312.thread364

to_digit.exit312.thread364:                       ; preds = %bb.cc, %to_digit.exit306.thread
  %.0.i311366 = phi i32 [ %i.fh, %bb.cc ], [ %i.fe, %to_digit.exit306.thread ]
  %i.fj = icmp sgt i32 %.0179, 214748363
  %or.cond268 = select i1 %.0167, i1 true, i1 %i.fj, !prof !39 ; 2 uses
  %i.fk = mul nsw i32 %.0179, 10
  %i.fl = add nsw i32 %.0.i311366, %i.fk
  %.1180 = select i1 %or.cond268, i32 %.0179, i32 %i.fl, !prof !39
  br label %.preheader

to_digit.exit312.thread:                          ; preds = %bb.cb, %bb.cc
  %i.fm = sub nsw i32 0, %.0179
  %spec.select263.a = select i1 %.not247, i32 %.0179, i32 %i.fm
  %or.cond18 = and i1 %i.dv, %.0167
  %.264 = select i1 %.not247, i64 9218868437227405312, i64 0
  br i1 %or.cond18, label %bb.cr, label %.thread373

.thread373:                                       ; preds = %to_digit.exit312.thread, %bb.bo, %bb.br, %bb.bs, %bb.bq, %bb.bm
  %i.fn = phi ptr [ %i.ds, %bb.bm ], [ %i.ds, %bb.bo ], [ %i.ds, %bb.bs ], [ %i.ds, %bb.br ], [ %i.ds, %bb.bq ], [ %.pn406, %to_digit.exit312.thread ]
  %.4183 = phi i32 [ 0, %bb.bm ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ], [ %spec.select263.a, %to_digit.exit312.thread ] ; 2 uses
  %.0170 = phi i1 [ true, %bb.bm ], [ true, %bb.bo ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ %narrow, %to_digit.exit312.thread ]
  %i.fo = icmp eq ptr %i.fn, %i.h
  br i1 %i.fo, label %.thread349, label %bb.cd

bb.cd:                                            ; preds = %.thread373
  br i1 %i.dv, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.dz, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.fp = select i1 %.0170, i32 %., i32 1
  %spec.select266 = mul nsw i32 %i.fp, %.4183
  %i.fq = mul nsw i32 %i.dy, %.
  %i.fr = sub nsw i32 %spec.select266, %i.fq      ; 2 uses
  %i.fs = mul nsw i32 %.0192, %.
  %i.ft = add nsw i32 %i.fr, %i.fs                ; 2 uses
  %i.fu = or disjoint i32 %., 1024
  %.not252 = icmp slt i32 %i.ft, %i.fu
  br i1 %.not252, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  %i.fv = icmp slt i32 %i.ft, -1074
  br i1 %i.fv, label %bb.cr, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fw = sub nsw i32 0, %i.fr
  %i.fx = call fastcc i64 @round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.fw) #12
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ce
  %i.fy = sub nsw i32 %.4183, %i.dy               ; 2 uses
  %i.fz = add nsw i32 %i.fy, %.0192               ; 2 uses
  %i.ga = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.ao
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !41
  %i.gc = sext i16 %i.gb to i32
  %.not249.not = icmp sgt i32 %i.fz, %i.gc
  br i1 %.not249.not, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gd = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.ao
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !41
  %i.gf = sext i16 %i.ge to i32
  %.not250 = icmp sgt i32 %i.fz, %i.gf
  br i1 %.not250, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.gg = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.ay, i32 noundef %i.ax, i32 noundef %i.fy) #12
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.0166 = phi i64 [ %i.fx, %bb.ch ], [ %i.gg, %bb.ck ] ; 3 uses
  %i.gh = icmp eq i64 %.0166, 0
  br i1 %i.gh, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !19  ; 5 uses
  %i.gj = icmp sgt i32 %i.gi, 1024
  br i1 %i.gj, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gk = icmp slt i32 %i.gi, -1073
  br i1 %i.gk, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gl = icmp slt i32 %i.gi, -1021
  br i1 %i.gl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gm = sub nuw nsw i32 -1021, %i.gi
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 %.0166, %i.gn
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.gp = add nsw i32 %i.gi, 1022
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 52
  %i.gs = and i64 %.0166, 4503599627370495
  %i.gt = or disjoint i64 %i.gr, %i.gs
  br label %bb.cr

bb.cr:                                            ; preds = %to_digit.exit312.thread, %bb.cn, %bb.u, %bb.cf, %bb.ci, %bb.cm, %bb.cg, %bb.cj, %bb.cl, %bb.cd, %bb.cp, %bb.cq
  %.2165 = phi i64 [ 0, %bb.cn ], [ 0, %bb.cg ], [ 0, %bb.cd ], [ 9218868437227405312, %bb.u ], [ %i.go, %bb.cp ], [ %i.gt, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cj ], [ 9218868437227405312, %bb.cm ], [ 9218868437227405312, %bb.ci ], [ 9218868437227405312, %bb.cf ], [ %.264, %to_digit.exit312.thread ]
  %i.gu = or i64 %.2165, %.0195
  %i.gv = bitcast i64 %i.gu to double
  br label %.thread349

.thread349:                                       ; preds = %bb.bw, %bb.bx, %to_digit.exit, %.thread373, %bb.cr
  %.0171 = phi double [ %i.gv, %bb.cr ], [ +qnan, %.thread373 ], [ +qnan, %bb.bx ], [ +qnan, %to_digit.exit ], [ +qnan, %bb.bw ]
  %.not253 = icmp eq ptr %1, null
  br i1 %.not253, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.thread349
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %i.gw, ptr %1, align 8, !tbaa !38
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret double %.0171
}

; Function Attrs: optsize
declare i32 @strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_mul1_base(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.a, align 4, !tbaa !19
  br label %mpb_renorm.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !19     ; 6 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.i = add nuw i32 %i.g, 1
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.k, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.e
  store i32 %2, ptr %i.a, align 4, !tbaa !19
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %mp_mul1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = zext i32 %1 to i64
  %i.m = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.01112.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.t, %bb.g ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.l
  %i.r = add nuw i64 %i.q, %.01112.i              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.n, align 4, !tbaa !19
  %i.t = lshr i64 %i.r, 32                        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.u = trunc nuw i64 %i.t to i32
  br label %mp_mul1.exit

mp_mul1.exit:                                     ; preds = %bb.f, %._crit_edge.loopexit.i
  %.011.lcssa.i = phi i32 [ %2, %bb.f ], [ %i.u, %._crit_edge.loopexit.i ]
  %i.v = sext i32 %i.g to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.v
  store i32 %.011.lcssa.i, ptr %i.w, align 4, !tbaa !19
  %.pre = load i32, ptr %0, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %mp_mul1.exit, %._crit_edge
  %i.x = phi i32 [ %.pre, %mp_mul1.exit ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  store i32 %i.y, ptr %0, align 4, !tbaa !19
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i23, label %mpb_renorm.exit

.lr.ph.i23:                                       ; preds = %bb.h, %bb.i
  %i.aa = phi i32 [ %i.af, %bb.i ], [ %i.y, %bb.h ] ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %mpb_renorm.exit

bb.i:                                             ; preds = %.lr.ph.i23
  %i.af = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !19
  %i.ag = icmp sgt i32 %i.aa, 2
  br i1 %i.ag, label %.lr.ph.i23, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %bb.i, %.lr.ph.i23, %bb.h, %bb.c
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
end_hunk_1
