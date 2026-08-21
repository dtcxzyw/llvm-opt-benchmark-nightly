inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mpi_tdiv_qr:bb.a
  %i.dc = sub i32 63, %i.db                       ; 3 uses
  %i.dd = icmp ne i32 %i.db, 63                   ; 2 uses
  br i1 %i.dd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.loopexit239
  %i.de = tail call ptr @mpi_alloc_limb_space(i32 noundef %i.e) #5 ; 5 uses
  %i.df = add nuw nsw i32 %.0172, 1               ; 3 uses
  %i.dg = zext nneg i32 %.0172 to i64
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8
  %.not215 = icmp eq ptr %i.de, null
  br i1 %.not215, label %.lr.ph252.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = tail call i64 @mpihelp_lshift(ptr noundef nonnull %i.de, ptr noundef %i.cv, i32 noundef %i.e, i32 noundef %i.dc) #5 ; 0 uses
  %i.dj = tail call i64 @mpihelp_lshift(ptr noundef %i.cw, ptr noundef %.0185, i32 noundef %i.c, i32 noundef %i.dc) #5 ; 2 uses
  %.not216 = icmp eq i64 %i.dj, 0
  br i1 %.not216, label %.thread228, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = sext i32 %i.c to i64
  %i.dl = getelementptr [8 x i8], ptr %i.cw, i64 %i.dk
  store i64 %i.dj, ptr %i.dl, align 8
  br label %.thread228

bb.s:                                             ; preds = %.loopexit239
  %i.dm = icmp eq ptr %i.cv, %i.cw
  %i.dn = icmp eq ptr %i.cv, %.0180
  %or.cond224 = select i1 %.not210, i1 %i.dn, i1 false
  %or.cond235 = select i1 %i.dm, i1 true, i1 %or.cond224
  br i1 %or.cond235, label %bb.t, label %.thread232

bb.t:                                             ; preds = %bb.s
  %i.do = tail call ptr @mpi_alloc_limb_space(i32 noundef %i.e) #5 ; 10 uses
  %i.dp = add nuw nsw i32 %.0172, 1               ; 4 uses
  %i.dq = zext nneg i32 %.0172 to i64
  %i.dr = getelementptr [8 x i8], ptr %i.a, i64 %i.dq
  store ptr %i.do, ptr %i.dr, align 8
  %.not213 = icmp eq ptr %i.do, null
  br i1 %.not213, label %.lr.ph252.preheader, label %.preheader237

.preheader237:                                    ; preds = %bb.t
  %i.ds = icmp sgt i32 %i.e, 0
  br i1 %i.ds, label %.lr.ph242.preheader, label %.thread232

.lr.ph242.preheader:                              ; preds = %.preheader237
  %wide.trip.count261 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter313 = and i64 %wide.trip.count261, 3   ; 3 uses
  %i.dt = icmp ult i32 %i.e, 4
  br i1 %i.dt, label %.lr.ph242.epil.preheader, label %.lr.ph242.preheader.new

.lr.ph242.preheader.new:                          ; preds = %.lr.ph242.preheader
  %unroll_iter317 = and i64 %wide.trip.count261, 2147483644
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242, %.lr.ph242.preheader.new
  %indvars.iv258 = phi i64 [ 0, %.lr.ph242.preheader.new ], [ %indvars.iv.next259.3, %.lr.ph242 ] ; 6 uses
  %niter318 = phi i64 [ 0, %.lr.ph242.preheader.new ], [ %niter318.next.3, %.lr.ph242 ]
  %i.du = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv258
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv258
  store i64 %i.dv, ptr %i.dw, align 8
  %indvars.iv.next259 = or disjoint i64 %indvars.iv258, 1 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.next259
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv.next259
  store i64 %i.dy, ptr %i.dz, align 8
  %indvars.iv.next259.1 = or disjoint i64 %indvars.iv258, 2 ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.next259.1
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv.next259.1
  store i64 %i.eb, ptr %i.ec, align 8
  %indvars.iv.next259.2 = or disjoint i64 %indvars.iv258, 3 ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.next259.2
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv.next259.2
  store i64 %i.ee, ptr %i.ef, align 8
  %indvars.iv.next259.3 = add nuw nsw i64 %indvars.iv258, 4 ; 2 uses
  %niter318.next.3 = add i64 %niter318, 4         ; 2 uses
  %niter318.ncmp.3 = icmp eq i64 %niter318.next.3, %unroll_iter317
  br i1 %niter318.ncmp.3, label %.thread232.loopexit.unr-lcssa, label %.lr.ph242, !llvm.loop !18

.thread232.loopexit.unr-lcssa:                    ; preds = %.lr.ph242
  %lcmp.mod315.not = icmp eq i64 %xtraiter313, 0
  br i1 %lcmp.mod315.not, label %.thread232, label %.lr.ph242.epil.preheader

.lr.ph242.epil.preheader:                         ; preds = %.thread232.loopexit.unr-lcssa, %.lr.ph242.preheader
  %indvars.iv258.epil.init = phi i64 [ 0, %.lr.ph242.preheader ], [ %indvars.iv.next259.3, %.thread232.loopexit.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter313, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph242.epil

.lr.ph242.epil:                                   ; preds = %.lr.ph242.epil, %.lr.ph242.epil.preheader
  %indvars.iv258.epil = phi i64 [ %indvars.iv258.epil.init, %.lr.ph242.epil.preheader ], [ %indvars.iv.next259.epil, %.lr.ph242.epil ] ; 3 uses
  %epil.iter314 = phi i64 [ 0, %.lr.ph242.epil.preheader ], [ %epil.iter314.next, %.lr.ph242.epil ]
  %i.eg = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv258.epil
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr [8 x i8], ptr %i.do, i64 %indvars.iv258.epil
  store i64 %i.eh, ptr %i.ei, align 8
  %indvars.iv.next259.epil = add nuw nsw i64 %indvars.iv258.epil, 1
  %epil.iter314.next = add i64 %epil.iter314, 1   ; 2 uses
  %epil.iter314.cmp.not = icmp eq i64 %epil.iter314.next, %xtraiter313
  br i1 %epil.iter314.cmp.not, label %.thread232, label %.lr.ph242.epil, !llvm.loop !19

.thread232:                                       ; preds = %.thread232.loopexit.unr-lcssa, %.lr.ph242.epil, %.preheader237, %bb.s
  %.2183 = phi ptr [ %i.cv, %bb.s ], [ %i.do, %.preheader237 ], [ %i.do, %.lr.ph242.epil ], [ %i.do, %.thread232.loopexit.unr-lcssa ] ; 3 uses
  %.1173 = phi i32 [ %.0172, %bb.s ], [ %i.dp, %.preheader237 ], [ %i.dp, %.lr.ph242.epil ], [ %i.dp, %.thread232.loopexit.unr-lcssa ] ; 3 uses
  %.not214 = icmp ne ptr %i.cw, %.0185
  %i.ej = icmp sgt i32 %i.c, 0
  %or.cond256 = and i1 %.not214, %i.ej
  br i1 %or.cond256, label %.lr.ph244.preheader, label %.thread228

.lr.ph244.preheader:                              ; preds = %.thread232
  %wide.trip.count266 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter319 = and i64 %wide.trip.count266, 3   ; 3 uses
  %i.ek = icmp ult i32 %i.c, 4
  br i1 %i.ek, label %.lr.ph244.epil.preheader, label %.lr.ph244.preheader.new

.lr.ph244.preheader.new:                          ; preds = %.lr.ph244.preheader
  %unroll_iter323 = and i64 %wide.trip.count266, 2147483644
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244, %.lr.ph244.preheader.new
  %indvars.iv263 = phi i64 [ 0, %.lr.ph244.preheader.new ], [ %indvars.iv.next264.3, %.lr.ph244 ] ; 6 uses
  %niter324 = phi i64 [ 0, %.lr.ph244.preheader.new ], [ %niter324.next.3, %.lr.ph244 ]
  %i.el = getelementptr [8 x i8], ptr %.0185, i64 %indvars.iv263
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv263
  store i64 %i.em, ptr %i.en, align 8
  %indvars.iv.next264 = or disjoint i64 %indvars.iv263, 1 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %.0185, i64 %indvars.iv.next264
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv.next264
  store i64 %i.ep, ptr %i.eq, align 8
  %indvars.iv.next264.1 = or disjoint i64 %indvars.iv263, 2 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %.0185, i64 %indvars.iv.next264.1
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv.next264.1
  store i64 %i.es, ptr %i.et, align 8
  %indvars.iv.next264.2 = or disjoint i64 %indvars.iv263, 3 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %.0185, i64 %indvars.iv.next264.2
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv.next264.2
  store i64 %i.ev, ptr %i.ew, align 8
  %indvars.iv.next264.3 = add nuw nsw i64 %indvars.iv263, 4 ; 2 uses
  %niter324.next.3 = add i64 %niter324, 4         ; 2 uses
  %niter324.ncmp.3 = icmp eq i64 %niter324.next.3, %unroll_iter323
  br i1 %niter324.ncmp.3, label %.thread228.loopexit.unr-lcssa, label %.lr.ph244, !llvm.loop !20

.thread228.loopexit.unr-lcssa:                    ; preds = %.lr.ph244
  %lcmp.mod321.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod321.not, label %.thread228, label %.lr.ph244.epil.preheader

.lr.ph244.epil.preheader:                         ; preds = %.thread228.loopexit.unr-lcssa, %.lr.ph244.preheader
  %indvars.iv263.epil.init = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next264.3, %.thread228.loopexit.unr-lcssa ]
  %lcmp.mod322 = icmp ne i64 %xtraiter319, 0
  tail call void @llvm.assume(i1 %lcmp.mod322)
  br label %.lr.ph244.epil

.lr.ph244.epil:                                   ; preds = %.lr.ph244.epil, %.lr.ph244.epil.preheader
  %indvars.iv263.epil = phi i64 [ %indvars.iv263.epil.init, %.lr.ph244.epil.preheader ], [ %indvars.iv.next264.epil, %.lr.ph244.epil ] ; 3 uses
  %epil.iter320 = phi i64 [ 0, %.lr.ph244.epil.preheader ], [ %epil.iter320.next, %.lr.ph244.epil ]
  %i.ex = getelementptr [8 x i8], ptr %.0185, i64 %indvars.iv263.epil
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv263.epil
  store i64 %i.ey, ptr %i.ez, align 8
  %indvars.iv.next264.epil = add nuw nsw i64 %indvars.iv263.epil, 1
  %epil.iter320.next = add i64 %epil.iter320, 1   ; 2 uses
  %epil.iter320.cmp.not = icmp eq i64 %epil.iter320.next, %xtraiter319
  br i1 %epil.iter320.cmp.not, label %.thread228, label %.lr.ph244.epil, !llvm.loop !21

.thread228:                                       ; preds = %.thread228.loopexit.unr-lcssa, %.lr.ph244.epil, %bb.r, %bb.q, %.thread232
  %.3184 = phi ptr [ %.2183, %.thread232 ], [ %i.de, %bb.r ], [ %i.de, %bb.q ], [ %.2183, %.lr.ph244.epil ], [ %.2183, %.thread228.loopexit.unr-lcssa ]
  %.2176 = phi i32 [ %i.c, %.thread232 ], [ %i.k, %bb.r ], [ %i.c, %bb.q ], [ %i.c, %.lr.ph244.epil ], [ %i.c, %.thread228.loopexit.unr-lcssa ] ; 2 uses
  %.2 = phi i32 [ %.1173, %.thread232 ], [ %i.df, %bb.r ], [ %i.df, %bb.q ], [ %.1173, %.lr.ph244.epil ], [ %.1173, %.thread228.loopexit.unr-lcssa ] ; 2 uses
  %i.fa = tail call i64 @mpihelp_divrem(ptr noundef %.0180, i32 noundef 0, ptr noundef %i.cw, i32 noundef %.2176, ptr noundef %.3184, i32 noundef %i.e) #5 ; 2 uses
  br i1 %.not210, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.thread228
  %i.fb = sub i32 %.2176, %i.e                    ; 3 uses
  %.not217 = icmp eq i64 %i.fa, 0
  br i1 %.not217, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr %.0180, i64 %i.fc
  store i64 %i.fa, ptr %i.fd, align 8
  %i.fe = add i32 %i.fb, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0179 = phi i32 [ %i.fe, %bb.v ], [ %i.fb, %bb.u ]
  %i.ff = getelementptr i8, ptr %0, i64 4
  store i32 %.0179, ptr %i.ff, align 4
  %i.fg = getelementptr i8, ptr %0, i64 12
  store i32 %i.j, ptr %i.fg, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread228
  %i.fh = icmp sgt i32 %i.e, 0
  br i1 %i.fh, label %.lr.ph246, label %._crit_edge

.lr.ph246:                                        ; preds = %bb.x, %bb.y
  %.3177245 = phi i32 [ %5, %bb.y ], [ %i.e, %bb.x ] ; 4 uses
  %4 = zext nneg i32 %.3177245 to i64
  %i.fi = getelementptr [8 x i8], ptr %i.cw, i64 %4
  %i.fj = getelementptr i8, ptr %i.fi, i64 -8
  %i.fk = load i64, ptr %i.fj, align 8
  %.not218 = icmp eq i64 %i.fk, 0
  br i1 %.not218, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %.lr.ph246
  %5 = add nsw i32 %.3177245, -1
  %i.fl = icmp sgt i32 %.3177245, 1
  br i1 %i.fl, label %.lr.ph246, label %._crit_edge.thread, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph246, %bb.x
  %.3177.lcssa = phi i32 [ %i.e, %bb.x ], [ %.3177245, %.lr.ph246 ] ; 5 uses
  %i.fm = icmp ne i32 %.3177.lcssa, 0
  %or.cond = and i1 %i.dd, %i.fm
  br i1 %or.cond, label %bb.z, label %._crit_edge.thread

bb.z:                                             ; preds = %._crit_edge
  %i.fn = tail call i64 @mpihelp_rshift(ptr noundef %i.cw, ptr noundef %i.cw, i32 noundef %.3177.lcssa, i32 noundef %i.dc) #5 ; 0 uses
  %i.fo = add i32 %.3177.lcssa, -1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr %i.cw, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = icmp eq i64 %i.fr, 0
  %.neg = sext i1 %i.fs to i32
  %i.ft = add i32 %.3177.lcssa, %.neg
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.y, %._crit_edge, %bb.z
  %.4178 = phi i32 [ %i.ft, %bb.z ], [ %.3177.lcssa, %._crit_edge ], [ 0, %bb.y ]
  %i.fu = getelementptr i8, ptr %1, i64 4
  store i32 %.4178, ptr %i.fu, align 4
  %i.fv = getelementptr i8, ptr %1, i64 12
  store i32 %i.g, ptr %i.fv, align 4
  %.not219249 = icmp eq i32 %.2, 0
  br i1 %.not219249, label %.loopexit236, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %bb.t, %bb.p, %bb.n, %._crit_edge.thread
  %.0171303 = phi i32 [ 0, %._crit_edge.thread ], [ -12, %bb.n ], [ -12, %bb.p ], [ -12, %bb.t ]
  %.3302 = phi i32 [ %.2, %._crit_edge.thread ], [ 1, %bb.n ], [ %i.df, %bb.p ], [ %i.dp, %bb.t ]
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %.lr.ph252
  %.4250 = phi i32 [ %i.fw, %.lr.ph252 ], [ %.3302, %.lr.ph252.preheader ]
  %i.fw = add i32 %.4250, -1                      ; 3 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr %i.a, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void @mpi_free_limb_space(ptr noundef %i.fz) #5
  %.not219 = icmp eq i32 %i.fw, 0
  br i1 %.not219, label %.loopexit236, label %.lr.ph252, !llvm.loop !23

.loopexit236.sink.split:                          ; preds = %.loopexit, %bb.l
  %.sink309 = phi ptr [ %1, %bb.l ], [ %0, %.loopexit ] ; 2 uses
  %.sink307 = phi i32 [ %i.bz, %bb.l ], [ 0, %.loopexit ]
  %.sink = phi i32 [ %i.g, %bb.l ], [ 0, %.loopexit ]
  %i.ga = getelementptr i8, ptr %.sink309, i64 4
  store i32 %.sink307, ptr %i.ga, align 4
  %i.gb = getelementptr i8, ptr %.sink309, i64 12
  store i32 %.sink, ptr %i.gb, align 4
  br label %.loopexit236

.loopexit236:                                     ; preds = %.lr.ph252, %.loopexit236.sink.split, %._crit_edge.thread, %bb.h, %.loopexit, %bb.a
  %.0186 = phi i32 [ 0, %._crit_edge.thread ], [ %i.l, %bb.a ], [ 0, %.loopexit ], [ 0, %.loopexit236.sink.split ], [ %i.av, %bb.h ], [ %.0171303, %.lr.ph252 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_divmod_1(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_mod_1(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { noredzone "no-builtin-wcslen" }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"auto-init"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !13}
!17 = !{i64 1058147}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
end_hunk_0
