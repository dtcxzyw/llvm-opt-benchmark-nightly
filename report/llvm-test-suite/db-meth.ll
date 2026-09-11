Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/db-meth?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Exp_ = type { i32, i32, i32, i32, ptr }

@currpc = external local_unnamed_addr global i32, align 4
@bufflength = external local_unnamed_addr global i32, align 4
@inbuff = external local_unnamed_addr global ptr, align 8
@stkptr = external local_unnamed_addr global ptr, align 8
@std_exps = external global [0 x %struct.Exp_], align 8
@ch = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [61 x i8] c"Error in interface method invocation - nargs doesn't match.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@donestkptr = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z10invokefuncP9Classfile(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 5 uses
  %i.b = load i32, ptr @currpc, align 4, !tbaa !7 ; 2 uses
  %i.c = add i32 %i.b, -1                         ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = add i32 %i.b, 2
  store i32 %i.d, ptr @currpc, align 4, !tbaa !7
  %i.e = load i32, ptr @bufflength, align 4, !tbaa !7
  %i.f = add nsw i32 %i.e, -2
  store i32 %i.f, ptr @bufflength, align 4, !tbaa !7
  %i.g = load ptr, ptr @inbuff, align 8, !tbaa !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr @inbuff, align 8, !tbaa !13
  %i.i = load i8, ptr %i.g, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 6 uses
  %.idx = shl nuw nsw i64 %i.j, 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = load i16, ptr %i.s, align 2, !tbaa !21
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !23
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 4 uses
  %i.an = load i16, ptr %i.y, align 2, !tbaa !24
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 3 uses
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #9
  %i.at = add i64 %i.as, -2                       ; 2 uses
  %i.au = icmp ugt i64 %i.at, 2305843009213693951
  %i.av = shl i64 %i.at, 3
  %i.aw = select i1 %i.au, i64 -1, i64 %i.av
  %i.ax = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #10 ; 6 uses
  %i.ay = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 13 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc unwind label %bb.b     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.ar, ptr %i.az, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 0, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 1, ptr %i.bd, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %i.c, ptr %i.be, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.c, ptr %i.bf, align 4, !tbaa !37
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2EjPc4Type3Loci.exit unwind label %bb.b ; 3 uses

_ZN3ExpC2EjPc4Type3Loci.exit:                     ; preds = %.noexc
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.bg, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !42
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %.not205 = icmp eq i8 %i.bj, 41
  br i1 %.not205, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN3ExpC2EjPc4Type3Loci.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bl = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.bk)
  br label %bb.h

.lr.ph:                                           ; preds = %_ZN3ExpC2EjPc4Type3Loci.exit, %.loopexit
  %1 = phi ptr [ %i.bw, %.loopexit ], [ %i.bi, %_ZN3ExpC2EjPc4Type3Loci.exit ] ; 3 uses
  %.0126207 = phi i32 [ %2, %.loopexit ], [ 0, %_ZN3ExpC2EjPc4Type3Loci.exit ] ; 2 uses
  %.0137206 = phi ptr [ %.3140, %.loopexit ], [ %i.am, %_ZN3ExpC2EjPc4Type3Loci.exit ]
  %i.bm = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %1)
  %2 = add i32 %.0126207, 1                       ; 4 uses
  %3 = zext i32 %.0126207 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !44
  %i.bo = load i8, ptr %1, align 1, !tbaa !14
  %i.bp = icmp eq i8 %i.bo, 91
  %i.bq = getelementptr inbounds nuw i8, ptr %.0137206, i64 2
  %spec.select = select i1 %i.bp, ptr %i.bq, ptr %1 ; 3 uses
  %i.br = load i8, ptr %spec.select, align 1, !tbaa !14
  %i.bs = icmp eq i8 %i.br, 76
  br i1 %i.bs, label %.preheader, label %.loopexit

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.2139 = phi ptr [ %i.bu, %.preheader ], [ %spec.select, %.lr.ph ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.2139, i64 1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %.not172 = icmp eq i8 %i.bv, 59
  br i1 %.not172, label %.loopexit, label %.preheader, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader, %.lr.ph
  %.3140 = phi ptr [ %spec.select, %.lr.ph ], [ %i.bu, %.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3140, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %.not = icmp eq i8 %i.bx, 41
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %.3140, i64 2
  %i.bz = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %i.by) ; 2 uses
  %.not152209 = icmp eq i32 %2, 0
  br i1 %.not152209, label %bb.h, label %.lr.ph213

.lr.ph213:                                        ; preds = %._crit_edge
  %stkptr.promoted = load ptr, ptr @stkptr, align 8, !tbaa !48
  %4 = sext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph213, %bb.g
  %indvars.iv.a = phi i64 [ %4, %.lr.ph213 ], [ %indvars.iv.next.a, %bb.g ]
  %i.ca = phi ptr [ %stkptr.promoted, %.lr.ph213 ], [ %i.cb, %bb.g ]
  %.0125211 = phi ptr [ %i.ax, %.lr.ph213 ], [ %i.cn, %bb.g ] ; 2 uses
  %.0142210 = phi i32 [ %i.c, %.lr.ph213 ], [ %.0142., %bb.g ]
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !43 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !50
  %i.cg = icmp eq i32 %i.cf, 4
  br i1 %i.cg, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next.a
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !44
  %i.cj = icmp eq i32 %i.ci, 10
  br i1 %i.cj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ck = icmp eq ptr %i.cd, getelementptr inbounds nuw (i8, ptr @std_exps, i64 48)
  %i.cl = icmp eq ptr %i.cd, getelementptr inbounds nuw (i8, ptr @std_exps, i64 72)
  %or.cond173 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond173, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 312
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %.0125211, i64 8
  store ptr %i.cc, ptr %.0125211, align 8, !tbaa !49
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !36
  %.0142. = tail call i32 @llvm.umin.i32(i32 %.0142210, i32 %i.cq) ; 2 uses
  %.not152 = icmp eq i64 %indvars.iv.next.a, 0
  br i1 %.not152, label %._crit_edge214, label %bb.c, !llvm.loop !10

._crit_edge214:                                   ; preds = %bb.g
  store ptr %i.cb, ptr @stkptr, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge214, %._crit_edge
  %5 = phi i32 [ %i.bz, %._crit_edge214 ], [ %i.bz, %._crit_edge ], [ %i.bl, %._crit_edge.thread ] ; 11 uses
  %.0126.lcssa223 = phi i32 [ %2, %._crit_edge214 ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 6 uses
  %.0142.lcssa = phi i32 [ %.0142., %._crit_edge214 ], [ %i.c, %._crit_edge ], [ %i.c, %._crit_edge.thread ] ; 8 uses
  %i.cr = load i32, ptr @ch, align 4, !tbaa !7
  switch i32 %i.cr, label %bb.k [
    i32 185, label %bb.i
    i32 184, label %bb.at
  ]

bb.i:                                             ; preds = %bb.h
  %i.cs = load i32, ptr @currpc, align 4, !tbaa !7 ; 2 uses
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @currpc, align 4, !tbaa !7
  %i.cu = load i32, ptr @bufflength, align 4, !tbaa !7 ; 2 uses
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr @bufflength, align 4, !tbaa !7
  %i.cw = load ptr, ptr @inbuff, align 8, !tbaa !13 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr @inbuff, align 8, !tbaa !13
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nsw i32 %i.cz, -1
  %.not153 = icmp eq i32 %.0126.lcssa223, %i.da
  br i1 %.not153, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 60, i64 1, ptr %i.db) #11 ; 0 uses
  br label %bb.bf

.thread:                                          ; preds = %bb.i
  %i.dc = add i32 %i.cs, 2
  store i32 %i.dc, ptr @currpc, align 4, !tbaa !7
  %i.dd = add nsw i32 %i.cu, -2
  store i32 %i.dd, ptr @bufflength, align 4, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store ptr %i.de, ptr @inbuff, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread
  %i.df = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !49 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !53
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %bb.aj

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.dp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(5) @.str.1) #9
  %.not159 = icmp eq i32 %i.dp, 0
  br i1 %.not159, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60
  %i.ds = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.dr) #9
  %.not160 = icmp eq i32 %i.ds, 0
  %i.dt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.2) #9
  %.not161 = icmp eq i32 %i.dt, 0                 ; 2 uses
  br i1 %.not160, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not161, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.du = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42
  store ptr @.str.3, ptr %i.dw, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !36
  %.0142.174 = tail call i32 @llvm.umin.i32(i32 %.0142.lcssa, i32 %i.dy)
  %i.dz = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 1, ptr %i.ea, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %i.c, ptr %i.eb, align 4, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i32 %.0142.174, ptr %i.ec, align 8, !tbaa !36
  %i.ed = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ed, align 8, !tbaa !61
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 6, ptr %i.ee, align 4, !tbaa !53
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %5, ptr %i.ef, align 8, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 39, ptr %i.eg, align 4, !tbaa !62
  store ptr %i.ed, ptr %i.dz, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store ptr %i.ay, ptr %i.eh, align 8, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store i32 %.0126.lcssa223, ptr %i.ei, align 8, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  store ptr %i.ax, ptr %i.ej, align 8, !tbaa !14
  %i.ek = icmp eq i32 %5, 0
  %i.el = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  br i1 %i.ek, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.em, ptr @stkptr, align 8, !tbaa !48
  %i.en = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.eo, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.dz, ptr %i.en, align 8, !tbaa !49
  br label %bb.bf

bb.r:                                             ; preds = %bb.o
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.s:                                             ; preds = %bb.p
  store ptr %i.dz, ptr %i.em, align 8, !tbaa !49
  br label %bb.bf

bb.t:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !36
  %.0142.175 = tail call i32 @llvm.umin.i32(i32 %.0142.lcssa, i32 %i.er) ; 2 uses
  %i.es = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 6 uses
  %i.et = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc181 unwind label %bb.y  ; 5 uses

.noexc181:                                        ; preds = %bb.t
  store ptr @.str.3, ptr %i.et, align 8, !tbaa !28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 0, ptr %i.eu, align 8, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 0, ptr %i.ev, align 4, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i32 0, ptr %i.ew, align 8, !tbaa !31
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 1, ptr %i.ex, align 8, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i32 %i.c, ptr %i.ey, align 8, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 %i.c, ptr %i.ez, align 4, !tbaa !37
  %i.fa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.u unwind label %bb.y       ; 3 uses

bb.u:                                             ; preds = %.noexc181
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.fa, align 8, !tbaa !14
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %i.et, ptr %i.fb, align 8, !tbaa !42
  store ptr %i.fa, ptr %i.es, align 8, !tbaa !43
  %i.fc = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 1, ptr %i.fd, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 %i.c, ptr %i.fe, align 4, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 %.0142.175, ptr %i.ff, align 8, !tbaa !36
  %i.fg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.v unwind label %bb.z       ; 2 uses

bb.v:                                             ; preds = %bb.u
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.fg, align 8, !tbaa !14
  store ptr %i.fg, ptr %i.fc, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store ptr %i.es, ptr %i.fh, align 8, !tbaa !63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store ptr %i.ay, ptr %i.fi, align 8, !tbaa !64
  %i.fj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 1, ptr %i.fk, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 %i.c, ptr %i.fl, align 4, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i32 %.0142.175, ptr %i.fm, align 8, !tbaa !36
  %i.fn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.w unwind label %bb.aa      ; 5 uses

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.fn, align 8, !tbaa !61
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 6, ptr %i.fo, align 4, !tbaa !53
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i32 %5, ptr %i.fp, align 8, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i32 39, ptr %i.fq, align 4, !tbaa !62
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %i.fc, ptr %i.fr, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  store i32 %.0126.lcssa223, ptr %i.fs, align 8, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  store ptr %i.ax, ptr %i.ft, align 8, !tbaa !14
  %i.fu = icmp eq i32 %5, 0
  %i.fv = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  br i1 %i.fu, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  store ptr %i.fw, ptr @stkptr, align 8, !tbaa !48
  %i.fx = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fy, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.fj, ptr %i.fx, align 8, !tbaa !49
  br label %bb.bf

bb.y:                                             ; preds = %.noexc181, %bb.t
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.z:                                             ; preds = %bb.u
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.aa:                                            ; preds = %bb.v
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ab:                                            ; preds = %bb.w
  store ptr %i.fj, ptr %i.fw, align 8, !tbaa !49
  br label %bb.bf

bb.ac:                                            ; preds = %bb.m
  br i1 %.not161, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !36
  %.0142.176 = tail call i32 @llvm.umin.i32(i32 %.0142.lcssa, i32 %i.gd)
  %i.ge = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !42
  store ptr @.str.1, ptr %i.gg, align 8, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1143 = phi i32 [ %.0142.lcssa, %bb.ac ], [ %.0142.176, %bb.ad ]
  %i.gh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 10 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 1, ptr %i.gi, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 %i.c, ptr %i.gj, align 4, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i32 %.1143, ptr %i.gk, align 8, !tbaa !36
  %i.gl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.af unwind label %bb.ah     ; 5 uses

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.gl, align 8, !tbaa !61
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 6, ptr %i.gm, align 4, !tbaa !53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 %5, ptr %i.gn, align 8, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 39, ptr %i.go, align 4, !tbaa !62
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !43
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store ptr %i.ay, ptr %i.gp, align 8, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i32 %.0126.lcssa223, ptr %i.gq, align 8, !tbaa !14
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  store ptr %i.ax, ptr %i.gr, align 8, !tbaa !14
  %i.gs = icmp eq i32 %5, 0
  %i.gt = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8 ; 2 uses
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gu, ptr @stkptr, align 8, !tbaa !48
  %i.gv = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gw, ptr @donestkptr, align 8, !tbaa !48
  store ptr %i.gh, ptr %i.gv, align 8, !tbaa !49
  br label %bb.bf

bb.ah:                                            ; preds = %bb.ae
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ai:                                            ; preds = %bb.af
  store ptr %i.gh, ptr %i.gu, align 8, !tbaa !49
  br label %bb.bf

bb.aj:                                            ; preds = %bb.l, %bb.k
  %i.gy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.2) #9
  %.not166 = icmp eq i32 %i.gy, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !36
  %.0142.177 = tail call i32 @llvm.umin.i32(i32 %.0142.lcssa, i32 %i.ha) ; 2 uses
  %i.hb = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 11 uses
  %i.hc = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !49 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 1, ptr %i.hf, align 8, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 %i.c, ptr %i.hg, align 4, !tbaa !37
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i32 %.0142.177, ptr %i.hh, align 8, !tbaa !36
  br i1 %.not166, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 unwind label %bb.al ; 2 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190:     ; preds = %bb.ak
  store <4 x i32> <i32 0, i32 6, i32 8, i32 39>, ptr %i.hi, align 8, !tbaa !14
  store ptr %i.hi, ptr %i.hb, align 8, !tbaa !43
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.am:                                            ; preds = %bb.aj
  %i.hk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.an unwind label %bb.ao     ; 2 uses

bb.an:                                            ; preds = %bb.am
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.hk, align 8, !tbaa !14
  store ptr %i.hk, ptr %i.hb, align 8, !tbaa !43
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.he, ptr %i.hl, align 8, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.ay, ptr %i.hm, align 8, !tbaa !64
  %i.hn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 1, ptr %i.ho, align 8, !tbaa !35
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 %i.c, ptr %i.hp, align 4, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i32 %.0142.177, ptr %i.hq, align 8, !tbaa !36
  %i.hr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 unwind label %bb.ap ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194:     ; preds = %bb.an
  store i32 0, ptr %i.hr, align 8, !tbaa !61
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 6, ptr %i.hs, align 4, !tbaa !53
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %5, ptr %i.ht, align 8, !tbaa !50
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 39, ptr %i.hu, align 4, !tbaa !62
  store ptr %i.hr, ptr %i.hn, align 8, !tbaa !43
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ap:                                            ; preds = %bb.an
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.aq:                                            ; preds = %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190
  %.sink229 = phi ptr [ %i.hn, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 ], [ %i.hb, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 ] ; 5 uses
  %.sink = phi ptr [ %i.hb, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit194 ], [ %i.he, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit190 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sink229, i64 24
  store ptr %.sink, ptr %i.hx, align 8, !tbaa !63
  %i.hy = getelementptr inbounds nuw i8, ptr %.sink229, i64 48
  store i32 %.0126.lcssa223, ptr %i.hy, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw i8, ptr %.sink229, i64 56
  store ptr %i.ax, ptr %i.hz, align 8, !tbaa !14
  %i.ia = load ptr, ptr %.sink, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !62
  %i.id = icmp ne i32 %i.ic, 18
  %i.ie = icmp eq i32 %5, 0
  %or.cond = and i1 %i.ie, %i.id
  %i.if = load ptr, ptr @stkptr, align 8, !tbaa !48
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -8 ; 2 uses
  br i1 %or.cond, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ig, ptr @stkptr, align 8, !tbaa !48
  %i.ih = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.ii, ptr @donestkptr, align 8, !tbaa !48
  store ptr %.sink229, ptr %i.ih, align 8, !tbaa !49
  br label %bb.bf

bb.as:                                            ; preds = %bb.aq
  store ptr %.sink229, ptr %i.ig, align 8, !tbaa !49
  br label %bb.bf

bb.at:                                            ; preds = %bb.h
  %i.ij = load i16, ptr %i.s, align 2, !tbaa !21
  %i.ik = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.il = zext i16 %i.ij to i64
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !14
  %i.ip = getelementptr inbounds [16 x i8], ptr %i.ik, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !14 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !60
  %i.iu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ir, ptr noundef nonnull dereferenceable(1) %i.it) #9
  %.not155 = icmp eq i32 %i.iu, 0
  %i.iv = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 12 uses
  br i1 %.not155, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc195 unwind label %bb.ax ; 5 uses

.noexc195:                                        ; preds = %bb.au
  store ptr %i.ir, ptr %i.iw, align 8, !tbaa !28
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i32 0, ptr %i.ix, align 8, !tbaa !29
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i32 0, ptr %i.iz, align 8, !tbaa !31
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i32 1, ptr %i.ja, align 8, !tbaa !35
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i32 %i.c, ptr %i.jb, align 8, !tbaa !36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 %i.c, ptr %i.jc, align 4, !tbaa !37
  %i.jd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.av unwind label %bb.ax     ; 3 uses

bb.av:                                            ; preds = %.noexc195
  store <4 x i32> <i32 0, i32 1, i32 0, i32 39>, ptr %i.jd, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %i.iw, ptr %i.je, align 8, !tbaa !42
  store ptr %i.jd, ptr %i.iv, align 8, !tbaa !43
  %i.jf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 8 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i32 1, ptr %i.jg, align 8, !tbaa !35
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store i32 %i.c, ptr %i.jh, align 4, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i32 %.0142.lcssa, ptr %i.ji, align 8, !tbaa !36
  %i.jj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.aw unwind label %bb.ay     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %i.jj, align 8, !tbaa !14
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store ptr %i.iv, ptr %i.jk, align 8, !tbaa !63
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store ptr %i.ay, ptr %i.jl, align 8, !tbaa !64
  %i.jm = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 1, ptr %i.jn, align 8, !tbaa !35
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 %i.c, ptr %i.jo, align 4, !tbaa !37
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i32 %.0142.lcssa, ptr %i.jp, align 8, !tbaa !36
  %i.jq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 unwind label %bb.az ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201:     ; preds = %bb.aw
  store i32 0, ptr %i.jq, align 8, !tbaa !61
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store i32 6, ptr %i.jr, align 4, !tbaa !53
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 %5, ptr %i.js, align 8, !tbaa !50
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 39, ptr %i.jt, align 4, !tbaa !62
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !43
  br label %bb.bc

bb.ax:                                            ; preds = %.noexc195, %bb.au
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %bb.av
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.az:                                            ; preds = %bb.aw
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ba:                                            ; preds = %bb.at
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i32 1, ptr %i.jx, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 %i.c, ptr %i.jy, align 4, !tbaa !37
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i32 %.0142.lcssa, ptr %i.jz, align 8, !tbaa !36
  %i.ka = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 unwind label %bb.bb ; 5 uses

_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203:     ; preds = %bb.ba
  store i32 0, ptr %i.ka, align 8, !tbaa !61
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 6, ptr %i.kb, align 4, !tbaa !53
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %5, ptr %i.kc, align 8, !tbaa !50
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 39, ptr %i.kd, align 4, !tbaa !62
  store ptr %i.ka, ptr %i.iv, align 8, !tbaa !43
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bc:                                            ; preds = %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201
  %.sink236.a = phi ptr [ %i.iv, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 ], [ %i.jm, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 ] ; 5 uses
  %.sink234 = phi ptr [ %i.ay, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit203 ], [ %i.jf, %_ZN3ExpC2Ejj7Exptype4Type2OpPS_jPS3_.exit201 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sink236.a, i64 24
  store ptr %.sink234, ptr %i.kf, align 8, !tbaa !63
  %i.kg = getelementptr inbounds nuw i8, ptr %.sink236.a, i64 48
  store i32 %.0126.lcssa223, ptr %i.kg, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw i8, ptr %.sink236.a, i64 56
  store ptr %i.ax, ptr %i.kh, align 8, !tbaa !14
  %i.ki = icmp eq i32 %5, 0
  br i1 %i.ki, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kj = load ptr, ptr @donestkptr, align 8, !tbaa !48 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.kk, ptr @donestkptr, align 8, !tbaa !48
  store ptr %.sink236.a, ptr %i.kj, align 8, !tbaa !49
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kl = load ptr, ptr @stkptr, align 8, !tbaa !48 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.km, ptr @stkptr, align 8, !tbaa !48
  store ptr %.sink236.a, ptr %i.kl, align 8, !tbaa !49
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.ar, %bb.as, %bb.ag, %bb.ai, %bb.x, %bb.ab, %bb.q, %bb.s, %bb.j
  %.0144 = phi i32 [ 1, %bb.j ], [ 0, %bb.ag ], [ 0, %bb.q ], [ 0, %bb.ar ], [ 0, %bb.x ], [ 0, %bb.s ], [ 0, %bb.ab ], [ 0, %bb.ai ], [ 0, %bb.as ], [ 0, %bb.be ], [ 0, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0144

bb.bg:                                            ; preds = %bb.r, %bb.ah, %bb.z, %bb.aa, %bb.y, %bb.ao, %bb.ap, %bb.al, %bb.ax, %bb.az, %bb.ay, %bb.bb, %bb.b
  %.sink237 = phi ptr [ %i.dz, %bb.r ], [ %i.gh, %bb.ah ], [ %i.fc, %bb.z ], [ %i.fj, %bb.aa ], [ %i.es, %bb.y ], [ %i.hb, %bb.ao ], [ %i.hn, %bb.ap ], [ %i.hb, %bb.al ], [ %i.iv, %bb.ax ], [ %i.jm, %bb.az ], [ %i.jf, %bb.ay ], [ %i.iv, %bb.bb ], [ %i.ay, %bb.b ]
  %.pn167.pn.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.r ], [ %i.gx, %bb.ah ], [ %i.ga, %bb.z ], [ %i.gb, %bb.aa ], [ %i.fz, %bb.y ], [ %i.hv, %bb.ao ], [ %i.hw, %bb.ap ], [ %i.hj, %bb.al ], [ %i.ju, %bb.ax ], [ %i.jw, %bb.az ], [ %i.jv, %bb.ay ], [ %i.ke, %bb.bb ], [ %i.bt, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink237, i64 noundef 64) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %.pn167.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_Z8sig2typePc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { cold }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !45}
!9 = distinct !{!9, !45}
!10 = distinct !{!10, !45}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 _ZTS7cp_info", !11, i64 0}
!17 = !{!"_ZTS9ConstPool", !15, i64 0, !16, i64 8}
!18 = !{!17, !16, i64 8}
!19 = !{!"_ZTS3Ref", !15, i64 0, !15, i64 2}
!20 = !{!19, !15, i64 2}
!21 = !{!19, !15, i64 0}
!22 = !{!"_ZTS11NameAndType", !15, i64 0, !15, i64 2}
!23 = !{!22, !15, i64 2}
!24 = !{!22, !15, i64 0}
!25 = !{!"_ZTS4Type", !5, i64 0}
!26 = !{!"_ZTS3Loc", !5, i64 0}
!27 = !{!"_ZTS2Id", !12, i64 0, !25, i64 8, !26, i64 12, !6, i64 16, !5, i64 24}
!28 = !{!27, !12, i64 0}
!29 = !{!27, !25, i64 8}
!30 = !{!27, !26, i64 12}
!31 = !{!27, !6, i64 16}
!32 = !{!"p1 _ZTS4Exp_", !11, i64 0}
!33 = !{!"p1 _ZTS3Exp", !11, i64 0}
!34 = !{!"_ZTS3Exp", !32, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !33, i64 24, !33, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!35 = !{!34, !6, i64 8}
!36 = !{!34, !6, i64 16}
!37 = !{!34, !6, i64 12}
!38 = !{!"_ZTS7Exptype", !5, i64 0}
!39 = !{!"_ZTS2Op", !5, i64 0}
!40 = !{!"p1 _ZTS2Id", !11, i64 0}
!41 = !{!"_ZTS4Exp_", !6, i64 0, !38, i64 4, !25, i64 8, !39, i64 12, !40, i64 16}
!42 = !{!41, !40, i64 16}
!43 = !{!34, !32, i64 0}
!44 = !{!25, !25, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"any p2 pointer", !11, i64 0}
!47 = !{!"p2 _ZTS3Exp", !46, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!33, !33, i64 0}
!50 = !{!41, !25, i64 8}
!51 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!41, !38, i64 4}
!54 = !{!"_ZTS10CL_Options", !5, i64 0}
!55 = !{!"_ZTS12ClassVersion", !15, i64 0, !15, i64 2}
!56 = !{!"_ZTS11AccessFlags", !15, i64 0}
!57 = !{!"p1 short", !11, i64 0}
!58 = !{!"p2 omnipotent char", !46, i64 0}
!59 = !{!"_ZTS9Classfile", !51, i64 0, !51, i64 8, !6, i64 16, !6, i64 20, !54, i64 24, !55, i64 28, !17, i64 32, !56, i64 48, !15, i64 50, !12, i64 56, !12, i64 64, !15, i64 72, !12, i64 80, !15, i64 88, !57, i64 96, !15, i64 104, !46, i64 112, !15, i64 120, !46, i64 128, !12, i64 136, !15, i64 144, !58, i64 152, !12, i64 160}
!60 = !{!59, !12, i64 64}
!61 = !{!41, !6, i64 0}
!62 = !{!41, !39, i64 12}
!63 = !{!34, !33, i64 24}
!64 = !{!34, !33, i64 32}
end_hunk_0
