Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ras2vect?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"path raster %d\00", align 1
@formnb = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define ptr @ras2forms(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4, i32 noundef %5, double noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #5 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_bm_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !15
  %i.c = add nsw i32 %1, 63
  %i.d = sdiv i32 %i.c, 64                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !16
  %i.f = sext i32 %i.d to i64
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !17
  %.not15.i = icmp eq ptr %i.i, null
  br i1 %.not15.i, label %bb.c, label %_bm_new.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #6
  br label %_bm_new.exit

_bm_new.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.b ] ; 6 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge191.split

.preheader.lr.ph:                                 ; preds = %_bm_new.exit
  %i.l = icmp sgt i32 %1, 0
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 2 uses
  br i1 %i.l, label %.preheader.preheader, label %._crit_edge191.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count213 = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv210 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next211, %._crit_edge ] ; 4 uses
  %i.p = mul nuw nsw i64 %indvars.iv210, %i.o
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  br label %bb.d

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %_bm_new.exit
  %i.q = tail call ptr @potrace_param_default() #6 ; 7 uses
  %i.r = icmp sgt i32 %5, 0
  %i.s = select i1 %i.r, i32 %5, i32 50
  store i32 %i.s, ptr %i.q, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store double %6, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 4, ptr %i.u, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 1, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store double 8.000000e-01, ptr %i.w, align 8, !tbaa !25
  %i.x = tail call ptr @potrace_trace(ptr noundef nonnull %i.q, ptr noundef %.1.i) #6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0151200 = load ptr, ptr %i.y, align 8, !tbaa !27 ; 2 uses
  %.not201 = icmp eq ptr %.0151200, null
  br i1 %.not201, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %._crit_edge191.split
  %.not165 = icmp eq ptr %3, null                 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1396 ; 4 uses
  %i.aa = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %2, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1380 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1404 ; 6 uses
  %.not166 = icmp eq ptr %7, null
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ac
  %i.ag = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ac
  %i.ah = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ac
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ac
  %i.aj = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ac
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge191.split, label %.preheader

bb.d:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ak = load float, ptr %gep, align 4, !tbaa !29
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, %4
  %i.am = and i64 %indvars.iv, 63
  %i.an = lshr exact i64 -9223372036854775808, %i.am ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !16
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %indvars.iv210, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = lshr i64 %indvars.iv, 6
  %i.au = and i64 %i.at, 67108863
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  %i.ax = or i64 %i.aw, %i.an
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ay = xor i64 %i.an, -1
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.ba = load i32, ptr %i.n, align 8, !tbaa !16
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %indvars.iv210, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bc
  %i.be = lshr i64 %indvars.iv, 6
  %i.bf = and i64 %i.be, 67108863
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bi = and i64 %i.bh, %i.ay
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

._crit_edge207:                                   ; preds = %bb.aa, %._crit_edge191.split
  %.0146.lcssa = phi ptr [ null, %._crit_edge191.split ], [ %.1147, %bb.aa ]
  %.0145.lcssa = phi ptr [ null, %._crit_edge191.split ], [ %i.fr, %bb.aa ]
  tail call void @potrace_state_free(ptr noundef %i.x) #6
  tail call void @potrace_param_free(ptr noundef nonnull %i.q) #6
  %.not.i172 = icmp eq ptr %.1.i, null
  br i1 %.not.i172, label %_bm_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge207
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.bk) #6
  tail call void @free(ptr noundef nonnull %.1.i) #6
  br label %_bm_free.exit

_bm_free.exit:                                    ; preds = %._crit_edge207, %bb.h
  %i.bl = tail call ptr @g_list_reverse(ptr noundef %.0145.lcssa) #6
  %.not164 = icmp eq ptr %7, null
  br i1 %.not164, label %bb.ac, label %bb.ab

bb.i:                                             ; preds = %.lr.ph206, %bb.aa
  %.0151204 = phi ptr [ %.0151200, %.lr.ph206 ], [ %.0151, %bb.aa ] ; 6 uses
  %.0145203 = phi ptr [ null, %.lr.ph206 ], [ %i.fr, %bb.aa ]
  %.0146202 = phi ptr [ null, %.lr.ph206 ], [ %.1147, %bb.aa ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0151204, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0151204, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr [48 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  %i.bu = tail call ptr @dt_masks_create(i32 noundef 2) #6 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = atomicrmw add ptr @formnb, i32 1 seq_cst, align 4
  %i.bx = add nsw i32 %i.bw, 1
  %i.by = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 128, ptr noundef nonnull @.str, i32 noundef %i.bx) #6 ; 0 uses
  br i1 %.not165, label %.split152, label %_add_point.exit

.split152:                                        ; preds = %bb.i
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ca = fptrunc <4 x double> %i.bz to <4 x float> ; 2 uses
  %i.cb = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #5 ; 3 uses
  store <4 x float> %i.ca, ptr %i.cb, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.cd, ptr %i.cc, align 4, !tbaa !29
  br label %bb.j

_add_point.exit:                                  ; preds = %bb.i
  %i.ce = load <2 x i32>, ptr %i.z, align 4, !tbaa !38
  %i.cf = sitofp <2 x i32> %i.ce to <2 x float>   ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.af
  %i.ch = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #5 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = fptrunc <2 x double> %i.bt to <2 x float>
  %i.ck = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.cl = sitofp <2 x i32> %i.ck to <2 x float>
  %i.cm = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.cj
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.ag
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cn
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cl ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.cs, ptr %i.ch, align 4, !tbaa !29
  store <2 x float> %i.cr, ptr %i.ci, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %.split152, %_add_point.exit
  %.sink235 = phi ptr [ %i.cb, %.split152 ], [ %i.ch, %_add_point.exit ] ; 3 uses
  %i.ct = phi <2 x float> [ zeroinitializer, %.split152 ], [ %i.cg, %_add_point.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink235, i64 32
  store i32 2, ptr %i.cu, align 4, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink235, i64 24
  store <2 x float> zeroinitializer, ptr %i.cv, align 4, !tbaa !29
  %i.cw = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.cx = tail call ptr @g_list_append(ptr noundef %i.cw, ptr noundef nonnull %.sink235) #6 ; 2 uses
  store ptr %i.cx, ptr %i.bu, align 8, !tbaa !44
  %i.cy = icmp sgt i32 %i.bn, 0
  br i1 %i.cy, label %.lr.ph, label %._crit_edge199

.lr.ph:                                           ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %.0151204, i64 16
  %wide.trip.count218 = zext nneg i32 %i.bn to i64
  br label %bb.k

.lr.ph198:                                        ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %.0151204, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !45
  %.not169 = icmp ne ptr %storemerge188, null     ; 2 uses
  %wide.trip.count223 = zext nneg i32 %i.bn to i64
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %i.dc = phi ptr [ %i.cx, %.lr.ph ], [ %storemerge188, %bb.q ] ; 2 uses
  %indvars.iv215 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next216, %bb.q ] ; 3 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !45
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv215
  %i.df = load i32, ptr %i.de, align 4, !tbaa !38
  %i.dg = icmp eq i32 %i.df, 1
  %i.dh = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %indvars.iv215 ; 3 uses
  br i1 %i.dg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load <2 x double>, ptr %i.dj, align 8, !tbaa !37
  %i.dl = fptrunc <2 x double> %i.dk to <2 x float> ; 3 uses
  %i.dm = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #5 ; 6 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.dn, ptr %i.dm, align 4, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  store <2 x float> %i.dl, ptr %i.do, align 4, !tbaa !29
  br i1 %.not165, label %_add_point.exit175, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.dq = sitofp <2 x i32> %i.dp to <2 x float>
  %i.dr = load <2 x i32>, ptr %i.z, align 4, !tbaa !38
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.du = sitofp <2 x i32> %i.dt to <2 x float>
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.ds, %i.dl
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.aj
  %i.dx = fadd reassoc nsz arcp contract afn <2 x float> %i.dw, %i.du
  %i.dy = fdiv reassoc nsz arcp contract afn <2 x float> %i.dx, %i.dq ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.dz, ptr %i.dm, align 4, !tbaa !29
  store <2 x float> %i.dy, ptr %i.do, align 4, !tbaa !29
  br label %_add_point.exit175

_add_point.exit175:                               ; preds = %bb.l, %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i32 2, ptr %i.ea, align 4, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store <2 x float> zeroinitializer, ptr %i.eb, align 4, !tbaa !29
  %i.ec = tail call ptr @g_list_append(ptr noundef %i.dc, ptr noundef nonnull %i.dm) #6
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ef = load <2 x double>, ptr %i.ee, align 8, !tbaa !37
  %i.eg = load <2 x double>, ptr %i.ed, align 8, !tbaa !37
  %i.eh = fptrunc <2 x double> %i.eg to <2 x float> ; 3 uses
  %i.ei = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #5 ; 6 uses
  %i.ej = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.ej, ptr %i.ei, align 4, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  store <2 x float> %i.eh, ptr %i.ek, align 4, !tbaa !29
  br i1 %.not165, label %_add_point.exit177, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.em = sitofp <2 x i32> %i.el to <2 x float>
  %i.en = load <2 x i32>, ptr %i.z, align 4, !tbaa !38
  %i.eo = sitofp <2 x i32> %i.en to <2 x float>
  %i.ep = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.eq = sitofp <2 x i32> %i.ep to <2 x float>
  %i.er = fmul reassoc nsz arcp contract afn <2 x float> %i.eo, %i.eh
  %i.es = fmul reassoc nsz arcp contract afn <2 x float> %i.er, %i.ah
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.es, %i.eq
  %i.eu = fdiv reassoc nsz arcp contract afn <2 x float> %i.et, %i.em ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.ev, ptr %i.ei, align 4, !tbaa !29
  store <2 x float> %i.eu, ptr %i.ek, align 4, !tbaa !29
  br label %_add_point.exit177

_add_point.exit177:                               ; preds = %bb.n, %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i32 2, ptr %i.ew, align 4, !tbaa !40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store <2 x float> zeroinitializer, ptr %i.ex, align 4, !tbaa !29
  %i.ey = tail call ptr @g_list_append(ptr noundef %i.dc, ptr noundef nonnull %i.ei) #6 ; 2 uses
  store ptr %i.ey, ptr %i.bu, align 8, !tbaa !44
  %i.ez = fptrunc <2 x double> %i.ef to <2 x float> ; 3 uses
  %i.fa = tail call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #5 ; 6 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.fb, ptr %i.fa, align 4, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  store <2 x float> %i.ez, ptr %i.fc, align 4, !tbaa !29
  br i1 %.not165, label %_add_point.exit179, label %bb.p

bb.p:                                             ; preds = %_add_point.exit177
  %i.fd = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.fe = sitofp <2 x i32> %i.fd to <2 x float>
  %i.ff = load <2 x i32>, ptr %i.z, align 4, !tbaa !38
  %i.fg = sitofp <2 x i32> %i.ff to <2 x float>
  %i.fh = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.fi = sitofp <2 x i32> %i.fh to <2 x float>
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fg, %i.ez
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fj, %i.ai
  %i.fl = fadd reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fi
  %i.fm = fdiv reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fe ; 2 uses
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.fn, ptr %i.fa, align 4, !tbaa !29
  store <2 x float> %i.fm, ptr %i.fc, align 4, !tbaa !29
  br label %_add_point.exit179

_add_point.exit179:                               ; preds = %_add_point.exit177, %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store i32 2, ptr %i.fo, align 4, !tbaa !40
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store <2 x float> zeroinitializer, ptr %i.fp, align 4, !tbaa !29
  %i.fq = tail call ptr @g_list_append(ptr noundef %i.ey, ptr noundef nonnull %i.fa) #6
  br label %bb.q

bb.q:                                             ; preds = %_add_point.exit175, %_add_point.exit179
  %storemerge188 = phi ptr [ %i.fq, %_add_point.exit179 ], [ %i.ec, %_add_point.exit175 ] ; 8 uses
  store ptr %storemerge188, ptr %i.bu, align 8, !tbaa !44
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %.lr.ph198, label %bb.k

._crit_edge199:                                   ; preds = %bb.y, %bb.j
  %i.fr = tail call ptr @g_list_prepend(ptr noundef %.0145203, ptr noundef nonnull %i.bu) #6 ; 2 uses
  br i1 %.not166, label %bb.aa, label %bb.z

bb.r:                                             ; preds = %.lr.ph198, %bb.y
  %indvars.iv220 = phi i64 [ 0, %.lr.ph198 ], [ %indvars.iv.next221, %bb.y ] ; 3 uses
  %.0144195 = phi ptr [ %storemerge188, %.lr.ph198 ], [ %.3, %bb.y ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv220
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !38
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fv = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %i.fv, i64 %indvars.iv220 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load <2 x double>, ptr %i.fx, align 8, !tbaa !37
  %i.fz = load ptr, ptr %.0144195, align 8, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 2 uses
  %i.gb = load <2 x double>, ptr %i.fw, align 8, !tbaa !37
  %i.gc = fptrunc <2 x double> %i.gb to <2 x float> ; 2 uses
  store <2 x float> %i.gc, ptr %i.ga, align 4, !tbaa !29
  br i1 %.not165, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.ge = sitofp <2 x i32> %i.gd to <2 x float>
  %i.gf = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.gg = sitofp <2 x i32> %i.gf to <2 x float>
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.gc
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, %i.ge
  %i.gj = fdiv reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gg
  store <2 x float> %i.gj, ptr %i.ga, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gk = getelementptr inbounds nuw i8, ptr %.0144195, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !48 ; 2 uses
  %.not171 = icmp eq ptr %i.gl, null
  %spec.select = select i1 %.not171, ptr %storemerge188, ptr %i.gl ; 3 uses
  %i.gm = load ptr, ptr %spec.select, align 8, !tbaa !47
  %i.gn = fptrunc <2 x double> %i.fy to <2 x float> ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  store <2 x float> %i.gn, ptr %i.go, align 4, !tbaa !29
  br i1 %.not165, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.gn
  %i.gq = load <2 x i32>, ptr %i.ae, align 4, !tbaa !38
  %i.gr = sitofp <2 x i32> %i.gq to <2 x float>
  %i.gs = load <2 x i32>, ptr %i.ad, align 4, !tbaa !38
  %i.gt = sitofp <2 x i32> %i.gs to <2 x float>
  %i.gu = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, %i.gr
  %i.gv = fdiv reassoc nsz arcp contract afn <2 x float> %i.gu, %i.gt
  store <2 x float> %i.gv, ptr %i.go, align 4, !tbaa !29
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  %.not167 = icmp eq ptr %.0144195, null
  br i1 %.not167, label %.thread180, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %.0144195, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !48 ; 2 uses
  %.not168 = icmp ne ptr %i.gx, null              ; 2 uses
  %brmerge = select i1 %.not168, i1 true, i1 %.not169
  %.mux = select i1 %.not168, ptr %i.gx, ptr %storemerge188
  br i1 %brmerge, label %.thread182, label %.thread186

.thread180:                                       ; preds = %bb.w
  br i1 %.not169, label %.thread182, label %.thread186

.thread182:                                       ; preds = %bb.x, %.thread180
  %.2185 = phi ptr [ %storemerge188, %.thread180 ], [ %.mux, %bb.x ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.2185, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48 ; 2 uses
  %.not170 = icmp eq ptr %i.gz, null
  br i1 %.not170, label %.thread186, label %bb.y

.thread186:                                       ; preds = %bb.x, %.thread180, %.thread182
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.v, %.thread186, %.thread182
  %.3 = phi ptr [ %storemerge188, %.thread186 ], [ %i.gz, %.thread182 ], [ %spec.select, %bb.v ], [ %spec.select, %bb.u ]
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge199, label %bb.r

bb.z:                                             ; preds = %._crit_edge199
  %i.ha = getelementptr inbounds nuw i8, ptr %.0151204, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51
  %i.hc = sext i32 %i.hb to i64
  %i.hd = inttoptr i64 %i.hc to ptr
  %i.he = tail call ptr @g_list_prepend(ptr noundef %.0146202, ptr noundef %i.hd) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge199
  %.1147 = phi ptr [ %i.he, %bb.z ], [ %.0146202, %._crit_edge199 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0151204, i64 32
  %.0151 = load ptr, ptr %i.hf, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %.0151, null
  br i1 %.not, label %._crit_edge207, label %bb.i

bb.ab:                                            ; preds = %_bm_free.exit
  %i.hg = tail call ptr @g_list_reverse(ptr noundef %.0146.lcssa) #6
  store ptr %i.hg, ptr %7, align 8, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_bm_free.exit
  ret ptr %i.bl
}

declare ptr @potrace_param_default() local_unnamed_addr #1

declare ptr @potrace_trace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @potrace_state_free(ptr noundef) local_unnamed_addr #1

declare void @potrace_param_free(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_reverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind allocsize(0,1) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"potrace_bitmap_s", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !8, i64 4}
!16 = !{!13, !8, i64 8}
!17 = !{!13, !12, i64 16}
!18 = !{!"double", !7, i64 0}
!19 = !{!"potrace_progress_s", !11, i64 0, !11, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!20 = !{!"potrace_param_s", !8, i64 0, !8, i64 4, !18, i64 8, !8, i64 16, !18, i64 24, !19, i64 32}
!21 = !{!20, !8, i64 0}
!22 = !{!20, !18, i64 8}
!23 = !{!20, !8, i64 4}
!24 = !{!20, !8, i64 16}
!25 = !{!20, !18, i64 24}
!26 = !{!"p1 _ZTS14potrace_path_s", !11, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !7, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!"p1 _ZTS16potrace_dpoint_s", !11, i64 0}
!34 = !{!"potrace_curve_s", !8, i64 0, !32, i64 8, !33, i64 16}
!35 = !{!34, !8, i64 0}
!36 = !{!34, !33, i64 16}
!37 = !{!18, !18, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!"dt_masks_point_path_t", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32}
!40 = !{!39, !8, i64 32}
!41 = !{!"p1 _ZTS6_GList", !11, i64 0}
!42 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!43 = !{!"dt_masks_form_t", !41, i64 0, !8, i64 8, !42, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!44 = !{!43, !41, i64 0}
!45 = !{!34, !32, i64 8}
!46 = !{!"_GList", !11, i64 0, !41, i64 8, !41, i64 16}
!47 = !{!46, !11, i64 0}
!48 = !{!46, !41, i64 8}
!49 = !{!"p1 _ZTS18potrace_privpath_s", !11, i64 0}
!50 = !{!"potrace_path_s", !8, i64 0, !8, i64 4, !34, i64 8, !26, i64 32, !26, i64 40, !26, i64 48, !49, i64 56}
!51 = !{!50, !8, i64 4}
!52 = !{!41, !41, i64 0}
end_hunk_0
