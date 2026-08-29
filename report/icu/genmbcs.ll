Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia:bb.a
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !64
  %i.hr = call i32 @ucm_findFallback(ptr noundef nonnull %i.ho, i32 noundef %i.hq, i32 noundef %i.gc) ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %3, ptr %i.hv, align 4, !tbaa !100
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ac:                                            ; preds = %bb.aa
  %i.hw = load i32, ptr %i.hp, align 8, !tbaa !64 ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 8191
  br i1 %i.hx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.hz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hy, ptr noundef nonnull @.str.17, i32 noundef range(i32 -2147483648, 65536) %3) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ia = sext i32 %i.hw to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.ia ; 2 uses
  store i32 %i.gc, ptr %i.ib, align 8, !tbaa !102
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 %3, ptr %i.ic, align 4, !tbaa !100
  %i.id = add nsw i32 %i.hw, 1
  store i32 %i.id, ptr %i.hp, align 8, !tbaa !64
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.af:                                            ; preds = %bb.y
  %i.ie = trunc i32 %3 to i16
  %i.if = load ptr, ptr %i.gd, align 8, !tbaa !25
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.gf
  store i16 %i.ie, ptr %i.ig, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ag:                                            ; preds = %bb.f
  %i.ih = and i32 %.lcssa190, 65535
  %i.ii = add i32 %i.ih, %.0155.lcssa             ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 65584 ; 4 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !25 ; 5 uses
  %i.il = zext i32 %i.ii to i64                   ; 4 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.il ; 3 uses
  %i.in = load i16, ptr %i.im, align 2, !tbaa !42 ; 4 uses
  %i.io = zext i16 %i.in to i32                   ; 2 uses
  %i.ip = icmp ult i16 %i.in, -2
  br i1 %i.ip, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.iq = icmp ult i16 %i.in, -10240
  br i1 %i.iq, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ir = icmp samesign ult i16 %i.in, -8192
  br i1 %i.ir, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.is = shl nuw nsw i32 %i.io, 10
  %i.it = and i32 %i.is, 1047552
  %i.iu = add nuw nsw i32 %i.it, 65536
  %i.iv = add i32 %i.ii, 1
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !42
  %i.iz = and i16 %i.iy, 1023
  %i.ja = zext nneg i16 %i.iz to i32
  %i.jb = or disjoint i32 %i.iu, %i.ja
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jc = add i32 %i.ii, 1
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !42
  %i.jg = zext i16 %i.jf to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0 = phi i32 [ %i.jg, %bb.ak ], [ %i.jb, %bb.aj ], [ %i.io, %bb.ah ] ; 2 uses
  %i.jh = icmp slt i8 %4, 0
  br i1 %i.jh, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ji = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not = icmp eq i8 %i.ji, 0
  br i1 %.not, label %.thread188, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.jk = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.jl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.14, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0) #16 ; 0 uses
  br label %.thread188

bb.ao:                                            ; preds = %bb.al
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.jn = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.jo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jm, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0) #16 ; 0 uses
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ap:                                            ; preds = %bb.ag
  %i.jp = icmp sgt i8 %4, 0
  br i1 %i.jp, label %bb.aq, label %.thread188

bb.aq:                                            ; preds = %bb.ap
  %i.jq = icmp slt i32 %3, 65536
  br i1 %i.jq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jr = add i32 %i.ii, 1
  store i16 -8191, ptr %i.im, align 2, !tbaa !42
  %i.js = trunc i32 %3 to i16
  %i.jt = zext i32 %i.jr to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.jt
  store i16 %i.js, ptr %i.ju, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.as:                                            ; preds = %bb.aq
  %i.jv = lshr i32 %3, 10
  %i.jw = trunc i32 %i.jv to i16
  %i.jx = add i16 %i.jw, -9280
  %i.jy = add i32 %i.ii, 1
  store i16 %i.jx, ptr %i.im, align 2, !tbaa !42
  %i.jz = trunc i32 %3 to i16
  %i.ka = and i16 %i.jz, 1023
  %i.kb = or disjoint i16 %i.ka, -9216
  %i.kc = zext i32 %i.jy to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.kc
  store i16 %i.kb, ptr %i.kd, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

.thread188:                                       ; preds = %bb.an, %bb.am, %bb.ap
  %i.ke = icmp slt i32 %3, 55296
  br i1 %i.ke, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread188
  %i.kf = trunc i32 %3 to i16
  %i.kg = load ptr, ptr %i.ij, align 8, !tbaa !25
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.il
  store i16 %i.kf, ptr %i.kh, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.au:                                            ; preds = %.thread188
  %i.ki = icmp samesign ult i32 %3, 65536
  br i1 %i.ki, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kj = load ptr, ptr %i.ij, align 8, !tbaa !25 ; 2 uses
  %i.kk = add i32 %i.ii, 1
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.kj, i64 %i.il
  store i16 -8192, ptr %i.kl, align 2, !tbaa !42
  %i.km = trunc nuw i32 %3 to i16
  %i.kn = zext i32 %i.kk to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kj, i64 %i.kn
  store i16 %i.km, ptr %i.ko, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.aw:                                            ; preds = %bb.au
  %i.kp = lshr i32 %3, 10
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = add i16 %i.kq, -10304
  %i.ks = load ptr, ptr %i.ij, align 8, !tbaa !25 ; 2 uses
  %i.kt = add i32 %i.ii, 1
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.il
  store i16 %i.kr, ptr %i.ku, align 2, !tbaa !42
  %i.kv = trunc i32 %3 to i16
  %i.kw = and i16 %i.kv, 1023
  %i.kx = or disjoint i16 %i.kw, -9216
  %i.ky = zext i32 %i.kt to i64
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.ky
  store i16 %i.kx, ptr %i.kz, align 2, !tbaa !42
  br label %_ZL11setFallbackP8MBCSDataji.exit

bb.ax:                                            ; preds = %bb.f
  %i.la = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.lb = call fastcc noundef ptr @_ZL10printBytesPcmPKhi(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  %i.lc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.la, ptr noundef nonnull @.str.16, i32 noundef %.lcssa190, ptr noundef nonnull %i.a, i32 noundef %3) #16 ; 0 uses
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !17      ; 6 uses
  %i.e = ashr i32 %2, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.g = load i8, ptr %i.f, align 2, !tbaa !9     ; 3 uses
  %4 = icmp eq i8 %i.g, 0
  %5 = icmp sgt i32 %2, 8191
  %or.cond.not = or i1 %5, %4                     ; 4 uses
  %i.h = lshr i32 %2, 4
  %.087.v = select i1 %or.cond.not, i32 63, i32 60
  %.087 = and i32 %.087.v, %i.h                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !42   ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !50   ; 5 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge, label %bb.d

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
  %i.x = load i16, ptr %i.w, align 2, !tbaa !42
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge.loopexit.split.loop.exit117, !llvm.loop !103

.critedge.loopexit.split.loop.exit117:            ; preds = %bb.f
  %i.z = trunc nuw i64 %indvars.iv3 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.loopexit.split.loop.exit117, %bb.c
  %.1 = phi i32 [ %i.o, %bb.c ], [ %i.z, %.critedge.loopexit.split.loop.exit117 ], [ %umin, %bb.d ], [ %umin, %bb.e ] ; 2 uses
  %i.aa = add i32 %.1, 64                         ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 64448
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ad = zext i8 %i.d to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %i.ad) #16 ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %.critedge
  %i.af = trunc i32 %.1 to i16                    ; 2 uses
  store i16 %i.af, ptr %i.k, align 2, !tbaa !42
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.ag = phi i16 [ %i.af, %bb.h ], [ %i.l, %bb.b ] ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add nuw nsw i32 %.087, %i.ah
  %.090 = select i1 %or.cond.not, i32 16, i32 64  ; 2 uses
  %.188.v = select i1 %or.cond.not, i32 15, i32 63
  %.188 = and i32 %.188.v, %2                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 67768 ; 3 uses
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !42 ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !52 ; 5 uses
  %.not98 = icmp eq i8 %i.g, 0
  br i1 %.not98, label %.critedge5, label %bb.k

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
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !42
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %.critedge5.loopexit.split.loop.exit119, !llvm.loop !104

.critedge5.loopexit.split.loop.exit119:           ; preds = %bb.m
  %i.az = trunc nuw i64 %indvars.iv1056 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %bb.l, %bb.k, %.critedge5.loopexit.split.loop.exit119, %bb.j
  %.3 = phi i32 [ %i.ap, %bb.j ], [ %i.az, %.critedge5.loopexit.split.loop.exit119 ], [ %umin107, %bb.k ], [ %umin107, %bb.l ] ; 5 uses
  %i.ba = add i32 %.3, %.090                      ; 4 uses
  %i.bb = icmp ugt i32 %i.ba, 65536
  br i1 %i.bb, label %bb.n, label %.preheader

.preheader:                                       ; preds = %.critedge5
  %i.bc = icmp ult i32 %.3, %i.ba
  br i1 %i.bc, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bd = zext i16 %i.ag to i64
  %i.be = zext nneg i32 %.087 to i64
  %i.bf = add nuw nsw i64 %i.bd, %i.be            ; 3 uses
  %i.bg = add nsw i32 %.090, -16
  %i.bh = lshr exact i32 %i.bg, 4
  %narrow = add nuw nsw i32 %i.bh, 1
  %i.bi = zext nneg i32 %narrow to i64            ; 2 uses
  br i1 %or.cond.not, label %.lr.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec11 = and i64 %i.bi, 536870908             ; 4 uses
  %i.bj = add nuw nsw i64 %i.bf, %n.vec11
  %i.bk = trunc nuw nsw i64 %n.vec11 to i32
  %i.bl = shl i32 %i.bk, 4
  %i.bm = add i32 %.3, %i.bl
  %i.bn = trunc i32 %.3 to i16
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction14 = add <4 x i16> %broadcast.splat13, <i16 0, i16 16, i16 32, i16 48>
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <4 x i16> [ %induction14, %vec.epilog.ph ], [ %vec.ind.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index15
  store <4 x i16> %vec.ind16, ptr %i.bp, align 2, !tbaa !42
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %vec.ind.next18 = add <4 x i16> %vec.ind16, splat (i16 64)
  %i.bq = icmp eq i64 %index.next17, %n.vec11
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec11, %i.bi
  br i1 %cmp.n19, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ %i.bf, %iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.4103.ph = phi i32 [ %.3, %iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.n:                                             ; preds = %.critedge5
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.bs = zext i8 %i.d to i32
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %i.bs) #16 ; 0 uses
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph ], [ %indvars.iv109.ph, %.lr.ph.preheader ] ; 2 uses
  %.4103 = phi i32 [ %i.bw, %.lr.ph ], [ %.4103.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bu = trunc nuw i32 %.4103 to i16
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv109
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !42
  %i.bw = add nuw nsw i32 %.4103, 16              ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.ba
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.pre.pre = load i16, ptr %i.al, align 2, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre = phi i16 [ %.pre.pre, %._crit_edge.loopexit ], [ 0, %.preheader ]
  store i32 %i.ba, ptr %i.ao, align 4, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i16 [ %.pre, %._crit_edge ], [ %i.am, %bb.i ]
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bz
  %i.cb = zext nneg i32 %.188 to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !42 ; 2 uses
  %i.ce = icmp slt i8 %3, 1
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = zext i8 %i.d to i16
  %i.cg = or disjoint i16 %i.cf, 3840
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ch = add nsw i32 %2, -57344
  %i.ci = icmp ult i32 %i.ch, 6400
  %i.cj = add nsw i32 %2, -983040
  %i.ck = icmp ult i32 %i.cj, 131072
  %or.cond101 = select i1 %i.ci, i1 true, i1 %i.ck
  %i.cl = zext i8 %i.d to i16                     ; 2 uses
  br i1 %or.cond101, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = or disjoint i16 %i.cl, 3072
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cn = or disjoint i16 %i.cl, 2048
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %.sink = phi i16 [ %i.cm, %bb.r ], [ %i.cn, %bb.s ], [ %i.cg, %bb.p ]
  store i16 %.sink, ptr %i.cc, align 2, !tbaa !42
  %i.co = zext i16 %i.cd to i32                   ; 2 uses
  %i.cp = icmp ugt i16 %i.cd, 255
  br i1 %i.cp, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cq = icmp sgt i8 %3, -1
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.cs = zext i8 %i.d to i32
  %i.ct = and i32 %i.co, 255
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %i.cs, i32 noundef %i.ct) #16 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cv = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not99 = icmp eq i8 %i.cv, 0
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.cx = zext i8 %i.d to i32
  %i.cy = and i32 %i.co, 255
  %i.cz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %i.cx, i32 noundef %i.cy) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.x, %bb.a, %bb.v, %bb.n, %bb.g
  %.091 = phi i8 [ 1, %bb.a ], [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.v ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.t ]
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 132129
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
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
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !33
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
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef 0) #16 ; 0 uses
  br label %bb.ap

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 454456
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !26 ; 5 uses
  %i.bt = ashr i32 %3, 10                         ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !9   ; 2 uses
  %.not = icmp eq i8 %i.bv, 0                     ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !19
  %i.by = zext i16 %i.bx to i32                   ; 3 uses
  %.not182 = icmp sgt i32 %3, %i.by
  %i.bz = lshr i32 %3, 4                          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.cb = zext i32 %i.bt to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb ; 4 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !42 ; 3 uses
  %i.ce = icmp eq i16 %i.cd, 0                    ; 2 uses
  br i1 %.not182, label %.thread235, label %.thread

bb.i:                                             ; preds = %bb.g
  %i.cf = lshr i32 %3, 4
  %i.cg = and i32 %i.cf, 63                       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.ci = zext i32 %i.bt to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !42 ; 2 uses
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
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !50
  br label %.critedge

.thread236:                                       ; preds = %.thread, %.thread235
  %.0161226230 = phi i32 [ %i.co, %.thread235 ], [ %i.cr, %.thread ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 4 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !50 ; 4 uses
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
  br i1 %i.dd, label %bb.l, label %.critedge, !llvm.loop !107

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv306 = phi i64 [ %i.dc, %.lr.ph ], [ %i.de, %bb.k ] ; 2 uses
  %i.de = add nsw i64 %indvars.iv306, -1          ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.k, label %.critedge.loopexit.split.loop.exit297, !llvm.loop !107

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
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !42
  %.pre.pre = load i16, ptr %i.dk, align 2, !tbaa !42
  %i.ds = zext i16 %.pre.pre to i32
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !33
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
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !50
  %i.fs = add nuw nsw i32 %.0161226231, %.pre     ; 2 uses
  br i1 %.not, label %bb.p, label %._crit_edge268

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
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !51 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !52 ; 6 uses
  %i.ge = icmp ne i8 %i.bv, 0
  %i.gf = icmp samesign ugt i32 %i.fw, 15
  %or.cond5 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gg = and i32 %i.fw, 48
  %i.gh = mul i32 %i.gg, %i.e                     ; 3 uses
  %.not256 = icmp eq i32 %i.gh, 0
  br i1 %.not256, label %.critedge7, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %bb.r
  %wide.trip.count = zext i32 %i.gh to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %bb.s, %.lr.ph249.preheader
  %indvars.iv265 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next266.3, %bb.s ] ; 5 uses
  %i.gi = trunc nuw i64 %indvars.iv265 to i32     ; 2 uses
  %i.gj = xor i32 %i.gi, -1
  %i.gk = add i32 %i.gd, %i.gj
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !17
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %.lr.ph249.1, label %.critedge7.loopexit

.lr.ph249.1:                                      ; preds = %.lr.ph249
  %i.gp = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.gq = xor i32 %i.gp, -2
  %i.gr = add i32 %i.gd, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !17
  %i.gv = icmp eq i8 %i.gu, 0
  br i1 %i.gv, label %.lr.ph249.2, label %.critedge7.loopexit.split.loop.exit327

.lr.ph249.2:                                      ; preds = %.lr.ph249.1
  %i.gw = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.gx = xor i32 %i.gw, -3
  %i.gy = add i32 %i.gd, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !17
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %.lr.ph249.3, label %.critedge7.loopexit.split.loop.exit325

.lr.ph249.3:                                      ; preds = %.lr.ph249.2
  %i.hd = trunc i64 %indvars.iv265 to i32         ; 2 uses
  %i.he = xor i32 %i.hd, -4
  %i.hf = add i32 %i.gd, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !17
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.s, label %.critedge7.loopexit.split.loop.exit323

bb.s:                                             ; preds = %.lr.ph249.3
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge7.loopexit, label %.lr.ph249, !llvm.loop !108

.critedge7.loopexit.split.loop.exit323:           ; preds = %.lr.ph249.3
  %i.hk = or disjoint i32 %i.hd, 3
  br label %.critedge7.loopexit

.critedge7.loopexit.split.loop.exit325:           ; preds = %.lr.ph249.2
  %i.hl = or disjoint i32 %i.gw, 2
  br label %.critedge7.loopexit

.critedge7.loopexit.split.loop.exit327:           ; preds = %.lr.ph249.1
  %i.hm = or disjoint i32 %i.gp, 1
  br label %.critedge7.loopexit

.critedge7.loopexit:                              ; preds = %.lr.ph249, %bb.s, %.critedge7.loopexit.split.loop.exit327, %.critedge7.loopexit.split.loop.exit325, %.critedge7.loopexit.split.loop.exit323
  %.0.lcssa.ph = phi i32 [ %i.hm, %.critedge7.loopexit.split.loop.exit327 ], [ %i.hk, %.critedge7.loopexit.split.loop.exit323 ], [ %i.hl, %.critedge7.loopexit.split.loop.exit325 ], [ %i.gh, %bb.s ], [ %i.gi, %.lr.ph249 ]
  %i.hn = lshr i32 %.0.lcssa.ph, 4
  br label %.critedge7

.critedge7:                                       ; preds = %.critedge7.loopexit, %bb.r
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %i.hn, %.critedge7.loopexit ]
  %i.ho = udiv i32 %.0.lcssa, %i.e
  %i.hp = shl i32 %i.e, 4
  %i.hq = mul i32 %i.hp, %i.ho
  %i.hr = sub i32 %i.gd, %i.hq
  br label %bb.t

bb.t:                                             ; preds = %.critedge7, %bb.q
  %.3 = phi i32 [ %i.hr, %.critedge7 ], [ %i.gd, %bb.q ] ; 3 uses
  %i.hs = add i32 %.3, %i.fv                      ; 4 uses
  %i.ht = shl i32 %i.e, 20
  %i.hu = icmp ugt i32 %i.hs, %i.ht
  br i1 %i.hu, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.hv = icmp ult i32 %.3, %i.hs
  br i1 %i.hv, label %.lr.ph254, label %._crit_edge255

.lr.ph254:                                        ; preds = %.preheader
  %i.hw = shl nsw i32 %i.e, 4
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.hy = icmp sgt i32 %2, 0
  br i1 %i.hy, label %.lr.ph.i199, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199:                                      ; preds = %bb.u
  %i.hz = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.ia = lshr i8 %i.hz, 4                        ; 2 uses
  %i.ib = icmp ult i8 %i.hz, -96
  %i.ic = or disjoint i8 %i.ia, 48
  %narrow.i.i203 = add nuw nsw i8 %i.ia, 87
  %i.id = select i1 %i.ib, i8 %i.ic, i8 %narrow.i.i203
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.id, ptr %i.a, align 1, !tbaa !17
  %i.if = and i8 %i.hz, 15                        ; 3 uses
  %i.ig = icmp samesign ult i8 %i.if, 10
  %i.ih = or disjoint i8 %i.if, 48
  %narrow.i17.i204 = add nuw nsw i8 %i.if, 87
  %i.ii = select i1 %i.ig, i8 %i.ih, i8 %narrow.i17.i204
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.ii, ptr %i.ie, align 1, !tbaa !17
  %.not318 = icmp eq i32 %2, 1
  br i1 %.not318, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.1

.lr.ph.i199.1:                                    ; preds = %.lr.ph.i199
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !17  ; 3 uses
  %i.im = lshr i8 %i.il, 4                        ; 2 uses
  %i.in = icmp ult i8 %i.il, -96
  %i.io = or disjoint i8 %i.im, 48
  %narrow.i.i203.1 = add nuw nsw i8 %i.im, 87
  %i.ip = select i1 %i.in, i8 %i.io, i8 %narrow.i.i203.1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ip, ptr %i.ij, align 1, !tbaa !17
  %i.ir = and i8 %i.il, 15                        ; 3 uses
  %i.is = icmp samesign ult i8 %i.ir, 10
  %i.it = or disjoint i8 %i.ir, 48
  %narrow.i17.i204.1 = add nuw nsw i8 %i.ir, 87
  %i.iu = select i1 %i.is, i8 %i.it, i8 %narrow.i17.i204.1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.iu, ptr %i.iq, align 1, !tbaa !17
  %i.iw = icmp sgt i32 %2, 2
  br i1 %i.iw, label %.lr.ph.i199.2, label %_ZL10printBytesPcmPKhi.exit206

.lr.ph.i199.2:                                    ; preds = %.lr.ph.i199.1
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !17  ; 3 uses
  %i.iz = lshr i8 %i.iy, 4                        ; 2 uses
  %i.ja = icmp ult i8 %i.iy, -96
  %i.jb = or disjoint i8 %i.iz, 48
  %narrow.i.i203.2 = add nuw nsw i8 %i.iz, 87
  %i.jc = select i1 %i.ja, i8 %i.jb, i8 %narrow.i.i203.2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.jc, ptr %i.iv, align 1, !tbaa !17
  %i.je = and i8 %i.iy, 15                        ; 3 uses
  %i.jf = icmp samesign ult i8 %i.je, 10
  %i.jg = or disjoint i8 %i.je, 48
  %narrow.i17.i204.2 = add nuw nsw i8 %i.je, 87
  %i.jh = select i1 %i.jf, i8 %i.jg, i8 %narrow.i17.i204.2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.jh, ptr %i.jd, align 1, !tbaa !17
  %.not319 = icmp eq i32 %2, 3
  br i1 %.not319, label %_ZL10printBytesPcmPKhi.exit206, label %.lr.ph.i199.3

.lr.ph.i199.3:                                    ; preds = %.lr.ph.i199.2
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !17  ; 3 uses
  %i.jl = lshr i8 %i.jk, 4                        ; 2 uses
  %i.jm = icmp ult i8 %i.jk, -96
  %i.jn = or disjoint i8 %i.jl, 48
  %narrow.i.i203.3 = add nuw nsw i8 %i.jl, 87
  %i.jo = select i1 %i.jm, i8 %i.jn, i8 %narrow.i.i203.3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.jo, ptr %i.ji, align 1, !tbaa !17
  %i.jq = and i8 %i.jk, 15                        ; 3 uses
  %i.jr = icmp samesign ult i8 %i.jq, 10
  %i.js = or disjoint i8 %i.jq, 48
  %narrow.i17.i204.3 = add nuw nsw i8 %i.jq, 87
  %i.jt = select i1 %i.jr, i8 %i.js, i8 %narrow.i17.i204.3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.jt, ptr %i.jp, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit206

_ZL10printBytesPcmPKhi.exit206:                   ; preds = %.lr.ph.i199, %.lr.ph.i199.1, %.lr.ph.i199.2, %.lr.ph.i199.3, %bb.u
  %.0.lcssa.i198 = phi ptr [ %i.a, %bb.u ], [ %i.ij, %.lr.ph.i199 ], [ %i.iv, %.lr.ph.i199.1 ], [ %i.ji, %.lr.ph.i199.2 ], [ %i.ju, %.lr.ph.i199.3 ]
  store i8 0, ptr %.0.lcssa.i198, align 1, !tbaa !17
  %i.jv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph254, %bb.v
  %.4253 = phi i32 [ %.3, %.lr.ph254 ], [ %i.kb, %bb.v ] ; 2 uses
  %.1164252 = phi i32 [ %i.fu, %.lr.ph254 ], [ %i.jy, %bb.v ] ; 2 uses
  %i.jw = lshr i32 %.4253, 4
  %i.jx = udiv i32 %i.jw, %i.e
  %i.jy = add i32 %.1164252, 1
  %i.jz = zext i32 %.1164252 to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.jz
  store i32 %i.jx, ptr %i.ka, align 4, !tbaa !51
  %i.kb = add i32 %.4253, %i.hw                   ; 2 uses
  %i.kc = icmp ult i32 %i.kb, %i.hs
  br i1 %i.kc, label %bb.v, label %._crit_edge255, !llvm.loop !109

._crit_edge255:                                   ; preds = %bb.v, %.preheader
  store i32 %i.hs, ptr %i.gc, align 4, !tbaa !52
  %.pre270 = load i32, ptr %i.fz, align 4, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge255, %bb.p
  %i.kd = phi i32 [ %.pre270, %._crit_edge255 ], [ %i.ga, %bb.p ]
  %i.ke = shl i32 %i.kd, 4                        ; 2 uses
  %i.kf = and i32 %i.ke, 1048560                  ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 456520 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 8, !tbaa !19
  %i.ki = zext i16 %i.kh to i32
  %.not187 = icmp sgt i32 %3, %i.ki
  br i1 %.not187, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kj = icmp samesign ugt i32 %i.kf, 65535
  br i1 %i.kj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i16 -257, ptr %i.kg, align 8, !tbaa !19
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.kk = trunc i32 %i.ke to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 454472
  %i.km = ashr i32 %3, 6
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kl, i64 %i.kn
  store i16 %i.kk, ptr %i.ko, align 2, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.w
  switch i32 %2, label %bb.af [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kq = load i8, ptr %1, align 1, !tbaa !17
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0170 = phi ptr [ %i.kp, %bb.ac ], [ %1, %bb.ab ] ; 2 uses
  %.0167 = phi i32 [ %i.ks, %bb.ac ], [ 0, %bb.ab ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  %i.ku = load i8, ptr %.0170, align 1, !tbaa !17
  %i.kv = zext i8 %i.ku to i32
  %i.kw = or disjoint i32 %.0167, %i.kv
  %i.kx = shl nuw nsw i32 %i.kw, 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.1171 = phi ptr [ %i.kt, %bb.ad ], [ %1, %bb.ab ] ; 2 uses
  %.1168 = phi i32 [ %i.kx, %bb.ad ], [ 0, %bb.ab ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.1171, i64 1
  %i.kz = load i8, ptr %.1171, align 1, !tbaa !17
  %i.la = zext i8 %i.kz to i32
  %i.lb = or disjoint i32 %.1168, %i.la
  %i.lc = shl nuw i32 %i.lb, 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.2172 = phi ptr [ %1, %bb.ab ], [ %i.ky, %bb.ae ]
  %.2169 = phi i32 [ 0, %bb.ab ], [ %i.lc, %bb.ae ] ; 3 uses
  %i.ld = load i8, ptr %.2172, align 1, !tbaa !17 ; 2 uses
  %i.le = zext i8 %i.ld to i32
  %i.lf = or disjoint i32 %.2169, %i.le           ; 2 uses
  %i.lg = add nuw nsw i32 %i.kf, %i.fw
  %i.lh = mul i32 %i.lg, %i.e
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.li ; 8 uses
  switch i32 %i.e, label %bb.aj [
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !42
  %i.ll = zext i16 %i.lk to i32
  %i.lm = trunc i32 %i.lf to i16
  store i16 %i.lm, ptr %i.lj, align 2, !tbaa !42
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.ln = load i8, ptr %i.lj, align 1, !tbaa !17
  %i.lo = zext i8 %i.ln to i32
  %i.lp = shl nuw nsw i32 %i.lo, 16
  %i.lq = lshr i32 %.2169, 16
  %i.lr = trunc i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 1 ; 2 uses
  store i8 %i.lr, ptr %i.lj, align 1, !tbaa !17
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !17
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 8
  %i.lw = or disjoint i32 %i.lv, %i.lp
  %i.lx = lshr exact i32 %.2169, 8
  %i.ly = trunc i32 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 2 ; 2 uses
  store i8 %i.ly, ptr %i.ls, align 1, !tbaa !17
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !17
  %i.mb = zext i8 %i.ma to i32
  %i.mc = or disjoint i32 %i.lw, %i.mb
  store i8 %i.ld, ptr %i.lz, align 1, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.md = load i32, ptr %i.lj, align 4, !tbaa !51
  store i32 %i.lf, ptr %i.lj, align 4, !tbaa !51
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ag
  %.0166 = phi i32 [ 0, %bb.af ], [ %i.ll, %bb.ag ], [ %i.mc, %bb.ah ], [ %i.md, %bb.ai ] ; 3 uses
  %i.me = lshr i32 %i.fw, 4
  %i.mf = add nuw nsw i32 %i.me, %i.fu
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.mg ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !51 ; 3 uses
  %i.mj = zext i32 %i.mi to i64
  %i.mk = and i32 %3, 15
  %i.ml = or disjoint i32 %i.mk, 16
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 1, %i.mm                ; 2 uses
  %i.mo = and i64 %i.mn, %i.mj
  %i.mp = icmp ne i64 %i.mo, 0
  %i.mq = icmp ne i32 %.0166, 0
  %or.cond9 = select i1 %i.mp, i1 true, i1 %i.mq
  br i1 %or.cond9, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.mr = icmp sgt i8 %4, -1
  br i1 %i.mr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.mt = icmp sgt i32 %2, 0
  br i1 %i.mt, label %.lr.ph.i208, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208:                                      ; preds = %bb.al
  %i.mu = load i8, ptr %1, align 1, !tbaa !17     ; 3 uses
  %i.mv = lshr i8 %i.mu, 4                        ; 2 uses
  %i.mw = icmp ult i8 %i.mu, -96
  %i.mx = or disjoint i8 %i.mv, 48
  %narrow.i.i212 = add nuw nsw i8 %i.mv, 87
  %i.my = select i1 %i.mw, i8 %i.mx, i8 %narrow.i.i212
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.my, ptr %i.a, align 1, !tbaa !17
  %i.na = and i8 %i.mu, 15                        ; 3 uses
  %i.nb = icmp samesign ult i8 %i.na, 10
  %i.nc = or disjoint i8 %i.na, 48
  %narrow.i17.i213 = add nuw nsw i8 %i.na, 87
  %i.nd = select i1 %i.nb, i8 %i.nc, i8 %narrow.i17.i213
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.nd, ptr %i.mz, align 1, !tbaa !17
  %.not316 = icmp eq i32 %2, 1
  br i1 %.not316, label %_ZL10printBytesPcmPKhi.exit215, label %.lr.ph.i208.1

.lr.ph.i208.1:                                    ; preds = %.lr.ph.i208
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !17  ; 3 uses
  %i.nh = lshr i8 %i.ng, 4                        ; 2 uses
  %i.ni = icmp ult i8 %i.ng, -96
  %i.nj = or disjoint i8 %i.nh, 48
  %narrow.i.i212.1 = add nuw nsw i8 %i.nh, 87
  %i.nk = select i1 %i.ni, i8 %i.nj, i8 %narrow.i.i212.1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.nk, ptr %i.ne, align 1, !tbaa !17
  %i.nm = and i8 %i.ng, 15                        ; 3 uses
  %i.nn = icmp samesign ult i8 %i.nm, 10
  %i.no = or disjoint i8 %i.nm, 48
  %narrow.i17.i213.1 = add nuw nsw i8 %i.nm, 87
  %i.np = select i1 %i.nn, i8 %i.no, i8 %narrow.i17.i213.1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.np, ptr %i.nl, align 1, !tbaa !17
  %i.nr = icmp sgt i32 %2, 2
  br i1 %i.nr, label %.lr.ph.i208.2, label %_ZL10printBytesPcmPKhi.exit215

.lr.ph.i208.2:                                    ; preds = %.lr.ph.i208.1
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !17  ; 3 uses
  %i.nu = lshr i8 %i.nt, 4                        ; 2 uses
  %i.nv = icmp ult i8 %i.nt, -96
  %i.nw = or disjoint i8 %i.nu, 48
  %narrow.i.i212.2 = add nuw nsw i8 %i.nu, 87
  %i.nx = select i1 %i.nv, i8 %i.nw, i8 %narrow.i.i212.2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.nx, ptr %i.nq, align 1, !tbaa !17
  %i.nz = and i8 %i.nt, 15                        ; 3 uses
  %i.oa = icmp samesign ult i8 %i.nz, 10
  %i.ob = or disjoint i8 %i.nz, 48
  %narrow.i17.i213.2 = add nuw nsw i8 %i.nz, 87
end_hunk_0
begin_hunk_1_@_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia:bb.a
  %i.pc = or disjoint i8 %i.pa, 48
  %narrow.i17.i222 = add nuw nsw i8 %i.pa, 87
  %i.pd = select i1 %i.pb, i8 %i.pc, i8 %narrow.i17.i222
  %i.pe = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.pd, ptr %i.oz, align 1, !tbaa !17
  %.not314 = icmp eq i32 %2, 1
  br i1 %.not314, label %_ZL10printBytesPcmPKhi.exit224, label %.lr.ph.i217.1

.lr.ph.i217.1:                                    ; preds = %.lr.ph.i217
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !17  ; 3 uses
  %i.ph = lshr i8 %i.pg, 4                        ; 2 uses
  %i.pi = icmp ult i8 %i.pg, -96
  %i.pj = or disjoint i8 %i.ph, 48
  %narrow.i.i221.1 = add nuw nsw i8 %i.ph, 87
  %i.pk = select i1 %i.pi, i8 %i.pj, i8 %narrow.i.i221.1
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.pk, ptr %i.pe, align 1, !tbaa !17
  %i.pm = and i8 %i.pg, 15                        ; 3 uses
  %i.pn = icmp samesign ult i8 %i.pm, 10
  %i.po = or disjoint i8 %i.pm, 48
  %narrow.i17.i222.1 = add nuw nsw i8 %i.pm, 87
  %i.pp = select i1 %i.pn, i8 %i.po, i8 %narrow.i17.i222.1
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.pp, ptr %i.pl, align 1, !tbaa !17
  %i.pr = icmp sgt i32 %2, 2
  br i1 %i.pr, label %.lr.ph.i217.2, label %_ZL10printBytesPcmPKhi.exit224

.lr.ph.i217.2:                                    ; preds = %.lr.ph.i217.1
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !17  ; 3 uses
  %i.pu = lshr i8 %i.pt, 4                        ; 2 uses
  %i.pv = icmp ult i8 %i.pt, -96
  %i.pw = or disjoint i8 %i.pu, 48
  %narrow.i.i221.2 = add nuw nsw i8 %i.pu, 87
  %i.px = select i1 %i.pv, i8 %i.pw, i8 %narrow.i.i221.2
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.px, ptr %i.pq, align 1, !tbaa !17
  %i.pz = and i8 %i.pt, 15                        ; 3 uses
  %i.qa = icmp samesign ult i8 %i.pz, 10
  %i.qb = or disjoint i8 %i.pz, 48
  %narrow.i17.i222.2 = add nuw nsw i8 %i.pz, 87
  %i.qc = select i1 %i.qa, i8 %i.qb, i8 %narrow.i17.i222.2
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.qc, ptr %i.py, align 1, !tbaa !17
  %.not315 = icmp eq i32 %2, 3
  br i1 %.not315, label %_ZL10printBytesPcmPKhi.exit224, label %.lr.ph.i217.3

.lr.ph.i217.3:                                    ; preds = %.lr.ph.i217.2
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !17  ; 3 uses
  %i.qg = lshr i8 %i.qf, 4                        ; 2 uses
  %i.qh = icmp ult i8 %i.qf, -96
  %i.qi = or disjoint i8 %i.qg, 48
  %narrow.i.i221.3 = add nuw nsw i8 %i.qg, 87
  %i.qj = select i1 %i.qh, i8 %i.qi, i8 %narrow.i.i221.3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.qj, ptr %i.qd, align 1, !tbaa !17
  %i.ql = and i8 %i.qf, 15                        ; 3 uses
  %i.qm = icmp samesign ult i8 %i.ql, 10
  %i.qn = or disjoint i8 %i.ql, 48
  %narrow.i17.i222.3 = add nuw nsw i8 %i.ql, 87
  %i.qo = select i1 %i.qm, i8 %i.qn, i8 %narrow.i17.i222.3
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.qo, ptr %i.qk, align 1, !tbaa !17
  br label %_ZL10printBytesPcmPKhi.exit224

_ZL10printBytesPcmPKhi.exit224:                   ; preds = %.lr.ph.i217, %.lr.ph.i217.1, %.lr.ph.i217.2, %.lr.ph.i217.3, %bb.an
  %.0.lcssa.i216 = phi ptr [ %i.a, %bb.an ], [ %i.pe, %.lr.ph.i217 ], [ %i.pq, %.lr.ph.i217.1 ], [ %i.qd, %.lr.ph.i217.2 ], [ %i.qp, %.lr.ph.i217.3 ]
  store i8 0, ptr %.0.lcssa.i216, align 1, !tbaa !17
  %i.qq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.27, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0166) #16 ; 0 uses
  %.pre271 = load i32, ptr %i.mh, align 4, !tbaa !51
  br label %.thread234

bb.ao:                                            ; preds = %bb.aj
  %i.qr = icmp slt i8 %4, 1
  br i1 %i.qr, label %.thread234, label %bb.ap

.thread234:                                       ; preds = %bb.am, %_ZL10printBytesPcmPKhi.exit224, %bb.ao
  %i.qs = phi i32 [ %i.mi, %bb.am ], [ %.pre271, %_ZL10printBytesPcmPKhi.exit224 ], [ %i.mi, %bb.ao ]
  %i.qt = trunc nuw i64 %i.mn to i32
  %i.qu = or i32 %i.qs, %i.qt
  store i32 %i.qu, ptr %i.mh, align 4, !tbaa !51
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread234, %_ZL10printBytesPcmPKhi.exit215, %_ZL10printBytesPcmPKhi.exit206, %_ZL10printBytesPcmPKhi.exit197, %bb.f, %_ZL10printBytesPcmPKhi.exit
  %.0173 = phi i8 [ 0, %bb.f ], [ 0, %_ZL10printBytesPcmPKhi.exit197 ], [ 0, %_ZL10printBytesPcmPKhi.exit206 ], [ 0, %_ZL10printBytesPcmPKhi.exit215 ], [ 0, %_ZL10printBytesPcmPKhi.exit ], [ 1, %.thread234 ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i8 %.0173
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZL10printBytesPcmPKhi(ptr noundef nonnull returned %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -128, 128) %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  %i.d = icmp ult i8 %i.b, -96
  %i.e = or disjoint i8 %i.c, 48
  %narrow.i = add nuw nsw i8 %i.c, 87
  %i.f = select i1 %i.d, i8 %i.e, i8 %narrow.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %0, align 1, !tbaa !17
  %i.h = load i8, ptr %1, align 1, !tbaa !17
  %i.i = and i8 %i.h, 15                          ; 3 uses
  %i.j = icmp samesign ult i8 %i.i, 10
  %i.k = or disjoint i8 %i.i, 48
  %narrow.i17 = add nuw nsw i8 %i.i, 87
  %i.l = select i1 %i.j, i8 %i.k, i8 %narrow.i17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.l, ptr %i.g, align 1, !tbaa !17
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = lshr i8 %i.o, 4                          ; 2 uses
  %i.q = icmp ult i8 %i.o, -96
  %i.r = or disjoint i8 %i.p, 48
  %narrow.i.1 = add nuw nsw i8 %i.p, 87
  %i.s = select i1 %i.q, i8 %i.r, i8 %narrow.i.1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.s, ptr %i.m, align 1, !tbaa !17
  %i.u = load i8, ptr %i.n, align 1, !tbaa !17
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !7, i64 456522}
!10 = !{!"_ZTS8MBCSData", !11, i64 0, !13, i64 32, !7, i64 40, !6, i64 65576, !14, i64 65584, !7, i64 65592, !7, i64 67768, !7, i64 196664, !15, i64 454456, !6, i64 454464, !6, i64 454468, !7, i64 454472, !16, i64 456520, !7, i64 456522, !7, i64 456523}
!11 = !{!"_ZTS12NewConverter", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7UCMFile", !12, i64 0}
!14 = !{!"p1 short", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !7, i64 456523}
!19 = !{!10, !16, i64 456520}
!20 = !{!10, !13, i64 32}
!21 = !{!10, !12, i64 0}
!22 = !{!10, !12, i64 8}
!23 = !{!10, !12, i64 16}
!24 = !{!10, !12, i64 24}
!25 = !{!10, !14, i64 65584}
!26 = !{!10, !15, i64 454456}
!27 = !{!28, !7, i64 56}
!28 = !{!"_ZTS8UCMTable", !29, i64 0, !6, i64 8, !6, i64 12, !30, i64 16, !6, i64 24, !6, i64 28, !15, i64 32, !6, i64 40, !6, i64 44, !30, i64 48, !7, i64 56, !7, i64 57, !7, i64 58}
!29 = !{!"p1 _ZTS9UCMapping", !12, i64 0}
!30 = !{!"p1 int", !12, i64 0}
!31 = !{!32, !7, i64 79}
!32 = !{!"_ZTS20UConverterStaticData", !6, i64 0, !7, i64 4, !6, i64 64, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 72, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 79, !7, i64 80, !7, i64 81}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!35 = !{!32, !7, i64 69}
!36 = !{!37, !6, i64 132120}
!37 = !{!"_ZTS7UCMFile", !38, i64 0, !38, i64 8, !39, i64 16, !7, i64 132132}
!38 = !{!"p1 _ZTS8UCMTable", !12, i64 0}
!39 = !{!"_ZTS9UCMStates", !7, i64 0, !7, i64 131072, !7, i64 131584, !6, i64 132096, !6, i64 132100, !6, i64 132104, !6, i64 132108, !7, i64 132112, !7, i64 132113}
!40 = !{!28, !7, i64 57}
!41 = !{!37, !6, i64 132124}
!42 = !{!16, !16, i64 0}
!43 = distinct !{!43, !44, !45, !46}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = distinct !{!48, !44, !45, !46}
!49 = distinct !{!49, !44, !46, !45}
!50 = !{!10, !6, i64 454464}
!51 = !{!6, !6, i64 0}
!52 = !{!10, !6, i64 454468}
!53 = !{!32, !7, i64 78}
!54 = !{!32, !7, i64 77}
!55 = !{!28, !6, i64 12}
!56 = !{!28, !29, i64 0}
!57 = !{!58, !6, i64 0}
!58 = !{!"_ZTS9UCMapping", !6, i64 0, !7, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!59 = !{!58, !7, i64 10}
!60 = !{!58, !7, i64 9}
!61 = !{!58, !7, i64 11}
!62 = distinct !{!62, !44}
!63 = !{!39, !6, i64 132104}
!64 = !{!10, !6, i64 65576}
!65 = distinct !{!65, !44}
!66 = !{!37, !7, i64 132129}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44, !45, !46}
!74 = distinct !{!74, !44, !45, !46}
!75 = distinct !{!75, !44, !45}
!76 = distinct !{!76, !44, !45}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44, !45, !46}
!81 = distinct !{!81, !44, !45}
!82 = distinct !{!82, !44, !45}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = !{!87, !6, i64 32}
!87 = !{!"_ZTS11_MBCSHeader", !7, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!88 = !{!87, !6, i64 36}
!89 = distinct !{!89, !44, !45, !46}
!90 = distinct !{!90, !44, !45, !46}
!91 = !{!37, !6, i64 132112}
!92 = !{!87, !6, i64 4}
!93 = !{!87, !6, i64 8}
!94 = !{!87, !6, i64 12}
!95 = !{!87, !6, i64 16}
!96 = !{!87, !6, i64 20}
!97 = !{!87, !6, i64 28}
!98 = !{!87, !6, i64 24}
!99 = distinct !{!99, !44}
!100 = !{!101, !6, i64 4}
!101 = !{!"_ZTS16_MBCSToUFallback", !6, i64 0, !6, i64 4}
!102 = !{!101, !6, i64 0}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !44, !45, !46}
!106 = distinct !{!106, !44, !46, !45}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
end_hunk_1
