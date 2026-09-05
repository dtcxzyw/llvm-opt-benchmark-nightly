Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_utils_dcrdefs?download=true
inline.NumInlined: 166
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw14convert_to_rgbEv:bb.a

bb.u:                                             ; preds = %bb.t
  %i.of = call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 6, ptr %i.of, align 16, !tbaa !73
  call void @__cxa_throw(ptr nonnull %i.of, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw13pseudoinverseEPA3_dS1_i(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12scale_colorsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 33 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 768264 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = tail call noundef i32 %i.d(ptr noundef %i.f, i32 noundef 512, i32 noundef 0, i32 noundef 2)
  %.not175 = icmp eq i32 %i.g, 0
  br i1 %.not175, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 6, ptr %i.h, align 16, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !86
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153268
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5388 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129
  %.not176 = icmp eq i32 %i.p, 0
  br i1 %.not176, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %i.r = load i32, ptr %i.q, align 8, !tbaa !130
  %.not177 = icmp eq i32 %i.r, 0
  br i1 %.not177, label %.thread193, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.t = load float, ptr %i.s, align 4, !tbaa !86 ; 2 uses
  %i.u = fcmp olt float %i.t, -5.000000e-01
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = fcmp ugt float %i.t, f0x3727C5AC
  br i1 %i.v, label %.loopexit209.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.x = load i32, ptr %i.w, align 8, !tbaa !131
  %i.y = and i32 %i.x, 131072
  %.not178 = icmp eq i32 %i.y, 0
  br i1 %.not178, label %bb.k, label %.loopexit209.thread

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5252
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !81
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !89
  %i.ag = zext i16 %i.af to i32
  %. = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ag) ; 3 uses
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5248
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !81
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !90
  %i.an = zext i16 %i.am to i32
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.an) ; 4 uses
  %i.ap = icmp ult i32 %i.aa, %.
  br i1 %i.ap, label %.lr.ph249, label %.loopexit209

.lr.ph249:                                        ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.av = icmp ult i32 %i.ah, %i.ao
  br i1 %i.av, label %.lr.ph249.split.preheader, label %.loopexit209

.lr.ph249.split.preheader:                        ; preds = %.lr.ph249
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  br label %.lr.ph249.split

.preheader208:                                    ; preds = %._crit_edge227
  %i.bq = extractelement <8 x double> %i.ig, i64 0 ; 2 uses
  %i.br = fcmp une double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.v, label %bb.w

.lr.ph249.split:                                  ; preds = %.lr.ph249.split.preheader, %._crit_edge227
  %.0156247 = phi i32 [ %i.aa, %.lr.ph249.split.preheader ], [ %i.bv, %._crit_edge227 ] ; 2 uses
  %i.bs = phi <8 x double> [ zeroinitializer, %.lr.ph249.split.preheader ], [ %i.ig, %._crit_edge227 ] ; 2 uses
  %i.bt = load i32, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.ao
  %i.bv = add nuw nsw i32 %.0156247, 8            ; 3 uses
  br i1 %i.bu, label %.preheader212.lr.ph.us.preheader, label %._crit_edge227

.preheader212.lr.ph.us.preheader:                 ; preds = %.lr.ph249.split
  %invariant.umin218 = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %.)
  %i.bw = zext nneg i32 %i.bt to i64
  br label %.preheader212.us.preheader

.preheader212.us.preheader:                       ; preds = %.loopexit214.us, %.preheader212.lr.ph.us.preheader
  %indvars.iv288 = phi i64 [ %i.bw, %.preheader212.lr.ph.us.preheader ], [ %indvars.iv.next289, %.loopexit214.us ] ; 3 uses
  %i.bx = phi <8 x double> [ %i.bs, %.preheader212.lr.ph.us.preheader ], [ %i.cy, %.loopexit214.us ] ; 11 uses
  %indvars296 = trunc i64 %indvars.iv288 to i32   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.by = add nuw nsw i32 %indvars296, 8
  %invariant.umin.us = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.ao) ; 2 uses
  %i.bz = zext nneg i32 %invariant.umin.us to i64
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !91 ; 2 uses
  br label %.preheader212.us

.preheader210.split.us237:                        ; preds = %.preheader210.split.us237.preheader.peel.newph, %bb.l
  %.0147215.us228.a = phi i32 [ %.0147215.us228, %bb.l ], [ %i.dd, %.preheader210.split.us237.preheader.peel.newph ]
  %.0147215.us228 = add nuw nsw i32 %.0147215.us228.a, 1 ; 5 uses
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.cb = load i16, ptr %i.al, align 2, !tbaa !90
  %i.cc = zext i16 %i.cb to i32
  %i.cd = mul nuw i32 %.0150219.us, %i.cc
  %i.ce = add nuw i32 %i.cd, %.0151216.us235
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cf
  %i.ch = zext nneg i32 %.0147215.us228 to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.ch
  %.0146.in.us229 = load i16, ptr %i.ci, align 2, !tbaa !93
  %.0146.us230 = zext i16 %.0146.in.us229 to i32  ; 2 uses
  %i.cj = icmp slt i32 %i.ek, %.0146.us230
  br i1 %i.cj, label %.loopexit214.us, label %bb.l

bb.l:                                             ; preds = %.preheader210.split.us237
  %i.ck = zext i32 %.0147215.us228 to i64         ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !81
  %i.cn = sub i32 %.0146.us230, %i.cm
  %spec.store.select.us231 = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !81
  %i.cq = add i32 %spec.store.select.us231, %i.cp
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !81
  %i.cr = add nuw i32 %.0147215.us228, 4
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !81
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !81
  %i.cw = load i32, ptr %i.aq, align 8, !tbaa !91 ; 3 uses
  %.not190.us232 = icmp eq i32 %i.cw, 0
  %i.cx = icmp ult i32 %.0147215.us228, 3
  %or.cond268 = select i1 %.not190.us232, i1 %i.cx, i1 false
  br i1 %or.cond268, label %.preheader210.split.us237, label %.split.us233, !llvm.loop !108

.loopexit214.us:                                  ; preds = %.preheader210.split.us237, %.preheader210.split.us237.peel, %.preheader210.split.us.us, %bb.n, %bb.o, %bb.p, %.preheader210.us.us, %bb.r, %bb.s, %bb.t, %..preheader213_crit_edge.split.us
  %i.cy = phi <8 x double> [ %i.bx, %.preheader210.split.us.us ], [ %i.if, %..preheader213_crit_edge.split.us ], [ %i.bx, %.preheader210.us.us ], [ %i.bx, %bb.t ], [ %i.bx, %bb.s ], [ %i.bx, %bb.r ], [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ], [ %i.bx, %.preheader210.split.us237.peel ], [ %i.bx, %.preheader210.split.us237 ] ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 8 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next289 to i32
  %i.cz = icmp ugt i32 %i.ao, %indvars
  br i1 %i.cz, label %.preheader212.us.preheader, label %._crit_edge227, !llvm.loop !109

.preheader210.us234:                              ; preds = %.preheader212.us, %.split.us233
  %i.da = phi i32 [ %i.eo, %.split.us233 ], [ %i.el, %.preheader212.us ]
  %i.db = phi i32 [ %i.ep, %.split.us233 ], [ 1, %.preheader212.us ]
  %.0151216.us235 = phi i32 [ %i.eq, %.split.us233 ], [ %indvars296, %.preheader212.us ] ; 6 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.preheader210.split.us.us, label %.preheader210.split.us237.peel

.preheader210.split.us237.peel:                   ; preds = %.preheader210.us234
  %i.dd = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.0150219.us, i32 noundef %.0151216.us235) ; 4 uses
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.df = load i16, ptr %i.ar, align 4, !tbaa !134
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = lshr i32 %.0150219.us, %i.dg
  %i.di = load i16, ptr %i.as, align 2, !tbaa !135
  %i.dj = zext i16 %i.di to i32
  %i.dk = mul nuw i32 %i.dh, %i.dj
  %i.dl = lshr i32 %.0151216.us235, %i.dg
  %i.dm = add nuw i32 %i.dk, %i.dl
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dn
  %i.dp = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.0150219.us, i32 noundef %.0151216.us235)
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.dq
  %.0146.in.us229.peel = load i16, ptr %i.dr, align 2, !tbaa !93
  %.0146.us230.peel = zext i16 %.0146.in.us229.peel to i32 ; 2 uses
  %i.ds = load i32, ptr %i.at, align 8, !tbaa !94
  %i.dt = add nsw i32 %i.ds, -25
  %i.du = icmp slt i32 %i.dt, %.0146.us230.peel
  br i1 %i.du, label %.loopexit214.us, label %bb.m

bb.m:                                             ; preds = %.preheader210.split.us237.peel
  %i.dv = zext i32 %i.dd to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !81
  %i.dy = sub i32 %.0146.us230.peel, %i.dx
  %spec.store.select.us231.peel = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !81
  %i.eb = add i32 %spec.store.select.us231.peel, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !81
  %i.ec = add nuw i32 %i.dd, 4
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !81
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !81
  %i.eh = load i32, ptr %i.aq, align 8, !tbaa !91 ; 3 uses
  %.not190.us232.peel = icmp eq i32 %i.eh, 0
  %i.ei = icmp ult i32 %i.dd, 3
  %or.cond268.peel = select i1 %.not190.us232.peel, i1 %i.ei, i1 false
  br i1 %or.cond268.peel, label %.preheader210.split.us237.preheader.peel.newph, label %.split.us233

.preheader210.split.us237.preheader.peel.newph:   ; preds = %bb.m
  %i.ej = load i32, ptr %i.at, align 8, !tbaa !94
  %i.ek = add nsw i32 %i.ej, -25
  br label %.preheader210.split.us237

.preheader212.us:                                 ; preds = %.preheader212.us.preheader, %._crit_edge.us
  %i.el = phi i32 [ %i.gg, %._crit_edge.us ], [ %.pre, %.preheader212.us.preheader ] ; 4 uses
  %i.em = phi i32 [ %i.gh, %._crit_edge.us ], [ %.pre, %.preheader212.us.preheader ]
  %.0150219.us = phi i32 [ %i.gi, %._crit_edge.us ], [ %.0156247, %.preheader212.us.preheader ] ; 7 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.preheader210.lr.ph.split.us.us, label %.preheader210.us234

.split.us233:                                     ; preds = %bb.m, %bb.l, %.split.us233.loopexit
  %i.eo = phi i32 [ %i.da, %.split.us233.loopexit ], [ %i.eh, %bb.m ], [ %i.cw, %bb.l ] ; 2 uses
  %i.ep = phi i32 [ 0, %.split.us233.loopexit ], [ %i.eh, %bb.m ], [ %i.cw, %bb.l ] ; 2 uses
  %i.eq = add nuw nsw i32 %.0151216.us235, 1      ; 2 uses
  %i.er = icmp ult i32 %i.eq, %invariant.umin.us
  br i1 %i.er, label %.preheader210.us234, label %._crit_edge.us, !llvm.loop !110

.preheader210.split.us.us:                        ; preds = %.preheader210.us234
  %i.es = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.et = load i16, ptr %i.al, align 2, !tbaa !90
  %i.eu = zext i16 %i.et to i32
  %i.ev = mul nuw i32 %.0150219.us, %i.eu
  %i.ew = add nuw i32 %i.ev, %.0151216.us235
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ex ; 4 uses
  %i.ez = load i32, ptr %i.at, align 8, !tbaa !94
  %i.fa = add nsw i32 %i.ez, -25                  ; 4 uses
  %.0146.in.us.us239 = load i16, ptr %i.ey, align 2, !tbaa !93
  %.0146.us.us240 = zext i16 %.0146.in.us.us239 to i32 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %.0146.us.us240
  br i1 %i.fb, label %.loopexit214.us, label %bb.n

bb.n:                                             ; preds = %.preheader210.split.us.us
  %i.fc = load i32, ptr %i.au, align 8, !tbaa !81
  %i.fd = sub i32 %.0146.us.us240, %i.fc
  %spec.store.select.us.us241 = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.fe = load i32, ptr %i.a, align 16, !tbaa !81
  %i.ff = add i32 %spec.store.select.us.us241, %i.fe
  store i32 %i.ff, ptr %i.a, align 16, !tbaa !81
  %i.fg = load i32, ptr %i.aw, align 16, !tbaa !81
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.aw, align 16, !tbaa !81
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %.0146.in.us.us239.1 = load i16, ptr %i.fi, align 2, !tbaa !93
  %.0146.us.us240.1 = zext i16 %.0146.in.us.us239.1 to i32 ; 2 uses
  %i.fj = icmp slt i32 %i.fa, %.0146.us.us240.1
  br i1 %i.fj, label %.loopexit214.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fk = load i32, ptr %i.ax, align 4, !tbaa !81
  %i.fl = sub i32 %.0146.us.us240.1, %i.fk
  %spec.store.select.us.us241.1 = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %i.fm = load i32, ptr %i.ay, align 4, !tbaa !81
  %i.fn = add i32 %spec.store.select.us.us241.1, %i.fm
  store i32 %i.fn, ptr %i.ay, align 4, !tbaa !81
  %i.fo = load i32, ptr %i.az, align 4, !tbaa !81
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.az, align 4, !tbaa !81
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %.0146.in.us.us239.2 = load i16, ptr %i.fq, align 2, !tbaa !93
  %.0146.us.us240.2 = zext i16 %.0146.in.us.us239.2 to i32 ; 2 uses
  %i.fr = icmp slt i32 %i.fa, %.0146.us.us240.2
  br i1 %i.fr, label %.loopexit214.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fs = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.ft = sub i32 %.0146.us.us240.2, %i.fs
  %spec.store.select.us.us241.2 = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %i.fu = load i32, ptr %i.bb, align 8, !tbaa !81
  %i.fv = add i32 %spec.store.select.us.us241.2, %i.fu
  store i32 %i.fv, ptr %i.bb, align 8, !tbaa !81
  %i.fw = load i32, ptr %i.bc, align 8, !tbaa !81
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.bc, align 8, !tbaa !81
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %.0146.in.us.us239.3 = load i16, ptr %i.fy, align 2, !tbaa !93
  %.0146.us.us240.3 = zext i16 %.0146.in.us.us239.3 to i32 ; 2 uses
  %i.fz = icmp slt i32 %i.fa, %.0146.us.us240.3
  br i1 %i.fz, label %.loopexit214.us, label %.split.us233.loopexit

.split.us233.loopexit:                            ; preds = %bb.p
  %i.ga = load i32, ptr %i.bd, align 4, !tbaa !81
  %i.gb = sub i32 %.0146.us.us240.3, %i.ga
  %spec.store.select.us.us241.3 = tail call i32 @llvm.smax.i32(i32 %i.gb, i32 0)
  %i.gc = load i32, ptr %i.be, align 4, !tbaa !81
  %i.gd = add i32 %spec.store.select.us.us241.3, %i.gc
  store i32 %i.gd, ptr %i.be, align 4, !tbaa !81
  %i.ge = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.bf, align 4, !tbaa !81
  br label %.split.us233

._crit_edge.us:                                   ; preds = %.split.us233, %.split.us.us.us
  %i.gg = phi i32 [ %i.el, %.split.us.us.us ], [ %i.eo, %.split.us233 ]
  %i.gh = phi i32 [ %i.el, %.split.us.us.us ], [ %i.ep, %.split.us233 ]
  %i.gi = add nuw nsw i32 %.0150219.us, 1         ; 2 uses
  %i.gj = icmp ult i32 %i.gi, %invariant.umin218
  br i1 %i.gj, label %.preheader212.us, label %..preheader213_crit_edge.split.us, !llvm.loop !111

.preheader210.lr.ph.split.us.us:                  ; preds = %.preheader212.us
  %i.gk = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.gl = load i16, ptr %i.al, align 2, !tbaa !90
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw i32 %.0150219.us, %i.gm
  %i.go = load i32, ptr %i.at, align 8, !tbaa !94
  %i.gp = add nsw i32 %i.go, -25                  ; 4 uses
  %i.gq = zext i32 %i.gn to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gq
  %.not190.us.us.us = icmp eq i32 %i.el, 0
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted521.a = load i32, ptr %i.bg, align 16
  %.promoted522.a = load i32, ptr %i.bi, align 4
  %.promoted523.a = load i32, ptr %i.bj, align 4
  %.promoted524.a = load i32, ptr %i.bl, align 8
  %.promoted525.a = load i32, ptr %i.bm, align 8
  %.promoted526.a = load i32, ptr %i.bo, align 4
  %.promoted527 = load i32, ptr %i.bp, align 4
  br label %.preheader210.us.us

.preheader210.us.us:                              ; preds = %.split.us.us.us, %.preheader210.lr.ph.split.us.us
  %i.gr = phi i32 [ %i.hw, %.split.us.us.us ], [ %.promoted527, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gs = phi i32 [ %i.hx, %.split.us.us.us ], [ %.promoted526.a, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gt = phi i32 [ %i.hy, %.split.us.us.us ], [ %.promoted525.a, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gu = phi i32 [ %i.hz, %.split.us.us.us ], [ %.promoted524.a, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gv = phi i32 [ %i.ia, %.split.us.us.us ], [ %.promoted523.a, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gw = phi i32 [ %i.ib, %.split.us.us.us ], [ %.promoted522.a, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %i.gx = phi i32 [ %i.hd, %.split.us.us.us ], [ %.promoted521.a, %.preheader210.lr.ph.split.us.us ]
  %i.gy = phi i32 [ %i.hc, %.split.us.us.us ], [ %.promoted, %.preheader210.lr.ph.split.us.us ]
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.split.us.us.us ], [ %indvars.iv288, %.preheader210.lr.ph.split.us.us ] ; 2 uses
  %gep476 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv290 ; 4 uses
  %.0146.in.us.us.us = load i16, ptr %gep476, align 2, !tbaa !93
  %.0146.us.us.us = zext i16 %.0146.in.us.us.us to i32 ; 2 uses
  %i.gz = icmp slt i32 %i.gp, %.0146.us.us.us
  br i1 %i.gz, label %.loopexit214.us, label %bb.q

bb.q:                                             ; preds = %.preheader210.us.us
  %i.ha = load i32, ptr %i.au, align 8, !tbaa !81
  %i.hb = sub i32 %.0146.us.us.us, %i.ha
  %spec.store.select.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hc = add i32 %spec.store.select.us.us.us, %i.gy ; 2 uses
  store i32 %i.hc, ptr %i.a, align 16, !tbaa !81
  %i.hd = add i32 %i.gx, 1                        ; 2 uses
  store i32 %i.hd, ptr %i.bg, align 16, !tbaa !81
  br i1 %.not190.us.us.us, label %bb.r, label %.split.us.us.us

bb.r:                                             ; preds = %bb.q
  %i.he = getelementptr inbounds nuw i8, ptr %gep476, i64 2
  %.0146.in.us.us.us.1 = load i16, ptr %i.he, align 2, !tbaa !93
  %.0146.us.us.us.1 = zext i16 %.0146.in.us.us.us.1 to i32 ; 2 uses
  %i.hf = icmp slt i32 %i.gp, %.0146.us.us.us.1
  br i1 %i.hf, label %.loopexit214.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hg = load i32, ptr %i.bh, align 4, !tbaa !81
  %i.hh = sub i32 %.0146.us.us.us.1, %i.hg
  %spec.store.select.us.us.us.1 = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 0)
  %i.hi = add i32 %spec.store.select.us.us.us.1, %i.gw ; 2 uses
  store i32 %i.hi, ptr %i.bi, align 4, !tbaa !81
  %i.hj = add i32 %i.gv, 1                        ; 2 uses
  store i32 %i.hj, ptr %i.bj, align 4, !tbaa !81
  %i.hk = getelementptr inbounds nuw i8, ptr %gep476, i64 4
  %.0146.in.us.us.us.2 = load i16, ptr %i.hk, align 2, !tbaa !93
  %.0146.us.us.us.2 = zext i16 %.0146.in.us.us.us.2 to i32 ; 2 uses
  %i.hl = icmp slt i32 %i.gp, %.0146.us.us.us.2
  br i1 %i.hl, label %.loopexit214.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hm = load i32, ptr %i.bk, align 8, !tbaa !81
  %i.hn = sub i32 %.0146.us.us.us.2, %i.hm
  %spec.store.select.us.us.us.2 = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.ho = add i32 %spec.store.select.us.us.us.2, %i.gu ; 2 uses
  store i32 %i.ho, ptr %i.bl, align 8, !tbaa !81
  %i.hp = add i32 %i.gt, 1                        ; 2 uses
  store i32 %i.hp, ptr %i.bm, align 8, !tbaa !81
  %i.hq = getelementptr inbounds nuw i8, ptr %gep476, i64 6
  %.0146.in.us.us.us.3 = load i16, ptr %i.hq, align 2, !tbaa !93
  %.0146.us.us.us.3 = zext i16 %.0146.in.us.us.us.3 to i32 ; 2 uses
  %i.hr = icmp slt i32 %i.gp, %.0146.us.us.us.3
  br i1 %i.hr, label %.loopexit214.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = load i32, ptr %i.bn, align 4, !tbaa !81
  %i.ht = sub i32 %.0146.us.us.us.3, %i.hs
  %spec.store.select.us.us.us.3 = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hu = add i32 %spec.store.select.us.us.us.3, %i.gs ; 2 uses
  store i32 %i.hu, ptr %i.bo, align 4, !tbaa !81
  %i.hv = add i32 %i.gr, 1                        ; 2 uses
  store i32 %i.hv, ptr %i.bp, align 4, !tbaa !81
  br label %.split.us.us.us

.split.us.us.us:                                  ; preds = %bb.u, %bb.q
  %i.hw = phi i32 [ %i.hv, %bb.u ], [ %i.gr, %bb.q ]
  %i.hx = phi i32 [ %i.hu, %bb.u ], [ %i.gs, %bb.q ]
  %i.hy = phi i32 [ %i.hp, %bb.u ], [ %i.gt, %bb.q ]
  %i.hz = phi i32 [ %i.ho, %bb.u ], [ %i.gu, %bb.q ]
end_hunk_0
