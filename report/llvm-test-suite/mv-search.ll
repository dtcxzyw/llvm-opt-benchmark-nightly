inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@SetMotionVectorPredictor:bb.a
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
  %i.o = shl i32 %i.c, 3
  %i.p = add i32 %i.o, 13
  %i.q = sitofp i32 %i.p to double
  %i.r = tail call double @log(double noundef %i.q) #9, !tbaa !4
  %i.s = insertelement <2 x double> poison, double %i.n, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.r, i64 1
  %i.u = fdiv <2 x double> %i.t, splat (double f0x3FE62E42FEFA39EF)
  %0 = fadd <2 x double> %i.u, splat (double 1.000000e-10) ; 2 uses
  %1 = extractelement <2 x double> %0, i64 0
  %i.v = tail call double @llvm.floor.f64(double %1)
  %i.w = fptosi double %i.v to i32                ; 2 uses
  %i.x = shl nsw i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, 1                  ; 2 uses
  %i.z = add nsw i32 %i.w, 1
  %notmask = shl nsw i32 -1, %i.z
  %i.aa = xor i32 %notmask, -1
  %i.ab = extractelement <2 x double> %0, i64 1
  %i.ac = tail call double @llvm.ceil.f64(double %i.ab)
  %i.ad = fptosi double %i.ac to i32              ; 2 uses
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = add nsw i32 %i.ae, 3                    ; 2 uses
  %i.ag = ashr i32 %i.af, 1
  %notmask105 = shl nsw i32 -1, %i.ag
  %i.ah = xor i32 %notmask105, -1
  store i32 %i.ah, ptr @max_mvd, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 15520
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 15524
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !52
  %. = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %i.al)
  %.in = shl i32 %., 6
  %i.am = add i32 %.in, 64
  store i32 %i.am, ptr @byte_abs_range, align 4, !tbaa !4
  %i.an = zext nneg i32 %i.g to i64               ; 4 uses
  %i.ao = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 2) #10 ; 2 uses
  store ptr %i.ao, ptr @spiral_search_x, align 8, !tbaa !45
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 2) #10 ; 2 uses
  store ptr %i.aq, ptr @spiral_search_y, align 8, !tbaa !45
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 2) #10 ; 2 uses
  store ptr %i.as, ptr @spiral_hpel_search_x, align 8, !tbaa !45
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 2) #10 ; 2 uses
  store ptr %i.au, ptr @spiral_hpel_search_y, align 8, !tbaa !45
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aw = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.ax = shl nsw i32 %i.aw, 1
  %i.ay = or disjoint i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 4) #10 ; 2 uses
  store ptr %i.ba, ptr @mvbits, align 8, !tbaa !53
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = zext nneg i32 %i.aa to i64
  %i.bd = tail call noalias ptr @calloc(i64 noundef %i.bc, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bd, ptr @refbits, align 8, !tbaa !53
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call noalias ptr @calloc(i64 noundef %i.bg, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bh, ptr @byte_abs, align 8, !tbaa !53
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load ptr, ptr @img, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !50
  %i.bm = tail call i32 @get_mem4Dint(ptr noundef nonnull @motion_cost, i32 noundef 8, i32 noundef 2, i32 noundef %i.bl, i32 noundef 4) #9 ; 0 uses
  %i.bn = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.bo = load ptr, ptr @mvbits, align 8, !tbaa !53
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp ; 4 uses
  store ptr %i.bq, ptr @mvbits, align 8, !tbaa !53
  %i.br = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = load ptr, ptr @byte_abs, align 8, !tbaa !53
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu ; 4 uses
  store ptr %i.bv, ptr @byte_abs, align 8, !tbaa !53
  store i32 1, ptr %i.bq, align 4, !tbaa !4
  %.not114 = icmp slt i32 %i.ad, 0
  br i1 %.not114, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.o, %._crit_edge
  %.0115 = phi i32 [ %i.cf, %._crit_edge ], [ 3, %bb.o ] ; 4 uses
  %i.bw = lshr i32 %.0115, 1                      ; 2 uses
  %.not145 = icmp eq i32 %i.bw, 31
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph117
  %i.bx = shl nuw i32 1, %i.bw                    ; 2 uses
  %i.by = ashr exact i32 %i.bx, 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = sext i32 %i.bx to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bz, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv
  store i32 %.0115, ptr %i.cb, align 4, !tbaa !4
  %i.cc = sub nsw i64 0, %indvars.iv
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cc
  store i32 %.0115, ptr %i.cd, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ce = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph117
  %i.cf = add nuw nsw i32 %.0115, 2               ; 2 uses
  %.not = icmp sgt i32 %i.cf, %i.af
  br i1 %.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !56

._crit_edge118:                                   ; preds = %._crit_edge, %bb.o
  %i.cg = load ptr, ptr @refbits, align 8, !tbaa !53 ; 3 uses
  store i32 1, ptr %i.cg, align 4, !tbaa !4
  %.not106123 = icmp slt i32 %i.y, 3
  br i1 %.not106123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %._crit_edge118, %._crit_edge122
  %.1124 = phi i32 [ %i.dd, %._crit_edge122 ], [ 3, %._crit_edge118 ] ; 4 uses
  %i.ch = lshr i32 %.1124, 1
  %i.ci = shl nuw i32 2, %i.ch                    ; 3 uses
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  %i.ck = icmp sgt i32 %i.ci, 1
  br i1 %i.ck, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = add nsw i64 %i.cl, -2
  %i.cn = lshr exact i64 %i.cm, 1                 ; 4 uses
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = add i32 %i.co, 1
  %i.cq = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 %i.cp)
  %i.cr = xor i32 %i.co, -1
  %i.cs = add i32 %i.cq, %i.cr                    ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cs, 7
  br i1 %min.iters.check, label %.lr.ph121.preheader302, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.preheader
  %n.vec = and i64 %i.cu, 8589934584              ; 3 uses
  %i.cv = add nuw i64 %i.cn, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1124, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader302

.lr.ph121.preheader302:                           ; preds = %.lr.ph121.preheader, %middle.block
  %indvars.iv148.ph = phi i64 [ %i.cn, %.lr.ph121.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader302, %.lr.ph121
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.lr.ph121 ], [ %indvars.iv148.ph, %.lr.ph121.preheader302 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv148
  store i32 %.1124, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
end_hunk_0
