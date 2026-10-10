Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorgql?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dorgql_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep255.4, i8 0, i64 %i.bo, i1 false), !tbaa !14
  %i.ct = trunc i64 %indvars.iv to i32
  %i.cu = or disjoint i32 %i.ct, 5
  %i.cv = mul i32 %i.h, %i.cu
  %i.cw = add i32 %i.bg, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 3
  %scevgep255.5 = getelementptr i8, ptr %scevgep, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep255.5, i8 0, i64 %i.bo, i1 false), !tbaa !14
  %i.cz = trunc i64 %indvars.iv to i32
  %i.da = or disjoint i32 %i.cz, 6
  %i.db = mul i32 %i.h, %i.da
  %i.dc = add i32 %i.bg, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3
  %scevgep255.6 = getelementptr i8, ptr %scevgep, i64 %i.de
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep255.6, i8 0, i64 %i.bo, i1 false), !tbaa !14
  %i.df = trunc i64 %indvars.iv to i32
  %i.dg = or disjoint i32 %i.df, 7
  %i.dh = mul i32 %i.h, %i.dg
  %i.di = add i32 %i.bg, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 3
  %scevgep255.7 = getelementptr i8, ptr %scevgep, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep255.7, i8 0, i64 %i.bo, i1 false), !tbaa !14
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.thread223.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

.thread223.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread223, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.thread223.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.thread223.loopexit.unr-lcssa ]
  %lcmp.mod297 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod297)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.dl = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.dm = mul i32 %i.h, %i.dl
  %i.dn = add i32 %i.bg, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3
  %scevgep255.epil = getelementptr i8, ptr %scevgep, i64 %i.dp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep255.epil, i8 0, i64 %i.bo, i1 false), !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread223, label %.lr.ph.epil, !llvm.loop !9

.thread223:                                       ; preds = %.thread223.loopexit.unr-lcssa, %.lr.ph.epil, %bb.n, %..thread223_crit_edge, %bb.i, %.thread212
  %i.dq = phi i32 [ %.pre267.a, %bb.i ], [ %i.as, %.thread212 ], [ %.pre266.a, %..thread223_crit_edge ], [ %i.as, %bb.n ], [ %i.as, %.lr.ph.epil ], [ %i.as, %.thread223.loopexit.unr-lcssa ]
  %i.dr = phi i32 [ %.pre265276, %bb.i ], [ %.pre265, %.thread212 ], [ %.pre264, %..thread223_crit_edge ], [ %.pre265, %bb.n ], [ %.pre265, %.lr.ph.epil ], [ %.pre265, %.thread223.loopexit.unr-lcssa ]
  %.0222 = phi i32 [ %.pre265276, %bb.i ], [ %.0221, %.thread212 ], [ %i.am, %..thread223_crit_edge ], [ %.0221, %bb.n ], [ %.0221, %.lr.ph.epil ], [ %.0221, %.thread223.loopexit.unr-lcssa ]
  %.2219 = phi i32 [ %.0171, %bb.i ], [ %.2218, %.thread212 ], [ %i.ap, %..thread223_crit_edge ], [ %.2218, %bb.n ], [ %.2218, %.lr.ph.epil ], [ %.2218, %.thread223.loopexit.unr-lcssa ] ; 3 uses
  %.0170 = phi i32 [ 0, %bb.i ], [ 0, %.thread212 ], [ 0, %..thread223_crit_edge ], [ %i.ba, %bb.n ], [ %i.ba, %.lr.ph.epil ], [ %i.ba, %.thread223.loopexit.unr-lcssa ] ; 5 uses
  %i.ds = load i32, ptr %0, align 4, !tbaa !12
  %i.dt = sub nsw i32 %i.ds, %.0170
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !12
  %i.du = sub nsw i32 %i.dr, %.0170
  store i32 %i.du, ptr %i.b, align 4, !tbaa !12
  %i.dv = sub nsw i32 %i.dq, %.0170
  store i32 %i.dv, ptr %i.c, align 4, !tbaa !12
  call void @dorg2l_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.e) #6
  %i.dw = icmp sgt i32 %.0170, 0
  br i1 %i.dw, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.thread223
  %i.dx = load i32, ptr %2, align 4, !tbaa !12    ; 5 uses
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !12
  store i32 %.2219, ptr %i.b, align 4, !tbaa !12
  %reass.sub = sub i32 %i.dx, %.0170
  %i.dy = add i32 %reass.sub, 1                   ; 3 uses
  %i.dz = icmp slt i32 %.2219, 0
  %i.ea = icmp sge i32 %i.dy, %i.dx
  %i.eb = icmp sle i32 %i.dy, %i.dx
  %.in251 = select i1 %i.dz, i1 %i.ea, i1 %i.eb
  br i1 %.in251, label %.lr.ph254.preheader, label %.loopexit

.lr.ph254.preheader:                              ; preds = %bb.o
  %i.ec = shl nsw i64 %i.i, 3
  %scevgep258 = getelementptr i8, ptr %3, i64 %i.ec
  %.pre268 = load i32, ptr %1, align 4, !tbaa !12
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %._crit_edge250.split
  %i.ed = phi i32 [ %i.ga, %._crit_edge250.split ], [ %.pre268, %.lr.ph254.preheader ] ; 2 uses
  %i.ee = phi i32 [ %i.gb, %._crit_edge250.split ], [ %i.dx, %.lr.ph254.preheader ] ; 4 uses
  %.1177252 = phi i32 [ %i.gx, %._crit_edge250.split ], [ %i.dy, %.lr.ph254.preheader ] ; 12 uses
  %i.ef = sub nsw i32 %i.ee, %.1177252
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.eg, ptr %i.d, align 4, !tbaa !12
  %i.eh = call i32 @llvm.smin.i32(i32 %.2219, i32 %i.eg) ; 3 uses
  store i32 %i.eh, ptr %i.f, align 4, !tbaa !12
  %i.ei = sub nsw i32 %i.ed, %i.ee
  %i.ej = add nsw i32 %i.ei, %.1177252            ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  %.pre270 = load i32, ptr %0, align 4, !tbaa !12 ; 2 uses
  br i1 %i.ek, label %bb.p, label %.lr.ph254._crit_edge

.lr.ph254._crit_edge:                             ; preds = %.lr.ph254
  %.pre277 = add i32 %.1177252, -1
  %.pre278 = sext i32 %.1177252 to i64
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph254
  %i.el = xor i32 %i.ee, -1
  %i.em = add i32 %.1177252, %i.el
  %i.en = add i32 %i.em, %i.eh
  %i.eo = add i32 %i.en, %.pre270
  store i32 %i.eo, ptr %i.c, align 4, !tbaa !12
  %i.ep = mul nsw i32 %i.ej, %i.h
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr %i.j, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = sext i32 %.1177252 to i64               ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.et
  call void @dlarft_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef %i.es, ptr noundef nonnull %4, ptr noundef nonnull %i.eu, ptr noundef nonnull %6, ptr noundef nonnull %i.g) #6
  %i.ev = load i32, ptr %0, align 4, !tbaa !12
  %i.ew = load i32, ptr %2, align 4, !tbaa !12    ; 2 uses
  %i.ex = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.ey = add i32 %.1177252, -1                   ; 2 uses
  %i.ez = add i32 %i.ey, %i.ev
  %i.fa = sub i32 %i.ez, %i.ew
  %i.fb = add i32 %i.fa, %i.ex
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !12
  %i.fc = load i32, ptr %1, align 4, !tbaa !12
  %i.fd = sub nsw i32 %i.fc, %i.ew
  %i.fe = add nsw i32 %i.fd, %.1177252            ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.d, align 4, !tbaa !12
  %i.fg = mul nsw i32 %i.fe, %i.h
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [8 x i8], ptr %i.j, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = sext i32 %i.ex to i64
  %i.fl = getelementptr [8 x i8], ptr %6, i64 %i.fk
  call void @dlarfb_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef %i.fj, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.fl, ptr noundef nonnull %i.g) #6
  %.pre269 = load i32, ptr %0, align 4, !tbaa !12
  %.pre271 = load i32, ptr %2, align 4, !tbaa !12
  %.pre272 = load i32, ptr %i.f, align 4, !tbaa !12
  %.pre273 = load i32, ptr %1, align 4, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph254._crit_edge, %bb.p
  %.pre-phi279 = phi i64 [ %.pre278, %.lr.ph254._crit_edge ], [ %i.et, %bb.p ]
  %.pre-phi = phi i32 [ %.pre277, %.lr.ph254._crit_edge ], [ %i.ey, %bb.p ]
  %i.fm = phi i32 [ %i.ed, %.lr.ph254._crit_edge ], [ %.pre273, %bb.p ]
  %i.fn = phi i32 [ %i.eh, %.lr.ph254._crit_edge ], [ %.pre272, %bb.p ]
  %i.fo = phi i32 [ %i.ee, %.lr.ph254._crit_edge ], [ %.pre271, %bb.p ] ; 2 uses
  %i.fp = phi i32 [ %.pre270, %.lr.ph254._crit_edge ], [ %.pre269, %bb.p ]
  %i.fq = add i32 %.pre-phi, %i.fp
  %i.fr = sub i32 %i.fq, %i.fo
  %i.fs = add i32 %i.fr, %i.fn
  store i32 %i.fs, ptr %i.c, align 4, !tbaa !12
  %i.ft = sub i32 %.1177252, %i.fo
  %i.fu = add i32 %i.ft, %i.fm
  %i.fv = mul nsw i32 %i.fu, %i.h
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr [8 x i8], ptr %i.j, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.pre-phi279
  call void @dorg2l_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef %i.fy, ptr noundef nonnull %4, ptr noundef nonnull %i.fz, ptr noundef nonnull %6, ptr noundef nonnull %i.e) #6
  %i.ga = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %i.gb = load i32, ptr %2, align 4, !tbaa !12    ; 5 uses
  %i.gc = sub i32 %i.ga, %i.gb
  %i.gd = add i32 %i.gc, %.1177252                ; 3 uses
  %i.ge = load i32, ptr %i.f, align 4, !tbaa !12  ; 3 uses
  %i.gf = add nsw i32 %i.gd, %i.ge                ; 2 uses
  %i.gg = add nsw i32 %i.gf, -1
  store i32 %i.gg, ptr %i.c, align 4, !tbaa !12
  %.not197.not246 = icmp sgt i32 %i.ge, 0
  br i1 %.not197.not246, label %.lr.ph249, label %._crit_edge250.split

.lr.ph249:                                        ; preds = %bb.q
  %invariant.op = add i32 %.1177252, %i.ge        ; 3 uses
  %i.gh = load i32, ptr %0, align 4, !tbaa !12    ; 4 uses
  store i32 %i.gh, ptr %i.d, align 4, !tbaa !12
  %.reass = sub i32 %invariant.op, %i.gb
  %i.gi = add i32 %.reass, %i.gh
  %.not198241 = icmp sgt i32 %i.gi, %i.gh
  br i1 %.not198241, label %._crit_edge250.split, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %.lr.ph249
  %i.gj = add i32 %invariant.op, %i.gh
  %i.gk = mul i32 %i.h, %i.gd
  %i.gl = add i32 %i.gj, %i.gk
  %i.gm = sub i32 %i.gl, %i.gb
  %i.gn = sub i32 %i.gb, %invariant.op
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = add nuw nsw i64 %i.gp, 8
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %indvar = phi i32 [ 0, %.lr.ph244.preheader ], [ %indvar.next, %.lr.ph244 ] ; 2 uses
  %.1175247 = phi i32 [ %i.gd, %.lr.ph244.preheader ], [ %i.gv, %.lr.ph244 ]
  %i.gr = mul i32 %i.h, %indvar
  %i.gs = add i32 %i.gm, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 3
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.gu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep259, i8 0, i64 %i.gq, i1 false), !tbaa !14
  %i.gv = add nsw i32 %.1175247, 1                ; 2 uses
  %.not197.not = icmp slt i32 %i.gv, %i.gf
  %indvar.next = add i32 %indvar, 1
  br i1 %.not197.not, label %.lr.ph244, label %._crit_edge250.split, !llvm.loop !10

._crit_edge250.split:                             ; preds = %.lr.ph244, %.lr.ph249, %bb.q
  %i.gw = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.gx = add nsw i32 %i.gw, %.1177252            ; 3 uses
  %i.gy = icmp slt i32 %i.gw, 0
  %i.gz = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ha = icmp sge i32 %i.gx, %i.gz
  %i.hb = icmp sle i32 %i.gx, %i.gz
  %.in = select i1 %i.gy, i1 %i.ha, i1 %i.hb
  br i1 %.in, label %.lr.ph254, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %._crit_edge250.split, %bb.o, %.thread223
  %i.hc = sitofp i32 %.0222 to double
  store double %i.hc, ptr %6, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %.loopexit, %.thread208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dorg2l_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarft_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !15}
!9 = distinct !{!9, !16}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !15}
!12 = !{!5, !5, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
