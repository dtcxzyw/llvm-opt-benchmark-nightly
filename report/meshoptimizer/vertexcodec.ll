Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i:bb.a
  %i.vy = or disjoint i16 %i.vx, %i.vt
  %i.vz = and i16 %i.vt, 1
  %i.wa = sub nsw i16 0, %i.vz
  %i.wb = lshr i16 %i.vy, 1
  %i.wc = xor i16 %i.wb, %i.wa
  %i.wd = add i16 %i.wc, %.152.us.1.i             ; 2 uses
  %i.we = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i
  store i16 %i.wd, ptr %i.we, align 1
  %i.wf = add i64 %.04251.us.1.i, %4              ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 1 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !9
  %i.wj = zext i8 %i.wi to i16                    ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wh, i64 %3
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !9
  %i.wm = zext i8 %i.wl to i16
  %i.wn = shl nuw i16 %i.wm, 8
  %i.wo = or disjoint i16 %i.wn, %i.wj
  %i.wp = and i16 %i.wj, 1
  %i.wq = sub nsw i16 0, %i.wp
  %i.wr = lshr i16 %i.wo, 1
  %i.ws = xor i16 %i.wr, %i.wq
  %i.wt = add i16 %i.ws, %i.wd                    ; 3 uses
  %i.wu = getelementptr i8, ptr %i.ts, i64 %i.wf
  store i16 %i.wt, ptr %i.wu, align 1
  %i.wv = add i64 %i.wf, %4                       ; 2 uses
  %i.ww = add nuw nsw i64 %.03953.us.1.i, 2       ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, label %._crit_edge.us.i.new, !llvm.loop !51

bb.t:                                             ; preds = %bb.r
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.081148
  %i.wy = lshr i32 %i.ph, 4
  br i1 %.not.i107, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.split.us.i

.split.us.i:                                      ; preds = %bb.t
  %i.wz = getelementptr inbounds nuw i8, ptr %5, i64 %.081148
  %i.xa = load i32, ptr %i.wz, align 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.split.us.i
  %.04056.us.i = phi i64 [ %i.xx, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %.155.us.i = phi i32 [ %i.xu, %.preheader.us.i ], [ %i.xa, %.split.us.i ]
  %.04354.us.i = phi i64 [ %i.xw, %.preheader.us.i ], [ 0, %.split.us.i ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.04056.us.i ; 4 uses
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !9
  %i.xd = zext i8 %i.xc to i32
  %i.xe = getelementptr i8, ptr %i.xb, i64 %3
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !9
  %i.xg = zext i8 %i.xf to i32
  %i.xh = shl nuw nsw i32 %i.xg, 8
  %i.xi = or disjoint i32 %i.xh, %i.xd
  %i.xj = getelementptr i8, ptr %i.xb, i64 %i.p
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !9
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, 16
  %i.xn = or disjoint i32 %i.xi, %i.xm
  %i.xo = getelementptr i8, ptr %i.xb, i64 %i.q
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !9
  %i.xq = zext i8 %i.xp to i32
  %i.xr = shl nuw i32 %i.xq, 24
  %i.xs = or disjoint i32 %i.xn, %i.xr            ; 2 uses
  %i.xt = tail call i32 @llvm.fshr.i32(i32 %i.xs, i32 %i.xs, i32 %i.wy)
  %i.xu = xor i32 %i.xt, %.155.us.i               ; 2 uses
  %i.xv = getelementptr i8, ptr %i.wx, i64 %.04354.us.i
  store i32 %i.xu, ptr %i.xv, align 1
  %i.xw = add i64 %.04354.us.i, %4
  %i.xx = add nuw nsw i64 %.04056.us.i, 1         ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %i.xx, %3
  br i1 %exitcond.not.i108, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.preheader.us.i, !llvm.loop !52

default.unreachable161:                           ; preds = %bb.r
  unreachable

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.2.i.new
  br i1 %lcmp.mod206.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader204

.epil.preheader204:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %._crit_edge.2.i
  %.03950.3.i.epil.init = phi i64 [ 0, %._crit_edge.2.i ], [ %i.sx, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.149.3.i.epil.init = phi i8 [ %i.sd, %._crit_edge.2.i ], [ %i.su, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  %.04248.3.i.epil.init = phi i64 [ 3, %._crit_edge.2.i ], [ %i.sw, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.u, i64 %.03950.3.i.epil.init
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !9   ; 2 uses
  %i.ya = and i8 %i.xz, 1
  %i.yb = sub nsw i8 0, %i.ya
  %i.yc = lshr i8 %i.xz, 1
  %i.yd = xor i8 %i.yc, %i.yb
  %i.ye = add i8 %i.yd, %.149.3.i.epil.init
  %i.yf = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.04248.3.i.epil.init
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !9
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa: ; preds = %._crit_edge.us.i.new
  br i1 %lcmp.mod182.not, label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %._crit_edge.us.i
  %.03953.us.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ww, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.152.us.1.i.epil.init = phi i16 [ %i.vq, %._crit_edge.us.i ], [ %i.wt, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  %.04251.us.1.i.epil.init = phi i64 [ 2, %._crit_edge.us.i ], [ %i.wv, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.03953.us.1.i.epil.init ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !9
  %i.yi = zext i8 %i.yh to i16                    ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yg, i64 %3
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !9
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = or disjoint i16 %i.ym, %i.yi
  %i.yo = and i16 %i.yi, 1
  %i.yp = sub nsw i16 0, %i.yo
  %i.yq = lshr i16 %i.yn, 1
  %i.yr = xor i16 %i.yq, %i.yp
  %i.ys = add i16 %i.yr, %.152.us.1.i.epil.init
  %i.yt = getelementptr i8, ptr %i.ts, i64 %.04251.us.1.i.epil.init
  store i16 %i.ys, ptr %i.yt, align 1
  br label %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit

_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit: ; preds = %.preheader.us.i, %.epil.preheader180, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit174.unr-lcssa, %.epil.preheader204, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit.loopexit.unr-lcssa, %bb.t, %bb.s, %.thread134
  %i.yu = add i64 %.081148, 4                     ; 2 uses
  %.not100 = icmp ult i64 %i.yu, %4
  br i1 %.not100, label %bb.c, label %.critedge.thread, !llvm.loop !53

.critedge.thread:                                 ; preds = %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit, %bb.b
  %.088.lcssa = phi ptr [ %i.l, %bb.b ], [ %.391112, %_ZN7meshoptL13decodeDeltas1IhLb0EEEvPKhPhmmS2_i.exit ]
  %i.yv = mul i64 %4, %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 16 %i.b, i64 %i.yv, i1 false)
  %i.yw = add i64 %3, -1
  %i.yx = mul i64 %4, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.yy, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %.thread126, %bb.g, %bb.j, %bb.q, %.critedge.thread, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %.088.lcssa, %.critedge.thread ], [ null, %.thread126 ], [ null, %bb.q ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #9

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_vertexcodec.cpp() #10 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind1 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next2, %vector.body ] ; 9 uses
  %i.a = and <2 x i32> %vec.ind1, splat (i32 1)   ; 2 uses
  %i.b = icmp eq <2 x i32> %i.a, zeroinitializer
  %i.c = lshr <2 x i32> %vec.ind1, splat (i32 1)
  %i.d = and <2 x i32> %i.c, splat (i32 1)        ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = add nuw nsw <2 x i32> %i.d, %i.a         ; 2 uses
  %i.g = lshr <2 x i32> %vec.ind1, splat (i32 2)
  %i.h = and <2 x i32> %i.g, splat (i32 1)        ; 2 uses
  %i.i = icmp eq <2 x i32> %i.h, zeroinitializer
  %i.j = add nuw nsw <2 x i32> %i.f, %i.h         ; 2 uses
  %i.k = lshr <2 x i32> %vec.ind1, splat (i32 3)
  %i.l = and <2 x i32> %i.k, splat (i32 1)        ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add nuw nsw <2 x i32> %i.j, %i.l         ; 2 uses
  %i.o = lshr <2 x i32> %vec.ind1, splat (i32 4)
  %i.p = and <2 x i32> %i.o, splat (i32 1)        ; 2 uses
  %i.q = icmp eq <2 x i32> %i.p, zeroinitializer
  %i.r = add nuw nsw <2 x i32> %i.n, %i.p         ; 2 uses
  %i.s = lshr <2 x i32> %vec.ind1, splat (i32 5)
  %i.t = and <2 x i32> %i.s, splat (i32 1)        ; 2 uses
  %i.u = icmp eq <2 x i32> %i.t, zeroinitializer
  %i.v = add nuw nsw <2 x i32> %i.r, %i.t         ; 2 uses
  %i.w = lshr <2 x i32> %vec.ind1, splat (i32 6)
  %i.x = and <2 x i32> %i.w, splat (i32 1)        ; 2 uses
  %i.y = icmp eq <2 x i32> %i.x, zeroinitializer
  %i.z = add nuw nsw <2 x i32> %i.v, %i.x
  %i.aa = and <2 x i32> %vec.ind1, splat (i32 128)
  %i.ab = icmp eq <2 x i32> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN7meshoptL24kDecodeBytesGroupShuffleE, i64 %index
  %i.ad = select <2 x i1> %i.ab, <2 x i32> splat (i32 128), <2 x i32> %i.z
  %i.ae = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.af = shl nuw <2 x i64> %i.ae, splat (i64 56)
  %i.ag = select <2 x i1> %i.y, <2 x i32> splat (i32 128), <2 x i32> %i.v
  %i.ah = zext nneg <2 x i32> %i.ag to <2 x i64>
  %i.ai = shl nuw nsw <2 x i64> %i.ah, splat (i64 48)
  %0 = add nuw nsw <2 x i64> %i.af, %i.ai
  %i.aj = select <2 x i1> %i.u, <2 x i32> splat (i32 128), <2 x i32> %i.r
  %i.ak = zext nneg <2 x i32> %i.aj to <2 x i64>
  %i.al = shl nuw nsw <2 x i64> %i.ak, splat (i64 40)
  %i.am = select <2 x i1> %i.q, <2 x i32> splat (i32 128), <2 x i32> %i.n
  %i.an = zext nneg <2 x i32> %i.am to <2 x i64>
  %i.ao = shl nuw nsw <2 x i64> %i.an, splat (i64 32)
  %i.ap = shl nuw nsw <2 x i32> %i.j, splat (i32 24)
  %i.aq = select <2 x i1> %i.m, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.ap
  %i.ar = zext <2 x i32> %i.aq to <2 x i64>
  %i.as = shl nuw nsw <2 x i32> %i.f, splat (i32 16)
  %i.at = select <2 x i1> %i.i, <2 x i32> splat (i32 8388608), <2 x i32> %i.as
  %i.au = zext nneg <2 x i32> %i.at to <2 x i64>
  %i.av = shl nuw nsw <2 x i64> %vec.ind, splat (i64 8)
  %i.aw = and <2 x i64> %i.av, splat (i64 256)
  %i.ax = select <2 x i1> %i.e, <2 x i64> splat (i64 32768), <2 x i64> %i.aw
  %i.ay = select <2 x i1> %i.b, <2 x i64> splat (i64 128), <2 x i64> zeroinitializer
  %i.az = or disjoint <2 x i64> %i.ax, %i.ay
  %i.ba = or disjoint <2 x i64> %i.az, %i.au
  %i.bb = or disjoint <2 x i64> %i.ba, %i.ar
  %i.bc = or disjoint <2 x i64> %i.bb, %i.ao
  %i.bd = or <2 x i64> %i.bc, %i.al
  %i.be = or <2 x i64> %i.bd, %0
  store <2 x i64> %i.be, ptr %i.ac, align 16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next2 = add <2 x i32> %vec.ind1, splat (i32 2)
  %i.bf = icmp eq i64 %index.next, 256
  br i1 %i.bf, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !54

__cxx_global_var_init.exit:                       ; preds = %vector.body
  %i.bg = tail call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #13, !srcloc !55
  %i.bh = extractvalue { i32, i32, i32, i32 } %i.bg, 2
  store i32 %i.bh, ptr @_ZN7meshoptL5cpuidE, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i14 @llvm.ctpop.i14(i14) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v16i64(<16 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !34}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !12, !11}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !12, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"long", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = distinct !{!37, !10}
!38 = !{ptr @_ZN7meshoptL17decodeVertexBlockEPKhS1_PhmmS2_S1_i, ptr @_ZN7meshoptL21decodeVertexBlockSimdEPKhS1_PhmmS2_S1_i}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = !{!"long long", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10, !11, !12}
!55 = !{i64 2148922228, i64 2148922310, i64 2148922391}
end_hunk_0
