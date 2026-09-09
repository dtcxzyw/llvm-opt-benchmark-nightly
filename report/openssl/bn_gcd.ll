Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_gcd?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BN_gcd:bb.a
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = add nsw i32 %i.fv, %i.fy
  %i.ga = lshr i64 %.0112.lcssa, 36
  %i.gb = and i64 %i.fx, %i.ga                    ; 2 uses
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = add nsw i32 %i.fz, %i.gc
  %i.ge = lshr i64 %.0112.lcssa, 37
  %i.gf = and i64 %i.gb, %i.ge                    ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = add nsw i32 %i.gd, %i.gg
  %i.gi = lshr i64 %.0112.lcssa, 38
  %i.gj = and i64 %i.gf, %i.gi                    ; 2 uses
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = add nsw i32 %i.gh, %i.gk
  %i.gm = lshr i64 %.0112.lcssa, 39
  %i.gn = and i64 %i.gj, %i.gm                    ; 2 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = add nsw i32 %i.gl, %i.go
  %i.gq = lshr i64 %.0112.lcssa, 40
  %i.gr = and i64 %i.gn, %i.gq                    ; 2 uses
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = add nsw i32 %i.gp, %i.gs
  %i.gu = lshr i64 %.0112.lcssa, 41
  %i.gv = and i64 %i.gr, %i.gu                    ; 2 uses
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = add nsw i32 %i.gt, %i.gw
  %i.gy = lshr i64 %.0112.lcssa, 42
  %i.gz = and i64 %i.gv, %i.gy                    ; 2 uses
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = add nsw i32 %i.gx, %i.ha
  %i.hc = lshr i64 %.0112.lcssa, 43
  %i.hd = and i64 %i.gz, %i.hc                    ; 2 uses
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = add nsw i32 %i.hb, %i.he
  %i.hg = lshr i64 %.0112.lcssa, 44
  %i.hh = and i64 %i.hd, %i.hg                    ; 2 uses
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = add nsw i32 %i.hf, %i.hi
  %i.hk = lshr i64 %.0112.lcssa, 45
  %i.hl = and i64 %i.hh, %i.hk                    ; 2 uses
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nsw i32 %i.hj, %i.hm
  %i.ho = lshr i64 %.0112.lcssa, 46
  %i.hp = and i64 %i.hl, %i.ho                    ; 2 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = add nsw i32 %i.hn, %i.hq
  %i.hs = lshr i64 %.0112.lcssa, 47
  %i.ht = and i64 %i.hp, %i.hs                    ; 2 uses
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = add nsw i32 %i.hr, %i.hu
  %i.hw = lshr i64 %.0112.lcssa, 48
  %i.hx = and i64 %i.ht, %i.hw                    ; 2 uses
  %i.hy = trunc nuw nsw i64 %i.hx to i32
  %i.hz = add nsw i32 %i.hv, %i.hy
  %i.ia = lshr i64 %.0112.lcssa, 49
  %i.ib = and i64 %i.hx, %i.ia                    ; 2 uses
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = add nsw i32 %i.hz, %i.ic
  %i.ie = lshr i64 %.0112.lcssa, 50
  %i.if = and i64 %i.ib, %i.ie                    ; 2 uses
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = add nsw i32 %i.id, %i.ig
  %i.ii = lshr i64 %.0112.lcssa, 51
  %i.ij = and i64 %i.if, %i.ii                    ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = add nsw i32 %i.ih, %i.ik
  %i.im = lshr i64 %.0112.lcssa, 52
  %i.in = and i64 %i.ij, %i.im                    ; 2 uses
  %i.io = trunc nuw nsw i64 %i.in to i32
  %i.ip = add nsw i32 %i.il, %i.io
  %i.iq = lshr i64 %.0112.lcssa, 53
  %i.ir = and i64 %i.in, %i.iq                    ; 2 uses
  %i.is = trunc nuw nsw i64 %i.ir to i32
  %i.it = add nsw i32 %i.ip, %i.is
  %i.iu = lshr i64 %.0112.lcssa, 54
  %i.iv = and i64 %i.ir, %i.iu                    ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = add nsw i32 %i.it, %i.iw
  %i.iy = lshr i64 %.0112.lcssa, 55
  %i.iz = and i64 %i.iv, %i.iy                    ; 2 uses
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = add nsw i32 %i.ix, %i.ja
  %i.jc = lshr i64 %.0112.lcssa, 56
  %i.jd = and i64 %i.iz, %i.jc                    ; 2 uses
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = add nsw i32 %i.jb, %i.je
  %i.jg = lshr i64 %.0112.lcssa, 57
  %i.jh = and i64 %i.jd, %i.jg                    ; 2 uses
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = add nsw i32 %i.jf, %i.ji
  %i.jk = lshr i64 %.0112.lcssa, 58
  %i.jl = and i64 %i.jh, %i.jk                    ; 2 uses
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = add nsw i32 %i.jj, %i.jm
  %i.jo = lshr i64 %.0112.lcssa, 59
  %i.jp = and i64 %i.jl, %i.jo                    ; 2 uses
  %i.jq = trunc nuw nsw i64 %i.jp to i32
  %i.jr = add nsw i32 %i.jn, %i.jq
  %i.js = lshr i64 %.0112.lcssa, 60
  %i.jt = and i64 %i.jp, %i.js                    ; 2 uses
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = add nsw i32 %i.jr, %i.ju
  %i.jw = lshr i64 %.0112.lcssa, 61
  %i.jx = and i64 %i.jt, %i.jw                    ; 2 uses
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %i.jz = add nsw i32 %i.jv, %i.jy
  %i.ka = lshr i64 %.0112.lcssa, 62
  %i.kb = and i64 %i.jx, %i.ka                    ; 2 uses
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = add nsw i32 %i.jz, %i.kc
  %i.ke = lshr i64 %.0112.lcssa, 63
  %i.kf = and i64 %i.kb, %i.ke
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = add nsw i32 %i.kd, %i.kg                ; 3 uses
  %i.ki = tail call i32 @BN_rshift(ptr noundef %0, ptr noundef %0, i32 noundef %i.kh) #4
  %.not121 = icmp eq i32 %i.ki, 0
  br i1 %.not121, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.kj = tail call i32 @BN_rshift(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, i32 noundef %i.kh) #4
  %.not122 = icmp eq i32 %i.kj, 0
  br i1 %.not122, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !14
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !14
  %. = tail call i32 @llvm.smax.i32(i32 %i.kl, i32 %i.kn)
  %i.ko = add nsw i32 %., 1                       ; 6 uses
  %i.kp = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.ko) #4
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kr = tail call ptr @bn_wexpand(ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kt = tail call ptr @bn_wexpand(ptr noundef %i.k, i32 noundef %i.ko) #4
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kv = load ptr, ptr %0, align 8, !tbaa !15
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.kx = and i64 %i.kw, 1
  %i.ky = xor i64 %i.kx, 1
  tail call void @BN_consttime_swap(i64 noundef %i.ky, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.kz = tail call i32 @BN_num_bits(ptr noundef nonnull %0) #4
  %i.la = tail call i32 @BN_num_bits(ptr noundef nonnull %i.l) #4
  %i.lb = tail call i32 @llvm.smax.i32(i32 %i.kz, i32 %i.la) ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, -2
  br i1 %i.lc, label %.lr.ph144, label %._crit_edge

.lr.ph144:                                        ; preds = %bb.n
  %i.ld = mul i32 %i.lb, 3
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = add i32 %i.ld, 3
  %smax149 = tail call i32 @llvm.smax.i32(i32 %i.lf, i32 0)
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %i.lg = icmp eq i32 %i.lx, 0
  %i.lh = select i1 %i.lg, i32 %.0106143, i32 0
  %i.li = sub nsw i32 0, %i.lx
  %i.lj = and i32 %i.li, %i.ln
  %i.lk = or i32 %i.lh, %i.lj
  %i.ll = add nsw i32 %i.lk, 1
  %i.lm = add nuw i32 %.1109142, 1
  %exitcond150.not = icmp eq i32 %.1109142, %smax149
  br i1 %exitcond150.not, label %._crit_edge, label %bb.p, !llvm.loop !21

bb.p:                                             ; preds = %.lr.ph144, %bb.o
  %.0106143 = phi i32 [ 1, %.lr.ph144 ], [ %i.ll, %bb.o ] ; 2 uses
  %.1109142 = phi i32 [ 0, %.lr.ph144 ], [ %i.lm, %bb.o ] ; 2 uses
  %i.ln = sub nsw i32 0, %.0106143                ; 2 uses
  %i.lo = lshr i32 %i.ln, 31
  %i.lp = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !17
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = and i32 %i.lo, %i.lr
  %i.lt = load i32, ptr %i.km, align 8, !tbaa !14
  %i.lu = add nsw i32 %i.lt, -1
  %i.lv = lshr i32 %i.lu, 31
  %i.lw = xor i32 %i.lv, -1
  %i.lx = and i32 %i.ls, %i.lw                    ; 4 uses
  %i.ly = load i32, ptr %i.le, align 8, !tbaa !12
  %i.lz = xor i32 %i.lx, %i.ly
  store i32 %i.lz, ptr %i.le, align 8, !tbaa !12
  %i.ma = zext nneg i32 %i.lx to i64
  tail call void @BN_consttime_swap(i64 noundef %i.ma, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.mb = tail call i32 @BN_add(ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %0) #4
  %.not127 = icmp eq i32 %i.mb, 0
  br i1 %.not127, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mc = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !17
  %i.me = load i32, ptr %i.km, align 8, !tbaa !14
  %4 = and i64 %i.md, 1
  %.inv = icmp sgt i32 %i.me, 0
  %5 = select i1 %.inv, i64 %4, i64 0
  tail call void @BN_consttime_swap(i64 noundef %5, ptr noundef nonnull %i.l, ptr noundef %i.k, i32 noundef %i.ko) #4
  %i.mf = tail call i32 @BN_rshift1(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #4
  %.not128 = icmp eq i32 %i.mf, 0
  br i1 %.not128, label %.loopexit, label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.mg, align 8, !tbaa !12
  %i.mh = tail call i32 @BN_lshift(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %i.kh) #4
  %.not125 = icmp eq i32 %i.mh, 0
  br i1 %.not125, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.mi = tail call i32 @BN_rshift1(ptr noundef nonnull %0, ptr noundef nonnull %0) #4
  %.not126 = icmp ne i32 %i.mi, 0
  %spec.select = zext i1 %.not126 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.r, %._crit_edge, %bb.k, %bb.l, %bb.m, %.critedge, %bb.j, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge ], [ 0, %bb.g ], [ 0, %bb.f ], [ %spec.select, %bb.r ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.q ]
  tail call void @BN_CTX_end(ptr noundef %3) #4
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.d, %bb.b
  %.0114 = phi i32 [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %.0, %.loopexit ]
  ret i32 %.0114
}

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_consttime_swap(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_init(ptr noundef) local_unnamed_addr #2

declare void @BN_with_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!12 = !{!11, !5, i64 16}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !10, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!11, !5, i64 12}
!23 = !{i64 1388011}
end_hunk_0
