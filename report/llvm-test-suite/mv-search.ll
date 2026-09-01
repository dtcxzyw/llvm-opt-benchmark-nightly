Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@SetMotionVectorPredictor:bb.a
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
  %i.v = fadd <2 x double> %i.u, splat (double 1.000000e-10) ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = tail call double @llvm.floor.f64(double %i.w)
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = or disjoint i32 %i.z, 1                 ; 2 uses
  %i.ab = add nsw i32 %i.y, 1
  %notmask = shl nsw i32 -1, %i.ab
  %i.ac = xor i32 %notmask, -1
  %i.ad = extractelement <2 x double> %i.v, i64 1
  %i.ae = tail call double @llvm.ceil.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = shl nsw i32 %i.af, 1
  %i.ah = add nsw i32 %i.ag, 3                    ; 2 uses
  %i.ai = ashr i32 %i.ah, 1
  %notmask105 = shl nsw i32 -1, %i.ai
  %i.aj = xor i32 %notmask105, -1
  store i32 %i.aj, ptr @max_mvd, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 15520
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 15524
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  %. = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.an)
  %.in = shl i32 %., 6
  %i.ao = add i32 %.in, 64
  store i32 %i.ao, ptr @byte_abs_range, align 4, !tbaa !4
  %i.ap = zext nneg i32 %i.g to i64               ; 4 uses
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 2) #10 ; 2 uses
  store ptr %i.aq, ptr @spiral_search_x, align 8, !tbaa !45
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.as = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 2) #10 ; 2 uses
  store ptr %i.as, ptr @spiral_search_y, align 8, !tbaa !45
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 2) #10 ; 2 uses
  store ptr %i.au, ptr @spiral_hpel_search_x, align 8, !tbaa !45
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 2) #10 ; 2 uses
  store ptr %i.aw, ptr @spiral_hpel_search_y, align 8, !tbaa !45
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.az = shl nsw i32 %i.ay, 1
  %i.ba = or disjoint i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call noalias ptr @calloc(i64 noundef %i.bb, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bc, ptr @mvbits, align 8, !tbaa !53
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = zext nneg i32 %i.ac to i64
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bf, ptr @refbits, align 8, !tbaa !53
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call noalias ptr @calloc(i64 noundef %i.bi, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bj, ptr @byte_abs, align 8, !tbaa !53
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = load ptr, ptr @img, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !50
  %i.bo = tail call i32 @get_mem4Dint(ptr noundef nonnull @motion_cost, i32 noundef 8, i32 noundef 2, i32 noundef %i.bn, i32 noundef 4) #9 ; 0 uses
  %i.bp = load i32, ptr @max_mvd, align 4, !tbaa !4
  %i.bq = load ptr, ptr @mvbits, align 8, !tbaa !53
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br ; 4 uses
  store ptr %i.bs, ptr @mvbits, align 8, !tbaa !53
  %i.bt = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.bu = sdiv i32 %i.bt, 2
  %i.bv = load ptr, ptr @byte_abs, align 8, !tbaa !53
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw ; 4 uses
  store ptr %i.bx, ptr @byte_abs, align 8, !tbaa !53
  store i32 1, ptr %i.bs, align 4, !tbaa !4
  %.not114 = icmp slt i32 %i.af, 0
  br i1 %.not114, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.o, %._crit_edge
  %.0101115 = phi i32 [ %i.ch, %._crit_edge ], [ 3, %bb.o ] ; 4 uses
  %i.by = lshr i32 %.0101115, 1                   ; 2 uses
  %.not145 = icmp eq i32 %i.by, 31
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph117
  %i.bz = shl nuw i32 1, %i.by                    ; 2 uses
  %i.ca = ashr exact i32 %i.bz, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.bz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv
  store i32 %.0101115, ptr %i.cd, align 4, !tbaa !4
  %i.ce = sub nsw i64 0, %indvars.iv
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ce
  store i32 %.0101115, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph117
  %i.ch = add nuw nsw i32 %.0101115, 2            ; 2 uses
  %.not = icmp sgt i32 %i.ch, %i.ah
  br i1 %.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !56

._crit_edge118:                                   ; preds = %._crit_edge, %bb.o
  %i.ci = load ptr, ptr @refbits, align 8, !tbaa !53 ; 3 uses
  store i32 1, ptr %i.ci, align 4, !tbaa !4
  %.not106123 = icmp slt i32 %i.aa, 3
  br i1 %.not106123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %._crit_edge118, %._crit_edge122
  %.1102124 = phi i32 [ %i.db, %._crit_edge122 ], [ 3, %._crit_edge118 ] ; 4 uses
  %i.cj = lshr i32 %.1102124, 1
  %i.ck = shl nuw i32 2, %i.cj                    ; 3 uses
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, 1
  br i1 %i.cm, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %0 = zext nneg i32 %i.ck to i64
  %1 = add nsw i64 %0, -2
  %2 = lshr exact i64 %1, 1                       ; 4 uses
  %3 = trunc i64 %2 to i32                        ; 2 uses
  %i.cn = add i32 %3, 1
  %i.co = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cn)
  %i.cp = xor i32 %3, -1
  %i.cq = add i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cq, 7
  br i1 %min.iters.check, label %.lr.ph121.preheader300, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.preheader
  %n.vec = and i64 %i.cs, 8589934584              ; 3 uses
  %i.ct = add nuw i64 %2, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1102124, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader300

.lr.ph121.preheader300:                           ; preds = %.lr.ph121.preheader, %middle.block
  %indvars.iv148.ph = phi i64 [ %2, %.lr.ph121.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader300, %.lr.ph121
  %indvars.iv148.a = phi i64 [ %indvars.iv.next149.a, %.lr.ph121 ], [ %indvars.iv148.ph, %.lr.ph121.preheader300 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv148.a
  store i32 %.1102124, ptr %i.cy, align 4, !tbaa !4
  %indvars.iv.next149.a = add nuw nsw i64 %indvars.iv148.a, 1 ; 2 uses
  %i.cz = trunc nuw i64 %indvars.iv.next149.a to i32
  %i.da = icmp sgt i32 %i.cl, %i.cz
  br i1 %i.da, label %.lr.ph121, label %._crit_edge122, !llvm.loop !60

._crit_edge122:                                   ; preds = %.lr.ph121, %middle.block, %.lr.ph126
  %i.db = add nuw nsw i32 %.1102124, 2            ; 2 uses
  %.not106 = icmp sgt i32 %i.db, %i.aa
  br i1 %.not106, label %._crit_edge127, label %.lr.ph126, !llvm.loop !61

._crit_edge127:                                   ; preds = %._crit_edge122, %._crit_edge118
  store i32 0, ptr %i.bx, align 4, !tbaa !4
  %i.dc = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.dd = icmp sgt i32 %i.dc, 3
  br i1 %i.dd, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %._crit_edge127, %.lr.ph130
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph130 ], [ 1, %._crit_edge127 ] ; 4 uses
  %i.de = sub nsw i64 0, %indvars.iv150
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv150 to i32 ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv150
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.di = load i32, ptr @byte_abs_range, align 4, !tbaa !4
  %i.dj = sdiv i32 %i.di, 2
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next151, %i.dk
  br i1 %i.dl, label %.lr.ph130, label %._crit_edge131, !llvm.loop !62

._crit_edge131:                                   ; preds = %.lr.ph130, %._crit_edge127
  %i.dm = load ptr, ptr @spiral_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dm, align 2, !tbaa !47
  %i.dn = load ptr, ptr @spiral_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dn, align 2, !tbaa !47
  %i.do = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.do, align 2, !tbaa !47
  %i.dp = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dp, align 2, !tbaa !47
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.dq = add nuw i32 %smax, 1
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %._crit_edge140, %._crit_edge131
  %indvar174 = phi i64 [ %indvar.next175, %._crit_edge140 ], [ 0, %._crit_edge131 ] ; 7 uses
  %indvars.iv159.a = phi i32 [ %indvars.iv.next160, %._crit_edge140 ], [ 2, %._crit_edge131 ] ; 3 uses
  %.0143 = phi i32 [ %i.gz, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 7 uses
  %.098142 = phi i64 [ %indvars.iv.next157, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 6 uses
  %i.dr = shl nuw nsw i64 %indvar174, 1
  %i.ds = add nuw i64 %i.dr, 2
  %i.dt = shl nuw nsw i64 %indvar174, 3
  %i.du = add nuw i64 %i.dt, 16
  %i.dv = sub nsw i32 0, %.0143                   ; 5 uses
  %i.dw = sub nsw i32 1, %.0143                   ; 4 uses
  %i.dx = trunc i32 %i.dv to i16                  ; 3 uses
  %i.dy = shl i16 %i.dx, 1                        ; 2 uses
  %i.dz = trunc i32 %.0143 to i16                 ; 3 uses
  %i.ea = shl i16 %i.dz, 1                        ; 2 uses
  %i.eb = shl nuw nsw i64 %indvar174, 1
  %min.iters.check267 = icmp ult i64 %indvar174, 6
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.memcheck230

scalar.ph266.preheader:                           ; preds = %vector.body281, %vector.memcheck230, %.lr.ph135
  %indvar.ph = phi i64 [ 0, %vector.memcheck230 ], [ 0, %.lr.ph135 ], [ %n.vec269, %vector.body281 ]
  %indvars.iv153.ph = phi i64 [ %.098142, %vector.memcheck230 ], [ %.098142, %.lr.ph135 ], [ %i.eg, %vector.body281 ]
  %.3133.ph = phi i32 [ %i.dw, %vector.memcheck230 ], [ %i.dw, %.lr.ph135 ], [ %i.ei, %vector.body281 ]
  br label %scalar.ph266

vector.memcheck230:                               ; preds = %.lr.ph135
  %i.ec = shl nuw nsw i64 %indvar174, 3
  %i.ed = or disjoint i64 %i.ec, 4                ; 4 uses
  %scevgep241 = getelementptr i8, ptr %i.do, i64 %i.ed
  %scevgep238 = getelementptr i8, ptr %i.dp, i64 %i.ed
  %scevgep235 = getelementptr i8, ptr %i.dm, i64 %i.ed
  %scevgep232 = getelementptr i8, ptr %i.dn, i64 %i.ed
  %i.ee = shl i64 %.098142, 1                     ; 8 uses
  %scevgep231 = getelementptr i8, ptr %i.dn, i64 %i.ee ; 3 uses
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.ee ; 3 uses
  %scevgep234 = getelementptr i8, ptr %i.dm, i64 %i.ee ; 3 uses
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.ee ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.dp, i64 %i.ee ; 3 uses
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.ee ; 3 uses
  %scevgep240 = getelementptr i8, ptr %i.do, i64 %i.ee ; 3 uses
  %scevgep242 = getelementptr i8, ptr %scevgep241, i64 %i.ee ; 3 uses
  %bound0243 = icmp ult ptr %scevgep231, %scevgep236
  %bound1244 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict245 = and i1 %bound0243, %bound1244
  %bound0246 = icmp ult ptr %scevgep231, %scevgep239
  %bound1247 = icmp ult ptr %scevgep237, %scevgep233
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %found.conflict245, %found.conflict248
  %bound0250 = icmp ult ptr %scevgep231, %scevgep242
  %bound1251 = icmp ult ptr %scevgep240, %scevgep233
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %scevgep234, %scevgep239
  %bound1255 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %scevgep234, %scevgep242
  %bound1259 = icmp ult ptr %scevgep240, %scevgep236
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %scevgep237, %scevgep242
  %bound1263 = icmp ult ptr %scevgep240, %scevgep239
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  br i1 %conflict.rdx265, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck230
  %n.vec269 = and i64 %i.eb, 9223372036854775800  ; 4 uses
  %i.ef = shl nuw i64 %n.vec269, 1
  %i.eg = add i64 %.098142, %i.ef
  %i.eh = trunc i64 %n.vec269 to i32
  %i.ei = add i32 %i.dw, %i.eh
  %broadcast.splatinsert270 = insertelement <4 x i16> poison, i16 %i.dx, i64 0
  %broadcast.splatinsert272 = insertelement <4 x i16> poison, i16 %i.dy, i64 0
  %broadcast.splatinsert274 = insertelement <4 x i16> poison, i16 %i.dz, i64 0
  %broadcast.splatinsert276 = insertelement <4 x i16> poison, i16 %i.ea, i64 0
  %i.ej = trunc i32 %i.dw to i16
  %broadcast.splatinsert278 = insertelement <4 x i16> poison, i16 %i.ej, i64 0
  %broadcast.splat279 = shufflevector <4 x i16> %broadcast.splatinsert278, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction280 = add <4 x i16> %broadcast.splat279, <i16 0, i16 1, i16 2, i16 3>
  %interleaved.vec287 = shufflevector <4 x i16> %broadcast.splatinsert270, <4 x i16> %broadcast.splatinsert274, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  %interleaved.vec291 = shufflevector <4 x i16> %broadcast.splatinsert272, <4 x i16> %broadcast.splatinsert276, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph268
  %index282 = phi i64 [ 0, %vector.ph268 ], [ %index.next293, %vector.body281 ] ; 2 uses
  %vec.ind283 = phi <4 x i16> [ %induction280, %vector.ph268 ], [ %vec.ind.next294, %vector.body281 ] ; 4 uses
  %step.add284 = add <4 x i16> %vec.ind283, splat (i16 4) ; 2 uses
  %i.ek = shl i64 %index282, 1
  %i.el = add i64 %.098142, %i.ek                 ; 5 uses
  %i.em = add i64 %i.el, 8                        ; 4 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %i.el
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %i.em
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.el
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.em
  %i.er = shl <4 x i16> %vec.ind283, splat (i16 1)
  %i.es = shl <4 x i16> %step.add284, splat (i16 1)
  %i.et = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.el
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.em
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.el
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.em
  %interleaved.vec285 = shufflevector <4 x i16> %vec.ind283, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec285, ptr %i.en, align 2, !tbaa !47, !alias.scope !63, !noalias !66
  %interleaved.vec286 = shufflevector <4 x i16> %step.add284, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec286, ptr %i.eo, align 2, !tbaa !47, !alias.scope !63, !noalias !66
  store <8 x i16> %interleaved.vec287, ptr %i.ep, align 2, !tbaa !47, !alias.scope !70, !noalias !71
  store <8 x i16> %interleaved.vec287, ptr %i.eq, align 2, !tbaa !47, !alias.scope !70, !noalias !71
  %interleaved.vec289 = shufflevector <4 x i16> %i.er, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec289, ptr %i.et, align 2, !tbaa !47, !alias.scope !72, !noalias !73
  %interleaved.vec290 = shufflevector <4 x i16> %i.es, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec290, ptr %i.eu, align 2, !tbaa !47, !alias.scope !72, !noalias !73
  store <8 x i16> %interleaved.vec291, ptr %i.ev, align 2, !tbaa !47, !alias.scope !73
  store <8 x i16> %interleaved.vec291, ptr %i.ew, align 2, !tbaa !47, !alias.scope !73
  %index.next293 = add nuw i64 %index282, 8       ; 2 uses
  %vec.ind.next294 = add <4 x i16> %vec.ind283, splat (i16 8)
  %i.ex = icmp eq i64 %index.next293, %n.vec269
  br i1 %i.ex, label %scalar.ph266.preheader, label %vector.body281, !llvm.loop !74

.lr.ph139.loopexit:                               ; preds = %scalar.ph266
  %i.ey = trunc i32 %i.dv to i16                  ; 3 uses
  %i.ez = shl i16 %i.ey, 1                        ; 2 uses
  %i.fa = trunc i32 %.0143 to i16                 ; 3 uses
  %i.fb = shl i16 %i.fa, 1                        ; 2 uses
  %min.iters.check203 = icmp ult i64 %indvar174, 5
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck

scalar.ph202.preheader:                           ; preds = %vector.body216, %vector.memcheck, %.lr.ph139.loopexit
  %indvars.iv156.ph = phi i64 [ %indvars.iv.next154, %vector.memcheck ], [ %indvars.iv.next154, %.lr.ph139.loopexit ], [ %i.fj, %vector.body216 ]
  %.4138.ph = phi i32 [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph139.loopexit ], [ %i.fl, %vector.body216 ]
  br label %scalar.ph202

vector.memcheck:                                  ; preds = %.lr.ph139.loopexit
  %i.fc = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %i.fd = shl i64 %.098142, 1                     ; 2 uses
  %i.fe = add i64 %i.fd, 4
  %i.ff = add i64 %i.fc, %i.fe                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.dn, i64 %i.ff ; 3 uses
  %i.fg = add i64 %i.du, %i.fd
  %i.fh = add i64 %i.fc, %i.fg                    ; 4 uses
  %scevgep176 = getelementptr i8, ptr %i.dn, i64 %i.fh ; 3 uses
  %scevgep177 = getelementptr i8, ptr %i.dm, i64 %i.ff ; 3 uses
  %scevgep178 = getelementptr i8, ptr %i.dm, i64 %i.fh ; 3 uses
  %scevgep179 = getelementptr i8, ptr %i.dp, i64 %i.ff ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.dp, i64 %i.fh ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.do, i64 %i.ff ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.do, i64 %i.fh ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep178
  %bound1 = icmp ult ptr %scevgep177, %scevgep176
  %found.conflict = and i1 %bound0, %bound1
  %bound0183 = icmp ult ptr %scevgep, %scevgep180
  %bound1184 = icmp ult ptr %scevgep179, %scevgep176
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict, %found.conflict185
  %bound0186 = icmp ult ptr %scevgep, %scevgep182
  %bound1187 = icmp ult ptr %scevgep181, %scevgep176
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx, %found.conflict188
  %bound0190 = icmp ult ptr %scevgep177, %scevgep180
  %bound1191 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %scevgep177, %scevgep182
  %bound1195 = icmp ult ptr %scevgep181, %scevgep178
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
end_hunk_0
