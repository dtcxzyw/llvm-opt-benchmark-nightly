Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv_string?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@H5T_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [47 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Tconv_string.c\00", align 1
@__func__.H5T__conv_s_s = private unnamed_addr constant [14 x i8] c"H5T__conv_s_s\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"not a datatype\00", align 1
@H5E_BADVALUE_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"bad precision\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad offset\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bad source character set\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bad destination character set\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"The library doesn't convert between strings of ASCII and UTF\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"bad character padding\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"memory allocation failed for string conversion\00", align 1
@H5E_DATATYPE_g = external local_unnamed_addr global i64, align 8
@H5E_UNSUPPORTED_g = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"source string padding method not supported\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"destination string padding method not supported\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"unknown conversion command\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T__conv_s_s(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef captures(address) %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5T_init_g, align 1, !tbaa !16, !range !17, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !17
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ap, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !tbaa !22
  switch i32 %i.g, label %bb.ao [
    i32 0, label %bb.c
    i32 2, label %.loopexit233
    i32 1, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %0, null
  %i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.k = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 58, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.1) #5 ; 0 uses
  br label %.loopexit233

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = shl i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37
  %.not186 = icmp eq i64 %i.q, %i.s
  br i1 %.not186, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36
  %i.x = shl i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37
  %.not187 = icmp eq i64 %i.x, %i.z
  br i1 %.not187, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.ab = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 61, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.2) #5 ; 0 uses
  br label %.loopexit233

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %.not188 = icmp eq i64 %i.ae, 0
  br i1 %.not188, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37
  %.not189 = icmp eq i64 %i.ag, 0
  br i1 %.not189, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.ai = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.aj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 63, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.loopexit233

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %switch = icmp ult i32 %i.al, 2
  br i1 %switch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.an = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ao = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 66, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.4) #5 ; 0 uses
  br label %.loopexit233

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !37 ; 2 uses
  %switch196 = icmp ult i32 %i.aq, 2
  br i1 %switch196, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.as = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 69, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.5) #5 ; 0 uses
  br label %.loopexit233

bb.o:                                             ; preds = %bb.m
  %9 = icmp eq i32 %i.al, 0
  %i.au = icmp eq i32 %i.aq, 0
  %10 = xor i1 %9, %i.au
  br i1 %10, label %.thread197, label %bb.p

.thread197:                                       ; preds = %bb.o
  %i.av = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.aw = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ax = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 75, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.6) #5 ; 0 uses
  br label %.loopexit233

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %or.cond194 = icmp ugt i32 %i.az, 2
  br i1 %or.cond194, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !37
  %or.cond195 = icmp ugt i32 %i.bb, 2
  br i1 %or.cond195, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bc = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.bd = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.be = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 78, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.7) #5 ; 0 uses
  br label %.loopexit233

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bf, align 4, !tbaa !38
  br label %.loopexit233

bb.t:                                             ; preds = %bb.b
  %i.bg = icmp eq ptr %0, null
  %i.bh = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.bg, %i.bh
  br i1 %or.cond3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !24
  %i.bj = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.bk = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 88, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.1) #5 ; 0 uses
  br label %.loopexit233

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36 ; 8 uses
  %i.bt = icmp eq i64 %i.bo, %i.bs
  %i.bu = icmp ne i64 %5, 0                       ; 2 uses
  %or.cond5 = or i1 %i.bu, %i.bt
  br i1 %or.cond5, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not = icmp ult i64 %i.bo, %i.bs
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = uitofp i64 %i.bs to double
  %i.bw = sub nuw i64 %i.bo, %i.bs
  %i.bx = uitofp i64 %i.bw to double
  %i.by = fdiv double %i.bv, %i.bx
  %i.bz = tail call double @llvm.ceil.f64(double %i.by)
  %i.ca = fptoui double %i.bz to i64
  br label %.thread198

bb.y:                                             ; preds = %bb.w
  %i.cb = uitofp i64 %i.bo to double
  %i.cc = sub nuw i64 %i.bs, %i.bo
  %i.cd = uitofp i64 %i.cc to double
  %i.ce = fdiv double %i.cb, %i.cd
  %i.cf = tail call double @llvm.ceil.f64(double %i.ce)
  %i.cg = fptoui double %i.cf to i64
  %i.ch = add i64 %4, -1                          ; 2 uses
  %i.ci = mul i64 %i.bo, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 %i.ci
  %i.ck = mul i64 %i.bs, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 %i.ck
  br label %.thread198

bb.z:                                             ; preds = %bb.v
  br i1 %i.bu, label %bb.aa, label %.thread198

.thread198:                                       ; preds = %bb.z, %bb.y, %bb.x
  %.0153210.ph = phi ptr [ %i.cl, %bb.y ], [ %7, %bb.x ], [ %7, %bb.z ]
  %.0156208.ph = phi ptr [ %i.cj, %bb.y ], [ %7, %bb.x ], [ %7, %bb.z ]
  %.0161206.ph = phi i64 [ %i.cg, %bb.y ], [ %i.ca, %bb.x ], [ 0, %bb.z ]
  %.0163204.ph = phi i64 [ -1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.z ] ; 2 uses
  %.ph212 = phi i1 [ false, %bb.y ], [ true, %bb.x ], [ true, %bb.z ]
  %i.cm = mul nsw i64 %.0163204.ph, %i.bo
  %i.cn = mul nsw i64 %.0163204.ph, %i.bs
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread198
  %i.co = phi i64 [ %i.cm, %.thread198 ], [ %5, %bb.z ]
  %i.cp = phi i1 [ %.ph212, %.thread198 ], [ true, %bb.z ]
  %.0161206223 = phi i64 [ %.0161206.ph, %.thread198 ], [ 0, %bb.z ] ; 2 uses
  %.0156208221 = phi ptr [ %.0156208.ph, %.thread198 ], [ %7, %bb.z ]
  %.0153210219 = phi ptr [ %.0153210.ph, %.thread198 ], [ %7, %bb.z ]
  %i.cq = phi i64 [ %i.cn, %.thread198 ], [ %5, %bb.z ]
  %i.cr = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bs) #6 ; 8 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ab, label %.preheader232

.preheader232:                                    ; preds = %bb.aa
  %.not264 = icmp eq i64 %4, 0
  br i1 %.not264, label %.loopexit233, label %.lr.ph263

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !24
  %i.cu = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !24
  %i.cv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_s_s, i32 noundef 132, i64 noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.8) #5 ; 0 uses
  br label %.loopexit233

.lr.ph263:                                        ; preds = %.preheader232, %bb.an
  %.1154262 = phi ptr [ %i.gq, %bb.an ], [ %.0153210219, %.preheader232 ] ; 4 uses
  %.1157260 = phi ptr [ %i.gp, %bb.an ], [ %.0156208221, %.preheader232 ] ; 6 uses
  %.0162259 = phi i64 [ %i.gr, %bb.an ], [ 0, %.preheader232 ] ; 3 uses
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph263
  %i.cw = icmp ult i64 %.0162259, %.0161206223
  %i.cx = select i1 %i.cw, ptr %i.cr, ptr %.1154262
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph263
  %i.cy = add i64 %.0162259, %.0161206223
  %.not181 = icmp ult i64 %i.cy, %4
  %i.cz = select i1 %.not181, ptr %.1154262, ptr %i.cr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0155 = phi ptr [ %i.cx, %bb.ac ], [ %i.cz, %bb.ad ] ; 10 uses
  %i.da = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 84
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  switch i32 %i.dc, label %bb.ak [
    i32 0, label %.preheader229
    i32 1, label %.preheader230.a
    i32 2, label %bb.ah
  ]

.preheader230.a:                                  ; preds = %bb.ae
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !36
  %.not265 = icmp eq i64 %i.df, 0
  br i1 %.not265, label %.critedge, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %.preheader230.a
  %i.dg = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !36
  %.not320 = icmp eq i64 %i.di, 0
  br i1 %.not320, label %.critedge, label %.lr.ph304

.preheader229:                                    ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !36
  %.not266 = icmp eq i64 %i.dl, 0
  br i1 %.not266, label %.critedge, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader229
  %i.dm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !36
  %.not321 = icmp eq i64 %i.do, 0
  br i1 %.not321, label %.critedge, label %.lr.ph312

.lr.ph246:                                        ; preds = %bb.af
  %i.dp = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !36
  %i.ds = icmp ult i64 %i.dx, %i.dr
  br i1 %i.ds, label %.lr.ph312, label %.critedge, !llvm.loop !8

.lr.ph312:                                        ; preds = %.lr.ph246.preheader, %.lr.ph246
  %.0159245311 = phi i64 [ %i.dx, %.lr.ph246 ], [ 0, %.lr.ph246.preheader ] ; 4 uses
  %i.dt = phi ptr [ %i.dy, %.lr.ph246 ], [ %i.dj, %.lr.ph246.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.1157260, i64 %.0159245311
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !37  ; 2 uses
  %.not185 = icmp eq i8 %i.dv, 0
  br i1 %.not185, label %.critedge, label %bb.af

bb.af:                                            ; preds = %.lr.ph312
  %i.dw = getelementptr inbounds nuw i8, ptr %.0155, i64 %.0159245311
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !37
  %i.dx = add nuw i64 %.0159245311, 1             ; 5 uses
  %i.dy = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eb = icmp ult i64 %i.dx, %i.ea
  br i1 %i.eb, label %.lr.ph246, label %..critedge.loopexit_crit_edge315, !llvm.loop !8

.lr.ph239:                                        ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !36
  %i.ef = icmp ult i64 %i.ek, %i.ee
  br i1 %i.ef, label %.lr.ph304, label %.critedge, !llvm.loop !9

.lr.ph304:                                        ; preds = %.lr.ph239.preheader, %.lr.ph239
  %.1160238303 = phi i64 [ %i.ek, %.lr.ph239 ], [ 0, %.lr.ph239.preheader ] ; 4 uses
  %i.eg = phi ptr [ %i.el, %.lr.ph239 ], [ %i.dd, %.lr.ph239.preheader ]
end_hunk_0
