Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 76
begin_hunk_0_@distort_mask:bb.a

bb.m:                                             ; preds = %._crit_edge78, %bb.i
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #7

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !55
  %i.d = load float, ptr %i.c, align 4, !tbaa !36 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !37 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond114 = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond114, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !38
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !39
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !40
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !42
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !44
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.o

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !52 ; 4 uses
  %invariant.op89 = add nsw i32 %i.bc, -1         ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader.lr.ph, label %._crit_edge96

.preheader.lr.ph:                                 ; preds = %_isneutral.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51 ; 3 uses
  %invariant.op = add i32 %i.bf, -1
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = load <4 x float>, ptr %i.a, align 64    ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bj = load float, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = load float, ptr %i.bm, align 32
  br i1 %i.bg, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load <4 x float>, ptr %i.bo, align 16   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = load i32, ptr %3, align 4, !tbaa !56
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !57
  %i.bv = load float, ptr %i.br, align 4, !tbaa !53 ; 2 uses
  %i.bw = load float, ptr %i.bq, align 4, !tbaa !53
  %i.bx = shufflevector <4 x float> %i.bh, <4 x float> %i.bp, <2 x i32> <i32 1, i32 4>
  %i.by = shufflevector <4 x float> %i.bh, <4 x float> %i.bp, <2 x i32> <i32 2, i32 5>
  %i.bz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bv ; 2 uses
  %invariant.op123 = fmul reassoc nsz arcp contract afn float %i.bz, %i.bl
  %i.ca = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bv ; 2 uses
  %invariant.op122 = fmul reassoc nsz arcp contract afn float %i.cd, %i.bj
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.06195.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %.reass90.us, %._crit_edge.us ] ; 2 uses
  %i.ce = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dc, %._crit_edge.us ]
  %i.cf = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dd, %._crit_edge.us ]
  %i.cg = add nsw i32 %i.bu, %.06195.us
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.bz
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, %i.bx
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.by
  %.reass124 = fmul reassoc nsz arcp contract afn float %i.ch, %invariant.op123
  %invariant.op87.us = fadd reassoc nsz arcp contract afn float %.reass124, %i.bn
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.h
  %.079.us = phi i32 [ 0, %.preheader.us ], [ %.reass.us, %bb.h ] ; 2 uses
  %i.cn = phi <2 x float> [ %i.ce, %.preheader.us ], [ %i.dc, %bb.h ] ; 2 uses
  %i.co = phi <2 x float> [ %i.cf, %.preheader.us ], [ %i.dd, %bb.h ] ; 2 uses
  %i.cp = add nsw i32 %i.bt, %.079.us
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to float ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.cd
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cc
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cm
  %.reass = fmul reassoc nsz arcp contract afn float %i.cq, %invariant.op122
  %.reass88.us = fadd reassoc nsz arcp contract afn float %.reass, %invariant.op87.us
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cv
  %i.cx = insertelement <2 x float> poison, float %.reass88.us, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cy ; 4 uses
  %i.da = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cn, %i.cz
  %i.db = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.co, %i.cz
  %i.dc = select <2 x i1> %i.da, <2 x float> %i.cn, <2 x float> %i.cz ; 3 uses
  %i.dd = select <2 x i1> %i.db, <2 x float> %i.co, <2 x float> %i.cz ; 3 uses
  %.reass.us = add i32 %.079.us, %invariant.op    ; 2 uses
  %i.de = icmp slt i32 %.reass.us, %i.bf
  br i1 %i.de, label %bb.h, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.h
  %.reass90.us = add i32 %.06195.us, %invariant.op89 ; 2 uses
  %i.df = icmp slt i32 %.reass90.us, %i.bc
  br i1 %i.df, label %.preheader.us, label %._crit_edge96

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.06195 = phi i32 [ %.reass90, %.preheader ], [ 0, %.preheader.lr.ph ]
  %.reass90 = add i32 %.06195, %invariant.op89    ; 2 uses
  %i.dg = icmp slt i32 %.reass90, %i.bc
  br i1 %i.dg, label %.preheader, label %._crit_edge96

._crit_edge96:                                    ; preds = %.preheader, %._crit_edge.us, %_isneutral.exit.thread
  %i.dh = phi <2 x float> [ splat (float f0x7F7FFFFF), %_isneutral.exit.thread ], [ %i.dc, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader ]
  %i.di = phi <2 x float> [ splat (float f0xFF7FFFFF), %_isneutral.exit.thread ], [ %i.dd, %._crit_edge.us ], [ splat (float f0xFF7FFFFF), %.preheader ]
  %i.dj = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dm = fadd reassoc nsz arcp contract afn <2 x float> %i.dj, %i.di
  %i.dn = load <4 x float>, ptr %i.dk, align 4, !tbaa !15 ; 2 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dq = fsub reassoc nsz arcp contract afn <2 x float> %i.do, %i.dp
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dm
  %i.ds = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.dr)
  %i.dt = fptosi <2 x float> %i.ds to <2 x i32>   ; 2 uses
  store <2 x i32> %i.dt, ptr %i.dl, align 4, !tbaa !17
  %4 = icmp slt <2 x i32> %i.dt, splat (i32 4)    ; 2 uses
  %5 = extractelement <2 x i1> %4, i64 0
  %6 = extractelement <2 x i1> %4, i64 1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %._crit_edge96
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !101
  %i.dv = and i32 %i.du, 33554432
  %.not69 = icmp eq i32 %i.dv, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !102
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef %i.dx, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull @.str.7) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !102
  %i.ea = getelementptr i8, ptr %i.dz, i64 644
  %.val = load i32, ptr %i.ea, align 4, !tbaa !115
  %i.eb = and i32 %.val, 2
  %.not70 = icmp eq i32 %i.eb, 0
  br i1 %.not70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #34
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !124
  %i.ef = call ptr %i.ee() #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ec, ptr noundef %i.ef) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load <2 x i32>, ptr %i.eg, align 4, !tbaa !17
  store <2 x i32> %i.eh, ptr %i.dl, align 4, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.ei, align 16, !tbaa !365
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge96, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.o

bb.o:                                             ; preds = %_isneutral.exit, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !55
  %i.d = load float, ptr %i.c, align 4, !tbaa !36 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !37 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !38
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !39
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !40
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !42
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !44
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.i

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !53
  %i.bd = load <2 x i32>, ptr %i.ax, align 16, !tbaa !17
  %i.be = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bd to <2 x float>
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !17
  %i.bl = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bk to <2 x float>
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53 ; 3 uses
  %i.bo = load <4 x float>, ptr %i.bj, align 4, !tbaa !15 ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.br = fsub reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bl
  %i.bt = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <2 x float> %i.bv, %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !52 ; 4 uses
  %invariant.op135 = add nsw i32 %i.by, -1        ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader.lr.ph, label %._crit_edge142

.preheader.lr.ph:                                 ; preds = %_isneutral.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51 ; 3 uses
  %invariant.op = add i32 %i.cb, -1
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ce = load <4 x float>, ptr %i.a, align 64    ; 3 uses
  %i.cf = load <4 x float>, ptr %i.cd, align 16   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ch = load float, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cl = load float, ptr %i.ck, align 32
  br i1 %i.cc, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %2, align 4, !tbaa !56
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !57
  %i.cp = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 1, i32 4>
  %i.cq = extractelement <2 x float> %i.bw, i64 1
  %i.cr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op170 = fmul reassoc nsz arcp contract afn float %i.cr, %i.cj
  %i.cs = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ct = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 2, i32 5>
  %i.cu = extractelement <2 x float> %i.bw, i64 0
  %i.cv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op168 = fmul reassoc nsz arcp contract afn float %i.cv, %i.ch
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.098141.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %.reass136.us, %._crit_edge.us ] ; 2 uses
end_hunk_0
