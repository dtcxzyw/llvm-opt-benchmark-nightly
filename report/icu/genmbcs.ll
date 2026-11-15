Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia:bb.a
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !39
  %i.hq = call i32 @ucm_findFallback(ptr noundef nonnull %i.hn, i32 noundef %i.hp, i32 noundef %i.gb) ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, -1
  br i1 %i.hr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hs = zext nneg i32 %i.hq to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 %3, ptr %i.hu, align 4, !tbaa !101
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ac:                                            ; preds = %bb.aa
  %i.hv = load i32, ptr %i.ho, align 8, !tbaa !39 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 8191
  br i1 %i.hw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.hy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.17, i32 noundef range(i32 -2147483648, 65536) %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ae:                                            ; preds = %bb.ac
  %i.hz = sext i32 %i.hv to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hz ; 2 uses
  store i32 %i.gb, ptr %i.ia, align 8, !tbaa !102
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %3, ptr %i.ib, align 4, !tbaa !101
  %i.ic = add nsw i32 %i.hv, 1
  store i32 %i.ic, ptr %i.ho, align 8, !tbaa !39
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.af:                                            ; preds = %bb.y
  %i.id = trunc i32 %3 to i16
  %i.ie = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.ge
  store i16 %i.id, ptr %i.if, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ag:                                            ; preds = %bb.f
  %i.ig = and i32 %.lcssa190, 65535
  %i.ih = add i32 %i.ig, %.0155.lcssa             ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 65584 ; 4 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !21 ; 5 uses
  %i.ik = zext i32 %i.ih to i64                   ; 4 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.ik ; 3 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !32 ; 4 uses
  %i.in = zext i16 %i.im to i32                   ; 2 uses
  %i.io = icmp ult i16 %i.im, -2
  br i1 %i.io, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.ip = icmp ult i16 %i.im, -10240
  br i1 %i.ip, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iq = icmp samesign ult i16 %i.im, -8192
  br i1 %i.iq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ir = shl nuw nsw i32 %i.in, 10
  %i.is = and i32 %i.ir, 1047552
  %i.it = add nuw nsw i32 %i.is, 65536
  %i.iu = add i32 %i.ih, 1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !32
  %i.iy = and i16 %i.ix, 1023
  %i.iz = zext nneg i16 %i.iy to i32
  %i.ja = or disjoint i32 %i.it, %i.iz
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jb = add i32 %i.ih, 1
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !32
  %i.jf = zext i16 %i.je to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0 = phi i32 [ %i.jf, %bb.ak ], [ %i.ja, %bb.aj ], [ %i.in, %bb.ah ] ; 2 uses
  %i.jg = icmp slt i8 %4, 0
  br i1 %i.jg, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.jh = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not = icmp eq i8 %i.jh, 0
  br i1 %.not, label %.thread188, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ji = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.jj = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.jk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ji, ptr noundef nonnull @.str.14, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0) #16 ; 0 uses
  br label %.thread188

bb.ao:                                            ; preds = %bb.al
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.jm = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.jn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ap:                                            ; preds = %bb.ag
  %i.jo = icmp sgt i8 %4, 0
  br i1 %i.jo, label %bb.aq, label %.thread188

bb.aq:                                            ; preds = %bb.ap
  %i.jp = icmp slt i32 %3, 65536
  br i1 %i.jp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jq = add i32 %i.ih, 1
  store i16 -8191, ptr %i.il, align 2, !tbaa !32
  %i.jr = trunc i32 %3 to i16
  %i.js = zext i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.js
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.as:                                            ; preds = %bb.aq
  %i.ju = lshr i32 %3, 10
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = add i16 %i.jv, -9280
  %i.jx = add i32 %i.ih, 1
  store i16 %i.jw, ptr %i.il, align 2, !tbaa !32
  %i.jy = trunc i32 %3 to i16
  %i.jz = and i16 %i.jy, 1023
  %i.ka = or disjoint i16 %i.jz, -9216
  %i.kb = zext i32 %i.jx to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.kb
  store i16 %i.ka, ptr %i.kc, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

.thread188:                                       ; preds = %bb.an, %bb.am, %bb.ap
  %i.kd = icmp slt i32 %3, 55296
  br i1 %i.kd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread188
  %i.ke = trunc i32 %3 to i16
  %i.kf = load ptr, ptr %i.ii, align 8, !tbaa !21
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.ik
  store i16 %i.ke, ptr %i.kg, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.au:                                            ; preds = %.thread188
  %i.kh = icmp samesign ult i32 %3, 65536
  br i1 %i.kh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ki = load ptr, ptr %i.ii, align 8, !tbaa !21 ; 2 uses
  %i.kj = add i32 %i.ih, 1
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.ik
  store i16 -8192, ptr %i.kk, align 2, !tbaa !32
  %i.kl = trunc nuw i32 %3 to i16
  %i.km = zext i32 %i.kj to i64
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.km
  store i16 %i.kl, ptr %i.kn, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.aw:                                            ; preds = %bb.au
  %i.ko = lshr i32 %3, 10
  %i.kp = trunc i32 %i.ko to i16
  %i.kq = add i16 %i.kp, -10304
  %i.kr = load ptr, ptr %i.ii, align 8, !tbaa !21 ; 2 uses
  %i.ks = add i32 %i.ih, 1
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.ik
  store i16 %i.kq, ptr %i.kt, align 2, !tbaa !32
  %i.ku = trunc i32 %3 to i16
  %i.kv = and i16 %i.ku, 1023
  %i.kw = or disjoint i16 %i.kv, -9216
  %i.kx = zext i32 %i.ks to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.kx
  store i16 %i.kw, ptr %i.ky, align 2, !tbaa !32
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ax:                                            ; preds = %bb.f
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.la = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.lb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.16, i32 noundef %.lcssa190, ptr noundef nonnull %i.a, i32 noundef %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

_ZL11setFallbackP8MBCSDataji.exit:                ; preds = %bb.ao, %bb.ae, %bb.ad, %bb.ab, %bb.q, %bb.z, %bb.af, %bb.at, %bb.aw, %bb.av, %bb.as, %bb.ar, %bb.ax, %bb.x, %bb.u, %bb.n, %bb.i, %bb.h, %bb.g, %_ZL10printBytesPcmPKhi.exit184, %_ZL10printBytesPcmPKhi.exit, %bb.b
  %.1157 = phi i8 [ 0, %bb.b ], [ 0, %_ZL10printBytesPcmPKhi.exit ], [ 0, %_ZL10printBytesPcmPKhi.exit184 ], [ 0, %bb.ax ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.ao ], [ 0, %bb.u ], [ 0, %bb.x ], [ 1, %bb.q ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.ae ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.at ], [ 1, %bb.af ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i8 %.1157
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL24MBCSSingleAddFromUnicodeP8MBCSDataPKhiia(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i8 %3, 2
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 454456
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !17      ; 6 uses
  %i.e = ashr i32 %2, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.g = load i8, ptr %i.f, align 2, !tbaa !16
  %4 = icmp ne i8 %i.g, 0                         ; 3 uses
  %5 = icmp slt i32 %2, 8192
  %or.cond = and i1 %5, %4                        ; 3 uses
  %i.h = lshr i32 %2, 4
  %.087.v = select i1 %or.cond, i32 60, i32 63
  %.087 = and i32 %.087.v, %i.h                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !32   ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36   ; 5 uses
  br i1 %4, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = sub i32 %i.o, %.087                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 67768
  %i.r = zext i32 %i.p to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.p) ; 2 uses
  %i.s = icmp ugt i32 %i.o, %i.p
  br i1 %i.s, label %.lr.ph5, label %.critedge

.lr.ph5:                                          ; preds = %bb.d
  %i.t = zext i32 %i.o to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.u = icmp ugt i64 %i.v, %i.r
  br i1 %i.u, label %bb.f, label %.critedge, !llvm.loop !103

bb.f:                                             ; preds = %.lr.ph5, %bb.e
  %indvars.iv3 = phi i64 [ %i.t, %.lr.ph5 ], [ %i.v, %bb.e ] ; 2 uses
  %i.v = add nsw i64 %indvars.iv3, -1             ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !32
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge.loopexit.split.loop.exit118, !llvm.loop !103

.critedge.loopexit.split.loop.exit118:            ; preds = %bb.f
  %i.z = trunc nuw i64 %indvars.iv3 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.loopexit.split.loop.exit118, %bb.c
  %.1 = phi i32 [ %i.o, %bb.c ], [ %i.z, %.critedge.loopexit.split.loop.exit118 ], [ %umin, %bb.d ], [ %umin, %bb.e ] ; 2 uses
  %i.aa = add i32 %.1, 64                         ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 64448
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ad = zext i8 %i.d to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %i.ad) #16 ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %.critedge
  %i.af = trunc i32 %.1 to i16                    ; 2 uses
  store i16 %i.af, ptr %i.k, align 2, !tbaa !32
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.ag = phi i16 [ %i.af, %bb.h ], [ %i.l, %bb.b ] ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add nuw nsw i32 %.087, %i.ah
  %.090 = select i1 %or.cond, i32 64, i32 16
  %.188.v = select i1 %or.cond, i32 63, i32 15
  %.188 = and i32 %.188.v, %2                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 67768 ; 5 uses
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !32 ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !38 ; 5 uses
  br i1 %4, label %bb.k, label %.critedge5

bb.k:                                             ; preds = %bb.j
  %i.aq = sub i32 %i.ap, %.188                    ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %umin107 = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.aq) ; 2 uses
  %i.as = icmp ugt i32 %i.ap, %i.aq
  br i1 %i.as, label %.lr.ph8, label %.critedge5

.lr.ph8:                                          ; preds = %bb.k
  %i.at = zext i32 %i.ap to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.au = icmp ugt i64 %i.av, %i.ar
  br i1 %i.au, label %bb.m, label %.critedge5, !llvm.loop !104

bb.m:                                             ; preds = %.lr.ph8, %bb.l
  %indvars.iv1056 = phi i64 [ %i.at, %.lr.ph8 ], [ %i.av, %bb.l ] ; 2 uses
  %i.av = add nsw i64 %indvars.iv1056, -1         ; 3 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !32
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %.critedge5.loopexit.split.loop.exit120, !llvm.loop !104

.critedge5.loopexit.split.loop.exit120:           ; preds = %bb.m
  %i.az = trunc nuw i64 %indvars.iv1056 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %bb.l, %bb.k, %.critedge5.loopexit.split.loop.exit120, %bb.j
  %.3 = phi i32 [ %i.ap, %bb.j ], [ %i.az, %.critedge5.loopexit.split.loop.exit120 ], [ %umin107, %bb.k ], [ %umin107, %bb.l ] ; 6 uses
  %i.ba = add i32 %.3, %.090                      ; 6 uses
  %i.bb = icmp ugt i32 %i.ba, 65536
  br i1 %i.bb, label %vec.epilog.ph, label %.preheader

.preheader:                                       ; preds = %.critedge5
  %i.bc = icmp ult i32 %.3, %i.ba
  br i1 %i.bc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bd = zext i16 %i.ag to i64
  %i.be = zext nneg i32 %.087 to i64
  %i.bf = add nuw nsw i64 %i.bd, %i.be            ; 4 uses
  %6 = trunc nuw i32 %.3 to i16
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bf
  store i16 %6, ptr %7, align 2, !tbaa !32
  %narrow = add nuw nsw i32 %.3, 16               ; 2 uses
  %8 = icmp samesign ult i32 %narrow, %i.ba
  br i1 %8, label %vec.epilog.vector.body, label %._crit_edge.loopexit

vec.epilog.ph:                                    ; preds = %.critedge5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !26
  %10 = zext i8 %i.d to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %10) #16 ; 0 uses
  br label %bb.y

vec.epilog.vector.body:                           ; preds = %iter.check
  %12 = trunc nuw i32 %narrow to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bf
  %13 = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %12, ptr %13, align 2, !tbaa !32
  %14 = add nuw nsw i32 %.3, 32                   ; 2 uses
  %15 = icmp samesign ult i32 %14, %i.ba
  br i1 %15, label %bb.n, label %._crit_edge.loopexit

bb.n:                                             ; preds = %vec.epilog.vector.body
  %16 = trunc nuw i32 %14 to i16
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bf
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i16 %16, ptr %18, align 2, !tbaa !32
  %19 = add nuw nsw i32 %.3, 48                   ; 2 uses
  %20 = icmp samesign ult i32 %19, %i.ba
  br i1 %20, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %bb.n
  %i.bh = trunc nuw i32 %19 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bf
  %21 = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 %i.bh, ptr %21, align 2, !tbaa !32
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.n, %vec.epilog.vector.body, %iter.check
  %.pre.pre = load i16, ptr %i.al, align 2, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre = phi i16 [ %.pre.pre, %._crit_edge.loopexit ], [ 0, %.preheader ]
  store i32 %i.ba, ptr %i.ao, align 4, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i
  %i.bj = phi i16 [ %.pre, %._crit_edge ], [ %i.am, %bb.i ]
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bk
  %i.bm = zext nneg i32 %.188 to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !32 ; 2 uses
  %i.bp = icmp slt i8 %3, 1
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = zext i8 %i.d to i16
  %i.br = or disjoint i16 %i.bq, 3840
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %2, -57344
  %i.bt = icmp ult i32 %i.bs, 6400
  %i.bu = add nsw i32 %2, -983040
  %i.bv = icmp ult i32 %i.bu, 131072
  %or.cond101 = select i1 %i.bt, i1 true, i1 %i.bv
  %i.bw = zext i8 %i.d to i16                     ; 2 uses
  br i1 %or.cond101, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = or disjoint i16 %i.bw, 3072
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.by = or disjoint i16 %i.bw, 2048
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %.sink = phi i16 [ %i.bx, %bb.r ], [ %i.by, %bb.s ], [ %i.br, %bb.p ]
  store i16 %.sink, ptr %i.bn, align 2, !tbaa !32
  %i.bz = zext i16 %i.bo to i32                   ; 2 uses
  %i.ca = icmp ugt i16 %i.bo, 255
  br i1 %i.ca, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp sgt i8 %3, -1
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.cd = zext i8 %i.d to i32
  %i.ce = and i32 %i.bz, 255
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %i.cd, i32 noundef %i.ce) #16 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cg = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not99 = icmp eq i8 %i.cg, 0
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ci = zext i8 %i.d to i32
  %i.cj = and i32 %i.bz, 255
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %i.ci, i32 noundef %i.cj) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.x, %bb.a, %bb.v, %vec.epilog.ph, %bb.g
  %.091 = phi i8 [ 1, %bb.a ], [ 0, %bb.g ], [ 0, %vec.epilog.ph ], [ 0, %bb.v ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.t ]
  ret i8 %.091
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2, i32 noundef %3, i8 noundef signext %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 132120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 132129
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = icmp ne i8 %i.g, 12
  %i.i = load i8, ptr @IGNORE_SISO_CHECK, align 1
  %i.j = icmp ne i8 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %1, align 1, !tbaa !17
  %i.l = and i8 %i.k, -2
  %switch = icmp eq i8 %i.l, 14
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph.i, label %_ZL10printBytesPcmPKhi.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.o = load i8, ptr %1, align 1, !tbaa !17      ; 3 uses
  %i.p = lshr i8 %i.o, 4                          ; 2 uses
  %i.q = icmp ult i8 %i.o, -96
  %i.r = or disjoint i8 %i.p, 48
  %narrow.i.i = add nuw nsw i8 %i.p, 87
  %i.s = select i1 %i.q, i8 %i.r, i8 %narrow.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.s, ptr %i.a, align 1, !tbaa !17
  %i.u = and i8 %i.o, 15                          ; 3 uses
  %i.v = icmp samesign ult i8 %i.u, 10
  %i.w = or disjoint i8 %i.u, 48
  %narrow.i17.i = add nuw nsw i8 %i.u, 87
  %i.x = select i1 %i.v, i8 %i.w, i8 %narrow.i17.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.x, ptr %i.t, align 1, !tbaa !17
  %.not312 = icmp eq i32 %2, 1
  br i1 %.not312, label %_ZL10printBytesPcmPKhi.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 3 uses
  %i.ab = lshr i8 %i.aa, 4                        ; 2 uses
  %i.ac = icmp ult i8 %i.aa, -96
  %i.ad = or disjoint i8 %i.ab, 48
  %narrow.i.i.1 = add nuw nsw i8 %i.ab, 87
  %i.ae = select i1 %i.ac, i8 %i.ad, i8 %narrow.i.i.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !17
  %i.ag = and i8 %i.aa, 15                        ; 3 uses
  %i.ah = icmp samesign ult i8 %i.ag, 10
  %i.ai = or disjoint i8 %i.ag, 48
  %narrow.i17.i.1 = add nuw nsw i8 %i.ag, 87
  %i.aj = select i1 %i.ah, i8 %i.ai, i8 %narrow.i17.i.1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !17
  %i.al = icmp sgt i32 %2, 2
  br i1 %i.al, label %.lr.ph.i.2, label %_ZL10printBytesPcmPKhi.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17  ; 3 uses
  %i.ao = lshr i8 %i.an, 4                        ; 2 uses
  %i.ap = icmp ult i8 %i.an, -96
  %i.aq = or disjoint i8 %i.ao, 48
  %narrow.i.i.2 = add nuw nsw i8 %i.ao, 87
  %i.ar = select i1 %i.ap, i8 %i.aq, i8 %narrow.i.i.2
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ar, ptr %i.ak, align 1, !tbaa !17
  %i.at = and i8 %i.an, 15                        ; 3 uses
  %i.au = icmp samesign ult i8 %i.at, 10
  %i.av = or disjoint i8 %i.at, 48
  %narrow.i17.i.2 = add nuw nsw i8 %i.at, 87
  %i.aw = select i1 %i.au, i8 %i.av, i8 %narrow.i17.i.2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !17
  %.not313 = icmp eq i32 %2, 3
  br i1 %.not313, label %_ZL10printBytesPcmPKhi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17  ; 3 uses
  %i.ba = lshr i8 %i.az, 4                        ; 2 uses
  %i.bb = icmp ult i8 %i.az, -96
  %i.bc = or disjoint i8 %i.ba, 48
  %narrow.i.i.3 = add nuw nsw i8 %i.ba, 87
  %i.bd = select i1 %i.bb, i8 %i.bc, i8 %narrow.i.i.3
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bd, ptr %i.ax, align 1, !tbaa !17
  %i.bf = and i8 %i.az, 15                        ; 3 uses
  %i.bg = icmp samesign ult i8 %i.bf, 10
  %i.bh = or disjoint i8 %i.bf, 48
  %narrow.i17.i.3 = add nuw nsw i8 %i.bf, 87
  %i.bi = select i1 %i.bg, i8 %i.bh, i8 %narrow.i17.i.3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bi, ptr %i.be, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit

_ZL10printBytesPcmPKhi.exit:                      ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.c
  %.0.lcssa.i = phi ptr [ %i.a, %bb.c ], [ %i.y, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.1 ], [ %i.ax, %.lr.ph.i.2 ], [ %i.bj, %.lr.ph.i.3 ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !17
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.22, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ap

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.bl = icmp eq i8 %4, 1
  %i.bm = icmp eq i32 %2, 1
  %or.cond3 = and i1 %i.bm, %i.bl
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bn = load i8, ptr %1, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef 0) #16 ; 0 uses
  br label %bb.ap

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 454456
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22 ; 5 uses
  %i.bt = ashr i32 %3, 10                         ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !16
  %.not = icmp ne i8 %i.bv, 0                     ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !19
  %i.by = zext i16 %i.bx to i32                   ; 3 uses
  %.not182 = icmp sgt i32 %3, %i.by
  %i.bz = lshr i32 %3, 4                          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.cb = zext i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb ; 4 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !32 ; 3 uses
  %i.ce = icmp eq i16 %i.cd, 0                    ; 2 uses
  br i1 %.not182, label %.thread235, label %.thread

bb.i:                                             ; preds = %bb.g
  %i.cf = lshr i32 %3, 4
  %i.cg = and i32 %i.cf, 63                       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.ci = zext i32 %i.bt to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !32 ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.j, label %.thread291

.thread291:                                       ; preds = %bb.i
  %i.cm = zext i16 %i.ck to i32
  %i.cn = add nuw nsw i32 %i.cg, %i.cm
  br label %bb.p

.thread235:                                       ; preds = %bb.h
  %i.co = and i32 %i.bz, 63                       ; 2 uses
  br i1 %i.ce, label %.thread236, label %.thread238

.thread238:                                       ; preds = %.thread235
  %i.cp = zext i16 %i.cd to i32
  %i.cq = add nuw nsw i32 %i.co, %i.cp
  br label %bb.o

.thread:                                          ; preds = %bb.h
  %i.cr = and i32 %i.bz, 60                       ; 2 uses
  br i1 %i.ce, label %.thread236, label %.thread232

.thread232:                                       ; preds = %.thread
  %i.cs = zext i16 %i.cd to i32
  %i.ct = add nuw nsw i32 %i.cr, %i.cs
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !36
  br label %.critedge

.thread236:                                       ; preds = %.thread, %.thread235
  %.0161226230 = phi i32 [ %i.co, %.thread235 ], [ %i.cr, %.thread ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 4 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !36 ; 4 uses
  %i.cy = sub i32 %i.cx, %.0161226230             ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 196664
  %i.da = zext i32 %i.cy to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.cy) ; 2 uses
  %i.db = icmp ugt i32 %i.cx, %i.cy
  br i1 %i.db, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.thread236
  %i.dc = zext i32 %i.cx to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.dd = icmp ugt i64 %i.de, %i.da
  br i1 %i.dd, label %bb.l, label %.critedge, !llvm.loop !105

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv306 = phi i64 [ %i.dc, %.lr.ph ], [ %i.de, %bb.k ] ; 2 uses
  %i.de = add nsw i64 %indvars.iv306, -1          ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !37
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.k, label %.critedge.loopexit.split.loop.exit297, !llvm.loop !105

.critedge.loopexit.split.loop.exit297:            ; preds = %bb.l
  %i.di = trunc nuw i64 %indvars.iv306 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.thread236, %.critedge.loopexit.split.loop.exit297, %bb.j
  %i.dj = phi ptr [ %i.cu, %bb.j ], [ %i.cw, %.critedge.loopexit.split.loop.exit297 ], [ %i.cw, %.thread236 ], [ %i.cw, %bb.k ]
  %.0161226231 = phi i32 [ %i.cg, %bb.j ], [ %.0161226230, %.critedge.loopexit.split.loop.exit297 ], [ %.0161226230, %.thread236 ], [ %.0161226230, %bb.k ]
  %i.dk = phi ptr [ %i.cj, %bb.j ], [ %i.cc, %.critedge.loopexit.split.loop.exit297 ], [ %i.cc, %.thread236 ], [ %i.cc, %bb.k ]
  %.1 = phi i32 [ %i.cv, %bb.j ], [ %i.di, %.critedge.loopexit.split.loop.exit297 ], [ %umin, %.thread236 ], [ %umin, %bb.k ] ; 3 uses
  %i.dl = add i32 %.1, 64                         ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 64448
  br i1 %i.dm, label %bb.m, label %.preheader240

.preheader240:                                    ; preds = %.critedge
  %i.dn = icmp ult i32 %.1, -64
  br i1 %i.dn, label %.lr.ph.preheader, label %bb.n

.lr.ph.preheader:                                 ; preds = %.preheader240
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.dp = zext i32 %i.bt to i64
  %i.dq = trunc nuw i32 %.1 to i16
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dp
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !32
  %.pre.pre = load i16, ptr %i.dk, align 2, !tbaa !32
  %i.ds = zext i16 %.pre.pre to i32
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.du = icmp sgt i32 %2, 0
  br i1 %i.du, label %.lr.ph.i190, label %_ZL10printBytesPcmPKhi.exit197

.lr.ph.i190:                                      ; preds = %bb.m
  %i.dv = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.dw = lshr i8 %i.dv, 4                        ; 2 uses
  %i.dx = icmp ult i8 %i.dv, -96
  %i.dy = or disjoint i8 %i.dw, 48
  %narrow.i.i194 = add nuw nsw i8 %i.dw, 87
  %i.dz = select i1 %i.dx, i8 %i.dy, i8 %narrow.i.i194
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dz, ptr %i.a, align 1, !tbaa !17
  %i.eb = and i8 %i.dv, 15                        ; 3 uses
  %i.ec = icmp samesign ult i8 %i.eb, 10
  %i.ed = or disjoint i8 %i.eb, 48
  %narrow.i17.i195 = add nuw nsw i8 %i.eb, 87
  %i.ee = select i1 %i.ec, i8 %i.ed, i8 %narrow.i17.i195
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !17
  %.not320 = icmp eq i32 %2, 1
  br i1 %.not320, label %_ZL10printBytesPcmPKhi.exit197, label %.lr.ph.i190.1

.lr.ph.i190.1:                                    ; preds = %.lr.ph.i190
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !17  ; 3 uses
  %i.ei = lshr i8 %i.eh, 4                        ; 2 uses
  %i.ej = icmp ult i8 %i.eh, -96
  %i.ek = or disjoint i8 %i.ei, 48
  %narrow.i.i194.1 = add nuw nsw i8 %i.ei, 87
  %i.el = select i1 %i.ej, i8 %i.ek, i8 %narrow.i.i194.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !17
  %i.en = and i8 %i.eh, 15                        ; 3 uses
  %i.eo = icmp samesign ult i8 %i.en, 10
  %i.ep = or disjoint i8 %i.en, 48
  %narrow.i17.i195.1 = add nuw nsw i8 %i.en, 87
  %i.eq = select i1 %i.eo, i8 %i.ep, i8 %narrow.i17.i195.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !17
  %i.es = icmp sgt i32 %2, 2
  br i1 %i.es, label %.lr.ph.i190.2, label %_ZL10printBytesPcmPKhi.exit197

.lr.ph.i190.2:                                    ; preds = %.lr.ph.i190.1
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17  ; 3 uses
  %i.ev = lshr i8 %i.eu, 4                        ; 2 uses
  %i.ew = icmp ult i8 %i.eu, -96
  %i.ex = or disjoint i8 %i.ev, 48
  %narrow.i.i194.2 = add nuw nsw i8 %i.ev, 87
  %i.ey = select i1 %i.ew, i8 %i.ex, i8 %narrow.i.i194.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ey, ptr %i.er, align 1, !tbaa !17
  %i.fa = and i8 %i.eu, 15                        ; 3 uses
  %i.fb = icmp samesign ult i8 %i.fa, 10
  %i.fc = or disjoint i8 %i.fa, 48
  %narrow.i17.i195.2 = add nuw nsw i8 %i.fa, 87
  %i.fd = select i1 %i.fb, i8 %i.fc, i8 %narrow.i17.i195.2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !17
  %.not321 = icmp eq i32 %2, 3
  br i1 %.not321, label %_ZL10printBytesPcmPKhi.exit197, label %.lr.ph.i190.3

.lr.ph.i190.3:                                    ; preds = %.lr.ph.i190.2
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !17  ; 3 uses
  %i.fh = lshr i8 %i.fg, 4                        ; 2 uses
  %i.fi = icmp ult i8 %i.fg, -96
  %i.fj = or disjoint i8 %i.fh, 48
  %narrow.i.i194.3 = add nuw nsw i8 %i.fh, 87
  %i.fk = select i1 %i.fi, i8 %i.fj, i8 %narrow.i.i194.3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.fk, ptr %i.fe, align 1, !tbaa !17
  %i.fm = and i8 %i.fg, 15                        ; 3 uses
  %i.fn = icmp samesign ult i8 %i.fm, 10
  %i.fo = or disjoint i8 %i.fm, 48
  %narrow.i17.i195.3 = add nuw nsw i8 %i.fm, 87
  %i.fp = select i1 %i.fn, i8 %i.fo, i8 %narrow.i17.i195.3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit197

_ZL10printBytesPcmPKhi.exit197:                   ; preds = %.lr.ph.i190, %.lr.ph.i190.1, %.lr.ph.i190.2, %.lr.ph.i190.3, %bb.m
  %.0.lcssa.i189 = phi ptr [ %i.a, %bb.m ], [ %i.ef, %.lr.ph.i190 ], [ %i.er, %.lr.ph.i190.1 ], [ %i.fe, %.lr.ph.i190.2 ], [ %i.fq, %.lr.ph.i190.3 ]
  store i8 0, ptr %.0.lcssa.i189, align 1, !tbaa !17
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.24, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ap

bb.n:                                             ; preds = %.preheader240, %.lr.ph.preheader
  %.pre = phi i32 [ %i.ds, %.lr.ph.preheader ], [ 0, %.preheader240 ]
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !36
  %i.fs = add nuw nsw i32 %.0161226231, %.pre     ; 2 uses
  br i1 %.not, label %._crit_edge268, label %bb.p

._crit_edge268:                                   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %.pre269 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.pre275 = zext i16 %.pre269 to i32
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge268, %.thread238, %.thread232
  %.pre-phi = phi i32 [ %.pre275, %._crit_edge268 ], [ %i.by, %.thread238 ], [ %i.by, %.thread232 ]
  %i.ft = phi i32 [ %i.fs, %._crit_edge268 ], [ %i.cq, %.thread238 ], [ %i.ct, %.thread232 ]
  %.not185 = icmp sgt i32 %3, %.pre-phi           ; 2 uses
  %spec.select = select i1 %.not185, i32 4, i32 6
  %spec.select300 = select i1 %.not185, i32 15, i32 63
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread291
  %.sink299 = phi i32 [ %spec.select, %bb.o ], [ 4, %.thread291 ], [ 4, %bb.n ]
  %.sink = phi i32 [ %spec.select300, %bb.o ], [ 15, %.thread291 ], [ 15, %bb.n ]
  %i.fu = phi i32 [ %i.ft, %bb.o ], [ %i.cn, %.thread291 ], [ %i.fs, %bb.n ] ; 3 uses
  %i.fv = shl nsw i32 %i.e, %.sink299
  %i.fw = and i32 %3, %.sink                      ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 196664 ; 3 uses
  %i.fy = zext nneg i32 %i.fu to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !37 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !38 ; 6 uses
  %i.ge = icmp samesign ugt i32 %i.fw, 15
  %or.cond5 = select i1 %.not, i1 %i.ge, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gf = and i32 %i.fw, 48
  %i.gg = mul i32 %i.gf, %i.e                     ; 3 uses
  %.not256 = icmp eq i32 %i.gg, 0
  br i1 %.not256, label %.critedge7, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %bb.r
  %wide.trip.count = zext i32 %i.gg to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %bb.s, %.lr.ph249.preheader
  %indvars.iv265 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next266.3, %bb.s ] ; 5 uses
  %i.gh = trunc nuw i64 %indvars.iv265 to i32     ; 2 uses
  %i.gi = xor i32 %i.gh, -1
  %i.gj = add i32 %i.gd, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !17
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %.lr.ph249.1, label %.critedge7.loopexit

.lr.ph249.1:                                      ; preds = %.lr.ph249
  %i.go = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.gp = xor i32 %i.go, -2
  %i.gq = add i32 %i.gd, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !17
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %.lr.ph249.2, label %.critedge7.loopexit.split.loop.exit327

.lr.ph249.2:                                      ; preds = %.lr.ph249.1
  %i.gv = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.gw = xor i32 %i.gv, -3
  %i.gx = add i32 %i.gd, %i.gw
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !17
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %.lr.ph249.3, label %.critedge7.loopexit.split.loop.exit325

.lr.ph249.3:                                      ; preds = %.lr.ph249.2
  %i.hc = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.hd = xor i32 %i.hc, -4
  %i.he = add i32 %i.gd, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !17
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.s, label %.critedge7.loopexit.split.loop.exit323

bb.s:                                             ; preds = %.lr.ph249.3
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge7.loopexit, label %.lr.ph249, !llvm.loop !106

.critedge7.loopexit.split.loop.exit323:           ; preds = %.lr.ph249.3
  %i.hj = or disjoint i32 %i.hc, 3
  br label %.critedge7.loopexit

.critedge7.loopexit.split.loop.exit325:           ; preds = %.lr.ph249.2
  %i.hk = or disjoint i32 %i.gv, 2
  br label %.critedge7.loopexit

.critedge7.loopexit.split.loop.exit327:           ; preds = %.lr.ph249.1
  %i.hl = or disjoint i32 %i.go, 1
  br label %.critedge7.loopexit

.critedge7.loopexit:                              ; preds = %.lr.ph249, %bb.s, %.critedge7.loopexit.split.loop.exit327, %.critedge7.loopexit.split.loop.exit325, %.critedge7.loopexit.split.loop.exit323
  %.0.lcssa.ph = phi i32 [ %i.hl, %.critedge7.loopexit.split.loop.exit327 ], [ %i.hj, %.critedge7.loopexit.split.loop.exit323 ], [ %i.hk, %.critedge7.loopexit.split.loop.exit325 ], [ %i.gg, %bb.s ], [ %i.gh, %.lr.ph249 ]
  %i.hm = lshr i32 %.0.lcssa.ph, 4
  br label %.critedge7

.critedge7:                                       ; preds = %.critedge7.loopexit, %bb.r
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %i.hm, %.critedge7.loopexit ]
  %i.hn = udiv i32 %.0.lcssa, %i.e
  %i.ho = shl i32 %i.e, 4
  %i.hp = mul i32 %i.ho, %i.hn
  %i.hq = sub i32 %i.gd, %i.hp
  br label %bb.t

bb.t:                                             ; preds = %.critedge7, %bb.q
  %.3 = phi i32 [ %i.hq, %.critedge7 ], [ %i.gd, %bb.q ] ; 3 uses
  %i.hr = add i32 %.3, %i.fv                      ; 4 uses
  %i.hs = shl i32 %i.e, 20
  %i.ht = icmp ugt i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.hu = icmp ult i32 %.3, %i.hr
  br i1 %i.hu, label %.lr.ph254, label %._crit_edge255

.lr.ph254:                                        ; preds = %.preheader
  %i.hv = shl nsw i32 %i.e, 4
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.hx = icmp sgt i32 %2, 0
  br i1 %i.hx, label %.lr.ph.i199, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199:                                      ; preds = %bb.u
  %i.hy = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.hz = lshr i8 %i.hy, 4                        ; 2 uses
  %i.ia = icmp ult i8 %i.hy, -96
  %i.ib = or disjoint i8 %i.hz, 48
  %narrow.i.i203 = add nuw nsw i8 %i.hz, 87
  %i.ic = select i1 %i.ia, i8 %i.ib, i8 %narrow.i.i203
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ic, ptr %i.a, align 1, !tbaa !17
  %i.ie = and i8 %i.hy, 15                        ; 3 uses
  %i.if = icmp samesign ult i8 %i.ie, 10
  %i.ig = or disjoint i8 %i.ie, 48
  %narrow.i17.i204 = add nuw nsw i8 %i.ie, 87
  %i.ih = select i1 %i.if, i8 %i.ig, i8 %narrow.i17.i204
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ih, ptr %i.id, align 1, !tbaa !17
  %.not318 = icmp eq i32 %2, 1
  br i1 %.not318, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.1

.lr.ph.i199.1:                                    ; preds = %.lr.ph.i199
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !17  ; 3 uses
  %i.il = lshr i8 %i.ik, 4                        ; 2 uses
  %i.im = icmp ult i8 %i.ik, -96
  %i.in = or disjoint i8 %i.il, 48
  %narrow.i.i203.1 = add nuw nsw i8 %i.il, 87
  %i.io = select i1 %i.im, i8 %i.in, i8 %narrow.i.i203.1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.io, ptr %i.ii, align 1, !tbaa !17
  %i.iq = and i8 %i.ik, 15                        ; 3 uses
  %i.ir = icmp samesign ult i8 %i.iq, 10
  %i.is = or disjoint i8 %i.iq, 48
  %narrow.i17.i204.1 = add nuw nsw i8 %i.iq, 87
  %i.it = select i1 %i.ir, i8 %i.is, i8 %narrow.i17.i204.1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.it, ptr %i.ip, align 1, !tbaa !17
  %i.iv = icmp sgt i32 %2, 2
  br i1 %i.iv, label %.lr.ph.i199.2, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199.2:                                    ; preds = %.lr.ph.i199.1
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !17  ; 3 uses
  %i.iy = lshr i8 %i.ix, 4                        ; 2 uses
  %i.iz = icmp ult i8 %i.ix, -96
  %i.ja = or disjoint i8 %i.iy, 48
  %narrow.i.i203.2 = add nuw nsw i8 %i.iy, 87
  %i.jb = select i1 %i.iz, i8 %i.ja, i8 %narrow.i.i203.2
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.jb, ptr %i.iu, align 1, !tbaa !17
  %i.jd = and i8 %i.ix, 15                        ; 3 uses
  %i.je = icmp samesign ult i8 %i.jd, 10
  %i.jf = or disjoint i8 %i.jd, 48
  %narrow.i17.i204.2 = add nuw nsw i8 %i.jd, 87
  %i.jg = select i1 %i.je, i8 %i.jf, i8 %narrow.i17.i204.2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.jg, ptr %i.jc, align 1, !tbaa !17
  %.not319 = icmp eq i32 %2, 3
  br i1 %.not319, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.3

.lr.ph.i199.3:                                    ; preds = %.lr.ph.i199.2
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !17  ; 3 uses
  %i.jk = lshr i8 %i.jj, 4                        ; 2 uses
  %i.jl = icmp ult i8 %i.jj, -96
  %i.jm = or disjoint i8 %i.jk, 48
  %narrow.i.i203.3 = add nuw nsw i8 %i.jk, 87
  %i.jn = select i1 %i.jl, i8 %i.jm, i8 %narrow.i.i203.3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.jn, ptr %i.jh, align 1, !tbaa !17
  %i.jp = and i8 %i.jj, 15                        ; 3 uses
  %i.jq = icmp samesign ult i8 %i.jp, 10
  %i.jr = or disjoint i8 %i.jp, 48
  %narrow.i17.i204.3 = add nuw nsw i8 %i.jp, 87
  %i.js = select i1 %i.jq, i8 %i.jr, i8 %narrow.i17.i204.3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.js, ptr %i.jo, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit206

_ZL10printBytesPcmPKhi.exit206:                   ; preds = %.lr.ph.i199, %.lr.ph.i199.1, %.lr.ph.i199.2, %.lr.ph.i199.3, %bb.u
  %.0.lcssa.i198 = phi ptr [ %i.a, %bb.u ], [ %i.ii, %.lr.ph.i199 ], [ %i.iu, %.lr.ph.i199.1 ], [ %i.jh, %.lr.ph.i199.2 ], [ %i.jt, %.lr.ph.i199.3 ]
  store i8 0, ptr %.0.lcssa.i198, align 1, !tbaa !17
  %i.ju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph254, %bb.v
  %.4253 = phi i32 [ %.3, %.lr.ph254 ], [ %i.ka, %bb.v ] ; 2 uses
  %.1164252 = phi i32 [ %i.fu, %.lr.ph254 ], [ %i.jx, %bb.v ] ; 2 uses
  %i.jv = lshr i32 %.4253, 4
  %i.jw = udiv i32 %i.jv, %i.e
  %i.jx = add i32 %.1164252, 1
  %i.jy = zext i32 %.1164252 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.jy
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !37
  %i.ka = add i32 %.4253, %i.hv                   ; 2 uses
  %i.kb = icmp ult i32 %i.ka, %i.hr
  br i1 %i.kb, label %bb.v, label %._crit_edge255, !llvm.loop !107

._crit_edge255:                                   ; preds = %bb.v, %.preheader
  store i32 %i.hr, ptr %i.gc, align 4, !tbaa !38
  %.pre270 = load i32, ptr %i.fz, align 4, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge255, %bb.p
  %i.kc = phi i32 [ %.pre270, %._crit_edge255 ], [ %i.ga, %bb.p ]
  %i.kd = shl i32 %i.kc, 4                        ; 2 uses
  %i.ke = and i32 %i.kd, 1048560                  ; 2 uses
  br i1 %.not, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 456520 ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 8, !tbaa !19
  %i.kh = zext i16 %i.kg to i32
  %.not187 = icmp sgt i32 %3, %i.kh
  br i1 %.not187, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ki = icmp samesign ugt i32 %i.ke, 65535
  br i1 %i.ki, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i16 -257, ptr %i.kf, align 8, !tbaa !19
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.kj = trunc i32 %i.kd to i16
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 454472
  %i.kl = ashr i32 %3, 6
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.kk, i64 %i.km
  store i16 %i.kj, ptr %i.kn, align 2, !tbaa !32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.w
  switch i32 %2, label %bb.af [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kp = load i8, ptr %1, align 1, !tbaa !17
  %i.kq = zext i8 %i.kp to i32
  %i.kr = shl nuw nsw i32 %i.kq, 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0170 = phi ptr [ %i.ko, %bb.ac ], [ %1, %bb.ab ] ; 2 uses
  %.0167 = phi i32 [ %i.kr, %bb.ac ], [ 0, %bb.ab ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  %i.kt = load i8, ptr %.0170, align 1, !tbaa !17
  %i.ku = zext i8 %i.kt to i32
  %i.kv = or disjoint i32 %.0167, %i.ku
  %i.kw = shl nuw nsw i32 %i.kv, 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.1171 = phi ptr [ %i.ks, %bb.ad ], [ %1, %bb.ab ] ; 2 uses
  %.1168 = phi i32 [ %i.kw, %bb.ad ], [ 0, %bb.ab ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.1171, i64 1
  %i.ky = load i8, ptr %.1171, align 1, !tbaa !17
  %i.kz = zext i8 %i.ky to i32
  %i.la = or disjoint i32 %.1168, %i.kz
  %i.lb = shl nuw i32 %i.la, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.2172 = phi ptr [ %1, %bb.ab ], [ %i.kx, %bb.ae ]
  %.2169 = phi i32 [ 0, %bb.ab ], [ %i.lb, %bb.ae ] ; 3 uses
  %i.lc = load i8, ptr %.2172, align 1, !tbaa !17 ; 2 uses
  %i.ld = zext i8 %i.lc to i32
  %i.le = or disjoint i32 %.2169, %i.ld           ; 2 uses
  %i.lf = add nuw nsw i32 %i.ke, %i.fw
  %i.lg = mul i32 %i.lf, %i.e
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.lh ; 8 uses
  switch i32 %i.e, label %bb.aj [
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !32
  %i.lk = zext i16 %i.lj to i32
  %i.ll = trunc i32 %i.le to i16
  store i16 %i.ll, ptr %i.li, align 2, !tbaa !32
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !17
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 16
  %i.lp = lshr i32 %.2169, 16
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 1 ; 2 uses
  store i8 %i.lq, ptr %i.li, align 1, !tbaa !17
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !17
  %i.lt = zext i8 %i.ls to i32
  %i.lu = shl nuw nsw i32 %i.lt, 8
  %i.lv = or disjoint i32 %i.lu, %i.lo
  %i.lw = lshr exact i32 %.2169, 8
  %i.lx = trunc i32 %i.lw to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 2 ; 2 uses
  store i8 %i.lx, ptr %i.lr, align 1, !tbaa !17
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !17
  %i.ma = zext i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.lv, %i.ma
  store i8 %i.lc, ptr %i.ly, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.mc = load i32, ptr %i.li, align 4, !tbaa !37
  store i32 %i.le, ptr %i.li, align 4, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ag
  %.0166 = phi i32 [ 0, %bb.af ], [ %i.lk, %bb.ag ], [ %i.mb, %bb.ah ], [ %i.mc, %bb.ai ] ; 3 uses
  %i.md = lshr i32 %i.fw, 4
  %i.me = add nuw nsw i32 %i.md, %i.fu
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.mf ; 3 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !37 ; 3 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = and i32 %3, 15
  %i.mk = or disjoint i32 %i.mj, 16
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl nuw nsw i64 1, %i.ml                ; 2 uses
  %i.mn = and i64 %i.mm, %i.mi
  %i.mo = icmp ne i64 %i.mn, 0
  %i.mp = icmp ne i32 %.0166, 0
  %or.cond9 = select i1 %i.mo, i1 true, i1 %i.mp
  br i1 %or.cond9, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.mq = icmp sgt i8 %4, -1
  br i1 %i.mq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ms = icmp sgt i32 %2, 0
  br i1 %i.ms, label %.lr.ph.i208, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208:                                      ; preds = %bb.al
  %i.mt = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.mu = lshr i8 %i.mt, 4                        ; 2 uses
  %i.mv = icmp ult i8 %i.mt, -96
  %i.mw = or disjoint i8 %i.mu, 48
  %narrow.i.i212 = add nuw nsw i8 %i.mu, 87
  %i.mx = select i1 %i.mv, i8 %i.mw, i8 %narrow.i.i212
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.mx, ptr %i.a, align 1, !tbaa !17
  %i.mz = and i8 %i.mt, 15                        ; 3 uses
  %i.na = icmp samesign ult i8 %i.mz, 10
  %i.nb = or disjoint i8 %i.mz, 48
  %narrow.i17.i213 = add nuw nsw i8 %i.mz, 87
  %i.nc = select i1 %i.na, i8 %i.nb, i8 %narrow.i17.i213
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.nc, ptr %i.my, align 1, !tbaa !17
  %.not316 = icmp eq i32 %2, 1
  br i1 %.not316, label %_ZL10printBytesPcmPKhi.exit215, label %.lr.ph.i208.1

.lr.ph.i208.1:                                    ; preds = %.lr.ph.i208
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !17  ; 3 uses
  %i.ng = lshr i8 %i.nf, 4                        ; 2 uses
  %i.nh = icmp ult i8 %i.nf, -96
  %i.ni = or disjoint i8 %i.ng, 48
  %narrow.i.i212.1 = add nuw nsw i8 %i.ng, 87
  %i.nj = select i1 %i.nh, i8 %i.ni, i8 %narrow.i.i212.1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.nj, ptr %i.nd, align 1, !tbaa !17
  %i.nl = and i8 %i.nf, 15                        ; 3 uses
  %i.nm = icmp samesign ult i8 %i.nl, 10
  %i.nn = or disjoint i8 %i.nl, 48
  %narrow.i17.i213.1 = add nuw nsw i8 %i.nl, 87
  %i.no = select i1 %i.nm, i8 %i.nn, i8 %narrow.i17.i213.1
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.no, ptr %i.nk, align 1, !tbaa !17
  %i.nq = icmp sgt i32 %2, 2
  br i1 %i.nq, label %.lr.ph.i208.2, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208.2:                                    ; preds = %.lr.ph.i208.1
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !17  ; 3 uses
  %i.nt = lshr i8 %i.ns, 4                        ; 2 uses
  %i.nu = icmp ult i8 %i.ns, -96
  %i.nv = or disjoint i8 %i.nt, 48
  %narrow.i.i212.2 = add nuw nsw i8 %i.nt, 87
  %i.nw = select i1 %i.nu, i8 %i.nv, i8 %narrow.i.i212.2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.nw, ptr %i.np, align 1, !tbaa !17
  %i.ny = and i8 %i.ns, 15                        ; 3 uses
  %i.nz = icmp samesign ult i8 %i.ny, 10
  %i.oa = or disjoint i8 %i.ny, 48
  %narrow.i17.i213.2 = add nuw nsw i8 %i.ny, 87
end_hunk_0
begin_hunk_1_@_ZL10printBytesPcmPKhi:bb.a
  %i.v = and i8 %i.u, 15                          ; 3 uses
  %i.w = icmp samesign ult i8 %i.v, 10
  %i.x = or disjoint i8 %i.v, 48
  %narrow.i17.1 = add nuw nsw i8 %i.v, 87
  %i.y = select i1 %i.w, i8 %i.x, i8 %narrow.i17.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 %i.y, ptr %i.t, align 1, !tbaa !17
  %i.aa = icmp sgt i32 %2, 2
  br i1 %i.aa, label %.lr.ph.2, label %.critedge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 2 uses
  %i.ad = lshr i8 %i.ac, 4                        ; 2 uses
  %i.ae = icmp ult i8 %i.ac, -96
  %i.af = or disjoint i8 %i.ad, 48
  %narrow.i.2 = add nuw nsw i8 %i.ad, 87
  %i.ag = select i1 %i.ae, i8 %i.af, i8 %narrow.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ag, ptr %i.z, align 1, !tbaa !17
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.aj = and i8 %i.ai, 15                        ; 3 uses
  %i.ak = icmp samesign ult i8 %i.aj, 10
  %i.al = or disjoint i8 %i.aj, 48
  %narrow.i17.2 = add nuw nsw i8 %i.aj, 87
  %i.am = select i1 %i.ak, i8 %i.al, i8 %narrow.i17.2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !17
  %.not1 = icmp eq i32 %2, 3
  br i1 %.not1, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17  ; 2 uses
  %i.aq = lshr i8 %i.ap, 4                        ; 2 uses
  %i.ar = icmp ult i8 %i.ap, -96
  %i.as = or disjoint i8 %i.aq, 48
  %narrow.i.3 = add nuw nsw i8 %i.aq, 87
  %i.at = select i1 %i.ar, i8 %i.as, i8 %narrow.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.at, ptr %i.an, align 1, !tbaa !17
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aw = and i8 %i.av, 15                        ; 3 uses
  %i.ax = icmp samesign ult i8 %i.aw, 10
  %i.ay = or disjoint i8 %i.aw, 48
  %narrow.i17.3 = add nuw nsw i8 %i.aw, 87
  %i.az = select i1 %i.ax, i8 %i.ay, i8 %narrow.i17.3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.az, ptr %i.au, align 1, !tbaa !17
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.m, %.lr.ph ], [ %i.z, %.lr.ph.1 ], [ %i.an, %.lr.ph.2 ], [ %i.ba, %.lr.ph.3 ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !17
  ret ptr %0
}

declare i32 @ucm_findFallback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @ucm_optimizeStates(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #8

declare void @udata_writeBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { allocsize(0) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTS12NewConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!11 = !{!"p1 _ZTS7UCMFile", !9, i64 0}
!12 = !{!"p1 short", !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"_ZTS8MBCSData", !10, i64 0, !11, i64 32, !5, i64 40, !6, i64 65576, !12, i64 65584, !5, i64 65592, !5, i64 67768, !5, i64 196664, !13, i64 454456, !6, i64 454464, !6, i64 454468, !5, i64 454472, !14, i64 456520, !5, i64 456522, !5, i64 456523}
!16 = !{!15, !5, i64 456522}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !5, i64 456523}
!19 = !{!15, !14, i64 456520}
!20 = !{!15, !11, i64 32}
!21 = !{!15, !12, i64 65584}
!22 = !{!15, !13, i64 454456}
!23 = !{!"_ZTS20UConverterStaticData", !6, i64 0, !5, i64 4, !6, i64 64, !5, i64 68, !5, i64 69, !5, i64 70, !5, i64 71, !5, i64 72, !5, i64 76, !5, i64 77, !5, i64 78, !5, i64 79, !5, i64 80, !5, i64 81}
!24 = !{!23, !5, i64 79}
!25 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS8UCMTable", !9, i64 0}
!28 = !{!"_ZTS9UCMStates", !5, i64 0, !5, i64 131072, !5, i64 131584, !6, i64 132096, !6, i64 132100, !6, i64 132104, !6, i64 132108, !5, i64 132112, !5, i64 132113}
!29 = !{!"_ZTS7UCMFile", !27, i64 0, !27, i64 8, !28, i64 16, !5, i64 132132}
!30 = !{!29, !6, i64 132120}
!31 = !{!29, !6, i64 132124}
!32 = !{!14, !14, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!15, !6, i64 454464}
!37 = !{!6, !6, i64 0}
!38 = !{!15, !6, i64 454468}
!39 = !{!15, !6, i64 65576}
!40 = !{!29, !5, i64 132129}
!41 = !{!29, !6, i64 132112}
!42 = !{!15, !9, i64 0}
!43 = !{!15, !9, i64 8}
!44 = !{!15, !9, i64 16}
!45 = !{!15, !9, i64 24}
!46 = distinct !{!46, !33, !34, !35}
!47 = distinct !{!47, !33, !34, !35}
!48 = distinct !{!48, !33, !35, !34}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33, !34, !35}
!58 = distinct !{!58, !33, !34, !35}
!59 = distinct !{!59, !33, !34}
!60 = distinct !{!60, !33, !34}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33, !34, !35}
!65 = distinct !{!65, !33, !34}
!66 = distinct !{!66, !33, !34}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = !{!"p1 _ZTS9UCMapping", !9, i64 0}
!70 = !{!"p1 int", !9, i64 0}
!71 = !{!"_ZTS8UCMTable", !69, i64 0, !6, i64 8, !6, i64 12, !70, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !6, i64 40, !6, i64 44, !70, i64 48, !5, i64 56, !5, i64 57, !5, i64 58}
!72 = !{!71, !5, i64 56}
!73 = !{!23, !5, i64 69}
!74 = !{!71, !5, i64 57}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!23, !5, i64 78}
!77 = !{!23, !5, i64 77}
!78 = !{!71, !6, i64 12}
!79 = !{!71, !69, i64 0}
!80 = !{!"_ZTS9UCMapping", !6, i64 0, !5, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11}
!81 = !{!80, !6, i64 0}
!82 = !{!80, !5, i64 10}
!83 = !{!80, !5, i64 9}
!84 = !{!80, !5, i64 11}
!85 = !{!28, !6, i64 132104}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33, !34, !35}
!88 = distinct !{!88, !33, !34, !35}
!89 = !{!"_ZTS11_MBCSHeader", !5, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!90 = !{!89, !6, i64 32}
!91 = !{!89, !6, i64 36}
!92 = !{!89, !6, i64 4}
!93 = !{!89, !6, i64 8}
!94 = !{!89, !6, i64 12}
!95 = !{!89, !6, i64 16}
!96 = !{!89, !6, i64 20}
!97 = !{!89, !6, i64 28}
!98 = !{!89, !6, i64 24}
!99 = distinct !{!99, !33}
!100 = !{!"_ZTS16_MBCSToUFallback", !6, i64 0, !6, i64 4}
!101 = !{!100, !6, i64 4}
!102 = !{!100, !6, i64 0}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
end_hunk_1
