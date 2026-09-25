Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/srtp?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_srtp_decrypt:bb.a
  %i.r = sub nsw i32 %i.d, %i.l                   ; 7 uses
  tail call void @av_hmac_update(ptr noundef %i.q, ptr noundef nonnull %1, i32 noundef %i.r) #8
  br i1 %i.j, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !16
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)  ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.z, %bb.e ], [ %i.v, %bb.d ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23 ; 3 uses
  %i.ad = icmp slt i32 %i.aa, 32768
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = sub nsw i32 %i.v, %i.aa
  %i.af = icmp sgt i32 %i.ae, 32768
  %i.ag = sext i1 %i.af to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.aa, -32768
  %i.ai = icmp samesign ugt i32 %i.ah, %i.v
  %i.aj = zext i1 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi i32 [ %i.ag, %bb.g ], [ %i.aj, %bb.h ] ; 3 uses
  %.0 = add i32 %.pn, %i.ac                       ; 2 uses
  %i.ak = icmp eq i32 %.pn, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.v)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %.pn, 1                     ; 2 uses
  %spec.select143 = select i1 %i.am, i32 %i.v, i32 %i.aa
  %spec.select144 = select i1 %i.am, i32 %.0, i32 %i.ac
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0114 = phi i32 [ %i.al, %bb.j ], [ %spec.select143, %bb.k ]
  %.0111 = phi i32 [ %i.ac, %bb.j ], [ %spec.select144, %bb.k ] ; 2 uses
  %i.an = zext i16 %i.u to i64
  %i.ao = zext i32 %.0 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = or disjoint i64 %i.ap, %i.an
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %.0111)
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !16
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !14
  call void @av_hmac_update(ptr noundef %i.as, ptr noundef nonnull %i.c, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.1115 = phi i32 [ undef, %bb.c ], [ %.0114, %bb.l ]
  %.1112 = phi i32 [ undef, %bb.c ], [ %.0111, %bb.l ]
  %.0109 = phi i64 [ undef, %bb.c ], [ %i.aq, %bb.l ] ; 2 uses
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.au = call i32 @av_hmac_final(ptr noundef %i.at, ptr noundef nonnull %i.b, i32 noundef 20) #8 ; 0 uses
  %i.av = zext nneg i32 %i.d to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = sext i32 %i.l to i64                    ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.az, i64 %i.ax)
  %.not136 = icmp eq i32 %bcmp, 0
  br i1 %.not136, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.6) #8
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  store i32 %i.r, ptr %2, align 4, !tbaa !21
  %i.ba = icmp slt i32 %i.r, 12
  br i1 %i.ba, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.j, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = zext nneg i32 %i.r to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !16
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)     ; 2 uses
  %i.bg = add nsw i32 %i.r, -4
  store i32 %i.bg, ptr %2, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !16
  %i.bj = call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = and i32 %i.bf, 2147483647
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = add nsw i32 %i.r, -12
  %.not138 = icmp slt i32 %i.bf, 0
  br i1 %.not138, label %bb.w, label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 1, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.1115, ptr %i.bp, align 4, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.1112, ptr %i.bq, align 4, !tbaa !23
  %i.br = load i8, ptr %1, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !16
  %i.bv = call i32 @llvm.bswap.i32(i32 %i.bu)     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bx = add nsw i32 %i.r, -12
  %i.by = shl nuw nsw i32 %i.bs, 2
  %i.bz = and i32 %i.by, 60                       ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ca ; 3 uses
  %i.cc = sub nsw i32 %i.bx, %i.bz                ; 5 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = and i32 %i.bs, 16
  %.not137 = icmp eq i32 %i.ce, 0
  br i1 %.not137, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp samesign ult i32 %i.cc, 4
  br i1 %i.cf, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !16
  %i.ci = call i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 2
  %i.cl = add nuw nsw i32 %i.ck, 4                ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cc, %i.cl
  br i1 %i.cm, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = sub nuw nsw i32 %i.cc, %i.cl
  %i.co = zext nneg i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q
  %.v140 = phi i64 [ 70, %bb.q ], [ 54, %bb.s ], [ 54, %bb.v ]
  %.v139 = phi i64 [ 100, %bb.q ], [ 86, %bb.s ], [ 86, %bb.v ]
  %.2123 = phi ptr [ %i.bm, %bb.q ], [ %i.cb, %bb.s ], [ %i.cp, %bb.v ]
  %.2 = phi i32 [ %i.bn, %bb.q ], [ %i.cc, %bb.s ], [ %i.cn, %bb.v ]
  %.0113 = phi i32 [ %i.bj, %bb.q ], [ %i.bv, %bb.s ], [ %i.bv, %bb.v ]
  %.1110 = phi i64 [ %i.bl, %bb.q ], [ %.0109, %bb.s ], [ %.0109, %bb.v ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.v139
  call fastcc void @create_iv(ptr noundef %i.a, ptr noundef nonnull %i.cq, i64 noundef %.1110, i32 noundef %.0113)
  %i.cr = load ptr, ptr %0, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.v140
  %i.ct = call i32 @av_aes_init(ptr noundef %i.cr, ptr noundef nonnull %i.cs, i32 noundef 128, i32 noundef 0) #8 ; 0 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !15
  call fastcc void @encrypt_counter(ptr noundef %i.cu, ptr noundef %i.a, ptr noundef nonnull %.2123, i32 noundef %.2)
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.r, %bb.t, %bb.o, %bb.b, %bb.a, %bb.q, %bb.w, %bb.n
  %.2120 = phi i32 [ -1094995529, %bb.o ], [ -1094995529, %bb.a ], [ -1094995529, %bb.n ], [ -1094995529, %bb.b ], [ 0, %bb.w ], [ 0, %bb.q ], [ -1094995529, %bb.t ], [ -1094995529, %bb.r ], [ -1094995529, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_hmac_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_hmac_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_hmac_final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @create_iv(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 {
.preheader.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = tail call i32 @llvm.bswap.i32(i32 %3)    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.a, ptr %i.b, align 1, !tbaa !16
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %2) ; 8 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.c to i8
  %.sroa.4.0.extract.shift = lshr i64 %i.c, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %i.c, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.c, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %i.c, 32
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.c, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i64 %i.c, 48
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.10.0.extract.shift = lshr i64 %i.c, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.e = lshr i32 %i.a, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = xor i8 %i.f, %.sroa.0.0.extract.trunc    ; 2 uses
  store i8 %i.g, ptr %i.d, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.j = lshr i32 %i.a, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = xor i8 %i.k, %.sroa.4.0.extract.trunc    ; 2 uses
  store i8 %i.l, ptr %i.i, align 1, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.extract.trunc, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.extract.trunc, ptr %i.p, align 1, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.7.0.extract.trunc, ptr %i.q, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.8.0.extract.trunc, ptr %4, align 1, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.9.0.extract.trunc, ptr %i.s, align 1, !tbaa !16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.10.0.extract.trunc, ptr %6, align 1, !tbaa !16
  %i.t = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.t, ptr %0, align 1, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  store i8 %i.v, ptr %i.h, align 1, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  store i8 %i.x, ptr %i.m, align 1, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  store i8 %i.z, ptr %i.o, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = trunc i32 %i.a to i8
  %i.ad = xor i8 %i.ab, %i.ac
  store i8 %i.ad, ptr %i.b, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = lshr i32 %i.a, 8
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = xor i8 %i.af, %i.ah
  store i8 %i.ai, ptr %i.r, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = xor i8 %i.g, %i.ak
  store i8 %i.al, ptr %i.d, align 1, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = xor i8 %i.l, %i.an
  store i8 %i.ao, ptr %5, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = xor i8 %i.aq, %.sroa.5.0.extract.trunc
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aw = xor i8 %i.au, %.sroa.6.0.extract.trunc
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ba = xor i8 %i.ay, %.sroa.7.0.extract.trunc
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.be = xor i8 %i.bc, %.sroa.8.0.extract.trunc
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = xor i8 %i.bg, %.sroa.9.0.extract.trunc
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bm = xor i8 %i.bk, %.sroa.10.0.extract.trunc
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encrypt_counter(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 -262140, 2147483640) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.d = zext nneg i32 %3 to i64                  ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph, %.loopexit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.lcssa, %.loopexit ] ; 7 uses
  %.01519 = phi i16 [ 0, %.lr.ph ], [ %i.ac, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = call i16 @llvm.bswap.i16(i16 %.01519)
  store i16 %i.e, ptr %i.c, align 1, !tbaa !16
  call void @av_aes_crypt(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 1, ptr noundef null, i32 noundef 0) #8
  %i.f = add i64 %.020, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.f, i64 %i.d)
  %i.g = xor i64 %.020, -1
  %i.h = add i64 %smax, %i.g                      ; 3 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.h, i64 15)
  %i.i = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27.not = icmp ugt i64 %i.h, 14
  br i1 %min.iters.check27.not, label %vector.ph, label %vec.epilog.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.i, 16                       ; 4 uses
  %i.j = add i64 %.020, %n.vec                    ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !16
  %i.k = getelementptr inbounds i8, ptr %2, i64 %.020 ; 2 uses
  %wide.load28 = load <16 x i8>, ptr %i.k, align 1, !tbaa !16
  %i.l = xor <16 x i8> %wide.load28, %wide.load
  store <16 x i8> %i.l, ptr %i.k, align 1, !tbaa !16
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.m = and i64 %i.i, 12
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.i, 28                     ; 4 uses
  %i.n = add i64 %.020, %n.vec29                  ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %.020
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load30 = load <4 x i8>, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr i8, ptr %i.o, i64 %index   ; 2 uses
  %wide.load31 = load <4 x i8>, ptr %i.q, align 1, !tbaa !16
  %i.r = xor <4 x i8> %wide.load31, %wide.load30
  store <4 x i8> %i.r, ptr %i.q, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec29
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.i, %n.vec29
  br i1 %cmp.n32, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv21.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ %.020, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %vec.epilog.scalar.ph ], [ %indvars.iv21.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv21
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = getelementptr inbounds i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = xor i8 %i.w, %i.u
  store i8 %i.x, ptr %i.v, align 1, !tbaa !16
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.y = icmp samesign ult i64 %indvars.iv21, 15
  %i.z = icmp slt i64 %indvars.iv.next, %i.d
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next.lcssa = phi i64 [ %i.n, %vec.epilog.middle.block ], [ %i.j, %vector.ph ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ab = trunc nsw i64 %indvars.iv.next.lcssa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ac = add i16 %.01519, 1
  %i.ad = icmp sgt i32 %3, %i.ab
  br i1 %i.ad, label %iter.check, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ff_srtp_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 9 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.e = icmp slt i32 %2, 8
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.fr118 = freeze i8 %i.g                        ; 2 uses
  %i.h = and i8 %.fr118, -4
  %or.cond = icmp eq i8 %i.h, -64
  br i1 %or.cond, label %.thread115, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %.fr118, 56
  %spec.select = icmp ult i8 %i.i, 11
  br i1 %spec.select, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 2 uses
  %i.l = add nsw i32 %i.k, 4
  %i.m = add nsw i32 %i.l, %2
  %i.n = icmp sgt i32 %i.m, %4
  br i1 %i.n, label %.critedge, label %.thread116

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 3 uses
  %i.q = add nsw i32 %i.p, %2
  %i.r = icmp sgt i32 %i.q, %4
  br i1 %i.r, label %.critedge, label %bb.e

.thread115:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21   ; 2 uses
  %i.u = add nuw i32 %2, 4
  %i.v = add i32 %i.u, %i.t
  %i.w = icmp sgt i32 %i.v, %4
  br i1 %i.w, label %.critedge, label %.thread116

.thread116:                                       ; preds = %bb.d, %.thread115
  %i.x = phi i32 [ %i.t, %.thread115 ], [ %i.k, %bb.d ]
  %i.y = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %1, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !43
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = add nsw i32 %2, -8
  br label %bb.l

bb.e:                                             ; preds = %.thread
  %i.ah = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %1, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !16
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.aj) ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = icmp samesign ult i32 %2, 12
  br i1 %i.am, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = icmp sgt i32 %i.aq, %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  br i1 %i.ar, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.av = phi i32 [ %i.au, %bb.g ], [ %i.at, %bb.f ]
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !22
  %i.aw = zext i16 %i.ak to i64
  %i.ax = zext i32 %i.av to i64
  %i.ay = shl nuw nsw i64 %i.ax, 16
  %i.az = or disjoint i64 %i.ay, %i.aw            ; 2 uses
  %i.ba = load i8, ptr %3, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bd = add nsw i32 %2, -12
  %i.be = shl nuw nsw i32 %i.bb, 2
  %i.bf = and i32 %i.be, 60                       ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg ; 3 uses
  %i.bi = sub nsw i32 %i.bd, %i.bf                ; 5 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bk = and i32 %i.bb, 16
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp samesign ult i32 %i.bi, 4
  br i1 %i.bl, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !16
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 2
  %i.br = add nuw nsw i32 %i.bq, 4                ; 3 uses
  %i.bs = icmp samesign ult i32 %i.bi, %i.br
  br i1 %i.bs, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = sub nuw nsw i32 %i.bi, %i.br
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bu
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %.thread116
  %i.bw = phi i32 [ %i.x, %.thread116 ], [ %i.p, %bb.h ], [ %i.p, %bb.k ] ; 2 uses
  %i.bx = phi i1 [ true, %.thread116 ], [ false, %bb.h ], [ false, %bb.k ] ; 2 uses
  %.v107 = phi i64 [ 70, %.thread116 ], [ 54, %bb.h ], [ 54, %bb.k ]
  %.v = phi i64 [ 100, %.thread116 ], [ 86, %bb.h ], [ 86, %bb.k ]
  %.2100 = phi i32 [ %i.ag, %.thread116 ], [ %i.bi, %bb.h ], [ %i.bt, %bb.k ] ; 6 uses
  %.195 = phi i64 [ %i.ae, %.thread116 ], [ %i.az, %bb.h ], [ %i.az, %bb.k ] ; 2 uses
  %.193 = phi i32 [ %i.aa, %.thread116 ], [ %i.ao, %bb.h ], [ %i.ao, %bb.k ] ; 4 uses
  %.2 = phi ptr [ %i.af, %.thread116 ], [ %i.bh, %bb.h ], [ %i.bv, %bb.k ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ca = tail call noundef i64 @llvm.bswap.i64(i64 %.195) ; 5 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ca to i8
  %.sroa.4.0.extract.shift.i = lshr i64 %i.ca, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  %.sroa.5.0.extract.shift.i = lshr i64 %i.ca, 16
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i8
  %.sroa.6.0.extract.shift.i = lshr i64 %i.ca, 24
  %.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i to i8
  %5 = insertelement <4 x i64> poison, i64 %i.ca, i64 0
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i64> %6, <i64 32, i64 40, i64 48, i64 56>
  %8 = trunc <4 x i64> %7 to <4 x i8>
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.cc = lshr i32 %.193, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = xor i8 %i.cd, %.sroa.0.0.extract.trunc.i
  %i.cf = lshr i32 %.193, 24
  %i.cg = trunc nuw i32 %i.cf to i8
  %9 = xor i8 %i.cg, %.sroa.4.0.extract.trunc.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.ci = load <4 x i8>, ptr %i.by, align 1, !tbaa !16
  store <4 x i8> %i.ci, ptr %i.b, align 16, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = trunc i32 %.193 to i8
  %i.cm = xor i8 %i.ck, %i.cl
  store i8 %i.cm, ptr %i.bz, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cp = lshr i32 %.193, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = xor i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.ch, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.ct = load <8 x i8>, ptr %i.cs, align 1, !tbaa !16
  %i.cu = insertelement <8 x i8> poison, i8 %i.ce, i64 0
  %10 = insertelement <8 x i8> %i.cu, i8 %9, i64 1
  %11 = insertelement <8 x i8> %10, i8 %.sroa.5.0.extract.trunc.i, i64 2
  %i.cv = insertelement <8 x i8> %11, i8 %.sroa.6.0.extract.trunc.i, i64 3
  %12 = shufflevector <4 x i8> %8, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i8> %i.cv, <8 x i8> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cw = xor <8 x i8> %i.ct, %13
  store <8 x i8> %i.cw, ptr %i.cb, align 2, !tbaa !16
  %i.cx = load ptr, ptr %0, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.v107
  %i.cz = tail call i32 @av_aes_init(ptr noundef %i.cx, ptr noundef nonnull %i.cy, i32 noundef 128, i32 noundef 0) #8 ; 0 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !15
  %.not122 = icmp eq i32 %.2100, 0
  br i1 %.not122, label %encrypt_counter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.dc = zext i32 %.2100 to i64                  ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.lcssa, %.loopexit ] ; 7 uses
  %.01519.i = phi i16 [ 0, %.lr.ph.i ], [ %i.eb, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.dd = call i16 @llvm.bswap.i16(i16 %.01519.i)
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !16
  call void @av_aes_crypt(ptr noundef %i.da, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef null, i32 noundef 0) #8
  %i.de = add i64 %.020.i, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.de, i64 %i.dc)
  %i.df = xor i64 %.020.i, -1
  %i.dg = add i64 %smax, %i.df                    ; 3 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.dg, i64 15)
  %i.dh = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.dg, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123.not = icmp ugt i64 %i.dg, 14
  br i1 %min.iters.check123.not, label %vector.ph, label %vec.epilog.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.dh, 16                      ; 4 uses
  %i.di = add i64 %.020.i, %n.vec                 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !16
  %i.dj = getelementptr inbounds i8, ptr %.2, i64 %.020.i ; 2 uses
  %wide.load124 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !16
  %i.dk = xor <16 x i8> %wide.load124, %wide.load
  store <16 x i8> %i.dk, ptr %i.dj, align 1, !tbaa !16
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.dl = and i64 %i.dh, 12
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %i.dh, 28                   ; 4 uses
  %i.dm = add i64 %.020.i, %n.vec125              ; 2 uses
  %i.dn = getelementptr i8, ptr %.2, i64 %.020.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load126 = load <4 x i8>, ptr %i.do, align 4, !tbaa !16
  %i.dp = getelementptr i8, ptr %i.dn, i64 %index ; 2 uses
  %wide.load127 = load <4 x i8>, ptr %i.dp, align 1, !tbaa !16
  %i.dq = xor <4 x i8> %wide.load127, %wide.load126
  store <4 x i8> %i.dq, ptr %i.dp, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec125
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.dh, %n.vec125
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec125, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ %.020.i, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %vec.epilog.scalar.ph ], [ %indvars.iv21.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv21.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = getelementptr inbounds i8, ptr %.2, i64 %indvars.iv.i ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dw = xor i8 %i.dv, %i.dt
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !16
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dx = icmp samesign ult i64 %indvars.iv21.i, 15
  %i.dy = icmp slt i64 %indvars.iv.next.i, %i.dc
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next.i.lcssa = phi i64 [ %i.dm, %vec.epilog.middle.block ], [ %i.di, %vector.ph ], [ %indvars.iv.next.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ea = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.eb = add i16 %.01519.i, 1
  %i.ec = icmp sgt i32 %.2100, %i.ea
  br i1 %i.ec, label %iter.check, label %encrypt_counter.exit, !llvm.loop !0

encrypt_counter.exit:                             ; preds = %.loopexit, %bb.l
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %encrypt_counter.exit
  %i.ed = trunc i64 %.195 to i32
  %i.ee = or i32 %i.ed, -2147483648
  %i.ef = call i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = zext nneg i32 %.2100 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.2, i64 %i.eg
  store i32 %i.ef, ptr %i.eh, align 1, !tbaa !16
  %i.ei = add nuw nsw i32 %.2100, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %encrypt_counter.exit
  %.v108 = phi i64 [ 134, %bb.m ], [ 114, %encrypt_counter.exit ]
  %.3 = phi i32 [ %i.ei, %bb.m ], [ %.2100, %encrypt_counter.exit ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %.v108
  call void @av_hmac_init(ptr noundef %i.ek, ptr noundef nonnull %i.el, i32 noundef 20) #8
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !14
  %i.en = sext i32 %.3 to i64
  %i.eo = getelementptr inbounds i8, ptr %.2, i64 %i.en ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  call void @av_hmac_update(ptr noundef %i.em, ptr noundef %3, i32 noundef %i.es) #8
  br i1 %i.bx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23
  %i.ev = call i32 @llvm.bswap.i32(i32 %i.eu)
  store i32 %i.ev, ptr %i.d, align 4, !tbaa !16
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !14
  call void @av_hmac_update(ptr noundef %i.ew, ptr noundef nonnull %i.d, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !14
  %i.ey = call i32 @av_hmac_final(ptr noundef %i.ex, ptr noundef nonnull %i.c, i32 noundef 20) #8 ; 0 uses
  %i.ez = sext i32 %i.bw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 16 %i.c, i64 %i.ez, i1 false)
  %i.fa = add nsw i32 %.3, %i.bw
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %.2, i64 %i.fb
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fd, %i.eq
  %i.ff = trunc i64 %i.fe to i32
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.thread115, %bb.j, %bb.e, %._crit_edge, %bb.i, %bb.d, %bb.a, %bb.p
  %.197 = phi i32 [ 0, %bb.d ], [ -1094995529, %bb.a ], [ %i.ff, %bb.p ], [ -1094995529, %bb.i ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.e ], [ -1094995529, %bb.j ], [ 0, %.thread115 ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.197
}

declare void @av_aes_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

end_hunk_0
