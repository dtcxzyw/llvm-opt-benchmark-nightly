inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@SetMotionVectorPredictor:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.js = sext i16 %i.jr to i32
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.jt = sdiv i16 %i.jr, 2
  %i.ju = sext i16 %i.jt to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.jv = phi i32 [ %i.ju, %bb.bm ], [ %i.js, %bb.bl ], [ 0, %bb.bj ] ; 3 uses
  br i1 %.not171, label %bb.cd, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jw = getelementptr inbounds [536 x i8], ptr %i.is, i64 %i.hk
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 424
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !39
  %.not172.1 = icmp eq i32 %i.jy, 0
  %i.jz = load ptr, ptr %i.ho, align 8, !tbaa !43
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.hr
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !45
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !47 ; 2 uses
  br i1 %.not172.1, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ke = sext i16 %i.kd to i32
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %i.kf = sdiv i16 %i.kd, 2
  %i.kg = sext i16 %i.kf to i32
  br label %bb.cd

bb.br:                                            ; preds = %bb.be
  br i1 %.not167, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kh = getelementptr inbounds [536 x i8], ptr %i.is, i64 %i.gq
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 424
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !39
  %.not162.1 = icmp ne i32 %i.kj, 0
  %i.kk = load ptr, ptr %i.gu, align 8, !tbaa !43
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.gx
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !45
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !47
  %i.kp = sext i16 %i.ko to i32
  %i.kq = zext i1 %.not162.1 to i32
  %spec.select200 = shl nsw i32 %i.kp, %i.kq
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.kr = phi i32 [ 0, %bb.br ], [ %spec.select200, %bb.bs ] ; 2 uses
  br i1 %.not169, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ks = getelementptr inbounds [536 x i8], ptr %i.is, i64 %i.ha
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 424
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !39
  %.not164.1 = icmp ne i32 %i.ku, 0
  %i.kv = load ptr, ptr %i.he, align 8, !tbaa !43
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.hh
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !47
  %i.la = sext i16 %i.kz to i32
  %i.lb = zext i1 %.not164.1 to i32
  %spec.select201 = shl nsw i32 %i.la, %i.lb
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lc = phi i32 [ 0, %bb.bt ], [ %spec.select201, %bb.bu ] ; 2 uses
  br i1 %.not171, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ld = getelementptr inbounds [536 x i8], ptr %i.is, i64 %i.hk
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 424
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !39
  %.not166.1 = icmp ne i32 %i.lf, 0
  %i.lg = load ptr, ptr %i.ho, align 8, !tbaa !43
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.hr
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !45
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !47
  %i.ll = sext i16 %i.lk to i32
  %i.lm = zext i1 %.not166.1 to i32
  %spec.select202 = shl nsw i32 %i.ll, %i.lm
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bd
  br i1 %.not167, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = load ptr, ptr %i.gu, align 8, !tbaa !43
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.gx
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !45
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !47
  %i.ls = sext i16 %i.lr to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lt = phi i32 [ %i.ls, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  br i1 %.not169, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lu = load ptr, ptr %i.he, align 8, !tbaa !43
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.hh
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !45
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !47
  %i.lz = sext i16 %i.ly to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ma = phi i32 [ %i.lz, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  br i1 %.not171, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mb = load ptr, ptr %i.ho, align 8, !tbaa !43
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.hr
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !45
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !47
  %i.mg = sext i16 %i.mf to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bw, %bb.cc, %bb.cb, %bb.bv, %bb.bq, %bb.bp, %bb.bn
  %.0135.1 = phi i32 [ %i.jj, %bb.bq ], [ %i.lt, %bb.cc ], [ %i.lt, %bb.cb ], [ %i.jj, %bb.bn ], [ %i.jj, %bb.bp ], [ %i.kr, %bb.bv ], [ %i.kr, %bb.bw ] ; 5 uses
  %.0134.1 = phi i32 [ %i.jv, %bb.bq ], [ %i.ma, %bb.cc ], [ %i.ma, %bb.cb ], [ %i.jv, %bb.bn ], [ %i.jv, %bb.bp ], [ %i.lc, %bb.bv ], [ %i.lc, %bb.bw ] ; 4 uses
  %.0133.1 = phi i32 [ %i.kg, %bb.bq ], [ %i.mg, %bb.cc ], [ 0, %bb.cb ], [ 0, %bb.bn ], [ %i.ke, %bb.bp ], [ 0, %bb.bv ], [ %spec.select202, %bb.bw ] ; 4 uses
  switch i32 %.1, label %default.unreachable196 [
    i32 0, label %bb.cg
    i32 1, label %bb.ci
    i32 2, label %bb.cf
    i32 3, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cd
  br i1 %or.cond8, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mh = call noundef i32 @llvm.smin.i32(i32 %.0134.1, i32 %.0133.1)
  %i.mi = call noundef i32 @llvm.smin.i32(i32 %.0135.1, i32 %i.mh)
  %i.mj = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -65536, 65535) %.0134.1, i32 %.0133.1)
  %i.mk = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -65536, 65535) %.0135.1, i32 %i.mj)
  %.neg188.1 = add nsw i32 %.0134.1, %.0135.1
  %i.ml = add nsw i32 %.neg188.1, %.0133.1
  %i.mm = add nsw i32 %i.mk, %i.mi
  %i.mn = sub nsw i32 %i.ml, %i.mm
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.1132.1 = phi i32 [ %.0133.1, %bb.ce ], [ %i.mn, %bb.ch ], [ %.0134.1, %bb.cf ], [ %.0135.1, %bb.cg ], [ %.0135.1, %bb.cd ]
  %i.mo = trunc i32 %.1132.1 to i16
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @getLuma4x4Neighbour(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @Init_Motion_Search_Module() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !48   ; 3 uses
  %i.d = shl nsw i32 %i.c, 1
  %i.e = or disjoint i32 %i.d, 1                  ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.e
  %i.g = tail call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 %i.f, i32 9)
  %i.h = load ptr, ptr @img, align 8, !tbaa !8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 15)
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = tail call double @log(double noundef %i.m) #9, !tbaa !4
  %0 = shl i32 %i.c, 3
  %1 = add i32 %0, 13
  %2 = sitofp i32 %1 to double
  %i.o = tail call double @log(double noundef %2) #9, !tbaa !4
  %3 = insertelement <2 x double> poison, double %i.n, i64 0
  %4 = insertelement <2 x double> %3, double %i.o, i64 1
  %5 = fdiv <2 x double> %4, splat (double f0x3FE62E42FEFA39EF) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = fadd double %6, 1.000000e-10
  %8 = tail call double @llvm.floor.f64(double %7)
  %9 = fptosi double %8 to i32                    ; 2 uses
  %i.p = shl nsw i32 %9, 1
  %10 = or disjoint i32 %i.p, 1                   ; 2 uses
  %i.q = add nsw i32 %9, 1
  %notmask = shl nsw i32 -1, %i.q
  %11 = xor i32 %notmask, -1
  %12 = extractelement <2 x double> %5, i64 1
  %i.r = fadd double %12, 1.000000e-10
  %i.s = tail call double @llvm.ceil.f64(double %i.r)
  %i.t = fptosi double %i.s to i32                ; 2 uses
  %i.u = shl nsw i32 %i.t, 1
  %i.v = add nsw i32 %i.u, 3                      ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %notmask105 = shl nsw i32 -1, %i.w
  %i.x = xor i32 %notmask105, -1
  store i32 %i.x, ptr @max_mvd, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 15520
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 15524
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !52
  %. = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %i.ab)
  %.in = shl i32 %., 6
  %i.ac = add i32 %.in, 64
  store i32 %i.ac, ptr @byte_abs_range, align 4, !tbaa !4
  %i.ad = zext nneg i32 %i.g to i64               ; 4 uses
  %i.ae = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 2) #10 ; 2 uses
  store ptr %i.ae, ptr @spiral_search_x, align 8, !tbaa !45
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 2) #10 ; 2 uses
  store ptr %i.ag, ptr @spiral_search_y, align 8, !tbaa !45
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 2) #10 ; 2 uses
  store ptr %i.ai, ptr @spiral_hpel_search_x, align 8, !tbaa !45
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 2) #10 ; 2 uses
  store ptr %i.ak, ptr @spiral_hpel_search_y, align 8, !tbaa !45
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.an = shl nsw i32 %i.am, 1
  %i.ao = or disjoint i32 %i.an, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 4) #10 ; 2 uses
  store ptr %i.aq, ptr @mvbits, align 8, !tbaa !53
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = zext nneg i32 %11 to i64
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 4) #10 ; 2 uses
  store ptr %i.at, ptr @refbits, align 8, !tbaa !53
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call noalias ptr @calloc(i64 noundef %i.aw, i64 noundef 4) #10 ; 2 uses
  store ptr %i.ax, ptr @byte_abs, align 8, !tbaa !53
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr @img, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !50
  %i.bc = tail call i32 @get_mem4Dint(ptr noundef nonnull @motion_cost, i32 noundef 8, i32 noundef 2, i32 noundef %i.bb, i32 noundef 4) #9 ; 0 uses
  %i.bd = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.be = load ptr, ptr @mvbits, align 8, !tbaa !53
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf ; 4 uses
  store ptr %i.bg, ptr @mvbits, align 8, !tbaa !53
  %i.bh = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.bi = sdiv i32 %i.bh, 2
  %i.bj = load ptr, ptr @byte_abs, align 8, !tbaa !53
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk ; 4 uses
  store ptr %i.bl, ptr @byte_abs, align 8, !tbaa !53
  store i32 1, ptr %i.bg, align 4, !tbaa !4
  %.not114 = icmp slt i32 %i.t, 0
  br i1 %.not114, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.o, %._crit_edge
  %.0115 = phi i32 [ %i.bv, %._crit_edge ], [ 3, %bb.o ] ; 4 uses
  %i.bm = lshr i32 %.0115, 1                      ; 2 uses
  %.not145 = icmp eq i32 %i.bm, 31
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph117
  %i.bn = shl nuw i32 1, %i.bm                    ; 2 uses
  %i.bo = ashr exact i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sext i32 %i.bn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv
  store i32 %.0115, ptr %i.br, align 4, !tbaa !4
  %i.bs = sub nsw i64 0, %indvars.iv
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bs
  store i32 %.0115, ptr %i.bt, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph117
  %i.bv = add nuw nsw i32 %.0115, 2               ; 2 uses
  %.not = icmp sgt i32 %i.bv, %i.v
  br i1 %.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !56

._crit_edge118:                                   ; preds = %._crit_edge, %bb.o
  %i.bw = load ptr, ptr @refbits, align 8, !tbaa !53 ; 3 uses
  store i32 1, ptr %i.bw, align 4, !tbaa !4
  %.not106123 = icmp slt i32 %10, 3
  br i1 %.not106123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %._crit_edge118, %._crit_edge122
  %.1124 = phi i32 [ %i.cs, %._crit_edge122 ], [ 3, %._crit_edge118 ] ; 4 uses
  %i.bx = lshr i32 %.1124, 1
  %i.by = shl nuw i32 2, %i.bx                    ; 3 uses
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  %i.ca = icmp sgt i32 %i.by, 1
  br i1 %i.ca, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %i.cb = zext nneg i32 %i.by to i64
  %i.cc = add nsw i64 %i.cb, -2
  %i.cd = lshr exact i64 %i.cc, 1                 ; 4 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = add i32 %i.ce, 1
  %smax174 = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %i.cf)
  %i.cg = xor i32 %i.ce, -1
  %i.ch = add i32 %smax174, %i.cg                 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 7
  br i1 %min.iters.check, label %.lr.ph121.preheader303, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.preheader
  %n.vec = and i64 %i.cj, 8589934584              ; 3 uses
  %i.ck = add nuw i64 %i.cd, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1124, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bw, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader303

.lr.ph121.preheader303:                           ; preds = %.lr.ph121.preheader, %middle.block
  %indvars.iv148.ph = phi i64 [ %i.cd, %.lr.ph121.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader303, %.lr.ph121
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.lr.ph121 ], [ %indvars.iv148.ph, %.lr.ph121.preheader303 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv148
  store i32 %.1124, ptr %i.cp, align 4, !tbaa !4
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next149 to i32
  %i.cr = icmp sgt i32 %i.bz, %i.cq
  br i1 %i.cr, label %.lr.ph121, label %._crit_edge122, !llvm.loop !60

._crit_edge122:                                   ; preds = %.lr.ph121, %middle.block, %.lr.ph126
  %i.cs = add nuw nsw i32 %.1124, 2               ; 2 uses
  %.not106 = icmp sgt i32 %i.cs, %10
  br i1 %.not106, label %._crit_edge127, label %.lr.ph126, !llvm.loop !61

._crit_edge127:                                   ; preds = %._crit_edge122, %._crit_edge118
  store i32 0, ptr %i.bl, align 4, !tbaa !4
  %i.ct = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.cu = icmp sgt i32 %i.ct, 3
  br i1 %i.cu, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %._crit_edge127, %.lr.ph130
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph130 ], [ 1, %._crit_edge127 ] ; 4 uses
  %i.cv = sub nsw i64 0, %indvars.iv150
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cv
  %i.cx = trunc nuw nsw i64 %indvars.iv150 to i32 ; 2 uses
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv150
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.cz = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.da = sdiv i32 %i.cz, 2
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next151, %i.db
  br i1 %i.dc, label %.lr.ph130, label %._crit_edge131, !llvm.loop !62

._crit_edge131:                                   ; preds = %.lr.ph130, %._crit_edge127
  %i.dd = load ptr, ptr @spiral_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dd, align 2, !tbaa !47
  %i.de = load ptr, ptr @spiral_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.de, align 2, !tbaa !47
  %i.df = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.df, align 2, !tbaa !47
  %i.dg = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dg, align 2, !tbaa !47
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.dh = add nuw i32 %smax, 1
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %._crit_edge140, %._crit_edge131
  %indvar175 = phi i64 [ %indvar.next176, %._crit_edge140 ], [ 0, %._crit_edge131 ] ; 7 uses
  %indvars.iv159 = phi i32 [ %indvars.iv.next160, %._crit_edge140 ], [ 2, %._crit_edge131 ] ; 3 uses
  %.097143 = phi i64 [ %indvars.iv.next157, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 6 uses
  %.0102142 = phi i32 [ %i.gq, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 7 uses
  %i.di = shl nuw nsw i64 %indvar175, 1
  %i.dj = shl nuw nsw i64 %indvar175, 1
  %i.dk = add nuw i64 %i.dj, 2
  %i.dl = shl nuw nsw i64 %indvar175, 3
  %i.dm = add nuw i64 %i.dl, 16
  %i.dn = sub nsw i32 0, %.0102142                ; 5 uses
  %i.do = sub nsw i32 1, %.0102142                ; 4 uses
  %i.dp = trunc i32 %i.dn to i16                  ; 3 uses
  %i.dq = shl i16 %i.dp, 1                        ; 2 uses
  %i.dr = trunc i32 %.0102142 to i16              ; 3 uses
  %i.ds = shl i16 %i.dr, 1                        ; 2 uses
  %min.iters.check269 = icmp ult i64 %indvar175, 6
  br i1 %min.iters.check269, label %scalar.ph268.preheader, label %vector.memcheck232

scalar.ph268.preheader:                           ; preds = %vector.body284, %vector.memcheck232, %.lr.ph135
  %indvar.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %.lr.ph135 ], [ %n.vec272, %vector.body284 ]
  %indvars.iv153.ph = phi i64 [ %.097143, %vector.memcheck232 ], [ %.097143, %.lr.ph135 ], [ %i.dx, %vector.body284 ]
  %.3132.ph = phi i32 [ %i.do, %vector.memcheck232 ], [ %i.do, %.lr.ph135 ], [ %i.dz, %vector.body284 ]
  br label %scalar.ph268

vector.memcheck232:                               ; preds = %.lr.ph135
  %i.dt = shl nuw nsw i64 %indvar175, 3
  %i.du = or disjoint i64 %i.dt, 4                ; 4 uses
  %scevgep243 = getelementptr i8, ptr %i.df, i64 %i.du
  %scevgep240 = getelementptr i8, ptr %i.dg, i64 %i.du
  %scevgep237 = getelementptr i8, ptr %i.dd, i64 %i.du
  %scevgep234 = getelementptr i8, ptr %i.de, i64 %i.du
  %i.dv = shl i64 %.097143, 1                     ; 8 uses
  %scevgep233 = getelementptr i8, ptr %i.de, i64 %i.dv ; 3 uses
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.dv ; 3 uses
  %scevgep236 = getelementptr i8, ptr %i.dd, i64 %i.dv ; 3 uses
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.dv ; 3 uses
  %scevgep239 = getelementptr i8, ptr %i.dg, i64 %i.dv ; 3 uses
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.dv ; 3 uses
  %scevgep242 = getelementptr i8, ptr %i.df, i64 %i.dv ; 3 uses
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.dv ; 3 uses
  %bound0245 = icmp ult ptr %scevgep233, %scevgep238
  %bound1246 = icmp ult ptr %scevgep236, %scevgep235
  %found.conflict247 = and i1 %bound0245, %bound1246
  %bound0248 = icmp ult ptr %scevgep233, %scevgep241
  %bound1249 = icmp ult ptr %scevgep239, %scevgep235
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %found.conflict247, %found.conflict250
  %bound0252 = icmp ult ptr %scevgep233, %scevgep244
  %bound1253 = icmp ult ptr %scevgep242, %scevgep235
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %scevgep236, %scevgep241
  %bound1257 = icmp ult ptr %scevgep239, %scevgep238
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %scevgep236, %scevgep244
  %bound1261 = icmp ult ptr %scevgep242, %scevgep238
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %scevgep239, %scevgep244
  %bound1265 = icmp ult ptr %scevgep242, %scevgep241
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  br i1 %conflict.rdx267, label %scalar.ph268.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck232
  %n.vec272 = and i64 %i.di, 9223372036854775800  ; 4 uses
  %i.dw = shl nuw i64 %n.vec272, 1
  %i.dx = add i64 %.097143, %i.dw
  %i.dy = trunc i64 %n.vec272 to i32
  %i.dz = add i32 %i.do, %i.dy
  %broadcast.splatinsert273 = insertelement <4 x i16> poison, i16 %i.dp, i64 0
  %broadcast.splatinsert275 = insertelement <4 x i16> poison, i16 %i.dq, i64 0
  %broadcast.splatinsert277 = insertelement <4 x i16> poison, i16 %i.dr, i64 0
  %broadcast.splatinsert279 = insertelement <4 x i16> poison, i16 %i.ds, i64 0
  %i.ea = trunc i32 %i.do to i16
  %broadcast.splatinsert281 = insertelement <4 x i16> poison, i16 %i.ea, i64 0
  %broadcast.splat282 = shufflevector <4 x i16> %broadcast.splatinsert281, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction283 = add <4 x i16> %broadcast.splat282, <i16 0, i16 1, i16 2, i16 3>
  %interleaved.vec290 = shufflevector <4 x i16> %broadcast.splatinsert273, <4 x i16> %broadcast.splatinsert277, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  %interleaved.vec294 = shufflevector <4 x i16> %broadcast.splatinsert275, <4 x i16> %broadcast.splatinsert279, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph270
  %index285 = phi i64 [ 0, %vector.ph270 ], [ %index.next296, %vector.body284 ] ; 2 uses
  %vec.ind286 = phi <4 x i16> [ %induction283, %vector.ph270 ], [ %vec.ind.next297, %vector.body284 ] ; 4 uses
  %step.add287 = add <4 x i16> %vec.ind286, splat (i16 4) ; 2 uses
  %i.eb = shl i64 %index285, 1
  %i.ec = add i64 %.097143, %i.eb                 ; 5 uses
  %i.ed = add i64 %i.ec, 8                        ; 4 uses
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.ec
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.ed
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.ec
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.ed
  %i.ei = shl <4 x i16> %vec.ind286, splat (i16 1)
  %i.ej = shl <4 x i16> %step.add287, splat (i16 1)
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.ec
  %i.el = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.ed
  %i.em = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.ec
  %i.en = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.ed
  %interleaved.vec288 = shufflevector <4 x i16> %vec.ind286, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec288, ptr %i.ee, align 2, !tbaa !47, !alias.scope !63, !noalias !66
  %interleaved.vec289 = shufflevector <4 x i16> %step.add287, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec289, ptr %i.ef, align 2, !tbaa !47, !alias.scope !63, !noalias !66
  store <8 x i16> %interleaved.vec290, ptr %i.eg, align 2, !tbaa !47, !alias.scope !70, !noalias !71
  store <8 x i16> %interleaved.vec290, ptr %i.eh, align 2, !tbaa !47, !alias.scope !70, !noalias !71
  %interleaved.vec292 = shufflevector <4 x i16> %i.ei, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec292, ptr %i.ek, align 2, !tbaa !47, !alias.scope !72, !noalias !73
  %interleaved.vec293 = shufflevector <4 x i16> %i.ej, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec293, ptr %i.el, align 2, !tbaa !47, !alias.scope !72, !noalias !73
  store <8 x i16> %interleaved.vec294, ptr %i.em, align 2, !tbaa !47, !alias.scope !73
  store <8 x i16> %interleaved.vec294, ptr %i.en, align 2, !tbaa !47, !alias.scope !73
  %index.next296 = add nuw i64 %index285, 8       ; 2 uses
  %vec.ind.next297 = add <4 x i16> %vec.ind286, splat (i16 8)
  %i.eo = icmp eq i64 %index.next296, %n.vec272
  br i1 %i.eo, label %scalar.ph268.preheader, label %vector.body284, !llvm.loop !74

.lr.ph139.loopexit:                               ; preds = %scalar.ph268
  %i.ep = trunc i32 %i.dn to i16                  ; 3 uses
  %i.eq = shl i16 %i.ep, 1                        ; 2 uses
  %i.er = trunc i32 %.0102142 to i16              ; 3 uses
  %i.es = shl i16 %i.er, 1                        ; 2 uses
  %min.iters.check204 = icmp ult i64 %indvar175, 5
  br i1 %min.iters.check204, label %scalar.ph203.preheader, label %vector.memcheck

scalar.ph203.preheader:                           ; preds = %vector.body218, %vector.memcheck, %.lr.ph139.loopexit
  %indvars.iv156.ph = phi i64 [ %indvars.iv.next154, %vector.memcheck ], [ %indvars.iv.next154, %.lr.ph139.loopexit ], [ %i.fa, %vector.body218 ]
  %.4137.ph = phi i32 [ %i.dn, %vector.memcheck ], [ %i.dn, %.lr.ph139.loopexit ], [ %i.fc, %vector.body218 ]
  br label %scalar.ph203

vector.memcheck:                                  ; preds = %.lr.ph139.loopexit
  %i.et = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %i.eu = shl i64 %.097143, 1                     ; 2 uses
  %i.ev = add i64 %i.eu, 4
  %i.ew = add i64 %i.et, %i.ev                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.ew ; 3 uses
  %i.ex = add i64 %i.dm, %i.eu
  %i.ey = add i64 %i.et, %i.ex                    ; 4 uses
  %scevgep177 = getelementptr i8, ptr %i.de, i64 %i.ey ; 3 uses
  %scevgep178 = getelementptr i8, ptr %i.dd, i64 %i.ew ; 3 uses
  %scevgep179 = getelementptr i8, ptr %i.dd, i64 %i.ey ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.dg, i64 %i.ew ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.dg, i64 %i.ey ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.df, i64 %i.ew ; 3 uses
  %scevgep183 = getelementptr i8, ptr %i.df, i64 %i.ey ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep179
  %bound1 = icmp ult ptr %scevgep178, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %scevgep, %scevgep181
  %bound1185 = icmp ult ptr %scevgep180, %scevgep177
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx = or i1 %found.conflict, %found.conflict186
  %bound0187 = icmp ult ptr %scevgep, %scevgep183
  %bound1188 = icmp ult ptr %scevgep182, %scevgep177
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep178, %scevgep181
  %bound1192 = icmp ult ptr %scevgep180, %scevgep179
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep178, %scevgep183
  %bound1196 = icmp ult ptr %scevgep182, %scevgep179
  %found.conflict197 = and i1 %bound0195, %bound1196
end_hunk_0
