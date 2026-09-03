Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_interleave_pcm_frames:bb.a

._crit_edge67:                                    ; preds = %._crit_edge67.unr-lcssa, %.epil.preheader107
  %i.ci = add nuw i64 %.05068, 1                  ; 2 uses
  %exitcond89.not = icmp eq i64 %i.ci, %2
  br i1 %exitcond89.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge64, %._crit_edge67, %.preheader59, %.preheader58.lr.ph, %.preheader56, %.preheader55.lr.ph, %bb.d, %.preheader.lr.ph
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_biquad_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_biquad_config) align 8 captures(none) initializes((0, 56)) %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #0 {
ma_zero_memory_default.exit:
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %6, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %7, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %8, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_biquad_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_biquad_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_biquad_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_biquad_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i32 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  store i64 %i.g, ptr %1, align 8
  br label %ma_biquad_get_heap_layout.exit.thread

ma_biquad_get_heap_layout.exit.thread:            ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -3, 1) i32 @ma_biquad_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_biquad_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit17

ma_zero_memory_default.exit17:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_biquad_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_biquad_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.h, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.i, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.k, ptr %i.l, align 8
  %i.m = tail call i32 @ma_biquad_reinit(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br label %ma_biquad_get_heap_layout.exit.thread

ma_biquad_get_heap_layout.exit.thread:            ; preds = %bb.b, %ma_zero_memory_default.exit17, %bb.a, %ma_zero_memory_default.exit
  %.0 = phi i32 [ %i.m, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit17 ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -3, 1) i32 @ma_biquad_reinit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %.rtcont, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.f = load double, ptr %i.e, align 8
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %.rtcont, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8                ; 3 uses
  switch i32 %i.h, label %.rtcont [
    i32 5, label %bb.d
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = load i32, ptr %1, align 8                ; 2 uses
  %.not53 = icmp eq i32 %i.i, 0
  %.not54 = icmp eq i32 %i.i, %i.h
  %or.cond57 = or i1 %.not53, %.not54
  br i1 %or.cond57, label %bb.e, label %.rtcont

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not55 = icmp eq i32 %i.k, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not56 = icmp eq i32 %i.k, %i.m
  br i1 %.not56, label %bb.g, label %.rtcont

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %i.j, align 4
  %i.p = load i32, ptr %0, align 8
  %i.q = icmp eq i32 %i.p, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = load double, ptr %i.e, align 8
  %i.u = fdiv double %i.s, %i.t                   ; 3 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = fptrunc double %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load double, ptr %i.x, align 8
  %i.z = load double, ptr %i.e, align 8
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fptrunc double %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = load double, ptr %i.e, align 8
  %i.ag = fdiv double %i.ae, %i.af
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = load double, ptr %i.e, align 8
  %i.am = fdiv double %i.ak, %i.al
  %i.an = fptrunc double %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = load double, ptr %i.e, align 8
  %i.as = fdiv double %i.aq, %i.ar
  %i.at = fptrunc double %i.as to float
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.at, ptr %i.au, align 8
  br label %.rtcont

bb.i:                                             ; preds = %bb.g
  %i.av = add i64 %i.b, 8
  %i.aw = add i64 %i.b, 28
  %i.ax = add i64 %i.a, 16
  %i.ay = add i64 %i.a, 56
  %rt.bound0 = icmp ult i64 %i.av, %i.ay
  %rt.bound1 = icmp ult i64 %i.ax, %i.aw
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtcont:                                          ; preds = %.rtvec, %.rtscalar, %bb.d, %bb.h, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -3, %bb.f ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ], [ -3, %bb.d ], [ 0, %bb.h ], [ 0, %.rtscalar ], [ 0, %.rtvec ]
  ret i32 %.0

.rtvec:                                           ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load double, ptr %i.e, align 8          ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = load double, ptr %i.bb, align 8
  %i.bg = load double, ptr %i.ba, align 8
  %i.bh = fdiv double %i.be, %i.bc
  %i.bi = fdiv double %i.bf, %i.bc
  %i.bj = fdiv double %i.bg, %i.bc
  %i.bk = insertelement <4 x double> poison, double %i.u, i64 0
  %i.bl = insertelement <4 x double> %i.bk, double %i.bj, i64 1
  %i.bm = insertelement <4 x double> %i.bl, double %i.bi, i64 2
  %i.bn = insertelement <4 x double> %i.bm, double %i.bh, i64 3
  %i.bo = fmul <4 x double> %i.bn, splat (double 1.638400e+04)
  %i.bp = fptosi <4 x double> %i.bo to <4 x i32>
  store <4 x i32> %i.bp, ptr %i.az, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = load double, ptr %i.e, align 8
  %i.bt = fdiv double %i.br, %i.bs
  %i.bu = fmul double %i.bt, 1.638400e+04
  %i.bv = fptosi double %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bv, ptr %i.bw, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.i
  %i.bx = fmul double %i.u, 1.638400e+04
  %i.by = fptosi double %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load double, ptr %i.ca, align 8
  %i.cc = load double, ptr %i.e, align 8
  %i.cd = fdiv double %i.cb, %i.cc
  %i.ce = fmul double %i.cd, 1.638400e+04
  %i.cf = fptosi double %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load double, ptr %i.ch, align 8
  %i.cj = load double, ptr %i.e, align 8
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fmul double %i.ck, 1.638400e+04
  %i.cm = fptosi double %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load double, ptr %i.co, align 8
  %i.cq = load double, ptr %i.e, align 8
  %i.cr = fdiv double %i.cp, %i.cq
  %i.cs = fmul double %i.cr, 1.638400e+04
  %i.ct = fptosi double %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ct, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = load double, ptr %i.e, align 8
  %i.cy = fdiv double %i.cw, %i.cx
  %i.cz = fmul double %i.cy, 1.638400e+04
  %i.da = fptosi double %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.da, ptr %i.db, align 8
  br label %.rtcont
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_biquad_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.h, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %1, align 8
  %i.j = tail call ptr %i.h(i64 noundef %i.f, ptr noundef %i.i) #61, !inline_history !29
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.f) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ] ; 7 uses
  %i.l = icmp eq ptr %.0.i20, null
  br i1 %i.l, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %ma_malloc.exit
  %i.m = icmp eq ptr %2, null
  br i1 %i.m, label %ma_biquad_init_preallocated.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.n = load i32, ptr %i.b, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %ma_biquad_init_preallocated.exit.thread, label %ma_biquad_init_preallocated.exit

ma_biquad_init_preallocated.exit:                 ; preds = %bb.h
  %i.p = zext i32 %i.n to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i20, ptr %i.r, align 8
  %i.s = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i20, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i20, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i20, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.v, align 8
  %i.w = tail call i32 @ma_biquad_reinit(ptr noundef nonnull readonly %0, ptr noundef nonnull %2) ; 2 uses
  %.not19 = icmp eq i32 %i.w, 0
  br i1 %.not19, label %bb.l, label %ma_biquad_init_preallocated.exit.thread

ma_biquad_init_preallocated.exit.thread:          ; preds = %ma_biquad_init_preallocated.exit, %bb.g, %bb.h
  %.0.i2231 = phi i32 [ %i.w, %ma_biquad_init_preallocated.exit ], [ -2, %bb.g ], [ -2, %bb.h ] ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %ma_biquad_init_preallocated.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %1, align 8
  tail call void %i.y(ptr noundef nonnull %.0.i20, ptr noundef %i.z) #61, !inline_history !30
  br label %ma_free.exit

bb.k:                                             ; preds = %ma_biquad_init_preallocated.exit.thread
  tail call void @free(ptr noundef nonnull %.0.i20) #61
  br label %ma_free.exit

bb.l:                                             ; preds = %ma_biquad_init_preallocated.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 1, ptr %i.aa, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.a, %bb.b, %bb.k, %bb.j, %bb.i, %ma_malloc.exit, %bb.l
  %.013 = phi i32 [ 0, %bb.l ], [ %.0.i2231, %bb.k ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.d ], [ %.0.i2231, %bb.i ], [ %.0.i2231, %bb.j ], [ -2, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_biquad_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8
  tail call void %i.h(ptr noundef nonnull %i.e, ptr noundef %i.i) #61, !inline_history !30
  br label %ma_free.exit

end_hunk_0
