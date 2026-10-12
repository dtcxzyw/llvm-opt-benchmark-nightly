Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletcodec?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@meshopt_encodeMeshlet:bb.a
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
  %.031.i147 = phi i64 [ %i.ac, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.c = phi <4 x i32> [ %i.w, %bb.c ], [ splat (i32 -1), %bb.b ]
  %.038.i146 = phi ptr [ %i.d, %bb.c ], [ %3, %bb.b ] ; 2 uses
  %.067145 = phi ptr [ %i.aa, %bb.c ], [ %4, %bb.b ] ; 3 uses
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
  %i.r = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.q, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.s = add <4 x i32> %i.q, %i.r                 ; 2 uses
  %i.t = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.s, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.u = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.v = add <4 x i32> %i.s, %i.u
  %i.w = add <4 x i32> %i.v, %i.t                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.g
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.067145, i64 %i.z ; 2 uses
  %.idx.i = shl nuw i64 %.031.i147, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  store <4 x i32> %i.w, ptr %i.ab, align 1, !tbaa !11
  %i.ac = add nuw nsw i64 %.031.i147, 1           ; 2 uses
  %exitcond191.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond191.not, label %._crit_edge150.loopexit, label %.lr.ph149, !llvm.loop !0

._crit_edge150.loopexit:                          ; preds = %bb.c
  %i.ad = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 poison>
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit, %bb.b
  %.067.lcssa = phi ptr [ %4, %bb.b ], [ %i.aa, %._crit_edge150.loopexit ] ; 4 uses
  %.038.i.lcssa = phi ptr [ %3, %bb.b ], [ %i.d, %._crit_edge150.loopexit ]
  %.lcssa = phi <4 x i32> [ <i32 -1, i32 -1, i32 -1, i32 undef>, %bb.b ], [ %i.ad, %._crit_edge150.loopexit ]
  %i.ae = and i64 %6, 3                           ; 3 uses
  %.not42.i = icmp eq i64 %i.ae, 0
  br i1 %.not42.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.d

bb.d:                                             ; preds = %._crit_edge150
  %.not44.i = icmp ugt ptr %.067.lcssa, %5
  br i1 %.not44.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %.038.i.lcssa, align 1, !tbaa !11
  %i.ag = load <16 x i8>, ptr %.067.lcssa, align 1, !tbaa !11
  %i.ah = zext i8 %i.af to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.ah
  %i.aj = load <16 x i8>, ptr %i.ai, align 16, !tbaa !11
  %i.ak = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ag, <16 x i8> %i.aj) ; 2 uses
  %i.al = bitcast <16 x i8> %i.ak to <4 x i32>
  %i.am = bitcast <16 x i8> %i.ak to <4 x i32>
  %i.an = and <4 x i32> %i.am, splat (i32 1)
  %i.ao = sub nsw <4 x i32> zeroinitializer, %i.an
  %i.ap = lshr <4 x i32> %i.al, splat (i32 1)
  %i.aq = xor <4 x i32> %i.ap, %i.ao
  %i.ar = add <4 x i32> %i.aq, splat (i32 1)      ; 2 uses
  %i.as = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.ar, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.at = add <4 x i32> %i.ar, %i.as              ; 2 uses
  %i.au = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.at, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.av = add <4 x i32> %i.at, %.lcssa
  %i.aw = add <4 x i32> %i.av, %i.au              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.ah
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 %i.az ; 3 uses
  %i.bb = and i64 %6, 4294967292
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb ; 3 uses
  %i.bd = extractelement <4 x i32> %i.aw, i64 0
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !12
  %cond.i = icmp eq i64 %i.ae, 1
  br i1 %cond.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = extractelement <4 x i32> %i.aw, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !12
  %i.bg = icmp eq i64 %i.ae, 3
  br i1 %i.bg, label %bb.g, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.g:                                             ; preds = %bb.f
  %i.bh = extractelement <4 x i32> %i.aw, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !12
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.h:                                             ; preds = %bb.a
  %i.bj = add i64 %6, 1                           ; 2 uses
  %i.bk = lshr i64 %i.bj, 2                       ; 2 uses
  %.not39.i138.not = icmp eq i64 %i.bk, 0
  br i1 %.not39.i138.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.029.i141 = phi ptr [ %i.bm, %bb.i ], [ %3, %bb.h ] ; 2 uses
  %.034.i140 = phi i64 [ %i.cp, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.bl = phi <4 x i32> [ %i.cf, %bb.i ], [ splat (i32 -1), %bb.h ]
  %.069139 = phi ptr [ %i.cj, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %.not.i30 = icmp ugt ptr %.069139, %5
  br i1 %.not.i30, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.029.i141, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.029.i141, align 1, !tbaa !11
  %i.bo = load <16 x i8>, ptr %.069139, align 1, !tbaa !11
  %i.bp = zext i8 %i.bn to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.bp
  %i.br = load <16 x i8>, ptr %i.bq, align 16, !tbaa !11
  %i.bs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bo, <16 x i8> %i.br) ; 2 uses
  %i.bt = bitcast <16 x i8> %i.bs to <4 x i32>
  %i.bu = bitcast <16 x i8> %i.bs to <4 x i32>
  %i.bv = and <4 x i32> %i.bu, splat (i32 1)
  %i.bw = sub nsw <4 x i32> zeroinitializer, %i.bv
  %i.bx = lshr <4 x i32> %i.bt, splat (i32 1)
  %i.by = xor <4 x i32> %i.bx, %i.bw
  %i.bz = add <4 x i32> %i.by, splat (i32 1)      ; 2 uses
  %i.ca = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.bz, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.cb = add <4 x i32> %i.bz, %i.ca              ; 2 uses
  %i.cc = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cd = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ce = add <4 x i32> %i.cb, %i.cd
  %i.cf = add <4 x i32> %i.ce, %i.cc              ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.bp
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.069139, i64 %i.ci ; 2 uses
  %i.ck = bitcast <4 x i32> %i.cf to <16 x i8>
  %i.cl = shufflevector <16 x i8> %i.ck, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = bitcast <16 x i8> %i.cl to <2 x i64>
  %.idx.i31 = shl nuw i64 %.034.i140, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i31
  %i.co = extractelement <2 x i64> %i.cm, i64 0
  store i64 %i.co, ptr %i.cn, align 1, !tbaa !11
  %i.cp = add nuw nsw i64 %.034.i140, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.bk
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.cq = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.069.lcssa = phi ptr [ %4, %bb.h ], [ %i.cj, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa135 = phi <4 x i32> [ <i32 -1, i32 -1, i32 undef, i32 undef>, %bb.h ], [ %i.cq, %._crit_edge.loopexit ]
  %.029.i.lcssa = phi ptr [ %3, %bb.h ], [ %i.bm, %._crit_edge.loopexit ]
  %i.cr = and i64 %i.bj, -4
  %i.cs = icmp ult i64 %i.cr, %6
  br i1 %i.cs, label %bb.j, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

bb.j:                                             ; preds = %._crit_edge
  %.not40.i = icmp ugt ptr %.069.lcssa, %5
  br i1 %.not40.i, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = load i8, ptr %.029.i.lcssa, align 1, !tbaa !11
  %i.cu = load <16 x i8>, ptr %.069.lcssa, align 1, !tbaa !11
  %i.cv = zext i8 %i.ct to i64                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableVertsE, i64 %i.cv
  %i.cx = load <16 x i8>, ptr %i.cw, align 16, !tbaa !11
  %i.cy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cu, <16 x i8> %i.cx) ; 2 uses
  %i.cz = bitcast <16 x i8> %i.cy to <4 x i32>
  %i.da = bitcast <16 x i8> %i.cy to <4 x i32>
  %i.db = and <4 x i32> %i.da, splat (i32 1)
  %i.dc = sub nsw <4 x i32> zeroinitializer, %i.db
  %i.dd = lshr <4 x i32> %i.cz, splat (i32 1)
  %i.de = xor <4 x i32> %i.dd, %i.dc
  %i.df = add <4 x i32> %i.de, splat (i32 1)      ; 2 uses
  %i.dg = shufflevector <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> %i.df, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dh = add <4 x i32> %i.df, %i.dg              ; 2 uses
  %i.di = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %i.dh, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.dj = add <4 x i32> %i.dh, %.lcssa135
  %i.dk = add <4 x i32> %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL18kDecodeTableLengthE, i64 %i.cv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !11
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.069.lcssa, i64 %i.dn
  %i.dp = and i64 %6, 4294967292
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dp
  %i.dr = bitcast <4 x i32> %i.dk to <8 x i16>
  %i.ds = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.du = extractelement <4 x i32> %i.dt, i64 0
  store i32 %i.du, ptr %i.dq, align 1, !tbaa !12
  br label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97

_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97: ; preds = %bb.g, %bb.f, %bb.e, %bb.k, %._crit_edge150, %._crit_edge
  %.027100 = phi ptr [ %.069.lcssa, %._crit_edge ], [ %.067.lcssa, %._crit_edge150 ], [ %i.ba, %bb.e ], [ %i.do, %bb.k ], [ %i.ba, %bb.g ], [ %i.ba, %bb.f ] ; 4 uses
  %i.dv = icmp eq i64 %9, 4
  br i1 %i.dv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97
  %i.dw = lshr i64 %7, 1                          ; 2 uses
  %.not38.i165.not = icmp eq i64 %i.dw, 0
  br i1 %.not38.i165.not, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.l, %bb.m
  %.029.i34169 = phi ptr [ %i.dx, %bb.m ], [ %2, %bb.l ] ; 2 uses
  %.034.i33168 = phi i64 [ %i.eu, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.035.i32167 = phi <2 x i64> [ %i.el, %bb.m ], [ zeroinitializer, %bb.l ]
  %.073166 = phi ptr [ %i.ep, %bb.m ], [ %.027100, %bb.l ] ; 3 uses
  %.not.i40 = icmp ugt ptr %.073166, %5
  br i1 %.not.i40, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph171
  %i.dx = getelementptr inbounds nuw i8, ptr %.029.i34169, i64 1 ; 2 uses
  %i.dy = load i8, ptr %.029.i34169, align 1, !tbaa !11
  %i.dz = zext i8 %i.dy to i64                    ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.dz
  %i.eb = load <16 x i8>, ptr %i.ea, align 16, !tbaa !11 ; 2 uses
  %i.ec = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.eb, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.ed = load i64, ptr %.073166, align 1, !tbaa !11
  %i.ee = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %i.ef = bitcast <2 x i64> %.035.i32167 to <8 x i16>
  %i.eg = bitcast <2 x i64> %i.ee to <8 x i16>
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> %i.ef, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = bitcast <8 x i16> %i.eh to <16 x i8>
  %i.ej = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ei, <16 x i8> %i.eb)
  %i.ek = add <16 x i8> %i.ej, %i.ec              ; 3 uses
  %i.el = bitcast <16 x i8> %i.ek to <2 x i64>
  %i.em = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.dz
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.073166, i64 %i.eo ; 2 uses
  %i.eq = shufflevector <16 x i8> %i.ek, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 16, i32 12, i32 13, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = bitcast <16 x i8> %i.eq to <2 x i64>
  %.idx.i41 = shl nuw i64 %.034.i33168, 3
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i41
  %i.et = extractelement <2 x i64> %i.er, i64 0
  store i64 %i.et, ptr %i.es, align 1, !tbaa !11
  %i.eu = add nuw nsw i64 %.034.i33168, 1         ; 2 uses
  %exitcond193.not = icmp eq i64 %i.eu, %i.dw
  br i1 %exitcond193.not, label %._crit_edge172.loopexit, label %.lr.ph171, !llvm.loop !1

._crit_edge172.loopexit:                          ; preds = %bb.m
  %i.ev = bitcast <16 x i8> %i.ek to <8 x i16>
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit, %bb.l
  %.073.lcssa = phi ptr [ %.027100, %bb.l ], [ %i.ep, %._crit_edge172.loopexit ] ; 4 uses
  %.035.i32.lcssa = phi <8 x i16> [ zeroinitializer, %bb.l ], [ %i.ev, %._crit_edge172.loopexit ]
  %.029.i34.lcssa = phi ptr [ %2, %bb.l ], [ %i.dx, %._crit_edge172.loopexit ]
  %i.ew = and i64 %7, 1
  %.not39.i37 = icmp eq i64 %i.ew, 0
  br i1 %.not39.i37, label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118, label %bb.n

bb.n:                                             ; preds = %._crit_edge172
  %.not40.i38 = icmp ugt ptr %.073.lcssa, %5
  br i1 %.not40.i38, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load i8, ptr %.029.i34.lcssa, align 1, !tbaa !11
  %i.ey = zext i8 %i.ex to i64                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.ey
  %i.fa = load <16 x i8>, ptr %i.ez, align 16, !tbaa !11 ; 2 uses
  %i.fb = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.fa, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 15, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = load i64, ptr %.073.lcssa, align 1, !tbaa !11
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fd to <8 x i16>
  %i.ff = shufflevector <8 x i16> %i.fe, <8 x i16> %.035.i32.lcssa, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <8 x i16> %i.ff to <16 x i8>
  %i.fh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fg, <16 x i8> %i.fa)
  %i.fi = add <16 x i8> %i.fh, %i.fb
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.ey
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 %i.fl
  %i.fn = and i64 %7, 4294967294
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fn
  %i.fp = shufflevector <16 x i8> %i.fi, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = bitcast <16 x i8> %i.fp to <4 x i32>
  %i.fr = extractelement <4 x i32> %i.fq, i64 0
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !12
  br label %_ZN7meshoptL19decodeTrianglesSimdEPjPKhS2_S2_m.exit.thread118

bb.p:                                             ; preds = %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread97
  %i.fs = add i64 %7, 1                           ; 2 uses
  %i.ft = lshr i64 %i.fs, 2                       ; 2 uses
  %.not48.i154.not = icmp eq i64 %i.ft, 0
  br i1 %.not48.i154.not, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.p, %bb.q
  %.038.i43158 = phi ptr [ %i.fu, %bb.q ], [ %2, %bb.p ] ; 3 uses
  %.043.i157 = phi i64 [ %i.hm, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.044.i156 = phi <2 x i64> [ %i.hd, %bb.q ], [ zeroinitializer, %bb.p ]
  %.077155 = phi ptr [ %i.hh, %bb.q ], [ %.027100, %bb.p ] ; 3 uses
  %.not.i46 = icmp ugt ptr %.077155, %5
  br i1 %.not.i46, label %_ZN7meshoptL18decodeVerticesSimdEPjPKhS2_S2_m.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph160
  %i.fu = getelementptr inbounds nuw i8, ptr %.038.i43158, i64 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.038.i43158, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %i.fx = load i8, ptr %.038.i43158, align 1, !tbaa !11
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.fy
  %i.ga = load <16 x i8>, ptr %i.fz, align 16, !tbaa !11 ; 2 uses
  %i.gb = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ga, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.gc = load i64, ptr %.077155, align 1, !tbaa !11
  %i.gd = insertelement <2 x i64> poison, i64 %i.gc, i64 0
  %i.ge = bitcast <2 x i64> %.044.i156 to <8 x i16>
  %i.gf = bitcast <2 x i64> %i.gd to <8 x i16>
  %i.gg = shufflevector <8 x i16> %i.gf, <8 x i16> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = bitcast <8 x i16> %i.gg to <16 x i8>
  %i.gi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.gh, <16 x i8> %i.ga)
  %i.gj = add <16 x i8> %i.gi, %i.gb              ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.fy
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !11
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.077155, i64 %i.gm ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gj, <16 x i8> poison, <16 x i32> <i32 9, i32 10, i32 11, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = bitcast <16 x i8> %i.go to <4 x i32>
  %i.gq = extractelement <4 x i32> %i.gp, i64 0
  %i.gr = mul i64 %.043.i157, 12
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %i.gr ; 2 uses
  store i32 %i.gq, ptr %i.gs, align 1, !tbaa !12
  %i.gt = zext i8 %i.fw to i64                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr @_ZN7meshoptL17kDecodeTableMasksE, i64 %i.gt
  %i.gv = load <16 x i8>, ptr %i.gu, align 16, !tbaa !11 ; 2 uses
  %i.gw = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.gv, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.gx = load i64, ptr %i.gn, align 1, !tbaa !11
  %i.gy = insertelement <2 x i64> poison, i64 %i.gx, i64 0
  %i.gz = bitcast <2 x i64> %i.gy to <16 x i8>
  %i.ha = shufflevector <16 x i8> %i.gz, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ha, <16 x i8> %i.gv)
  %i.hc = add <16 x i8> %i.hb, %i.gw              ; 3 uses
  %i.hd = bitcast <16 x i8> %i.hc to <2 x i64>
  %i.he = getelementptr inbounds nuw i8, ptr @_ZN7meshoptL17kDecodeTableExtraE, i64 %i.gt
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hg ; 2 uses
  %i.hi = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = bitcast <16 x i8> %i.hi to <2 x i64>
  %i.hk = getelementptr i8, ptr %i.gs, i64 4
  %i.hl = extractelement <2 x i64> %i.hj, i64 0
  store i64 %i.hl, ptr %i.hk, align 1, !tbaa !11
  %i.hm = add nuw nsw i64 %.043.i157, 1           ; 2 uses
  %exitcond192.not = icmp eq i64 %i.hm, %i.ft
  br i1 %exitcond192.not, label %._crit_edge161.loopexit, label %.lr.ph160, !llvm.loop !22

._crit_edge161.loopexit:                          ; preds = %bb.q
  %i.hn = bitcast <16 x i8> %i.hc to <8 x i16>
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %bb.p
end_hunk_0
