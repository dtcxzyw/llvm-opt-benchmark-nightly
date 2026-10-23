Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia:bb.a
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
  %i.h = icmp eq i8 %i.g, 0                       ; 3 uses
  %i.i = icmp sgt i32 %2, 8191
  %or.cond.not = or i1 %i.i, %i.h                 ; 4 uses
  %i.j = lshr i32 %2, 4
  %.087.v = select i1 %or.cond.not, i32 63, i32 60
  %.087 = and i32 %.087.v, %i.j                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.l = zext i32 %i.e to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !32   ; 2 uses
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36   ; 5 uses
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sub i32 %i.q, %.087                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 67768
  %i.t = zext i32 %i.r to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 2 uses
  %i.u = icmp ugt i32 %i.q, %i.r
  br i1 %i.u, label %.lr.ph5, label %.critedge

.lr.ph5:                                          ; preds = %bb.d
  %i.v = zext i32 %i.q to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.w = icmp ugt i64 %i.x, %i.t
  br i1 %i.w, label %bb.f, label %.critedge, !llvm.loop !103

bb.f:                                             ; preds = %.lr.ph5, %bb.e
  %indvars.iv3 = phi i64 [ %i.v, %.lr.ph5 ], [ %i.x, %bb.e ] ; 2 uses
  %i.x = add nsw i64 %indvars.iv3, -1             ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !32
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %.critedge.loopexit.split.loop.exit118, !llvm.loop !103

.critedge.loopexit.split.loop.exit118:            ; preds = %bb.f
  %i.ab = trunc nuw i64 %indvars.iv3 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.critedge.loopexit.split.loop.exit118, %bb.c
  %.1 = phi i32 [ %i.q, %bb.c ], [ %i.ab, %.critedge.loopexit.split.loop.exit118 ], [ %umin, %bb.d ], [ %umin, %bb.e ] ; 2 uses
  %i.ac = add i32 %.1, 64                         ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 64448
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.af = zext i8 %i.d to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.18, i32 noundef %2, i32 noundef %i.af) #16 ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %.critedge
  %i.ah = trunc i32 %.1 to i16                    ; 2 uses
  store i16 %i.ah, ptr %i.m, align 2, !tbaa !32
  store i32 %i.ac, ptr %i.p, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.ai = phi i16 [ %i.ah, %bb.h ], [ %i.n, %bb.b ] ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add nuw nsw i32 %.087, %i.aj
  %.090 = select i1 %or.cond.not, i32 16, i32 64  ; 2 uses
  %.188.v = select i1 %or.cond.not, i32 15, i32 63
  %.188 = and i32 %.188.v, %2                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 67768 ; 3 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !32 ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38 ; 5 uses
  br i1 %i.h, label %.critedge5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sub i32 %i.ar, %.188                    ; 3 uses
  %i.at = zext i32 %i.as to i64
  %umin107 = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.as) ; 2 uses
  %i.au = icmp ugt i32 %i.ar, %i.as
  br i1 %i.au, label %.lr.ph8, label %.critedge5

.lr.ph8:                                          ; preds = %bb.k
  %i.av = zext i32 %i.ar to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.aw = icmp ugt i64 %i.ax, %i.at
  br i1 %i.aw, label %bb.m, label %.critedge5, !llvm.loop !104

bb.m:                                             ; preds = %.lr.ph8, %bb.l
  %indvars.iv1056 = phi i64 [ %i.av, %.lr.ph8 ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ax = add nsw i64 %indvars.iv1056, -1         ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !32
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.l, label %.critedge5.loopexit.split.loop.exit120, !llvm.loop !104

.critedge5.loopexit.split.loop.exit120:           ; preds = %bb.m
  %i.bb = trunc nuw i64 %indvars.iv1056 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %bb.l, %bb.k, %.critedge5.loopexit.split.loop.exit120, %bb.j
  %.3 = phi i32 [ %i.ar, %bb.j ], [ %i.bb, %.critedge5.loopexit.split.loop.exit120 ], [ %umin107, %bb.k ], [ %umin107, %bb.l ] ; 5 uses
  %i.bc = add i32 %.3, %.090                      ; 4 uses
  %i.bd = icmp ugt i32 %i.bc, 65536
  br i1 %i.bd, label %bb.n, label %.preheader

.preheader:                                       ; preds = %.critedge5
  %i.be = icmp ult i32 %.3, %i.bc
  br i1 %i.be, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bf = zext i16 %i.ai to i64
  %i.bg = zext nneg i32 %.087 to i64
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 3 uses
  %i.bi = add nsw i32 %.090, -16
  %i.bj = lshr exact i32 %i.bi, 4
  %narrow = add nuw nsw i32 %i.bj, 1
  %i.bk = zext nneg i32 %narrow to i64            ; 2 uses
  br i1 %or.cond.not, label %.lr.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec11 = and i64 %i.bk, 536870908             ; 4 uses
  %i.bl = add nuw nsw i64 %i.bh, %n.vec11
  %4 = trunc nuw nsw i64 %n.vec11 to i32
  %5 = shl i32 %4, 4
  %i.bm = add i32 %.3, %5
  %i.bn = trunc i32 %.3 to i16
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction14 = add <4 x i16> %broadcast.splat13, <i16 0, i16 16, i16 32, i16 48>
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.bh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <4 x i16> [ %induction14, %vec.epilog.ph ], [ %vec.ind.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index15
  store <4 x i16> %vec.ind16, ptr %i.bp, align 2, !tbaa !32
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %vec.ind.next18 = add <4 x i16> %vec.ind16, splat (i16 64)
  %i.bq = icmp eq i64 %index.next17, %n.vec11
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec11, %i.bk
  br i1 %cmp.n19, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv109.ph = phi i64 [ %i.bh, %iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.4103.ph = phi i32 [ %.3, %iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.n:                                             ; preds = %.critedge5
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.bs = zext i8 %i.d to i32
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %i.bs) #16 ; 0 uses
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph ], [ %indvars.iv109.ph, %.lr.ph.preheader ] ; 2 uses
  %.4103 = phi i32 [ %i.bw, %.lr.ph ], [ %.4103.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bu = trunc nuw i32 %.4103 to i16
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv109
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !32
  %i.bw = add nuw nsw i32 %.4103, 16              ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.bc
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.pre.pre = load i16, ptr %i.an, align 2, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre = phi i16 [ %.pre.pre, %._crit_edge.loopexit ], [ 0, %.preheader ]
  store i32 %i.bc, ptr %i.aq, align 4, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i16 [ %.pre, %._crit_edge ], [ %i.ao, %bb.i ]
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bz
  %i.cb = zext nneg i32 %.188 to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !32 ; 2 uses
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
  store i16 %.sink, ptr %i.cc, align 2, !tbaa !32
  %i.co = zext i16 %i.cd to i32                   ; 2 uses
  %i.cp = icmp ugt i16 %i.cd, 255
  br i1 %i.cp, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cq = icmp sgt i8 %3, -1
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.cs = zext i8 %i.d to i32
  %i.ct = and i32 %i.co, 255
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %i.cs, i32 noundef %i.ct) #16 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cv = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not99 = icmp eq i8 %i.cv, 0
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !26
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
end_hunk_0
