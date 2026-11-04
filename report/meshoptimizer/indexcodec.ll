Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/indexcodec?download=true
inline.NumInlined: 43
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@meshopt_decodeIndexBuffer:bb.a
  %i.hu = shl nuw nsw i32 %i.ht, 7
  %i.hv = or disjoint i32 %i.hu, %i.hp            ; 2 uses
  %i.hw = icmp slt i8 %i.hr, 0
  br i1 %i.hw, label %bb.am, label %_ZN7meshoptL11decodeIndexERPKhj.exit160

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %.3191, i64 3 ; 2 uses
  %i.hy = load i8, ptr %i.hq, align 1, !tbaa !11  ; 2 uses
  %i.hz = and i8 %i.hy, 127
  %i.ia = zext nneg i8 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.ia, 14
  %i.ic = or disjoint i32 %i.ib, %i.hv            ; 2 uses
  %i.id = icmp slt i8 %i.hy, 0
  br i1 %i.id, label %bb.an, label %_ZN7meshoptL11decodeIndexERPKhj.exit160

bb.an:                                            ; preds = %bb.am
  %i.ie = getelementptr inbounds nuw i8, ptr %.3191, i64 4 ; 2 uses
  %i.if = load i8, ptr %i.hx, align 1, !tbaa !11  ; 2 uses
  %i.ig = and i8 %i.if, 127
  %i.ih = zext nneg i8 %i.ig to i32
  %i.ii = shl nuw nsw i32 %i.ih, 21
  %i.ij = or disjoint i32 %i.ii, %i.ic            ; 2 uses
  %i.ik = icmp slt i8 %i.if, 0
  br i1 %i.ik, label %bb.ao, label %_ZN7meshoptL11decodeIndexERPKhj.exit160

bb.ao:                                            ; preds = %bb.an
  %i.il = getelementptr inbounds nuw i8, ptr %.3191, i64 5
  %i.im = load i8, ptr %i.ie, align 1, !tbaa !11
  %i.in = zext i8 %i.im to i32
  %i.io = shl i32 %i.in, 28
  %i.ip = or disjoint i32 %i.io, %i.ij
  br label %_ZN7meshoptL11decodeIndexERPKhj.exit160

_ZN7meshoptL11decodeIndexERPKhj.exit160:          ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.9 = phi ptr [ %i.hl, %bb.ak ], [ %i.il, %bb.ao ], [ %i.ie, %bb.an ], [ %i.hx, %bb.am ], [ %i.hq, %bb.al ]
  %.017.i.i159 = phi i32 [ %i.hn, %bb.ak ], [ %i.ip, %bb.ao ], [ %i.ij, %bb.an ], [ %i.ic, %bb.am ], [ %i.hv, %bb.al ] ; 2 uses
  %i.iq = lshr i32 %.017.i.i159, 1
  %i.ir = and i32 %.017.i.i159, 1
  %i.is = sub nsw i32 0, %i.ir
  %i.it = xor i32 %i.iq, %i.is
  %i.iu = add i32 %i.it, %.2135                   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN7meshoptL11decodeIndexERPKhj.exit160, %bb.aj
  %.4192 = phi ptr [ %.9, %_ZN7meshoptL11decodeIndexERPKhj.exit160 ], [ %.3191, %bb.aj ] ; 7 uses
  %.3136 = phi i32 [ %i.iu, %_ZN7meshoptL11decodeIndexERPKhj.exit160 ], [ %.2135, %bb.aj ] ; 2 uses
  %.0125 = phi i32 [ %i.iu, %_ZN7meshoptL11decodeIndexERPKhj.exit160 ], [ %i.fr, %bb.aj ] ; 5 uses
  %i.iv = icmp eq i32 %i.fh, 15                   ; 2 uses
  br i1 %i.iv, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %.4192, i64 1 ; 2 uses
  %i.ix = load i8, ptr %.4192, align 1, !tbaa !11 ; 2 uses
  %i.iy = zext i8 %i.ix to i32                    ; 2 uses
  %i.iz = icmp sgt i8 %i.ix, -1
  br i1 %i.iz, label %_ZN7meshoptL11decodeIndexERPKhj.exit162, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ja = and i32 %i.iy, 127
  %i.jb = getelementptr inbounds nuw i8, ptr %.4192, i64 2 ; 2 uses
  %i.jc = load i8, ptr %i.iw, align 1, !tbaa !11  ; 2 uses
  %i.jd = and i8 %i.jc, 127
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 7
  %i.jg = or disjoint i32 %i.jf, %i.ja            ; 2 uses
  %i.jh = icmp slt i8 %i.jc, 0
  br i1 %i.jh, label %bb.as, label %_ZN7meshoptL11decodeIndexERPKhj.exit162

bb.as:                                            ; preds = %bb.ar
  %i.ji = getelementptr inbounds nuw i8, ptr %.4192, i64 3 ; 2 uses
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !11  ; 2 uses
  %i.jk = and i8 %i.jj, 127
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = shl nuw nsw i32 %i.jl, 14
  %i.jn = or disjoint i32 %i.jm, %i.jg            ; 2 uses
  %i.jo = icmp slt i8 %i.jj, 0
  br i1 %i.jo, label %bb.at, label %_ZN7meshoptL11decodeIndexERPKhj.exit162

bb.at:                                            ; preds = %bb.as
  %i.jp = getelementptr inbounds nuw i8, ptr %.4192, i64 4 ; 2 uses
  %i.jq = load i8, ptr %i.ji, align 1, !tbaa !11  ; 2 uses
  %i.jr = and i8 %i.jq, 127
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 21
  %i.ju = or disjoint i32 %i.jt, %i.jn            ; 2 uses
  %i.jv = icmp slt i8 %i.jq, 0
  br i1 %i.jv, label %bb.au, label %_ZN7meshoptL11decodeIndexERPKhj.exit162

bb.au:                                            ; preds = %bb.at
  %i.jw = getelementptr inbounds nuw i8, ptr %.4192, i64 5
  %i.jx = load i8, ptr %i.jp, align 1, !tbaa !11
  %i.jy = zext i8 %i.jx to i32
  %i.jz = shl i32 %i.jy, 28
  %i.ka = or disjoint i32 %i.jz, %i.ju
  br label %_ZN7meshoptL11decodeIndexERPKhj.exit162

_ZN7meshoptL11decodeIndexERPKhj.exit162:          ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %.10 = phi ptr [ %i.iw, %bb.aq ], [ %i.jw, %bb.au ], [ %i.jp, %bb.at ], [ %i.ji, %bb.as ], [ %i.jb, %bb.ar ]
  %.017.i.i161 = phi i32 [ %i.iy, %bb.aq ], [ %i.ka, %bb.au ], [ %i.ju, %bb.at ], [ %i.jn, %bb.as ], [ %i.jg, %bb.ar ] ; 2 uses
  %i.kb = lshr i32 %.017.i.i161, 1
  %i.kc = and i32 %.017.i.i161, 1
  %i.kd = sub nsw i32 0, %i.kc
  %i.ke = xor i32 %i.kb, %i.kd
  %i.kf = add i32 %i.ke, %.3136                   ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %_ZN7meshoptL11decodeIndexERPKhj.exit162, %bb.ap
  %.5193 = phi ptr [ %.10, %_ZN7meshoptL11decodeIndexERPKhj.exit162 ], [ %.4192, %bb.ap ]
  %.4137 = phi i32 [ %i.kf, %_ZN7meshoptL11decodeIndexERPKhj.exit162 ], [ %.3136, %bb.ap ]
  %.0 = phi i32 [ %i.kf, %_ZN7meshoptL11decodeIndexERPKhj.exit162 ], [ %i.fz, %bb.ap ] ; 5 uses
  br i1 %i.q, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kg = trunc i32 %.0126 to i16
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0140205 ; 3 uses
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !14
  %i.ki = trunc i32 %.0125 to i16
  %i.kj = getelementptr i8, ptr %i.kh, i64 2
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !14
  %i.kk = trunc i32 %.0 to i16
  %i.kl = getelementptr i8, ptr %i.kh, i64 4
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !14
  br label %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163

bb.ax:                                            ; preds = %bb.av
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0140205 ; 3 uses
  store i32 %.0126, ptr %i.km, align 4, !tbaa !10
  %i.kn = getelementptr i8, ptr %i.km, i64 4
  store i32 %.0125, ptr %i.kn, align 4, !tbaa !10
  %i.ko = getelementptr i8, ptr %i.km, i64 8
  store i32 %.0, ptr %i.ko, align 4, !tbaa !10
  br label %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163

_ZN7meshoptL13writeTriangleEPvmmjjj.exit163:      ; preds = %bb.aw, %bb.ax
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0195203
  store i32 %.0126, ptr %i.kp, align 4, !tbaa !10
  %i.kq = add nuw nsw i64 %.0195203, 1            ; 2 uses
  %i.kr = and i64 %i.kq, 15
  %i.ks = or i1 %i.fk, %i.hk
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kr
  store i32 %.0125, ptr %i.kt, align 4, !tbaa !10
  %i.ku = zext i1 %i.ks to i64
  %i.kv = add nuw nsw i64 %i.kq, %i.ku            ; 2 uses
  %i.kw = and i64 %i.kv, 15
  %i.kx = or i1 %i.fs, %i.iv
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kw
  store i32 %.0, ptr %i.ky, align 4, !tbaa !10
  %i.kz = zext i1 %i.kx to i64
  %i.la = add nuw nsw i64 %i.kv, %i.kz
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0198202 ; 2 uses
  store i32 %.0125, ptr %i.lb, align 8, !tbaa !10
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  store i32 %.0126, ptr %i.lc, align 4, !tbaa !10
  %i.ld = add nuw nsw i64 %.0198202, 1
  %i.le = and i64 %i.ld, 15
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.le ; 2 uses
  store i32 %.0, ptr %i.lf, align 8, !tbaa !10
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i32 %.0125, ptr %i.lg, align 4, !tbaa !10
  %i.lh = add nuw nsw i64 %.0198202, 2
  %i.li = and i64 %i.lh, 15
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.li ; 2 uses
  store i32 %.0126, ptr %i.lj, align 8, !tbaa !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 %.0, ptr %i.lk, align 4, !tbaa !10
  %i.ll = add nuw nsw i64 %.0198202, 3
  br label %_ZN7meshoptL13writeTriangleEPvmmjjj.exit

_ZN7meshoptL13writeTriangleEPvmmjjj.exit:         ; preds = %bb.s, %bb.r, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163
  %.1199.in = phi i64 [ %i.ll, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163 ], [ %i.fc, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156 ], [ %i.co, %bb.r ], [ %i.co, %bb.s ]
  %.2197.in = phi i64 [ %i.la, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163 ], [ %i.er, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156 ], [ %.1196.in, %bb.r ], [ %.1196.in, %bb.s ]
  %.6194 = phi ptr [ %.5193, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163 ], [ %.0189204, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156 ], [ %.2, %bb.r ], [ %.2, %bb.s ] ; 2 uses
  %.5138 = phi i32 [ %.4137, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163 ], [ %.0133208, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156 ], [ %.1134, %bb.r ], [ %.1134, %bb.s ]
  %.6 = phi i32 [ %.5, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit163 ], [ %i.dy, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit156 ], [ %.1130, %bb.r ], [ %.1130, %bb.s ]
  %.2197 = and i64 %.2197.in, 15
  %.1199 = and i64 %.1199.in, 15
  %i.lm = add i64 %.0140205, 3                    ; 2 uses
  %.not154 = icmp ult i64 %i.lm, %1
  br i1 %.not154, label %bb.e, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %_ZN7meshoptL13writeTriangleEPvmmjjj.exit, %bb.d
  %.0189.lcssa = phi ptr [ %i.n, %bb.d ], [ %.6194, %_ZN7meshoptL13writeTriangleEPvmmjjj.exit ]
  %.not155 = icmp eq ptr %.0189.lcssa, %i.p
  %. = select i1 %.not155, i32 0, i32 -3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge
  %.1 = phi i32 [ %., %.critedge ], [ -2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %bb.c, %bb.b, %bb.a
  %.3 = phi i32 [ -1, %bb.b ], [ -2, %bb.a ], [ %.1, %.loopexit ], [ -1, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @meshopt_encodeIndexSequence(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca [2 x i32], align 8                  ; 4 uses
  %i.a = add i64 %3, 5
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_ZN7meshoptL19gEncodeIndexVersionE, align 4, !tbaa !10
  %i.d = trunc i32 %i.c to i8
  %i.e = or i8 %i.d, -48
  store i8 %i.e, ptr %0, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i64 0, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %.not3747.not = icmp eq i64 %3, 0
  br i1 %.not3747.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN7meshoptL11encodeVByteERPhj.exit
  %i.i = phi i32 [ %i.k, %_ZN7meshoptL11encodeVByteERPhj.exit ], [ 0, %bb.b ]
  %.03350 = phi i32 [ %i.o, %_ZN7meshoptL11encodeVByteERPhj.exit ], [ 0, %bb.b ]
  %.03549 = phi i64 [ %i.ab, %_ZN7meshoptL11encodeVByteERPhj.exit ], [ 0, %bb.b ] ; 2 uses
  %.04348 = phi ptr [ %i.z, %_ZN7meshoptL11encodeVByteERPhj.exit ], [ %i.f, %bb.b ] ; 2 uses
  %.not = icmp ult ptr %.04348, %i.h
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03549
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 4 uses
  %5 = add i32 %i.k, -30
  %i.l = sub i32 %5, %i.i
  %i.m = icmp ult i32 %i.l, -59
  %i.n = zext i1 %i.m to i32
  %i.o = xor i32 %.03350, %i.n                    ; 3 uses
  %6 = zext nneg i32 %i.o to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %6 ; 2 uses
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %i.p = sub i32 %i.k, %8                         ; 2 uses
  %i.q = shl i32 %i.p, 2
  %i.r = ashr i32 %i.p, 30
  %i.s = and i32 %i.r, -2
  %i.t = xor i32 %i.s, %i.q
  %i.u = or i32 %i.t, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.245 = phi ptr [ %.04348, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %.0.i = phi i32 [ %i.u, %bb.c ], [ %i.aa, %bb.d ] ; 3 uses
  %i.v = and i32 %.0.i, 127
  %.inv.i = icmp ult i32 %.0.i, 128
  %i.w = select i1 %.inv.i, i32 0, i32 128
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.245, i64 1 ; 3 uses
  store i8 %i.y, ptr %.245, align 1, !tbaa !11
  %i.aa = lshr i32 %.0.i, 7                       ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN7meshoptL11encodeVByteERPhj.exit, label %bb.d, !llvm.loop !0

_ZN7meshoptL11encodeVByteERPhj.exit:              ; preds = %bb.d
  store i32 %i.k, ptr %7, align 4, !tbaa !10
  %i.ab = add nuw i64 %.03549, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %_ZN7meshoptL11encodeVByteERPhj.exit, %bb.b
  %.043.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.z, %_ZN7meshoptL11encodeVByteERPhj.exit ] ; 3 uses
  %.old38 = icmp ugt ptr %.043.lcssa, %i.h
  br i1 %.old38, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  store i32 0, ptr %.043.lcssa, align 1
  %scevgep = getelementptr i8, ptr %.043.lcssa, i64 4
  %i.ac = ptrtoint ptr %scevgep to i64
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %.preheader.preheader
  %.1 = phi i64 [ 0, %.critedge ], [ %i.ae, %.preheader.preheader ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.2 = phi i64 [ %.1, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @meshopt_encodeIndexSequenceBound(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 1, %bb.a ] ; 4 uses
  %i.a = icmp samesign ult i64 %indvars.iv, 32
  %i.b = shl nuw nsw i64 1, %indvars.iv
  %i.c = icmp ugt i64 %1, %i.b
  %i.d = select i1 %i.a, i1 %i.c, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %indvars.iv to i8
  %.lhs.trunc = add i8 %i.e, 8
  %i.f = udiv i8 %.lhs.trunc, 7
  %i.g = zext nneg i8 %i.f to i64
  %i.h = mul i64 %0, %i.g
  %i.i = add i64 %i.h, 5
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -3, 1) i32 @meshopt_decodeIndexSequence(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca [2 x i32], align 8                  ; 5 uses
  %i.a = add i64 %1, 5
  %i.b = icmp ult i64 %4, %i.a
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %3, align 1, !tbaa !11
  %i.d = and i8 %i.c, -2
  %or.cond = icmp eq i8 %i.d, -48
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %.not3441.not = icmp eq i64 %1, 0
  br i1 %.not3441.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN7meshoptL11decodeVByteERPKh.exit.us
  %.043.us = phi i64 [ %i.ai, %_ZN7meshoptL11decodeVByteERPKh.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.03842.us = phi ptr [ %.139.us, %_ZN7meshoptL11decodeVByteERPKh.exit.us ], [ %i.e, %.lr.ph ] ; 7 uses
  %.not33.us = icmp ult ptr %.03842.us, %i.g
  br i1 %.not33.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %.03842.us, i64 1 ; 2 uses
  %i.j = load i8, ptr %.03842.us, align 1, !tbaa !11 ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %_ZN7meshoptL11decodeVByteERPKh.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.k, 127
  %i.n = getelementptr inbounds nuw i8, ptr %.03842.us, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.i, align 1, !tbaa !11    ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 7
  %i.s = or disjoint i32 %i.r, %i.m               ; 2 uses
  %i.t = icmp slt i8 %i.o, 0
  br i1 %i.t, label %6, label %_ZN7meshoptL11decodeVByteERPKh.exit.us

6:                                                ; preds = %bb.e
  %7 = getelementptr inbounds nuw i8, ptr %.03842.us, i64 3 ; 2 uses
  %8 = load i8, ptr %i.n, align 1, !tbaa !11      ; 2 uses
  %9 = and i8 %8, 127
  %10 = zext nneg i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 14
  %12 = or disjoint i32 %11, %i.s                 ; 2 uses
  %13 = icmp slt i8 %8, 0
  br i1 %13, label %bb.f, label %_ZN7meshoptL11decodeVByteERPKh.exit.us

bb.f:                                             ; preds = %6
  %i.u = getelementptr inbounds nuw i8, ptr %.03842.us, i64 4 ; 2 uses
  %i.v = load i8, ptr %7, align 1, !tbaa !11      ; 2 uses
  %14 = and i8 %i.v, 127
  %i.w = zext nneg i8 %14 to i32
  %i.x = shl nuw nsw i32 %i.w, 21
  %i.y = or disjoint i32 %i.x, %12                ; 2 uses
  %i.z = icmp slt i8 %i.v, 0
  br i1 %i.z, label %bb.g, label %_ZN7meshoptL11decodeVByteERPKh.exit.us

bb.g:                                             ; preds = %bb.f
  %15 = getelementptr inbounds nuw i8, ptr %.03842.us, i64 5
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !11
  %16 = zext i8 %i.aa to i32
  %17 = shl i32 %16, 28
  %18 = or disjoint i32 %17, %i.y
  br label %_ZN7meshoptL11decodeVByteERPKh.exit.us

_ZN7meshoptL11decodeVByteERPKh.exit.us:           ; preds = %bb.g, %bb.f, %6, %bb.e, %bb.d
  %.139.us = phi ptr [ %i.i, %bb.d ], [ %15, %bb.g ], [ %i.u, %bb.f ], [ %7, %6 ], [ %i.n, %bb.e ] ; 2 uses
  %.017.i.us = phi i32 [ %i.k, %bb.d ], [ %18, %bb.g ], [ %i.y, %bb.f ], [ %12, %6 ], [ %i.s, %bb.e ] ; 3 uses
  %i.ab = and i32 %.017.i.us, 1
  %i.ac = lshr i32 %.017.i.us, 2
  %i.ad = shl i32 %.017.i.us, 30
  %i.ae = ashr i32 %i.ad, 31
  %i.af = xor i32 %i.ae, %i.ac
  %19 = zext nneg i32 %i.ab to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %19 ; 2 uses
  %21 = load i32, ptr %20, align 4, !tbaa !10
  %22 = add i32 %i.af, %21                        ; 2 uses
  store i32 %22, ptr %20, align 4, !tbaa !10
  %i.ag = trunc i32 %22 to i16
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.043.us
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !14
  %i.ai = add nuw i64 %.043.us, 1                 ; 2 uses
  %exitcond46.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond46.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN7meshoptL11decodeVByteERPKh.exit
  %.043 = phi i64 [ %i.bu, %_ZN7meshoptL11decodeVByteERPKh.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.03842 = phi ptr [ %.139, %_ZN7meshoptL11decodeVByteERPKh.exit ], [ %i.e, %.lr.ph ] ; 7 uses
  %.not33 = icmp ult ptr %.03842, %i.g
  br i1 %.not33, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.03842, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.03842, align 1, !tbaa !11 ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = icmp sgt i8 %i.ak, -1
  br i1 %i.am, label %_ZN7meshoptL11decodeVByteERPKh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %i.al, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %.03842, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %i.aq = and i8 %i.ap, 127
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 7
  %i.at = or disjoint i32 %i.as, %i.an            ; 2 uses
  %i.au = icmp slt i8 %i.ap, 0
  br i1 %i.au, label %bb.j, label %_ZN7meshoptL11decodeVByteERPKh.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.03842, i64 3 ; 2 uses
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !11  ; 2 uses
  %i.ax = and i8 %i.aw, 127
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 14
  %i.ba = or disjoint i32 %i.az, %i.at            ; 2 uses
  %i.bb = icmp slt i8 %i.aw, 0
  br i1 %i.bb, label %bb.k, label %_ZN7meshoptL11decodeVByteERPKh.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.03842, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !11  ; 2 uses
  %i.be = and i8 %i.bd, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 21
  %i.bh = or disjoint i32 %i.bg, %i.ba            ; 2 uses
  %i.bi = icmp slt i8 %i.bd, 0
  br i1 %i.bi, label %bb.l, label %_ZN7meshoptL11decodeVByteERPKh.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.03842, i64 5
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl i32 %i.bl, 28
  %i.bn = or disjoint i32 %i.bm, %i.bh
  br label %_ZN7meshoptL11decodeVByteERPKh.exit

_ZN7meshoptL11decodeVByteERPKh.exit:              ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.139 = phi ptr [ %i.aj, %bb.h ], [ %i.bj, %bb.l ], [ %i.bc, %bb.k ], [ %i.av, %bb.j ], [ %i.ao, %bb.i ] ; 2 uses
  %.017.i = phi i32 [ %i.al, %bb.h ], [ %i.bn, %bb.l ], [ %i.bh, %bb.k ], [ %i.ba, %bb.j ], [ %i.at, %bb.i ] ; 3 uses
  %i.bo = and i32 %.017.i, 1
  %i.bp = lshr i32 %.017.i, 2
  %i.bq = shl i32 %.017.i, 30
  %i.br = ashr i32 %i.bq, 31
  %i.bs = xor i32 %i.br, %i.bp
  %23 = zext nneg i32 %i.bo to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %23 ; 2 uses
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = add i32 %i.bs, %25                        ; 2 uses
  store i32 %26, ptr %24, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.043
  store i32 %26, ptr %i.bt, align 4, !tbaa !10
  %i.bu = add nuw i64 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !20

.critedge:                                        ; preds = %_ZN7meshoptL11decodeVByteERPKh.exit, %_ZN7meshoptL11decodeVByteERPKh.exit.us, %bb.c
  %.038.lcssa = phi ptr [ %i.e, %bb.c ], [ %.139.us, %_ZN7meshoptL11decodeVByteERPKh.exit.us ], [ %.139, %_ZN7meshoptL11decodeVByteERPKh.exit ]
  %.not35 = icmp eq ptr %.038.lcssa, %i.g
  %. = select i1 %.not35, i32 0, i32 -3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.critedge
  %.1 = phi i32 [ %., %.critedge ], [ -2, %.lr.ph.split.us ], [ -2, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.b, %bb.a
  %.3 = phi i32 [ -1, %bb.b ], [ -2, %bb.a ], [ %.1, %.loopexit ]
  ret i32 %.3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"short", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
end_hunk_0
