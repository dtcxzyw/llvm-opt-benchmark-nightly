Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletcodec?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@meshopt_encodeMeshlet:bb.a
  %i.jq = trunc nuw i32 %.sroa.7.0.i to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.5.i40, i64 1
  store i8 %i.jq, ptr %.5.i40, align 1, !tbaa !11
  br label %.thread75.1.i

.thread75.1.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %.thread75.i
  %i.js = phi i8 [ 0, %.thread75.i ], [ 3, %bb.ar ], [ 2, %bb.aq ], [ 1, %bb.as ] ; 2 uses
  %.5.1.i = phi ptr [ %.5.i40, %.thread75.i ], [ %i.jp, %bb.ar ], [ %i.jm, %bb.aq ], [ %i.jr, %bb.as ] ; 6 uses
  %i.jt = shl nuw nsw i8 %i.js, 1
  %i.ju = and i8 %i.jt, 2
  %i.jv = shl nuw nsw i8 %i.js, 4
  %i.jw = and i8 %i.jv, 32
  %i.jx = or disjoint i8 %i.ju, %i.jw
  %i.jy = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.jz = or i8 %i.jx, %i.jy
  store i8 %i.jz, ptr %i.ia, align 1, !tbaa !11
  %i.ka = icmp eq i32 %.sroa.11.0.i, 0
  br i1 %i.ka, label %.thread75.2.i, label %bb.at

bb.at:                                            ; preds = %.thread75.1.i
  %i.kb = icmp ult i32 %.sroa.11.0.i, 256
  br i1 %i.kb, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kc = icmp ult i32 %.sroa.11.0.i, 65536
  %i.kd = trunc i32 %.sroa.11.0.i to i16
  store i16 %i.kd, ptr %.5.1.i, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 2 ; 2 uses
  br i1 %i.kc, label %.thread75.2.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kf = lshr i32 %.sroa.11.0.i, 16
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 3
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !11
  br label %.thread75.2.i

bb.aw:                                            ; preds = %bb.at
  %i.ki = trunc nuw i32 %.sroa.11.0.i to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %.5.1.i, i64 1
  store i8 %i.ki, ptr %.5.1.i, align 1, !tbaa !11
  br label %.thread75.2.i

.thread75.2.i:                                    ; preds = %bb.aw, %bb.av, %bb.au, %.thread75.1.i
  %i.kk = phi i8 [ 0, %.thread75.1.i ], [ 3, %bb.av ], [ 2, %bb.au ], [ 1, %bb.aw ] ; 2 uses
  %.5.2.i = phi ptr [ %.5.1.i, %.thread75.1.i ], [ %i.kh, %bb.av ], [ %i.ke, %bb.au ], [ %i.kj, %bb.aw ] ; 6 uses
  %i.kl = shl nuw nsw i8 %i.kk, 2
  %i.km = and i8 %i.kl, 4
  %i.kn = shl nuw nsw i8 %i.kk, 5
  %i.ko = and i8 %i.kn, 64
  %i.kp = or disjoint i8 %i.km, %i.ko
  %i.kq = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.kr = or i8 %i.kp, %i.kq
  store i8 %i.kr, ptr %i.ia, align 1, !tbaa !11
  %i.ks = icmp eq i32 %.sroa.15.0.i, 0
  br i1 %i.ks, label %.thread75.3.i, label %bb.ax

bb.ax:                                            ; preds = %.thread75.2.i
  %i.kt = icmp samesign ult i32 %.sroa.15.0.i, 256
  br i1 %i.kt, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ku = icmp samesign ult i32 %.sroa.15.0.i, 65536
  %i.kv = trunc i32 %.sroa.15.0.i to i16
  store i16 %i.kv, ptr %.5.2.i, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 2 ; 2 uses
  br i1 %i.ku, label %.thread75.3.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kx = lshr i32 %.sroa.15.0.i, 16
  %i.ky = trunc nuw i32 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 3
  store i8 %i.ky, ptr %i.kw, align 1, !tbaa !11
  br label %.thread75.3.i

bb.ba:                                            ; preds = %bb.ax
  %i.la = trunc nuw i32 %.sroa.15.0.i to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %.5.2.i, i64 1
  store i8 %i.la, ptr %.5.2.i, align 1, !tbaa !11
  br label %.thread75.3.i

.thread75.3.i:                                    ; preds = %bb.ba, %bb.az, %bb.ay, %.thread75.2.i
  %i.lc = phi i8 [ 0, %.thread75.2.i ], [ 3, %bb.az ], [ 2, %bb.ay ], [ 1, %bb.ba ] ; 2 uses
  %.5.3.i = phi ptr [ %.5.2.i, %.thread75.2.i ], [ %i.kz, %bb.az ], [ %i.kw, %bb.ay ], [ %i.lb, %bb.ba ]
  %i.ld = shl nuw nsw i8 %i.lc, 3
  %i.le = and i8 %i.ld, 8
  %i.lf = shl nuw i8 %i.lc, 6
  %i.lg = and i8 %i.lf, -128
  %i.lh = or disjoint i8 %i.le, %i.lg
  %i.li = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.lj = or i8 %i.lh, %i.li
  br label %.split85.us.i

_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit:      ; preds = %.split85.us.i, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit
  %.053.lcssa.i = phi ptr [ %i.e, %_ZN7meshoptL15encodeTrianglesEPhS0_PKhm.exit ], [ %.us-phi.i, %.split85.us.i ]
  %i.lk = ptrtoint ptr %.053.lcssa.i to i64
  %i.ll = ptrtoint ptr %i.e to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 3 uses
  %i.ln = add nuw i64 %i.g, %i.gf                 ; 2 uses
  %i.lo = call i64 @llvm.usub.sat.i64(i64 16, i64 %i.ln) ; 3 uses
  %i.lp = add nuw i64 %i.ln, %i.lo
  %i.lq = add i64 %i.lp, %i.gd
  %i.lr = add i64 %i.lq, %i.lm                    ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, %1
  br i1 %i.ls, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.e, i64 %i.lm, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 %i.lm ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lt, ptr nonnull align 16 %i.c, i64 %i.gd, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.gd ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.lu, i8 0, i64 %i.lo, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lo ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr nonnull align 16 %i.d, i64 %i.gf, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.gf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr nonnull align 16 %i.b, i64 %i.g, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit, %bb.bb
  %.0 = phi i64 [ %i.lr, %bb.bb ], [ 0, %_ZN7meshoptL14encodeVerticesEPhS0_PKjm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @meshopt_decodeMeshlet(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %4, 1
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add i64 %1, 3
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = add nuw i64 %i.b, %i.d                   ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 16, i64 %i.e) ; 2 uses
  %i.g = add nuw i64 %i.f, %i.e
  %i.h = icmp ult i64 %7, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %7
  %i.j = sub nsw i64 0, %i.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = sub nsw i64 0, %i.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr @_ZN7meshoptL24gDecodeTablesInitializedE, align 1, !tbaa !15, !range !16, !noundef !17
  %i.q = trunc nuw i8 %i.p to i1
  %_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm = select i1 %i.q, ptr @_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm, ptr @_ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm
  %i.r = tail call noundef i32 %_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm(ptr noundef %0, ptr noundef %3, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %6, ptr noundef %i.o, i64 noundef %1, i64 noundef %4, i64 noundef %2, i64 noundef %5), !callees !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef range(i32 -3, 1) i32 @_ZN7meshoptL17decodeMeshletSimdILi0EEEiPvS1_PKhS3_S3_S3_mmmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readnone captures(address) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.a = icmp eq i64 %8, 4
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %6, 2                           ; 2 uses
  %.not41.i144.not = icmp eq i64 %i.b, 0
  br i1 %.not41.i144.not, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.b, %bb.c
  %.031.i147 = phi i64 [ %i.aa, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.c = phi <4 x i32> [ %i.u, %bb.c ], [ splat (i32 -1), %bb.b ]
  %.038.i146 = phi ptr [ %i.d, %bb.c ], [ %3, %bb.b ] ; 2 uses
  %.067145 = phi ptr [ %i.y, %bb.c ], [ %4, %bb.b ] ; 3 uses
  %.not.i = icmp ugt ptr %.067145, %5
  br i1 %.not.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph149
  %i.d = getelementptr inbounds nuw i8, ptr %.038.i146, i64 1 ; 2 uses
  %i.e = load i8, ptr %.038.i146, align 1, !tbaa !11
  %i.f = load <16 x i8>, ptr %.067145, align 1, !tbaa !11
  %i.g = zext i8 %i.e to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.g
  %i.i = load <16 x i8>, ptr %i.h, align 16, !tbaa !11
  %i.j = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.f, <16 x i8> %i.i) ; 2 uses
  %i.k = bitcast <16 x i8> %i.j to <4 x i32>
  %i.l = bitcast <16 x i8> %i.j to <4 x i32>
  %i.m = and <4 x i32> %i.l, splat (i32 1)
  %i.n = sub nsw <4 x i32> zeroinitializer, %i.m
  %i.o = lshr <4 x i32> %i.k, splat (i32 1)
  %i.p = xor <4 x i32> %i.o, %i.n
  %i.q = add <4 x i32> %i.p, splat (i32 1)        ; 2 uses
  %10 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.q, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.r = add <4 x i32> %i.q, %10                  ; 2 uses
  %11 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.r, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.t = add <4 x i32> %i.r, %i.s
  %i.u = add <4 x i32> %i.t, %11                  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.g
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.067145, i64 %i.x ; 2 uses
  %.idx.i = shl nuw i64 %.031.i147, 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  store <4 x i32> %i.u, ptr %i.z, align 1, !tbaa !11
  %i.aa = add nuw nsw i64 %.031.i147, 1           ; 2 uses
  %exitcond191.not = icmp eq i64 %i.aa, %i.b
  br i1 %exitcond191.not, label %._crit_edge150.loopexit, label %.lr.ph149, !llvm.loop !0

._crit_edge150.loopexit:                          ; preds = %bb.c
  %i.ab = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 poison>
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit, %bb.b
  %.067.lcssa = phi ptr [ %4, %bb.b ], [ %i.y, %._crit_edge150.loopexit ] ; 4 uses
  %.038.i.lcssa = phi ptr [ %3, %bb.b ], [ %i.d, %._crit_edge150.loopexit ]
  %.lcssa = phi <4 x i32> [ <i32 -1, i32 -1, i32 -1, i32 poison>, %bb.b ], [ %i.ab, %._crit_edge150.loopexit ]
  %i.ac = and i64 %6, 3                           ; 3 uses
  %.not42.i = icmp eq i64 %i.ac, 0
  br i1 %.not42.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.d

bb.d:                                             ; preds = %._crit_edge150
  %.not44.i = icmp ugt ptr %.067.lcssa, %5
  br i1 %.not44.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %.038.i.lcssa, align 1, !tbaa !11
  %i.ae = load <16 x i8>, ptr %.067.lcssa, align 1, !tbaa !11
  %i.af = zext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.af
  %i.ah = load <16 x i8>, ptr %i.ag, align 16, !tbaa !11
  %i.ai = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ae, <16 x i8> %i.ah) ; 2 uses
  %i.aj = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.ak = bitcast <16 x i8> %i.ai to <4 x i32>
  %i.al = and <4 x i32> %i.ak, splat (i32 1)
  %i.am = sub nsw <4 x i32> zeroinitializer, %i.al
  %i.an = lshr <4 x i32> %i.aj, splat (i32 1)
  %i.ao = xor <4 x i32> %i.an, %i.am
  %i.ap = add <4 x i32> %i.ao, splat (i32 1)      ; 2 uses
  %12 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ap, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.aq = add <4 x i32> %i.ap, %12                ; 2 uses
  %13 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.aq, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.ar = add <4 x i32> %i.aq, %.lcssa
  %i.as = add <4 x i32> %i.ar, %13                ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.af
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 %i.av ; 3 uses
  %i.ax = and i64 %6, 4294967292
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = extractelement <4 x i32> %i.as, i64 0
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !12
  %cond.i = icmp eq i64 %i.ac, 1
  br i1 %cond.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = extractelement <4 x i32> %i.as, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !12
  %i.bc = icmp eq i64 %i.ac, 3
  br i1 %i.bc, label %bb.g, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.g:                                             ; preds = %bb.f
  %i.bd = extractelement <4 x i32> %i.as, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !12
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.h:                                             ; preds = %bb.a
  %i.bf = add i64 %6, 1                           ; 2 uses
  %i.bg = lshr i64 %i.bf, 2                       ; 2 uses
  %.not39.i138.not = icmp eq i64 %i.bg, 0
  br i1 %.not39.i138.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.029.i141 = phi ptr [ %i.bi, %bb.i ], [ %3, %bb.h ] ; 2 uses
  %.034.i140 = phi i64 [ %i.cj, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.bh = phi <4 x i32> [ %i.bz, %bb.i ], [ splat (i32 -1), %bb.h ]
  %.069139 = phi ptr [ %i.cd, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %.not.i30 = icmp ugt ptr %.069139, %5
  br i1 %.not.i30, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.029.i141, i64 1 ; 2 uses
  %i.bj = load i8, ptr %.029.i141, align 1, !tbaa !11
  %i.bk = load <16 x i8>, ptr %.069139, align 1, !tbaa !11
  %i.bl = zext i8 %i.bj to i64                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.bl
  %i.bn = load <16 x i8>, ptr %i.bm, align 16, !tbaa !11
  %i.bo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bk, <16 x i8> %i.bn) ; 2 uses
  %i.bp = bitcast <16 x i8> %i.bo to <4 x i32>
  %i.bq = bitcast <16 x i8> %i.bo to <4 x i32>
  %i.br = and <4 x i32> %i.bq, splat (i32 1)
  %i.bs = sub nsw <4 x i32> zeroinitializer, %i.br
  %i.bt = lshr <4 x i32> %i.bp, splat (i32 1)
  %i.bu = xor <4 x i32> %i.bt, %i.bs
  %i.bv = add <4 x i32> %i.bu, splat (i32 1)      ; 2 uses
  %14 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.bv, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bw = add <4 x i32> %i.bv, %14                ; 2 uses
  %15 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.bw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bx = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.by = add <4 x i32> %i.bw, %i.bx
  %i.bz = add <4 x i32> %i.by, %15                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.bl
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.069139, i64 %i.cc ; 2 uses
  %i.ce = bitcast <4 x i32> %i.bz to <16 x i8>
  %i.cf = shufflevector <16 x i8> %i.ce, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = bitcast <16 x i8> %i.cf to <2 x i64>
  %.idx.i31 = shl nuw i64 %.034.i140, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i31
  %i.ci = extractelement <2 x i64> %i.cg, i64 0
  store i64 %i.ci, ptr %i.ch, align 1, !tbaa !11
  %i.cj = add nuw nsw i64 %.034.i140, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %i.bg
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.ck = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.069.lcssa = phi ptr [ %4, %bb.h ], [ %i.cd, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa135 = phi <4 x i32> [ <i32 -1, i32 -1, i32 poison, i32 poison>, %bb.h ], [ %i.ck, %._crit_edge.loopexit ]
  %.029.i.lcssa = phi ptr [ %3, %bb.h ], [ %i.bi, %._crit_edge.loopexit ]
  %i.cl = and i64 %i.bf, -4
  %i.cm = icmp ult i64 %i.cl, %6
  br i1 %i.cm, label %bb.j, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.j:                                             ; preds = %._crit_edge
  %.not40.i = icmp ugt ptr %.069.lcssa, %5
  br i1 %.not40.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = load i8, ptr %.029.i.lcssa, align 1, !tbaa !11
  %i.co = load <16 x i8>, ptr %.069.lcssa, align 1, !tbaa !11
  %i.cp = zext i8 %i.cn to i64                    ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.cp
  %i.cr = load <16 x i8>, ptr %i.cq, align 16, !tbaa !11
  %i.cs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.co, <16 x i8> %i.cr) ; 2 uses
  %i.ct = bitcast <16 x i8> %i.cs to <4 x i32>
  %i.cu = bitcast <16 x i8> %i.cs to <4 x i32>
  %i.cv = and <4 x i32> %i.cu, splat (i32 1)
  %i.cw = sub nsw <4 x i32> zeroinitializer, %i.cv
  %i.cx = lshr <4 x i32> %i.ct, splat (i32 1)
  %i.cy = xor <4 x i32> %i.cx, %i.cw
  %i.cz = add <4 x i32> %i.cy, splat (i32 1)      ; 2 uses
  %16 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.cz, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.da = add <4 x i32> %i.cz, %16                ; 2 uses
  %17 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.da, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.db = add <4 x i32> %i.da, %.lcssa135
  %i.dc = add <4 x i32> %i.db, %17
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.cp
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 %i.df
  %i.dh = and i64 %6, 4294967292
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dh
  %i.dj = bitcast <4 x i32> %i.dc to <8 x i16>
  %i.dk = shufflevector <8 x i16> %i.dj, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = bitcast <8 x i16> %i.dk to <4 x i32>
  %i.dm = extractelement <4 x i32> %i.dl, i64 0
  store i32 %i.dm, ptr %i.di, align 1, !tbaa !12
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97: ; preds = %bb.g, %bb.f, %bb.e, %bb.k, %._crit_edge150, %._crit_edge
  %.027100 = phi ptr [ %.069.lcssa, %._crit_edge ], [ %.067.lcssa, %._crit_edge150 ], [ %i.aw, %bb.e ], [ %i.dg, %bb.k ], [ %i.aw, %bb.g ], [ %i.aw, %bb.f ] ; 4 uses
  %i.dn = icmp eq i64 %9, 4
  br i1 %i.dn, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97
  %i.do = lshr i64 %7, 1                          ; 2 uses
  %.not38.i165.not = icmp eq i64 %i.do, 0
  br i1 %.not38.i165.not, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.l, %bb.m
  %.029.i34169 = phi ptr [ %i.dp, %bb.m ], [ %2, %bb.l ] ; 2 uses
  %.034.i33168 = phi i64 [ %i.el, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.035.i32167 = phi <2 x i64> [ %i.ec, %bb.m ], [ zeroinitializer, %bb.l ]
  %.073166 = phi ptr [ %i.eg, %bb.m ], [ %.027100, %bb.l ] ; 3 uses
  %.not.i40 = icmp ugt ptr %.073166, %5
  br i1 %.not.i40, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph171
  %i.dp = getelementptr inbounds nuw i8, ptr %.029.i34169, i64 1 ; 2 uses
  %i.dq = load i8, ptr %.029.i34169, align 1, !tbaa !11
  %i.dr = zext i8 %i.dq to i64                    ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.dr
  %i.dt = load <16 x i8>, ptr %i.ds, align 16, !tbaa !11 ; 2 uses
  %18 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dt, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.du = load i64, ptr %.073166, align 1, !tbaa !11
  %i.dv = insertelement <2 x i64> poison, i64 %i.du, i64 0
  %i.dw = bitcast <2 x i64> %.035.i32167 to <8 x i16>
  %i.dx = bitcast <2 x i64> %i.dv to <8 x i16>
  %i.dy = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dz = bitcast <8 x i16> %i.dy to <16 x i8>
  %i.ea = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.dz, <16 x i8> %i.dt)
  %i.eb = add <16 x i8> %i.ea, %18                ; 3 uses
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.dr
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.073166, i64 %i.ef ; 2 uses
  %i.eh = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 16, i32 12, i32 13, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = bitcast <16 x i8> %i.eh to <2 x i64>
  %.idx.i41 = shl nuw i64 %.034.i33168, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i41
  %i.ek = extractelement <2 x i64> %i.ei, i64 0
  store i64 %i.ek, ptr %i.ej, align 1, !tbaa !11
  %i.el = add nuw nsw i64 %.034.i33168, 1         ; 2 uses
  %exitcond193.not = icmp eq i64 %i.el, %i.do
  br i1 %exitcond193.not, label %._crit_edge172.loopexit, label %.lr.ph171, !llvm.loop !1

._crit_edge172.loopexit:                          ; preds = %bb.m
  %i.em = bitcast <16 x i8> %i.eb to <8 x i16>
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit, %bb.l
  %.073.lcssa = phi ptr [ %.027100, %bb.l ], [ %i.eg, %._crit_edge172.loopexit ] ; 4 uses
  %.035.i32.lcssa = phi <8 x i16> [ zeroinitializer, %bb.l ], [ %i.em, %._crit_edge172.loopexit ]
  %.029.i34.lcssa = phi ptr [ %2, %bb.l ], [ %i.dp, %._crit_edge172.loopexit ]
  %i.en = and i64 %7, 1
  %.not39.i37 = icmp eq i64 %i.en, 0
  br i1 %.not39.i37, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118, label %bb.n

bb.n:                                             ; preds = %._crit_edge172
  %.not40.i38 = icmp ugt ptr %.073.lcssa, %5
  br i1 %.not40.i38, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load i8, ptr %.029.i34.lcssa, align 1, !tbaa !11
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.ep
  %i.er = load <16 x i8>, ptr %i.eq, align 16, !tbaa !11 ; 2 uses
  %19 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.er, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 15, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = load i64, ptr %.073.lcssa, align 1, !tbaa !11
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.et to <8 x i16>
  %i.ev = shufflevector <8 x i16> %i.eu, <8 x i16> %.035.i32.lcssa, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = bitcast <8 x i16> %i.ev to <16 x i8>
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ew, <16 x i8> %i.er)
  %i.ey = add <16 x i8> %i.ex, %19
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.ep
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !11
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 %i.fb
  %i.fd = and i64 %7, 4294967294
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd
  %i.ff = shufflevector <16 x i8> %i.ey, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = bitcast <16 x i8> %i.ff to <4 x i32>
  %i.fh = extractelement <4 x i32> %i.fg, i64 0
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !12
  br label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118

bb.p:                                             ; preds = %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97
  %i.fi = add i64 %7, 1                           ; 2 uses
  %i.fj = lshr i64 %i.fi, 2                       ; 2 uses
  %.not48.i154.not = icmp eq i64 %i.fj, 0
  br i1 %.not48.i154.not, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.p, %bb.q
  %.038.i43158 = phi ptr [ %i.fk, %bb.q ], [ %2, %bb.p ] ; 3 uses
  %.043.i157 = phi i64 [ %i.ha, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.044.i156 = phi <2 x i64> [ %i.gr, %bb.q ], [ zeroinitializer, %bb.p ]
  %.077155 = phi ptr [ %i.gv, %bb.q ], [ %.027100, %bb.p ] ; 3 uses
  %.not.i46 = icmp ugt ptr %.077155, %5
  br i1 %.not.i46, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph160
  %i.fk = getelementptr inbounds nuw i8, ptr %.038.i43158, i64 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.038.i43158, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %i.fn = load i8, ptr %.038.i43158, align 1, !tbaa !11
  %i.fo = zext i8 %i.fn to i64                    ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.fo
  %i.fq = load <16 x i8>, ptr %i.fp, align 16, !tbaa !11 ; 2 uses
  %20 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.fq, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.fr = load i64, ptr %.077155, align 1, !tbaa !11
  %i.fs = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %i.ft = bitcast <2 x i64> %.044.i156 to <8 x i16>
  %i.fu = bitcast <2 x i64> %i.fs to <8 x i16>
  %i.fv = shufflevector <8 x i16> %i.fu, <8 x i16> %i.ft, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fw = bitcast <8 x i16> %i.fv to <16 x i8>
  %i.fx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fw, <16 x i8> %i.fq)
  %i.fy = add <16 x i8> %i.fx, %20                ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.fo
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.077155, i64 %i.gb ; 2 uses
  %i.gd = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <16 x i32> <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = bitcast <16 x i8> %i.gd to <4 x i32>
  %i.gf = extractelement <4 x i32> %i.ge, i64 0
  %i.gg = mul i64 %.043.i157, 12
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %i.gg ; 2 uses
  store i32 %i.gf, ptr %i.gh, align 1, !tbaa !12
  %i.gi = zext i8 %i.fm to i64                    ; 2 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.gi
  %i.gk = load <16 x i8>, ptr %i.gj, align 16, !tbaa !11 ; 2 uses
  %21 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.gk, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.gl = load i64, ptr %i.gc, align 1, !tbaa !11
  %i.gm = insertelement <2 x i64> poison, i64 %i.gl, i64 0
  %i.gn = bitcast <2 x i64> %i.gm to <16 x i8>
  %i.go = shufflevector <16 x i8> %i.gn, <16 x i8> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.go, <16 x i8> %i.gk)
  %i.gq = add <16 x i8> %i.gp, %21                ; 3 uses
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.gi
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !11
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gu ; 2 uses
  %i.gw = shufflevector <16 x i8> %i.gq, <16 x i8> poison, <16 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gx = bitcast <16 x i8> %i.gw to <2 x i64>
  %i.gy = getelementptr i8, ptr %i.gh, i64 4
  %i.gz = extractelement <2 x i64> %i.gx, i64 0
  store i64 %i.gz, ptr %i.gy, align 1, !tbaa !11
  %i.ha = add nuw nsw i64 %.043.i157, 1           ; 2 uses
  %exitcond192.not = icmp eq i64 %i.ha, %i.fj
  br i1 %exitcond192.not, label %._crit_edge161.loopexit, label %.lr.ph160, !llvm.loop !22

._crit_edge161.loopexit:                          ; preds = %bb.q
  %i.hb = bitcast <16 x i8> %i.gq to <8 x i16>
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %bb.p
  %.077.lcssa = phi ptr [ %.027100, %bb.p ], [ %i.gv, %._crit_edge161.loopexit ] ; 4 uses
  %.044.i.lcssa = phi <8 x i16> [ zeroinitializer, %bb.p ], [ %i.hb, %._crit_edge161.loopexit ]
  %.038.i43.lcssa = phi ptr [ %2, %bb.p ], [ %i.fk, %._crit_edge161.loopexit ]
  %i.hc = and i64 %i.fi, -4
  %i.hd = icmp ult i64 %i.hc, %7
  br i1 %i.hd, label %bb.r, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118

bb.r:                                             ; preds = %._crit_edge161
  %.not50.i = icmp ugt ptr %.077.lcssa, %5
  br i1 %.not50.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.he = load i8, ptr %.038.i43.lcssa, align 1, !tbaa !11
  %i.hf = zext i8 %i.he to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.hf
  %i.hh = load <16 x i8>, ptr %i.hg, align 16, !tbaa !11 ; 2 uses
  %22 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.hh, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.hi = load i64, ptr %.077.lcssa, align 1, !tbaa !11
  %i.hj = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %i.hk = bitcast <2 x i64> %i.hj to <8 x i16>
  %i.hl = shufflevector <8 x i16> %i.hk, <8 x i16> %.044.i.lcssa, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hm = bitcast <8 x i16> %i.hl to <16 x i8>
  %i.hn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.hm, <16 x i8> %i.hh)
  %i.ho = add <16 x i8> %i.hn, %22
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.hf
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !11
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %.077.lcssa, i64 %i.hr ; 2 uses
  %i.ht = and i64 %7, 4294967292
  %i.hu = mul nuw nsw i64 %i.ht, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hu ; 2 uses
  %i.hw = shufflevector <16 x i8> %i.ho, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = bitcast <16 x i8> %i.hw to <4 x i32>    ; 2 uses
  %i.hy = extractelement <4 x i32> %i.hx, i64 0
  store i32 %i.hy, ptr %i.hv, align 1, !tbaa !12
  %i.hz = and i64 %7, 2
  %.not49.i = icmp eq i64 %i.hz, 0
  br i1 %.not49.i, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ia = extractelement <4 x i32> %i.hx, i64 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 %i.ia, ptr %i.ib, align 1, !tbaa !12
  br label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118

_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118: ; preds = %bb.o, %bb.t, %bb.s, %._crit_edge172, %._crit_edge161
  %.1121 = phi ptr [ %.077.lcssa, %._crit_edge161 ], [ %.073.lcssa, %._crit_edge172 ], [ %i.fc, %bb.o ], [ %i.hs, %bb.s ], [ %i.hs, %bb.t ]
  %i.ic = icmp eq ptr %.1121, %5
  %i.id = select i1 %i.ic, i32 0, i32 -3
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread

_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread: ; preds = %.lr.ph, %.lr.ph149, %.lr.ph160, %.lr.ph171, %bb.r, %bb.n, %bb.j, %bb.d, %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118
  %.0 = phi i32 [ %i.id, %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118 ], [ -2, %bb.r ], [ -2, %.lr.ph171 ], [ -2, %.lr.ph149 ], [ -2, %bb.d ], [ -2, %bb.j ], [ -2, %.lr.ph160 ], [ -2, %bb.n ], [ -2, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -3, 1) i32 @_ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readnone captures(address) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = icmp eq i64 %8, 4
  %.not53.i = icmp eq i64 %6, 0                   ; 3 uses
  %i.d = icmp ugt ptr %4, %5
  %or.cond54.i = or i1 %i.d, %.not53.i            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond54.i, label %_ZN7meshoptL14decodeVerticesIjEEPKhPT_S2_S2_S2_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.split51.us.i
  %.03957.i = phi i64 [ %i.az, %.split51.us.i ], [ 0, %bb.b ] ; 10 uses
  %.04056.i = phi i32 [ %.us-phi52.i, %.split51.us.i ], [ -1, %bb.b ] ; 2 uses
  %.04355.i = phi ptr [ %.us-phi.i, %.split51.us.i ], [ %4, %bb.b ] ; 7 uses
  %i.e = lshr exact i64 %.03957.i, 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %.fr59.i = freeze i8 %i.g                       ; 2 uses
  %i.h = zext i8 %.fr59.i to i32                  ; 7 uses
  %i.i = icmp eq i8 %.fr59.i, -1
  br i1 %i.i, label %.split.us.1.i, label %.split.1.i

.split.us.1.i:                                    ; preds = %.lr.ph.i
  %i.j = load i32, ptr %.04355.i, align 1         ; 2 uses
  %i.k = lshr i32 %i.j, 1
  %i.l = and i32 %i.j, 1
  %i.m = sub nsw i32 0, %i.l
  %i.n = xor i32 %i.k, %i.m
  %i.o = add i32 %.04056.i, 1
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03957.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.04355.i, i64 4
  %i.s = load i32, ptr %i.r, align 1              ; 2 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.s, 1
  %i.v = sub nsw i32 0, %i.u
  %i.w = xor i32 %i.t, %i.v
  %i.x = add i32 %i.p, 1
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  %i.z = or disjoint i64 %.03957.i, 1             ; 2 uses
  %i.aa = icmp ult i64 %i.z, %6
  br i1 %i.aa, label %bb.c, label %.split.us.2.i

bb.c:                                             ; preds = %.split.us.1.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !12
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.c, %.split.us.1.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.04355.i, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = lshr i32 %i.ad, 1
  %i.af = and i32 %i.ad, 1
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = xor i32 %i.ae, %i.ag
  %i.ai = add i32 %i.y, 1
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = or disjoint i64 %.03957.i, 2            ; 2 uses
  %i.al = icmp ult i64 %i.ak, %6
  br i1 %i.al, label %bb.d, label %.split.us.3.i

bb.d:                                             ; preds = %.split.us.2.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !12
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.d, %.split.us.2.i
  %i.an = getelementptr inbounds nuw i8, ptr %.04355.i, i64 12
  %i.ao = load i32, ptr %i.an, align 1            ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = and i32 %i.ao, 1
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = xor i32 %i.ap, %i.ar
  %i.at = add i32 %i.aj, 1
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  %i.av = or disjoint i64 %.03957.i, 3            ; 2 uses
  %i.aw = icmp ult i64 %i.av, %6
  br i1 %i.aw, label %bb.e, label %.split51.us.loopexit.i

bb.e:                                             ; preds = %.split.us.3.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !12
  br label %.split51.us.loopexit.i

.split51.us.loopexit.i:                           ; preds = %bb.e, %.split.us.3.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.04355.i, i64 16
  br label %.split51.us.i

.split51.us.i:                                    ; preds = %.split51.us.loopexit60.i, %.split51.us.loopexit.i
  %.us-phi.i = phi ptr [ %i.ay, %.split51.us.loopexit.i ], [ %i.dy, %.split51.us.loopexit60.i ] ; 3 uses
  %.us-phi52.i = phi i32 [ %i.au, %.split51.us.loopexit.i ], [ %i.dt, %.split51.us.loopexit60.i ]
  %i.az = add i64 %.03957.i, 4                    ; 2 uses
  %.not.i = icmp uge i64 %i.az, %6                ; 2 uses
  %i.ba = icmp ugt ptr %.us-phi.i, %5
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_ZN7meshoptL14decodeVerticesIjEEPKhPT_S2_S2_S2_m.exit, label %.lr.ph.i, !llvm.loop !23

.split.1.i:                                       ; preds = %.lr.ph.i
  %i.bb = and i32 %i.h, 1
  %i.bc = lshr i32 %i.h, 3                        ; 2 uses
  %i.bd = and i32 %i.bc, 2
  %i.be = or disjoint i32 %i.bd, %i.bb            ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 3
  %notmask.i = shl nsw i32 -1, %i.bf
  %i.bg = xor i32 %notmask.i, -1
  %i.bh = load i32, ptr %.04355.i, align 1
  %i.bi = and i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 1
  %i.bk = and i32 %i.bi, 1
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = xor i32 %i.bj, %i.bl
  %i.bn = add i32 %.04056.i, 1
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03957.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !12
  %i.bq = zext nneg i32 %i.be to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %i.bq ; 2 uses
  %i.bs = lshr i32 %i.h, 1
  %i.bt = and i32 %i.bs, 1
  %i.bu = lshr i32 %i.h, 4
  %i.bv = and i32 %i.bu, 2
  %i.bw = or disjoint i32 %i.bv, %i.bt            ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bw, 3
  %notmask.1.i = shl nsw i32 -1, %i.bx
  %i.by = xor i32 %notmask.1.i, -1
  %i.bz = load i32, ptr %i.br, align 1
  %i.ca = and i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = and i32 %i.ca, 1
  %i.cd = sub nsw i32 0, %i.cc
  %i.ce = xor i32 %i.cb, %i.cd
  %i.cf = add i32 %i.bo, 1
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = or disjoint i64 %.03957.i, 1            ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %6
  br i1 %i.ci, label %bb.f, label %.split.2.i

bb.f:                                             ; preds = %.split.1.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  store i32 %i.cg, ptr %i.cj, align 4, !tbaa !12
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.f, %.split.1.i
  %i.ck = zext nneg i32 %i.bw to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ck ; 2 uses
  %i.cm = lshr i32 %i.h, 2
  %i.cn = and i32 %i.cm, 1
  %i.co = lshr i32 %i.h, 5
  %i.cp = and i32 %i.co, 2
  %i.cq = or disjoint i32 %i.cp, %i.cn            ; 2 uses
  %i.cr = shl nuw nsw i32 %i.cq, 3
  %notmask.2.i = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask.2.i, -1
  %i.ct = load i32, ptr %i.cl, align 1
  %i.cu = and i32 %i.ct, %i.cs                    ; 2 uses
  %i.cv = lshr i32 %i.cu, 1
end_hunk_0
begin_hunk_1_@_ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm:bb.a
  %.061.lcssa.i = phi ptr [ %.026, %bb.q ], [ %.162.i, %bb.u ]
  %.not71.lcssa.i = phi i1 [ %.not7173.i, %bb.q ], [ %.not71.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %.not71.lcssa.i, label %select.unfold83, label %.thread

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br i1 %or.cond74.i, label %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.v
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i61
  %i.lt = phi i32 [ 0, %.lr.ph.i61 ], [ %.0677275.i65, %bb.z ]
  %.06178.i62 = phi ptr [ %.026, %.lr.ph.i61 ], [ %.162.i73, %bb.z ] ; 4 uses
  %.06377.i63 = phi i32 [ 0, %.lr.ph.i61 ], [ %.164.i72, %bb.z ] ; 4 uses
  %.06576.i64 = phi i64 [ 0, %.lr.ph.i61 ], [ %i.ok, %bb.z ] ; 4 uses
  %.0677275.i65 = phi i32 [ 0, %.lr.ph.i61 ], [ %i.nz, %bb.z ] ; 2 uses
  %i.lu = lshr i64 %.06576.i64, 1
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !11
  %i.lx = zext i8 %i.lw to i32
  %.065.tr.i66 = trunc i64 %.06576.i64 to i32
  %i.ly = shl i32 %.065.tr.i66, 2
  %i.lz = and i32 %i.ly, 4
  %i.ma = lshr i32 %i.lx, %i.lz                   ; 3 uses
  %i.mb = and i32 %i.ma, 15                       ; 5 uses
  %i.mc = icmp samesign ult i32 %i.mb, 12
  br i1 %i.mc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.md = lshr i32 %i.mb, 2
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !12
  %i.mh = shl nuw nsw i32 %i.ma, 3
  %i.mi = and i32 %i.mh, 16
  %i.mj = lshr i32 %i.mg, %i.mi                   ; 2 uses
  %i.mk = load i8, ptr %.06178.i62, align 1, !tbaa !11
  %i.ml = zext i8 %i.mk to i32
  %i.mm = and i32 %i.ma, 1                        ; 3 uses
  %.not.i79 = icmp eq i32 %i.mm, 0
  %i.mn = select i1 %.not.i79, i32 %.06377.i63, i32 %i.ml
  %i.mo = zext nneg i32 %i.mm to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %.06178.i62, i64 %i.mo
  %i.mq = xor i32 %i.mm, 1
  %i.mr = add i32 %i.mq, %.06377.i63
  %i.ms = shl i32 %i.mj, 16
  %i.mt = and i32 %i.ms, 16711680
  %i.mu = and i32 %i.mj, 65280
  %i.mv = or disjoint i32 %i.mt, %i.mu
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.mw = icmp ne i32 %i.mb, 12                   ; 3 uses
  %i.mx = icmp samesign ugt i32 %i.mb, 13         ; 3 uses
  %i.my = icmp eq i32 %i.mb, 15                   ; 3 uses
  %i.mz = load i8, ptr %.06178.i62, align 1, !tbaa !11
  %i.na = zext i8 %i.mz to i32
  %i.nb = select i1 %i.mw, i32 %i.na, i32 %.06377.i63
  %i.nc = zext i1 %i.mw to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %.06178.i62, i64 %i.nc ; 2 uses
  %not..i67 = xor i1 %i.mw, true
  %i.ne = zext i1 %not..i67 to i32
  %i.nf = add i32 %.06377.i63, %i.ne              ; 2 uses
  %i.ng = load i8, ptr %i.nd, align 1, !tbaa !11
  %i.nh = zext i8 %i.ng to i32
  %i.ni = select i1 %i.mx, i32 %i.nh, i32 %i.nf
  %i.nj = zext i1 %i.mx to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nj ; 2 uses
  %not.69.i68 = xor i1 %i.mx, true
  %i.nl = zext i1 %not.69.i68 to i32
  %i.nm = add i32 %i.nf, %i.nl                    ; 2 uses
  %i.nn = load i8, ptr %i.nk, align 1, !tbaa !11
  %i.no = zext i8 %i.nn to i32
  %i.np = select i1 %i.my, i32 %i.no, i32 %i.nm
  %i.nq = zext i1 %i.my to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nq
  %not.70.i69 = xor i1 %i.my, true
  %i.ns = zext i1 %not.70.i69 to i32
  %i.nt = add i32 %i.nm, %i.ns
  %i.nu = shl i32 %i.nb, 8
  %i.nv = shl i32 %i.ni, 16
  %i.nw = or i32 %i.nv, %i.nu
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i70 = phi i32 [ %i.np, %bb.y ], [ %i.mn, %bb.x ] ; 2 uses
  %.sink88.i71 = phi i32 [ %i.nw, %bb.y ], [ %i.mv, %bb.x ]
  %.164.i72 = phi i32 [ %i.nt, %bb.y ], [ %i.mr, %bb.x ]
  %.162.i73 = phi ptr [ %i.nr, %bb.y ], [ %i.mp, %bb.x ] ; 3 uses
  %i.nx = shl i32 %.sink.i70, 24
  %i.ny = or i32 %i.nx, %.sink88.i71
  %i.nz = or i32 %i.ny, %.sink.i70                ; 5 uses
  %i.oa = lshr i32 %i.nz, 8
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = mul i64 %.06576.i64, 3
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc ; 3 uses
  store i8 %i.ob, ptr %i.od, align 1, !tbaa !11
  %i.oe = lshr i32 %i.nz, 16
  %i.of = trunc i32 %i.oe to i8
  %i.og = getelementptr i8, ptr %i.od, i64 1
  store i8 %i.of, ptr %i.og, align 1, !tbaa !11
  %i.oh = lshr i32 %i.nz, 24
  %i.oi = trunc nuw i32 %i.oh to i8
  %i.oj = getelementptr i8, ptr %i.od, i64 2
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !11
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !12
  store i32 %.0677275.i65, ptr %i.lr, align 4, !tbaa !12
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !12
  %i.ok = add nuw i64 %.06576.i64, 1              ; 2 uses
  %.not71.i74 = icmp uge i64 %i.ok, %7            ; 2 uses
  %i.ol = icmp ugt ptr %.162.i73, %5
  %or.cond.i75 = select i1 %.not71.i74, i1 true, i1 %i.ol
  br i1 %or.cond.i75, label %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit, label %bb.w, !llvm.loop !26

_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit: ; preds = %bb.z, %bb.v
  %.061.lcssa.i76 = phi ptr [ %.026, %bb.v ], [ %.162.i73, %bb.z ]
  %.not71.lcssa.i77 = phi i1 [ %.not7173.i, %bb.v ], [ %.not71.i74, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not71.lcssa.i77, label %select.unfold83, label %.thread

select.unfold83:                                  ; preds = %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit, %_ZN7meshoptL15decodeTrianglesIjEEPKhPT_S2_S2_S2_m.exit
  %.1 = phi ptr [ %.061.lcssa.i, %_ZN7meshoptL15decodeTrianglesIjEEPKhPT_S2_S2_S2_m.exit ], [ %.061.lcssa.i76, %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit ]
  %i.om = icmp eq ptr %.1, %5
  %i.on = select i1 %i.om, i32 0, i32 -3
  br label %.thread

.thread:                                          ; preds = %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit, %_ZN7meshoptL15decodeTrianglesIjEEPKhPT_S2_S2_S2_m.exit, %_ZN7meshoptL14decodeVerticesItEEPKhPT_S2_S2_S2_m.exit, %_ZN7meshoptL14decodeVerticesIjEEPKhPT_S2_S2_S2_m.exit, %select.unfold, %select.unfold83
  %.0 = phi i32 [ %i.on, %select.unfold83 ], [ -2, %select.unfold ], [ -2, %_ZN7meshoptL14decodeVerticesItEEPKhPT_S2_S2_S2_m.exit ], [ -2, %_ZN7meshoptL14decodeVerticesIjEEPKhPT_S2_S2_S2_m.exit ], [ -2, %_ZN7meshoptL15decodeTrianglesIjEEPKhPT_S2_S2_S2_m.exit ], [ -2, %_ZN7meshoptL15decodeTrianglesIhEEPKhPT_S2_S2_S2_m.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @meshopt_decodeMeshletRaw(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %3, 1
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add i64 %1, 3
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = add nuw i64 %i.b, %i.d                   ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 16, i64 %i.e) ; 2 uses
  %i.g = add nuw i64 %i.f, %i.e
  %i.h = icmp ult i64 %5, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.j = sub nsw i64 0, %i.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = sub nsw i64 0, %i.d
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sub nsw i64 0, %i.f
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr @_ZN7meshoptL24gDecodeTablesInitializedE, align 1, !tbaa !15, !range !16, !noundef !17
  %i.q = trunc nuw i8 %i.p to i1
  %_ZN7meshoptL17decodeMeshletSimdILi1EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm = select i1 %i.q, ptr @_ZN7meshoptL17decodeMeshletSimdILi1EEEiPvS1_PKhS3_S3_S3_mmmm, ptr @_ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm
  %i.r = tail call noundef i32 %_ZN7meshoptL17decodeMeshletSimdILi1EEEiPvS1_PKhS3_S3_S3_mmmm._ZN7meshoptL13decodeMeshletEPvS0_PKhS2_S2_S2_mmmm(ptr noundef %0, ptr noundef %2, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %4, ptr noundef %i.o, i64 noundef %1, i64 noundef %3, i64 noundef 4, i64 noundef 4), !callees !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef range(i32 -3, 1) i32 @_ZN7meshoptL17decodeMeshletSimdILi1EEEiPvS1_PKhS3_S3_S3_mmmm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readnone captures(address) %5, i64 noundef %6, i64 noundef %7, i64 %8, i64 %9) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.a = add i64 %6, 3
  %i.b = lshr i64 %i.a, 2                         ; 2 uses
  %.not41.i48.not = icmp eq i64 %i.b, 0
  br i1 %.not41.i48.not, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.031.i51 = phi i64 [ %i.aa, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi <4 x i32> [ %i.u, %bb.b ], [ splat (i32 -1), %bb.a ]
  %.038.i50 = phi ptr [ %i.d, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.02849 = phi ptr [ %i.y, %bb.b ], [ %4, %bb.a ] ; 3 uses
  %.not.i = icmp ugt ptr %.02849, %5
  br i1 %.not.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.038.i50, i64 1
  %i.e = load i8, ptr %.038.i50, align 1, !tbaa !11
  %i.f = load <16 x i8>, ptr %.02849, align 1, !tbaa !11
  %i.g = zext i8 %i.e to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.g
  %i.i = load <16 x i8>, ptr %i.h, align 16, !tbaa !11
  %i.j = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.f, <16 x i8> %i.i) ; 2 uses
  %i.k = bitcast <16 x i8> %i.j to <4 x i32>
  %i.l = bitcast <16 x i8> %i.j to <4 x i32>
  %i.m = and <4 x i32> %i.l, splat (i32 1)
  %i.n = sub nsw <4 x i32> zeroinitializer, %i.m
  %i.o = lshr <4 x i32> %i.k, splat (i32 1)
  %i.p = xor <4 x i32> %i.o, %i.n
  %i.q = add <4 x i32> %i.p, splat (i32 1)        ; 2 uses
  %10 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.q, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.r = add <4 x i32> %i.q, %10                  ; 2 uses
  %11 = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.r, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.t = add <4 x i32> %i.r, %i.s
  %i.u = add <4 x i32> %i.t, %11                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.g
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.02849, i64 %i.x ; 2 uses
  %.idx.i = shl nuw i64 %.031.i51, 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  store <4 x i32> %i.u, ptr %i.z, align 1, !tbaa !11
  %i.aa = add nuw nsw i64 %.031.i51, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.b
  br i1 %exitcond.not, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit, label %.lr.ph, !llvm.loop !0

_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit: ; preds = %bb.b, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.y, %bb.b ] ; 2 uses
  %i.ab = add i64 %7, 1
  %i.ac = lshr i64 %i.ab, 1                       ; 2 uses
  %.not38.i52.not = icmp eq i64 %i.ac, 0
  br i1 %.not38.i52.not, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit, label %.lr.ph57

.lr.ph57:                                         ; preds = %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit, %bb.c
  %.029.i56 = phi ptr [ %i.ad, %bb.c ], [ %2, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit ] ; 2 uses
  %.034.i55 = phi i64 [ %i.az, %bb.c ], [ 0, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit ] ; 2 uses
  %.035.i54 = phi <2 x i64> [ %i.aq, %bb.c ], [ zeroinitializer, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit ]
  %.02953 = phi ptr [ %i.au, %bb.c ], [ %.028.lcssa, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit ] ; 3 uses
  %.not.i21 = icmp ugt ptr %.02953, %5
  br i1 %.not.i21, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph57
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.i56, i64 1
  %i.ae = load i8, ptr %.029.i56, align 1, !tbaa !11
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.af
  %i.ah = load <16 x i8>, ptr %i.ag, align 16, !tbaa !11 ; 2 uses
  %12 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ah, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.ai = load i64, ptr %.02953, align 1, !tbaa !11
  %i.aj = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %i.ak = bitcast <2 x i64> %.035.i54 to <8 x i16>
  %i.al = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.am = shufflevector <8 x i16> %i.al, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = bitcast <8 x i16> %i.am to <16 x i8>
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.an, <16 x i8> %i.ah)
  %i.ap = add <16 x i8> %i.ao, %12                ; 2 uses
  %i.aq = bitcast <16 x i8> %i.ap to <2 x i64>
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.af
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.02953, i64 %i.at ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 16, i32 12, i32 13, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aw = bitcast <16 x i8> %i.av to <2 x i64>
  %.idx.i22 = shl nuw i64 %.034.i55, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i22
  %i.ay = extractelement <2 x i64> %i.aw, i64 0
  store i64 %i.ay, ptr %i.ax, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.034.i55, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.az, %i.ac
  br i1 %exitcond61.not, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit, label %.lr.ph57, !llvm.loop !1

_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit: ; preds = %bb.c, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit
  %.029.lcssa = phi ptr [ %.028.lcssa, %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit ], [ %i.au, %bb.c ]
  %i.ba = icmp eq ptr %.029.lcssa, %5
  %i.bb = select i1 %i.ba, i32 0, i32 -3
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread

_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread: ; preds = %.lr.ph, %.lr.ph57, %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit
  %.0 = phi i32 [ %i.bb, %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit ], [ -2, %.lr.ph57 ], [ -2, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #8

; Function Attrs: nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_meshletcodec.cpp() #9 section ".text.startup" {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 10 uses
  %i.c = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #12, !srcloc !32
  %i.d = extractvalue { i32, i32, i32, i32 } %i.c, 2
  %i.e = and i32 %i.d, 524288                     ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %__cxx_global_var_init.exit, label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.preheader119.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader119.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i8 12, ptr %i.f, align 2, !tbaa !11
  store i8 13, ptr %i.g, align 1, !tbaa !11
  store i8 14, ptr %i.h, align 8, !tbaa !11
  store i8 15, ptr %i.i, align 1, !tbaa !11
  %i.v = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 4 uses
  %i.w = and i32 %i.v, 15                         ; 5 uses
  %i.x = icmp samesign ult i32 %i.w, 12
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = lshr i32 %i.w, 2
  %i.z = sub nuw nsw i32 2, %i.y
  %i.aa = mul nuw nsw i32 %i.z, 3
  %i.ab = add nuw nsw i32 %i.aa, 6                ; 2 uses
  %i.ac = and i32 %i.v, 2                         ; 2 uses
  %.not112.i.i = icmp eq i32 %i.ac, 0
  %i.ad = add nuw nsw i32 %i.ab, %i.ac
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = select i1 %.not112.i.i, i32 2, i32 1
  %i.ag = add nuw nsw i32 %i.ab, %i.af
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  %i.ai = and i32 %i.v, 1                         ; 3 uses
  %.not114.i.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not114.i.i, i8 15, i8 0
  %i.ak = xor i32 %i.ai, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = icmp ne i32 %i.w, 12                    ; 4 uses
  %i.am = zext i1 %i.al to i32
  %i.an = icmp samesign ugt i32 %i.w, 13          ; 3 uses
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.w, 15                    ; 4 uses
  %i.aq = zext i1 %i.ap to i32
  %i.ar = select i1 %i.al, i8 0, i8 15
  %not..i.i = xor i1 %i.al, true                  ; 2 uses
  %i.as = zext i1 %not..i.i to i32
  %i.at = zext i1 %i.al to i8
  %i.au = select i1 %i.an, i8 %i.at, i8 15
  %i.av = zext i1 %not..i.i to i8                 ; 2 uses
  store i8 %i.av, ptr %i.o, align 2, !tbaa !11
  %i.aw = add nuw nsw i32 %i.am, %i.ao            ; 2 uses
  %not.110.i.i = xor i1 %i.an, true
  %i.ax = zext i1 %not.110.i.i to i32
  %i.ay = add nuw nsw i32 %i.as, %i.ax            ; 2 uses
  %i.az = trunc nuw nsw i32 %i.aw to i8
  %i.ba = select i1 %i.ap, i8 %i.az, i8 15
  %i.bb = trunc nuw nsw i32 %i.ay to i8
  %i.bc = select i1 %i.ap, i8 0, i8 %i.bb         ; 2 uses
  store i8 %i.bc, ptr %i.s, align 1, !tbaa !11
  %i.bd = add nuw nsw i32 %i.aw, %i.aq
  %not.111.i.i = xor i1 %i.ap, true
  %i.be = zext i1 %not.111.i.i to i32
  %i.bf = add nuw nsw i32 %i.ay, %i.be
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val.i.i = phi i8 [ 0, %bb.c ], [ %i.av, %bb.d ]
  %.sroa.gep193.val.i.i = phi i8 [ 0, %bb.c ], [ %i.bc, %bb.d ]
  %.sink4.i = phi i8 [ %i.ae, %bb.c ], [ %i.ar, %bb.d ]
  %.val2.i = phi i8 [ %i.ah, %bb.c ], [ %i.au, %bb.d ] ; 2 uses
  %.val.i = phi i8 [ %i.aj, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %.1106.i.i = phi i32 [ %i.ai, %bb.c ], [ %i.bd, %bb.d ] ; 4 uses
  %.1.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.bf, %bb.d ] ; 4 uses
  store i8 %.sink4.i, ptr %i.p, align 1, !tbaa !11
  store i8 %.val2.i, ptr %i.q, align 2, !tbaa !11
  store i8 %.val.i, ptr %i.r, align 1, !tbaa !11
  %i.bg = lshr i32 %i.v, 4                        ; 4 uses
  %i.bh = and i32 %i.bg, 15                       ; 5 uses
  %i.bi = icmp samesign ult i32 %i.bh, 12
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = icmp ne i32 %i.bh, 12                   ; 4 uses
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp samesign ugt i32 %i.bh, 13         ; 4 uses
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bh, 15                   ; 4 uses
  %i.bo = zext i1 %i.bn to i32
  %i.bp = trunc nuw nsw i32 %.1106.i.i to i8
  %i.bq = select i1 %i.bj, i8 %i.bp, i8 15
  store i8 %i.bq, ptr %i.j, align 4, !tbaa !11
  %i.br = trunc nuw nsw i32 %.1.i.i to i8
  %i.bs = select i1 %i.bj, i8 0, i8 %i.br
  store i8 %i.bs, ptr %i.k, align 4, !tbaa !11
  %i.bt = add nuw nsw i32 %.1106.i.i, %i.bk       ; 2 uses
  %not..1.i.i = xor i1 %i.bj, true
  %i.bu = zext i1 %not..1.i.i to i32
  %i.bv = add nuw nsw i32 %.1.i.i, %i.bu          ; 2 uses
  %i.bw = trunc nuw nsw i32 %i.bt to i8
  %i.bx = select i1 %i.bl, i8 %i.bw, i8 15
  store i8 %i.bx, ptr %i.l, align 1, !tbaa !11
  %i.by = trunc nuw nsw i32 %i.bv to i8
  %i.bz = select i1 %i.bl, i8 0, i8 %i.by
  store i8 %i.bz, ptr %i.m, align 1, !tbaa !11
  %i.ca = add nuw nsw i32 %i.bt, %i.bm            ; 2 uses
  %not.110.1.i.i = xor i1 %i.bl, true
  %i.cb = zext i1 %not.110.1.i.i to i32
  %i.cc = add nuw nsw i32 %i.bv, %i.cb            ; 2 uses
  %i.cd = trunc nuw nsw i32 %i.ca to i8
  %i.ce = select i1 %i.bn, i8 %i.cd, i8 15
  store i8 %i.ce, ptr %i.t, align 2, !tbaa !11
  %i.cf = trunc nuw nsw i32 %i.cc to i8
  %i.cg = select i1 %i.bn, i8 0, i8 %i.cf
  store i8 %i.cg, ptr %i.u, align 2, !tbaa !11
  %i.ch = add nuw nsw i32 %i.ca, %i.bo
  %not.111.1.i.i = xor i1 %i.bn, true
  %i.ci = zext i1 %not.111.1.i.i to i32
  %i.cj = add nuw nsw i32 %i.cc, %i.ci
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ck = icmp samesign ult i64 %indvars.iv.i.i, 64
  br i1 %i.ck, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = lshr i32 %i.bh, 2
  %i.cm = sub nuw nsw i32 2, %i.cl
  %i.cn = mul nuw nsw i32 %i.cm, 3
  %i.co = add nuw nsw i32 %i.cn, 9                ; 2 uses
  %i.cp = and i32 %i.bg, 2                        ; 2 uses
  %.not112.1.i.i = icmp eq i32 %i.cp, 0
  %i.cq = add nuw nsw i32 %i.co, %i.cp
  %i.cr = trunc nuw nsw i32 %i.cq to i8
end_hunk_1
