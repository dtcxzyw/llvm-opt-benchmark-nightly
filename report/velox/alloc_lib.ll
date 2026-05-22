inline.NumInlined: 59
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.malloc_params = type { i64, i64, i64, i64, i64, i32 }
%struct.malloc_state = type { i32, i32, i64, i64, ptr, ptr, ptr, i64, i64, i64, [66 x ptr], [32 x ptr], i64, i64, i64, i32, i32, %struct.malloc_segment, ptr, i64 }
%struct.malloc_segment = type { ptr, i64, ptr, i32 }
%struct.boost_cont_malloc_stats_impl = type { i64, i64, i64 }

@mparams = internal global %struct.malloc_params zeroinitializer, align 8
@_gm_ = internal global %struct.malloc_state zeroinitializer, align 8
@s_allocated_memory = internal unnamed_addr global i64 0, align 8
@malloc_global_mutex = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define ptr @dlmalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not143 = icmp eq i32 %i.c, 0
  br i1 %.not143, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not144 = icmp eq i32 %i.d, 0
  br i1 %.not144, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = icmp ult i64 %0, 233
  br i1 %i.k, label %bb.g, label %bb.af

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %1 = icmp samesign ult i64 %0, 23
  %i.l = add nuw nsw i64 %0, 23
  %i.m = and i64 %i.l, 496
  %i.n = select i1 %1, i64 32, i64 %i.m           ; 8 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc nuw nsw i64 %i.o to i32            ; 4 uses
  %i.q = load i32, ptr @_gm_, align 8, !tbaa !19  ; 4 uses
  %i.r = lshr i32 %i.q, %i.p                      ; 4 uses
  %i.s = and i32 %i.r, 3
  %.not147 = icmp eq i32 %i.s, 0
  br i1 %.not147, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %i.r, 1
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = xor i32 %i.u, 1                          ; 3 uses
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 4 uses
  %i.ad = icmp eq ptr %i.y, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw i32 1, %i.v
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.q, %i.af
  store i32 %i.ag, ptr @_gm_, align 8, !tbaa !19
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not155 = icmp ult ptr %i.ac, %i.ah
  br i1 %.not155, label %.critedge, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ak, label %bb.l, label %.critedge, !prof !25

bb.l:                                             ; preds = %bb.k
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !24
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !20
  br label %bb.m

.critedge:                                        ; preds = %bb.j, %bb.k
  tail call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.al = shl nuw nsw i32 %i.v, 3
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = or disjoint i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = or i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !26
  br label %.thread

bb.n:                                             ; preds = %bb.g
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !27 ; 3 uses
  %i.au = icmp ugt i64 %i.n, %i.at
  br i1 %i.au, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  %.not148 = icmp eq i32 %i.r, 0
  br i1 %.not148, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = shl i32 %i.r, %i.p
  %i.aw = shl nuw i32 2, %i.p                     ; 2 uses
  %i.ax = sub i32 0, %i.aw
  %i.ay = or i32 %i.aw, %i.ax
  %i.az = and i32 %i.av, %i.ay
  %i.ba = tail call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true) ; 3 uses
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20 ; 4 uses
  %i.bi = icmp eq ptr %i.bd, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = shl nuw i32 1, %i.ba
  %i.bk = xor i32 %i.bj, -1
  %i.bl = and i32 %i.q, %i.bk                     ; 2 uses
  store i32 %i.bl, ptr @_gm_, align 8, !tbaa !19
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not151 = icmp ult ptr %i.bh, %i.bm
  br i1 %.not151, label %.critedge159, label %bb.s, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bp = icmp eq ptr %i.bo, %i.bf
  br i1 %i.bp, label %bb.t, label %.critedge159, !prof !25

bb.t:                                             ; preds = %bb.s
  store ptr %i.bd, ptr %i.bn, align 8, !tbaa !24
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !20
  br label %bb.u

.critedge159:                                     ; preds = %bb.r, %bb.s
  tail call void @abort() #18
  unreachable

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.bq = phi i32 [ %i.q, %bb.t ], [ %i.bl, %bb.q ] ; 2 uses
  %i.br = shl nuw nsw i32 %i.ba, 3
  %i.bs = zext nneg i32 %i.br to i64              ; 4 uses
  %i.bt = sub nsw i64 %i.bs, %i.n                 ; 4 uses
  %i.bu = icmp ult i64 %i.bt, 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = or disjoint i64 %i.bs, 3
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26
  %i.ca = or i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !26
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.cb = or disjoint i64 %i.n, 3
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.n ; 2 uses
  %i.cd = or disjoint i64 %i.bt, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  store i64 %i.bt, ptr %i.cf, align 8, !tbaa !28
  %.not152 = icmp eq i64 %i.at, 0
  br i1 %.not152, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !29 ; 4 uses
  %i.ch = lshr i64 %i.at, 3                       ; 2 uses
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i64 %i.ch, 1
  %i.ck = and i64 %i.cj, 4294967294
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %i.ck ; 4 uses
  %i.cm = shl nuw nsw i32 1, %i.ci                ; 2 uses
  %i.cn = and i32 %i.bq, %i.cm
  %.not153 = icmp eq i32 %i.cn, 0
  br i1 %.not153, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = or i32 %i.bq, %i.cm
  store i32 %i.co, ptr @_gm_, align 8, !tbaa !19
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20 ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not154 = icmp ult ptr %i.cq, %i.cr
  br i1 %.not154, label %bb.aa, label %bb.ab, !prof !23

bb.aa:                                            ; preds = %bb.z
  tail call void @abort() #18
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.0125 = phi ptr [ %i.cl, %bb.y ], [ %i.cq, %bb.z ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cg, ptr %i.cs, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %.0125, i64 24
  store ptr %i.cg, ptr %i.ct, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %.0125, ptr %i.cu, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.cl, ptr %i.cv, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !27
  store ptr %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !29
  br label %.thread

bb.ad:                                            ; preds = %bb.o
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !30
  %.not149 = icmp eq i32 %i.cw, 0
  br i1 %.not149, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = tail call fastcc ptr @tmalloc_small(ptr noundef nonnull @_gm_, i64 noundef %i.n)
  br label %.thread

end_hunk_0
begin_hunk_1_@release_unused_segments:bb.a
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cj = icmp ugt i32 %i.ch, 65535
  br i1 %i.cj, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ck = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true) ; 2 uses
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = sub nuw nsw i32 38, %i.ck
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = lshr i64 %i.z, %i.cn
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i32 %i.cp, 1
  %i.cr = or disjoint i32 %i.cq, %i.cl
  %i.cs = xor i32 %i.cr, 62
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.ao
  %.0164 = phi i32 [ %i.cs, %bb.ao ], [ 0, %bb.am ], [ 31, %bb.an ] ; 5 uses
  %i.ct = zext nneg i32 %.0164 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 %.0164, ptr %i.cv, align 8, !tbaa !49
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.cy = shl nuw i32 1, %.0164                   ; 2 uses
  %i.cz = and i32 %i.cx, %i.cy
  %.not204 = icmp eq i32 %i.cz, 0
  br i1 %.not204, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.da = or i32 %i.cx, %i.cy
  store i32 %i.da, ptr %i.g, align 4, !tbaa !30
  store ptr %i.w, ptr %i.cu, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.cu, ptr %i.db, align 8, !tbaa !45
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.w, ptr %i.dd, align 8, !tbaa !47
  br label %bb.az

bb.ar:                                            ; preds = %bb.ap
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !40
  %i.df = icmp eq i32 %.0164, 31
  %i.dg = lshr i32 %.0164, 1
  %i.dh = add nuw nsw i32 %i.dg, 6
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = sub nuw nsw i64 63, %i.di
  %i.dk = select i1 %i.df, i64 0, i64 %i.dj
  %i.dl = shl i64 %i.z, %i.dk
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %.0157 = phi ptr [ %i.de, %bb.ar ], [ %i.dt, %bb.at ] ; 6 uses
  %.0156 = phi i64 [ %i.dl, %bb.ar ], [ %i.ds, %bb.at ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0157, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !42
  %i.do = and i64 %i.dn, -8
  %.not205 = icmp eq i64 %i.do, %i.z
  br i1 %.not205, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %.0157, i64 32 ; 2 uses
  %i.dq = lshr i64 %.0156, 63                     ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = shl i64 %.0156, 1
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %.not207 = icmp eq ptr %i.dt, null
  br i1 %.not207, label %bb.au, label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not208 = icmp ult ptr %i.du, %i.dv
  br i1 %.not208, label %bb.av, label %.thread, !prof !23

.thread:                                          ; preds = %bb.au
  store ptr %i.w, ptr %i.du, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %.0157, ptr %i.dw, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.w, ptr %i.dx, align 8, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.w, ptr %i.dy, align 8, !tbaa !47
  br label %bb.az

bb.av:                                            ; preds = %bb.au
  tail call void @abort() #18
  unreachable

bb.aw:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %.0157, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47 ; 3 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %.not206 = icmp uge ptr %.0157, %i.eb
  %i.ec = icmp uge ptr %i.ea, %i.eb
  %spec.select = select i1 %.not206, i1 %i.ec, i1 false, !prof !25
  br i1 %spec.select, label %bb.ax, label %bb.ay, !prof !25

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.w, ptr %i.ed, align 8, !tbaa !46
  store ptr %i.w, ptr %i.dz, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ea, ptr %i.ee, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.0157, ptr %i.ef, align 8, !tbaa !46
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.eg, align 8, !tbaa !45
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  tail call void @abort() #18
  unreachable

bb.az:                                            ; preds = %.thread, %bb.c, %bb.d, %bb.aq, %bb.ax, %bb.al, %bb.b
  %.3163 = phi ptr [ %.0160233, %bb.b ], [ %.0160233, %bb.c ], [ %.0160233, %bb.d ], [ %.0159234, %bb.al ], [ %.0160233, %bb.ax ], [ %.0160233, %.thread ], [ %.0160233, %bb.aq ]
  %.3 = phi i64 [ %.0236, %bb.b ], [ %.0236, %bb.c ], [ %.0236, %bb.d ], [ %i.cc, %bb.al ], [ %.0236, %bb.ax ], [ %.0236, %.thread ], [ %.0236, %bb.aq ] ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !80

._crit_edge.loopexit:                             ; preds = %bb.az
  %i.eh = tail call i32 @llvm.umax.i32(i32 %i.o, i32 4095)
  %i.ei = zext nneg i32 %i.eh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0155.lcssa = phi i64 [ 4095, %bb.a ], [ %i.ei, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.3, %._crit_edge.loopexit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.0155.lcssa, ptr %i.ej, align 8, !tbaa !59
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @dlcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %i.a = or i64 %1, %0
  %i.b = icmp ugt i64 %i.a, 65535
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %spec.store.select = select i1 %mul.ov, i64 -1, i64 %mul.val
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %spec.store.select, %bb.c ], [ %mul.val, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call ptr @dlmalloc(i64 noundef %.0) ; 4 uses
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.c, i8 0, i64 %.0, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define ptr @dlrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlmalloc(i64 noundef %1)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, -129
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.d, align 4, !tbaa !3
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %2 = icmp ult i64 %1, 23
  %i.e = add nuw i64 %1, 23
  %i.f = and i64 %i.e, -16
  %i.g = select i1 %2, i64 32, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %0, i64 -16
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.j = and i32 %i.i, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0.i = phi i32 [ %i.n, %.preheader.backedge ], [ 0, %bb.f ]
  %i.l = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader
  %i.m = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader
  %i.n = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.o = and i32 %i.n, 63
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.critedge.i
  %i.q = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.g, %bb.e, %bb.f
  %i.r = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.h, i64 noundef %i.g, i32 noundef 1) ; 2 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.t = and i32 %i.s, 2
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %spin_acquire_lock.exit
  %.not40 = icmp eq ptr %i.r, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.v = tail call ptr @dlmalloc(i64 noundef %1)  ; 3 uses
  %.not41 = icmp eq ptr %i.v, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = and i64 %i.x, -8
  %i.z = and i64 %i.x, 3
  %i.aa = icmp eq i64 %i.z, 0
  %.neg = select i1 %i.aa, i64 -16, i64 -8
  %i.ab = add i64 %.neg, %i.y
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %0, i64 %i.ac, i1 false)
  tail call void @dlfree(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.u, %bb.k ], [ %i.v, %bb.m ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_realloc_chunk(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 16, -105) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %i.c = and i64 %i.b, -8                         ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 9 uses
  %.not = icmp ult ptr %1, %i.f
  %i.g = and i64 %i.b, 3                          ; 2 uses
  %.not246 = icmp eq i64 %i.g, 1
  %.not247 = icmp eq i64 %i.c, 0
  %i.h = or i1 %.not246, %.not247
  %or.cond270 = select i1 %.not, i1 true, i1 %i.h
  br i1 %or.cond270, label %.critedge272, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 5 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.c, label %.critedge272, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.g, 0
  br i1 %i.l, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %2, 256
  br i1 %i.m, label %mmap_resize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %2, 8
  %.not.i = icmp ult i64 %i.c, %i.n
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sub nuw i64 %i.c, %2
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33
  %i.q = shl i64 %i.p, 1
  %.not43.i = icmp ugt i64 %i.o, %i.q
  br i1 %.not43.i, label %bb.g, label %mmap_resize.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i64, ptr %1, align 8, !tbaa !28     ; 4 uses
  %i.s = add i64 %i.c, 32
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 2 uses
  %i.v = add nuw i64 %2, 62
  %i.w = add i64 %i.v, %i.u
  %i.x = sub i64 0, %i.u
  %i.y = and i64 %i.w, %i.x                       ; 4 uses
  %i.z = sub i64 0, %i.r
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.aa, i64 noundef %i.t, i64 noundef %i.y, i32 noundef range(i32 0, 2) %3) #17 ; 5 uses
  %.not44.i = icmp eq ptr %i.ab, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i, label %mmap_resize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 4 uses
  %i.ad = sub i64 %i.y, %i.r
  %i.ae = add i64 %i.ad, -32                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 11, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.y
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  store i64 0, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.al = icmp ult ptr %i.ab, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = sub i64 %i.y, %i.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !53
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %mmap_resize.exit

bb.k:                                             ; preds = %bb.j
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !54
  br label %mmap_resize.exit

bb.l:                                             ; preds = %bb.c
  %.not248 = icmp ult i64 %i.c, %2
  br i1 %.not248, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = sub nuw i64 %i.c, %2                    ; 3 uses
  %i.au = icmp ugt i64 %i.at, 31
  br i1 %i.au, label %bb.n, label %mmap_resize.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.aw = and i64 %i.b, 1
  %i.ax = or i64 %2, %i.aw
  %i.ay = or i64 %i.ax, 2
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = or i64 %i.at, 3
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !26
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !26
  %i.bc = or i64 %i.bb, 1
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.av, i64 noundef %i.at)
  br label %mmap_resize.exit

bb.o:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@try_realloc_chunk:bb.a
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  tail call void @abort() #18
  unreachable

bb.as:                                            ; preds = %bb.an, %bb.aq, %bb.al
  %.3 = phi ptr [ %i.dv, %bb.al ], [ %.1216, %bb.aq ], [ null, %bb.an ] ; 11 uses
  %.not258 = icmp eq ptr %i.dt, null
  br i1 %.not258, label %bb.bl, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !49 ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.es = icmp eq ptr %i.d, %i.er
  br i1 %i.es, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store ptr %.3, ptr %i.eq, align 8, !tbaa !40
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread, label %bb.bb

.thread:                                          ; preds = %bb.au
  %i.et = shl nuw i32 1, %i.eo
  %i.eu = xor i32 %i.et, -1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !30
  %i.ex = and i32 %i.ew, %i.eu
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !30
  br label %bb.bl

bb.av:                                            ; preds = %bb.at
  %.not259 = icmp ult ptr %i.dt, %i.f
  br i1 %.not259, label %bb.az, label %bb.aw, !prof !23

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !40
  %i.fa = icmp eq ptr %i.ez, %i.d
  br i1 %i.fa, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %.3, ptr %i.ey, align 8, !tbaa !40
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr %.3, ptr %i.fb, align 8, !tbaa !40
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  tail call void @abort() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.not260 = icmp eq ptr %.3, null
  br i1 %.not260, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.au, %bb.ba
  %.not261 = icmp ult ptr %.3, %i.f
  br i1 %.not261, label %bb.bk, label %bb.bc, !prof !23

bb.bc:                                            ; preds = %bb.bb
  %i.fc = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.dt, ptr %i.fc, align 8, !tbaa !45
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !40 ; 4 uses
  %.not262 = icmp eq ptr %i.fe, null
  br i1 %.not262, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not263 = icmp ult ptr %i.fe, %i.f
  br i1 %.not263, label %bb.bf, label %bb.be, !prof !23

bb.be:                                            ; preds = %bb.bd
  %i.ff = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr %.3, ptr %i.fg, align 8, !tbaa !45
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  tail call void @abort() #18
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40 ; 4 uses
  %.not264 = icmp eq ptr %i.fi, null
  br i1 %.not264, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not265 = icmp ult ptr %i.fi, %i.f
  br i1 %.not265, label %bb.bj, label %bb.bi, !prof !23

bb.bi:                                            ; preds = %bb.bh
  %i.fj = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store ptr %.3, ptr %i.fk, align 8, !tbaa !45
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  tail call void @abort() #18
  unreachable

bb.bk:                                            ; preds = %bb.bb
  tail call void @abort() #18
  unreachable

bb.bl:                                            ; preds = %.thread, %bb.as, %bb.bg, %bb.bi, %bb.ba, %.critedge278, %bb.ad
  %i.fl = icmp ult i64 %i.ct, 32
  br i1 %i.fl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fm = and i64 %i.b, 1
  %i.fn = or disjoint i64 %i.fm, %i.cs
  %i.fo = or disjoint i64 %i.fn, 2
  store i64 %i.fo, ptr %i.a, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !26
  %i.fs = or i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !26
  br label %mmap_resize.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.fu = and i64 %i.b, 1
  %i.fv = or i64 %2, %i.fu
  %i.fw = or i64 %i.fv, 2
  store i64 %i.fw, ptr %i.a, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = or i64 %i.ct, 3
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !26
  %i.gc = or i64 %i.gb, 1
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef %0, ptr noundef nonnull %i.ft, i64 noundef %i.ct)
  br label %mmap_resize.exit

.critedge272:                                     ; preds = %bb.a, %bb.b
  tail call void @abort() #18
  unreachable

mmap_resize.exit:                                 ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %bb.d, %bb.y, %bb.bn, %bb.bm, %bb.s, %bb.w, %bb.m, %bb.n, %bb.q, %bb.p, %bb.x
  %.2 = phi ptr [ %1, %bb.bm ], [ null, %bb.s ], [ %1, %bb.q ], [ null, %bb.p ], [ %1, %bb.m ], [ null, %bb.x ], [ %1, %bb.n ], [ %1, %bb.w ], [ null, %bb.y ], [ %1, %bb.bn ], [ %1, %bb.f ], [ null, %bb.d ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @mspace_malloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not182 = icmp eq i32 %i.e, 0
  br i1 %.not182, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.l = icmp ult i64 %1, 233
  br i1 %i.l, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %spin_acquire_lock.exit
  %2 = icmp samesign ult i64 %1, 23
  %i.m = add nuw nsw i64 %1, 23
  %i.n = and i64 %i.m, 496
  %i.o = select i1 %2, i64 32, i64 %i.n           ; 8 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 4 uses
  %i.r = load i32, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.s = lshr i32 %i.r, %i.q                      ; 4 uses
  %i.t = and i32 %i.s, 3
  %.not185 = icmp eq i32 %i.t, 0
  br i1 %.not185, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.s, 1
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = xor i32 %i.v, 1                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 4 uses
  %i.af = icmp eq ptr %i.aa, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = shl nuw i32 1, %i.w
  %i.ah = xor i32 %i.ag, -1
  %i.ai = and i32 %i.r, %i.ah
  store i32 %i.ai, ptr %0, align 8, !tbaa !19
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %.not193 = icmp ult ptr %i.ae, %i.ak
  br i1 %.not193, label %.critedge, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = icmp eq ptr %i.am, %i.ac
  br i1 %i.an, label %bb.j, label %.critedge, !prof !25

bb.j:                                             ; preds = %bb.i
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !24
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !20
  br label %bb.k

.critedge:                                        ; preds = %bb.h, %bb.i
  tail call void @abort() #18
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ao = shl nuw nsw i32 %i.w, 3
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = or disjoint i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = or i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !26
  br label %.thread

bb.l:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 3 uses
  %i.ay = icmp ugt i64 %i.o, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %.not186 = icmp eq i32 %i.s, 0
  br i1 %.not186, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = shl i32 %i.s, %i.q
  %i.ba = shl nuw i32 2, %i.q                     ; 2 uses
  %i.bb = sub i32 0, %i.ba
  %i.bc = or i32 %i.ba, %i.bb
  %i.bd = and i32 %i.az, %i.bc
  %i.be = tail call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %i.bd, i1 true) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bg = shl nuw nsw i32 %i.be, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 4 uses
  %i.bn = icmp eq ptr %i.bi, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = shl nuw i32 1, %i.be
  %i.bp = xor i32 %i.bo, -1
  %i.bq = and i32 %i.r, %i.bp                     ; 2 uses
  store i32 %i.bq, ptr %0, align 8, !tbaa !19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %.not189 = icmp ult ptr %i.bm, %i.bs
  br i1 %.not189, label %.critedge197, label %bb.q, !prof !23

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !24
  %i.bv = icmp eq ptr %i.bu, %i.bk
  br i1 %i.bv, label %bb.r, label %.critedge197, !prof !25

bb.r:                                             ; preds = %bb.q
  store ptr %i.bi, ptr %i.bt, align 8, !tbaa !24
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !20
  br label %bb.s

.critedge197:                                     ; preds = %bb.p, %bb.q
  tail call void @abort() #18
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.bw = phi i32 [ %i.r, %bb.r ], [ %i.bq, %bb.o ] ; 2 uses
  %i.bx = shl nuw nsw i32 %i.be, 3
  %i.by = zext nneg i32 %i.bx to i64              ; 4 uses
  %i.bz = sub nsw i64 %i.by, %i.o                 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = or disjoint i64 %i.by, 3
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !26
  %i.cg = or i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !26
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ch = or disjoint i64 %i.o, 3
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.o ; 2 uses
  %i.cj = or disjoint i64 %i.bz, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.by
  store i64 %i.bz, ptr %i.cl, align 8, !tbaa !28
  %.not190 = icmp eq i64 %i.ax, 0
  br i1 %.not190, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29 ; 4 uses
  %i.co = lshr i64 %i.ax, 3                       ; 2 uses
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i64 %i.co, 1
  %i.cr = and i64 %i.cq, 4294967294
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cr ; 4 uses
  %i.ct = shl nuw nsw i32 1, %i.cp                ; 2 uses
  %i.cu = and i32 %i.bw, %i.ct
  %.not191 = icmp eq i32 %i.cu, 0
  br i1 %.not191, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = or i32 %i.bw, %i.ct
  store i32 %i.cv, ptr %0, align 8, !tbaa !19
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !22
  %.not192 = icmp ult ptr %i.cx, %i.cz
  br i1 %.not192, label %bb.y, label %bb.z, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @abort() #18
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %.0164 = phi ptr [ %i.cs, %bb.w ], [ %i.cx, %bb.x ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.cn, ptr %i.da, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %.0164, i64 24
  store ptr %i.cn, ptr %i.db, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.0164, ptr %i.dc, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.cs, ptr %i.dd, align 8, !tbaa !24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  store i64 %i.bz, ptr %i.aw, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ci, ptr %i.de, align 8, !tbaa !29
  br label %.thread

bb.ab:                                            ; preds = %bb.m
end_hunk_2
begin_hunk_3_@mspace_free:bb.a
  %i.hq = lshr i64 %.2, 3                         ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx458 = shl nuw nsw i64 %i.hq, 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx458 ; 4 uses
  %i.hu = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.hv = shl nuw i32 1, %i.hr                    ; 2 uses
  %i.hw = and i32 %i.hu, %i.hv
  %.not459 = icmp eq i32 %i.hw, 0
  br i1 %.not459, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.hx = or i32 %i.hu, %i.hv
  store i32 %i.hx, ptr %0, align 8, !tbaa !19
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !20 ; 2 uses
  %.not460 = icmp ult ptr %i.hz, %i.n
  br i1 %.not460, label %bb.db, label %bb.dc, !prof !23

bb.db:                                            ; preds = %bb.da
  tail call void @abort() #18
  unreachable

bb.dc:                                            ; preds = %bb.da, %bb.cz
  %.0366 = phi ptr [ %i.ht, %bb.cz ], [ %i.hz, %bb.da ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %.1, ptr %i.ia, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %.0366, i64 24
  store ptr %.1, ptr %i.ib, align 8, !tbaa !24
  %i.ic = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %.0366, ptr %i.ic, align 8, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %i.ht, ptr %i.id, align 8, !tbaa !24
  br label %bb.ds

bb.dd:                                            ; preds = %bb.cx
  %i.ie = lshr i64 %.2, 8
  %i.if = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ih = icmp ugt i32 %i.if, 65535
  br i1 %i.ih, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ii = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.if, i1 true) ; 2 uses
  %i.ij = shl nuw nsw i32 %i.ii, 1
  %i.ik = sub nuw nsw i32 38, %i.ii
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = lshr i64 %.2, %i.il
  %i.in = trunc i64 %i.im to i32
  %i.io = and i32 %i.in, 1
  %i.ip = or disjoint i32 %i.io, %i.ij
  %i.iq = xor i32 %i.ip, 62
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.dd, %bb.df
  %.0360 = phi i32 [ %i.iq, %bb.df ], [ 0, %bb.dd ], [ 31, %bb.de ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.is = zext nneg i32 %.0360 to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1, i64 56
  store i32 %.0360, ptr %i.iu, align 8, !tbaa !49
  %i.iv = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, i8 0, i64 16, i1 false)
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !30 ; 2 uses
  %i.iy = shl nuw i32 1, %.0360                   ; 2 uses
  %i.iz = and i32 %i.ix, %i.iy
  %.not453 = icmp eq i32 %i.iz, 0
  br i1 %.not453, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ja = or i32 %i.ix, %i.iy
  store i32 %i.ja, ptr %i.iw, align 4, !tbaa !30
  store ptr %.1, ptr %i.it, align 8, !tbaa !40
  br label %bb.dq

bb.di:                                            ; preds = %bb.dg
  %i.jb = load ptr, ptr %i.it, align 8, !tbaa !40
  %i.jc = icmp eq i32 %.0360, 31
  %i.jd = lshr i32 %.0360, 1
  %i.je = add nuw nsw i32 %i.jd, 6
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = sub nuw nsw i64 63, %i.jf
  %i.jh = select i1 %i.jc, i64 0, i64 %i.jg
  %i.ji = shl i64 %.2, %i.jh
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %bb.di
  %.0353 = phi ptr [ %i.jb, %bb.di ], [ %i.jq, %bb.dk ] ; 6 uses
  %.0352 = phi i64 [ %i.ji, %bb.di ], [ %i.jp, %bb.dk ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0353, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !42
  %i.jl = and i64 %i.jk, -8
  %.not454 = icmp eq i64 %i.jl, %.2
  br i1 %.not454, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jm = getelementptr inbounds nuw i8, ptr %.0353, i64 32 ; 2 uses
  %i.jn = lshr i64 %.0352, 63                     ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = shl i64 %.0352, 1
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !40 ; 2 uses
  %.not456 = icmp eq ptr %i.jq, null
  br i1 %.not456, label %bb.dl, label %bb.dj

bb.dl:                                            ; preds = %bb.dk
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %.not457 = icmp ult ptr %i.jr, %i.n
  br i1 %.not457, label %bb.dm, label %.thread494, !prof !23

.thread494:                                       ; preds = %bb.dl
  store ptr %.1, ptr %i.jr, align 8, !tbaa !40
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  tail call void @abort() #18
  unreachable

bb.dn:                                            ; preds = %bb.dj
  %i.js = getelementptr inbounds nuw i8, ptr %.0353, i64 16 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !47 ; 3 uses
  %.not455 = icmp uge ptr %.0353, %i.n
  %i.ju = icmp uge ptr %i.jt, %i.n
  %spec.select = select i1 %.not455, i1 %i.ju, i1 false, !prof !25
  br i1 %spec.select, label %bb.do, label %bb.dp, !prof !25

bb.do:                                            ; preds = %bb.dn
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store ptr %.1, ptr %i.jv, align 8, !tbaa !46
  store ptr %.1, ptr %i.js, align 8, !tbaa !47
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  tail call void @abort() #18
  unreachable

bb.dq:                                            ; preds = %.thread494, %bb.do, %bb.dh
  %.sink549 = phi i64 [ 48, %.thread494 ], [ 16, %bb.do ], [ 48, %bb.dh ]
  %.0353.lcssa544.sink = phi ptr [ %.0353, %.thread494 ], [ %i.jt, %bb.do ], [ %i.it, %bb.dh ]
  %.1.sink548 = phi ptr [ %.1, %.thread494 ], [ %.0353, %bb.do ], [ %.1, %bb.dh ]
  %.sink547 = phi i64 [ 16, %.thread494 ], [ 48, %bb.do ], [ 16, %bb.dh ]
  %.1.sink = phi ptr [ %.1, %.thread494 ], [ null, %bb.do ], [ %.1, %bb.dh ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink549
  store ptr %.0353.lcssa544.sink, ptr %i.jw, align 8, !tbaa !40
  %i.jx = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.1.sink548, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink547
  store ptr %.1.sink, ptr %i.jy, align 8, !tbaa !40
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !59
  %i.kb = add i64 %i.ka, -1                       ; 2 uses
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !59
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.kd = tail call fastcc i64 @release_unused_segments(ptr noundef nonnull %0) ; 0 uses
  br label %bb.ds

.critedge463:                                     ; preds = %.thread, %bb.ba, %bb.k, %spin_acquire_lock.exit, %bb.f
  tail call void @abort() #18
  unreachable

bb.ds:                                            ; preds = %bb.bf, %bb.bi, %.thread492, %bb.dc, %bb.bg, %bb.dq, %bb.dr, %bb.i, %bb.j, %bb.az
  %i.ke = load i32, ptr %i.b, align 8, !tbaa !10
  %i.kf = and i32 %i.ke, 2
  %.not461 = icmp eq i32 %i.kf, 0
  br i1 %.not461, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.kg release, align 4
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @dlrealloc_in_place(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, -129
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.b, align 4, !tbaa !3
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %2 = icmp ult i64 %1, 23
  %i.c = add nuw i64 %1, 23
  %i.d = and i64 %i.c, -16
  %i.e = select i1 %2, i64 32, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.h = and i32 %i.g, 2
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %spin_acquire_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %.0.i = phi i32 [ %i.l, %.preheader.backedge ], [ 0, %bb.e ]
  %i.j = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.preheader
  %i.k = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.preheader
  %i.l = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.m = and i32 %i.l, 63
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.preheader.backedge

bb.g:                                             ; preds = %.critedge.i
  %i.o = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.g, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.f, %bb.d, %bb.e
  %i.p = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.f, i64 noundef %i.e, i32 noundef 0)
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.r = and i32 %i.q, 2
  %.not20 = icmp eq i32 %i.r, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %spin_acquire_lock.exit
  %i.s = icmp eq ptr %i.p, %i.f
  %spec.select = select i1 %i.s, ptr %0, ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.a
  %.2 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.i ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @dlmemalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlmalloc(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %0, i64 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @internal_memalign(ptr noundef %0, i64 noundef range(i64 17, 16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32) ; 3 uses
  %i.a = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %spec.store.select)
  %.not = icmp samesign ult i64 %i.a, 2
  br i1 %.not, label %.loopexit, label %.preheader105

.preheader105:                                    ; preds = %bb.a, %.preheader105
  %.091 = phi i64 [ %i.c, %.preheader105 ], [ 32, %bb.a ] ; 3 uses
  %i.b = icmp ult i64 %.091, %spec.store.select
  %i.c = shl i64 %.091, 1
  br i1 %i.b, label %.preheader105, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %.preheader105, %bb.a
  %.086 = phi i64 [ %spec.store.select, %bb.a ], [ %.091, %.preheader105 ] ; 6 uses
  %i.d = sub i64 -128, %.086
  %.not98 = icmp ult i64 %2, %i.d
  br i1 %.not98, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %.not104 = icmp eq ptr %0, null
  br i1 %.not104, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.e, align 4, !tbaa !3
  br label %bb.t

bb.d:                                             ; preds = %.loopexit
  %3 = icmp ult i64 %2, 23
  %i.f = add i64 %2, 23
  %i.g = and i64 %i.f, -16
  %i.h = select i1 %3, i64 32, i64 %i.g           ; 5 uses
  %i.i = add i64 %i.h, 24
  %i.j = add i64 %i.i, %.086                      ; 2 uses
  %i.k = icmp eq ptr %0, @_gm_
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @dlmalloc(i64 noundef %i.j)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 5 uses
  %.not99 = icmp eq ptr %i.n, null
  br i1 %.not99, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !10
  %i.r = and i32 %i.q, 2
  %.not100 = icmp eq i32 %i.r, 0
  br i1 %.not100, label %spin_acquire_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.t = atomicrmw xchg ptr %i.s, i32 1 seq_cst, align 4
  %.not101 = icmp eq i32 %i.t, 0
  br i1 %.not101, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader.backedge
  %.0.i = phi i32 [ %i.w, %.preheader.backedge ], [ 0, %bb.i ]
  %i.u = load volatile i32, ptr %i.s, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %.preheader
  %i.v = atomicrmw xchg ptr %i.s, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.preheader
  %i.w = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.x = and i32 %i.w, 63
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %.preheader.backedge

bb.k:                                             ; preds = %.critedge.i
  %i.z = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.k, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.j, %bb.h, %bb.i
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = add i64 %.086, -1
  %i.ac = and i64 %i.ab, %i.aa
  %.not102 = icmp eq i64 %i.ac, 0
  br i1 %.not102, label %bb.o, label %bb.l

bb.l:                                             ; preds = %spin_acquire_lock.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %.086
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 0, %.086
  %i.ah = and i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 31
  %.idx = select i1 %i.an, i64 0, i64 %.086
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 7 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.al                    ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %i.at = and i64 %i.as, -8
  %i.au = sub i64 %i.at, %i.aq                    ; 3 uses
  %i.av = and i64 %i.as, 3
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !28
  %i.ay = add i64 %i.ax, %i.aq
  store i64 %i.ay, ptr %i.ao, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.au, ptr %i.az, align 8, !tbaa !26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.bc = and i64 %i.bb, 1
  %i.bd = or i64 %i.au, %i.bc
  %i.be = or i64 %i.bd, 2
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = or i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.bk = and i64 %i.bj, 1
  %i.bl = or i64 %i.aq, %i.bk
  %i.bm = or i64 %i.bl, 2
  store i64 %i.bm, ptr %i.ar, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aq
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26
  %i.bq = or i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.aq)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %spin_acquire_lock.exit
  %.092 = phi ptr [ %i.o, %spin_acquire_lock.exit ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26 ; 3 uses
  %i.bt = and i64 %i.bs, 3
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = and i64 %i.bs, -8                       ; 3 uses
  %i.bw = add i64 %i.h, 32
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = sub i64 %i.bv, %i.h                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.092, i64 %i.h ; 2 uses
  %i.ca = and i64 %i.bs, 1
  %i.cb = or disjoint i64 %i.h, %i.ca
  %i.cc = or disjoint i64 %i.cb, 2
  store i64 %i.cc, ptr %i.br, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = or disjoint i64 %i.by, 3
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %.092, i64 %i.bv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ci = or i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef %i.bz, i64 noundef %i.by)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.092, i64 16 ; 2 uses
  %i.ck = load i32, ptr %i.p, align 8, !tbaa !10
  %i.cl = and i32 %i.ck, 2
  %.not103 = icmp eq i32 %i.cl, 0
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.cm release, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.r, %bb.s
  %.390 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ %i.cj, %bb.r ], [ %i.cj, %bb.s ]
  ret ptr %.390
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @dlposix_memalign(ptr noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlmalloc(i64 noundef %2)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 3                           ; 2 uses
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.not31 = and i1 %i.e, %i.f
  %i.g = tail call range(i64 0, 62) i64 @llvm.ctpop.i64(i64 %i.c)
  %.not = icmp samesign ult i64 %i.g, 2
  %or.cond25 = select i1 %or.cond.not31, i1 %.not, i1 false
  br i1 %or.cond25, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 -128, %1
  %.not24 = icmp ugt i64 %2, %i.h
  br i1 %.not24, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32)
  %i.i = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %spec.store.select, i64 noundef %2)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.e ]  ; 2 uses
  %i.j = icmp eq ptr %.2, null
  br i1 %i.j, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  store ptr %.2, ptr %0, align 8, !tbaa !76
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %bb.c, %.thread, %bb.f
  %.1 = phi i32 [ 12, %.thread ], [ 0, %bb.f ], [ 22, %bb.c ], [ 12, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define ptr @dlvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 2 uses
  %i.c = icmp ult i64 %i.b, 17
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @dlmalloc(i64 noundef %0)
  br label %dlmemalign.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %i.b, i64 noundef %0)
  br label %dlmemalign.exit

dlmemalign.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @dlpvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 4 uses
  %i.c = add i64 %0, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp ult i64 %i.b, 17
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dlmalloc(i64 noundef %i.f)
  br label %dlmemalign.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %i.b, i64 noundef %i.f)
  br label %dlmemalign.exit

dlmemalign.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @dlindependent_calloc(i64 noundef %0, i64 noundef %1, ptr noundef captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 4) %3, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94 = icmp eq ptr %4, null                  ; 2 uses
  %i.b = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.ab, label %bb.j

bb.e:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.c = icmp eq ptr %0, @_gm_
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.d = tail call ptr @dlmalloc(i64 noundef 0)
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.e = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef 0)
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.f = shl i64 %1, 3                            ; 2 uses
  %5 = icmp ult i64 %i.f, 23
  %6 = and i64 %i.f, -16
  %7 = add i64 %6, 16
  %i.g = select i1 %5, i64 32, i64 %7
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.084 = phi i64 [ %i.g, %bb.i ], [ 0, %bb.d ]   ; 2 uses
  %i.h = and i32 %3, 1
  %.not95 = icmp eq i32 %i.h, 0
  br i1 %.not95, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi138 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %wide.load139 = load <2 x i64>, ptr %i.j, align 8, !tbaa !39 ; 2 uses
  %8 = icmp ult <2 x i64> %wide.load, splat (i64 23)
  %9 = icmp ult <2 x i64> %wide.load139, splat (i64 23)
  %10 = add <2 x i64> %wide.load, splat (i64 23)
  %11 = add <2 x i64> %wide.load139, splat (i64 23)
  %12 = and <2 x i64> %10, splat (i64 -16)
  %13 = and <2 x i64> %11, splat (i64 -16)
  %i.k = select <2 x i1> %8, <2 x i64> splat (i64 32), <2 x i64> %12
  %i.l = select <2 x i1> %9, <2 x i64> splat (i64 32), <2 x i64> %13
  %i.m = add <2 x i64> %i.k, %vec.phi             ; 2 uses
  %i.n = add <2 x i64> %i.l, %vec.phi138          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader144

.lr.ph.preheader144:                              ; preds = %.lr.ph.preheader, %middle.block
  %.074107.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.077106.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.q = load i64, ptr %2, align 8, !tbaa !39     ; 2 uses
  %14 = icmp ult i64 %i.q, 23
  %15 = add i64 %i.q, 23
  %16 = and i64 %15, -16
  %i.r = select i1 %14, i64 32, i64 %16           ; 2 uses
  %i.s = mul i64 %i.r, %1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader144, %.lr.ph
  %.074107 = phi i64 [ %i.x, %.lr.ph ], [ %.074107.ph, %.lr.ph.preheader144 ] ; 2 uses
  %.077106 = phi i64 [ %i.w, %.lr.ph ], [ %.077106.ph, %.lr.ph.preheader144 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.074107
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %17 = icmp ult i64 %i.u, 23
  %18 = add i64 %i.u, 23
  %19 = and i64 %18, -16
  %i.v = select i1 %17, i64 32, i64 %19
  %i.w = add i64 %i.v, %.077106                   ; 2 uses
  %i.x = add nuw i64 %.074107, 1                  ; 2 uses
  %.not96 = icmp eq i64 %i.x, %1
  br i1 %.not96, label %.loopexit, label %.lr.ph, !llvm.loop !87

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.k
  %.178 = phi i64 [ %i.s, %bb.k ], [ %i.p, %middle.block ], [ %i.w, %.lr.ph ] ; 4 uses
  %.076 = phi i64 [ %i.r, %bb.k ], [ 0, %middle.block ], [ 0, %.lr.ph ] ; 10 uses
  %i.y = add i64 %.178, %.084
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.ab = and i32 %i.aa, 1
  %i.ac = and i32 %i.aa, -2
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !10
  %i.ad = icmp eq ptr %0, @_gm_
  %i.ae = add i64 %i.y, -8                        ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.af = tail call ptr @dlmalloc(i64 noundef %i.ae)
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.ag = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %i.ae)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = phi ptr [ %i.af, %bb.l ], [ %i.ag, %bb.m ] ; 5 uses
  %.not97 = icmp eq i32 %i.ab, 0
  br i1 %.not97, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !10
  %i.aj = or i32 %i.ai, 1
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = icmp eq ptr %i.ah, null
  br i1 %i.ak, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.z, align 8, !tbaa !10
  %i.am = and i32 %i.al, 2
  %.not98 = icmp eq i32 %i.am, 0
  br i1 %.not98, label %spin_acquire_lock.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.ao = atomicrmw xchg ptr %i.an, i32 1 seq_cst, align 4
  %.not99 = icmp eq i32 %i.ao, 0
  br i1 %.not99, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.r, %.preheader.backedge
  %.0.i = phi i32 [ %i.ar, %.preheader.backedge ], [ 0, %bb.r ]
  %i.ap = load volatile i32, ptr %i.an, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %.preheader
  %i.aq = atomicrmw xchg ptr %i.an, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.aq, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.preheader
  %i.ar = add nuw nsw i32 %.0.i, 1                ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %.preheader.backedge

bb.t:                                             ; preds = %.critedge.i
  %i.au = tail call i32 @sched_yield() #17        ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.t, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.s, %bb.q, %bb.r
  %i.av = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 6 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = and i64 %i.ax, -8                       ; 3 uses
  %.not100 = icmp samesign ult i32 %3, 2
  br i1 %.not100, label %bb.v, label %bb.u

bb.u:                                             ; preds = %spin_acquire_lock.exit
  %reass.sub = sub i64 %i.ay, %.084
  %i.az = add i64 %reass.sub, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ah, i8 0, i64 %i.az, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %spin_acquire_lock.exit
  br i1 %.not94, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %.178 ; 2 uses
  %i.bb = sub i64 %i.ay, %.178
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = or i64 %i.bb, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.081 = phi i64 [ %.178, %bb.w ], [ %i.ay, %bb.v ] ; 5 uses
  %.180 = phi ptr [ %i.bc, %bb.w ], [ %4, %bb.v ] ; 11 uses
  %i.bf = add i64 %1, -1                          ; 6 uses
  store ptr %i.ah, ptr %.180, align 8, !tbaa !76
  %.not101108 = icmp eq i64 %i.bf, 0
  br i1 %.not101108, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.x
  %.not103 = icmp eq i64 %.076, 0
  br i1 %.not103, label %.lr.ph112.split.us.preheader, label %.lr.ph112.split

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %xtraiter151 = and i64 %i.bf, 1
  %i.bg = icmp eq i64 %1, 2
  br i1 %i.bg, label %.lr.ph112.split.us.epil.preheader, label %.lr.ph112.split.us.preheader.new

.lr.ph112.split.us.preheader.new:                 ; preds = %.lr.ph112.split.us.preheader
  %unroll_iter157 = and i64 %i.bf, -2
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us, %.lr.ph112.split.us.preheader.new
  %.1111.us = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %i.by, %.lr.ph112.split.us ] ; 3 uses
  %.182110.us = phi i64 [ %.081, %.lr.ph112.split.us.preheader.new ], [ %i.bu, %.lr.ph112.split.us ]
  %.083109.us = phi ptr [ %i.av, %.lr.ph112.split.us.preheader.new ], [ %i.bx, %.lr.ph112.split.us ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %niter158.next.1, %.lr.ph112.split.us ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !39 ; 2 uses
  %20 = icmp ult i64 %i.bi, 23
  %21 = add i64 %i.bi, 23
  %22 = and i64 %21, -16
  %i.bj = select i1 %20, i64 32, i64 %22          ; 3 uses
  %i.bk = or disjoint i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.083109.us, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %.083109.us, i64 %i.bj ; 3 uses
  %i.bn = or disjoint i64 %.1111.us, 1            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.bn
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bn
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !39 ; 2 uses
  %23 = icmp ult i64 %i.br, 23
  %24 = add i64 %i.br, 23
  %25 = and i64 %24, -16
  %i.bs = select i1 %23, i64 32, i64 %25          ; 3 uses
  %i.bt = add i64 %i.bj, %i.bs
  %i.bu = sub i64 %.182110.us, %i.bt              ; 3 uses
  %i.bv = or disjoint i64 %i.bs, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs ; 4 uses
  %i.by = add nuw i64 %.1111.us, 2                ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.by
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !76
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph112.split.us

.lr.ph112.split:                                  ; preds = %.lr.ph112
  %i.cb = or i64 %.076, 3                         ; 5 uses
  %i.cc = add i64 %1, -2
  %xtraiter = and i64 %i.bf, 3                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph112.split.new

.lr.ph112.split.new:                              ; preds = %.lr.ph112.split
  %unroll_iter = and i64 %i.bf, -4
  %.neg = mul i64 %.076, -3
  %invariant.op = sub i64 %.neg, %.076
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph112.split.new
  %.1111 = phi i64 [ 0, %.lr.ph112.split.new ], [ %i.cv, %bb.y ] ; 4 uses
  %.182110 = phi i64 [ %.081, %.lr.ph112.split.new ], [ %.reass, %bb.y ]
  %.083109 = phi ptr [ %i.av, %.lr.ph112.split.new ], [ %i.cu, %bb.y ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph112.split.new ], [ %niter.next.3, %bb.y ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.083109, i64 8
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %.083109, i64 %.076 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cb, ptr %i.cj, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.076 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.cb, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.076 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !76
  %.reass = add i64 %.182110, %invariant.op       ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cb, ptr %i.ct, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.076 ; 4 uses
  %i.cv = add nuw i64 %.1111, 4                   ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.cv
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !76
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit141.unr-lcssa, label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph112.split.us
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %._crit_edge, label %.lr.ph112.split.us.epil.preheader

.lr.ph112.split.us.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph112.split.us.preheader
  %.1111.us.epil.init = phi i64 [ 0, %.lr.ph112.split.us.preheader ], [ %i.by, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.182110.us.epil.init = phi i64 [ %.081, %.lr.ph112.split.us.preheader ], [ %i.bu, %._crit_edge.loopexit.unr-lcssa ]
  %.083109.us.epil.init = phi ptr [ %i.av, %.lr.ph112.split.us.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %26 = icmp ult i64 %i.cz, 23
  %27 = add i64 %i.cz, 23
  %28 = and i64 %27, -16
  %i.da = select i1 %26, i64 32, i64 %28          ; 3 uses
  %i.db = sub i64 %.182110.us.epil.init, %i.da
  %i.dc = or disjoint i64 %i.da, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.083109.us.epil.init, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %.083109.us.epil.init, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111.us.epil.init
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge.loopexit141.unr-lcssa:                ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit141.unr-lcssa, %.lr.ph112.split
  %.1111.epil.init = phi i64 [ 0, %.lr.ph112.split ], [ %i.cv, %._crit_edge.loopexit141.unr-lcssa ]
  %.182110.epil.init = phi i64 [ %.081, %.lr.ph112.split ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ]
  %.083109.epil.init = phi ptr [ %i.av, %.lr.ph112.split ], [ %i.cu, %._crit_edge.loopexit141.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %.1111.epil = phi i64 [ %.1111.epil.init, %.epil.preheader ], [ %i.dl, %bb.z ]
  %.182110.epil = phi i64 [ %.182110.epil.init, %.epil.preheader ], [ %i.di, %bb.z ]
  %.083109.epil = phi ptr [ %.083109.epil.init, %.epil.preheader ], [ %i.dk, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.di = sub i64 %.182110.epil, %.076            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.083109.epil, i64 8
  store i64 %i.cb, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %.083109.epil, i64 %.076 ; 3 uses
  %i.dl = add nuw i64 %.1111.epil, 1              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.dl
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !76
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.z, !llvm.loop !88

._crit_edge:                                      ; preds = %._crit_edge.loopexit141.unr-lcssa, %bb.z, %.lr.ph112.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.x
  %.083.lcssa = phi ptr [ %i.av, %bb.x ], [ %i.de, %.lr.ph112.split.us.epil.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %._crit_edge.loopexit141.unr-lcssa ], [ %i.dk, %bb.z ]
  %.182.lcssa = phi i64 [ %.081, %bb.x ], [ %i.db, %.lr.ph112.split.us.epil.preheader ], [ %i.bu, %._crit_edge.loopexit.unr-lcssa ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ], [ %i.di, %bb.z ]
  %i.do = or i64 %.182.lcssa, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.083.lcssa, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !26
  %i.dq = load i32, ptr %i.z, align 8, !tbaa !10
  %i.dr = and i32 %i.dq, 2
  %.not102 = icmp eq i32 %i.dr, 0
  br i1 %.not102, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.ds release, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa, %bb.p, %bb.g, %bb.h, %bb.d
  %.0 = phi ptr [ null, %bb.p ], [ %i.e, %bb.h ], [ %4, %bb.d ], [ %i.d, %bb.g ], [ %.180, %bb.aa ], [ %.180, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @dlindependent_comalloc(i64 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef i64 @dlbulk_free(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @internal_bulk_free(ptr noundef nonnull @_gm_, ptr noundef %0, i64 noundef %1)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @internal_bulk_free(ptr noundef %0, ptr noundef captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %.idx = shl nuw nsw i64 %2, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not4551 = icmp eq i64 %2, 0
  br i1 %.not4551, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %spin_acquire_lock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.052 = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.k ] ; 4 uses
  %i.n = load ptr, ptr %.052, align 8, !tbaa !76  ; 4 uses
  %.not47 = icmp eq ptr %i.n, null
  br i1 %.not47, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 3 uses
  %i.r = and i64 %i.q, -8                         ; 3 uses
  store ptr null, ptr %.052, align 8, !tbaa !76
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !22
  %.not48 = icmp uge ptr %i.o, %i.s
  %i.t = and i64 %i.q, 3
  %i.u = icmp ne i64 %i.t, 1
  %or.cond = select i1 %.not48, i1 %i.u, i1 false, !prof !90
  br i1 %or.cond, label %bb.g, label %.critedge, !prof !90

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 2 uses
  %.not49 = icmp eq ptr %i.v, %i.l
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = and i64 %i.q, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = or disjoint i64 %i.af, 2
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = or i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !26
  store ptr %i.n, ptr %i.v, align 8, !tbaa !76
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.r)
  br label %bb.k

.critedge:                                        ; preds = %bb.f
  tail call void @abort() #18
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.al, %i.l
  br i1 %.not45, label %._crit_edge, label %bb.e, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.k, %spin_acquire_lock.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ar = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.as = load i32, ptr %i.a, align 8, !tbaa !10
  %i.at = and i32 %i.as, 2
end_hunk_3
begin_hunk_4_@create_mspace_with_base:bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ugt i64 %1, 1024
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34
  %i.d = sub i64 -1024, %i.c
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call fastcc ptr @init_user_mstate(ptr noundef %0, i64 noundef %1) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  store i32 8, ptr %i.g, align 8, !tbaa !57
  %.not12 = icmp eq i32 %2, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10
  %i.j = and i32 %i.i, -3
  %masksel = select i1 %.not12, i32 0, i32 2
  %i.k = or disjoint i32 %i.j, %masksel
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  store i32 %i.k, ptr %i.l, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mspace_track_large_chunks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.l = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not12 = icmp eq i32 %1, 0
  %i.m = and i32 %i.l, -2
  %masksel = zext i1 %.not12 to i32
  %storemerge = or disjoint i32 %i.m, %masksel
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !10
  %i.n = and i32 %i.l, 2
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.o release, align 4
  br label %bb.f

bb.f:                                             ; preds = %spin_acquire_lock.exit, %bb.e
  %i.p = and i32 %i.l, 1
  %spec.select = xor i32 %i.p, 1
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define i64 @destroy_mspace(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.017 = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]    ; 2 uses
  %.01316 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.d ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01316, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %.01316, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = and i32 %i.c, 9
  %or.cond = icmp eq i32 %i.f, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.01316, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %i.i = load ptr, ptr %.01316, align 8, !tbaa !61
  %i.j = tail call i32 @munmap(ptr noundef %i.i, i64 noundef %i.h) #17
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %i.k, i64 %i.h, i64 0
  %spec.select = add i64 %i.l, %.017
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.017, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !92

bb.e:                                             ; preds = %bb.d
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define ptr @mspace_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %i.a = or i64 %2, %1
  %i.b = icmp ugt i64 %i.a, 65535
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %spec.store.select = select i1 %mul.ov, i64 -1, i64 %mul.val
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %spec.store.select, %bb.c ], [ %mul.val, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = icmp eq ptr %0, @_gm_
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = tail call ptr @dlmalloc(i64 noundef %.0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = phi ptr [ %i.d, %bb.e ], [ %i.e, %bb.f ] ; 4 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %.0, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define ptr @mspace_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %2)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, -129
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.d, align 4, !tbaa !3
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %3 = icmp ult i64 %2, 23
  %i.e = add nuw i64 %2, 23
  %i.f = and i64 %i.e, -16
  %i.g = select i1 %3, i64 32, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !10
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.m = atomicrmw xchg ptr %i.l, i32 1 seq_cst, align 4
  %.not36 = icmp eq i32 %i.m, 0
  br i1 %.not36, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0.i = phi i32 [ %i.p, %.preheader.backedge ], [ 0, %bb.f ]
  %i.n = load volatile i32, ptr %i.l, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader
  %i.o = atomicrmw xchg ptr %i.l, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.o, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader
  %i.p = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.q = and i32 %i.p, 63
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.critedge.i
  %i.s = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.g, %bb.e, %bb.f
  %i.t = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull %0, ptr noundef %i.h, i64 noundef %i.g, i32 noundef 1) ; 2 uses
  %i.u = load i32, ptr %i.i, align 8, !tbaa !10
  %i.v = and i32 %i.u, 2
  %.not37 = icmp eq i32 %i.v, 0
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %spin_acquire_lock.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.w release, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %spin_acquire_lock.exit
  %.not38 = icmp eq ptr %i.t, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.y = tail call ptr @mspace_malloc(ptr noundef nonnull %0, i64 noundef %2) ; 3 uses
  %.not39 = icmp eq ptr %i.y, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds i8, ptr %1, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = and i64 %i.aa, -8
  %i.ac = and i64 %i.aa, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %.neg = select i1 %i.ad, i64 -16, i64 -8
  %i.ae = add i64 %.neg, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %1, i64 %i.af, i1 false)
  tail call void @mspace_free(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.x, %bb.k ], [ %i.y, %bb.m ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @mspace_realloc_in_place(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %2, -129
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #19
  store i32 12, ptr %i.b, align 4, !tbaa !3
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, 23
  %i.c = add nuw i64 %2, 23
  %i.d = and i64 %i.c, -16
  %i.e = select i1 %3, i64 32, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10
  %i.i = and i32 %i.h, 2
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %spin_acquire_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.k = atomicrmw xchg ptr %i.j, i32 1 seq_cst, align 4
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %.0.i = phi i32 [ %i.n, %.preheader.backedge ], [ 0, %bb.e ]
  %i.l = load volatile i32, ptr %i.j, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.preheader
  %i.m = atomicrmw xchg ptr %i.j, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.preheader
  %i.n = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.o = and i32 %i.n, 63
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %.preheader.backedge

bb.g:                                             ; preds = %.critedge.i
  %i.q = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.g, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.f, %bb.d, %bb.e
  %i.r = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef %i.e, i32 noundef 0)
  %i.s = load i32, ptr %i.g, align 8, !tbaa !10
  %i.t = and i32 %i.s, 2
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %spin_acquire_lock.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.u release, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %spin_acquire_lock.exit
  %i.v = icmp eq ptr %i.r, %i.f
  %spec.select = select i1 %i.v, ptr %1, ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.a
  %.2 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.i ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @mspace_memalign(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @internal_memalign(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @mspace_independent_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %2, ptr %i.a, align 8, !tbaa !39
  %i.b = call fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @mspace_independent_comalloc(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef i64 @mspace_bulk_free(ptr noundef %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @internal_bulk_free(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mspace_trim(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.l = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef %1)
  %i.m = load i32, ptr %i.a, align 8, !tbaa !10
  %i.n = and i32 %i.m, 2
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.o release, align 4
  br label %bb.f

bb.f:                                             ; preds = %spin_acquire_lock.exit, %bb.e
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_footprint(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_max_footprint(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_footprint_limit(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 -1, i64 %i.b
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mspace_set_footprint_limit(ptr noundef writeonly captures(none) initializes((872, 880)) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33 ; 2 uses
  %i.c = add i64 %1, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 %.0, ptr %i.g, align 8, !tbaa !52
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_usable_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = and i64 %i.b, 3                          ; 2 uses
  %.not9.not = icmp eq i64 %i.c, 1
  %i.d = and i64 %i.b, -8
  %i.e = icmp eq i64 %i.c, 0
  %.neg = select i1 %i.e, i64 -16, i64 -8
  %i.f = add i64 %.neg, %i.d
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %i.f, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mspace_mallopt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = sext i32 %1 to i64                       ; 5 uses
  switch i32 %0, label %change_mparam.exit [
    i32 -1, label %bb.d
    i32 -2, label %bb.e
    i32 -3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !36
  br label %change_mparam.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34
  %.not11.i = icmp ule i64 %i.c, %i.b
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond.i = select i1 %.not11.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.f, label %change_mparam.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33
  br label %change_mparam.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8, !tbaa !35
  br label %change_mparam.exit

change_mparam.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @mspace_malloc_lockless(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 233
  br i1 %i.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %2 = icmp samesign ult i64 %1, 23
  %i.b = add nuw nsw i64 %1, 23
  %i.c = and i64 %i.b, 496
  %i.d = select i1 %2, i64 32, i64 %i.c           ; 8 uses
  %i.e = lshr exact i64 %i.d, 3
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 4 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.h = lshr i32 %i.g, %i.f                      ; 4 uses
  %i.i = and i32 %i.h, 3
  %.not177 = icmp eq i32 %i.i, 0
  br i1 %.not177, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 1
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = xor i32 %i.k, 1                          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = shl nuw nsw i32 %i.l, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 4 uses
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw i32 1, %i.l
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.g, %i.w
  store i32 %i.x, ptr %0, align 8, !tbaa !19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %.not185 = icmp ult ptr %i.t, %i.z
  br i1 %.not185, label %.critedge, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = icmp eq ptr %i.ab, %i.r
  br i1 %i.ac, label %bb.g, label %.critedge, !prof !25

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.aa, align 8, !tbaa !24
  store ptr %i.t, ptr %i.q, align 8, !tbaa !20
  br label %bb.h

.critedge:                                        ; preds = %bb.e, %bb.f
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ad = shl nuw nsw i32 %i.l, 3
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = or disjoint i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = or i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !26
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27 ; 3 uses
  %i.an = icmp ugt i64 %i.d, %i.am
  br i1 %i.an, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %.not178 = icmp eq i32 %i.h, 0
  br i1 %.not178, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = shl i32 %i.h, %i.f
  %i.ap = shl nuw i32 2, %i.f                     ; 2 uses
  %i.aq = sub i32 0, %i.ap
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = and i32 %i.ao, %i.ar
  %i.at = tail call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %i.as, i1 true) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = shl nuw nsw i32 %i.at, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 4 uses
  %i.bc = icmp eq ptr %i.ax, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = shl nuw i32 1, %i.at
  %i.be = xor i32 %i.bd, -1
  %i.bf = and i32 %i.g, %i.be                     ; 2 uses
  store i32 %i.bf, ptr %0, align 8, !tbaa !19
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %.not181 = icmp ult ptr %i.bb, %i.bh
  br i1 %.not181, label %.critedge188, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !24
  %i.bk = icmp eq ptr %i.bj, %i.az
  br i1 %i.bk, label %bb.o, label %.critedge188, !prof !25

bb.o:                                             ; preds = %bb.n
  store ptr %i.ax, ptr %i.bi, align 8, !tbaa !24
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !20
  br label %bb.p

.critedge188:                                     ; preds = %bb.m, %bb.n
  tail call void @abort() #18
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bl = phi i32 [ %i.g, %bb.o ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bm = shl nuw nsw i32 %i.at, 3
  %i.bn = zext nneg i32 %i.bm to i64              ; 4 uses
  %i.bo = sub nsw i64 %i.bn, %i.d                 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = or disjoint i64 %i.bn, 3
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = or i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bw = or disjoint i64 %i.d, 3
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.d ; 2 uses
  %i.by = or disjoint i64 %i.bo, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bn
  store i64 %i.bo, ptr %i.ca, align 8, !tbaa !28
  %.not182 = icmp eq i64 %i.am, 0
  br i1 %.not182, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 4 uses
  %i.cd = lshr i64 %i.am, 3                       ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i64 %i.cd, 1
  %i.cg = and i64 %i.cf, 4294967294
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cg ; 4 uses
  %i.ci = shl nuw nsw i32 1, %i.ce                ; 2 uses
  %i.cj = and i32 %i.bl, %i.ci
  %.not183 = icmp eq i32 %i.cj, 0
  br i1 %.not183, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = or i32 %i.bl, %i.ci
  store i32 %i.ck, ptr %0, align 8, !tbaa !19
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22
  %.not184 = icmp ult ptr %i.cm, %i.co
  br i1 %.not184, label %bb.v, label %bb.w, !prof !23

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #18
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t
  %.0158 = phi ptr [ %i.ch, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cc, ptr %i.cp, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %.0158, i64 24
  store ptr %i.cc, ptr %i.cq, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %.0158, ptr %i.cr, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ch, ptr %i.cs, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  store i64 %i.bo, ptr %i.al, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bx, ptr %i.ct, align 8, !tbaa !29
  br label %.thread

bb.y:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %.not179 = icmp eq i32 %i.cv, 0
  br i1 %.not179, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = tail call fastcc ptr @tmalloc_small(ptr noundef nonnull %0, i64 noundef %i.d)
  br label %.thread

bb.aa:                                            ; preds = %bb.a
  %i.cx = icmp ugt i64 %1, -129
  br i1 %i.cx, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = add nuw i64 %1, 23
  %i.cz = and i64 %i.cy, -16                      ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = tail call fastcc ptr @tmalloc_large(ptr noundef nonnull %0, i64 noundef %i.cz) ; 2 uses
  %.not176 = icmp eq ptr %i.dc, null
  br i1 %.not176, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.i, %bb.y, %bb.aa, %bb.ac, %bb.ab
  %.0156 = phi i64 [ -1, %bb.aa ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.ac ], [ %i.d, %bb.y ], [ %i.d, %bb.i ] ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27 ; 5 uses
  %.not186 = icmp ugt i64 %.0156, %i.de
  br i1 %.not186, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = sub nuw i64 %i.de, %.0156               ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 6 uses
  %i.di = icmp ugt i64 %i.df, 31
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.0156 ; 2 uses
  %i.dk = or i64 %i.df, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  store i64 %i.df, ptr %i.dm, align 8, !tbaa !28
  %i.dn = or i64 %.0156, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dp = or i64 %i.de, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26
  %i.du = or i64 %i.dt, 1
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink192 = phi ptr [ %i.dj, %bb.af ], [ null, %bb.ag ]
  %.sink = phi i64 [ %i.df, %bb.af ], [ 0, %bb.ag ]
  store ptr %.sink192, ptr %i.dg, align 8, !tbaa !29
  store i64 %.sink, ptr %i.dd, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %i.dy = icmp ult i64 %.0156, %i.dx
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = sub nuw i64 %i.dx, %.0156               ; 2 uses
  store i64 %i.dz, ptr %i.dw, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !32 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0156 ; 2 uses
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !32
  %i.ed = or i64 %i.dz, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !26
  %i.ef = or i64 %.0156, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ei = tail call fastcc ptr @sys_alloc(ptr noundef nonnull %0, i64 noundef %.0156)
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.q, %bb.z, %bb.h, %bb.ak, %bb.ac, %bb.ah, %bb.aj
  %.2 = phi ptr [ %i.dv, %bb.ah ], [ %i.eh, %bb.aj ], [ %i.ei, %bb.ak ], [ %i.dc, %bb.ac ], [ %i.ba, %bb.x ], [ %i.ba, %bb.q ], [ %i.cw, %bb.z ], [ %i.s, %bb.h ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @boost_cont_multialloc_arrays(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %.not.i14 = icmp eq i64 %2, 0
  br i1 %.not.i14, label %internal_multialloc_arrays.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.k = udiv i64 -128, %2                        ; 2 uses
  switch i64 %3, label %bb.i [
    i64 0, label %bb.k
    i64 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %internal_multialloc_arrays.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = mul i64 %3, %2
  %i.n = add i64 %i.m, -8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.0101.i = phi i64 [ %i.n, %bb.j ], [ -128, %bb.h ], [ 4088, %bb.g ]
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10 ; 2 uses
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = and i32 %i.o, -2
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %.not13147.i = icmp eq i64 %0, 0
  br i1 %.not13147.i, label %._crit_edge50.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not139.i = icmp eq i32 %i.p, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.backedge.i, %.preheader.lr.ph.i
  %.010648.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.0106.be.i, %.backedge.i ] ; 10 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.preheader.i
  %.111033.i = phi i64 [ %.010648.i, %.preheader.i ], [ %i.ac, %bb.n ] ; 3 uses
  %.011632.i = phi i64 [ 0, %.preheader.i ], [ %i.ab, %bb.n ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.111033.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %i.v = icmp ult i64 %i.k, %i.u
  br i1 %i.v, label %.thread18.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = mul i64 %i.u, %2                         ; 2 uses
  %5 = icmp ult i64 %i.w, 23
  %6 = add i64 %i.w, 23
  %7 = and i64 %6, -16
  %i.x = select i1 %5, i64 32, i64 %7             ; 3 uses
  %i.y = sub i64 %.0101.i, %.011632.i
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %.thread13.i, label %bb.n

.thread13.i:                                      ; preds = %bb.m
  %.not134.i = icmp eq i64 %.011632.i, 0          ; 2 uses
  %spec.select.i = select i1 %.not134.i, i64 %i.x, i64 %.011632.i
  %i.aa = zext i1 %.not134.i to i64
  %spec.select141.i = add i64 %.111033.i, %i.aa
  br label %.thread5.i

bb.n:                                             ; preds = %bb.m
  %i.ab = add i64 %i.x, %.011632.i                ; 2 uses
  %i.ac = add i64 %.111033.i, 1                   ; 2 uses
  %.not133.i = icmp eq i64 %i.ac, %0
  br i1 %.not133.i, label %.thread5.i, label %bb.l, !llvm.loop !93

.thread5.i:                                       ; preds = %bb.n, %.thread13.i
  %.512.i = phi i64 [ %spec.select141.i, %.thread13.i ], [ %0, %bb.n ] ; 7 uses
  %.412010.i = phi i64 [ %spec.select.i, %.thread13.i ], [ %i.ab, %bb.n ]
  %i.ad = add i64 %.412010.i, -8
  %i.ae = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.ad) ; 8 uses
  %.not140.i = icmp eq ptr %i.ae, null
  br i1 %.not140.i, label %.thread18.i, label %bb.o

.thread18.i:                                      ; preds = %.thread5.i, %bb.l
  %.not13842.i = icmp eq i64 %.010648.i, 0
  br i1 %.not13842.i, label %._crit_edge46.i, label %.lr.ph45.preheader.i

.lr.ph45.preheader.i:                             ; preds = %.thread18.i
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !94
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i, %.lr.ph45.preheader.i
  %.110744.i = phi i64 [ %i.ag, %.lr.ph45.i ], [ %.010648.i, %.lr.ph45.preheader.i ]
  %.sroa.018.043.i = phi ptr [ %i.ah, %.lr.ph45.i ], [ %i.af, %.lr.ph45.preheader.i ] ; 3 uses
  %i.ag = add i64 %.110744.i, -1                  ; 2 uses
  %i.ah = load ptr, ptr %.sroa.018.043.i, align 8, !tbaa !98
  %i.ai = getelementptr inbounds i8, ptr %.sroa.018.043.i, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = and i64 %i.aj, -8
  %i.al = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.am = sub i64 %i.al, %i.ak
  store i64 %i.am, ptr @s_allocated_memory, align 8, !tbaa !39
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.018.043.i)
  %.not138.i = icmp eq i64 %i.ag, 0
  br i1 %.not138.i, label %._crit_edge46.i, label %.lr.ph45.i, !llvm.loop !99

._crit_edge46.i:                                  ; preds = %.lr.ph45.i, %.thread18.i
  br i1 %.not139.i, label %internal_multialloc_arrays.exit, label %.loopexit.sink.split.i, !llvm.loop !100

bb.o:                                             ; preds = %.thread5.i
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = and i64 %i.ap, -8                       ; 4 uses
  %i.ar = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.as = add i64 %i.ar, %i.aq
  store i64 %i.as, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !101 ; 3 uses
  %i.au = sub i64 %.512.i, %.010648.i
  %.210834.i = add i64 %.010648.i, 1              ; 3 uses
  %.not13635.i = icmp eq i64 %.210834.i, %.512.i
  br i1 %.not13635.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.av = add i64 %.512.i, -2
  %i.aw = sub i64 %.010648.i, %.512.i
  %i.ax = and i64 %i.aw, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.210834.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = mul i64 %i.az, %2                       ; 2 uses
  %8 = icmp ult i64 %i.ba, 23
  %9 = add i64 %i.ba, 23
  %10 = and i64 %9, -16
  %i.bb = select i1 %8, i64 32, i64 %10           ; 3 uses
  %i.bc = sub i64 %i.aq, %i.bb                    ; 2 uses
  %i.bd = or disjoint i64 %i.bb, 3
  %i.be = getelementptr inbounds i8, ptr %i.ae, i64 -8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.ae, align 8, !tbaa !76
  %.2108.i.prol = add i64 %.010648.i, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa82.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %.lcssa81.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.lcssa80.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %.210839.i.unr = phi i64 [ %.210834.i, %.lr.ph.i.preheader ], [ %.2108.i.prol, %.lr.ph.i.prol ]
  %.09838.i.unr = phi ptr [ %i.ae, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %.09937.i.unr = phi ptr [ %i.an, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.010036.i.unr = phi i64 [ %i.aq, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bh = icmp eq i64 %i.av, %.010648.i
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.210839.i = phi i64 [ %.2108.i.1, %.lr.ph.i ], [ %.210839.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.09838.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.09838.i.unr, %.lr.ph.i.prol.loopexit ]
  %.09937.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.09937.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.010036.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %.010036.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.210839.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = mul i64 %i.bj, %2                       ; 2 uses
  %11 = icmp ult i64 %i.bk, 23
  %12 = add i64 %i.bk, 23
  %13 = and i64 %12, -16
  %i.bl = select i1 %11, i64 32, i64 %13          ; 3 uses
  %i.bm = or disjoint i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.09937.i, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %.09937.i, i64 %i.bl ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.bp, ptr %.09838.i, align 8, !tbaa !76
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %.210839.i
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = mul i64 %i.bs, %2                       ; 2 uses
  %14 = icmp ult i64 %i.bt, 23
  %15 = add i64 %i.bt, 23
  %16 = and i64 %15, -16
  %i.bu = select i1 %14, i64 32, i64 %16          ; 3 uses
  %i.bv = add i64 %i.bl, %i.bu
  %i.bw = sub i64 %.010036.i, %i.bv               ; 2 uses
  %i.bx = or disjoint i64 %i.bu, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !76
  %.2108.i.1 = add i64 %.210839.i, 2              ; 2 uses
  %.not136.i.1 = icmp eq i64 %.2108.i.1, %.512.i
  br i1 %.not136.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.o
  %.0100.lcssa.i = phi i64 [ %i.aq, %bb.o ], [ %.lcssa82.unr, %.lr.ph.i.prol.loopexit ], [ %i.bw, %.lr.ph.i ]
  %.099.lcssa.i = phi ptr [ %i.an, %bb.o ], [ %.lcssa81.unr, %.lr.ph.i.prol.loopexit ], [ %i.bz, %.lr.ph.i ]
  %.098.lcssa.i = phi ptr [ %i.ae, %bb.o ], [ %.lcssa80.unr, %.lr.ph.i.prol.loopexit ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %i.cb = or disjoint i64 %.0100.lcssa.i, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %.099.lcssa.i, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !26
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !98
  %.not137.i = icmp eq i64 %.512.i, %.010648.i
  br i1 %.not137.i, label %.backedge.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.cf = icmp eq ptr %i.at, %i.ce
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.098.lcssa.i, ptr %i.r, align 8, !tbaa !101
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !98
  store ptr %i.cd, ptr %.098.lcssa.i, align 8, !tbaa !98
  %i.cg = load i64, ptr %4, align 8, !tbaa !103
  %i.ch = add i64 %i.au, %i.cg
  store i64 %i.ch, ptr %4, align 8, !tbaa !103
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.r, %._crit_edge.i
  %.0106.be.i = phi i64 [ %.512.i, %bb.r ], [ %.010648.i, %._crit_edge.i ] ; 2 uses
  %.not131.i = icmp eq i64 %.0106.be.i, %0
  br i1 %.not131.i, label %._crit_edge50.i, label %.preheader.i, !llvm.loop !100

._crit_edge50.i:                                  ; preds = %.backedge.i, %bb.k
  %.not132.i = icmp eq i32 %i.p, 0
  br i1 %.not132.i, label %internal_multialloc_arrays.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge50.i, %._crit_edge46.i
  %.3.ph.i = phi i32 [ 0, %._crit_edge46.i ], [ 1, %._crit_edge50.i ]
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  br label %internal_multialloc_arrays.exit

internal_multialloc_arrays.exit:                  ; preds = %spin_acquire_lock.exit, %bb.i, %._crit_edge46.i, %._crit_edge50.i, %.loopexit.sink.split.i
  %.3.i = phi i32 [ 0, %spin_acquire_lock.exit ], [ 0, %bb.i ], [ 1, %._crit_edge50.i ], [ 0, %._crit_edge46.i ], [ %.3.ph.i, %.loopexit.sink.split.i ]
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.cl = and i32 %i.ck, 2
  %.not13 = icmp eq i32 %i.cl, 0
  br i1 %.not13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %internal_multialloc_arrays.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.t

bb.t:                                             ; preds = %internal_multialloc_arrays.exit, %bb.s
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @boost_cont_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = and i64 %i.b, -8
  %i.d = and i64 %i.b, 3
  %i.e = icmp eq i64 %i.d, 0
  %.neg = select i1 %i.e, i64 -16, i64 -8
  %i.f = add i64 %.neg, %i.c
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define ptr @boost_cont_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call { ptr, i32 } @boost_cont_allocation_command(i32 noundef 1, i64 noundef 1, i64 noundef %0, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define { ptr, i32 } @boost_cont_allocation_command(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %0, 72
  %.not60 = icmp eq i32 %i.b, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i32 %0, 8
  %i.d = tail call i32 @boost_cont_shrink(ptr noundef %5, i64 noundef %3, i64 noundef %2, ptr noundef %4, i32 noundef %i.c)
  %.not72 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not72, ptr null, ptr %5
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8, !tbaa !39
  %i.f = icmp ugt i64 %2, %3
  br i1 %i.f, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.h = and i32 %i.g, 2
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %spin_acquire_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not62 = icmp eq i32 %i.i, 0
  br i1 %.not62, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader.backedge
  %.0.i = phi i32 [ %i.l, %.preheader.backedge ], [ 0, %bb.g ]
  %i.j = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.preheader
  %i.k = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %.preheader
  %i.l = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.m = and i32 %i.l, 63
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %.preheader.backedge

bb.i:                                             ; preds = %.critedge.i
  %i.o = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.h, %bb.f, %bb.g
  %.not63 = icmp eq ptr %5, null
  %i.p = and i32 %0, 6
  %.not64 = icmp eq i32 %i.p, 0
  %or.cond = or i1 %.not64, %.not63               ; 2 uses
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %spin_acquire_lock.exit
  %i.q = tail call fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %1, i32 noundef 1) ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %spin_acquire_lock.exit
  %i.r = and i32 %0, 1
  %.not66 = icmp eq i32 %i.r, 0
  br i1 %.not66, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %3) ; 2 uses
  %.not67 = icmp eq ptr %i.s, null
  br i1 %.not67, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %2) ; 2 uses
  %.not68 = icmp eq ptr %i.t, null
  br i1 %.not68, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %.079 = phi ptr [ %i.t, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
end_hunk_4
begin_hunk_5_@mspace_free_lockless:bb.a
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.da, %bb.dc
  %.0355 = phi i32 [ %i.hm, %bb.dc ], [ 0, %bb.da ], [ 31, %bb.db ] ; 5 uses
  %i.hn = zext nneg i32 %.0355 to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.1, i64 56
  store i32 %.0355, ptr %i.hp, align 8, !tbaa !49
  %i.hq = getelementptr inbounds nuw i8, ptr %.1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !30 ; 2 uses
  %i.hs = shl nuw i32 1, %.0355                   ; 2 uses
  %i.ht = and i32 %i.hr, %i.hs
  %.not446 = icmp eq i32 %i.ht, 0
  br i1 %.not446, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.hu = or i32 %i.hr, %i.hs
  store i32 %i.hu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !30
  store ptr %.1, ptr %i.ho, align 8, !tbaa !40
  br label %bb.dn

bb.df:                                            ; preds = %bb.dd
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.hw = icmp eq i32 %.0355, 31
  %i.hx = lshr i32 %.0355, 1
  %i.hy = add nuw nsw i32 %i.hx, 6
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = sub nuw nsw i64 63, %i.hz
  %i.ib = select i1 %i.hw, i64 0, i64 %i.ia
  %i.ic = shl i64 %.2, %i.ib
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dh, %bb.df
  %.0348 = phi ptr [ %i.hv, %bb.df ], [ %i.ik, %bb.dh ] ; 6 uses
  %.0347 = phi i64 [ %i.ic, %bb.df ], [ %i.ij, %bb.dh ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0348, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !42
  %i.if = and i64 %i.ie, -8
  %.not447 = icmp eq i64 %i.if, %.2
  br i1 %.not447, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ig = getelementptr inbounds nuw i8, ptr %.0348, i64 32 ; 2 uses
  %i.ih = lshr i64 %.0347, 63                     ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = shl i64 %.0347, 1
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !40 ; 2 uses
  %.not449 = icmp eq ptr %i.ik, null
  br i1 %.not449, label %bb.di, label %bb.dg

bb.di:                                            ; preds = %bb.dh
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %.not450 = icmp ult ptr %i.il, %i.b
  br i1 %.not450, label %bb.dj, label %.thread7, !prof !23

.thread7:                                         ; preds = %bb.di
  store ptr %.1, ptr %i.il, align 8, !tbaa !40
  br label %bb.dn

bb.dj:                                            ; preds = %bb.di
  tail call void @abort() #18
  unreachable

bb.dk:                                            ; preds = %bb.dg
  %i.im = getelementptr inbounds nuw i8, ptr %.0348, i64 16 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !47 ; 3 uses
  %.not448 = icmp uge ptr %.0348, %i.b
  %i.io = icmp uge ptr %i.in, %i.b
  %spec.select = select i1 %.not448, i1 %i.io, i1 false, !prof !25
  br i1 %spec.select, label %bb.dl, label %bb.dm, !prof !25

bb.dl:                                            ; preds = %bb.dk
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store ptr %.1, ptr %i.ip, align 8, !tbaa !46
  store ptr %.1, ptr %i.im, align 8, !tbaa !47
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  tail call void @abort() #18
  unreachable

bb.dn:                                            ; preds = %.thread7, %bb.dl, %bb.de
  %.sink62 = phi i64 [ 48, %.thread7 ], [ 16, %bb.dl ], [ 48, %bb.de ]
  %.0348.lcssa57.sink = phi ptr [ %.0348, %.thread7 ], [ %i.in, %bb.dl ], [ %i.ho, %bb.de ]
  %.1.sink61 = phi ptr [ %.1, %.thread7 ], [ %.0348, %bb.dl ], [ %.1, %bb.de ]
  %.sink60 = phi i64 [ 16, %.thread7 ], [ 48, %bb.dl ], [ 16, %bb.de ]
  %.1.sink = phi ptr [ %.1, %.thread7 ], [ null, %bb.dl ], [ %.1, %bb.de ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink62
  store ptr %.0348.lcssa57.sink, ptr %i.iq, align 8, !tbaa !40
  %i.ir = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.1.sink61, ptr %i.ir, align 8, !tbaa !46
  %i.is = getelementptr inbounds nuw i8, ptr %.1, i64 %.sink60
  store ptr %.1.sink, ptr %i.is, align 8, !tbaa !40
  %i.it = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 56), align 8, !tbaa !59
  %i.iu = add i64 %i.it, -1                       ; 2 uses
  store i64 %i.iu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 56), align 8, !tbaa !59
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.do, label %.critedge467.thread

bb.do:                                            ; preds = %bb.dn
  %i.iw = tail call fastcc i64 @release_unused_segments(ptr noundef nonnull @_gm_) ; 0 uses
  br label %.critedge467.thread

.critedge455:                                     ; preds = %.thread, %bb.ax, %bb.h, %bb.b, %bb.c
  tail call void @abort() #18
  unreachable

.critedge467.thread:                              ; preds = %bb.aw, %bb.g, %bb.f, %bb.do, %bb.dn, %bb.bd, %bb.cz, %.thread5, %bb.bf, %bb.bc, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @boost_cont_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ult i64 %1, 17
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @mspace_malloc(ptr noundef nonnull @_gm_, i64 noundef %0)
  br label %mspace_memalign.exit

bb.e:                                             ; preds = %bb.c
  %i.d = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %1, i64 noundef %0)
  br label %mspace_memalign.exit

mspace_memalign.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.c, %bb.d ], [ %i.d, %bb.e ] ; 3 uses
  %.not4 = icmp eq ptr %.0.i, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mspace_memalign.exit
  %i.e = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  %i.g = and i64 %i.f, -8
  %i.h = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr @s_allocated_memory, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mspace_memalign.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @boost_cont_multialloc_nodes(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %4 = icmp ult i64 %1, 23
  %i.k = add i64 %1, 23
  %i.l = and i64 %i.k, -16
  %i.m = select i1 %4, i64 32, i64 %i.l           ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %.not.i13 = icmp eq i64 %1, 0
  br i1 %.not.i13, label %internal_node_multialloc.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.p = add i64 %2, -1
  %i.q = icmp ult i64 %i.p, -2
  %i.r = icmp ult i64 %0, %2
  %or.cond.i = and i1 %i.r, %i.q
  br i1 %or.cond.i, label %internal_node_multialloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = or i64 %i.m, %2
  %i.t = icmp ugt i64 %i.s, 4294967295
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 %2)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %internal_node_multialloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i64 %2, label %bb.l [
    i64 0, label %bb.k
    i64 -1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = udiv i64 4096, %i.m
  %.not93.i = icmp ugt i64 %i.m, 4096
  %i.v = zext i1 %.not93.i to i64
  %i.w = add nuw nsw i64 %i.u, %i.v
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.086.i = phi i64 [ %2, %bb.l ], [ %i.w, %bb.k ], [ %0, %bb.j ]
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10 ; 2 uses
  %i.y = and i32 %i.x, 1
  %i.z = and i32 %i.x, -2
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.aa = or disjoint i64 %i.m, 3                 ; 5 uses
  %.not98.i = icmp eq i32 %i.y, 0                 ; 2 uses
  %.not94.i18 = icmp eq i64 %0, 0
  br i1 %.not94.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %.089.i19 = phi i64 [ %i.ad, %bb.p ], [ 0, %bb.m ] ; 4 uses
  %i.ab = sub i64 %0, %.089.i19
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.086.i) ; 4 uses
  %i.ad = add i64 %i.ac, %.089.i19                ; 2 uses
  %i.ae = mul i64 %i.ac, %i.m
  %i.af = add i64 %i.ae, -8
  %i.ag = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.af) ; 6 uses
  %.not99.i = icmp eq ptr %i.ag, null
  br i1 %.not99.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %.not979.i = icmp eq i64 %.089.i19, 0
  br i1 %.not979.i, label %._crit_edge14.i, label %.lr.ph13.i.preheader

.lr.ph13.i.preheader:                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !98
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %.sroa.0.111.i = phi ptr [ %i.aj, %.lr.ph13.i ], [ %i.ah, %.lr.ph13.i.preheader ] ; 3 uses
  %.19010.i = phi i64 [ %i.ai, %.lr.ph13.i ], [ %.089.i19, %.lr.ph13.i.preheader ]
  %i.ai = add i64 %.19010.i, -1                   ; 2 uses
  %i.aj = load ptr, ptr %.sroa.0.111.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.111.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.am = and i64 %i.al, -8
  %i.an = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.ao = sub i64 %i.an, %i.am
  store i64 %i.ao, ptr @s_allocated_memory, align 8, !tbaa !39
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.0.111.i)
  %.not97.i = icmp eq i64 %i.ai, 0
  br i1 %.not97.i, label %._crit_edge14.i, label %.lr.ph13.i, !llvm.loop !106

._crit_edge14.i:                                  ; preds = %.lr.ph13.i, %bb.n
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.av = add i64 %i.ac, -1                       ; 6 uses
  %i.aw = mul i64 %i.av, %i.m
  %i.ax = sub i64 %i.as, %i.aw
  %.not963.i = icmp eq i64 %i.av, 0
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !101 ; 3 uses
  %.pre21.i = load i64, ptr %3, align 8, !tbaa !103 ; 2 uses
  br i1 %.not963.i, label %bb.p, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.ay = add i64 %i.ac, -2
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.az = phi ptr [ %.0836.i.prol, %.lr.ph.i.prol ], [ %.pre.i, %.lr.ph.i.preheader ]
  %.0836.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %i.ag, %.lr.ph.i.preheader ] ; 5 uses
  %.0845.i.prol = phi ptr [ %i.bc, %.lr.ph.i.prol ], [ %i.ap, %.lr.ph.i.preheader ] ; 2 uses
  %.0854.i.prol = phi i64 [ %i.ba, %.lr.ph.i.prol ], [ %i.av, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = add i64 %.0854.i.prol, -1               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 8
  store i64 %i.aa, ptr %i.bb, align 8, !tbaa !26
  store ptr %.0836.i.prol, ptr %i.az, align 8, !tbaa !98
  store ptr null, ptr %.0836.i.prol, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 %i.m ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !107

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0836.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.lcssa30.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.pre.i, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.0836.i.unr = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.0845.i.unr = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %.0854.i.unr = phi i64 [ %i.av, %.lr.ph.i.preheader ], [ %i.ba, %.lr.ph.i.prol ]
  %i.be = icmp ult i64 %i.ay, 3
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bf = phi ptr [ %i.bo, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %.0836.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.0836.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0845.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.0845.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0854.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %.0854.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0845.i, i64 8
  store i64 %i.aa, ptr %i.bg, align 8, !tbaa !26
  store ptr %.0836.i, ptr %i.bf, align 8, !tbaa !98
  store ptr null, ptr %.0836.i, align 8, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %.0845.i, i64 %i.m ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.aa, ptr %i.bj, align 8, !tbaa !26
  store ptr %i.bi, ptr %.0836.i, align 8, !tbaa !98
  store ptr null, ptr %i.bi, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.m ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.aa, ptr %i.bm, align 8, !tbaa !26
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !98
  store ptr null, ptr %i.bl, align 8, !tbaa !98
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.m ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  %i.bp = add i64 %.0854.i, -4                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.aa, ptr %i.bq, align 8, !tbaa !26
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !98
  store ptr null, ptr %i.bo, align 8, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.m ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.not96.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not96.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !108

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.0836.i.lcssa = phi ptr [ %.0836.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bo, %.lr.ph.i ]
  %.lcssa30 = phi ptr [ %.lcssa30.unr, %.lr.ph.i.prol.loopexit ], [ %i.br, %.lr.ph.i ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bs, %.lr.ph.i ]
  %i.bt = add i64 %i.av, %.pre21.i
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %bb.o
  %i.bu = phi i64 [ %i.bt, %._crit_edge.i ], [ %.pre21.i, %bb.o ]
  %i.bv = phi ptr [ %.0836.i.lcssa, %._crit_edge.i ], [ %.pre.i, %bb.o ]
  %.084.lcssa.i = phi ptr [ %.lcssa30, %._crit_edge.i ], [ %i.ap, %bb.o ]
  %.083.lcssa.i = phi ptr [ %.lcssa, %._crit_edge.i ], [ %i.ag, %bb.o ] ; 3 uses
  %i.bw = or disjoint i64 %i.ax, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.084.lcssa.i, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !26
  store ptr %.083.lcssa.i, ptr %i.bv, align 8, !tbaa !98
  store ptr null, ptr %.083.lcssa.i, align 8, !tbaa !98
  store ptr %.083.lcssa.i, ptr %i.n, align 8, !tbaa !101
  %i.by = add i64 %i.bu, 1
  store i64 %i.by, ptr %3, align 8, !tbaa !103
  %.not94.i = icmp eq i64 %i.ad, %0
  br i1 %.not94.i, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.p, %bb.m
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge, %._crit_edge14.i
  %.not94.i16 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge14.i ]
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.ca = or i32 %i.bz, 1
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
end_hunk_5
begin_hunk_6_@boost_cont_malloc_stats:bb.a
  br label %.preheader.i, !llvm.loop !17

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !32, !noalias !112 ; 2 uses
  %.not40.i = icmp eq ptr %i.k, null
  br i1 %.not40.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit.i
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54, !noalias !112
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53, !noalias !112 ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !31, !noalias !112
  %.neg1.i = add i64 %i.m, -80
  %i.o = sub i64 %.neg1.i, %i.n
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.g
  %.03110.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_gm_, i64 888), %bb.g ], [ %i.ah, %.critedge.i ] ; 3 uses
  %.0329.i = phi i64 [ %i.o, %bb.g ], [ %.1.lcssa.ph.i, %.critedge.i ]
  %i.p = load ptr, ptr %.03110.i, align 8, !tbaa !61, !noalias !112 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 15                         ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = sub nuw nsw i64 16, %i.s
  %spec.select.i = select i1 %i.t, i64 0, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03110.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62, !noalias !112
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.04.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.af, %bb.j ] ; 4 uses
  %.13.i = phi i64 [ %.0329.i, %.lr.ph.i ], [ %.2.i, %bb.j ] ; 3 uses
  %i.z = icmp uge ptr %.04.i, %i.y
  %.not44.i = icmp eq ptr %.04.i, %i.k
  %or.cond.i = or i1 %.not44.i, %i.z
  br i1 %or.cond.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26, !noalias !112 ; 3 uses
  %.not45.i = icmp eq i64 %i.ab, 11
  br i1 %.not45.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = and i64 %i.ab, 2
  %.not46.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %i.ab, -8                       ; 2 uses
  %i.ae = select i1 %.not46.i, i64 %i.ad, i64 0
  %.2.i = sub i64 %.13.i, %i.ae                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i, i64 %i.ad ; 2 uses
  %.not43.i = icmp ult ptr %i.af, %i.p
  br i1 %.not43.i, label %.critedge.i, label %bb.h, !llvm.loop !115

.critedge.i:                                      ; preds = %bb.j, %bb.i, %bb.h
  %.1.lcssa.ph.i = phi i64 [ %.13.i, %bb.i ], [ %.2.i, %bb.j ], [ %.13.i, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03110.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63, !noalias !112 ; 2 uses
  %.not41.i = icmp eq ptr %i.ah, null
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !116

.loopexit.i:                                      ; preds = %.critedge.i, %spin_acquire_lock.exit.i
  %.034.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.l, %.critedge.i ]
  %.033.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.m, %.critedge.i ]
  %.3.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %.1.lcssa.ph.i, %.critedge.i ]
  store i64 %.034.i, ptr %0, align 8, !tbaa !117, !alias.scope !112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.033.i, ptr %i.ai, align 8, !tbaa !119, !alias.scope !112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.3.i, ptr %i.aj, align 8, !tbaa !120, !alias.scope !112
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10, !noalias !112
  %i.al = and i32 %i.ak, 2
  %.not42.i = icmp eq i32 %i.al, 0
  br i1 %.not42.i, label %get_malloc_stats.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4, !noalias !112
  br label %get_malloc_stats.exit

get_malloc_stats.exit:                            ; preds = %.loopexit.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i64 @boost_cont_in_use_memory() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @boost_cont_trim(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  %.pr = load i64, ptr @mparams, align 8, !tbaa !7
  %.not.i = icmp eq i64 %.pr, 0
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @init_mparams()
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not2.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.g, %.preheader.i.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.preheader.i
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i.i, label %spin_acquire_lock.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.preheader.i
  %i.g = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.i.backedge

bb.f:                                             ; preds = %.critedge.i.i
  %i.j = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !17

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %.thread
  %i.k = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef %0)
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.m = and i32 %i.l, 2
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %dlmalloc_trim.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %dlmalloc_trim.exit

dlmalloc_trim.exit:                               ; preds = %spin_acquire_lock.exit.i, %bb.g
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @boost_cont_grow(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.f, %.preheader.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.e = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.f = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.g = and i32 %i.f, 63
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.i = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = and i64 %i.l, -8
  %4 = icmp ult i64 %1, 23
  %i.n = add i64 %1, 23
  %i.o = and i64 %i.n, -16
  %5 = select i1 %4, i64 32, i64 %i.o
  %6 = icmp ult i64 %2, 23
  %i.p = add i64 %2, 23
  %i.q = and i64 %i.p, -16
  %i.r = select i1 %6, i64 32, i64 %i.q
  %i.s = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.j, i64 noundef %5, i64 noundef %i.r) ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.u = and i32 %i.t, 2
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %spin_acquire_lock.exit
  %i.v = icmp ne ptr %i.s, null                   ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.x = and i64 %i.w, -8
  %i.y = and i64 %i.w, 3
  %i.z = icmp eq i64 %i.y, 0
  %.neg = select i1 %i.z, i64 -16, i64 -8
  %i.aa = add i64 %.neg, %i.x
  store i64 %i.aa, ptr %3, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = and i64 %i.ac, -8
  %i.ae = sub i64 %i.ad, %i.m
  %i.af = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.ag = add i64 %i.ae, %i.af
  store i64 %i.ag, ptr @s_allocated_memory, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ah = zext i1 %i.v to i32
  ret i32 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_realloc_chunk_with_min(ptr noundef %0, i64 noundef range(i64 0, -15) %1, i64 noundef range(i64 0, -15) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %i.c = and i64 %i.b, -8                         ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 20 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22 ; 9 uses
  %.not = icmp ult ptr %0, %i.e
  %i.f = and i64 %i.b, 3                          ; 2 uses
  %.not274 = icmp eq i64 %i.f, 1
  %.not275 = icmp eq i64 %i.c, 0
  %i.g = or i1 %.not274, %.not275
  %or.cond302 = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond302, label %.critedge304, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 5 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %.critedge304, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %2, 256
  br i1 %i.l, label %mmap_resize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %2, 8
  %.not.i = icmp ult i64 %i.c, %i.m
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sub nuw i64 %i.c, %2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33
  %i.p = shl i64 %i.o, 1
  %.not43.i = icmp ugt i64 %i.n, %i.p
  br i1 %.not43.i, label %bb.g, label %mmap_resize.exit319

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load i64, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.r = add i64 %i.c, 32
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 2 uses
  %i.u = add i64 %2, 62
  %i.v = add i64 %i.u, %i.t
  %i.w = sub i64 0, %i.t
  %i.x = and i64 %i.v, %i.w                       ; 4 uses
  %i.y = sub i64 0, %i.q
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.z, i64 noundef %i.s, i64 noundef %i.x, i32 noundef 0) #17 ; 5 uses
  %.not44.i = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i, label %.mmap_resize.exit_crit_edge, label %bb.h

.mmap_resize.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !26
  %.pre3 = and i64 %.pre, -8
  br label %mmap_resize.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q ; 4 uses
  %i.ac = sub i64 %i.x, %i.q
  %i.ad = add i64 %i.ac, -32                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 11, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.x
  %i.ai = getelementptr i8, ptr %i.ah, i64 -16
  store i64 0, ptr %i.ai, align 8, !tbaa !26
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %i.ak = icmp ult ptr %i.aa, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = sub i64 %i.x, %i.s
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %mmap_resize.exit319

bb.k:                                             ; preds = %bb.j
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  br label %mmap_resize.exit319

mmap_resize.exit:                                 ; preds = %.mmap_resize.exit_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre3, %.mmap_resize.exit_crit_edge ], [ %i.c, %bb.d ] ; 3 uses
  %i.aq = icmp ult i64 %1, 256
  br i1 %i.aq, label %mmap_resize.exit319, label %bb.l

bb.l:                                             ; preds = %mmap_resize.exit
  %i.ar = add nuw i64 %1, 8
  %.not.i315 = icmp ult i64 %.pre-phi, %i.ar
  br i1 %.not.i315, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %.pre-phi, %1
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33
  %i.au = shl i64 %i.at, 1
  %.not43.i316 = icmp ugt i64 %i.as, %i.au
  br i1 %.not43.i316, label %bb.n, label %mmap_resize.exit319

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = load i64, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.aw = add i64 %.pre-phi, 32
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 2 uses
  %i.az = add i64 %1, 62
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = sub i64 0, %i.ay
  %i.bc = and i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = sub i64 0, %i.av
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd
  %i.bf = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef %i.bc, i32 noundef 0) #17 ; 5 uses
  %.not44.i318 = icmp eq ptr %i.bf, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i318, label %mmap_resize.exit319, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.av ; 4 uses
  %i.bh = sub i64 %i.bc, %i.av
  %i.bi = add i64 %i.bh, -32                      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 11, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.bc
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  store i64 0, ptr %i.bn, align 8, !tbaa !26
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %i.bp = icmp ult ptr %i.bf, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = sub i64 %i.bc, %i.ax
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.bs = add i64 %i.br, %i.bq                    ; 3 uses
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.r, label %mmap_resize.exit319

bb.r:                                             ; preds = %bb.q
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  br label %mmap_resize.exit319

bb.s:                                             ; preds = %bb.c
  %.not276 = icmp ult i64 %i.c, %1
  br i1 %.not276, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_6
begin_hunk_7_@boost_cont_shrink:bb.a

bb.r:                                             ; preds = %bb.q
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = sub i64 %i.at, %i.ao
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.bj = add i64 %i.bi, %i.bh                    ; 3 uses
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !53
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.t, label %internal_shrink.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !54
  br label %internal_shrink.exit

bb.u:                                             ; preds = %bb.j
  %i.bm = sub i64 %i.v, %i.ae                     ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 32
  br i1 %i.bn, label %internal_shrink.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not69.i = icmp eq i32 %4, 0
  br i1 %.not69.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ae ; 2 uses
  %i.bp = and i64 %i.u, 1
  %i.bq = or disjoint i64 %i.ae, %i.bp
  %i.br = or disjoint i64 %i.bq, 2
  store i64 %i.br, ptr %i.k, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = or disjoint i64 %i.bm, 3
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !26
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.bv = or i64 %i.bu, 1
  store i64 %i.bv, ptr %i.aa, align 8, !tbaa !26
  %i.bw = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.bx = sub i64 %i.bw, %i.bm
  store i64 %i.bx, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %i.by)
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !26
  %.pre3.i = and i64 %.pre.i, 3
  %i.bz = icmp eq i64 %.pre3.i, 0
  %i.ca = select i1 %i.bz, i64 -16, i64 -8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi.i = phi i64 [ %i.ca, %bb.w ], [ -8, %bb.v ]
  %i.cb = add i64 %.pre-phi.i, %i.ae
  store i64 %i.cb, ptr %3, align 8, !tbaa !39
  br label %internal_shrink.exit

.critedge.i15:                                    ; preds = %bb.h, %bb.g
  tail call void @abort() #18
  unreachable

internal_shrink.exit:                             ; preds = %bb.e, %bb.f, %bb.i, %bb.k, %bb.m, %bb.n, %bb.s, %bb.t, %bb.u, %bb.x
  %i.cc = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ], [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.x ], [ 1, %bb.n ]
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.ce = and i32 %i.cd, 2
  %.not13 = icmp eq i32 %i.ce, 0
  br i1 %.not13, label %bb.z, label %bb.y

bb.y:                                             ; preds = %internal_shrink.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.z

bb.z:                                             ; preds = %internal_shrink.exit, %bb.y
  ret i32 %i.cc
}

; Function Attrs: nounwind uwtable
define ptr @boost_cont_alloc(i64 noundef %0, i64 noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i32 } @boost_cont_allocation_command(i32 noundef 1, i64 noundef 1, i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @boost_cont_multidealloc(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.b = and i32 %i.a, 2
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %spin_acquire_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not11.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.f, %.preheader.i.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i

bb.c:                                             ; preds = %.preheader.i
  %i.e = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i.i, label %spin_acquire_lock.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %.preheader.i
  %i.f = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.g = and i32 %i.f, 63
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.preheader.i.backedge

bb.d:                                             ; preds = %.critedge.i.i
  %i.i = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.d, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !17

spin_acquire_lock.exit.i:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 2 uses
  %.not121.i = icmp eq ptr %i.k, null
  br i1 %.not121.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %spin_acquire_lock.exit.i, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.k, %spin_acquire_lock.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.0.02.i, align 8, !tbaa !98 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.02.i, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26
  %i.o = and i64 %i.n, -8
  %i.p = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.q = sub i64 %i.p, %i.o
  store i64 %i.q, ptr @s_allocated_memory, align 8, !tbaa !39
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.0.02.i)
  %.not12.i = icmp eq ptr %i.l, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %.lr.ph.i, %spin_acquire_lock.exit.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.s = and i32 %i.r, 2
  %.not13.i = icmp eq i32 %i.s, 0
  br i1 %.not13.i, label %internal_multialloc_free.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %internal_multialloc_free.exit

internal_multialloc_free.exit:                    ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @boost_cont_malloc_check() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) initializes((0, 8)) %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 8 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = and i64 %i.c, -8                         ; 4 uses
  %i.e = and i64 %i.c, 3
  %i.f = icmp eq i64 %i.e, 0
  %.neg = select i1 %i.f, i64 -16, i64 -8
  %i.g = add i64 %.neg, %i.d                      ; 2 uses
  store i64 %i.g, ptr %4, align 8, !tbaa !39
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %bb.b, label %bb.eb

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not413 = icmp ult ptr %i.a, %i.h
  br i1 %.not413, label %.critedge474, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.j = and i64 %i.i, 3                          ; 2 uses
  %.not5 = icmp eq i64 %i.j, 1
  br i1 %.not5, label %.critedge474, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %0, 2
  %.not414 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %.not414, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %7 = icmp ult i64 %2, 23
  %i.l = add i64 %2, 23
  %i.m = and i64 %i.l, -16
  %8 = select i1 %7, i64 32, i64 %i.m
  %9 = icmp ult i64 %3, 23
  %i.n = add i64 %3, 23
  %i.o = and i64 %i.n, -16
  %i.p = select i1 %9, i64 32, i64 %i.o
  %i.q = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.a, i64 noundef %8, i64 noundef %i.p)
  %.not417 = icmp eq ptr %i.q, null
  br i1 %.not417, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.s = and i64 %i.r, -8
  %i.t = and i64 %i.r, 3
  %i.u = icmp eq i64 %i.t, 0
  %.neg472.a = select i1 %i.u, i64 -16, i64 -8
  %i.v = add i64 %.neg472.a, %i.s
  store i64 %i.v, ptr %4, align 8, !tbaa !39
  %i.w = load i64, ptr %i.b, align 8, !tbaa !26
  %i.x = and i64 %i.w, -8
  %i.y = sub i64 %i.x, %i.d
  %i.z = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.aa = add i64 %i.y, %i.z
  store i64 %i.aa, ptr @s_allocated_memory, align 8, !tbaa !39
  br label %bb.eb

bb.g:                                             ; preds = %bb.d
  %i.ab = and i64 %i.i, -8
  %i.ac = icmp eq i64 %i.j, 0
  %.neg415 = select i1 %i.ac, i64 -16, i64 -8
  %i.ad = add i64 %.neg415, %i.ab                 ; 2 uses
  store i64 %i.ad, ptr %4, align 8, !tbaa !39
  %.not416 = icmp ult i64 %i.ad, %3
  br i1 %.not416, label %bb.h, label %bb.eb

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ae = and i32 %0, 4
  %.not418 = icmp eq i32 %i.ae, 0
  br i1 %.not418, label %bb.eb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ag = and i64 %i.af, 1
  %.not419 = icmp eq i64 %i.ag, 0
  br i1 %.not419, label %bb.j, label %bb.eb

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !28  ; 12 uses
  %i.ai = and i64 %i.ah, 1
  %.not420 = icmp eq i64 %i.ai, 0
  br i1 %.not420, label %bb.k, label %bb.eb

bb.k:                                             ; preds = %bb.j
  %i.aj = sub i64 0, %i.ah
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj ; 64 uses
  %i.al = load i64, ptr %4, align 8, !tbaa !39    ; 12 uses
  %.not421 = icmp eq i32 %6, 0
  %i.am = select i1 %.not421, i64 %2, i64 %3      ; 6 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %5, i64 16) ; 2 uses
  %spec.select103.i = tail call i64 @llvm.umax.i64(i64 %5, i64 16) ; 5 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5)
  %i.ao = icmp samesign ult i64 %i.an, 2
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = add i64 %5, -1
  %i.aq = and i64 %i.am, %i.ap
  %.not102.i = icmp eq i64 %i.aq, 0
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @abort() #18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ar = sub i64 0, %5
  %i.as = and i64 %i.al, %i.ar
  %i.at = xor i64 %i.as, -1
  %i.au = add i64 %i.am, %i.at
  %i.av = sub i64 0, %spec.select103.i
  %i.aw = and i64 %i.au, %i.av
  %i.ax = add i64 %i.aw, %spec.select103.i
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.o:                                             ; preds = %bb.k
  %i.ay = and i64 %5, 15
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = urem i64 %i.al, %5
  %.neg101.i = sub i64 %i.am, %i.al
  %i.bb = add i64 %.neg101.i, %i.ba
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.q:                                             ; preds = %bb.o
  %i.bc = and i64 %5, 7
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = shl i64 %5, 1
  %i.bf = urem i64 %i.al, %5
  %.neg99.i = sub i64 %i.bf, %i.al
  %i.bg = add i64 %.neg99.i, %i.am                ; 2 uses
  %i.bh = and i64 %i.bg, 15
  %.not100.i = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not100.i, i64 0, i64 %5
  %spec.select104.i = add i64 %i.bi, %i.bg
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.s:                                             ; preds = %bb.q
  %i.bj = and i64 %5, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %.preheader.i

bb.t:                                             ; preds = %bb.s
  %i.bl = shl i64 %5, 2                           ; 3 uses
  %i.bm = urem i64 %i.al, %5
  %.neg96.i = sub i64 %i.bm, %i.al
  %i.bn = add i64 %.neg96.i, %i.am                ; 4 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = and i64 %i.bo, 3                        ; 3 uses
  %.not97.i = icmp eq i64 %i.bp, 0
  br i1 %.not97.i, label %calculate_lcm_and_needs_backwards_lcmed.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = and i64 %5, 8
  %.not98.i = icmp eq i64 %i.bq, 0
  br i1 %.not98.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = mul i64 %i.bp, %5
  %i.bs = add i64 %i.br, %i.bn
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = sub nuw nsw i64 4, %i.bp
  %i.bu = mul i64 %i.bt, %5
  %i.bv = add i64 %i.bu, %i.bn
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

.preheader.i:                                     ; preds = %bb.s, %.preheader.i
  %.090.i = phi i64 [ %.089.i, %.preheader.i ], [ %spec.select103.i, %bb.s ]
  %.089.i = phi i64 [ %i.bw, %.preheader.i ], [ %spec.select.i, %bb.s ] ; 3 uses
  %i.bw = urem i64 %.090.i, %.089.i               ; 2 uses
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %bb.x, label %.preheader.i, !llvm.loop !123

bb.x:                                             ; preds = %.preheader.i
  %i.bx = udiv i64 %spec.select103.i, %.089.i
  %i.by = mul i64 %i.bx, %spec.select.i           ; 3 uses
  %i.bz = urem i64 %i.al, %5
  %.neg.i = xor i64 %i.al, -1
  %i.ca = add i64 %i.am, %.neg.i
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = udiv i64 %i.cb, %i.by
  %i.cd = add i64 %i.cc, 1
  %i.ce = mul i64 %i.cd, %i.by
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

calculate_lcm_and_needs_backwards_lcmed.exit:     ; preds = %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.w, %bb.x
  %.sink106.i = phi i64 [ %i.by, %bb.x ], [ %spec.select103.i, %bb.n ], [ %i.be, %bb.r ], [ %5, %bb.p ], [ %i.bl, %bb.v ], [ %i.bl, %bb.w ], [ %i.bl, %bb.t ]
  %.sink.i = phi i64 [ %i.ce, %bb.x ], [ %i.ax, %bb.n ], [ %spec.select104.i, %bb.r ], [ %i.bb, %bb.p ], [ %i.bs, %bb.v ], [ %i.bv, %bb.w ], [ %i.bn, %bb.t ] ; 5 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not422 = icmp ult ptr %i.ak, %i.cf
  br i1 %.not422, label %bb.y, label %bb.z, !prof !23

bb.y:                                             ; preds = %calculate_lcm_and_needs_backwards_lcmed.exit
  tail call void @abort() #18
  unreachable

bb.z:                                             ; preds = %calculate_lcm_and_needs_backwards_lcmed.exit
  %i.cg = icmp ult i64 %i.ah, %.sink.i
  br i1 %i.cg, label %bb.eb, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not414, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %10 = icmp ult i64 %i.al, 23
  %i.ch = add i64 %i.al, 23
  %i.ci = and i64 %i.ch, -16
  %i.cj = select i1 %10, i64 32, i64 %i.ci        ; 2 uses
  %i.ck = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.a, i64 noundef %i.cj, i64 noundef %i.cj) ; 0 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.cm = and i64 %i.cl, -8
  %i.cn = and i64 %i.cl, 3
  %i.co = icmp eq i64 %i.cn, 0
  %.neg423 = select i1 %i.co, i64 -16, i64 -8
  %i.cp = add i64 %.neg423, %i.cm                 ; 2 uses
  store i64 %i.cp, ptr %4, align 8, !tbaa !39
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !26
  %i.cr = and i64 %i.cq, -8                       ; 2 uses
  %i.cs = sub i64 %i.cr, %i.d
  %i.ct = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.cu = add i64 %i.cs, %i.ct
  store i64 %i.cu, ptr @s_allocated_memory, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = phi i64 [ %i.cp, %bb.ab ], [ %i.al, %bb.aa ]
  %.0357 = phi i64 [ %i.cr, %bb.ab ], [ %i.d, %bb.aa ] ; 6 uses
  %.0362 = add i64 %.0357, %i.ah
  %i.cw = add i64 %.sink.i, 32
  %.not424 = icmp ult i64 %i.ah, %i.cw
  br i1 %.not424, label %bb.cl, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = sub i64 0, %.sink.i
  %i.cy = getelementptr inbounds i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cz = add i64 %.0357, %.sink.i
  %i.da = sub i64 %i.ah, %.sink.i                 ; 10 uses
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !29
  %i.dc = icmp eq ptr %i.ak, %i.db
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.da, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !27
  br label %bb.ck

bb.af:                                            ; preds = %bb.ad
  %i.dd = icmp ult i64 %i.ah, 256
  br i1 %i.dd, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.de = lshr i64 %i.ah, 3                       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !20 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !24 ; 6 uses
  %i.dj = trunc nuw nsw i64 %i.de to i32
  %.idx460 = shl nuw nsw i64 %i.de, 4
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx460 ; 2 uses
  %i.dl = icmp eq ptr %i.dg, %i.dk
  br i1 %i.dl, label %.critedge476, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not461 = icmp ult ptr %i.dg, %i.dm
  br i1 %.not461, label %.critedge478, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.dp = icmp eq ptr %i.do, %i.ak
  br i1 %i.dp, label %.critedge476, label %.critedge478, !prof !25

.critedge476:                                     ; preds = %bb.ag, %bb.ai
  %i.dq = icmp eq ptr %i.di, %i.dg
  br i1 %i.dq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge476
  %i.dr = shl nuw i32 1, %i.dj
  %i.ds = xor i32 %i.dr, -1
  %i.dt = load i32, ptr @_gm_, align 8, !tbaa !19
  %i.du = and i32 %i.dt, %i.ds
  store i32 %i.du, ptr @_gm_, align 8, !tbaa !19
  br label %bb.br

bb.ak:                                            ; preds = %.critedge476
  %i.dv = icmp eq ptr %i.di, %i.dk
  br i1 %i.dv, label %.critedge480, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not462 = icmp ult ptr %i.di, %i.dw
  br i1 %.not462, label %.critedge482, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.dz = icmp eq ptr %i.dy, %i.ak
  br i1 %i.dz, label %.critedge480, label %.critedge482, !prof !25

.critedge480:                                     ; preds = %bb.ak, %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.di, ptr %i.ea, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.dg, ptr %i.eb, align 8, !tbaa !20
  br label %bb.br

.critedge482:                                     ; preds = %bb.al, %bb.am
  tail call void @abort() #18
  unreachable

.critedge478:                                     ; preds = %bb.ah, %bb.ai
  tail call void @abort() #18
  unreachable

bb.an:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !45 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 4 uses
  %.not445.a = icmp eq ptr %i.ef, %i.ak
  br i1 %.not445.a, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !47 ; 3 uses
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not451.a = icmp ult ptr %i.eh, %i.ei
  br i1 %.not451.a, label %.critedge484, label %bb.ap, !prof !23

bb.ap:                                            ; preds = %bb.ao
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46
  %i.el = icmp eq ptr %i.ek, %i.ak
  br i1 %i.el, label %bb.aq, label %.critedge484, !prof !25

bb.aq:                                            ; preds = %bb.ap
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !47
  %i.eo = icmp eq ptr %i.en, %i.ak
  br i1 %i.eo, label %bb.ar, label %.critedge484, !prof !25

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !46
  store ptr %i.eh, ptr %i.em, align 8, !tbaa !47
  br label %bb.ay

.critedge484:                                     ; preds = %bb.ap, %bb.ao, %bb.aq
  tail call void @abort() #18
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40 ; 2 uses
  %.not446 = icmp eq ptr %i.eq, null
  br i1 %.not446, label %bb.at, label %.critedge.preheader

bb.at:                                            ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !40 ; 2 uses
  %.not447 = icmp eq ptr %i.es, null
  br i1 %.not447, label %bb.ay, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.at, %bb.as
  %.1371.ph = phi ptr [ %i.ep, %bb.as ], [ %i.er, %bb.at ]
  %.1367.ph = phi ptr [ %i.eq, %bb.as ], [ %i.es, %bb.at ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1371 = phi ptr [ %.1371.ph, %.critedge.preheader ], [ %.1371.be, %.critedge.backedge ] ; 2 uses
  %.1367 = phi ptr [ %.1367.ph, %.critedge.preheader ], [ %.1367.be, %.critedge.backedge ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1367, i64 40 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !40 ; 2 uses
  %.not448 = icmp eq ptr %i.eu, null
  br i1 %.not448, label %bb.au, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.au
  %.1371.be = phi ptr [ %i.et, %.critedge ], [ %i.ev, %bb.au ]
  %.1367.be = phi ptr [ %i.eu, %.critedge ], [ %i.ew, %bb.au ]
  br label %.critedge, !llvm.loop !124

bb.au:                                            ; preds = %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %.1367, i64 32 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40 ; 2 uses
  %.not449 = icmp eq ptr %i.ew, null
  br i1 %.not449, label %bb.av, label %.critedge.backedge

bb.av:                                            ; preds = %bb.au
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !22
  %.not450 = icmp ult ptr %.1371, %i.ex
  br i1 %.not450, label %bb.ax, label %bb.aw, !prof !23

bb.aw:                                            ; preds = %bb.av
  store ptr null, ptr %.1371, align 8, !tbaa !40
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  tail call void @abort() #18
  unreachable

bb.ay:                                            ; preds = %bb.at, %bb.aw, %bb.ar
  %.3369 = phi ptr [ %i.ef, %bb.ar ], [ %.1367, %bb.aw ], [ null, %bb.at ] ; 11 uses
  %.not452 = icmp eq ptr %i.ed, null
  br i1 %.not452, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !49 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
end_hunk_7
