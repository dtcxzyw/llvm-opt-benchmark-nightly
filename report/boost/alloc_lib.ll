Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/alloc_lib?download=true
inline.NumInlined: 61
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dlmalloc:bb.a
  %i.cl = and i64 %i.ck, 4294967294
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %i.cl ; 4 uses
  %i.cn = shl nuw nsw i32 1, %i.cj                ; 2 uses
  %i.co = and i32 %i.br, %i.cn
  %.not153 = icmp eq i32 %i.co, 0
  br i1 %.not153, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = or i32 %i.br, %i.cn
  store i32 %i.cp, ptr @_gm_, align 8, !tbaa !21
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not154 = icmp ult ptr %i.cr, %i.cs
  br i1 %.not154, label %bb.aa, label %bb.ab, !prof !25

bb.aa:                                            ; preds = %bb.z
  tail call void @abort() #17
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.0124 = phi ptr [ %i.cm, %bb.y ], [ %i.cr, %bb.z ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.ch, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %.0124, i64 24
  store ptr %i.ch, ptr %i.cu, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.0124, ptr %i.cv, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.cm, ptr %i.cw, align 8, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  store ptr %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  br label %.thread

bb.ad:                                            ; preds = %bb.o
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %.not149 = icmp eq i32 %i.cx, 0
  br i1 %.not149, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = tail call fastcc ptr @tmalloc_small(ptr noundef nonnull @_gm_, i64 noundef %i.o)
  br label %.thread

bb.af:                                            ; preds = %spin_acquire_lock.exit
  %i.cz = icmp ugt i64 %0, -129
  br i1 %i.cz, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = add nuw i64 %0, 23
  %i.db = and i64 %i.da, -16                      ; 3 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %.not145 = icmp eq i32 %i.dc, 0
  br i1 %.not145, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = tail call fastcc ptr @tmalloc_large(ptr noundef nonnull @_gm_, i64 noundef %i.db) ; 2 uses
  %.not146 = icmp eq ptr %i.dd, null
  br i1 %.not146, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.n, %bb.ad, %bb.af, %bb.ah, %bb.ag
  %.0123 = phi i64 [ -1, %bb.af ], [ %i.db, %bb.ag ], [ %i.db, %bb.ah ], [ %i.o, %bb.ad ], [ %i.o, %bb.n ] ; 9 uses
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29 ; 5 uses
  %.not156 = icmp ugt i64 %.0123, %i.de
  br i1 %.not156, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = sub nuw i64 %i.de, %.0123               ; 4 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31 ; 6 uses
  %i.dh = icmp ugt i64 %i.df, 31
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0123 ; 2 uses
  %i.dj = or i64 %i.df, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i64 %i.df, ptr %i.dl, align 8, !tbaa !30
  %i.dm = or i64 %.0123, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !28
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.do = or i64 %i.de, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !28
  %i.dt = or i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink162 = phi ptr [ %i.di, %bb.ak ], [ null, %bb.al ]
  %.sink = phi i64 [ %i.df, %bb.ak ], [ 0, %bb.al ]
  store ptr %.sink162, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  store i64 %.sink, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  br label %.thread

bb.an:                                            ; preds = %bb.ai
  %i.dv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33 ; 2 uses
  %i.dw = icmp ult i64 %.0123, %i.dv
  br i1 %i.dw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dx = sub nuw i64 %i.dv, %.0123               ; 2 uses
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.0123 ; 2 uses
  store ptr %i.dz, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.ea = or i64 %i.dx, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !28
  %i.ec = or i64 %.0123, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !28
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  br label %.thread

bb.ap:                                            ; preds = %bb.an
  %i.ef = tail call fastcc ptr @sys_alloc(ptr noundef nonnull @_gm_, i64 noundef %.0123)
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.v, %bb.ae, %bb.m, %bb.ao, %bb.am, %bb.ah, %bb.ap
  %.2 = phi ptr [ %i.du, %bb.am ], [ %i.ee, %bb.ao ], [ %i.ef, %bb.ap ], [ %i.dd, %bb.ah ], [ %i.bh, %bb.ac ], [ %i.bh, %bb.v ], [ %i.cy, %bb.ae ], [ %i.ac, %bb.m ]
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.eh = and i32 %i.eg, 2
  %.not157 = icmp eq i32 %i.eh, 0
  br i1 %.not157, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_mparams() unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xchg ptr @malloc_global_mutex, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0.i = phi i32 [ %i.d, %.preheader.backedge ], [ 0, %bb.a ]
  %i.b = load volatile i32, ptr @malloc_global_mutex, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.preheader
  %i.c = atomicrmw xchg ptr @malloc_global_mutex, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %.preheader
  %i.d = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.e = and i32 %i.d, 63
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.preheader.backedge

bb.c:                                             ; preds = %.critedge.i
  %i.g = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.c, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr @mparams, align 8, !tbaa !11
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %spin_acquire_lock.exit
  %i.j = tail call i64 @sysconf(i32 noundef 30) #16 ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.j)
  %.not9 = icmp samesign ult i64 %i.k, 2
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 65536, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36
  store i64 262144, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8, !tbaa !37
  store i64 2097152, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 40), align 8, !tbaa !39
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !74
  %i.l = tail call i64 @time(ptr noundef null) #16
  %i.m = and i64 %i.l, -16
  %i.n = xor i64 %i.m, 1431655768
  store volatile i64 %i.n, ptr @mparams, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %spin_acquire_lock.exit
  store atomic i32 0, ptr @malloc_global_mutex release, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc nonnull ptr @tmalloc_small(ptr noundef %0, i64 noundef range(i64 16, 241) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = and i64 %i.i, -8
  %i.k = sub i64 %i.j, %1
  br label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  %.0134 = phi ptr [ %i.g, %bb.a ], [ %i.p, %.thread ] ; 2 uses
  %.0132 = phi ptr [ %i.g, %bb.a ], [ %spec.select, %.thread ] ; 20 uses
  %.0130 = phi i64 [ %i.k, %bb.a ], [ %spec.select170, %.thread ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0134, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0134, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %.not150 = icmp eq ptr %i.o, null
  br i1 %.not150, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = and i64 %i.r, -8
  %i.t = sub i64 %i.s, %1                         ; 2 uses
  %i.u = icmp ult i64 %i.t, %.0130
  %spec.select = select i1 %i.u, ptr %i.p, ptr %.0132
  %spec.select170 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.0130)
  br label %bb.b, !llvm.loop !75

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 8 uses
  %.not151 = icmp ult ptr %.0132, %i.w
  br i1 %.not151, label %bb.as, label %bb.e, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.0132, i64 %1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0132, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0132, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 4 uses
  %.not152 = icmp eq ptr %i.ab, %.0132
  br i1 %.not152, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.0132, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %.not158 = icmp ult ptr %i.ad, %i.w
  br i1 %.not158, label %.critedge172, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = icmp eq ptr %i.af, %.0132
  br i1 %i.ag, label %bb.h, label %.critedge172, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq ptr %i.ai, %.0132
  br i1 %i.aj, label %bb.i, label %.critedge172, !prof !27

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !46
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !47
  br label %bb.p

.critedge172:                                     ; preds = %bb.g, %bb.f, %bb.h
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.0132, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %.not153 = icmp eq ptr %i.al, null
  br i1 %.not153, label %bb.k, label %.critedge.preheader

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0132, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %.not154 = icmp eq ptr %i.an, null
  br i1 %.not154, label %bb.p, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.k, %bb.j
  %.1128.ph = phi ptr [ %i.al, %bb.j ], [ %i.an, %bb.k ]
  %.1.ph = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1128 = phi ptr [ %.1128.ph, %.critedge.preheader ], [ %.1128.be, %.critedge.backedge ] ; 3 uses
  %.1 = phi ptr [ %.1.ph, %.critedge.preheader ], [ %.1.be, %.critedge.backedge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1128, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %.not155 = icmp eq ptr %i.ap, null
  br i1 %.not155, label %bb.l, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.l
  %.1128.be = phi ptr [ %i.ap, %.critedge ], [ %i.ar, %bb.l ]
  %.1.be = phi ptr [ %i.ao, %.critedge ], [ %i.aq, %bb.l ]
  br label %.critedge, !llvm.loop !76

bb.l:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %.1128, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %.not156 = icmp eq ptr %i.ar, null
  br i1 %.not156, label %bb.m, label %.critedge.backedge

bb.m:                                             ; preds = %bb.l
  %.not157 = icmp ult ptr %.1, %i.w
  br i1 %.not157, label %bb.o, label %bb.n, !prof !25

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %.1, align 8, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @abort() #17
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.n, %bb.i
  %.3 = phi ptr [ %i.ab, %bb.i ], [ %.1128, %bb.n ], [ null, %bb.k ] ; 11 uses
  %.not159 = icmp eq ptr %i.z, null
  br i1 %.not159, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %.0132, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = icmp eq ptr %.0132, %i.aw
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.3, ptr %i.av, align 8, !tbaa !42
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread187, label %bb.y

.thread187:                                       ; preds = %bb.r
  %i.ay = shl nuw i32 1, %i.at
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.b, %i.az
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !32
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  %.not160 = icmp ult ptr %i.z, %i.w
  br i1 %.not160, label %bb.w, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42
  %i.bd = icmp eq ptr %i.bc, %.0132
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %.3, ptr %i.bb, align 8, !tbaa !42
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %.3, ptr %i.be, align 8, !tbaa !42
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  tail call void @abort() #17
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  %.not161 = icmp eq ptr %.3, null
  br i1 %.not161, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x
  %.not162 = icmp ult ptr %.3, %i.w
  br i1 %.not162, label %bb.ah, label %bb.z, !prof !25

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.z, ptr %i.bf, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %.0132, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 4 uses
  %.not163 = icmp eq ptr %i.bh, null
  br i1 %.not163, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not164 = icmp ult ptr %i.bh, %i.w
  br i1 %.not164, label %bb.ac, label %bb.ab, !prof !25

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %.3, ptr %i.bj, align 8, !tbaa !45
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  tail call void @abort() #17
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %.0132, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 4 uses
  %.not165 = icmp eq ptr %i.bl, null
  br i1 %.not165, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not166 = icmp ult ptr %i.bl, %i.w
  br i1 %.not166, label %bb.ag, label %bb.af, !prof !25

bb.af:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr %.3, ptr %i.bn, align 8, !tbaa !45
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  tail call void @abort() #17
  unreachable

bb.ah:                                            ; preds = %bb.y
  tail call void @abort() #17
  unreachable

bb.ai:                                            ; preds = %.thread187, %bb.x, %bb.af, %bb.ad, %bb.p
  %i.bo = icmp ult i64 %.0130, 32
  br i1 %i.bo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bp = add nuw nsw i64 %.0130, %1              ; 2 uses
  %i.bq = or i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %.0132, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.0132, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !28
  %i.bv = or i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !28
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.bw = or i64 %1, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.0132, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !44
  %i.by = or i64 %.0130, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0130
  store i64 %.0130, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %.not167 = icmp eq i64 %i.cc, 0
  br i1 %.not167, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 4 uses
  %i.cf = lshr i64 %i.cc, 3                       ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = shl nuw nsw i64 %i.cf, 1
  %i.cj = and i64 %i.ci, 4294967294
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj ; 4 uses
  %i.cl = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.cm = shl nuw i32 1, %i.cg                    ; 2 uses
  %i.cn = and i32 %i.cl, %i.cm
  %.not168 = icmp eq i32 %i.cn, 0
  br i1 %.not168, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.co = or i32 %i.cl, %i.cm
  store i32 %i.co, ptr %0, align 8, !tbaa !21
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %.not169 = icmp ult ptr %i.cq, %i.w
  br i1 %.not169, label %bb.ao, label %bb.ap, !prof !25

bb.ao:                                            ; preds = %bb.an
  tail call void @abort() #17
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.am
  %.0124 = phi ptr [ %i.ck, %bb.am ], [ %i.cq, %bb.an ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.ce, ptr %i.cr, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.0124, i64 24
  store ptr %i.ce, ptr %i.cs, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %.0124, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.ck, ptr %i.cu, align 8, !tbaa !26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ak
  store i64 %.0130, ptr %i.cb, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.cv, align 8, !tbaa !31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %.0132, i64 16
  ret ptr %i.cw

bb.as:                                            ; preds = %bb.d
  tail call void @abort() #17
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @tmalloc_large(ptr noundef %0, i64 noundef range(i64 256, -105) %1) unnamed_addr #4 {
bb.a:
  %i.a = sub i64 0, %1                            ; 2 uses
  %i.b = lshr i64 %1, 8
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %i.c, 65535
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true) ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = sub nuw nsw i32 38, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %1, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, %i.g
  %i.n = xor i32 %i.m, 62
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0251 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 31, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  %i.p = zext nneg i32 %.0251 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %.0251, 31
  %i.t = lshr i32 %.0251, 1
  %i.u = add nuw nsw i32 %i.t, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = sub nuw nsw i64 63, %i.v
  %i.x = select i1 %i.s, i64 0, i64 %i.w
  %i.y = shl i64 %1, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0249 = phi i64 [ %i.y, %bb.e ], [ %i.am, %bb.h ] ; 2 uses
  %.0246 = phi ptr [ null, %bb.e ], [ %.1247, %bb.h ]
  %.0237 = phi ptr [ %i.r, %bb.e ], [ %i.ak, %bb.h ] ; 6 uses
  %.0231 = phi i64 [ %i.a, %bb.e ], [ %.1232, %bb.h ] ; 2 uses
  %.0227 = phi ptr [ null, %bb.e ], [ %.1228, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0237, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ab = and i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %1                       ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.0231
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1232 = phi i64 [ %i.ac, %bb.g ], [ %.0231, %bb.f ] ; 2 uses
  %.1228 = phi ptr [ %.0237, %bb.g ], [ %.0227, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0237, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0237, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42 ; 3 uses
  %i.ai = lshr i64 %.0249, 63
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %.not277 = icmp eq ptr %i.ah, null
  %.not278 = icmp eq ptr %i.ah, %i.ak
  %or.cond306 = or i1 %.not277, %.not278
  %.1247 = select i1 %or.cond306, ptr %.0246, ptr %i.ah ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  %i.am = shl i64 %.0249, 1
  br i1 %i.al, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.h, %bb.d
  %.2239 = phi ptr [ null, %bb.d ], [ %.1247, %bb.h ] ; 2 uses
  %.3234 = phi i64 [ %i.a, %bb.d ], [ %.1232, %bb.h ] ; 2 uses
  %.3230 = phi ptr [ null, %bb.d ], [ %.1228, %bb.h ] ; 2 uses
  %i.an = icmp eq ptr %.2239, null
  %i.ao = icmp eq ptr %.3230, null
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %.thread
  %i.ap = shl i32 2, %.0251                       ; 2 uses
  %i.aq = sub i32 0, %i.ap
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = and i32 %i.at, %i.ar                    ; 2 uses
  %.not279 = icmp eq i32 %i.au, 0
  br i1 %.not279, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.j, %.thread
  %.3230325 = phi ptr [ %.3230, %.thread ], [ null, %bb.j ] ; 2 uses
  %.4241 = phi ptr [ %.2239, %.thread ], [ %i.ay, %bb.j ] ; 2 uses
  %.not280328 = icmp eq ptr %.4241, null
  br i1 %.not280328, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %.thread.thread
  %.4331.ph = phi ptr [ %.3230325, %.thread.thread ], [ %.0237, %bb.g ]
  %.4235330.ph = phi i64 [ %.3234, %.thread.thread ], [ 0, %bb.g ]
  %.5242329.ph = phi ptr [ %.4241, %.thread.thread ], [ %.0237, %bb.g ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.4331 = phi ptr [ %spec.select307, %bb.l ], [ %.4331.ph, %.lr.ph.preheader ]
  %.4235330 = phi i64 [ %spec.select, %bb.l ], [ %.4235330.ph, %.lr.ph.preheader ] ; 2 uses
  %.5242329 = phi ptr [ %i.bi, %bb.l ], [ %.5242329.ph, %.lr.ph.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.5242329, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44
  %i.bb = and i64 %i.ba, -8
  %i.bc = sub i64 %i.bb, %1                       ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %.4235330
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.4235330) ; 2 uses
  %spec.select307 = select i1 %i.bd, ptr %.5242329, ptr %.4331 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.5242329, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %.not305 = icmp eq ptr %i.bf, null
  br i1 %.not305, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.5242329, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.bi = phi ptr [ %i.bh, %bb.k ], [ %i.bf, %.lr.ph ] ; 2 uses
  %.not280 = icmp eq ptr %i.bi, null
  br i1 %.not280, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.l, %.thread.thread
  %.4235.lcssa = phi i64 [ %.3234, %.thread.thread ], [ %spec.select, %bb.l ] ; 12 uses
  %.4.lcssa = phi ptr [ %.3230325, %.thread.thread ], [ %spec.select307, %bb.l ] ; 20 uses
  %.not281 = icmp eq ptr %.4.lcssa, null
  br i1 %.not281, label %._crit_edge.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !29
  %i.bl = sub i64 %i.bk, %1
  %i.bm = icmp ult i64 %.4235.lcssa, %i.bl
  br i1 %i.bm, label %bb.n, label %._crit_edge.thread

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 11 uses
  %.not282 = icmp ult ptr %.4.lcssa, %i.bo
  br i1 %.not282, label %bb.bo, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 %1 ; 25 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46 ; 4 uses
  %.not283 = icmp eq ptr %i.bt, %.4.lcssa
  br i1 %.not283, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 3 uses
  %.not289 = icmp ult ptr %i.bv, %i.bo
  br i1 %.not289, label %.critedge309, label %bb.q, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = icmp eq ptr %i.bx, %.4.lcssa
  br i1 %i.by, label %bb.r, label %.critedge309, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = icmp eq ptr %i.ca, %.4.lcssa
  br i1 %i.cb, label %bb.s, label %.critedge309, !prof !27

bb.s:                                             ; preds = %bb.r
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !46
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !47
  br label %bb.z

.critedge309:                                     ; preds = %bb.q, %bb.p, %bb.r
  tail call void @abort() #17
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %.not284 = icmp eq ptr %i.cd, null
  br i1 %.not284, label %bb.u, label %.critedge.preheader

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %.not285 = icmp eq ptr %i.cf, null
  br i1 %.not285, label %bb.z, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.u, %bb.t
  %.1226.ph = phi ptr [ %i.cd, %bb.t ], [ %i.cf, %bb.u ]
  %.1224.ph = phi ptr [ %i.cc, %bb.t ], [ %i.ce, %bb.u ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1226 = phi ptr [ %.1226.ph, %.critedge.preheader ], [ %.1226.be, %.critedge.backedge ] ; 3 uses
  %.1224 = phi ptr [ %.1224.ph, %.critedge.preheader ], [ %.1224.be, %.critedge.backedge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1226, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  %.not286 = icmp eq ptr %i.ch, null
  br i1 %.not286, label %bb.v, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.v
  %.1226.be = phi ptr [ %i.ch, %.critedge ], [ %i.cj, %bb.v ]
  %.1224.be = phi ptr [ %i.cg, %.critedge ], [ %i.ci, %bb.v ]
  br label %.critedge, !llvm.loop !78

bb.v:                                             ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %.1226, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !42 ; 2 uses
  %.not287 = icmp eq ptr %i.cj, null
  br i1 %.not287, label %bb.w, label %.critedge.backedge

bb.w:                                             ; preds = %bb.v
  %.not288 = icmp ult ptr %.1224, %i.bo
  br i1 %.not288, label %bb.y, label %bb.x, !prof !25

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %.1224, align 8, !tbaa !42
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.s
  %.3 = phi ptr [ %i.bt, %bb.s ], [ %.1226, %bb.x ], [ null, %bb.u ] ; 11 uses
  %.not290 = icmp eq ptr %i.br, null
  br i1 %.not290, label %bb.as, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 56
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !48 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !42
  %i.cp = icmp eq ptr %.4.lcssa, %i.co
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %.3, ptr %i.cn, align 8, !tbaa !42
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread375, label %bb.ai

.thread375:                                       ; preds = %bb.ab
  %i.cq = shl nuw i32 1, %i.cl
  %i.cr = xor i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  %i.cu = and i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !32
  br label %bb.as

bb.ac:                                            ; preds = %bb.aa
  %.not291 = icmp ult ptr %i.br, %i.bo
  br i1 %.not291, label %bb.ag, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !42
  %i.cx = icmp eq ptr %i.cw, %.4.lcssa
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %.3, ptr %i.cv, align 8, !tbaa !42
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %.3, ptr %i.cy, align 8, !tbaa !42
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  tail call void @abort() #17
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.not292 = icmp eq ptr %.3, null
  br i1 %.not292, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ah
  %.not293 = icmp ult ptr %.3, %i.bo
  br i1 %.not293, label %bb.ar, label %bb.aj, !prof !25

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.br, ptr %i.cz, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42 ; 4 uses
  %.not294 = icmp eq ptr %i.db, null
  br i1 %.not294, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not295 = icmp ult ptr %i.db, %i.bo
  br i1 %.not295, label %bb.am, label %bb.al, !prof !25

bb.al:                                            ; preds = %bb.ak
  %i.dc = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %.3, ptr %i.dd, align 8, !tbaa !45
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @abort() #17
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !42 ; 4 uses
  %.not296 = icmp eq ptr %i.df, null
  br i1 %.not296, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not297 = icmp ult ptr %i.df, %i.bo
  br i1 %.not297, label %bb.aq, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.dg = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr %.3, ptr %i.dh, align 8, !tbaa !45
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @abort() #17
  unreachable

bb.ar:                                            ; preds = %bb.ai
  tail call void @abort() #17
  unreachable

bb.as:                                            ; preds = %.thread375, %bb.ah, %bb.ap, %bb.an, %bb.z
  %i.di = icmp ult i64 %.4235.lcssa, 32
  br i1 %i.di, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dj = add nuw i64 %.4235.lcssa, %1            ; 2 uses
  %i.dk = or i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !28
  %i.dp = or i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !28
  br label %bb.bn

bb.au:                                            ; preds = %bb.as
  %i.dq = or i64 %1, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !44
  %i.ds = or i64 %.4235.lcssa, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.4235.lcssa
  store i64 %.4235.lcssa, ptr %i.du, align 8, !tbaa !30
  %i.dv = icmp ult i64 %.4235.lcssa, 256
  br i1 %i.dv, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.dw = lshr i64 %.4235.lcssa, 3                ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx = shl nuw nsw i64 %i.dw, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx ; 4 uses
  %i.ea = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.eb = shl nuw i32 1, %i.dx                    ; 2 uses
  %i.ec = and i32 %i.ea, %i.eb
  %.not303 = icmp eq i32 %i.ec, 0
  br i1 %.not303, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ed = or i32 %i.ea, %i.eb
  store i32 %i.ed, ptr %0, align 8, !tbaa !21
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !23 ; 2 uses
  %.not304 = icmp ult ptr %i.ef, %i.bo
  br i1 %.not304, label %bb.ay, label %bb.az, !prof !25

bb.ay:                                            ; preds = %bb.ax
  tail call void @abort() #17
  unreachable

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.0221 = phi ptr [ %i.dz, %bb.aw ], [ %i.ef, %bb.ax ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.bp, ptr %i.eg, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.0221, i64 24
  store ptr %i.bp, ptr %i.eh, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.0221, ptr %i.ei, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.dz, ptr %i.ej, align 8, !tbaa !26
  br label %bb.bn

bb.ba:                                            ; preds = %bb.au
  %i.ek = lshr i64 %.4235.lcssa, 8
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
end_hunk_0
begin_hunk_1_@sys_alloc:bb.a
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !23
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !26
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !23
  %i.ei = icmp eq ptr %0, @_gm_
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ej = add i64 %i.av, -80                      ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 0, %i.el
  %i.en = and i64 %i.em, 15                       ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.en ; 2 uses
  %i.ep = sub i64 %i.ej, %i.en                    ; 2 uses
  store ptr %i.eo, ptr %i.bj, align 8, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !33
  %i.er = or i64 %i.ep, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !28
  %i.et = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ej
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 80, ptr %i.eu, align 8, !tbaa !28
  %i.ev = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !57
  br label %add_segment.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds i8, ptr %0, i64 -16
  %i.ey = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fa = and i64 %i.ez, -8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = add i64 %i.ff, -80                      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 0, %i.fi
  %i.fk = and i64 %i.fj, 15                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk ; 2 uses
  %i.fm = sub i64 %i.fg, %i.fk                    ; 2 uses
  store ptr %i.fl, ptr %i.bj, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !33
  %i.fo = or i64 %i.fm, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !28
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fg
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 80, ptr %i.fr, align 8, !tbaa !28
  %i.fs = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !57
  br label %add_segment.exit.thread

bb.x:                                             ; preds = %bb.r
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.z
  %.0128189 = phi ptr [ %i.fu, %bb.x ], [ %i.ga, %bb.z ] ; 5 uses
  %i.fv = load ptr, ptr %.0128189, align 8, !tbaa !58 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0128189, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !59 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %.not156 = icmp eq ptr %.0122, %i.fy
  br i1 %.not156, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw i8, ptr %.0128189, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !60 ; 2 uses
  %.not155 = icmp eq ptr %i.ga, null
  br i1 %.not155, label %.critedge164, label %bb.y, !llvm.loop !79

.critedge:                                        ; preds = %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr %.0128189, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !61
  %i.gd = and i32 %i.gc, 9
  %or.cond166.not178 = icmp ne i32 %i.gd, 1
  %.not158 = icmp ult ptr %i.bk, %i.fv
  %or.cond175 = or i1 %.not158, %or.cond166.not178
  %i.ge = icmp uge ptr %i.bk, %.0122
  %or.cond176.not = or i1 %i.ge, %or.cond175
  br i1 %or.cond176.not, label %.critedge164, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.gf = getelementptr inbounds nuw i8, ptr %.0128189, i64 8
  %i.gg = add i64 %i.fx, %.0124
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !59
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !33
  %i.gj = add i64 %i.gi, %.0124                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 0, %i.gl
  %i.gn = and i64 %i.gm, 15                       ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.gn ; 2 uses
  %i.gp = sub i64 %i.gj, %i.gn                    ; 2 uses
  store ptr %i.go, ptr %i.bj, align 8, !tbaa !34
  store i64 %i.gp, ptr %i.gh, align 8, !tbaa !33
  %i.gq = or i64 %i.gp, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.gj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 80, ptr %i.gt, align 8, !tbaa !28
  %i.gu = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !57
  br label %add_segment.exit.thread

.critedge164:                                     ; preds = %bb.z, %.critedge
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !24
  %i.gy = icmp ult ptr %.0122, %i.gx
  br i1 %i.gy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge164
  store ptr %.0122, ptr %i.gw, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge164
  %i.gz = getelementptr inbounds nuw i8, ptr %.0122, i64 %.0124
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ae
  %.1129190 = phi ptr [ %i.fu, %bb.ac ], [ %i.hc, %bb.ae ] ; 5 uses
  %i.ha = load ptr, ptr %.1129190, align 8, !tbaa !58 ; 2 uses
  %.not160 = icmp eq ptr %i.ha, %i.gz
  br i1 %.not160, label %.critedge4, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.1129190, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !60 ; 2 uses
  %.not159 = icmp eq ptr %i.hc, null
  br i1 %.not159, label %.critedge167.preheader, label %bb.ad, !llvm.loop !80

.critedge4:                                       ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %.1129190, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !61
  %i.hf = and i32 %i.he, 9
  %or.cond169.not.not = icmp eq i32 %i.hf, 1
  br i1 %or.cond169.not.not, label %add_segment.exit, label %.critedge167.preheader

.critedge167.preheader:                           ; preds = %bb.ae, %.critedge4
  br label %.critedge167

.critedge167:                                     ; preds = %.critedge167.preheader, %bb.ag
  %.0.i.i = phi ptr [ %i.hm, %bb.ag ], [ %i.fu, %.critedge167.preheader ] ; 3 uses
  %i.hg = load ptr, ptr %.0.i.i, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bk, %i.hg
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge167
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !59
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi ; 4 uses
  %i.hk = icmp ult ptr %i.bk, %i.hj
  br i1 %i.hk, label %segment_holding.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge167
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60, !nonnull !62, !noundef !62
  br label %.critedge167

segment_holding.exit.i:                           ; preds = %bb.af
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -95
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -79
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 0, %i.hp
  %i.hr = and i64 %i.hq, 15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.hu = icmp ult ptr %i.hs, %i.ht
  %i.hv = select i1 %i.hu, ptr %i.bk, ptr %i.hs   ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hy = add i64 %.0124, -80                     ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0122, i64 16
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 0, %i.ia
  %i.ic = and i64 %i.ib, 15                       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.ic ; 2 uses
  %i.ie = sub i64 %i.hy, %i.ic                    ; 2 uses
  store ptr %i.id, ptr %i.bj, align 8, !tbaa !34
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !33
  %i.ig = or i64 %i.ie, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !28
  %i.ii = getelementptr inbounds nuw i8, ptr %.0122, i64 %i.hy
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 80, ptr %i.ij, align 8, !tbaa !28
  %i.ik = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !57
  %i.im = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 51, ptr %i.im, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i64 32, i1 false), !tbaa.struct !83
  store ptr %.0122, ptr %i.fu, align 8, !tbaa !52
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 %.0124, ptr %i.in, align 8, !tbaa !53
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 %.0126, ptr %i.io, align 8, !tbaa !54
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.hw, ptr %i.ip, align 8, !tbaa !84
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %segment_holding.exit.i
  %.0139.i = phi ptr [ %i.hx, %segment_holding.exit.i ], [ %i.iq, %bb.ah ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0139.i, i64 8 ; 2 uses
  store i64 11, ptr %i.iq, align 8, !tbaa !28
  %i.ir = getelementptr inbounds nuw i8, ptr %.0139.i, i64 16
  %i.is = icmp ult ptr %i.ir, %i.hj
  br i1 %i.is, label %bb.ah, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i170 = icmp eq ptr %i.hv, %i.bk
  br i1 %.not.i170, label %add_segment.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = ptrtoint ptr %i.hv to i64
  %i.iu = ptrtoint ptr %i.bk to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 9 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !28
  %i.iz = and i64 %i.iy, -2
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !28
  %i.ja = or i64 %i.iv, 1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !28
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !30
  %i.jc = icmp ult i64 %i.iv, 256
  br i1 %i.jc, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.jd = lshr i64 %i.iv, 3                       ; 2 uses
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx.i = shl nuw nsw i64 %i.jd, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.idx.i ; 4 uses
  %i.jh = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ji = shl nuw i32 1, %i.je                    ; 2 uses
  %i.jj = and i32 %i.jh, %i.ji
  %.not154.i = icmp eq i32 %i.jj, 0
  br i1 %.not154.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jk = or i32 %i.jh, %i.ji
  store i32 %i.jk, ptr %0, align 8, !tbaa !21
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !23 ; 2 uses
  %i.jn = load ptr, ptr %i.gw, align 8, !tbaa !24
  %.not155.i = icmp ult ptr %i.jm, %i.jn
  br i1 %.not155.i, label %bb.an, label %bb.ao, !prof !25

bb.an:                                            ; preds = %bb.am
  tail call void @abort() #17
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.0135.i = phi ptr [ %i.jg, %bb.al ], [ %i.jm, %bb.am ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.bk, ptr %i.jo, align 8, !tbaa !23
  %i.jp = getelementptr inbounds nuw i8, ptr %.0135.i, i64 24
  store ptr %i.bk, ptr %i.jp, align 8, !tbaa !26
  br label %.sink.split.i

bb.ap:                                            ; preds = %bb.aj
  %i.jq = lshr i64 %i.iv, 8
  %i.jr = trunc i64 %i.jq to i32                  ; 3 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jt = icmp ugt i32 %i.jr, 65535
  br i1 %i.jt, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ju = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.jr, i1 true) ; 2 uses
  %i.jv = shl nuw nsw i32 %i.ju, 1
  %i.jw = sub nuw nsw i32 38, %i.ju
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = lshr i64 %i.iv, %i.jx
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = and i32 %i.jz, 1
  %i.kb = or disjoint i32 %i.ka, %i.jv
  %i.kc = xor i32 %i.kb, 62
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0134.i = phi i32 [ %i.kc, %bb.ar ], [ 0, %bb.ap ], [ 31, %bb.aq ] ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ke = zext nneg i32 %.0134.i to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %.0134.i, ptr %i.kg, align 8, !tbaa !48
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false)
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !32 ; 2 uses
  %i.kj = shl nuw i32 1, %.0134.i                 ; 2 uses
  %i.kk = and i32 %i.ki, %i.kj
  %.not149.i = icmp eq i32 %i.kk, 0
  br i1 %.not149.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kl = or i32 %i.ki, %i.kj
  store i32 %i.kl, ptr %i.kh, align 4, !tbaa !32
  store ptr %i.bk, ptr %i.kf, align 8, !tbaa !42
  %i.km = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %i.kf, ptr %i.km, align 8, !tbaa !45
  br label %.sink.split.i

bb.au:                                            ; preds = %bb.as
  %i.kn = load ptr, ptr %i.kf, align 8, !tbaa !42
  %i.ko = icmp eq i32 %.0134.i, 31
  %i.kp = lshr i32 %.0134.i, 1
  %i.kq = add nuw nsw i32 %i.kp, 6
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = sub nuw nsw i64 63, %i.kr
  %i.kt = select i1 %i.ko, i64 0, i64 %i.ks
  %i.ku = shl i64 %i.iv, %i.kt
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.0133.i = phi ptr [ %i.kn, %bb.au ], [ %i.lc, %bb.aw ] ; 6 uses
  %.0.i = phi i64 [ %i.ku, %bb.au ], [ %i.lb, %bb.aw ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0133.i, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !44
  %i.kx = and i64 %i.kw, -8
  %.not150.i = icmp eq i64 %i.kx, %i.iv
  br i1 %.not150.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %.0133.i, i64 32 ; 2 uses
  %i.kz = lshr i64 %.0.i, 63                      ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = shl i64 %.0.i, 1
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !42 ; 2 uses
  %.not152.i = icmp eq ptr %i.lc, null
  br i1 %.not152.i, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kz ; 2 uses
  %i.le = load ptr, ptr %i.gw, align 8, !tbaa !24
  %.not153.i = icmp ult ptr %i.ld, %i.le
  br i1 %.not153.i, label %bb.ay, label %.thread.i, !prof !25

.thread.i:                                        ; preds = %bb.ax
  store ptr %i.bk, ptr %i.ld, align 8, !tbaa !42
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.0133.i, ptr %i.lf, align 8, !tbaa !45
  br label %.sink.split.i

bb.ay:                                            ; preds = %bb.ax
  tail call void @abort() #17
  unreachable

bb.az:                                            ; preds = %bb.av
  %i.lg = getelementptr inbounds nuw i8, ptr %.0133.i, i64 16 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !47 ; 3 uses
  %i.li = load ptr, ptr %i.gw, align 8, !tbaa !24 ; 2 uses
  %.not151.i = icmp uge ptr %.0133.i, %i.li
  %i.lj = icmp uge ptr %i.lh, %i.li
  %spec.select.i = select i1 %.not151.i, i1 %i.lj, i1 false, !prof !27
  br i1 %spec.select.i, label %bb.ba, label %bb.bb, !prof !27

bb.ba:                                            ; preds = %bb.az
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store ptr %i.bk, ptr %i.lk, align 8, !tbaa !46
  store ptr %i.bk, ptr %i.lg, align 8, !tbaa !47
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.lh, ptr %i.ll, align 8, !tbaa !47
  br label %.sink.split.i

bb.bb:                                            ; preds = %bb.az
  tail call void @abort() #17
  unreachable

.sink.split.i:                                    ; preds = %bb.ba, %.thread.i, %bb.at, %bb.ao
  %.sink181.i = phi i64 [ 24, %.thread.i ], [ 16, %bb.ao ], [ 24, %bb.ba ], [ 24, %bb.at ]
  %.sink179.i = phi ptr [ %i.bk, %.thread.i ], [ %.0135.i, %bb.ao ], [ %.0133.i, %bb.ba ], [ %i.bk, %bb.at ]
  %.sink178.i = phi i64 [ 16, %.thread.i ], [ 24, %bb.ao ], [ 48, %bb.ba ], [ 16, %bb.at ]
  %.sink.i = phi ptr [ %i.bk, %.thread.i ], [ %i.jg, %bb.ao ], [ null, %bb.ba ], [ %i.bk, %bb.at ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink181.i
  store ptr %.sink179.i, ptr %i.lm, align 8, !tbaa !63
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink178.i
  store ptr %.sink.i, ptr %i.ln, align 8, !tbaa !63
  br label %add_segment.exit.thread

add_segment.exit:                                 ; preds = %.critedge4
  store ptr %.0122, ptr %.1129190, align 8, !tbaa !58
  %i.lo = getelementptr inbounds nuw i8, ptr %.1129190, i64 8 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !59
  %i.lq = add i64 %i.lp, %.0124
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !59
  %i.lr = tail call fastcc ptr @prepend_alloc(ptr noundef %0, ptr noundef %.0122, ptr noundef %i.ha, i64 noundef %1)
  br label %bb.be

add_segment.exit.thread:                          ; preds = %.sink.split.i, %bb.ai, %bb.aa, %bb.v, %bb.w
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !33 ; 2 uses
end_hunk_1
begin_hunk_2_@dlfree:bb.a
bb.d:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.preheader.backedge

bb.e:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.e, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.d, %bb.b, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 22 uses
  %.not350 = icmp ult ptr %i.a, %i.k
  br i1 %.not350, label %.critedge400, label %bb.f, !prof !25

bb.f:                                             ; preds = %spin_acquire_lock.exit
  %i.l = getelementptr inbounds i8, ptr %0, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 4 uses
  %i.n = and i64 %i.m, 3
  %.not435 = icmp eq i64 %i.n, 1
  br i1 %.not435, label %.critedge400, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.m, -8                         ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o ; 23 uses
  %i.q = and i64 %i.m, 1
  %.not351 = icmp eq i64 %i.q, 0
  br i1 %.not351, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.s = and i64 %i.m, 2
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %i.o, 32
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = sub i64 0, %i.r
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.w
  %i.y = tail call i32 @munmap(ptr noundef nonnull %i.x, i64 noundef %i.v) #16
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.ds

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.ab = sub i64 %i.aa, %i.v
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  br label %bb.ds

bb.k:                                             ; preds = %bb.h
  %i.ac = sub i64 0, %i.r
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac ; 28 uses
  %i.ae = add i64 %i.r, %i.o                      ; 11 uses
  %.not352 = icmp ult ptr %i.ad, %i.k
  br i1 %.not352, label %.critedge400, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %.not353 = icmp eq ptr %i.ad, %i.af
  br i1 %.not353, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp ult i64 %i.r, 256
  br i1 %i.ag, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ah = lshr i64 %i.r, 3                        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 6 uses
  %i.am = trunc nuw nsw i64 %i.ah to i32
  %.idx = shl nuw nsw i64 %i.ah, 4
  %i.an = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx ; 2 uses
  %i.ao = icmp eq ptr %i.aj, %i.an
  br i1 %i.ao, label %.critedge402, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not369 = icmp ult ptr %i.aj, %i.k
  br i1 %.not369, label %.critedge404, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.ar = icmp eq ptr %i.aq, %i.ad
  br i1 %i.ar, label %.critedge402, label %.critedge404, !prof !27

.critedge402:                                     ; preds = %bb.n, %bb.p
  %i.as = icmp eq ptr %i.al, %i.aj
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge402
  %i.at = shl nuw i32 1, %i.am
  %i.au = xor i32 %i.at, -1
  %i.av = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.aw = and i32 %i.av, %i.au
  store i32 %i.aw, ptr @_gm_, align 8, !tbaa !21
  br label %.thread

bb.r:                                             ; preds = %.critedge402
  %i.ax = icmp eq ptr %i.al, %i.an
  br i1 %i.ax, label %.critedge406, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not370 = icmp ult ptr %i.al, %i.k
  br i1 %.not370, label %.critedge408, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = icmp eq ptr %i.az, %i.ad
  br i1 %i.ba, label %.critedge406, label %.critedge408, !prof !27

.critedge406:                                     ; preds = %bb.r, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.aj, ptr %i.bc, align 8, !tbaa !23
  br label %.thread

.critedge408:                                     ; preds = %bb.s, %bb.t
  tail call void @abort() #17
  unreachable

.critedge404:                                     ; preds = %bb.o, %bb.p
  tail call void @abort() #17
  unreachable

bb.u:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 4 uses
  %.not354 = icmp eq ptr %i.bg, %i.ad
  br i1 %.not354, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47 ; 3 uses
  %.not360 = icmp ult ptr %i.bi, %i.k
  br i1 %.not360, label %.critedge410, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46
  %i.bl = icmp eq ptr %i.bk, %i.ad
  br i1 %i.bl, label %bb.x, label %.critedge410, !prof !27

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = icmp eq ptr %i.bn, %i.ad
  br i1 %i.bo, label %bb.y, label %.critedge410, !prof !27

bb.y:                                             ; preds = %bb.x
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !46
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !47
  br label %bb.af

.critedge410:                                     ; preds = %bb.w, %bb.v, %bb.x
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 2 uses
  %.not355 = icmp eq ptr %i.bq, null
  br i1 %.not355, label %bb.aa, label %.critedge.preheader

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42 ; 2 uses
  %.not356 = icmp eq ptr %i.bs, null
  br i1 %.not356, label %bb.af, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.aa, %bb.z
  %.1309.ph = phi ptr [ %i.bq, %bb.z ], [ %i.bs, %bb.aa ]
  %.1307.ph = phi ptr [ %i.bp, %bb.z ], [ %i.br, %bb.aa ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1309 = phi ptr [ %.1309.ph, %.critedge.preheader ], [ %.1309.be, %.critedge.backedge ] ; 3 uses
  %.1307 = phi ptr [ %.1307.ph, %.critedge.preheader ], [ %.1307.be, %.critedge.backedge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1309, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %.not357 = icmp eq ptr %i.bu, null
  br i1 %.not357, label %bb.ab, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.ab
  %.1309.be = phi ptr [ %i.bu, %.critedge ], [ %i.bw, %bb.ab ]
  %.1307.be = phi ptr [ %i.bt, %.critedge ], [ %i.bv, %bb.ab ]
  br label %.critedge, !llvm.loop !85

bb.ab:                                            ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %.1309, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
  %.not358 = icmp eq ptr %i.bw, null
  br i1 %.not358, label %bb.ac, label %.critedge.backedge

bb.ac:                                            ; preds = %bb.ab
  %.not359 = icmp ult ptr %.1307, %i.k
  br i1 %.not359, label %bb.ae, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %.1307, align 8, !tbaa !42
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @abort() #17
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ad, %bb.y
  %.3311 = phi ptr [ %i.bg, %bb.y ], [ %.1309, %bb.ad ], [ null, %bb.aa ] ; 11 uses
  %.not361 = icmp eq ptr %i.be, null
  br i1 %.not361, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  %i.cc = icmp eq ptr %i.ad, %i.cb
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %.3311, ptr %i.ca, align 8, !tbaa !42
  %cond = icmp eq ptr %.3311, null
  br i1 %cond, label %.thread477, label %bb.ao

.thread477:                                       ; preds = %bb.ah
  %i.cd = shl nuw i32 1, %i.by
  %i.ce = xor i32 %i.cd, -1
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.cg = and i32 %i.cf, %i.ce
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.not362 = icmp ult ptr %i.be, %i.k
  br i1 %.not362, label %bb.am, label %bb.aj, !prof !25

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.cj = icmp eq ptr %i.ci, %i.ad
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %.3311, ptr %i.ch, align 8, !tbaa !42
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.3311, ptr %i.ck, align 8, !tbaa !42
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  tail call void @abort() #17
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.not363 = icmp eq ptr %.3311, null
  br i1 %.not363, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.an
  %.not364 = icmp ult ptr %.3311, %i.k
  br i1 %.not364, label %bb.ax, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.cl = getelementptr inbounds nuw i8, ptr %.3311, i64 48
  store ptr %i.be, ptr %i.cl, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 4 uses
  %.not365 = icmp eq ptr %i.cn, null
  br i1 %.not365, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not366 = icmp ult ptr %i.cn, %i.k
  br i1 %.not366, label %bb.as, label %bb.ar, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %i.co = getelementptr inbounds nuw i8, ptr %.3311, i64 32
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store ptr %.3311, ptr %i.cp, align 8, !tbaa !45
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call void @abort() #17
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42 ; 4 uses
  %.not367 = icmp eq ptr %i.cr, null
  br i1 %.not367, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not368 = icmp ult ptr %i.cr, %i.k
  br i1 %.not368, label %bb.aw, label %bb.av, !prof !25

bb.av:                                            ; preds = %bb.au
  %i.cs = getelementptr inbounds nuw i8, ptr %.3311, i64 40
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store ptr %.3311, ptr %i.ct, align 8, !tbaa !45
  br label %.thread

bb.aw:                                            ; preds = %bb.au
  tail call void @abort() #17
  unreachable

bb.ax:                                            ; preds = %bb.ao
  tail call void @abort() #17
  unreachable

bb.ay:                                            ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !28 ; 2 uses
  %i.cw = and i64 %i.cv, 3
  %i.cx = icmp eq i64 %i.cw, 3
  br i1 %i.cx, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.cy = and i64 %i.cv, -2
  store i64 %i.cy, ptr %i.cu, align 8, !tbaa !28
  %i.cz = or i64 %i.ae, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !28
  store i64 %i.ae, ptr %i.p, align 8, !tbaa !30
  br label %bb.ds

.thread:                                          ; preds = %.thread477, %bb.ay, %bb.q, %.critedge406, %bb.an, %bb.av, %bb.at, %bb.af, %bb.g
  %.1299 = phi i64 [ %i.o, %bb.g ], [ %i.ae, %bb.af ], [ %i.ae, %bb.at ], [ %i.ae, %bb.av ], [ %i.ae, %bb.an ], [ %i.ae, %.critedge406 ], [ %i.ae, %bb.q ], [ %i.ae, %bb.ay ], [ %i.ae, %.thread477 ] ; 7 uses
  %.1290 = phi ptr [ %i.a, %bb.g ], [ %i.ad, %bb.af ], [ %i.ad, %bb.at ], [ %i.ad, %bb.av ], [ %i.ad, %bb.an ], [ %i.ad, %.critedge406 ], [ %i.ad, %bb.q ], [ %i.ad, %bb.ay ], [ %i.ad, %.thread477 ] ; 29 uses
  %i.db = icmp ult ptr %.1290, %i.p
  br i1 %i.db, label %bb.ba, label %.critedge400, !prof !27

bb.ba:                                            ; preds = %.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !28 ; 6 uses
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %bb.bb, label %.critedge400, !prof !27

bb.bb:                                            ; preds = %bb.ba
  %i.df = and i64 %i.dd, 2
  %.not371 = icmp eq i64 %i.df, 0
  br i1 %.not371, label %bb.bc, label %bb.cw

bb.bc:                                            ; preds = %bb.bb
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.dh = icmp eq ptr %i.p, %i.dg
  br i1 %i.dh, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.dj = add i64 %i.di, %.1299                   ; 3 uses
  store i64 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  store ptr %.1290, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.dk = or i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !28
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.dn = icmp eq ptr %.1290, %i.dm
  br i1 %i.dn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 48), align 8, !tbaa !57
  %i.dp = icmp ugt i64 %i.dj, %i.do
  br i1 %i.dp, label %bb.bg, label %bb.ds

bb.bg:                                            ; preds = %bb.bf
  %i.dq = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef 0) ; 0 uses
  br label %bb.ds

bb.bh:                                            ; preds = %bb.bc
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31 ; 2 uses
  %i.ds = icmp eq ptr %i.p, %i.dr
  br i1 %i.ds, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.du = add i64 %i.dt, %.1299                   ; 4 uses
  store i64 %i.du, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  store ptr %.1290, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.dv = or i64 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw i8, ptr %.1290, i64 %i.du
  store i64 %i.du, ptr %i.dx, align 8, !tbaa !30
  br label %bb.ds

bb.bj:                                            ; preds = %bb.bh
  %i.dy = and i64 %i.dd, -8
  %i.dz = add i64 %i.dy, %.1299                   ; 5 uses
  %i.ea = icmp ult i64 %i.dd, 256
  br i1 %i.ea, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.eb = lshr i64 %i.dd, 3                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !23 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !26 ; 6 uses
  %i.eg = trunc nuw nsw i64 %i.eb to i32
  %.idx387 = shl nuw nsw i64 %i.eb, 4
  %i.eh = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx387 ; 2 uses
  %i.ei = icmp eq ptr %i.ed, %i.eh
  br i1 %i.ei, label %.critedge414, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not388 = icmp ult ptr %i.ed, %i.k
  br i1 %.not388, label %.critedge416, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26
  %i.el = icmp eq ptr %i.ek, %i.p
  br i1 %i.el, label %.critedge414, label %.critedge416, !prof !27

.critedge414:                                     ; preds = %bb.bk, %bb.bm
  %i.em = icmp eq ptr %i.ef, %i.ed
  br i1 %i.em, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.critedge414
  %i.en = shl nuw i32 1, %i.eg
  %i.eo = xor i32 %i.en, -1
  %i.ep = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.eq = and i32 %i.ep, %i.eo
  store i32 %i.eq, ptr @_gm_, align 8, !tbaa !21
  br label %bb.cv

bb.bo:                                            ; preds = %.critedge414
  %i.er = icmp eq ptr %i.ef, %i.eh
  br i1 %i.er, label %.critedge418, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not389 = icmp ult ptr %i.ef, %i.k
  br i1 %.not389, label %.critedge420, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !23
  %i.eu = icmp eq ptr %i.et, %i.p
  br i1 %i.eu, label %.critedge418, label %.critedge420, !prof !27

.critedge418:                                     ; preds = %bb.bo, %bb.bq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %i.ef, ptr %i.ev, align 8, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ed, ptr %i.ew, align 8, !tbaa !23
  br label %bb.cv

.critedge420:                                     ; preds = %bb.bp, %bb.bq
  tail call void @abort() #17
  unreachable

.critedge416:                                     ; preds = %bb.bl, %bb.bm
  tail call void @abort() #17
  unreachable

bb.br:                                            ; preds = %bb.bj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !45 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46 ; 4 uses
  %.not372 = icmp eq ptr %i.fa, %i.p
  br i1 %.not372, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !47 ; 3 uses
  %.not378 = icmp ult ptr %i.fc, %i.k
  br i1 %.not378, label %.critedge422, label %bb.bt, !prof !25

bb.bt:                                            ; preds = %bb.bs
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46
  %i.ff = icmp eq ptr %i.fe, %i.p
  br i1 %i.ff, label %bb.bu, label %.critedge422, !prof !27

bb.bu:                                            ; preds = %bb.bt
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !47
  %i.fi = icmp eq ptr %i.fh, %i.p
  br i1 %i.fi, label %bb.bv, label %.critedge422, !prof !27

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.fa, ptr %i.fd, align 8, !tbaa !46
  store ptr %i.fc, ptr %i.fg, align 8, !tbaa !47
  br label %bb.cc

.critedge422:                                     ; preds = %bb.bt, %bb.bs, %bb.bu
  tail call void @abort() #17
  unreachable

bb.bw:                                            ; preds = %bb.br
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42 ; 2 uses
  %.not373 = icmp eq ptr %i.fk, null
  br i1 %.not373, label %bb.bx, label %.critedge4.preheader

bb.bx:                                            ; preds = %bb.bw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !42 ; 2 uses
  %.not374 = icmp eq ptr %i.fm, null
  br i1 %.not374, label %bb.cc, label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %bb.bx, %bb.bw
  %.1297.ph = phi ptr [ %i.fk, %bb.bw ], [ %i.fm, %bb.bx ]
  %.1295.ph = phi ptr [ %i.fj, %bb.bw ], [ %i.fl, %bb.bx ]
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.backedge, %.critedge4.preheader
  %.1297 = phi ptr [ %.1297.ph, %.critedge4.preheader ], [ %.1297.be, %.critedge4.backedge ] ; 3 uses
  %.1295 = phi ptr [ %.1295.ph, %.critedge4.preheader ], [ %.1295.be, %.critedge4.backedge ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1297, i64 40 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 2 uses
  %.not375 = icmp eq ptr %i.fo, null
  br i1 %.not375, label %bb.by, label %.critedge4.backedge

.critedge4.backedge:                              ; preds = %.critedge4, %bb.by
  %.1297.be = phi ptr [ %i.fo, %.critedge4 ], [ %i.fq, %bb.by ]
  %.1295.be = phi ptr [ %i.fn, %.critedge4 ], [ %i.fp, %bb.by ]
  br label %.critedge4, !llvm.loop !86

bb.by:                                            ; preds = %.critedge4
  %i.fp = getelementptr inbounds nuw i8, ptr %.1297, i64 32 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !42 ; 2 uses
  %.not376 = icmp eq ptr %i.fq, null
  br i1 %.not376, label %bb.bz, label %.critedge4.backedge

bb.bz:                                            ; preds = %bb.by
  %.not377 = icmp ult ptr %.1295, %i.k
  br i1 %.not377, label %bb.cb, label %bb.ca, !prof !25

bb.ca:                                            ; preds = %bb.bz
  store ptr null, ptr %.1295, align 8, !tbaa !42
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  tail call void @abort() #17
  unreachable

bb.cc:                                            ; preds = %bb.bx, %bb.ca, %bb.bv
  %.3 = phi ptr [ %i.fa, %bb.bv ], [ %.1297, %bb.ca ], [ null, %bb.bx ] ; 11 uses
  %.not379 = icmp eq ptr %i.ey, null
  br i1 %.not379, label %bb.cv, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !48 ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !42
  %i.fw = icmp eq ptr %i.p, %i.fv
  br i1 %i.fw, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr %.3, ptr %i.fu, align 8, !tbaa !42
  %cond424 = icmp eq ptr %.3, null
  br i1 %cond424, label %.thread479, label %bb.cl

.thread479:                                       ; preds = %bb.ce
  %i.fx = shl nuw i32 1, %i.fs
  %i.fy = xor i32 %i.fx, -1
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.ga = and i32 %i.fz, %i.fy
  store i32 %i.ga, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %bb.cv

bb.cf:                                            ; preds = %bb.cd
  %.not380 = icmp ult ptr %i.ey, %i.k
  br i1 %.not380, label %bb.cj, label %bb.cg, !prof !25

bb.cg:                                            ; preds = %bb.cf
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42
  %i.gd = icmp eq ptr %i.gc, %i.p
  br i1 %i.gd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr %.3, ptr %i.gb, align 8, !tbaa !42
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store ptr %.3, ptr %i.ge, align 8, !tbaa !42
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  tail call void @abort() #17
  unreachable

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.not381 = icmp eq ptr %.3, null
  br i1 %.not381, label %bb.cv, label %bb.cl

bb.cl:                                            ; preds = %bb.ce, %bb.ck
  %.not382 = icmp ult ptr %.3, %i.k
  br i1 %.not382, label %bb.cu, label %bb.cm, !prof !25

bb.cm:                                            ; preds = %bb.cl
  %i.gf = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.ey, ptr %i.gf, align 8, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42 ; 4 uses
  %.not383 = icmp eq ptr %i.gh, null
  br i1 %.not383, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not384 = icmp ult ptr %i.gh, %i.k
  br i1 %.not384, label %bb.cp, label %bb.co, !prof !25

bb.co:                                            ; preds = %bb.cn
  %i.gi = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !42
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store ptr %.3, ptr %i.gj, align 8, !tbaa !45
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  tail call void @abort() #17
  unreachable

bb.cq:                                            ; preds = %bb.co, %bb.cm
  %i.gk = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !42 ; 4 uses
  %.not385 = icmp eq ptr %i.gl, null
  br i1 %.not385, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not386 = icmp ult ptr %i.gl, %i.k
  br i1 %.not386, label %bb.ct, label %bb.cs, !prof !25

bb.cs:                                            ; preds = %bb.cr
  %i.gm = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store ptr %.3, ptr %i.gn, align 8, !tbaa !45
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  tail call void @abort() #17
  unreachable

bb.cu:                                            ; preds = %bb.cl
  tail call void @abort() #17
  unreachable

bb.cv:                                            ; preds = %.thread479, %bb.cc, %bb.cq, %bb.cs, %bb.ck, %.critedge418, %bb.bn
  %i.go = or i64 %i.dz, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !28
  %i.gq = getelementptr inbounds nuw i8, ptr %.1290, i64 %i.dz
  store i64 %i.dz, ptr %i.gq, align 8, !tbaa !30
  %.not390 = icmp eq ptr %.1290, %i.dr
  br i1 %.not390, label %.thread429, label %bb.cx

.thread429:                                       ; preds = %bb.cv
  store i64 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  br label %bb.ds

bb.cw:                                            ; preds = %bb.bb
  %i.gr = and i64 %i.dd, -2
  store i64 %i.gr, ptr %i.dc, align 8, !tbaa !28
  %i.gs = or i64 %.1299, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !28
  %i.gu = getelementptr inbounds nuw i8, ptr %.1290, i64 %.1299
  store i64 %.1299, ptr %i.gu, align 8, !tbaa !30
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.2300 = phi i64 [ %.1299, %bb.cw ], [ %i.dz, %bb.cv ] ; 6 uses
  %i.gv = icmp ult i64 %.2300, 256
  br i1 %i.gv, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.gw = lshr i64 %.2300, 3                      ; 2 uses
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %.idx395 = shl nuw nsw i64 %i.gw, 4
  %i.gy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx395 ; 4 uses
  %i.gz = load i32, ptr @_gm_, align 8, !tbaa !21 ; 2 uses
  %i.ha = shl nuw i32 1, %i.gx                    ; 2 uses
  %i.hb = and i32 %i.gz, %i.ha
  %.not396 = icmp eq i32 %i.hb, 0
  br i1 %.not396, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.hc = or i32 %i.gz, %i.ha
  store i32 %i.hc, ptr @_gm_, align 8, !tbaa !21
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !23 ; 2 uses
  %.not397 = icmp ult ptr %i.he, %i.k
  br i1 %.not397, label %bb.db, label %bb.dc, !prof !25

bb.db:                                            ; preds = %bb.da
  tail call void @abort() #17
  unreachable

bb.dc:                                            ; preds = %bb.da, %bb.cz
  %.0292 = phi ptr [ %i.gy, %bb.cz ], [ %i.he, %bb.da ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store ptr %.1290, ptr %i.hf, align 8, !tbaa !23
  %i.hg = getelementptr inbounds nuw i8, ptr %.0292, i64 24
  store ptr %.1290, ptr %i.hg, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %.1290, i64 16
  store ptr %.0292, ptr %i.hh, align 8, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.1290, i64 24
  store ptr %i.gy, ptr %i.hi, align 8, !tbaa !26
  br label %bb.ds

bb.dd:                                            ; preds = %bb.cx
  %i.hj = lshr i64 %.2300, 8
  %i.hk = trunc i64 %i.hj to i32                  ; 3 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hm = icmp ugt i32 %i.hk, 65535
  br i1 %i.hm, label %bb.dg, label %bb.df
end_hunk_2
begin_hunk_3_@sys_trim:bb.a
  %.not54 = icmp eq ptr %i.af, inttoptr (i64 -1 to ptr)
  br i1 %.not54, label %bb.l, label %has_segment_link.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %.0.i, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  %i.ai = tail call i32 @munmap(ptr noundef %i.ah, i64 noundef %i.w) #16
  %i.aj = icmp ne i32 %i.ai, 0
  %.not55 = icmp eq i64 %i.w, 0
  %or.cond66 = or i1 %i.aj, %.not55
  br i1 %or.cond66, label %has_segment_link.exit.thread61, label %bb.m

has_segment_link.exit:                            ; preds = %bb.k
  %.not55.old = icmp eq i64 %i.w, 0
  br i1 %.not55.old, label %has_segment_link.exit.thread61, label %bb.m

bb.m:                                             ; preds = %bb.l, %has_segment_link.exit
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !59
  %i.al = sub i64 %i.ak, %i.w
  store i64 %i.al, ptr %i.r, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ao = sub i64 %i.an, %i.w
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !50
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !33
  %i.ar = sub i64 %i.aq, %i.w                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 0, %i.at
  %i.av = and i64 %i.au, 15                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = sub i64 %i.ar, %i.av                    ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !34
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !33
  %i.ay = or i64 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 80, ptr %i.bb, align 8, !tbaa !28
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !57
  br label %has_segment_link.exit.thread61

has_segment_link.exit.thread61:                   ; preds = %.preheader, %bb.l, %segment_holding.exit, %has_segment_link.exit, %bb.m, %bb.e
  %.2 = phi i64 [ 0, %bb.e ], [ %i.w, %bb.m ], [ 0, %has_segment_link.exit ], [ 0, %segment_holding.exit ], [ 0, %bb.l ], [ 0, %.preheader ]
  %i.be = tail call fastcc i64 @release_unused_segments(ptr noundef %0)
  %i.bf = sub i64 0, %i.be
  %i.bg = icmp eq i64 %.2, %i.bf
  br i1 %i.bg, label %bb.n, label %bb.p

bb.n:                                             ; preds = %has_segment_link.exit.thread61
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !57
  %i.bk = icmp ugt i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 -1, ptr %i.bi, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %has_segment_link.exit.thread61, %bb.n, %bb.o, %bb.d, %bb.c
  %not..3 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ 1, %has_segment_link.exit.thread61 ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %not..3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @release_unused_segments(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not232 = icmp eq ptr %i.b, null
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %.0156236 = phi i64 [ 0, %.lr.ph ], [ %.3, %bb.az ] ; 7 uses
  %.0166235 = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.az ] ; 10 uses
  %.0170234 = phi ptr [ %i.c, %.lr.ph ], [ %.3169, %bb.az ] ; 2 uses
  %.0171233 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.az ]
  %i.j = load ptr, ptr %.0166235, align 8, !tbaa !58 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0166235, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0166235, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 3 uses
  %i.o = add nuw nsw i32 %.0171233, 1             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0166235, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !61
  %i.r = and i32 %i.q, 9
  %or.cond = icmp eq i32 %i.r, 1
  br i1 %or.cond, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %i.u, 15                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v ; 34 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28   ; 3 uses
  %i.z = and i64 %i.y, -8                         ; 4 uses
  %i.aa = and i64 %i.y, 3
  %.not187 = icmp eq i64 %i.aa, 1
  br i1 %.not187, label %bb.d, label %bb.az

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i64 %i.l, -80
  %i.ac = add nuw nsw i64 %i.z, %i.v
  %.not188 = icmp slt i64 %i.ac, %i.ab
  br i1 %.not188, label %bb.az, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ae = icmp eq ptr %i.w, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.d, align 8, !tbaa !31
  store i64 0, ptr %i.h, align 8, !tbaa !29
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 4 uses
  %.not189 = icmp eq ptr %i.ai, %i.w
  br i1 %.not189, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 3 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not195 = icmp ult ptr %i.ak, %i.al
  br i1 %.not195, label %.critedge210, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %bb.j, label %.critedge210, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %bb.k, label %.critedge210, !prof !27

bb.k:                                             ; preds = %bb.j
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !46
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !47
  br label %bb.r

.critedge210:                                     ; preds = %bb.i, %bb.h, %bb.j
  tail call void @abort() #17
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %.not190 = icmp eq ptr %i.at, null
  br i1 %.not190, label %bb.m, label %.critedge.preheader

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not191 = icmp eq ptr %i.av, null
  br i1 %.not191, label %bb.r, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.m, %bb.l
  %.1163.ph = phi ptr [ %i.at, %bb.l ], [ %i.av, %bb.m ]
  %.1161.ph = phi ptr [ %i.as, %bb.l ], [ %i.au, %bb.m ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1163 = phi ptr [ %.1163.ph, %.critedge.preheader ], [ %.1163.be, %.critedge.backedge ] ; 3 uses
  %.1161 = phi ptr [ %.1161.ph, %.critedge.preheader ], [ %.1161.be, %.critedge.backedge ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1163, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  %.not192 = icmp eq ptr %i.ax, null
  br i1 %.not192, label %bb.n, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.n
  %.1163.be = phi ptr [ %i.ax, %.critedge ], [ %i.az, %bb.n ]
  %.1161.be = phi ptr [ %i.aw, %.critedge ], [ %i.ay, %bb.n ]
  br label %.critedge, !llvm.loop !87

bb.n:                                             ; preds = %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %.1163, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %.not193 = icmp eq ptr %i.az, null
  br i1 %.not193, label %bb.o, label %.critedge.backedge

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not194 = icmp ult ptr %.1161, %i.ba
  br i1 %.not194, label %bb.q, label %bb.p, !prof !25

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %.1161, align 8, !tbaa !42
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @abort() #17
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.p, %bb.k
  %.3165 = phi ptr [ %i.ai, %bb.k ], [ %.1163, %bb.p ], [ null, %bb.m ] ; 11 uses
  %.not196 = icmp eq ptr %i.ag, null
  br i1 %.not196, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !48 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = icmp eq ptr %i.w, %i.bf
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.3165, ptr %i.be, align 8, !tbaa !42
  %cond = icmp eq ptr %.3165, null
  br i1 %cond, label %.thread265, label %bb.aa

.thread265:                                       ; preds = %bb.t
  %i.bh = shl nuw i32 1, %i.bc
  %i.bi = xor i32 %i.bh, -1
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !32
  %i.bk = and i32 %i.bj, %i.bi
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !32
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not197 = icmp ult ptr %i.ag, %i.bl
  br i1 %.not197, label %bb.y, label %bb.v, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42
  %i.bo = icmp eq ptr %i.bn, %i.w
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr %.3165, ptr %i.bm, align 8, !tbaa !42
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %.3165, ptr %i.bp, align 8, !tbaa !42
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.w
  %.not198 = icmp eq ptr %.3165, null
  br i1 %.not198, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.z
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !24  ; 3 uses
  %.not199 = icmp ult ptr %.3165, %i.bq
  br i1 %.not199, label %bb.aj, label %bb.ab, !prof !25

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %.3165, i64 48
  store ptr %i.ag, ptr %i.br, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42 ; 4 uses
  %.not200 = icmp eq ptr %i.bt, null
  br i1 %.not200, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not201 = icmp ult ptr %i.bt, %i.bq
  br i1 %.not201, label %bb.ae, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %.3165, i64 32
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store ptr %.3165, ptr %i.bv, align 8, !tbaa !45
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @abort() #17
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42 ; 4 uses
  %.not202 = icmp eq ptr %i.bx, null
  br i1 %.not202, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not203 = icmp ult ptr %i.bx, %i.bq
  br i1 %.not203, label %bb.ai, label %bb.ah, !prof !25

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %.3165, i64 40
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store ptr %.3165, ptr %i.bz, align 8, !tbaa !45
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  tail call void @abort() #17
  unreachable

bb.aj:                                            ; preds = %bb.aa
  tail call void @abort() #17
  unreachable

bb.ak:                                            ; preds = %.thread265, %bb.r, %bb.af, %bb.ah, %bb.z, %bb.f
  %i.ca = tail call i32 @munmap(ptr noundef %i.j, i64 noundef %i.l) #16
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cc = add i64 %i.l, %.0156236
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !50
  %i.ce = sub i64 %i.cd, %i.l
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %.0170234, i64 16
  store ptr %i.n, ptr %i.cf, align 8, !tbaa !60
  br label %bb.az

bb.am:                                            ; preds = %bb.ak
  %i.cg = lshr i64 %i.y, 8
  %i.ch = trunc i64 %i.cg to i32                  ; 3 uses
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
  %.0158 = phi i32 [ %i.cs, %bb.ao ], [ 0, %bb.am ], [ 31, %bb.an ] ; 5 uses
  %i.ct = zext nneg i32 %.0158 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 %.0158, ptr %i.cv, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !32  ; 2 uses
  %i.cy = shl nuw i32 1, %.0158                   ; 2 uses
  %i.cz = and i32 %i.cx, %i.cy
  %.not204 = icmp eq i32 %i.cz, 0
  br i1 %.not204, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.da = or i32 %i.cx, %i.cy
  store i32 %i.da, ptr %i.g, align 4, !tbaa !32
  store ptr %i.w, ptr %i.cu, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %i.cu, ptr %i.db, align 8, !tbaa !45
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.w, ptr %i.dd, align 8, !tbaa !47
  br label %bb.az

bb.ar:                                            ; preds = %bb.ap
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.df = icmp eq i32 %.0158, 31
  %i.dg = lshr i32 %.0158, 1
  %i.dh = add nuw nsw i32 %i.dg, 6
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = sub nuw nsw i64 63, %i.di
  %i.dk = select i1 %i.df, i64 0, i64 %i.dj
  %i.dl = shl i64 %i.z, %i.dk
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %.0155 = phi ptr [ %i.de, %bb.ar ], [ %i.dt, %bb.at ] ; 6 uses
  %.0154 = phi i64 [ %i.dl, %bb.ar ], [ %i.ds, %bb.at ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0155, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !44
  %i.do = and i64 %i.dn, -8
  %.not205 = icmp eq i64 %i.do, %i.z
  br i1 %.not205, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %.0155, i64 32 ; 2 uses
  %i.dq = lshr i64 %.0154, 63                     ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = shl i64 %.0154, 1
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %.not207 = icmp eq ptr %i.dt, null
  br i1 %.not207, label %bb.au, label %bb.as

bb.au:                                            ; preds = %bb.at
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not208 = icmp ult ptr %i.du, %i.dv
  br i1 %.not208, label %bb.av, label %.thread, !prof !25

.thread:                                          ; preds = %bb.au
  store ptr %i.w, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %.0155, ptr %i.dw, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.w, ptr %i.dx, align 8, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.w, ptr %i.dy, align 8, !tbaa !47
  br label %bb.az

bb.av:                                            ; preds = %bb.au
  tail call void @abort() #17
  unreachable

bb.aw:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %.0155, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47 ; 3 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !24  ; 2 uses
  %.not206 = icmp uge ptr %.0155, %i.eb
  %i.ec = icmp uge ptr %i.ea, %i.eb
  %spec.select = select i1 %.not206, i1 %i.ec, i1 false, !prof !27
  br i1 %spec.select, label %bb.ax, label %bb.ay, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.w, ptr %i.ed, align 8, !tbaa !46
  store ptr %i.w, ptr %i.dz, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ea, ptr %i.ee, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.0155, ptr %i.ef, align 8, !tbaa !46
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.eg, align 8, !tbaa !45
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  tail call void @abort() #17
  unreachable

bb.az:                                            ; preds = %.thread, %bb.c, %bb.d, %bb.aq, %bb.ax, %bb.al, %bb.b
  %.3169 = phi ptr [ %.0166235, %bb.b ], [ %.0166235, %bb.c ], [ %.0166235, %bb.d ], [ %.0170234, %bb.al ], [ %.0166235, %bb.ax ], [ %.0166235, %.thread ], [ %.0166235, %bb.aq ]
  %.3 = phi i64 [ %.0156236, %bb.b ], [ %.0156236, %bb.c ], [ %.0156236, %bb.d ], [ %i.cc, %bb.al ], [ %.0156236, %bb.ax ], [ %.0156236, %.thread ], [ %.0156236, %bb.aq ] ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !88

._crit_edge.loopexit:                             ; preds = %bb.az
  %i.eh = tail call i32 @llvm.umax.i32(i32 %i.o, i32 4095)
  %i.ei = zext nneg i32 %i.eh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0171.lcssa = phi i64 [ 4095, %bb.a ], [ %i.ei, %._crit_edge.loopexit ]
  %.0156.lcssa = phi i64 [ 0, %bb.a ], [ %.3, %._crit_edge.loopexit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.0171.lcssa, ptr %i.ej, align 8, !tbaa !56
  ret i64 %.0156.lcssa
}

; Function Attrs: nounwind uwtable
define hidden ptr @dlcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %.0, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define hidden ptr @dlrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %i.d = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.d, align 4, !tbaa !19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 23
  %i.f = add nuw i64 %1, 23
  %i.g = and i64 %i.f, -16
  %i.h = select i1 %i.e, i64 32, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0.i = phi i32 [ %i.o, %.preheader.backedge ], [ 0, %bb.f ]
  %i.m = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader
  %i.n = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader
  %i.o = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.p = and i32 %i.o, 63
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.critedge.i
  %i.r = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.g, %bb.e, %bb.f
  %i.s = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.i, i64 noundef %i.h, i32 noundef 1) ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.u = and i32 %i.t, 2
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %spin_acquire_lock.exit
  %.not40 = icmp eq ptr %i.s, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.w = tail call ptr @dlmalloc(i64 noundef %1)  ; 3 uses
  %.not41 = icmp eq ptr %i.w, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds i8, ptr %0, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = and i64 %i.y, -8
  %i.aa = and i64 %i.y, 3
  %i.ab = icmp eq i64 %i.aa, 0
  %.neg = select i1 %i.ab, i64 -16, i64 -8
  %i.ac = add i64 %.neg, %i.z
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 8 %0, i64 %i.ad, i1 false)
  tail call void @dlfree(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.v, %bb.k ], [ %i.w, %bb.m ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_realloc_chunk(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 16, -105) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %i.c = and i64 %i.b, -8                         ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 9 uses
  %.not = icmp ult ptr %1, %i.f
  %i.g = and i64 %i.b, 3                          ; 2 uses
  %.not246 = icmp eq i64 %i.g, 1
  %.not247 = icmp eq i64 %i.c, 0
  %i.h = or i1 %.not246, %.not247
  %or.cond270 = select i1 %.not, i1 true, i1 %i.h, !prof !64
  br i1 %or.cond270, label %.critedge272, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 5 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.c, label %.critedge272, !prof !27

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
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  %i.q = shl i64 %i.p, 1
  %.not43.i = icmp ugt i64 %i.o, %i.q
  br i1 %.not43.i, label %bb.g, label %mmap_resize.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i64, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.s = add i64 %i.c, 32
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
  %i.v = add nuw i64 %2, 62
  %i.w = add i64 %i.v, %i.u
  %i.x = sub i64 0, %i.u
  %i.y = and i64 %i.w, %i.x                       ; 4 uses
  %i.z = sub i64 0, %i.r
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.aa, i64 noundef %i.t, i64 noundef %i.y, i32 noundef range(i32 0, 2) %3) #16 ; 5 uses
  %.not44.i = icmp eq ptr %i.ab, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i, label %mmap_resize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 4 uses
  %i.ad = sub i64 %i.y, %i.r
  %i.ae = add i64 %i.ad, -32                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 11, ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.y
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  store i64 0, ptr %i.aj, align 8, !tbaa !28
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.al = icmp ult ptr %i.ab, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = sub i64 %i.y, %i.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %mmap_resize.exit

bb.k:                                             ; preds = %bb.j
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !51
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
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = or i64 %i.at, 3
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !28
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !28
  %i.bc = or i64 %i.bb, 1
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.av, i64 noundef %i.at)
  br label %mmap_resize.exit

bb.o:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = icmp eq ptr %i.d, %i.be
  br i1 %i.bf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.bi = add i64 %i.bh, %i.c                     ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, %2
  br i1 %i.bj, label %bb.q, label %mmap_resize.exit

bb.q:                                             ; preds = %bb.p
  %i.bk = sub nuw i64 %i.bi, %2                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.bm = and i64 %i.b, 1
  %i.bn = or i64 %2, %i.bm
  %i.bo = or i64 %i.bn, 2
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = or i64 %i.bk, 1
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !28
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !34
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !33
  br label %mmap_resize.exit

bb.r:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = icmp eq ptr %i.d, %i.bs
  br i1 %i.bt, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !29
  %i.bw = add i64 %i.bv, %i.c                     ; 5 uses
  %.not268 = icmp ult i64 %i.bw, %2
  br i1 %.not268, label %mmap_resize.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = sub nuw i64 %i.bw, %2                   ; 4 uses
  %i.by = icmp ugt i64 %i.bx, 31
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw ; 2 uses
  %i.cb = and i64 %i.b, 1
  %i.cc = or i64 %2, %i.cb
  %i.cd = or i64 %i.cc, 2
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = or i64 %i.bx, 1
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !28
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28
  %i.ci = and i64 %i.ch, -2
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !28
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cj = and i64 %i.b, 1
  %i.ck = or i64 %i.cj, %i.bw
  %i.cl = or i64 %i.ck, 2
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28
  %i.cp = or i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge269 = phi i64 [ 0, %bb.v ], [ %i.bx, %bb.u ]
  %storemerge = phi ptr [ null, %bb.v ], [ %i.bz, %bb.u ]
  store i64 %storemerge269, ptr %i.bu, align 8, !tbaa !29
  store ptr %storemerge, ptr %i.br, align 8, !tbaa !31
  br label %mmap_resize.exit

bb.x:                                             ; preds = %bb.r
  %i.cq = and i64 %i.j, 2
  %.not249 = icmp eq i64 %i.cq, 0
  br i1 %.not249, label %bb.y, label %mmap_resize.exit

bb.y:                                             ; preds = %bb.x
  %i.cr = and i64 %i.j, -8
  %i.cs = add i64 %i.cr, %i.c                     ; 5 uses
  %.not250 = icmp ult i64 %i.cs, %2
  br i1 %.not250, label %mmap_resize.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = sub nuw i64 %i.cs, %2                   ; 3 uses
  %i.cu = icmp ult i64 %i.j, 256
  br i1 %i.cu, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.cv = lshr i64 %i.j, 3                        ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !26 ; 6 uses
  %i.da = trunc nuw nsw i64 %i.cv to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx = shl nuw nsw i64 %i.cv, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx ; 2 uses
  %i.dd = icmp eq ptr %i.cx, %i.dc
  br i1 %i.dd, label %.critedge274, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not266 = icmp ult ptr %i.cx, %i.f
  br i1 %.not266, label %.critedge276, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26
  %i.dg = icmp eq ptr %i.df, %i.d
  br i1 %i.dg, label %.critedge274, label %.critedge276, !prof !27

.critedge274:                                     ; preds = %bb.aa, %bb.ac
  %i.dh = icmp eq ptr %i.cz, %i.cx
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge274
  %i.di = shl nuw i32 1, %i.da
  %i.dj = xor i32 %i.di, -1
  %i.dk = load i32, ptr %0, align 8, !tbaa !21
  %i.dl = and i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %0, align 8, !tbaa !21
  br label %bb.bl

bb.ae:                                            ; preds = %.critedge274
  %i.dm = icmp eq ptr %i.cz, %i.dc
  br i1 %i.dm, label %.critedge278, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not267 = icmp ult ptr %i.cz, %i.f
  br i1 %.not267, label %.critedge280, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23
  %i.dp = icmp eq ptr %i.do, %i.d
  br i1 %i.dp, label %.critedge278, label %.critedge280, !prof !27

.critedge278:                                     ; preds = %bb.ae, %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cz, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.cx, ptr %i.dr, align 8, !tbaa !23
  br label %bb.bl

.critedge280:                                     ; preds = %bb.af, %bb.ag
  tail call void @abort() #17
  unreachable

.critedge276:                                     ; preds = %bb.ab, %bb.ac
  tail call void @abort() #17
  unreachable

bb.ah:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !45 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !46 ; 4 uses
  %.not251 = icmp eq ptr %i.dv, %i.d
  br i1 %.not251, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47 ; 3 uses
  %.not257 = icmp ult ptr %i.dx, %i.f
  br i1 %.not257, label %.critedge282, label %bb.aj, !prof !25

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !46
  %i.ea = icmp eq ptr %i.dz, %i.d
  br i1 %i.ea, label %bb.ak, label %.critedge282, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !47
  %i.ed = icmp eq ptr %i.ec, %i.d
  br i1 %i.ed, label %bb.al, label %.critedge282, !prof !27

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !46
  store ptr %i.dx, ptr %i.eb, align 8, !tbaa !47
  br label %bb.as

.critedge282:                                     ; preds = %bb.aj, %bb.ai, %bb.ak
  tail call void @abort() #17
  unreachable

bb.am:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42 ; 2 uses
  %.not252 = icmp eq ptr %i.ef, null
  br i1 %.not252, label %bb.an, label %.critedge.preheader

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !42 ; 2 uses
  %.not253 = icmp eq ptr %i.eh, null
  br i1 %.not253, label %bb.as, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.an, %bb.am
  %.1219.ph = phi ptr [ %i.ef, %bb.am ], [ %i.eh, %bb.an ]
  %.1217.ph = phi ptr [ %i.ee, %bb.am ], [ %i.eg, %bb.an ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1219 = phi ptr [ %.1219.ph, %.critedge.preheader ], [ %.1219.be, %.critedge.backedge ] ; 3 uses
  %.1217 = phi ptr [ %.1217.ph, %.critedge.preheader ], [ %.1217.be, %.critedge.backedge ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1219, i64 40 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42 ; 2 uses
  %.not254 = icmp eq ptr %i.ej, null
  br i1 %.not254, label %bb.ao, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.ao
  %.1219.be = phi ptr [ %i.ej, %.critedge ], [ %i.el, %bb.ao ]
  %.1217.be = phi ptr [ %i.ei, %.critedge ], [ %i.ek, %bb.ao ]
  br label %.critedge, !llvm.loop !89

bb.ao:                                            ; preds = %.critedge
  %i.ek = getelementptr inbounds nuw i8, ptr %.1219, i64 32 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %.not255 = icmp eq ptr %i.el, null
  br i1 %.not255, label %bb.ap, label %.critedge.backedge

bb.ap:                                            ; preds = %bb.ao
  %.not256 = icmp ult ptr %.1217, %i.f
  br i1 %.not256, label %bb.ar, label %bb.aq, !prof !25

bb.aq:                                            ; preds = %bb.ap
  store ptr null, ptr %.1217, align 8, !tbaa !42
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  tail call void @abort() #17
  unreachable

bb.as:                                            ; preds = %bb.an, %bb.aq, %bb.al
  %.3 = phi ptr [ %i.dv, %bb.al ], [ %.1219, %bb.aq ], [ null, %bb.an ] ; 11 uses
  %.not258 = icmp eq ptr %i.dt, null
  br i1 %.not258, label %bb.bl, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !48 ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42
  %i.es = icmp eq ptr %i.d, %i.er
  br i1 %i.es, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store ptr %.3, ptr %i.eq, align 8, !tbaa !42
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread, label %bb.bb

.thread:                                          ; preds = %bb.au
  %i.et = shl nuw i32 1, %i.eo
  %i.eu = xor i32 %i.et, -1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !32
  %i.ex = and i32 %i.ew, %i.eu
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !32
  br label %bb.bl

bb.av:                                            ; preds = %bb.at
  %.not259 = icmp ult ptr %i.dt, %i.f
  br i1 %.not259, label %bb.az, label %bb.aw, !prof !25

bb.aw:                                            ; preds = %bb.av
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !42
  %i.fa = icmp eq ptr %i.ez, %i.d
  br i1 %i.fa, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %.3, ptr %i.ey, align 8, !tbaa !42
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr %.3, ptr %i.fb, align 8, !tbaa !42
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  tail call void @abort() #17
  unreachable

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.not260 = icmp eq ptr %.3, null
  br i1 %.not260, label %bb.bl, label %bb.bb

bb.bb:                                            ; preds = %bb.au, %bb.ba
  %.not261 = icmp ult ptr %.3, %i.f
  br i1 %.not261, label %bb.bk, label %bb.bc, !prof !25

bb.bc:                                            ; preds = %bb.bb
  %i.fc = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.dt, ptr %i.fc, align 8, !tbaa !45
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !42 ; 4 uses
  %.not262 = icmp eq ptr %i.fe, null
  br i1 %.not262, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not263 = icmp ult ptr %i.fe, %i.f
  br i1 %.not263, label %bb.bf, label %bb.be, !prof !25

bb.be:                                            ; preds = %bb.bd
  %i.ff = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr %.3, ptr %i.fg, align 8, !tbaa !45
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  tail call void @abort() #17
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 4 uses
  %.not264 = icmp eq ptr %i.fi, null
  br i1 %.not264, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not265 = icmp ult ptr %i.fi, %i.f
  br i1 %.not265, label %bb.bj, label %bb.bi, !prof !25

bb.bi:                                            ; preds = %bb.bh
  %i.fj = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store ptr %.3, ptr %i.fk, align 8, !tbaa !45
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  tail call void @abort() #17
  unreachable

bb.bk:                                            ; preds = %bb.bb
  tail call void @abort() #17
  unreachable

bb.bl:                                            ; preds = %.thread, %bb.as, %bb.bg, %bb.bi, %bb.ba, %.critedge278, %bb.ad
  %i.fl = icmp ult i64 %i.ct, 32
  br i1 %i.fl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fm = and i64 %i.b, 1
  %i.fn = or disjoint i64 %i.fm, %i.cs
  %i.fo = or disjoint i64 %i.fn, 2
  store i64 %i.fo, ptr %i.a, align 8, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !28
  %i.fs = or i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !28
  br label %mmap_resize.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.fu = and i64 %i.b, 1
  %i.fv = or i64 %2, %i.fu
  %i.fw = or i64 %i.fv, 2
  store i64 %i.fw, ptr %i.a, align 8, !tbaa !28
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = or i64 %i.ct, 3
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !28
  %i.gc = or i64 %i.gb, 1
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef %0, ptr noundef nonnull %i.ft, i64 noundef %i.ct)
  br label %mmap_resize.exit

.critedge272:                                     ; preds = %bb.a, %bb.b
  tail call void @abort() #17
  unreachable

mmap_resize.exit:                                 ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %bb.d, %bb.y, %bb.bn, %bb.bm, %bb.s, %bb.w, %bb.m, %bb.n, %bb.q, %bb.p, %bb.x
  %.2 = phi ptr [ %1, %bb.bm ], [ null, %bb.s ], [ %1, %bb.q ], [ null, %bb.p ], [ %1, %bb.m ], [ null, %bb.x ], [ %1, %bb.n ], [ %1, %bb.w ], [ null, %bb.y ], [ %1, %bb.bn ], [ %1, %bb.f ], [ null, %bb.d ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @mspace_malloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
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
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !19
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
end_hunk_3
begin_hunk_4_@mspace_free:bb.a

.critedge.i:                                      ; preds = %bb.d, %.preheader
  %i.i = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.j = and i32 %i.i, 63
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.preheader.backedge

bb.e:                                             ; preds = %.critedge.i
  %i.l = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.e, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.d, %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 22 uses
  %.not412 = icmp ult ptr %i.a, %i.n
  br i1 %.not412, label %.critedge463, label %bb.f, !prof !25

bb.f:                                             ; preds = %spin_acquire_lock.exit
  %i.o = getelementptr inbounds i8, ptr %1, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28   ; 4 uses
  %i.q = and i64 %i.p, 3
  %.not498 = icmp eq i64 %i.q, 1
  br i1 %.not498, label %.critedge463, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.r = and i64 %i.p, -8                         ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.r ; 23 uses
  %i.t = and i64 %i.p, 1
  %.not413 = icmp eq i64 %i.t, 0
  br i1 %.not413, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.v = and i64 %i.p, 2
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = add i64 %i.r, 32
  %i.y = add i64 %i.x, %i.u                       ; 2 uses
  %i.z = sub i64 0, %i.u
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  %i.ab = tail call i32 @munmap(ptr noundef nonnull %i.aa, i64 noundef %i.y) #16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.ds

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.af = sub i64 %i.ae, %i.y
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !50
  br label %bb.ds

bb.k:                                             ; preds = %bb.h
  %i.ag = sub i64 0, %i.u
  %i.ah = getelementptr inbounds i8, ptr %i.a, i64 %i.ag ; 28 uses
  %i.ai = add i64 %i.u, %i.r                      ; 11 uses
  %.not414 = icmp ult ptr %i.ah, %i.n
  br i1 %.not414, label %.critedge463, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %.not415 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not415, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp ult i64 %i.u, 256
  br i1 %i.al, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.am = lshr i64 %i.u, 3                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26 ; 6 uses
  %i.ar = trunc nuw nsw i64 %i.am to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 2 uses
  %i.au = icmp eq ptr %i.ao, %i.at
  br i1 %i.au, label %.critedge465, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not431 = icmp ult ptr %i.ao, %i.n
  br i1 %.not431, label %.critedge467, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %.critedge465, label %.critedge467, !prof !27

.critedge465:                                     ; preds = %bb.n, %bb.p
  %i.ay = icmp eq ptr %i.aq, %i.ao
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge465
  %i.az = shl nuw i32 1, %i.ar
  %i.ba = xor i32 %i.az, -1
  %i.bb = load i32, ptr %0, align 8, !tbaa !21
  %i.bc = and i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %0, align 8, !tbaa !21
  br label %.thread

bb.r:                                             ; preds = %.critedge465
  %i.bd = icmp eq ptr %i.aq, %i.at
  br i1 %i.bd, label %.critedge469, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not432 = icmp ult ptr %i.aq, %i.n
  br i1 %.not432, label %.critedge471, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23
  %i.bg = icmp eq ptr %i.bf, %i.ah
  br i1 %i.bg, label %.critedge469, label %.critedge471, !prof !27

.critedge469:                                     ; preds = %bb.r, %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ao, ptr %i.bi, align 8, !tbaa !23
  br label %.thread

.critedge471:                                     ; preds = %bb.s, %bb.t
  tail call void @abort() #17
  unreachable

.critedge467:                                     ; preds = %bb.o, %bb.p
  tail call void @abort() #17
  unreachable

bb.u:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 4 uses
  %.not416 = icmp eq ptr %i.bm, %i.ah
  br i1 %.not416, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47 ; 3 uses
  %.not422 = icmp ult ptr %i.bo, %i.n
  br i1 %.not422, label %.critedge473, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46
  %i.br = icmp eq ptr %i.bq, %i.ah
  br i1 %i.br, label %bb.x, label %.critedge473, !prof !27

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47
  %i.bu = icmp eq ptr %i.bt, %i.ah
  br i1 %i.bu, label %bb.y, label %.critedge473, !prof !27

bb.y:                                             ; preds = %bb.x
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !46
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !47
  br label %bb.af

.critedge473:                                     ; preds = %bb.w, %bb.v, %bb.x
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
  %.not417 = icmp eq ptr %i.bw, null
  br i1 %.not417, label %bb.aa, label %.critedge.preheader

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42 ; 2 uses
  %.not418 = icmp eq ptr %i.by, null
  br i1 %.not418, label %bb.af, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.aa, %bb.z
  %.1368.ph = phi ptr [ %i.bw, %bb.z ], [ %i.by, %bb.aa ]
  %.1366.ph = phi ptr [ %i.bv, %bb.z ], [ %i.bx, %bb.aa ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1368 = phi ptr [ %.1368.ph, %.critedge.preheader ], [ %.1368.be, %.critedge.backedge ] ; 3 uses
  %.1366 = phi ptr [ %.1366.ph, %.critedge.preheader ], [ %.1366.be, %.critedge.backedge ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1368, i64 40 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %.not419 = icmp eq ptr %i.ca, null
  br i1 %.not419, label %bb.ab, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.ab
  %.1368.be = phi ptr [ %i.ca, %.critedge ], [ %i.cc, %bb.ab ]
  %.1366.be = phi ptr [ %i.bz, %.critedge ], [ %i.cb, %bb.ab ]
  br label %.critedge, !llvm.loop !90

bb.ab:                                            ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %.1368, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42 ; 2 uses
  %.not420 = icmp eq ptr %i.cc, null
  br i1 %.not420, label %bb.ac, label %.critedge.backedge

bb.ac:                                            ; preds = %bb.ab
  %.not421 = icmp ult ptr %.1366, %i.n
  br i1 %.not421, label %bb.ae, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %.1366, align 8, !tbaa !42
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @abort() #17
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ad, %bb.y
  %.3370 = phi ptr [ %i.bm, %bb.y ], [ %.1368, %bb.ad ], [ null, %bb.aa ] ; 11 uses
  %.not423 = icmp eq ptr %i.bk, null
  br i1 %.not423, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !48 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.cj = icmp eq ptr %i.ah, %i.ci
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %.3370, ptr %i.ch, align 8, !tbaa !42
  %cond = icmp eq ptr %.3370, null
  br i1 %cond, label %.thread540, label %bb.ao

.thread540:                                       ; preds = %bb.ah
  %i.ck = shl nuw i32 1, %i.cf
  %i.cl = xor i32 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = and i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !32
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.not424 = icmp ult ptr %i.bk, %i.n
  br i1 %.not424, label %bb.am, label %bb.aj, !prof !25

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42
  %i.cr = icmp eq ptr %i.cq, %i.ah
  br i1 %i.cr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %.3370, ptr %i.cp, align 8, !tbaa !42
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %.3370, ptr %i.cs, align 8, !tbaa !42
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  tail call void @abort() #17
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.not425 = icmp eq ptr %.3370, null
  br i1 %.not425, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.an
  %.not426 = icmp ult ptr %.3370, %i.n
  br i1 %.not426, label %bb.ax, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.ct = getelementptr inbounds nuw i8, ptr %.3370, i64 48
  store ptr %i.bk, ptr %i.ct, align 8, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 4 uses
  %.not427 = icmp eq ptr %i.cv, null
  br i1 %.not427, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not428 = icmp ult ptr %i.cv, %i.n
  br i1 %.not428, label %bb.as, label %bb.ar, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %.3370, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store ptr %.3370, ptr %i.cx, align 8, !tbaa !45
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call void @abort() #17
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42 ; 4 uses
  %.not429 = icmp eq ptr %i.cz, null
  br i1 %.not429, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not430 = icmp ult ptr %i.cz, %i.n
  br i1 %.not430, label %bb.aw, label %bb.av, !prof !25

bb.av:                                            ; preds = %bb.au
  %i.da = getelementptr inbounds nuw i8, ptr %.3370, i64 40
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store ptr %.3370, ptr %i.db, align 8, !tbaa !45
  br label %.thread

bb.aw:                                            ; preds = %bb.au
  tail call void @abort() #17
  unreachable

bb.ax:                                            ; preds = %bb.ao
  tail call void @abort() #17
  unreachable

bb.ay:                                            ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !28 ; 2 uses
  %i.de = and i64 %i.dd, 3
  %i.df = icmp eq i64 %i.de, 3
  br i1 %i.df, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.dg, align 8, !tbaa !29
  %i.dh = and i64 %i.dd, -2
  store i64 %i.dh, ptr %i.dc, align 8, !tbaa !28
  %i.di = or i64 %i.ai, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !28
  store i64 %i.ai, ptr %i.s, align 8, !tbaa !30
  br label %bb.ds

.thread:                                          ; preds = %.thread540, %bb.ay, %bb.q, %.critedge469, %bb.an, %bb.av, %bb.at, %bb.af, %bb.g
  %.1372 = phi i64 [ %i.r, %bb.g ], [ %i.ai, %bb.af ], [ %i.ai, %bb.at ], [ %i.ai, %bb.av ], [ %i.ai, %bb.an ], [ %i.ai, %.critedge469 ], [ %i.ai, %bb.q ], [ %i.ai, %bb.ay ], [ %i.ai, %.thread540 ] ; 7 uses
  %.1352 = phi ptr [ %i.a, %bb.g ], [ %i.ah, %bb.af ], [ %i.ah, %bb.at ], [ %i.ah, %bb.av ], [ %i.ah, %bb.an ], [ %i.ah, %.critedge469 ], [ %i.ah, %bb.q ], [ %i.ah, %bb.ay ], [ %i.ah, %.thread540 ] ; 29 uses
  %i.dk = icmp ult ptr %.1352, %i.s
  br i1 %i.dk, label %bb.ba, label %.critedge463, !prof !27

bb.ba:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !28 ; 6 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %bb.bb, label %.critedge463, !prof !27

bb.bb:                                            ; preds = %bb.ba
  %i.do = and i64 %i.dm, 2
  %.not433 = icmp eq i64 %i.do, 0
  br i1 %.not433, label %bb.bc, label %bb.cw

bb.bc:                                            ; preds = %bb.bb
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.dr = icmp eq ptr %i.s, %i.dq
  br i1 %i.dr, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.du = add i64 %i.dt, %.1372                   ; 3 uses
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !33
  store ptr %.1352, ptr %i.dp, align 8, !tbaa !34
  %i.dv = or i64 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.1352, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31
  %i.dz = icmp eq ptr %.1352, %i.dy
  br i1 %i.dz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr null, ptr %i.dx, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !29
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !57
  %i.ed = icmp ugt i64 %i.du, %i.ec
  br i1 %i.ed, label %bb.bg, label %bb.ds

bb.bg:                                            ; preds = %bb.bf
  %i.ee = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef 0) ; 0 uses
  br label %bb.ds

bb.bh:                                            ; preds = %bb.bc
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !31 ; 2 uses
  %i.eh = icmp eq ptr %i.s, %i.eg
  br i1 %i.eh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !29
  %i.ek = add i64 %i.ej, %.1372                   ; 4 uses
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !29
  store ptr %.1352, ptr %i.ef, align 8, !tbaa !31
  %i.el = or i64 %i.ek, 1
  %i.em = getelementptr inbounds nuw i8, ptr %.1352, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %.1352, i64 %i.ek
  store i64 %i.ek, ptr %i.en, align 8, !tbaa !30
  br label %bb.ds

bb.bj:                                            ; preds = %bb.bh
  %i.eo = and i64 %i.dm, -8
  %i.ep = add i64 %i.eo, %.1372                   ; 5 uses
  %i.eq = icmp ult i64 %i.dm, 256
  br i1 %i.eq, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.er = lshr i64 %i.dm, 3                       ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !23 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !26 ; 6 uses
  %i.ew = trunc nuw nsw i64 %i.er to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx449 = shl nuw nsw i64 %i.er, 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.idx449 ; 2 uses
  %i.ez = icmp eq ptr %i.et, %i.ey
  br i1 %i.ez, label %.critedge477, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not450 = icmp ult ptr %i.et, %i.n
  br i1 %.not450, label %.critedge479, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !26
  %i.fc = icmp eq ptr %i.fb, %i.s
  br i1 %i.fc, label %.critedge477, label %.critedge479, !prof !27

.critedge477:                                     ; preds = %bb.bk, %bb.bm
  %i.fd = icmp eq ptr %i.ev, %i.et
  br i1 %i.fd, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.critedge477
  %i.fe = shl nuw i32 1, %i.ew
  %i.ff = xor i32 %i.fe, -1
  %i.fg = load i32, ptr %0, align 8, !tbaa !21
  %i.fh = and i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %0, align 8, !tbaa !21
  br label %bb.cv

bb.bo:                                            ; preds = %.critedge477
  %i.fi = icmp eq ptr %i.ev, %i.ey
  br i1 %i.fi, label %.critedge481, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not451 = icmp ult ptr %i.ev, %i.n
  br i1 %.not451, label %.critedge483, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !23
  %i.fl = icmp eq ptr %i.fk, %i.s
  br i1 %i.fl, label %.critedge481, label %.critedge483, !prof !27

.critedge481:                                     ; preds = %bb.bo, %bb.bq
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.ev, ptr %i.fm, align 8, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.et, ptr %i.fn, align 8, !tbaa !23
  br label %bb.cv

.critedge483:                                     ; preds = %bb.bp, %bb.bq
  tail call void @abort() #17
  unreachable

.critedge479:                                     ; preds = %bb.bl, %bb.bm
  tail call void @abort() #17
  unreachable

bb.br:                                            ; preds = %bb.bj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 4 uses
  %.not434 = icmp eq ptr %i.fr, %i.s
  br i1 %.not434, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !47 ; 3 uses
  %.not440 = icmp ult ptr %i.ft, %i.n
  br i1 %.not440, label %.critedge485, label %bb.bt, !prof !25

bb.bt:                                            ; preds = %bb.bs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !46
  %i.fw = icmp eq ptr %i.fv, %i.s
  br i1 %i.fw, label %bb.bu, label %.critedge485, !prof !27

bb.bu:                                            ; preds = %bb.bt
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !47
  %i.fz = icmp eq ptr %i.fy, %i.s
  br i1 %i.fz, label %bb.bv, label %.critedge485, !prof !27

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !46
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !47
  br label %bb.cc

.critedge485:                                     ; preds = %bb.bt, %bb.bs, %bb.bu
  tail call void @abort() #17
  unreachable

bb.bw:                                            ; preds = %bb.br
  %i.ga = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !42 ; 2 uses
  %.not435 = icmp eq ptr %i.gb, null
  br i1 %.not435, label %bb.bx, label %.critedge4.preheader

bb.bx:                                            ; preds = %bb.bw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !42 ; 2 uses
  %.not436 = icmp eq ptr %i.gd, null
  br i1 %.not436, label %bb.cc, label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %bb.bx, %bb.bw
  %.1359.ph = phi ptr [ %i.gb, %bb.bw ], [ %i.gd, %bb.bx ]
  %.1357.ph = phi ptr [ %i.ga, %bb.bw ], [ %i.gc, %bb.bx ]
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.backedge, %.critedge4.preheader
  %.1359 = phi ptr [ %.1359.ph, %.critedge4.preheader ], [ %.1359.be, %.critedge4.backedge ] ; 3 uses
  %.1357 = phi ptr [ %.1357.ph, %.critedge4.preheader ], [ %.1357.be, %.critedge4.backedge ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1359, i64 40 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !42 ; 2 uses
  %.not437 = icmp eq ptr %i.gf, null
  br i1 %.not437, label %bb.by, label %.critedge4.backedge

.critedge4.backedge:                              ; preds = %.critedge4, %bb.by
  %.1359.be = phi ptr [ %i.gf, %.critedge4 ], [ %i.gh, %bb.by ]
  %.1357.be = phi ptr [ %i.ge, %.critedge4 ], [ %i.gg, %bb.by ]
  br label %.critedge4, !llvm.loop !91

bb.by:                                            ; preds = %.critedge4
  %i.gg = getelementptr inbounds nuw i8, ptr %.1359, i64 32 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42 ; 2 uses
  %.not438 = icmp eq ptr %i.gh, null
  br i1 %.not438, label %bb.bz, label %.critedge4.backedge

bb.bz:                                            ; preds = %bb.by
  %.not439 = icmp ult ptr %.1357, %i.n
  br i1 %.not439, label %bb.cb, label %bb.ca, !prof !25

bb.ca:                                            ; preds = %bb.bz
  store ptr null, ptr %.1357, align 8, !tbaa !42
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  tail call void @abort() #17
  unreachable

bb.cc:                                            ; preds = %bb.bx, %bb.ca, %bb.bv
  %.3 = phi ptr [ %i.fr, %bb.bv ], [ %.1359, %bb.ca ], [ null, %bb.bx ] ; 11 uses
  %.not441 = icmp eq ptr %i.fp, null
  br i1 %.not441, label %bb.cv, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !48 ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !42
  %i.go = icmp eq ptr %i.s, %i.gn
  br i1 %i.go, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr %.3, ptr %i.gm, align 8, !tbaa !42
  %cond487 = icmp eq ptr %.3, null
  br i1 %cond487, label %.thread542, label %bb.cl

.thread542:                                       ; preds = %bb.ce
  %i.gp = shl nuw i32 1, %i.gk
  %i.gq = xor i32 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !32
  %i.gt = and i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !32
  br label %bb.cv

bb.cf:                                            ; preds = %bb.cd
  %.not442 = icmp ult ptr %i.fp, %i.n
  br i1 %.not442, label %bb.cj, label %bb.cg, !prof !25

bb.cg:                                            ; preds = %bb.cf
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !42
  %i.gw = icmp eq ptr %i.gv, %i.s
  br i1 %i.gw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr %.3, ptr %i.gu, align 8, !tbaa !42
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store ptr %.3, ptr %i.gx, align 8, !tbaa !42
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  tail call void @abort() #17
  unreachable

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.not443 = icmp eq ptr %.3, null
  br i1 %.not443, label %bb.cv, label %bb.cl

bb.cl:                                            ; preds = %bb.ce, %bb.ck
  %.not444 = icmp ult ptr %.3, %i.n
  br i1 %.not444, label %bb.cu, label %bb.cm, !prof !25

bb.cm:                                            ; preds = %bb.cl
  %i.gy = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.fp, ptr %i.gy, align 8, !tbaa !45
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !42 ; 4 uses
  %.not445 = icmp eq ptr %i.ha, null
  br i1 %.not445, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not446 = icmp ult ptr %i.ha, %i.n
  br i1 %.not446, label %bb.cp, label %bb.co, !prof !25

bb.co:                                            ; preds = %bb.cn
  %i.hb = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !42
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store ptr %.3, ptr %i.hc, align 8, !tbaa !45
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  tail call void @abort() #17
  unreachable

bb.cq:                                            ; preds = %bb.co, %bb.cm
  %i.hd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !42 ; 4 uses
  %.not447 = icmp eq ptr %i.he, null
  br i1 %.not447, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not448 = icmp ult ptr %i.he, %i.n
  br i1 %.not448, label %bb.ct, label %bb.cs, !prof !25

bb.cs:                                            ; preds = %bb.cr
  %i.hf = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !42
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  store ptr %.3, ptr %i.hg, align 8, !tbaa !45
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  tail call void @abort() #17
  unreachable

bb.cu:                                            ; preds = %bb.cl
  tail call void @abort() #17
  unreachable

bb.cv:                                            ; preds = %.thread542, %bb.cc, %bb.cq, %bb.cs, %bb.ck, %.critedge481, %bb.bn
  %i.hh = or i64 %i.ep, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.1352, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !28
  %i.hj = getelementptr inbounds nuw i8, ptr %.1352, i64 %i.ep
  store i64 %i.ep, ptr %i.hj, align 8, !tbaa !30
  %.not452 = icmp eq ptr %.1352, %i.eg
  br i1 %.not452, label %.thread492, label %bb.cx

.thread492:                                       ; preds = %bb.cv
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ep, ptr %i.hk, align 8, !tbaa !29
  br label %bb.ds

bb.cw:                                            ; preds = %bb.bb
  %i.hl = and i64 %i.dm, -2
  store i64 %i.hl, ptr %i.dl, align 8, !tbaa !28
  %i.hm = or i64 %.1372, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.1352, i64 8
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !28
  %i.ho = getelementptr inbounds nuw i8, ptr %.1352, i64 %.1372
  store i64 %.1372, ptr %i.ho, align 8, !tbaa !30
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.2373 = phi i64 [ %.1372, %bb.cw ], [ %i.ep, %bb.cv ] ; 6 uses
  %i.hp = icmp ult i64 %.2373, 256
  br i1 %i.hp, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.hq = lshr i64 %.2373, 3                      ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx458 = shl nuw nsw i64 %i.hq, 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx458 ; 4 uses
  %i.hu = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.hv = shl nuw i32 1, %i.hr                    ; 2 uses
  %i.hw = and i32 %i.hu, %i.hv
  %.not459 = icmp eq i32 %i.hw, 0
  br i1 %.not459, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.hx = or i32 %i.hu, %i.hv
  store i32 %i.hx, ptr %0, align 8, !tbaa !21
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !23 ; 2 uses
  %.not460 = icmp ult ptr %i.hz, %i.n
  br i1 %.not460, label %bb.db, label %bb.dc, !prof !25

bb.db:                                            ; preds = %bb.da
  tail call void @abort() #17
  unreachable

bb.dc:                                            ; preds = %bb.da, %bb.cz
  %.0354 = phi ptr [ %i.ht, %bb.cz ], [ %i.hz, %bb.da ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %.1352, ptr %i.ia, align 8, !tbaa !23
  %i.ib = getelementptr inbounds nuw i8, ptr %.0354, i64 24
  store ptr %.1352, ptr %i.ib, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %.1352, i64 16
  store ptr %.0354, ptr %i.ic, align 8, !tbaa !23
  %i.id = getelementptr inbounds nuw i8, ptr %.1352, i64 24
  store ptr %i.ht, ptr %i.id, align 8, !tbaa !26
  br label %bb.ds

bb.dd:                                            ; preds = %bb.cx
  %i.ie = lshr i64 %.2373, 8
  %i.if = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.dg, label %bb.de
end_hunk_4
begin_hunk_5_@mspace_free:bb.a
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %bb.di
  %.0350 = phi ptr [ %i.jb, %bb.di ], [ %i.jq, %bb.dk ] ; 6 uses
  %.0 = phi i64 [ %i.ji, %bb.di ], [ %i.jp, %bb.dk ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0350, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !44
  %i.jl = and i64 %i.jk, -8
  %.not454 = icmp eq i64 %i.jl, %.2373
  br i1 %.not454, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jm = getelementptr inbounds nuw i8, ptr %.0350, i64 32 ; 2 uses
  %i.jn = lshr i64 %.0, 63                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = shl i64 %.0, 1
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !42 ; 2 uses
  %.not456 = icmp eq ptr %i.jq, null
  br i1 %.not456, label %bb.dl, label %bb.dj

bb.dl:                                            ; preds = %bb.dk
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %.not457 = icmp ult ptr %i.jr, %i.n
  br i1 %.not457, label %bb.dm, label %.thread494, !prof !25

.thread494:                                       ; preds = %bb.dl
  store ptr %.1352, ptr %i.jr, align 8, !tbaa !42
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  tail call void @abort() #17
  unreachable

bb.dn:                                            ; preds = %bb.dj
  %i.js = getelementptr inbounds nuw i8, ptr %.0350, i64 16 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !47 ; 3 uses
  %.not455 = icmp uge ptr %.0350, %i.n
  %i.ju = icmp uge ptr %i.jt, %i.n
  %spec.select = select i1 %.not455, i1 %i.ju, i1 false, !prof !27
  br i1 %spec.select, label %bb.do, label %bb.dp, !prof !27

bb.do:                                            ; preds = %bb.dn
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store ptr %.1352, ptr %i.jv, align 8, !tbaa !46
  store ptr %.1352, ptr %i.js, align 8, !tbaa !47
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  tail call void @abort() #17
  unreachable

bb.dq:                                            ; preds = %.thread494, %bb.do, %bb.dh
  %.sink549 = phi i64 [ 48, %.thread494 ], [ 16, %bb.do ], [ 48, %bb.dh ]
  %.0350.lcssa544.sink = phi ptr [ %.0350, %.thread494 ], [ %i.jt, %bb.do ], [ %i.it, %bb.dh ]
  %.1352.sink548 = phi ptr [ %.1352, %.thread494 ], [ %.0350, %bb.do ], [ %.1352, %bb.dh ]
  %.sink547 = phi i64 [ 16, %.thread494 ], [ 48, %bb.do ], [ 16, %bb.dh ]
  %.1352.sink = phi ptr [ %.1352, %.thread494 ], [ null, %bb.do ], [ %.1352, %bb.dh ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.1352, i64 %.sink549
  store ptr %.0350.lcssa544.sink, ptr %i.jw, align 8, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %.1352, i64 24
  store ptr %.1352.sink548, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %.1352, i64 %.sink547
  store ptr %.1352.sink, ptr %i.jy, align 8, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !56
  %i.kb = add i64 %i.ka, -1                       ; 2 uses
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !56
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.kd = tail call fastcc i64 @release_unused_segments(ptr noundef nonnull %0) ; 0 uses
  br label %bb.ds

.critedge463:                                     ; preds = %.thread, %bb.ba, %bb.k, %spin_acquire_lock.exit, %bb.f
  tail call void @abort() #17
  unreachable

bb.ds:                                            ; preds = %bb.bf, %bb.bi, %.thread492, %bb.dc, %bb.bg, %bb.dq, %bb.dr, %bb.i, %bb.j, %bb.az
  %i.ke = load i32, ptr %i.b, align 8, !tbaa !18
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
define hidden ptr @dlrealloc_in_place(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, -129
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.b, align 4, !tbaa !19
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %1, 23
  %i.d = add nuw i64 %1, 23
  %i.e = and i64 %i.d, -16
  %i.f = select i1 %i.c, i64 32, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.i = and i32 %i.h, 2
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %spin_acquire_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %.0.i = phi i32 [ %i.m, %.preheader.backedge ], [ 0, %bb.e ]
  %i.k = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.preheader
  %i.l = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.preheader
  %i.m = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.n = and i32 %i.m, 63
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %.preheader.backedge

bb.g:                                             ; preds = %.critedge.i
  %i.p = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.g, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.f, %bb.d, %bb.e
  %i.q = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.g, i64 noundef %i.f, i32 noundef 0)
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.s = and i32 %i.r, 2
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %spin_acquire_lock.exit
  %i.t = icmp eq ptr %i.q, %i.g
  %spec.select = select i1 %i.t, ptr %0, ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.a
  %.2 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.i ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @dlmemalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %.090 = phi i64 [ %i.c, %.preheader105 ], [ 32, %bb.a ] ; 3 uses
  %i.b = icmp ult i64 %.090, %spec.store.select
  %i.c = shl i64 %.090, 1
  br i1 %i.b, label %.preheader105, label %.loopexit, !llvm.loop !92

.loopexit:                                        ; preds = %.preheader105, %bb.a
  %.086 = phi i64 [ %spec.store.select, %bb.a ], [ %.090, %.preheader105 ] ; 6 uses
  %i.d = sub i64 -128, %.086
  %.not98 = icmp ult i64 %2, %i.d
  br i1 %.not98, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %.not104 = icmp eq ptr %0, null
  br i1 %.not104, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.e, align 4, !tbaa !19
  br label %bb.t

bb.d:                                             ; preds = %.loopexit
  %i.f = icmp ult i64 %2, 23
  %i.g = add i64 %2, 23
  %i.h = and i64 %i.g, -16
  %i.i = select i1 %i.f, i64 32, i64 %i.h         ; 5 uses
  %i.j = add i64 %i.i, 24
  %i.k = add i64 %i.j, %.086                      ; 2 uses
  %i.l = icmp eq ptr %0, @_gm_
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @dlmalloc(i64 noundef %i.k)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 5 uses
  %.not99 = icmp eq ptr %i.o, null
  br i1 %.not99, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = and i32 %i.r, 2
  %.not100 = icmp eq i32 %i.s, 0
  br i1 %.not100, label %spin_acquire_lock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.u = atomicrmw xchg ptr %i.t, i32 1 seq_cst, align 4
  %.not101 = icmp eq i32 %i.u, 0
  br i1 %.not101, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader.backedge
  %.0.i = phi i32 [ %i.x, %.preheader.backedge ], [ 0, %bb.i ]
  %i.v = load volatile i32, ptr %i.t, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %.preheader
  %i.w = atomicrmw xchg ptr %i.t, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.w, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.preheader
  %i.x = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.y = and i32 %i.x, 63
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %.preheader.backedge

bb.k:                                             ; preds = %.critedge.i
  %i.aa = tail call i32 @sched_yield() #16        ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.k, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.j, %bb.h, %bb.i
  %i.ab = ptrtoint ptr %i.o to i64
  %i.ac = add i64 %.086, -1
  %i.ad = and i64 %i.ac, %i.ab
  %.not102 = icmp eq i64 %i.ad, 0
  br i1 %.not102, label %bb.o, label %bb.l

bb.l:                                             ; preds = %spin_acquire_lock.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.086
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 0, %.086
  %i.ai = and i64 %i.ag, %i.ah
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ugt i64 %i.an, 31
  %.idx = select i1 %i.ao, i64 0, i64 %.086
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 7 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.au = and i64 %i.at, -8
  %i.av = sub i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = and i64 %i.at, 3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !30
  %i.az = add i64 %i.ay, %i.ar
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.bd = and i64 %i.bc, 1
  %i.be = or i64 %i.av, %i.bd
  %i.bf = or i64 %i.be, 2
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !28
  %i.bj = or i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !28
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !28
  %i.bl = and i64 %i.bk, 1
  %i.bm = or i64 %i.ar, %i.bl
  %i.bn = or i64 %i.bm, 2
  store i64 %i.bn, ptr %i.as, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ar
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.br = or i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %i.ar)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %spin_acquire_lock.exit
  %.089 = phi ptr [ %i.p, %spin_acquire_lock.exit ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.089, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !28 ; 3 uses
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = and i64 %i.bt, -8                       ; 3 uses
  %i.bx = add i64 %i.i, 32
  %i.by = icmp ugt i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = sub i64 %i.bw, %i.i                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.089, i64 %i.i ; 2 uses
  %i.cb = and i64 %i.bt, 1
  %i.cc = or disjoint i64 %i.i, %i.cb
  %i.cd = or disjoint i64 %i.cc, 2
  store i64 %i.cd, ptr %i.bs, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = or disjoint i64 %i.bz, 3
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %.089, i64 %i.bw
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !28
  %i.cj = or i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef %i.ca, i64 noundef %i.bz)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.089, i64 16 ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !18
  %i.cm = and i32 %i.cl, 2
  %.not103 = icmp eq i32 %i.cm, 0
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.cn release, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.r, %bb.s
  %.394 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ %i.ck, %bb.r ], [ %i.ck, %bb.s ]
  ret ptr %.394
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @dlposix_memalign(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlmalloc(i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 3                           ; 2 uses
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.not29 = and i1 %i.e, %i.f
  %i.g = tail call range(i64 0, 62) i64 @llvm.ctpop.i64(i64 %i.c)
  %.not = icmp samesign ult i64 %i.g, 2
  %or.cond25 = select i1 %or.cond.not29, i1 %.not, i1 false
  br i1 %or.cond25, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 -128, %1
  %.not24 = icmp ugt i64 %2, %i.h
  br i1 %.not24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32)
  %i.i = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %spec.store.select, i64 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.e ]  ; 2 uses
  %i.j = icmp eq ptr %.2, null
  br i1 %i.j, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.2, ptr %0, align 8, !tbaa !63
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.f, %bb.g
  %.120 = phi i32 [ 12, %bb.f ], [ 0, %bb.g ], [ 22, %bb.c ], [ 12, %bb.d ]
  ret i32 %.120
}

; Function Attrs: nounwind uwtable
define hidden ptr @dlvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
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
define hidden ptr @dlpvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 4 uses
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
define hidden ptr @dlindependent_calloc(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %1, ptr %i.a, align 8, !tbaa !40
  %i.b = call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 4) %3, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
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
  %i.g = icmp ult i64 %i.f, 23
  %i.h = and i64 %i.f, -16
  %i.i = add i64 %i.h, 16
  %i.j = select i1 %i.g, i64 32, i64 %i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.081 = phi i64 [ %i.j, %bb.i ], [ 0, %bb.d ]   ; 2 uses
  %i.k = and i32 %3, 1
  %.not95 = icmp eq i32 %i.k, 0
  br i1 %.not95, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi138 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !40 ; 2 uses
  %wide.load139 = load <2 x i64>, ptr %i.m, align 8, !tbaa !40 ; 2 uses
  %i.n = icmp ult <2 x i64> %wide.load, splat (i64 23)
  %i.o = icmp ult <2 x i64> %wide.load139, splat (i64 23)
  %i.p = add <2 x i64> %wide.load, splat (i64 23)
  %i.q = add <2 x i64> %wide.load139, splat (i64 23)
  %i.r = and <2 x i64> %i.p, splat (i64 -16)
  %i.s = and <2 x i64> %i.q, splat (i64 -16)
  %i.t = select <2 x i1> %i.n, <2 x i64> splat (i64 32), <2 x i64> %i.r
  %i.u = select <2 x i1> %i.o, <2 x i64> splat (i64 32), <2 x i64> %i.s
  %i.v = add <2 x i64> %i.t, %vec.phi             ; 2 uses
  %i.w = add <2 x i64> %i.u, %vec.phi138          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader144

.lr.ph.preheader144:                              ; preds = %.lr.ph.preheader, %middle.block
  %.074107.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.082106.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.aa = icmp ult i64 %i.z, 23
  %i.ab = add i64 %i.z, 23
  %i.ac = and i64 %i.ab, -16
  %i.ad = select i1 %i.aa, i64 32, i64 %i.ac      ; 2 uses
  %i.ae = mul i64 %i.ad, %1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader144, %.lr.ph
  %.074107 = phi i64 [ %i.am, %.lr.ph ], [ %.074107.ph, %.lr.ph.preheader144 ] ; 2 uses
  %.082106 = phi i64 [ %i.al, %.lr.ph ], [ %.082106.ph, %.lr.ph.preheader144 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.074107
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 23
  %i.ai = add i64 %i.ag, 23
  %i.aj = and i64 %i.ai, -16
  %i.ak = select i1 %i.ah, i64 32, i64 %i.aj
  %i.al = add i64 %i.ak, %.082106                 ; 2 uses
  %i.am = add nuw i64 %.074107, 1                 ; 2 uses
  %.not96 = icmp eq i64 %i.am, %1
  br i1 %.not96, label %.loopexit, label %.lr.ph, !llvm.loop !94

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.k
  %.084 = phi i64 [ %i.ad, %bb.k ], [ 0, %middle.block ], [ 0, %.lr.ph ] ; 10 uses
  %.183 = phi i64 [ %i.ae, %bb.k ], [ %i.y, %middle.block ], [ %i.al, %.lr.ph ] ; 4 uses
  %i.an = add i64 %.183, %.081
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %i.aq = and i32 %i.ap, 1
  %i.ar = and i32 %i.ap, -2
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !18
  %i.as = icmp eq ptr %0, @_gm_
  %i.at = add i64 %i.an, -8                       ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.au = tail call ptr @dlmalloc(i64 noundef %i.at)
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.av = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %i.at)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.au, %bb.l ], [ %i.av, %bb.m ] ; 5 uses
  %.not97 = icmp eq i32 %i.aq, 0
  br i1 %.not97, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.ay = or i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp eq ptr %i.aw, null
  br i1 %i.az, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.bb = and i32 %i.ba, 2
  %.not98 = icmp eq i32 %i.bb, 0
  br i1 %.not98, label %spin_acquire_lock.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.bd = atomicrmw xchg ptr %i.bc, i32 1 seq_cst, align 4
  %.not99 = icmp eq i32 %i.bd, 0
  br i1 %.not99, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.r, %.preheader.backedge
  %.0.i = phi i32 [ %i.bg, %.preheader.backedge ], [ 0, %bb.r ]
  %i.be = load volatile i32, ptr %i.bc, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %.preheader
  %i.bf = atomicrmw xchg ptr %i.bc, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.bf, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.preheader
  %i.bg = add nuw nsw i32 %.0.i, 1                ; 2 uses
  %i.bh = and i32 %i.bg, 63
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %.preheader.backedge

bb.t:                                             ; preds = %.critedge.i
  %i.bj = tail call i32 @sched_yield() #16        ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.t, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.s, %bb.q, %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.aw, i64 -16 ; 6 uses
  %i.bl = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !28
  %i.bn = and i64 %i.bm, -8                       ; 3 uses
  %.not100 = icmp samesign ult i32 %3, 2
  br i1 %.not100, label %bb.v, label %bb.u

bb.u:                                             ; preds = %spin_acquire_lock.exit
  %reass.sub = sub i64 %i.bn, %.081
  %i.bo = add i64 %reass.sub, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.bo, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %spin_acquire_lock.exit
  br i1 %.not94, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.183 ; 2 uses
  %i.bq = sub i64 %i.bn, %.183
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = or i64 %i.bq, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.078 = phi i64 [ %.183, %bb.w ], [ %i.bn, %bb.v ] ; 5 uses
  %.177 = phi ptr [ %i.br, %bb.w ], [ %4, %bb.v ] ; 11 uses
  %i.bu = add i64 %1, -1                          ; 6 uses
  store ptr %i.aw, ptr %.177, align 8, !tbaa !63
  %.not101108 = icmp eq i64 %i.bu, 0
  br i1 %.not101108, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.x
  %.not103 = icmp eq i64 %.084, 0
  br i1 %.not103, label %.lr.ph112.split.us.preheader, label %.lr.ph112.split

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %xtraiter151 = and i64 %i.bu, 1
  %i.bv = icmp eq i64 %1, 2
  br i1 %i.bv, label %.lr.ph112.split.us.epil.preheader, label %.lr.ph112.split.us.preheader.new

.lr.ph112.split.us.preheader.new:                 ; preds = %.lr.ph112.split.us.preheader
  %unroll_iter157 = and i64 %i.bu, -2
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us, %.lr.ph112.split.us.preheader.new
  %.1111.us = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %i.ct, %.lr.ph112.split.us ] ; 3 uses
  %.179110.us = phi i64 [ %.078, %.lr.ph112.split.us.preheader.new ], [ %i.cp, %.lr.ph112.split.us ]
  %.080109.us = phi ptr [ %i.bk, %.lr.ph112.split.us.preheader.new ], [ %i.cs, %.lr.ph112.split.us ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %niter158.next.1, %.lr.ph112.split.us ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 23
  %i.bz = add i64 %i.bx, 23
  %i.ca = and i64 %i.bz, -16
  %i.cb = select i1 %i.by, i64 32, i64 %i.ca      ; 3 uses
  %i.cc = or disjoint i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %.080109.us, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.080109.us, i64 %i.cb ; 3 uses
  %i.cf = or disjoint i64 %.1111.us, 1            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %i.cf
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cf
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !40 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 23
  %i.cl = add i64 %i.cj, 23
  %i.cm = and i64 %i.cl, -16
  %i.cn = select i1 %i.ck, i64 32, i64 %i.cm      ; 3 uses
  %i.co = add i64 %i.cb, %i.cn
  %i.cp = sub i64 %.179110.us, %i.co              ; 3 uses
  %i.cq = or disjoint i64 %i.cn, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cn ; 4 uses
  %i.ct = add nuw i64 %.1111.us, 2                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %i.ct
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !63
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph112.split.us

.lr.ph112.split:                                  ; preds = %.lr.ph112
  %i.cw = or i64 %.084, 3                         ; 5 uses
  %i.cx = add i64 %1, -2
  %xtraiter = and i64 %i.bu, 3                    ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 3
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph112.split.new

.lr.ph112.split.new:                              ; preds = %.lr.ph112.split
  %unroll_iter = and i64 %i.bu, -4
  %.neg = mul i64 %.084, -3
  %invariant.op = sub i64 %.neg, %.084
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph112.split.new
  %.1111 = phi i64 [ 0, %.lr.ph112.split.new ], [ %i.dq, %bb.y ] ; 4 uses
  %.179110 = phi i64 [ %.078, %.lr.ph112.split.new ], [ %.reass, %bb.y ]
  %.080109 = phi ptr [ %i.bk, %.lr.ph112.split.new ], [ %i.dp, %bb.y ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph112.split.new ], [ %niter.next.3, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.080109, i64 8
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %.080109, i64 %.084 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %.1111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !63
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.cw, ptr %i.de, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %.084 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %.1111
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.cw, ptr %i.dj, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %.084 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %.1111
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !63
  %.reass = add i64 %.179110, %invariant.op       ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.cw, ptr %i.do, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.084 ; 4 uses
  %i.dq = add nuw i64 %.1111, 4                   ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %i.dq
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !63
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit141.unr-lcssa, label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph112.split.us
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %._crit_edge, label %.lr.ph112.split.us.epil.preheader

.lr.ph112.split.us.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph112.split.us.preheader
  %.1111.us.epil.init = phi i64 [ 0, %.lr.ph112.split.us.preheader ], [ %i.ct, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.179110.us.epil.init = phi i64 [ %.078, %.lr.ph112.split.us.preheader ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ]
  %.080109.us.epil.init = phi ptr [ %i.bk, %.lr.ph112.split.us.preheader ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us.epil.init
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !40 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 23
  %i.dw = add i64 %i.du, 23
  %i.dx = and i64 %i.dw, -16
  %i.dy = select i1 %i.dv, i64 32, i64 %i.dx      ; 3 uses
  %i.dz = sub i64 %.179110.us.epil.init, %i.dy
  %i.ea = or disjoint i64 %i.dy, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %.080109.us.epil.init, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %.080109.us.epil.init, i64 %i.dy ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %.1111.us.epil.init
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !63
  br label %._crit_edge

._crit_edge.loopexit141.unr-lcssa:                ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit141.unr-lcssa, %.lr.ph112.split
  %.1111.epil.init = phi i64 [ 0, %.lr.ph112.split ], [ %i.dq, %._crit_edge.loopexit141.unr-lcssa ]
  %.179110.epil.init = phi i64 [ %.078, %.lr.ph112.split ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ]
  %.080109.epil.init = phi ptr [ %i.bk, %.lr.ph112.split ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %.1111.epil = phi i64 [ %.1111.epil.init, %.epil.preheader ], [ %i.ej, %bb.z ]
  %.179110.epil = phi i64 [ %.179110.epil.init, %.epil.preheader ], [ %i.eg, %bb.z ]
  %.080109.epil = phi ptr [ %.080109.epil.init, %.epil.preheader ], [ %i.ei, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.eg = sub i64 %.179110.epil, %.084            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.080109.epil, i64 8
  store i64 %i.cw, ptr %i.eh, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %.080109.epil, i64 %.084 ; 3 uses
  %i.ej = add nuw i64 %.1111.epil, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.177, i64 %i.ej
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !63
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.z, !llvm.loop !95

._crit_edge:                                      ; preds = %._crit_edge.loopexit141.unr-lcssa, %bb.z, %.lr.ph112.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.x
  %.080.lcssa = phi ptr [ %i.bk, %bb.x ], [ %i.ec, %.lr.ph112.split.us.epil.preheader ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ], [ %i.ei, %bb.z ]
  %.179.lcssa = phi i64 [ %.078, %bb.x ], [ %i.dz, %.lr.ph112.split.us.epil.preheader ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ], [ %i.eg, %bb.z ]
  %i.em = or i64 %.179.lcssa, 3
  %i.en = getelementptr inbounds nuw i8, ptr %.080.lcssa, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !28
  %i.eo = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.ep = and i32 %i.eo, 2
  %.not102 = icmp eq i32 %i.ep, 0
  br i1 %.not102, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.eq release, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa, %bb.p, %bb.g, %bb.h, %bb.d
  %.0 = phi ptr [ null, %bb.p ], [ %i.e, %bb.h ], [ %4, %bb.d ], [ %i.d, %bb.g ], [ %.177, %bb.aa ], [ %.177, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @dlindependent_comalloc(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef i64 @dlbulk_free(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @internal_bulk_free(ptr noundef nonnull @_gm_, ptr noundef %0, i64 noundef %1)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @internal_bulk_free(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
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
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !19
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
  %i.k = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !0

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
  %i.n = load ptr, ptr %.052, align 8, !tbaa !63  ; 4 uses
  %.not47 = icmp eq ptr %i.n, null
  br i1 %.not47, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = and i64 %i.q, -8                         ; 3 uses
  store ptr null, ptr %.052, align 8, !tbaa !63
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !24
  %.not48 = icmp uge ptr %i.o, %i.s
  %i.t = and i64 %i.q, 3
  %i.u = icmp ne i64 %i.t, 1
  %or.cond = select i1 %.not48, i1 %i.u, i1 false, !prof !99
  br i1 %or.cond, label %bb.g, label %.critedge, !prof !99

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 2 uses
  %.not49 = icmp eq ptr %i.v, %i.l
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = and i64 %i.q, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = or disjoint i64 %i.af, 2
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ak = or i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !28
  store ptr %i.n, ptr %i.v, align 8, !tbaa !63
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.r)
  br label %bb.k

.critedge:                                        ; preds = %bb.f
  tail call void @abort() #17
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.al, %i.l
  br i1 %.not45, label %._crit_edge, label %bb.e, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.k, %spin_acquire_lock.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !57
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ar = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.as = load i32, ptr %i.a, align 8, !tbaa !18
  %i.at = and i32 %i.as, 2
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.au release, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @dlmalloc_trim(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.c = and i32 %i.b, 2
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef %0)
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.m = and i32 %i.l, 2
  %.not4 = icmp eq i32 %i.m, 0
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.h

bb.h:                                             ; preds = %spin_acquire_lock.exit, %bb.g
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @dlmalloc_footprint() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @dlmalloc_max_footprint() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @dlmalloc_footprint_limit() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 872), align 8, !tbaa !49 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 -1, i64 %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @dlmalloc_set_footprint_limit(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.c = add i64 %0, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  store i64 %.0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 872), align 8, !tbaa !49
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @dlmallopt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
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
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  br label %change_mparam.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36
  %.not11.i = icmp ule i64 %i.c, %i.b
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond.i = select i1 %.not11.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.f, label %change_mparam.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  br label %change_mparam.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8, !tbaa !37
  br label %change_mparam.exit

change_mparam.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @dlmalloc_usable_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
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
end_hunk_5
begin_hunk_6_@init_user_mstate:bb.a
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 3 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 3 uses
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 3 uses
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 3 uses
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 504 ; 3 uses
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 3 uses
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 536 ; 3 uses
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 3 uses
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 3 uses
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 584 ; 3 uses
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !23
  %gepdiff = add i64 %1, -1024
  %i.ch = sub i64 %gepdiff, %i.d                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 0, %i.cj
  %i.cl = and i64 %i.ck, 15                       ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cl ; 2 uses
  %i.cn = sub i64 %i.ch, %i.cl                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !33
  %i.cq = or i64 %i.cn, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ch
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 80, ptr %i.ct, align 8, !tbaa !28
  %i.cu = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !57
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @create_mspace_with_base(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ugt i64 %1, 1024
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36
  %i.d = sub i64 -1024, %i.c
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call fastcc ptr @init_user_mstate(ptr noundef %0, i64 noundef %1) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  store i32 8, ptr %i.g, align 8, !tbaa !54
  %.not12 = icmp eq i32 %2, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = and i32 %i.i, -3
  %masksel = select i1 %.not12, i32 0, i32 2
  %i.k = or disjoint i32 %i.j, %masksel
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  store i32 %i.k, ptr %i.l, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mspace_track_large_chunks(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
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
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !19
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
  %i.k = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.l = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not12 = icmp eq i32 %1, 0
  %i.m = and i32 %i.l, -2
  %masksel = zext i1 %.not12 to i32
  %storemerge = or disjoint i32 %i.m, %masksel
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !18
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
define hidden i64 @destroy_mspace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.017 = phi ptr [ %i.a, %bb.a ], [ %i.e, %bb.d ] ; 4 uses
  %.01316 = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = and i32 %i.c, 9
  %or.cond = icmp eq i32 %i.f, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = load ptr, ptr %.017, align 8, !tbaa !58
  %i.j = tail call i32 @munmap(ptr noundef %i.i, i64 noundef %i.h) #16
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %i.k, i64 %i.h, i64 0
  %spec.select = add i64 %i.l, %.01316
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.01316, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !100

bb.e:                                             ; preds = %bb.d
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mspace_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %.0, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @mspace_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %i.d = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.d, align 4, !tbaa !19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %2, 23
  %i.f = add nuw i64 %2, 23
  %i.g = and i64 %i.f, -16
  %i.h = select i1 %i.e, i64 32, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.n = atomicrmw xchg ptr %i.m, i32 1 seq_cst, align 4
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0.i = phi i32 [ %i.q, %.preheader.backedge ], [ 0, %bb.f ]
  %i.o = load volatile i32, ptr %i.m, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader
  %i.p = atomicrmw xchg ptr %i.m, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.p, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader
  %i.q = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.critedge.i
  %i.t = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.g, %bb.e, %bb.f
  %i.u = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef %i.h, i32 noundef 1) ; 2 uses
  %i.v = load i32, ptr %i.j, align 8, !tbaa !18
  %i.w = and i32 %i.v, 2
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %spin_acquire_lock.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.x release, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %spin_acquire_lock.exit
  %.not38 = icmp eq ptr %i.u, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.z = tail call ptr @mspace_malloc(ptr noundef nonnull %0, i64 noundef %2) ; 3 uses
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ac = and i64 %i.ab, -8
  %i.ad = and i64 %i.ab, 3
  %i.ae = icmp eq i64 %i.ad, 0
  %.neg = select i1 %i.ae, i64 -16, i64 -8
  %i.af = add i64 %.neg, %i.ac
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 8 %1, i64 %i.ag, i1 false)
  tail call void @mspace_free(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.y, %bb.k ], [ %i.z, %bb.m ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @mspace_realloc_in_place(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %2, -129
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.b, align 4, !tbaa !19
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %2, 23
  %i.d = add nuw i64 %2, 23
  %i.e = and i64 %i.d, -16
  %i.f = select i1 %i.c, i64 32, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = and i32 %i.i, 2
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %spin_acquire_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.l = atomicrmw xchg ptr %i.k, i32 1 seq_cst, align 4
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %.0.i = phi i32 [ %i.o, %.preheader.backedge ], [ 0, %bb.e ]
  %i.m = load volatile i32, ptr %i.k, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.preheader
end_hunk_6
begin_hunk_7_@mspace_malloc_lockless:bb.a
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = tail call fastcc ptr @tmalloc_large(ptr noundef nonnull %0, i64 noundef %i.da) ; 2 uses
  %.not176 = icmp eq ptr %i.dd, null
  br i1 %.not176, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.i, %bb.y, %bb.aa, %bb.ac, %bb.ab
  %.0156 = phi i64 [ -1, %bb.aa ], [ %i.da, %bb.ab ], [ %i.da, %bb.ac ], [ %i.e, %bb.y ], [ %i.e, %bb.i ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !29 ; 5 uses
  %.not186 = icmp ugt i64 %.0156, %i.df
  br i1 %.not186, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = sub nuw i64 %i.df, %.0156               ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 6 uses
  %i.dj = icmp ugt i64 %i.dg, 31
  br i1 %i.dj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.0156 ; 2 uses
  %i.dl = or i64 %i.dg, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i64 %i.dg, ptr %i.dn, align 8, !tbaa !30
  %i.do = or i64 %.0156, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !28
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dq = or i64 %i.df, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = or i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink191 = phi ptr [ %i.dk, %bb.af ], [ null, %bb.ag ]
  %.sink = phi i64 [ %i.dg, %bb.af ], [ 0, %bb.ag ]
  store ptr %.sink191, ptr %i.dh, align 8, !tbaa !31
  store i64 %.sink, ptr %i.de, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !33 ; 2 uses
  %i.dz = icmp ult i64 %.0156, %i.dy
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ea = sub nuw i64 %i.dy, %.0156               ; 2 uses
  store i64 %i.ea, ptr %i.dx, align 8, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !34 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.0156 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !34
  %i.ee = or i64 %i.ea, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !28
  %i.eg = or i64 %.0156, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ej = tail call fastcc ptr @sys_alloc(ptr noundef nonnull %0, i64 noundef %.0156)
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.q, %bb.z, %bb.h, %bb.ak, %bb.ac, %bb.ah, %bb.aj
  %.2 = phi ptr [ %i.dw, %bb.ah ], [ %i.ei, %bb.aj ], [ %i.ej, %bb.ak ], [ %i.dd, %bb.ac ], [ %i.bb, %bb.x ], [ %i.bb, %bb.q ], [ %i.cx, %bb.z ], [ %i.t, %bb.h ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_multialloc_arrays(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.c = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !0

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
  %.0117.i = phi i64 [ %i.n, %bb.j ], [ -128, %bb.h ], [ 4088, %bb.g ]
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18 ; 2 uses
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = and i32 %i.o, -2
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %.not13148.i = icmp eq i64 %0, 0
  br i1 %.not13148.i, label %._crit_edge51.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.backedge.i, %.preheader.lr.ph.i
  %.010549.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.511.i, %.backedge.i ] ; 9 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.preheader.i
  %.09839.i = phi i64 [ 0, %.preheader.i ], [ %i.ad, %bb.n ] ; 4 uses
  %.110638.i = phi i64 [ %.010549.i, %.preheader.i ], [ %i.ae, %bb.n ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.110638.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = icmp ult i64 %i.k, %i.t
  br i1 %i.u, label %.thread18.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = mul i64 %i.t, %2                         ; 2 uses
  %i.w = icmp ult i64 %i.v, 23
  %i.x = add i64 %i.v, 23
  %i.y = and i64 %i.x, -16
  %i.z = select i1 %i.w, i64 32, i64 %i.y         ; 3 uses
  %i.aa = sub i64 %.0117.i, %.09839.i
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %.thread13.i, label %bb.n

.thread13.i:                                      ; preds = %bb.m
  %.not134.i = icmp eq i64 %.09839.i, 0           ; 2 uses
  %i.ac = zext i1 %.not134.i to i64
  %spec.select.i = add i64 %.110638.i, %i.ac
  %spec.select141.i = select i1 %.not134.i, i64 %i.z, i64 %.09839.i
  br label %.thread5.i

bb.n:                                             ; preds = %bb.m
  %i.ad = add i64 %i.z, %.09839.i                 ; 2 uses
  %i.ae = add i64 %.110638.i, 1                   ; 2 uses
  %.not133.i = icmp eq i64 %i.ae, %0
  br i1 %.not133.i, label %.thread5.i, label %bb.l, !llvm.loop !101

.thread5.i:                                       ; preds = %bb.n, %.thread13.i
  %.412.i = phi i64 [ %spec.select141.i, %.thread13.i ], [ %i.ad, %bb.n ]
  %.511.i = phi i64 [ %spec.select.i, %.thread13.i ], [ %0, %bb.n ] ; 8 uses
  %i.af = add i64 %.412.i, -8
  %i.ag = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.af) ; 8 uses
  %.not140.i = icmp eq ptr %i.ag, null
  br i1 %.not140.i, label %.thread18.i, label %bb.o

.thread18.i:                                      ; preds = %.thread5.i, %bb.l
  %.not13853.i = icmp eq i64 %.010549.i, 0
  br i1 %.not13853.i, label %._crit_edge57.i, label %.lr.ph56.preheader.i

.lr.ph56.preheader.i:                             ; preds = %.thread18.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i
  %.sroa.018.055.i = phi ptr [ %i.ak, %.lr.ph56.i ], [ %i.ai, %.lr.ph56.preheader.i ] ; 3 uses
  %.111154.i = phi i64 [ %i.aj, %.lr.ph56.i ], [ %.010549.i, %.lr.ph56.preheader.i ]
  %i.aj = add i64 %.111154.i, -1                  ; 2 uses
  %i.ak = load ptr, ptr %.sroa.018.055.i, align 8, !tbaa !71
  %i.al = getelementptr inbounds i8, ptr %.sroa.018.055.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = and i64 %i.am, -8
  %i.ao = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr @s_allocated_memory, align 8, !tbaa !40
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.018.055.i)
  %.not138.i = icmp eq i64 %i.aj, 0
  br i1 %.not138.i, label %._crit_edge57.i, label %.lr.ph56.i, !llvm.loop !102

._crit_edge57.i:                                  ; preds = %.lr.ph56.i, %.thread18.i
  %.not139.i = icmp eq i32 %i.p, 0
  br i1 %.not139.i, label %internal_multialloc_arrays.exit, label %.critedge.sink.split.i, !llvm.loop !103

bb.o:                                             ; preds = %.thread5.i
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.at = and i64 %i.as, -8                       ; 4 uses
  %i.au = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !72  ; 3 uses
  %i.ax = sub i64 %.511.i, %.010549.i
  %.211240.i = add i64 %.010549.i, 1              ; 3 uses
  %.not13641.i = icmp eq i64 %.211240.i, %.511.i
  br i1 %.not13641.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.ay = add i64 %.511.i, -2
  %i.az = sub i64 %.010549.i, %.511.i
  %i.ba = and i64 %i.az, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.211240.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !40
  %i.bd = mul i64 %i.bc, %2                       ; 2 uses
  %i.be = icmp ult i64 %i.bd, 23
  %i.bf = add i64 %i.bd, 23
  %i.bg = and i64 %i.bf, -16
  %i.bh = select i1 %i.be, i64 32, i64 %i.bg      ; 3 uses
  %i.bi = sub i64 %i.at, %i.bh                    ; 2 uses
  %i.bj = or disjoint i64 %i.bh, 3
  %i.bk = getelementptr inbounds i8, ptr %i.ag, i64 -8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bh ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.ag, align 8, !tbaa !63
  %.2112.i.prol = add i64 %.010549.i, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa83.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bl, %.lr.ph.i.prol ]
  %.lcssa81.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bm, %.lr.ph.i.prol ]
  %.211245.i.unr = phi i64 [ %.211240.i, %.lr.ph.i.preheader ], [ %.2112.i.prol, %.lr.ph.i.prol ]
  %.011844.i.unr = phi i64 [ %i.at, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.011943.i.unr = phi ptr [ %i.aq, %.lr.ph.i.preheader ], [ %i.bl, %.lr.ph.i.prol ]
  %.012042.i.unr = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.bm, %.lr.ph.i.prol ]
  %i.bn = icmp eq i64 %i.ay, %.010549.i
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.211245.i = phi i64 [ %.2112.i.1, %.lr.ph.i ], [ %.211245.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.011844.i = phi i64 [ %i.ci, %.lr.ph.i ], [ %.011844.i.unr, %.lr.ph.i.prol.loopexit ]
  %.011943.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.011943.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.012042.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.012042.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.211245.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !40
  %i.bq = mul i64 %i.bp, %2                       ; 2 uses
  %i.br = icmp ult i64 %i.bq, 23
  %i.bs = add i64 %i.bq, 23
  %i.bt = and i64 %i.bs, -16
  %i.bu = select i1 %i.br, i64 32, i64 %i.bt      ; 3 uses
  %i.bv = or disjoint i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %.011943.i, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %.011943.i, i64 %i.bu ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store ptr %i.by, ptr %.012042.i, align 8, !tbaa !63
  %i.bz = getelementptr [8 x i8], ptr %1, i64 %.211245.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !40
  %i.cc = mul i64 %i.cb, %2                       ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 23
  %i.ce = add i64 %i.cc, 23
  %i.cf = and i64 %i.ce, -16
  %i.cg = select i1 %i.cd, i64 32, i64 %i.cf      ; 3 uses
  %i.ch = add i64 %i.bu, %i.cg
  %i.ci = sub i64 %.011844.i, %i.ch               ; 2 uses
  %i.cj = or disjoint i64 %i.cg, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cg ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 3 uses
  store ptr %i.cm, ptr %i.by, align 8, !tbaa !63
  %.2112.i.1 = add i64 %.211245.i, 2              ; 2 uses
  %.not136.i.1 = icmp eq i64 %.2112.i.1, %.511.i
  br i1 %.not136.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !104

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.o
  %.0120.lcssa.i = phi ptr [ %i.ag, %bb.o ], [ %.lcssa81.unr, %.lr.ph.i.prol.loopexit ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %.0119.lcssa.i = phi ptr [ %i.aq, %bb.o ], [ %.lcssa82.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %.lr.ph.i ]
  %.0118.lcssa.i = phi i64 [ %i.at, %bb.o ], [ %.lcssa83.unr, %.lr.ph.i.prol.loopexit ], [ %i.ci, %.lr.ph.i ]
  %i.cn = or disjoint i64 %.0118.lcssa.i, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.0119.lcssa.i, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !28
  %i.cp = load ptr, ptr %i.aw, align 8, !tbaa !71
  %.not137.i = icmp eq i64 %.511.i, %.010549.i
  br i1 %.not137.i, label %.backedge.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.cr = icmp eq ptr %i.aw, %i.cq
  br i1 %i.cr, label %bb.q, label %.split.i

bb.q:                                             ; preds = %bb.p
  store ptr %.0120.lcssa.i, ptr %i.r, align 8, !tbaa !72
  br label %.split.i

.split.i:                                         ; preds = %bb.q, %bb.p
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !71
  store ptr %i.cp, ptr %.0120.lcssa.i, align 8, !tbaa !71
  %i.cs = load i64, ptr %4, align 8, !tbaa !73
  %i.ct = add i64 %i.ax, %i.cs
  store i64 %i.ct, ptr %4, align 8, !tbaa !73
  br label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %._crit_edge.i
  %.not131.i = icmp eq i64 %.511.i, %0
  br i1 %.not131.i, label %._crit_edge51.i, label %.preheader.i, !llvm.loop !103

._crit_edge51.i:                                  ; preds = %.backedge.i, %bb.k
  %.not132.i = icmp eq i32 %i.p, 0
  br i1 %.not132.i, label %internal_multialloc_arrays.exit, label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %._crit_edge51.i, %._crit_edge57.i
  %.3.ph.i = phi i32 [ 0, %._crit_edge57.i ], [ 1, %._crit_edge51.i ]
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.cv = or i32 %i.cu, 1
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  br label %internal_multialloc_arrays.exit

internal_multialloc_arrays.exit:                  ; preds = %spin_acquire_lock.exit, %bb.i, %._crit_edge57.i, %._crit_edge51.i, %.critedge.sink.split.i
  %.3.i = phi i32 [ 0, %spin_acquire_lock.exit ], [ 0, %bb.i ], [ 0, %._crit_edge57.i ], [ 1, %._crit_edge51.i ], [ %.3.ph.i, %.critedge.sink.split.i ]
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.cx = and i32 %i.cw, 2
  %.not13 = icmp eq i32 %i.cx, 0
  br i1 %.not13, label %bb.s, label %bb.r

bb.r:                                             ; preds = %internal_multialloc_arrays.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.s

bb.s:                                             ; preds = %internal_multialloc_arrays.exit, %bb.r
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @boost_cont_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = and i64 %i.b, -8
  %i.d = and i64 %i.b, 3
  %i.e = icmp eq i64 %i.d, 0
  %.neg = select i1 %i.e, i64 -16, i64 -8
  %i.f = add i64 %.neg, %i.c
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @boost_cont_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call { ptr, i32 } @boost_cont_allocation_command(i32 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef %0, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define hidden { ptr, i32 } @boost_cont_allocation_command(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %0, 72
  %.not64 = icmp eq i32 %i.b, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i32 %0, 8
  %i.d = tail call i32 @boost_cont_shrink(ptr noundef %6, i64 noundef %4, i64 noundef %3, ptr noundef %5, i32 noundef %i.c)
  %.not76 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not76, ptr null, ptr %6
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %5, align 8, !tbaa !40
  %i.f = icmp ugt i64 %3, %4
  br i1 %i.f, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.h = and i32 %i.g, 2
  %.not65 = icmp eq i32 %i.h, 0
  br i1 %.not65, label %spin_acquire_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not66 = icmp eq i32 %i.i, 0
  br i1 %.not66, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader.backedge
  %.0.i = phi i32 [ %i.l, %.preheader.backedge ], [ 0, %bb.g ]
  %i.j = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.o = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.h, %bb.f, %bb.g
  %.not67 = icmp eq ptr %6, null
  %i.p = and i32 %0, 6
  %.not68 = icmp eq i32 %i.p, 0
  %or.cond = or i1 %.not68, %.not67               ; 2 uses
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %spin_acquire_lock.exit
  %i.q = tail call fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef %6, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %5, i64 noundef %1, i32 noundef 1) ; 2 uses
  %.not69 = icmp eq ptr %i.q, null
  br i1 %.not69, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j, %spin_acquire_lock.exit
  %i.r = and i32 %0, 1
  %.not70 = icmp eq i32 %i.r, 0
  br i1 %.not70, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.t = and i32 %i.s, -3
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.u = icmp ult i64 %2, 17
  br i1 %i.u, label %mspace_memalign.exit, label %mspace_memalign.exit.thread

mspace_memalign.exit:                             ; preds = %bb.l
  %i.v = tail call ptr @mspace_malloc(ptr noundef nonnull @_gm_, i64 noundef %4) ; 2 uses
  %.not71 = icmp eq ptr %i.v, null
  br i1 %.not71, label %bb.m, label %mspace_memalign.exit83.thread

mspace_memalign.exit.thread:                      ; preds = %bb.l
  %i.w = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %2, i64 noundef %4) ; 2 uses
  %.not7185 = icmp eq ptr %i.w, null
  br i1 %.not7185, label %.thread, label %mspace_memalign.exit83.thread

bb.m:                                             ; preds = %mspace_memalign.exit
  %i.x = tail call ptr @mspace_malloc(ptr noundef nonnull @_gm_, i64 noundef %3)
  br label %mspace_memalign.exit83

.thread:                                          ; preds = %mspace_memalign.exit.thread
  %i.y = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %2, i64 noundef %3)
  br label %mspace_memalign.exit83

mspace_memalign.exit83:                           ; preds = %.thread, %bb.m
  %.0 = phi ptr [ %i.x, %bb.m ], [ %i.y, %.thread ] ; 2 uses
  %.not72 = icmp eq ptr %.0, null
  br i1 %.not72, label %.critedge, label %mspace_memalign.exit83.thread

mspace_memalign.exit83.thread:                    ; preds = %mspace_memalign.exit.thread, %mspace_memalign.exit, %mspace_memalign.exit83
  %.088 = phi ptr [ %.0, %mspace_memalign.exit83 ], [ %i.w, %mspace_memalign.exit.thread ], [ %i.v, %mspace_memalign.exit ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.088, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = and i64 %i.aa, -8                       ; 2 uses
  %i.ac = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.ad = add i64 %i.ac, %i.ab
  store i64 %i.ad, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.ae = and i64 %i.aa, 3
  %i.af = icmp eq i64 %i.ae, 0
  %.neg = select i1 %i.af, i64 -16, i64 -8
  %i.ag = add i64 %.neg, %i.ab
  store i64 %i.ag, ptr %5, align 8, !tbaa !40
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.ai = or i32 %i.ah, 2
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  br label %bb.p

.critedge:                                        ; preds = %mspace_memalign.exit83
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.ak = or i32 %i.aj, 2
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.k
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef %6, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %5, i64 noundef %1, i32 noundef 0) ; 2 uses
  %.not74 = icmp ne ptr %i.al, null
end_hunk_7
begin_hunk_8_@boost_cont_free:bb.a
  %.not13 = icmp eq i32 %i.p, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mspace_free_lockless(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge467.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 6 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 22 uses
  %.not405 = icmp ult ptr %i.a, %i.b
  br i1 %.not405, label %.critedge455, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.e = and i64 %i.d, 3
  %.not11 = icmp eq i64 %i.e, 1
  br i1 %.not11, label %.critedge455, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.d, -8                         ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f ; 23 uses
  %i.h = and i64 %i.d, 1
  %.not406 = icmp eq i64 %i.h, 0
  br i1 %.not406, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.j = and i64 %i.d, 2
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %i.f, 32
  %i.m = add i64 %i.l, %i.i                       ; 2 uses
  %i.n = sub i64 0, %i.i
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  %i.p = tail call i32 @munmap(ptr noundef nonnull %i.o, i64 noundef %i.m) #16
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %.critedge467.thread

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.s = sub i64 %i.r, %i.m
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  br label %.critedge467.thread

bb.h:                                             ; preds = %bb.e
  %i.t = sub i64 0, %i.i
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t ; 28 uses
  %i.v = add i64 %i.i, %i.f                       ; 11 uses
  %.not407 = icmp ult ptr %i.u, %i.b
  br i1 %.not407, label %.critedge455, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %.not408 = icmp eq ptr %i.u, %i.w
  br i1 %.not408, label %bb.av, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp ult i64 %i.i, 256
  br i1 %i.x, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.y = lshr i64 %i.i, 3                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.y to i32
  %.idx = shl nuw nsw i64 %i.y, 4
  %i.ae = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx ; 2 uses
  %i.af = icmp eq ptr %i.aa, %i.ae
  br i1 %i.af, label %.critedge457, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not424 = icmp ult ptr %i.aa, %i.b
  br i1 %.not424, label %.critedge459, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %.critedge457, label %.critedge459, !prof !27

.critedge457:                                     ; preds = %bb.k, %bb.m
  %i.aj = icmp eq ptr %i.ac, %i.aa
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge457
  %i.ak = shl nuw i32 1, %i.ad
  %i.al = xor i32 %i.ak, -1
  %i.am = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.an = and i32 %i.am, %i.al
  store i32 %i.an, ptr @_gm_, align 8, !tbaa !21
  br label %.thread

bb.o:                                             ; preds = %.critedge457
  %i.ao = icmp eq ptr %i.ac, %i.ae
  br i1 %i.ao, label %.critedge461, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not425 = icmp ult ptr %i.ac, %i.b
  br i1 %.not425, label %.critedge463, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = icmp eq ptr %i.aq, %i.u
  br i1 %i.ar, label %.critedge461, label %.critedge463, !prof !27

.critedge461:                                     ; preds = %bb.o, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ac, ptr %i.as, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.at, align 8, !tbaa !23
  br label %.thread

.critedge463:                                     ; preds = %bb.p, %bb.q
  tail call void @abort() #17
  unreachable

.critedge459:                                     ; preds = %bb.l, %bb.m
  tail call void @abort() #17
  unreachable

bb.r:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 4 uses
  %.not409 = icmp eq ptr %i.ax, %i.u
  br i1 %.not409, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 3 uses
  %.not415 = icmp ult ptr %i.az, %i.b
  br i1 %.not415, label %.critedge465, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %bb.u, label %.critedge465, !prof !27

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  %i.bf = icmp eq ptr %i.be, %i.u
  br i1 %i.bf, label %bb.v, label %.critedge465, !prof !27

bb.v:                                             ; preds = %bb.u
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !46
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !47
  br label %bb.ac

.critedge465:                                     ; preds = %bb.t, %bb.s, %bb.u
  tail call void @abort() #17
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not410 = icmp eq ptr %i.bh, null
  br i1 %.not410, label %bb.x, label %.critedge.preheader

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42 ; 2 uses
  %.not411 = icmp eq ptr %i.bj, null
  br i1 %.not411, label %bb.ac, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.x, %bb.w
  %.1363.ph = phi ptr [ %i.bh, %bb.w ], [ %i.bj, %bb.x ]
  %.1361.ph = phi ptr [ %i.bg, %bb.w ], [ %i.bi, %bb.x ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1363 = phi ptr [ %.1363.ph, %.critedge.preheader ], [ %.1363.be, %.critedge.backedge ] ; 3 uses
  %.1361 = phi ptr [ %.1361.ph, %.critedge.preheader ], [ %.1361.be, %.critedge.backedge ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1363, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %.not412 = icmp eq ptr %i.bl, null
  br i1 %.not412, label %bb.y, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.y
  %.1363.be = phi ptr [ %i.bl, %.critedge ], [ %i.bn, %bb.y ]
  %.1361.be = phi ptr [ %i.bk, %.critedge ], [ %i.bm, %bb.y ]
  br label %.critedge, !llvm.loop !105

bb.y:                                             ; preds = %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %.1363, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 2 uses
  %.not413 = icmp eq ptr %i.bn, null
  br i1 %.not413, label %bb.z, label %.critedge.backedge

bb.z:                                             ; preds = %bb.y
  %.not414 = icmp ult ptr %.1361, %i.b
  br i1 %.not414, label %bb.ab, label %bb.aa, !prof !25

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %.1361, align 8, !tbaa !42
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @abort() #17
  unreachable

bb.ac:                                            ; preds = %bb.x, %bb.aa, %bb.v
  %.3365 = phi ptr [ %i.ax, %bb.v ], [ %.1363, %bb.aa ], [ null, %bb.x ] ; 11 uses
  %.not416 = icmp eq ptr %i.av, null
  br i1 %.not416, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  %i.bt = icmp eq ptr %i.u, %i.bs
  br i1 %i.bt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %.3365, ptr %i.br, align 8, !tbaa !42
  %cond = icmp eq ptr %.3365, null
  br i1 %cond, label %.thread53, label %bb.al

.thread53:                                        ; preds = %bb.ae
  %i.bu = shl nuw i32 1, %i.bp
  %i.bv = xor i32 %i.bu, -1
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.bx = and i32 %i.bw, %i.bv
  store i32 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %.not417 = icmp ult ptr %i.av, %i.b
  br i1 %.not417, label %bb.aj, label %bb.ag, !prof !25

bb.ag:                                            ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ca = icmp eq ptr %i.bz, %i.u
  br i1 %i.ca, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %.3365, ptr %i.by, align 8, !tbaa !42
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.3365, ptr %i.cb, align 8, !tbaa !42
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  tail call void @abort() #17
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %.not418 = icmp eq ptr %.3365, null
  br i1 %.not418, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.ak
  %.not419 = icmp ult ptr %.3365, %i.b
  br i1 %.not419, label %bb.au, label %bb.am, !prof !25

bb.am:                                            ; preds = %bb.al
  %i.cc = getelementptr inbounds nuw i8, ptr %.3365, i64 48
  store ptr %i.av, ptr %i.cc, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !42 ; 4 uses
  %.not420 = icmp eq ptr %i.ce, null
  br i1 %.not420, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not421 = icmp ult ptr %i.ce, %i.b
  br i1 %.not421, label %bb.ap, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %bb.an
  %i.cf = getelementptr inbounds nuw i8, ptr %.3365, i64 32
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store ptr %.3365, ptr %i.cg, align 8, !tbaa !45
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @abort() #17
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42 ; 4 uses
  %.not422 = icmp eq ptr %i.ci, null
  br i1 %.not422, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not423 = icmp ult ptr %i.ci, %i.b
  br i1 %.not423, label %bb.at, label %bb.as, !prof !25

bb.as:                                            ; preds = %bb.ar
  %i.cj = getelementptr inbounds nuw i8, ptr %.3365, i64 40
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %.3365, ptr %i.ck, align 8, !tbaa !45
  br label %.thread

bb.at:                                            ; preds = %bb.ar
  tail call void @abort() #17
  unreachable

bb.au:                                            ; preds = %bb.al
  tail call void @abort() #17
  unreachable

bb.av:                                            ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !28 ; 2 uses
  %i.cn = and i64 %i.cm, 3
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.cp = and i64 %i.cm, -2
  store i64 %i.cp, ptr %i.cl, align 8, !tbaa !28
  %i.cq = or i64 %i.v, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !28
  store i64 %i.v, ptr %i.g, align 8, !tbaa !30
  br label %.critedge467.thread

.thread:                                          ; preds = %.thread53, %bb.av, %bb.n, %.critedge461, %bb.ak, %bb.as, %bb.aq, %bb.ac, %bb.d
  %.1367 = phi i64 [ %i.f, %bb.d ], [ %i.v, %bb.ac ], [ %i.v, %bb.aq ], [ %i.v, %bb.as ], [ %i.v, %bb.ak ], [ %i.v, %.critedge461 ], [ %i.v, %bb.n ], [ %i.v, %bb.av ], [ %i.v, %.thread53 ] ; 7 uses
  %.1347 = phi ptr [ %i.a, %bb.d ], [ %i.u, %bb.ac ], [ %i.u, %bb.aq ], [ %i.u, %bb.as ], [ %i.u, %bb.ak ], [ %i.u, %.critedge461 ], [ %i.u, %bb.n ], [ %i.u, %bb.av ], [ %i.u, %.thread53 ] ; 29 uses
  %i.cs = icmp ult ptr %.1347, %i.g
  br i1 %i.cs, label %bb.ax, label %.critedge455, !prof !27

bb.ax:                                            ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28 ; 6 uses
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %bb.ay, label %.critedge455, !prof !27

bb.ay:                                            ; preds = %bb.ax
  %i.cw = and i64 %i.cu, 2
  %.not426 = icmp eq i64 %i.cw, 0
  br i1 %.not426, label %bb.az, label %bb.ct

bb.az:                                            ; preds = %bb.ay
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.cy = icmp eq ptr %i.g, %i.cx
  br i1 %i.cy, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.da = add i64 %i.cz, %.1367                   ; 3 uses
  store i64 %i.da, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  store ptr %.1347, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.db = or i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.1347, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !28
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.de = icmp eq ptr %.1347, %i.dd
  br i1 %i.de, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 48), align 8, !tbaa !57
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.bd, label %.critedge467.thread

bb.bd:                                            ; preds = %bb.bc
  %i.dh = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef 0) ; 0 uses
  br label %.critedge467.thread

bb.be:                                            ; preds = %bb.az
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31 ; 2 uses
  %i.dj = icmp eq ptr %i.g, %i.di
  br i1 %i.dj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.dl = add i64 %i.dk, %.1367                   ; 4 uses
  store i64 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  store ptr %.1347, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.dm = or i64 %i.dl, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.1347, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %.1347, i64 %i.dl
  store i64 %i.dl, ptr %i.do, align 8, !tbaa !30
  br label %.critedge467.thread

bb.bg:                                            ; preds = %bb.be
  %i.dp = and i64 %i.cu, -8
  %i.dq = add i64 %i.dp, %.1367                   ; 5 uses
  %i.dr = icmp ult i64 %i.cu, 256
  br i1 %i.dr, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.ds = lshr i64 %i.cu, 3                       ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 6 uses
  %i.dx = trunc nuw nsw i64 %i.ds to i32
  %.idx442 = shl nuw nsw i64 %i.ds, 4
  %i.dy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx442 ; 2 uses
  %i.dz = icmp eq ptr %i.du, %i.dy
  br i1 %i.dz, label %.critedge469, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not443 = icmp ult ptr %i.du, %i.b
  br i1 %.not443, label %.critedge471, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !26
  %i.ec = icmp eq ptr %i.eb, %i.g
  br i1 %i.ec, label %.critedge469, label %.critedge471, !prof !27

.critedge469:                                     ; preds = %bb.bh, %bb.bj
  %i.ed = icmp eq ptr %i.dw, %i.du
  br i1 %i.ed, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.critedge469
  %i.ee = shl nuw i32 1, %i.dx
  %i.ef = xor i32 %i.ee, -1
  %i.eg = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.eh = and i32 %i.eg, %i.ef
  store i32 %i.eh, ptr @_gm_, align 8, !tbaa !21
  br label %bb.cs

bb.bl:                                            ; preds = %.critedge469
  %i.ei = icmp eq ptr %i.dw, %i.dy
  br i1 %i.ei, label %.critedge473, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not444 = icmp ult ptr %i.dw, %i.b
  br i1 %.not444, label %.critedge475, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !23
  %i.el = icmp eq ptr %i.ek, %i.g
  br i1 %i.el, label %.critedge473, label %.critedge475, !prof !27

.critedge473:                                     ; preds = %bb.bl, %bb.bn
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dw, ptr %i.em, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.du, ptr %i.en, align 8, !tbaa !23
  br label %bb.cs

.critedge475:                                     ; preds = %bb.bm, %bb.bn
  tail call void @abort() #17
  unreachable

.critedge471:                                     ; preds = %bb.bi, %bb.bj
  tail call void @abort() #17
  unreachable

bb.bo:                                            ; preds = %bb.bg
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !46 ; 4 uses
  %.not427 = icmp eq ptr %i.er, %i.g
  br i1 %.not427, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !47 ; 3 uses
  %.not433 = icmp ult ptr %i.et, %i.b
  br i1 %.not433, label %.critedge477, label %bb.bq, !prof !25

bb.bq:                                            ; preds = %bb.bp
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !46
  %i.ew = icmp eq ptr %i.ev, %i.g
  br i1 %i.ew, label %bb.br, label %.critedge477, !prof !27

bb.br:                                            ; preds = %bb.bq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !47
  %i.ez = icmp eq ptr %i.ey, %i.g
  br i1 %i.ez, label %bb.bs, label %.critedge477, !prof !27

bb.bs:                                            ; preds = %bb.br
  store ptr %i.er, ptr %i.eu, align 8, !tbaa !46
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !47
  br label %bb.bz

.critedge477:                                     ; preds = %bb.bq, %bb.bp, %bb.br
  tail call void @abort() #17
  unreachable

bb.bt:                                            ; preds = %bb.bo
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !42 ; 2 uses
  %.not428 = icmp eq ptr %i.fb, null
  br i1 %.not428, label %bb.bu, label %.critedge4.preheader

bb.bu:                                            ; preds = %bb.bt
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42 ; 2 uses
  %.not429 = icmp eq ptr %i.fd, null
  br i1 %.not429, label %bb.bz, label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %bb.bu, %bb.bt
  %.1354.ph = phi ptr [ %i.fb, %bb.bt ], [ %i.fd, %bb.bu ]
  %.1352.ph = phi ptr [ %i.fa, %bb.bt ], [ %i.fc, %bb.bu ]
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.backedge, %.critedge4.preheader
  %.1354 = phi ptr [ %.1354.ph, %.critedge4.preheader ], [ %.1354.be, %.critedge4.backedge ] ; 3 uses
  %.1352 = phi ptr [ %.1352.ph, %.critedge4.preheader ], [ %.1352.be, %.critedge4.backedge ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1354, i64 40 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !42 ; 2 uses
  %.not430 = icmp eq ptr %i.ff, null
  br i1 %.not430, label %bb.bv, label %.critedge4.backedge

.critedge4.backedge:                              ; preds = %.critedge4, %bb.bv
  %.1354.be = phi ptr [ %i.ff, %.critedge4 ], [ %i.fh, %bb.bv ]
  %.1352.be = phi ptr [ %i.fe, %.critedge4 ], [ %i.fg, %bb.bv ]
  br label %.critedge4, !llvm.loop !106

bb.bv:                                            ; preds = %.critedge4
  %i.fg = getelementptr inbounds nuw i8, ptr %.1354, i64 32 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !42 ; 2 uses
  %.not431 = icmp eq ptr %i.fh, null
  br i1 %.not431, label %bb.bw, label %.critedge4.backedge

bb.bw:                                            ; preds = %bb.bv
  %.not432 = icmp ult ptr %.1352, %i.b
  br i1 %.not432, label %bb.by, label %bb.bx, !prof !25

bb.bx:                                            ; preds = %bb.bw
  store ptr null, ptr %.1352, align 8, !tbaa !42
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  tail call void @abort() #17
  unreachable

bb.bz:                                            ; preds = %bb.bu, %bb.bx, %bb.bs
  %.3 = phi ptr [ %i.er, %bb.bs ], [ %.1354, %bb.bx ], [ null, %bb.bu ] ; 11 uses
  %.not434 = icmp eq ptr %i.ep, null
  br i1 %.not434, label %bb.cs, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !48 ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.fk ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !42
  %i.fn = icmp eq ptr %i.g, %i.fm
  br i1 %i.fn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store ptr %.3, ptr %i.fl, align 8, !tbaa !42
  %cond479 = icmp eq ptr %.3, null
  br i1 %cond479, label %.thread55, label %bb.ci

.thread55:                                        ; preds = %bb.cb
  %i.fo = shl nuw i32 1, %i.fj
  %i.fp = xor i32 %i.fo, -1
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.fr = and i32 %i.fq, %i.fp
  store i32 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %bb.cs

bb.cc:                                            ; preds = %bb.ca
  %.not435 = icmp ult ptr %i.ep, %i.b
  br i1 %.not435, label %bb.cg, label %bb.cd, !prof !25

bb.cd:                                            ; preds = %bb.cc
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !42
  %i.fu = icmp eq ptr %i.ft, %i.g
  br i1 %i.fu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr %.3, ptr %i.fs, align 8, !tbaa !42
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store ptr %.3, ptr %i.fv, align 8, !tbaa !42
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  tail call void @abort() #17
  unreachable

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %.not436 = icmp eq ptr %.3, null
  br i1 %.not436, label %bb.cs, label %bb.ci

bb.ci:                                            ; preds = %bb.cb, %bb.ch
  %.not437 = icmp ult ptr %.3, %i.b
  br i1 %.not437, label %bb.cr, label %bb.cj, !prof !25

bb.cj:                                            ; preds = %bb.ci
  %i.fw = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.ep, ptr %i.fw, align 8, !tbaa !45
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 4 uses
  %.not438 = icmp eq ptr %i.fy, null
  br i1 %.not438, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not439 = icmp ult ptr %i.fy, %i.b
  br i1 %.not439, label %bb.cm, label %bb.cl, !prof !25

bb.cl:                                            ; preds = %bb.ck
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %.3, ptr %i.ga, align 8, !tbaa !45
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  tail call void @abort() #17
  unreachable

bb.cn:                                            ; preds = %bb.cl, %bb.cj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 4 uses
  %.not440 = icmp eq ptr %i.gc, null
  br i1 %.not440, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not441 = icmp ult ptr %i.gc, %i.b
  br i1 %.not441, label %bb.cq, label %bb.cp, !prof !25

bb.cp:                                            ; preds = %bb.co
  %i.gd = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !42
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  store ptr %.3, ptr %i.ge, align 8, !tbaa !45
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  tail call void @abort() #17
  unreachable

bb.cr:                                            ; preds = %bb.ci
  tail call void @abort() #17
  unreachable

bb.cs:                                            ; preds = %.thread55, %bb.bz, %bb.cn, %bb.cp, %bb.ch, %.critedge473, %bb.bk
  %i.gf = or i64 %i.dq, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.1347, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %.1347, i64 %i.dq
  store i64 %i.dq, ptr %i.gh, align 8, !tbaa !30
  %.not445 = icmp eq ptr %.1347, %i.di
  br i1 %.not445, label %.thread5, label %bb.cu

.thread5:                                         ; preds = %bb.cs
  store i64 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  br label %.critedge467.thread

bb.ct:                                            ; preds = %bb.ay
  %i.gi = and i64 %i.cu, -2
  store i64 %i.gi, ptr %i.ct, align 8, !tbaa !28
  %i.gj = or i64 %.1367, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.1347, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !28
  %i.gl = getelementptr inbounds nuw i8, ptr %.1347, i64 %.1367
  store i64 %.1367, ptr %i.gl, align 8, !tbaa !30
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.2368 = phi i64 [ %.1367, %bb.ct ], [ %i.dq, %bb.cs ] ; 6 uses
  %i.gm = icmp ult i64 %.2368, 256
  br i1 %i.gm, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.gn = lshr i64 %.2368, 3                      ; 2 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %.idx451 = shl nuw nsw i64 %i.gn, 4
  %i.gp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx451 ; 4 uses
  %i.gq = load i32, ptr @_gm_, align 8, !tbaa !21 ; 2 uses
  %i.gr = shl nuw i32 1, %i.go                    ; 2 uses
  %i.gs = and i32 %i.gq, %i.gr
  %.not452 = icmp eq i32 %i.gs, 0
  br i1 %.not452, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.gt = or i32 %i.gq, %i.gr
  store i32 %i.gt, ptr @_gm_, align 8, !tbaa !21
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !23 ; 2 uses
  %.not453 = icmp ult ptr %i.gv, %i.b
  br i1 %.not453, label %bb.cy, label %bb.cz, !prof !25

bb.cy:                                            ; preds = %bb.cx
  tail call void @abort() #17
  unreachable

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %.0349 = phi ptr [ %i.gp, %bb.cw ], [ %i.gv, %bb.cx ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %.1347, ptr %i.gw, align 8, !tbaa !23
  %i.gx = getelementptr inbounds nuw i8, ptr %.0349, i64 24
  store ptr %.1347, ptr %i.gx, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %.1347, i64 16
  store ptr %.0349, ptr %i.gy, align 8, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %.1347, i64 24
  store ptr %i.gp, ptr %i.gz, align 8, !tbaa !26
  br label %.critedge467.thread

bb.da:                                            ; preds = %bb.cu
  %i.ha = lshr i64 %.2368, 8
  %i.hb = trunc i64 %i.ha to i32                  ; 3 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hd = icmp ugt i32 %i.hb, 65535
  br i1 %i.hd, label %bb.dd, label %bb.dc
end_hunk_8
begin_hunk_9_@mspace_free_lockless:bb.a
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.1347, i64 56
  store i32 %.0348, ptr %i.hp, align 8, !tbaa !48
  %i.hq = getelementptr inbounds nuw i8, ptr %.1347, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32 ; 2 uses
  %i.hs = shl nuw i32 1, %.0348                   ; 2 uses
  %i.ht = and i32 %i.hr, %i.hs
  %.not446 = icmp eq i32 %i.ht, 0
  br i1 %.not446, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.hu = or i32 %i.hr, %i.hs
  store i32 %i.hu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  store ptr %.1347, ptr %i.ho, align 8, !tbaa !42
  br label %bb.dn

bb.df:                                            ; preds = %bb.dd
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !42
  %i.hw = icmp eq i32 %.0348, 31
  %i.hx = lshr i32 %.0348, 1
  %i.hy = add nuw nsw i32 %i.hx, 6
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = sub nuw nsw i64 63, %i.hz
  %i.ib = select i1 %i.hw, i64 0, i64 %i.ia
  %i.ic = shl i64 %.2368, %i.ib
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dh, %bb.df
  %.0345 = phi ptr [ %i.hv, %bb.df ], [ %i.ik, %bb.dh ] ; 6 uses
  %.0 = phi i64 [ %i.ic, %bb.df ], [ %i.ij, %bb.dh ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0345, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !44
  %i.if = and i64 %i.ie, -8
  %.not447 = icmp eq i64 %i.if, %.2368
  br i1 %.not447, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ig = getelementptr inbounds nuw i8, ptr %.0345, i64 32 ; 2 uses
  %i.ih = lshr i64 %.0, 63                        ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ih
  %i.ij = shl i64 %.0, 1
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !42 ; 2 uses
  %.not449 = icmp eq ptr %i.ik, null
  br i1 %.not449, label %bb.di, label %bb.dg

bb.di:                                            ; preds = %bb.dh
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %.not450 = icmp ult ptr %i.il, %i.b
  br i1 %.not450, label %bb.dj, label %.thread7, !prof !25

.thread7:                                         ; preds = %bb.di
  store ptr %.1347, ptr %i.il, align 8, !tbaa !42
  br label %bb.dn

bb.dj:                                            ; preds = %bb.di
  tail call void @abort() #17
  unreachable

bb.dk:                                            ; preds = %bb.dg
  %i.im = getelementptr inbounds nuw i8, ptr %.0345, i64 16 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !47 ; 3 uses
  %.not448 = icmp uge ptr %.0345, %i.b
  %i.io = icmp uge ptr %i.in, %i.b
  %spec.select = select i1 %.not448, i1 %i.io, i1 false, !prof !27
  br i1 %spec.select, label %bb.dl, label %bb.dm, !prof !27

bb.dl:                                            ; preds = %bb.dk
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  store ptr %.1347, ptr %i.ip, align 8, !tbaa !46
  store ptr %.1347, ptr %i.im, align 8, !tbaa !47
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  tail call void @abort() #17
  unreachable

bb.dn:                                            ; preds = %.thread7, %bb.dl, %bb.de
  %.sink62 = phi i64 [ 48, %.thread7 ], [ 16, %bb.dl ], [ 48, %bb.de ]
  %.0345.lcssa57.sink = phi ptr [ %.0345, %.thread7 ], [ %i.in, %bb.dl ], [ %i.ho, %bb.de ]
  %.1347.sink61 = phi ptr [ %.1347, %.thread7 ], [ %.0345, %bb.dl ], [ %.1347, %bb.de ]
  %.sink60 = phi i64 [ 16, %.thread7 ], [ 48, %bb.dl ], [ 16, %bb.de ]
  %.1347.sink = phi ptr [ %.1347, %.thread7 ], [ null, %bb.dl ], [ %.1347, %bb.de ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.1347, i64 %.sink62
  store ptr %.0345.lcssa57.sink, ptr %i.iq, align 8, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %.1347, i64 24
  store ptr %.1347.sink61, ptr %i.ir, align 8, !tbaa !46
  %i.is = getelementptr inbounds nuw i8, ptr %.1347, i64 %.sink60
  store ptr %.1347.sink, ptr %i.is, align 8, !tbaa !42
  %i.it = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 56), align 8, !tbaa !56
  %i.iu = add i64 %i.it, -1                       ; 2 uses
  store i64 %i.iu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 56), align 8, !tbaa !56
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.do, label %.critedge467.thread

bb.do:                                            ; preds = %bb.dn
  %i.iw = tail call fastcc i64 @release_unused_segments(ptr noundef nonnull @_gm_) ; 0 uses
  br label %.critedge467.thread

.critedge455:                                     ; preds = %.thread, %bb.ax, %bb.h, %bb.b, %bb.c
  tail call void @abort() #17
  unreachable

.critedge467.thread:                              ; preds = %bb.aw, %bb.g, %bb.f, %bb.do, %bb.dn, %bb.bd, %bb.cz, %.thread5, %bb.bf, %bb.bc, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @boost_cont_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %i.g = and i64 %i.f, -8
  %i.h = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr @s_allocated_memory, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mspace_memalign.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_multialloc_nodes(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.c = and i32 %i.b, 2
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = icmp ult i64 %1, 23
  %i.l = add i64 %1, 23
  %i.m = and i64 %i.l, -16
  %i.n = select i1 %i.k, i64 32, i64 %i.m         ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %.not.i13 = icmp eq i64 %1, 0
  br i1 %.not.i13, label %internal_node_multialloc.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.q = add i64 %2, -1
  %i.r = icmp ult i64 %i.q, -2
  %i.s = icmp ult i64 %0, %2
  %or.cond.i = and i1 %i.s, %i.r
  br i1 %or.cond.i, label %internal_node_multialloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = or i64 %i.n, %2
  %i.u = icmp ugt i64 %i.t, 4294967295
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.n, i64 %2)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %internal_node_multialloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i64 %2, label %bb.l [
    i64 0, label %bb.k
    i64 -1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.v = udiv i64 4096, %i.n
  %.not93.i = icmp ugt i64 %i.n, 4096
  %i.w = zext i1 %.not93.i to i64
  %i.x = add nuw nsw i64 %i.v, %i.w
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.090.i = phi i64 [ %2, %bb.l ], [ %i.x, %bb.k ], [ %0, %bb.j ]
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18 ; 2 uses
  %i.z = and i32 %i.y, 1
  %i.aa = and i32 %i.y, -2
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.ab = or disjoint i64 %i.n, 3                 ; 5 uses
  %.not98.i = icmp eq i32 %i.z, 0                 ; 2 uses
  %.not94.i18 = icmp eq i64 %0, 0
  br i1 %.not94.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %.086.i19 = phi i64 [ %i.ae, %bb.p ], [ 0, %bb.m ] ; 4 uses
  %i.ac = sub i64 %0, %.086.i19
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.090.i) ; 4 uses
  %i.ae = add i64 %i.ad, %.086.i19                ; 2 uses
  %i.af = mul i64 %i.ad, %i.n
  %i.ag = add i64 %i.af, -8
  %i.ah = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.ag) ; 6 uses
  %.not99.i = icmp eq ptr %i.ah, null
  br i1 %.not99.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %.not979.i = icmp eq i64 %.086.i19, 0
  br i1 %.not979.i, label %._crit_edge14.i, label %.lr.ph13.i.preheader

.lr.ph13.i.preheader:                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !71
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %.18711.i = phi i64 [ %i.aj, %.lr.ph13.i ], [ %.086.i19, %.lr.ph13.i.preheader ]
  %.sroa.0.110.i = phi ptr [ %i.ak, %.lr.ph13.i ], [ %i.ai, %.lr.ph13.i.preheader ] ; 3 uses
  %i.aj = add i64 %.18711.i, -1                   ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.110.i, align 8, !tbaa !71
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.110.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = and i64 %i.am, -8
  %i.ao = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr @s_allocated_memory, align 8, !tbaa !40
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.0.110.i)
  %.not97.i = icmp eq i64 %i.aj, 0
  br i1 %.not97.i, label %._crit_edge14.i, label %.lr.ph13.i, !llvm.loop !107

._crit_edge14.i:                                  ; preds = %.lr.ph13.i, %bb.n
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

bb.o:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %i.au = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.aw = add i64 %i.ad, -1                       ; 6 uses
  %i.ax = mul i64 %i.aw, %i.n
  %i.ay = sub i64 %i.at, %i.ax
  %.not963.i = icmp eq i64 %i.aw, 0
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !72 ; 3 uses
  %.pre21.i = load i64, ptr %3, align 8, !tbaa !73 ; 2 uses
  br i1 %.not963.i, label %bb.p, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.az = add i64 %i.ad, -2
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.ba = phi ptr [ %.0836.i.prol, %.lr.ph.i.prol ], [ %.pre.i, %.lr.ph.i.preheader ]
  %.0836.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %i.ah, %.lr.ph.i.preheader ] ; 5 uses
  %.0845.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %i.aq, %.lr.ph.i.preheader ] ; 2 uses
  %.0854.i.prol = phi i64 [ %i.bb, %.lr.ph.i.prol ], [ %i.aw, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = add i64 %.0854.i.prol, -1               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 8
  store i64 %i.ab, ptr %i.bc, align 8, !tbaa !28
  store ptr %.0836.i.prol, ptr %i.ba, align 8, !tbaa !71
  store ptr null, ptr %.0836.i.prol, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %.0845.i.prol, i64 %i.n ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !108

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0836.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.lcssa30.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.pre.i, %.lr.ph.i.preheader ], [ %.0836.i.prol, %.lr.ph.i.prol ]
  %.0836.i.unr = phi ptr [ %i.ah, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.0845.i.unr = phi ptr [ %i.aq, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %.0854.i.unr = phi i64 [ %i.aw, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bg = phi ptr [ %i.bp, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %.0836.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.0836.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.0845.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.0845.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0854.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.0854.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0845.i, i64 8
  store i64 %i.ab, ptr %i.bh, align 8, !tbaa !28
  store ptr %.0836.i, ptr %i.bg, align 8, !tbaa !71
  store ptr null, ptr %.0836.i, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %.0845.i, i64 %i.n ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.ab, ptr %i.bk, align 8, !tbaa !28
  store ptr %i.bj, ptr %.0836.i, align 8, !tbaa !71
  store ptr null, ptr %i.bj, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.n ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.ab, ptr %i.bn, align 8, !tbaa !28
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !71
  store ptr null, ptr %i.bm, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.n ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bq = add i64 %.0854.i, -4                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.ab, ptr %i.br, align 8, !tbaa !28
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !71
  store ptr null, ptr %i.bp, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.n ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.not96.i.3 = icmp eq i64 %i.bq, 0
  br i1 %.not96.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.0836.i.lcssa = phi ptr [ %.0836.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bp, %.lr.ph.i ]
  %.lcssa30 = phi ptr [ %.lcssa30.unr, %.lr.ph.i.prol.loopexit ], [ %i.bs, %.lr.ph.i ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bt, %.lr.ph.i ]
  %i.bu = add i64 %i.aw, %.pre21.i
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %bb.o
  %i.bv = phi i64 [ %i.bu, %._crit_edge.i ], [ %.pre21.i, %bb.o ]
  %i.bw = phi ptr [ %.0836.i.lcssa, %._crit_edge.i ], [ %.pre.i, %bb.o ]
  %.084.lcssa.i = phi ptr [ %.lcssa30, %._crit_edge.i ], [ %i.aq, %bb.o ]
  %.083.lcssa.i = phi ptr [ %.lcssa, %._crit_edge.i ], [ %i.ah, %bb.o ] ; 3 uses
  %i.bx = or disjoint i64 %i.ay, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.084.lcssa.i, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !28
  store ptr %.083.lcssa.i, ptr %i.bw, align 8, !tbaa !71
  store ptr null, ptr %.083.lcssa.i, align 8, !tbaa !71
  store ptr %.083.lcssa.i, ptr %i.o, align 8, !tbaa !72
  %i.bz = add i64 %i.bv, 1
  store i64 %i.bz, ptr %3, align 8, !tbaa !73
  %.not94.i = icmp eq i64 %i.ae, %0
  br i1 %.not94.i, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.p, %bb.m
  br i1 %.not98.i, label %internal_node_multialloc.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge, %._crit_edge14.i
  %.not94.i16 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge14.i ]
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.cb = or i32 %i.ca, 1
  store i32 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  br label %internal_node_multialloc.exit

internal_node_multialloc.exit:                    ; preds = %._crit_edge14.i, %._crit_edge, %.loopexit.sink.split.i, %spin_acquire_lock.exit, %bb.g, %bb.i
  %.3.i = phi i32 [ 0, %bb.i ], [ 0, %spin_acquire_lock.exit ], [ 0, %bb.g ], [ 1, %._crit_edge ], [ 0, %._crit_edge14.i ], [ %.not94.i16, %.loopexit.sink.split.i ]
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.cd = and i32 %i.cc, 2
  %.not12 = icmp eq i32 %i.cd, 0
  br i1 %.not12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %internal_node_multialloc.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.r

bb.r:                                             ; preds = %internal_node_multialloc.exit, %bb.q
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @boost_cont_footprint() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @boost_cont_allocated_memory() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.c = and i32 %i.b, 2
  %.not45 = icmp eq i32 %i.c, 0
  br i1 %.not45, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not46 = icmp eq i32 %i.d, 0
  br i1 %.not46, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34 ; 3 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.k, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.m = add i64 %i.l, 80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %.03467 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_gm_, i64 888), %bb.g ], [ %i.ah, %.critedge ] ; 3 uses
  %.03566 = phi i64 [ %i.m, %bb.g ], [ %.1.lcssa, %.critedge ] ; 2 uses
  %.03665 = phi i64 [ 1, %bb.g ], [ %.137.lcssa, %.critedge ] ; 2 uses
  %i.n = load ptr, ptr %.03467, align 8, !tbaa !58 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 15                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = sub nuw nsw i64 16, %i.q
  %spec.select = select i1 %i.r, i64 0, i64 %i.s  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03467, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = icmp samesign uge i64 %spec.select, %i.v
  %.not5356 = icmp eq ptr %i.t, %i.k
  %or.cond57 = or i1 %.not5356, %i.x
  br i1 %or.cond57, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.060 = phi ptr [ %i.ae, %bb.i ], [ %i.t, %bb.h ] ; 2 uses
  %.159 = phi i64 [ %.2, %bb.i ], [ %.03566, %bb.h ] ; 2 uses
  %.13758 = phi i64 [ %.238, %bb.i ], [ %.03665, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %.not54 = icmp eq i64 %i.z, 11
  br i1 %.not54, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = and i64 %i.z, 3
  %.not55 = icmp eq i64 %i.aa, 1                  ; 2 uses
  %i.ab = and i64 %i.z, -8                        ; 2 uses
  %i.ac = zext i1 %.not55 to i64
  %.238 = add i64 %.13758, %i.ac                  ; 2 uses
  %i.ad = select i1 %.not55, i64 %i.ab, i64 0
  %.2 = add i64 %i.ad, %.159                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.060, i64 %i.ab ; 3 uses
  %i.af = icmp uge ptr %i.ae, %i.w
  %.not53 = icmp eq ptr %i.ae, %i.k
  %or.cond = or i1 %.not53, %i.af
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !111

.critedge:                                        ; preds = %.lr.ph, %bb.i, %bb.h
  %.137.lcssa = phi i64 [ %.03665, %bb.h ], [ %.238, %bb.i ], [ %.13758, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ %.03566, %bb.h ], [ %.2, %bb.i ], [ %.159, %.lr.ph ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03467, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %.not48 = icmp eq ptr %i.ah, null
  br i1 %.not48, label %bb.j, label %bb.h, !llvm.loop !112

bb.j:                                             ; preds = %.critedge
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %.not49 = icmp eq i64 %.137.lcssa, 0
  %.neg = mul i64 %.137.lcssa, -80
  %.neg50 = add i64 %.neg, 80
  %i.aj = select i1 %.not49, i64 0, i64 %.neg50
  %i.ak = sub i64 %i.aj, %.1.lcssa
  %.039 = add i64 %i.ak, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %spin_acquire_lock.exit
  %.140 = phi i64 [ %.039, %bb.j ], [ 0, %spin_acquire_lock.exit ]
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.am = and i32 %i.al, 2
  %.not51 = icmp eq i32 %i.am, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret i64 %.140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, -7) i64 @boost_cont_chunksize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = and i64 %i.b, -8
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @boost_cont_all_deallocated() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %.not = icmp eq i64 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @boost_cont_malloc_stats(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.boost_cont_malloc_stats_impl) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11, !noalias !117
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18, !noalias !117
  %i.c = and i32 %i.b, 2
  %.not38.i = icmp eq i32 %i.c, 0
  br i1 %.not38.i, label %spin_acquire_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4, !noalias !117
  %.not39.i = icmp eq i32 %i.d, 0
  br i1 %.not39.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.g, %.preheader.i.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19, !noalias !117
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.preheader.i
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4, !noalias !117
  %.not2.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i.i, label %spin_acquire_lock.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.preheader.i
  %i.g = add nuw nsw i32 %.0.i.i, 1               ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.i.backedge

bb.f:                                             ; preds = %.critedge.i.i
  %i.j = tail call i32 @sched_yield() #16, !noalias !117 ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !0

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34, !noalias !117 ; 3 uses
  %.not40.i = icmp eq ptr %i.k, null
  br i1 %.not40.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit.i
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51, !noalias !117
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50, !noalias !117 ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33, !noalias !117
  %.neg1.i = add i64 %i.m, -80
  %i.o = sub i64 %.neg1.i, %i.n
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %bb.g
  %.0319.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_gm_, i64 888), %bb.g ], [ %i.ai, %.critedge.i ] ; 3 uses
  %.0328.i = phi i64 [ %i.o, %bb.g ], [ %.1.lcssa.i, %.critedge.i ] ; 2 uses
  %i.p = load ptr, ptr %.0319.i, align 8, !tbaa !58, !noalias !117 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 15                         ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = sub nuw nsw i64 16, %i.s
  %spec.select.i = select i1 %i.t, i64 0, i64 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0319.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59, !noalias !117 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.x
  %i.z = icmp samesign uge i64 %spec.select.i, %i.x
  %.not442.i = icmp eq ptr %i.v, %i.k
  %or.cond3.i = or i1 %i.z, %.not442.i
  br i1 %or.cond3.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.05.i = phi ptr [ %i.af, %bb.i ], [ %i.v, %bb.h ] ; 2 uses
  %.14.i = phi i64 [ %.2.i, %bb.i ], [ %.0328.i, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28, !noalias !117 ; 3 uses
  %.not45.i = icmp eq i64 %i.ab, 11
  br i1 %.not45.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = and i64 %i.ab, 2
  %.not46.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %i.ab, -8                       ; 2 uses
  %i.ae = select i1 %.not46.i, i64 %i.ad, i64 0
  %.2.i = sub i64 %.14.i, %i.ae                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i, i64 %i.ad ; 3 uses
  %i.ag = icmp uge ptr %i.af, %i.y
  %.not44.i = icmp eq ptr %i.af, %i.k
  %or.cond.i = or i1 %.not44.i, %i.ag
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !115

.critedge.i:                                      ; preds = %bb.i, %.lr.ph.i, %bb.h
  %.1.lcssa.i = phi i64 [ %.0328.i, %bb.h ], [ %.14.i, %.lr.ph.i ], [ %.2.i, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0319.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60, !noalias !117 ; 2 uses
  %.not41.i = icmp eq ptr %i.ai, null
  br i1 %.not41.i, label %.loopexit.i, label %bb.h, !llvm.loop !116

.loopexit.i:                                      ; preds = %.critedge.i, %spin_acquire_lock.exit.i
  %.034.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.l, %.critedge.i ]
  %.033.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %i.m, %.critedge.i ]
  %.3.i = phi i64 [ 0, %spin_acquire_lock.exit.i ], [ %.1.lcssa.i, %.critedge.i ]
  store i64 %.034.i, ptr %0, align 8, !tbaa !119, !alias.scope !117
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.033.i, ptr %i.aj, align 8, !tbaa !120, !alias.scope !117
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.3.i, ptr %i.ak, align 8, !tbaa !121, !alias.scope !117
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18, !noalias !117
  %i.am = and i32 %i.al, 2
  %.not42.i = icmp eq i32 %i.am, 0
  br i1 %.not42.i, label %get_malloc_stats.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4, !noalias !117
  br label %get_malloc_stats.exit

get_malloc_stats.exit:                            ; preds = %.loopexit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @boost_cont_in_use_memory() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_trim(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  %.pr = load i64, ptr @mparams, align 8, !tbaa !11
  %.not.i = icmp eq i64 %.pr, 0
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @init_mparams()
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.c = and i32 %i.b, 2
  %.not2.i = icmp eq i32 %i.c, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.g, %.preheader.i.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.f, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !0

spin_acquire_lock.exit.i:                         ; preds = %bb.e, %bb.d, %.thread
  %i.k = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef %0)
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
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
define hidden noundef range(i32 0, 2) i32 @boost_cont_grow(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.f, %.preheader.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.i = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = and i64 %i.l, -8
  %i.n = icmp ult i64 %1, 23
  %i.o = add i64 %1, 23
  %i.p = and i64 %i.o, -16
  %i.q = select i1 %i.n, i64 32, i64 %i.p
  %i.r = icmp ult i64 %2, 23
  %i.s = add i64 %2, 23
  %i.t = and i64 %i.s, -16
  %i.u = select i1 %i.r, i64 32, i64 %i.t
  %i.v = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.j, i64 noundef %i.q, i64 noundef %i.u) ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.x = and i32 %i.w, 2
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %spin_acquire_lock.exit
  %i.y = icmp ne ptr %i.v, null                   ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.aa = and i64 %i.z, -8
  %i.ab = and i64 %i.z, 3
  %i.ac = icmp eq i64 %i.ab, 0
  %.neg = select i1 %i.ac, i64 -16, i64 -8
  %i.ad = add i64 %.neg, %i.aa
  store i64 %i.ad, ptr %3, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = and i64 %i.af, -8
  %i.ah = sub i64 %i.ag, %i.m
  %i.ai = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.aj = add i64 %i.ah, %i.ai
  store i64 %i.aj, ptr @s_allocated_memory, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ak = zext i1 %i.y to i32
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_realloc_chunk_with_min(ptr noundef %0, i64 noundef range(i64 0, -15) %1, i64 noundef range(i64 0, -15) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %i.c = and i64 %i.b, -8                         ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 20 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 9 uses
  %.not = icmp ult ptr %0, %i.e
  %i.f = and i64 %i.b, 3                          ; 2 uses
  %.not274 = icmp eq i64 %i.f, 1
  %.not275 = icmp eq i64 %i.c, 0
  %i.g = or i1 %.not274, %.not275
  %or.cond302 = select i1 %.not, i1 true, i1 %i.g, !prof !64
  br i1 %or.cond302, label %.critedge304, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 5 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %.critedge304, !prof !27

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
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  %i.p = shl i64 %i.o, 1
  %.not43.i = icmp ugt i64 %i.n, %i.p
  br i1 %.not43.i, label %bb.g, label %mmap_resize.exit319

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load i64, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.r = add i64 %i.c, 32
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
  %i.u = add i64 %2, 62
  %i.v = add i64 %i.u, %i.t
  %i.w = sub i64 0, %i.t
  %i.x = and i64 %i.v, %i.w                       ; 4 uses
  %i.y = sub i64 0, %i.q
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.z, i64 noundef %i.s, i64 noundef %i.x, i32 noundef 0) #16 ; 5 uses
  %.not44.i = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i, label %.mmap_resize.exit_crit_edge, label %bb.h

.mmap_resize.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !28
  %.pre3 = and i64 %.pre, -8
  br label %mmap_resize.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q ; 4 uses
  %i.ac = sub i64 %i.x, %i.q
  %i.ad = add i64 %i.ac, -32                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 11, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.x
  %i.ai = getelementptr i8, ptr %i.ah, i64 -16
  store i64 0, ptr %i.ai, align 8, !tbaa !28
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %i.ak = icmp ult ptr %i.aa, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = sub i64 %i.x, %i.s
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.an = add i64 %i.am, %i.al                    ; 3 uses
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %mmap_resize.exit319

bb.k:                                             ; preds = %bb.j
  store i64 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
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
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  %i.au = shl i64 %i.at, 1
  %.not43.i316 = icmp ugt i64 %i.as, %i.au
  br i1 %.not43.i316, label %bb.n, label %mmap_resize.exit319

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = load i64, ptr %0, align 8, !tbaa !30    ; 4 uses
  %i.aw = add i64 %.pre-phi, 32
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
  %i.az = add i64 %1, 62
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = sub i64 0, %i.ay
  %i.bc = and i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = sub i64 0, %i.av
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd
  %i.bf = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.be, i64 noundef %i.ax, i64 noundef %i.bc, i32 noundef 0) #16 ; 5 uses
  %.not44.i318 = icmp eq ptr %i.bf, inttoptr (i64 -1 to ptr)
  br i1 %.not44.i318, label %mmap_resize.exit319, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.av ; 4 uses
  %i.bh = sub i64 %i.bc, %i.av
  %i.bi = add i64 %i.bh, -32                      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 11, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.bc
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  store i64 0, ptr %i.bn, align 8, !tbaa !28
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %i.bp = icmp ult ptr %i.bf, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = sub i64 %i.bc, %i.ax
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.bs = add i64 %i.br, %i.bq                    ; 3 uses
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.r, label %mmap_resize.exit319

bb.r:                                             ; preds = %bb.q
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  br label %mmap_resize.exit319

bb.s:                                             ; preds = %bb.c
  %.not276 = icmp ult i64 %i.c, %1
  br i1 %.not276, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %2) ; 3 uses
  %i.bw = sub nuw i64 %i.c, %i.bv                 ; 3 uses
  %i.bx = icmp ugt i64 %i.bw, 31
  br i1 %i.bx, label %bb.u, label %mmap_resize.exit319

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 2 uses
  %i.bz = and i64 %i.b, 1
  %i.ca = or i64 %i.bz, %i.bv
  %i.cb = or i64 %i.ca, 2
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = or i64 %i.bw, 3
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !28
  %i.ce = load i64, ptr %i.h, align 8, !tbaa !28
  %i.cf = or i64 %i.ce, 1
  store i64 %i.cf, ptr %i.h, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.by, i64 noundef %i.bw)
  br label %mmap_resize.exit319

bb.v:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  %i.ch = icmp eq ptr %i.d, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  %i.cj = add i64 %i.ci, %i.c                     ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %1
  br i1 %i.ck, label %bb.x, label %mmap_resize.exit319

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp ugt i64 %i.cj, %2
  %i.cm = add i64 %i.cj, -16
  %i.cn = select i1 %i.cl, i64 %2, i64 %i.cm      ; 3 uses
  %i.co = sub i64 %i.cj, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn ; 2 uses
  %i.cq = and i64 %i.b, 1
  %i.cr = or i64 %i.cq, %i.cn
  %i.cs = or i64 %i.cr, 2
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = or i64 %i.co, 1
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !28
  store ptr %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 40), align 8, !tbaa !34
  store i64 %i.co, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 16), align 8, !tbaa !33
  br label %mmap_resize.exit319

bb.y:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.cw = icmp eq ptr %i.d, %i.cv
  br i1 %i.cw, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  %i.cy = add i64 %i.cx, %i.c                     ; 6 uses
  %.not297 = icmp ult i64 %i.cy, %1
  br i1 %.not297, label %mmap_resize.exit319, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %2) ; 3 uses
  %i.da = sub nuw i64 %i.cy, %i.cz                ; 4 uses
  %i.db = icmp ugt i64 %i.da, 31
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy ; 2 uses
  %i.de = and i64 %i.b, 1
  %i.df = or i64 %i.de, %i.cz
  %i.dg = or i64 %i.df, 2
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = or i64 %i.da, 1
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !28
  store i64 %i.da, ptr %i.dd, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !28
  %i.dl = and i64 %i.dk, -2
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dm = and i64 %i.b, 1
  %i.dn = or i64 %i.dm, %i.cy
  %i.do = or i64 %i.dn, 2
  store i64 %i.do, ptr %i.a, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !28
  %i.ds = or i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %storemerge299 = phi i64 [ 0, %bb.ac ], [ %i.da, %bb.ab ]
  %storemerge = phi ptr [ null, %bb.ac ], [ %i.dc, %bb.ab ]
  store i64 %storemerge299, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  store ptr %storemerge, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  br label %mmap_resize.exit319

bb.ae:                                            ; preds = %bb.y
  %i.dt = and i64 %i.i, 2
  %.not277 = icmp eq i64 %i.dt, 0
  br i1 %.not277, label %bb.af, label %mmap_resize.exit319

bb.af:                                            ; preds = %bb.ae
  %i.du = and i64 %i.i, -8
  %i.dv = add i64 %i.du, %i.c                     ; 6 uses
  %.not278 = icmp ult i64 %i.dv, %1
  br i1 %.not278, label %mmap_resize.exit319, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 %2) ; 3 uses
  %i.dx = sub nuw i64 %i.dv, %i.dw                ; 3 uses
  %i.dy = icmp ult i64 %i.i, 256
  br i1 %i.dy, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.dz = lshr i64 %i.i, 3                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !23 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 6 uses
  %i.ee = trunc nuw nsw i64 %i.dz to i32
  %.idx = shl nuw nsw i64 %i.dz, 4
  %i.ef = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx ; 2 uses
  %i.eg = icmp eq ptr %i.eb, %i.ef
  br i1 %i.eg, label %.critedge306, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not295 = icmp ult ptr %i.eb, %i.e
  br i1 %.not295, label %.critedge308, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26
  %i.ej = icmp eq ptr %i.ei, %i.d
  br i1 %i.ej, label %.critedge306, label %.critedge308, !prof !27

.critedge306:                                     ; preds = %bb.ah, %bb.aj
  %i.ek = icmp eq ptr %i.ed, %i.eb
  br i1 %i.ek, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge306
  %i.el = shl nuw i32 1, %i.ee
  %i.em = xor i32 %i.el, -1
  %i.en = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.eo = and i32 %i.en, %i.em
  store i32 %i.eo, ptr @_gm_, align 8, !tbaa !21
  br label %bb.bs

bb.al:                                            ; preds = %.critedge306
  %i.ep = icmp eq ptr %i.ed, %i.ef
  br i1 %i.ep, label %.critedge310, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not296 = icmp ult ptr %i.ed, %i.e
  br i1 %.not296, label %.critedge312, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !23
  %i.es = icmp eq ptr %i.er, %i.d
  br i1 %i.es, label %.critedge310, label %.critedge312, !prof !27

.critedge310:                                     ; preds = %bb.al, %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.ed, ptr %i.et, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.eb, ptr %i.eu, align 8, !tbaa !23
  br label %bb.bs

.critedge312:                                     ; preds = %bb.am, %bb.an
  tail call void @abort() #17
  unreachable

.critedge308:                                     ; preds = %bb.ai, %bb.aj
  tail call void @abort() #17
  unreachable

bb.ao:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !45 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 4 uses
  %.not280 = icmp eq ptr %i.ey, %i.d
  br i1 %.not280, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 3 uses
  %.not286 = icmp ult ptr %i.fa, %i.e
  br i1 %.not286, label %.critedge314, label %bb.aq, !prof !25

bb.aq:                                            ; preds = %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.fd = icmp eq ptr %i.fc, %i.d
  br i1 %i.fd, label %bb.ar, label %.critedge314, !prof !27

bb.ar:                                            ; preds = %bb.aq
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47
  %i.fg = icmp eq ptr %i.ff, %i.d
  br i1 %i.fg, label %bb.as, label %.critedge314, !prof !27

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !46
  store ptr %i.fa, ptr %i.fe, align 8, !tbaa !47
  br label %bb.az

.critedge314:                                     ; preds = %bb.aq, %bb.ap, %bb.ar
  tail call void @abort() #17
  unreachable

bb.at:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %.not281 = icmp eq ptr %i.fi, null
  br i1 %.not281, label %bb.au, label %.critedge.preheader

bb.au:                                            ; preds = %bb.at
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42 ; 2 uses
  %.not282 = icmp eq ptr %i.fk, null
  br i1 %.not282, label %bb.az, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.au, %bb.at
  %.1246.ph = phi ptr [ %i.fi, %bb.at ], [ %i.fk, %bb.au ]
  %.1244.ph = phi ptr [ %i.fh, %bb.at ], [ %i.fj, %bb.au ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1246 = phi ptr [ %.1246.ph, %.critedge.preheader ], [ %.1246.be, %.critedge.backedge ] ; 3 uses
  %.1244 = phi ptr [ %.1244.ph, %.critedge.preheader ], [ %.1244.be, %.critedge.backedge ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1246, i64 40 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !42 ; 2 uses
  %.not283 = icmp eq ptr %i.fm, null
  br i1 %.not283, label %bb.av, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.av
  %.1246.be = phi ptr [ %i.fm, %.critedge ], [ %i.fo, %bb.av ]
  %.1244.be = phi ptr [ %i.fl, %.critedge ], [ %i.fn, %bb.av ]
  br label %.critedge, !llvm.loop !122

bb.av:                                            ; preds = %.critedge
  %i.fn = getelementptr inbounds nuw i8, ptr %.1246, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 2 uses
  %.not284 = icmp eq ptr %i.fo, null
  br i1 %.not284, label %bb.aw, label %.critedge.backedge

bb.aw:                                            ; preds = %bb.av
  %.not285 = icmp ult ptr %.1244, %i.e
  br i1 %.not285, label %bb.ay, label %bb.ax, !prof !25

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %.1244, align 8, !tbaa !42
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  tail call void @abort() #17
  unreachable

bb.az:                                            ; preds = %bb.au, %bb.ax, %bb.as
  %.3 = phi ptr [ %i.ey, %bb.as ], [ %.1246, %bb.ax ], [ null, %bb.au ] ; 11 uses
  %.not287 = icmp eq ptr %i.ew, null
  br i1 %.not287, label %bb.bs, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !48 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !42
  %i.fu = icmp eq ptr %i.d, %i.ft
  br i1 %i.fu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %.3, ptr %i.fs, align 8, !tbaa !42
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread, label %bb.bi

.thread:                                          ; preds = %bb.bb
  %i.fv = shl nuw i32 1, %i.fq
  %i.fw = xor i32 %i.fv, -1
  %i.fx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.fy = and i32 %i.fx, %i.fw
  store i32 %i.fy, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %bb.bs

bb.bc:                                            ; preds = %bb.ba
  %.not288 = icmp ult ptr %i.ew, %i.e
  br i1 %.not288, label %bb.bg, label %bb.bd, !prof !25

bb.bd:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !42
  %i.gb = icmp eq ptr %i.ga, %i.d
  br i1 %i.gb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %.3, ptr %i.fz, align 8, !tbaa !42
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr %.3, ptr %i.gc, align 8, !tbaa !42
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  tail call void @abort() #17
  unreachable

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %.not289 = icmp eq ptr %.3, null
  br i1 %.not289, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bb, %bb.bh
  %.not290 = icmp ult ptr %.3, %i.e
  br i1 %.not290, label %bb.br, label %bb.bj, !prof !25

bb.bj:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.ew, ptr %i.gd, align 8, !tbaa !45
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !42 ; 4 uses
  %.not291 = icmp eq ptr %i.gf, null
  br i1 %.not291, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not292 = icmp ult ptr %i.gf, %i.e
  br i1 %.not292, label %bb.bm, label %bb.bl, !prof !25

bb.bl:                                            ; preds = %bb.bk
  %i.gg = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !42
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store ptr %.3, ptr %i.gh, align 8, !tbaa !45
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  tail call void @abort() #17
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !42 ; 4 uses
  %.not293 = icmp eq ptr %i.gj, null
  br i1 %.not293, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not294 = icmp ult ptr %i.gj, %i.e
  br i1 %.not294, label %bb.bq, label %bb.bp, !prof !25

bb.bp:                                            ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !42
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store ptr %.3, ptr %i.gl, align 8, !tbaa !45
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  tail call void @abort() #17
  unreachable

bb.br:                                            ; preds = %bb.bi
  tail call void @abort() #17
  unreachable

bb.bs:                                            ; preds = %.thread, %bb.az, %bb.bn, %bb.bp, %bb.bh, %.critedge310, %bb.ak
  %i.gm = icmp ult i64 %i.dx, 32
  br i1 %i.gm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gn = and i64 %i.b, 1
  %i.go = or disjoint i64 %i.gn, %i.dv
  %i.gp = or disjoint i64 %i.go, 2
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !28
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !28
  %i.gt = or i64 %i.gs, 1
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !28
  br label %mmap_resize.exit319

bb.bu:                                            ; preds = %bb.bs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw ; 2 uses
  %i.gv = and i64 %i.b, 1
  %i.gw = or i64 %i.gv, %i.dw
  %i.gx = or i64 %i.gw, 2
  store i64 %i.gx, ptr %i.a, align 8, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gz = or i64 %i.dx, 3
  store i64 %i.gz, ptr %i.gy, align 8, !tbaa !28
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !28
  %i.hd = or i64 %i.hc, 1
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !28
  tail call fastcc void @dispose_chunk(ptr noundef nonnull @_gm_, ptr noundef %i.gu, i64 noundef %i.dx)
  br label %mmap_resize.exit319

.critedge304:                                     ; preds = %bb.a, %bb.b
  tail call void @abort() #17
  unreachable

mmap_resize.exit319:                              ; preds = %bb.k, %bb.j, %bb.f, %bb.r, %bb.q, %bb.n, %bb.m, %mmap_resize.exit, %bb.af, %bb.bu, %bb.bt, %bb.z, %bb.ad, %bb.t, %bb.u, %bb.x, %bb.w, %bb.ae
  %.2 = phi ptr [ null, %bb.n ], [ %0, %bb.bt ], [ null, %bb.z ], [ %0, %bb.x ], [ null, %bb.w ], [ %0, %bb.t ], [ null, %bb.ae ], [ %0, %bb.u ], [ %0, %bb.ad ], [ null, %bb.af ], [ %0, %bb.bu ], [ %0, %bb.m ], [ null, %mmap_resize.exit ], [ %i.bg, %bb.q ], [ %i.bg, %bb.r ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ], [ %0, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_shrink(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.f, %.preheader.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.i = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !0

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = and i64 %i.l, -8
  %i.n = and i64 %i.l, 3
  %i.o = icmp eq i64 %i.n, 0
  %.neg.i = select i1 %i.o, i64 -16, i64 -8
  %i.p = add i64 %.neg.i, %i.m
  store i64 %i.p, ptr %3, align 8, !tbaa !40
  %i.q = icmp ugt i64 %1, -129
  %i.r = icmp ugt i64 %2, -129
  %or.cond.i = or i1 %i.q, %i.r
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %spin_acquire_lock.exit
  %i.s = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.s, align 4, !tbaa !19
  br label %internal_shrink.exit

bb.f:                                             ; preds = %spin_acquire_lock.exit
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 23) ; 2 uses
  %i.t = icmp ugt i64 %spec.store.select.i, %2
  br i1 %i.t, label %internal_shrink.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !28   ; 3 uses
  %i.v = and i64 %i.u, -8                         ; 8 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not.i14 = icmp ult ptr %i.j, %i.w
  %i.x = and i64 %i.u, 3                          ; 2 uses
  %.not67.i = icmp eq i64 %i.x, 1
  %.not68.i = icmp eq i64 %i.v, 0
  %i.y = or i1 %.not67.i, %.not68.i
  %or.cond72.i = select i1 %.not.i14, i1 true, i1 %i.y, !prof !64
  br i1 %or.cond72.i, label %.critedge.i15, label %bb.h, !prof !65

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %.critedge.i15, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.ad = add nuw i64 %spec.store.select.i, 23
  %i.ae = and i64 %i.ad, -16                      ; 6 uses
  %i.af = icmp ugt i64 %i.ae, %i.v
  br i1 %i.af, label %internal_shrink.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %i.x, 0
  br i1 %i.ag, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  store i64 %i.v, ptr %3, align 8, !tbaa !40
  %i.ah = icmp ult i64 %2, 233
  br i1 %i.ah, label %internal_shrink.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i64 @llvm.umax.i64(i64 range(i64 16, -105) %i.ae, i64 256) ; 3 uses
  %.not.i.not.i = icmp ugt i64 %i.v, %i.ai
  br i1 %.not.i.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = sub nuw i64 %i.v, %i.ai
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  %i.al = shl i64 %i.ak, 1
  %.not45.i.i = icmp ugt i64 %i.aj, %i.al
  br i1 %.not45.i.i, label %bb.n, label %internal_shrink.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = load i64, ptr %i.j, align 8, !tbaa !30  ; 4 uses
  %i.an = add i64 %i.v, 32
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36 ; 2 uses
  %i.aq = add nuw i64 %i.ai, 62
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = sub i64 0, %i.ap
  %i.at = and i64 %i.ar, %i.as                    ; 5 uses
  store i64 %i.at, ptr %3, align 8, !tbaa !40
  %.not46.i.i = icmp eq i32 %4, 0
  br i1 %.not46.i.i, label %bb.o, label %internal_shrink.exit

bb.o:                                             ; preds = %bb.n
  %i.au = sub i64 0, %i.am
  %i.av = getelementptr inbounds i8, ptr %i.j, i64 %i.au
  %i.aw = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.av, i64 noundef %i.ao, i64 noundef %i.at, i32 noundef 0) #16 ; 5 uses
  %.not47.i.i = icmp eq ptr %i.aw, null
  br i1 %.not47.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @abort() #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.am ; 2 uses
  %i.ay = sub i64 %i.at, %i.am
  %i.az = add i64 %i.ay, -32                      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 11, ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.at
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  store i64 0, ptr %i.be, align 8, !tbaa !28
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %i.bg = icmp ult ptr %i.aw, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = sub i64 %i.at, %i.ao
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.bj = add i64 %i.bi, %i.bh                    ; 3 uses
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 856), align 8, !tbaa !50
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.t, label %internal_shrink.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 864), align 8, !tbaa !51
  br label %internal_shrink.exit

bb.u:                                             ; preds = %bb.j
  %i.bm = sub nuw i64 %i.v, %i.ae                 ; 3 uses
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
  store i64 %i.br, ptr %i.k, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = or disjoint i64 %i.bm, 3
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !28
  %i.bu = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.bv = or i64 %i.bu, 1
  store i64 %i.bv, ptr %i.aa, align 8, !tbaa !28
  %i.bw = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.bx = sub i64 %i.bw, %i.bm
  store i64 %i.bx, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %i.by)
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !28
  %.pre3.i = and i64 %.pre.i, 3
  %i.bz = icmp eq i64 %.pre3.i, 0
  %i.ca = select i1 %i.bz, i64 -16, i64 -8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi.i = phi i64 [ %i.ca, %bb.w ], [ -8, %bb.v ]
  %i.cb = add i64 %.pre-phi.i, %i.ae
  store i64 %i.cb, ptr %3, align 8, !tbaa !40
  br label %internal_shrink.exit

.critedge.i15:                                    ; preds = %bb.h, %bb.g
  tail call void @abort() #17
  unreachable

internal_shrink.exit:                             ; preds = %bb.e, %bb.f, %bb.i, %bb.k, %bb.m, %bb.n, %bb.s, %bb.t, %bb.u, %bb.x
  %i.cc = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ], [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.x ], [ 1, %bb.n ]
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
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
define hidden ptr @boost_cont_alloc(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i32 } @boost_cont_allocation_command(i32 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @boost_cont_multidealloc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
  %i.b = and i32 %i.a, 2
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %spin_acquire_lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not11.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i, label %spin_acquire_lock.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i.backedge
  %.0.i.i = phi i32 [ %i.f, %.preheader.i.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !19
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
  %i.i = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.d, %.critedge.i.i
  br label %.preheader.i, !llvm.loop !0

spin_acquire_lock.exit.i:                         ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %.not121.i = icmp eq ptr %i.k, null
  br i1 %.not121.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %spin_acquire_lock.exit.i, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.k, %spin_acquire_lock.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.0.02.i, align 8, !tbaa !71 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.02.i, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = and i64 %i.n, -8
  %i.p = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.q = sub i64 %i.p, %i.o
  store i64 %i.q, ptr @s_allocated_memory, align 8, !tbaa !40
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.0.02.i)
  %.not12.i = icmp eq ptr %i.l, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %.lr.ph.i, %spin_acquire_lock.exit.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !18
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
define hidden noundef i32 @boost_cont_malloc_check() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 8 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = and i64 %i.c, -8                         ; 4 uses
  %i.e = and i64 %i.c, 3
  %i.f = icmp eq i64 %i.e, 0
  %.neg = select i1 %i.f, i64 -16, i64 -8
  %i.g = add i64 %.neg, %i.d                      ; 2 uses
  store i64 %i.g, ptr %4, align 8, !tbaa !40
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %bb.b, label %bb.eb

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not413 = icmp ult ptr %i.a, %i.h
  br i1 %.not413, label %.critedge474, label %bb.c, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.j = and i64 %i.i, 3                          ; 2 uses
  %.not5 = icmp eq i64 %i.j, 1
  br i1 %.not5, label %.critedge474, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %0, 2
  %.not414 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %.not414, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult i64 %2, 23
  %i.m = add i64 %2, 23
  %i.n = and i64 %i.m, -16
  %i.o = select i1 %i.l, i64 32, i64 %i.n
  %i.p = icmp ult i64 %3, 23
  %i.q = add i64 %3, 23
  %i.r = and i64 %i.q, -16
  %i.s = select i1 %i.p, i64 32, i64 %i.r
  %i.t = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.a, i64 noundef %i.o, i64 noundef %i.s)
  %.not417 = icmp eq ptr %i.t, null
  br i1 %.not417, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.v = and i64 %i.u, -8
  %i.w = and i64 %i.u, 3
  %i.x = icmp eq i64 %i.w, 0
  %.neg472 = select i1 %i.x, i64 -16, i64 -8
  %i.y = add i64 %.neg472, %i.v
  store i64 %i.y, ptr %4, align 8, !tbaa !40
  %i.z = load i64, ptr %i.b, align 8, !tbaa !28
  %i.aa = and i64 %i.z, -8
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.ad = add i64 %i.ab, %i.ac
  store i64 %i.ad, ptr @s_allocated_memory, align 8, !tbaa !40
  br label %bb.eb

bb.g:                                             ; preds = %bb.d
  %i.ae = and i64 %i.i, -8
  %i.af = icmp eq i64 %i.j, 0
  %.neg415 = select i1 %i.af, i64 -16, i64 -8
  %i.ag = add i64 %.neg415, %i.ae                 ; 2 uses
  store i64 %i.ag, ptr %4, align 8, !tbaa !40
  %.not416 = icmp ult i64 %i.ag, %3
  br i1 %.not416, label %bb.h, label %bb.eb

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ah = and i32 %0, 4
  %.not418 = icmp eq i32 %i.ah, 0
  br i1 %.not418, label %bb.eb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !28
  %i.aj = and i64 %i.ai, 1
  %.not419 = icmp eq i64 %i.aj, 0
  br i1 %.not419, label %bb.j, label %bb.eb

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !30  ; 12 uses
  %i.al = and i64 %i.ak, 1
  %.not420 = icmp eq i64 %i.al, 0
  br i1 %.not420, label %bb.k, label %bb.eb

bb.k:                                             ; preds = %bb.j
  %i.am = sub i64 0, %i.ak
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %i.am ; 64 uses
  %i.ao = load i64, ptr %4, align 8, !tbaa !40    ; 12 uses
  %.not421 = icmp eq i32 %6, 0
  %i.ap = select i1 %.not421, i64 %2, i64 %3      ; 6 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %5, i64 16) ; 2 uses
  %spec.select103.i = tail call i64 @llvm.umax.i64(i64 %5, i64 16) ; 5 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %5)
  %i.ar = icmp samesign ult i64 %i.aq, 2
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.as = add i64 %5, -1
  %i.at = and i64 %i.ap, %i.as
  %.not102.i = icmp eq i64 %i.at, 0
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @abort() #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.au = sub i64 0, %5
  %i.av = and i64 %i.ao, %i.au
  %i.aw = xor i64 %i.av, -1
  %i.ax = add i64 %i.ap, %i.aw
  %i.ay = sub i64 0, %spec.select103.i
  %i.az = and i64 %i.ax, %i.ay
  %i.ba = add i64 %i.az, %spec.select103.i
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.o:                                             ; preds = %bb.k
  %i.bb = and i64 %5, 15
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = urem i64 %i.ao, %5
  %.neg101.i = sub i64 %i.ap, %i.ao
  %i.be = add i64 %.neg101.i, %i.bd
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = and i64 %5, 7
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = shl i64 %5, 1
  %i.bi = urem i64 %i.ao, %5
  %.neg99.i = sub i64 %i.bi, %i.ao
  %i.bj = add i64 %.neg99.i, %i.ap                ; 2 uses
  %i.bk = and i64 %i.bj, 15
  %.not100.i = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not100.i, i64 0, i64 %5
  %spec.select104.i = add i64 %i.bl, %i.bj
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.s:                                             ; preds = %bb.q
  %i.bm = and i64 %5, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %.preheader.i

bb.t:                                             ; preds = %bb.s
  %i.bo = shl i64 %5, 2                           ; 3 uses
  %i.bp = urem i64 %i.ao, %5
  %.neg96.i = sub i64 %i.bp, %i.ao
  %i.bq = add i64 %.neg96.i, %i.ap                ; 4 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = and i64 %i.br, 3                        ; 3 uses
  %.not97.i = icmp eq i64 %i.bs, 0
  br i1 %.not97.i, label %calculate_lcm_and_needs_backwards_lcmed.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = and i64 %5, 8
  %.not98.i = icmp eq i64 %i.bt, 0
  br i1 %.not98.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = mul i64 %i.bs, %5
  %i.bv = add i64 %i.bu, %i.bq
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

bb.w:                                             ; preds = %bb.u
  %i.bw = sub nuw nsw i64 4, %i.bs
  %i.bx = mul i64 %i.bw, %5
  %i.by = add i64 %i.bx, %i.bq
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

.preheader.i:                                     ; preds = %bb.s, %.preheader.i
  %.090.i = phi i64 [ %.089.i, %.preheader.i ], [ %spec.select103.i, %bb.s ]
  %.089.i = phi i64 [ %i.bz, %.preheader.i ], [ %spec.select.i, %bb.s ] ; 3 uses
  %i.bz = urem i64 %.090.i, %.089.i               ; 2 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.x, label %.preheader.i, !llvm.loop !124

bb.x:                                             ; preds = %.preheader.i
  %i.ca = udiv i64 %spec.select103.i, %.089.i
  %i.cb = mul i64 %i.ca, %spec.select.i           ; 3 uses
  %i.cc = urem i64 %i.ao, %5
  %.neg.i = xor i64 %i.ao, -1
  %i.cd = add i64 %i.ap, %.neg.i
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = udiv i64 %i.ce, %i.cb
  %i.cg = add i64 %i.cf, 1
  %i.ch = mul i64 %i.cg, %i.cb
  br label %calculate_lcm_and_needs_backwards_lcmed.exit

calculate_lcm_and_needs_backwards_lcmed.exit:     ; preds = %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.w, %bb.x
  %.sink106.i = phi i64 [ %i.cb, %bb.x ], [ %spec.select103.i, %bb.n ], [ %i.bh, %bb.r ], [ %5, %bb.p ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ], [ %i.bo, %bb.t ]
  %.sink.i = phi i64 [ %i.ch, %bb.x ], [ %i.ba, %bb.n ], [ %spec.select104.i, %bb.r ], [ %i.be, %bb.p ], [ %i.bv, %bb.v ], [ %i.by, %bb.w ], [ %i.bq, %bb.t ] ; 5 uses
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not422 = icmp ult ptr %i.an, %i.ci
  br i1 %.not422, label %bb.y, label %bb.z, !prof !25

bb.y:                                             ; preds = %calculate_lcm_and_needs_backwards_lcmed.exit
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %calculate_lcm_and_needs_backwards_lcmed.exit
  %i.cj = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.cj, label %bb.eb, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not414, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = icmp ult i64 %i.ao, 23
  %i.cl = add i64 %i.ao, 23
  %i.cm = and i64 %i.cl, -16
  %i.cn = select i1 %i.ck, i64 32, i64 %i.cm      ; 2 uses
  %i.co = tail call fastcc ptr @try_realloc_chunk_with_min(ptr noundef nonnull %i.a, i64 noundef %i.cn, i64 noundef %i.cn) ; 0 uses
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.cq = and i64 %i.cp, -8
  %i.cr = and i64 %i.cp, 3
  %i.cs = icmp eq i64 %i.cr, 0
  %.neg423 = select i1 %i.cs, i64 -16, i64 -8
  %i.ct = add i64 %.neg423, %i.cq                 ; 2 uses
  store i64 %i.ct, ptr %4, align 8, !tbaa !40
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cv = and i64 %i.cu, -8                       ; 2 uses
  %i.cw = sub i64 %i.cv, %i.d
  %i.cx = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.cy = add i64 %i.cw, %i.cx
  store i64 %i.cy, ptr @s_allocated_memory, align 8, !tbaa !40
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = phi i64 [ %i.ct, %bb.ab ], [ %i.ao, %bb.aa ]
  %.0377 = phi i64 [ %i.cv, %bb.ab ], [ %i.d, %bb.aa ] ; 6 uses
  %.0375 = add i64 %.0377, %i.ak
  %i.da = add i64 %.sink.i, 32
  %.not424 = icmp ult i64 %i.ak, %i.da
  br i1 %.not424, label %bb.cl, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = sub i64 0, %.sink.i
  %i.dc = getelementptr inbounds i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dd = add i64 %.0377, %.sink.i
  %i.de = sub nuw i64 %i.ak, %.sink.i             ; 10 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %i.dg = icmp eq ptr %i.an, %i.df
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  br label %bb.ck

bb.af:                                            ; preds = %bb.ad
  %i.dh = icmp ult i64 %i.ak, 256
  br i1 %i.dh, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.di = lshr i64 %i.ak, 3                       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26 ; 6 uses
  %i.dn = trunc nuw nsw i64 %i.di to i32
  %.idx460 = shl nuw nsw i64 %i.di, 4
  %i.do = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx460 ; 2 uses
  %i.dp = icmp eq ptr %i.dk, %i.do
  br i1 %i.dp, label %.critedge476, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not461 = icmp ult ptr %i.dk, %i.dq
  br i1 %.not461, label %.critedge478, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !26
  %i.dt = icmp eq ptr %i.ds, %i.an
  br i1 %i.dt, label %.critedge476, label %.critedge478, !prof !27

.critedge476:                                     ; preds = %bb.ag, %bb.ai
  %i.du = icmp eq ptr %i.dm, %i.dk
  br i1 %i.du, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge476
  %i.dv = shl nuw i32 1, %i.dn
  %i.dw = xor i32 %i.dv, -1
  %i.dx = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.dy = and i32 %i.dx, %i.dw
  store i32 %i.dy, ptr @_gm_, align 8, !tbaa !21
  br label %bb.br

bb.ak:                                            ; preds = %.critedge476
  %i.dz = icmp eq ptr %i.dm, %i.do
  br i1 %i.dz, label %.critedge480, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not462 = icmp ult ptr %i.dm, %i.ea
  br i1 %.not462, label %.critedge482, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !23
  %i.ed = icmp eq ptr %i.ec, %i.an
  br i1 %i.ed, label %.critedge480, label %.critedge482, !prof !27

.critedge480:                                     ; preds = %bb.ak, %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.dm, ptr %i.ee, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dk, ptr %i.ef, align 8, !tbaa !23
  br label %bb.br

.critedge482:                                     ; preds = %bb.al, %bb.am
  tail call void @abort() #17
  unreachable

.critedge478:                                     ; preds = %bb.ah, %bb.ai
  tail call void @abort() #17
  unreachable

bb.an:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !46 ; 4 uses
  %.not445 = icmp eq ptr %i.ej, %i.an
  br i1 %.not445, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !47 ; 3 uses
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not451 = icmp ult ptr %i.el, %i.em
  br i1 %.not451, label %.critedge484, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !46
  %i.ep = icmp eq ptr %i.eo, %i.an
  br i1 %i.ep, label %bb.aq, label %.critedge484, !prof !27

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.es = icmp eq ptr %i.er, %i.an
  br i1 %i.es, label %bb.ar, label %.critedge484, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ej, ptr %i.en, align 8, !tbaa !46
  store ptr %i.el, ptr %i.eq, align 8, !tbaa !47
  br label %bb.ay

.critedge484:                                     ; preds = %bb.ap, %bb.ao, %bb.aq
  tail call void @abort() #17
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !42 ; 2 uses
  %.not446 = icmp eq ptr %i.eu, null
  br i1 %.not446, label %bb.at, label %.critedge.preheader

bb.at:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !42 ; 2 uses
  %.not447 = icmp eq ptr %i.ew, null
  br i1 %.not447, label %bb.ay, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.at, %bb.as
  %.1372.ph = phi ptr [ %i.eu, %bb.as ], [ %i.ew, %bb.at ]
  %.1370.ph = phi ptr [ %i.et, %bb.as ], [ %i.ev, %bb.at ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1372 = phi ptr [ %.1372.ph, %.critedge.preheader ], [ %.1372.be, %.critedge.backedge ] ; 3 uses
  %.1370 = phi ptr [ %.1370.ph, %.critedge.preheader ], [ %.1370.be, %.critedge.backedge ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1372, i64 40 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !42 ; 2 uses
  %.not448 = icmp eq ptr %i.ey, null
  br i1 %.not448, label %bb.au, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.au
  %.1372.be = phi ptr [ %i.ey, %.critedge ], [ %i.fa, %bb.au ]
  %.1370.be = phi ptr [ %i.ex, %.critedge ], [ %i.ez, %bb.au ]
  br label %.critedge, !llvm.loop !125

bb.au:                                            ; preds = %.critedge
  %i.ez = getelementptr inbounds nuw i8, ptr %.1372, i64 32 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 2 uses
  %.not449 = icmp eq ptr %i.fa, null
  br i1 %.not449, label %bb.av, label %.critedge.backedge

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not450 = icmp ult ptr %.1370, %i.fb
  br i1 %.not450, label %bb.ax, label %bb.aw, !prof !25

bb.aw:                                            ; preds = %bb.av
  store ptr null, ptr %.1370, align 8, !tbaa !42
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  tail call void @abort() #17
  unreachable

bb.ay:                                            ; preds = %bb.at, %bb.aw, %bb.ar
  %.3374 = phi ptr [ %i.ej, %bb.ar ], [ %.1372, %bb.aw ], [ null, %bb.at ] ; 11 uses
  %.not452 = icmp eq ptr %i.eh, null
  br i1 %.not452, label %bb.br, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fc = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !48 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !42
  %i.fh = icmp eq ptr %i.an, %i.fg
  br i1 %i.fh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store ptr %.3374, ptr %i.ff, align 8, !tbaa !42
  %cond = icmp eq ptr %.3374, null
  br i1 %cond, label %.thread52, label %bb.bh

.thread52:                                        ; preds = %bb.ba
  %i.fi = shl nuw i32 1, %i.fd
  %i.fj = xor i32 %i.fi, -1
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.fl = and i32 %i.fk, %i.fj
  store i32 %i.fl, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %bb.br

bb.bb:                                            ; preds = %bb.az
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not453 = icmp ult ptr %i.eh, %i.fm
  br i1 %.not453, label %bb.bf, label %bb.bc, !prof !25

bb.bc:                                            ; preds = %bb.bb
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42
  %i.fp = icmp eq ptr %i.fo, %i.an
  br i1 %i.fp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store ptr %.3374, ptr %i.fn, align 8, !tbaa !42
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %.3374, ptr %i.fq, align 8, !tbaa !42
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  tail call void @abort() #17
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %.not454 = icmp eq ptr %.3374, null
  br i1 %.not454, label %bb.br, label %bb.bh

bb.bh:                                            ; preds = %bb.ba, %bb.bg
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 3 uses
  %.not455 = icmp ult ptr %.3374, %i.fr
  br i1 %.not455, label %bb.bq, label %bb.bi, !prof !25

bb.bi:                                            ; preds = %bb.bh
  %i.fs = getelementptr inbounds nuw i8, ptr %.3374, i64 48
  store ptr %i.eh, ptr %i.fs, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42 ; 4 uses
  %.not456 = icmp eq ptr %i.fu, null
  br i1 %.not456, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not457 = icmp ult ptr %i.fu, %i.fr
  br i1 %.not457, label %bb.bl, label %bb.bk, !prof !25

bb.bk:                                            ; preds = %bb.bj
  %i.fv = getelementptr inbounds nuw i8, ptr %.3374, i64 32
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !42
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  store ptr %.3374, ptr %i.fw, align 8, !tbaa !45
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  tail call void @abort() #17
  unreachable

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %i.fx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 4 uses
  %.not458 = icmp eq ptr %i.fy, null
  br i1 %.not458, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not459 = icmp ult ptr %i.fy, %i.fr
  br i1 %.not459, label %bb.bp, label %bb.bo, !prof !25

bb.bo:                                            ; preds = %bb.bn
  %i.fz = getelementptr inbounds nuw i8, ptr %.3374, i64 40
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %.3374, ptr %i.ga, align 8, !tbaa !45
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  tail call void @abort() #17
  unreachable

bb.bq:                                            ; preds = %bb.bh
  tail call void @abort() #17
  unreachable

bb.br:                                            ; preds = %.thread52, %bb.ay, %bb.bm, %bb.bo, %bb.bg, %.critedge480, %bb.aj
  %i.gb = icmp ult i64 %i.de, 256
  br i1 %i.gb, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.gc = lshr i64 %i.de, 3                       ; 2 uses
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %.idx468 = shl nuw nsw i64 %i.gc, 4
  %i.ge = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx468 ; 4 uses
  %i.gf = load i32, ptr @_gm_, align 8, !tbaa !21 ; 2 uses
  %i.gg = shl nuw i32 1, %i.gd                    ; 2 uses
  %i.gh = and i32 %i.gf, %i.gg
  %.not469 = icmp eq i32 %i.gh, 0
  br i1 %.not469, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gi = or i32 %i.gf, %i.gg
  store i32 %i.gi, ptr @_gm_, align 8, !tbaa !21
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !23 ; 2 uses
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not470 = icmp ult ptr %i.gk, %i.gl
  br i1 %.not470, label %bb.bv, label %bb.bw, !prof !25

bb.bv:                                            ; preds = %bb.bu
  tail call void @abort() #17
  unreachable

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %.0367 = phi ptr [ %i.ge, %bb.bt ], [ %i.gk, %bb.bu ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.an, ptr %i.gm, align 8, !tbaa !23
  %i.gn = getelementptr inbounds nuw i8, ptr %.0367, i64 24
  store ptr %i.an, ptr %i.gn, align 8, !tbaa !26
  %i.go = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.0367, ptr %i.go, align 8, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ge, ptr %i.gp, align 8, !tbaa !26
  br label %bb.ck

bb.bx:                                            ; preds = %bb.br
  %i.gq = lshr i64 %i.de, 8
  %i.gr = trunc i64 %i.gq to i32                  ; 3 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gt = icmp ugt i32 %i.gr, 65535
  br i1 %i.gt, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gu = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.gr, i1 true) ; 2 uses
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = sub nuw nsw i32 38, %i.gu
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = lshr i64 %i.de, %i.gx
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = and i32 %i.gz, 1
  %i.hb = or disjoint i32 %i.ha, %i.gv
  %i.hc = xor i32 %i.hb, 62
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bz
  %.0366 = phi i32 [ %i.hc, %bb.bz ], [ 0, %bb.bx ], [ 31, %bb.by ] ; 5 uses
  %i.hd = zext nneg i32 %.0366 to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.hd ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i32 %.0366, ptr %i.hf, align 8, !tbaa !48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.an, i64 32
end_hunk_9
begin_hunk_10_@internal_grow_both_sides:bb.a
bb.ch:                                            ; preds = %bb.cd
  %i.ij = getelementptr inbounds nuw i8, ptr %.0361, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !47 ; 3 uses
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 2 uses
  %.not465 = icmp uge ptr %.0361, %i.il
  %i.im = icmp uge ptr %i.ik, %i.il
  %spec.select = select i1 %.not465, i1 %i.im, i1 false, !prof !27
  br i1 %spec.select, label %bb.ci, label %bb.cj, !prof !27

bb.ci:                                            ; preds = %bb.ch
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store ptr %i.an, ptr %i.in, align 8, !tbaa !46
  store ptr %i.an, ptr %i.ij, align 8, !tbaa !47
  %i.io = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ik, ptr %i.io, align 8, !tbaa !47
  %i.ip = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %.0361, ptr %i.ip, align 8, !tbaa !46
  %i.iq = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr null, ptr %i.iq, align 8, !tbaa !45
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  tail call void @abort() #17
  unreachable

bb.ck:                                            ; preds = %.thread, %bb.cb, %bb.ci, %bb.bw, %bb.ae
  %i.ir = or i64 %i.de, 1
  %i.is = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !28
  %i.it = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.de
  store i64 %i.de, ptr %i.it, align 8, !tbaa !30
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.iv = or i64 %i.dd, 2
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !28
  %i.iw = getelementptr inbounds i8, ptr %i.a, i64 %.0377
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !28
  %i.iz = or i64 %i.iy, 1
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !28
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !28 ; 2 uses
  %i.jb = and i64 %i.ja, -8
  %i.jc = and i64 %i.ja, 3
  %i.jd = icmp eq i64 %i.jc, 0
  %.neg471 = select i1 %i.jd, i64 -16, i64 -8
  %i.je = add i64 %.neg471, %i.jb
  store i64 %i.je, ptr %4, align 8, !tbaa !40
  %i.jf = load i64, ptr %i.iu, align 8, !tbaa !28
  %i.jg = and i64 %i.jf, -8
  %i.jh = sub i64 %i.jg, %.0377
  %i.ji = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.jj = add i64 %i.jh, %i.ji
  store i64 %i.jj, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  br label %bb.eb

bb.cl:                                            ; preds = %bb.ac
  %i.jl = urem i64 %i.ak, %.sink106.i
  %.not426 = icmp eq i64 %i.jl, 0
  br i1 %.not426, label %bb.cm, label %bb.eb

bb.cm:                                            ; preds = %bb.cl
  %i.jm = add i64 %i.cz, %i.ak
  store i64 %i.jm, ptr %4, align 8, !tbaa !40
  %i.jn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  %.not427 = icmp eq ptr %i.an, %i.jn
  br i1 %.not427, label %bb.dz, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jo = icmp ult i64 %i.ak, 256
  br i1 %i.jo, label %bb.co, label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.jp = lshr i64 %i.ak, 3                       ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !23 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !26 ; 6 uses
  %i.ju = trunc nuw nsw i64 %i.jp to i32
  %.idx = shl nuw nsw i64 %i.jp, 4
  %i.jv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 72), i64 %.idx ; 2 uses
  %i.jw = icmp eq ptr %i.jr, %i.jv
  br i1 %i.jw, label %.critedge486, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not443 = icmp ult ptr %i.jr, %i.jx
  br i1 %.not443, label %.critedge488, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !26
  %i.ka = icmp eq ptr %i.jz, %i.an
  br i1 %i.ka, label %.critedge486, label %.critedge488, !prof !27

.critedge486:                                     ; preds = %bb.co, %bb.cq
  %i.kb = icmp eq ptr %i.jt, %i.jr
  br i1 %i.kb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.critedge486
  %i.kc = shl nuw i32 1, %i.ju
  %i.kd = xor i32 %i.kc, -1
  %i.ke = load i32, ptr @_gm_, align 8, !tbaa !21
  %i.kf = and i32 %i.ke, %i.kd
  store i32 %i.kf, ptr @_gm_, align 8, !tbaa !21
  br label %bb.ea

bb.cs:                                            ; preds = %.critedge486
  %i.kg = icmp eq ptr %i.jt, %i.jv
  br i1 %i.kg, label %.critedge490, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not444 = icmp ult ptr %i.jt, %i.kh
  br i1 %.not444, label %.critedge492, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !23
  %i.kk = icmp eq ptr %i.kj, %i.an
  br i1 %i.kk, label %.critedge490, label %.critedge492, !prof !27

.critedge490:                                     ; preds = %bb.cs, %bb.cu
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store ptr %i.jt, ptr %i.kl, align 8, !tbaa !26
  %i.km = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store ptr %i.jr, ptr %i.km, align 8, !tbaa !23
  br label %bb.ea

.critedge492:                                     ; preds = %bb.ct, %bb.cu
  tail call void @abort() #17
  unreachable

.critedge488:                                     ; preds = %bb.cp, %bb.cq
  tail call void @abort() #17
  unreachable

bb.cv:                                            ; preds = %bb.cn
  %i.kn = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !45 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !46 ; 4 uses
  %.not428 = icmp eq ptr %i.kq, %i.an
  br i1 %.not428, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !47 ; 3 uses
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not434 = icmp ult ptr %i.ks, %i.kt
  br i1 %.not434, label %.critedge494, label %bb.cx, !prof !25

bb.cx:                                            ; preds = %bb.cw
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !46
  %i.kw = icmp eq ptr %i.kv, %i.an
  br i1 %i.kw, label %bb.cy, label %.critedge494, !prof !27

bb.cy:                                            ; preds = %bb.cx
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !47
  %i.kz = icmp eq ptr %i.ky, %i.an
  br i1 %i.kz, label %bb.cz, label %.critedge494, !prof !27

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.kq, ptr %i.ku, align 8, !tbaa !46
  store ptr %i.ks, ptr %i.kx, align 8, !tbaa !47
  br label %bb.dg

.critedge494:                                     ; preds = %bb.cx, %bb.cw, %bb.cy
  tail call void @abort() #17
  unreachable

bb.da:                                            ; preds = %bb.cv
  %i.la = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !42 ; 2 uses
  %.not429 = icmp eq ptr %i.lb, null
  br i1 %.not429, label %bb.db, label %.critedge2.preheader

bb.db:                                            ; preds = %bb.da
  %i.lc = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !42 ; 2 uses
  %.not430 = icmp eq ptr %i.ld, null
  br i1 %.not430, label %bb.dg, label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %bb.db, %bb.da
  %.1359.ph = phi ptr [ %i.lb, %bb.da ], [ %i.ld, %bb.db ]
  %.1.ph = phi ptr [ %i.la, %bb.da ], [ %i.lc, %bb.db ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %.critedge2.preheader
  %.1359 = phi ptr [ %.1359.ph, %.critedge2.preheader ], [ %.1359.be, %.critedge2.backedge ] ; 3 uses
  %.1 = phi ptr [ %.1.ph, %.critedge2.preheader ], [ %.1.be, %.critedge2.backedge ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.1359, i64 40 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !42 ; 2 uses
  %.not431 = icmp eq ptr %i.lf, null
  br i1 %.not431, label %bb.dc, label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %.critedge2, %bb.dc
  %.1359.be = phi ptr [ %i.lf, %.critedge2 ], [ %i.lh, %bb.dc ]
  %.1.be = phi ptr [ %i.le, %.critedge2 ], [ %i.lg, %bb.dc ]
  br label %.critedge2, !llvm.loop !126

bb.dc:                                            ; preds = %.critedge2
  %i.lg = getelementptr inbounds nuw i8, ptr %.1359, i64 32 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !42 ; 2 uses
  %.not432 = icmp eq ptr %i.lh, null
  br i1 %.not432, label %bb.dd, label %.critedge2.backedge

bb.dd:                                            ; preds = %bb.dc
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not433 = icmp ult ptr %.1, %i.li
  br i1 %.not433, label %bb.df, label %bb.de, !prof !25

bb.de:                                            ; preds = %bb.dd
  store ptr null, ptr %.1, align 8, !tbaa !42
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  tail call void @abort() #17
  unreachable

bb.dg:                                            ; preds = %bb.db, %bb.de, %bb.cz
  %.3 = phi ptr [ %i.kq, %bb.cz ], [ %.1359, %bb.de ], [ null, %bb.db ] ; 11 uses
  %.not435 = icmp eq ptr %i.ko, null
  br i1 %.not435, label %bb.ea, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lj = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !48 ; 2 uses
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 600), i64 %i.ll ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !42
  %i.lo = icmp eq ptr %i.an, %i.ln
  br i1 %i.lo, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store ptr %.3, ptr %i.lm, align 8, !tbaa !42
  %cond496 = icmp eq ptr %.3, null
  br i1 %cond496, label %.thread54, label %bb.dp

.thread54:                                        ; preds = %bb.di
  %i.lp = shl nuw i32 1, %i.lk
  %i.lq = xor i32 %i.lp, -1
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  %i.ls = and i32 %i.lr, %i.lq
  store i32 %i.ls, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 4), align 4, !tbaa !32
  br label %bb.ea

bb.dj:                                            ; preds = %bb.dh
  %i.lt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24
  %.not436 = icmp ult ptr %i.ko, %i.lt
  br i1 %.not436, label %bb.dn, label %bb.dk, !prof !25

bb.dk:                                            ; preds = %bb.dj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ko, i64 32 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !42
  %i.lw = icmp eq ptr %i.lv, %i.an
  br i1 %i.lw, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store ptr %.3, ptr %i.lu, align 8, !tbaa !42
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  store ptr %.3, ptr %i.lx, align 8, !tbaa !42
  br label %bb.do

bb.dn:                                            ; preds = %bb.dj
  tail call void @abort() #17
  unreachable

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %.not437 = icmp eq ptr %.3, null
  br i1 %.not437, label %bb.ea, label %bb.dp

bb.dp:                                            ; preds = %bb.di, %bb.do
  %i.ly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 24), align 8, !tbaa !24 ; 3 uses
  %.not438 = icmp ult ptr %.3, %i.ly
  br i1 %.not438, label %bb.dy, label %bb.dq, !prof !25

bb.dq:                                            ; preds = %bb.dp
  %i.lz = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.ko, ptr %i.lz, align 8, !tbaa !45
  %i.ma = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !42 ; 4 uses
  %.not439 = icmp eq ptr %i.mb, null
  br i1 %.not439, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.not440 = icmp ult ptr %i.mb, %i.ly
  br i1 %.not440, label %bb.dt, label %bb.ds, !prof !25

bb.ds:                                            ; preds = %bb.dr
  %i.mc = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !42
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  store ptr %.3, ptr %i.md, align 8, !tbaa !45
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  tail call void @abort() #17
  unreachable

bb.du:                                            ; preds = %bb.ds, %bb.dq
  %i.me = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !42 ; 4 uses
  %.not441 = icmp eq ptr %i.mf, null
  br i1 %.not441, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.not442 = icmp ult ptr %i.mf, %i.ly
  br i1 %.not442, label %bb.dx, label %bb.dw, !prof !25

bb.dw:                                            ; preds = %bb.dv
  %i.mg = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !42
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  store ptr %.3, ptr %i.mh, align 8, !tbaa !45
  br label %bb.ea

bb.dx:                                            ; preds = %bb.dv
  tail call void @abort() #17
  unreachable

bb.dy:                                            ; preds = %bb.dp
  tail call void @abort() #17
  unreachable

bb.dz:                                            ; preds = %bb.cm
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 8), align 8, !tbaa !29
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 32), align 8, !tbaa !31
  br label %bb.ea

bb.ea:                                            ; preds = %.thread54, %bb.dg, %bb.du, %bb.dw, %bb.do, %.critedge490, %bb.cr, %bb.dz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !28
  %i.mk = and i64 %i.mj, 1
  %i.ml = or disjoint i64 %i.mk, %.0375
  %i.mm = or i64 %i.ml, 2
  store i64 %i.mm, ptr %i.mi, align 8, !tbaa !28
  %i.mn = getelementptr inbounds i8, ptr %i.a, i64 %.0377
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !28
  %i.mq = or i64 %i.mp, 1
  store i64 %i.mq, ptr %i.mo, align 8, !tbaa !28
  %i.mr = load i64, ptr %i.mi, align 8, !tbaa !28
  %i.ms = and i64 %i.mr, -8
  %i.mt = sub i64 %i.ms, %.0377
  %i.mu = load i64, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.mv = add i64 %i.mt, %i.mu
  store i64 %i.mv, ptr @s_allocated_memory, align 8, !tbaa !40
  %i.mw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %bb.eb

.critedge474:                                     ; preds = %bb.b, %bb.c
  tail call void @abort() #17
  unreachable

bb.eb:                                            ; preds = %bb.ck, %bb.ea, %bb.z, %bb.cl, %bb.j, %bb.h, %bb.i, %bb.g, %bb.a, %bb.f
  %.2365 = phi ptr [ %1, %bb.a ], [ %1, %bb.f ], [ %1, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ %i.mw, %bb.ea ], [ %i.jk, %bb.ck ], [ null, %bb.z ], [ null, %bb.cl ]
  ret ptr %.2365
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @boost_cont_mallopt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !11
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
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !38
  br label %change_mparam.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !36
  %.not11.i = icmp ule i64 %i.c, %i.b
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond.i = select i1 %.not11.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.f, label %change_mparam.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !35
  br label %change_mparam.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8, !tbaa !37
end_hunk_10
begin_hunk_11_@prepend_alloc
define internal fastcc nonnull ptr @prepend_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 -1, -105) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 0, %i.g
  %i.i = and i64 %i.h, 15
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 23 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %3 ; 30 uses
  %i.n = add i64 %3, %i.l
  %i.o = sub i64 %i.k, %i.n                       ; 4 uses
  %i.p = or i64 %3, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33
  %i.w = add i64 %i.v, %i.o                       ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !33
  store ptr %i.m, ptr %i.r, align 8, !tbaa !34
  %i.x = or i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !28
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = icmp eq ptr %i.j, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.ae = add i64 %i.ad, %i.o                     ; 4 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !29
  store ptr %i.m, ptr %i.z, align 8, !tbaa !31
  %i.af = or i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !30
  br label %bb.bl

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28 ; 5 uses
  %i.ak = and i64 %i.aj, 3
  %.not = icmp eq i64 %i.ak, 1
  br i1 %.not, label %bb.f, label %bb.as

bb.f:                                             ; preds = %bb.e
  %i.al = and i64 %i.aj, -8                       ; 2 uses
  %i.am = icmp ult i64 %i.aj, 256
  br i1 %i.am, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.an = lshr i64 %i.aj, 3                       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 6 uses
  %i.as = trunc nuw nsw i64 %i.an to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx = shl nuw nsw i64 %i.an, 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx ; 2 uses
  %i.av = icmp eq ptr %i.ap, %i.au
  br i1 %i.av, label %.critedge266, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %.not255 = icmp ult ptr %i.ap, %i.ax
  br i1 %.not255, label %.critedge268, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.ba = icmp eq ptr %i.az, %i.j
  br i1 %i.ba, label %.critedge266, label %.critedge268, !prof !27

.critedge266:                                     ; preds = %bb.g, %bb.i
  %i.bb = icmp eq ptr %i.ar, %i.ap
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge266
  %i.bc = shl nuw i32 1, %i.as
  %i.bd = xor i32 %i.bc, -1
  %i.be = load i32, ptr %0, align 8, !tbaa !21
  %i.bf = and i32 %i.be, %i.bd
  store i32 %i.bf, ptr %0, align 8, !tbaa !21
  br label %bb.ar

bb.k:                                             ; preds = %.critedge266
  %i.bg = icmp eq ptr %i.ar, %i.au
  br i1 %i.bg, label %.critedge270, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !24
  %.not256 = icmp ult ptr %i.ar, %i.bi
  br i1 %.not256, label %.critedge272, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23
  %i.bl = icmp eq ptr %i.bk, %i.j
  br i1 %i.bl, label %.critedge270, label %.critedge272, !prof !27

.critedge270:                                     ; preds = %bb.k, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.ar, ptr %i.bm, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ap, ptr %i.bn, align 8, !tbaa !23
  br label %bb.ar

.critedge272:                                     ; preds = %bb.l, %bb.m
  tail call void @abort() #17
  unreachable

.critedge268:                                     ; preds = %bb.h, %bb.i
  tail call void @abort() #17
  unreachable

bb.n:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 4 uses
  %.not240 = icmp eq ptr %i.br, %i.j
  br i1 %.not240, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !24
  %.not246 = icmp ult ptr %i.bt, %i.bv
  br i1 %.not246, label %.critedge274, label %bb.p, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = icmp eq ptr %i.bx, %i.j
  br i1 %i.by, label %bb.q, label %.critedge274, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = icmp eq ptr %i.ca, %i.j
  br i1 %i.cb, label %bb.r, label %.critedge274, !prof !27

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.bw, align 8, !tbaa !46
  store ptr %i.bt, ptr %i.bz, align 8, !tbaa !47
  br label %bb.y

.critedge274:                                     ; preds = %bb.p, %bb.o, %bb.q
  tail call void @abort() #17
  unreachable

bb.s:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %.not241 = icmp eq ptr %i.cd, null
  br i1 %.not241, label %bb.t, label %.critedge.preheader

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %.not242 = icmp eq ptr %i.cf, null
  br i1 %.not242, label %bb.y, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.t, %bb.s
  %.1218.ph = phi ptr [ %i.cd, %bb.s ], [ %i.cf, %bb.t ]
  %.1216.ph = phi ptr [ %i.cc, %bb.s ], [ %i.ce, %bb.t ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1218 = phi ptr [ %.1218.ph, %.critedge.preheader ], [ %.1218.be, %.critedge.backedge ] ; 3 uses
  %.1216 = phi ptr [ %.1216.ph, %.critedge.preheader ], [ %.1216.be, %.critedge.backedge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1218, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  %.not243 = icmp eq ptr %i.ch, null
  br i1 %.not243, label %bb.u, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.u
  %.1218.be = phi ptr [ %i.ch, %.critedge ], [ %i.cj, %bb.u ]
  %.1216.be = phi ptr [ %i.cg, %.critedge ], [ %i.ci, %bb.u ]
  br label %.critedge, !llvm.loop !127

bb.u:                                             ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %.1218, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !42 ; 2 uses
  %.not244 = icmp eq ptr %i.cj, null
  br i1 %.not244, label %bb.v, label %.critedge.backedge

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24
  %.not245 = icmp ult ptr %.1216, %i.cl
  br i1 %.not245, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %.1216, align 8, !tbaa !42
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @abort() #17
  unreachable

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.r
  %.3 = phi ptr [ %i.br, %bb.r ], [ %.1218, %bb.w ], [ null, %bb.t ] ; 11 uses
  %.not247 = icmp eq ptr %i.bp, null
  br i1 %.not247, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cs = icmp eq ptr %i.j, %i.cr
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %.3, ptr %i.cq, align 8, !tbaa !42
  %cond = icmp eq ptr %.3, null
  br i1 %cond, label %.thread302, label %bb.ah

.thread302:                                       ; preds = %bb.aa
  %i.ct = shl nuw i32 1, %i.co
  %i.cu = xor i32 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = and i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !32
  br label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !24
  %.not248 = icmp ult ptr %i.bp, %i.cz
  br i1 %.not248, label %bb.af, label %bb.ac, !prof !25

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dc = icmp eq ptr %i.db, %i.j
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %.3, ptr %i.da, align 8, !tbaa !42
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %.3, ptr %i.dd, align 8, !tbaa !42
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  tail call void @abort() #17
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.not249 = icmp eq ptr %.3, null
  br i1 %.not249, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.aa, %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24 ; 3 uses
  %.not250 = icmp ult ptr %.3, %i.df
  br i1 %.not250, label %bb.aq, label %bb.ai, !prof !25

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.bp, ptr %i.dg, align 8, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42 ; 4 uses
  %.not251 = icmp eq ptr %i.di, null
  br i1 %.not251, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not252 = icmp ult ptr %i.di, %i.df
  br i1 %.not252, label %bb.al, label %bb.ak, !prof !25

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store ptr %.3, ptr %i.dk, align 8, !tbaa !45
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @abort() #17
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !42 ; 4 uses
  %.not253 = icmp eq ptr %i.dm, null
  br i1 %.not253, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not254 = icmp ult ptr %i.dm, %i.df
  br i1 %.not254, label %bb.ap, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %.3, ptr %i.do, align 8, !tbaa !45
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  tail call void @abort() #17
  unreachable

bb.aq:                                            ; preds = %bb.ah
  tail call void @abort() #17
  unreachable

bb.ar:                                            ; preds = %.thread302, %bb.y, %bb.am, %bb.ao, %bb.ag, %.critedge270, %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.al ; 2 uses
  %i.dq = add i64 %i.al, %i.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.e
  %i.dr = phi i64 [ %i.aj, %bb.e ], [ %.pre, %bb.ar ]
  %.0220 = phi i64 [ %i.o, %bb.e ], [ %i.dq, %bb.ar ] ; 9 uses
  %.0219 = phi ptr [ %i.j, %bb.e ], [ %i.dp, %bb.ar ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0219, i64 8
  %i.dt = and i64 %i.dr, -2
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !28
  %i.du = or i64 %.0220, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0220
  store i64 %.0220, ptr %i.dw, align 8, !tbaa !30
  %i.dx = icmp ult i64 %.0220, 256
  br i1 %i.dx, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.dy = lshr i64 %.0220, 3                      ; 2 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx262 = shl nuw nsw i64 %i.dy, 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx262 ; 4 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ed = shl nuw i32 1, %i.dz                    ; 2 uses
  %i.ee = and i32 %i.ec, %i.ed
  %.not263 = icmp eq i32 %i.ee, 0
  br i1 %.not263, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ef = or i32 %i.ec, %i.ed
  store i32 %i.ef, ptr %0, align 8, !tbaa !21
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !23 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !24
  %.not264 = icmp ult ptr %i.eh, %i.ej
  br i1 %.not264, label %bb.aw, label %bb.ax, !prof !25

bb.aw:                                            ; preds = %bb.av
  tail call void @abort() #17
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.0213 = phi ptr [ %i.eb, %bb.au ], [ %i.eh, %bb.av ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.m, ptr %i.ek, align 8, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %.0213, i64 24
  store ptr %i.m, ptr %i.el, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.0213, ptr %i.em, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.eb, ptr %i.en, align 8, !tbaa !26
  br label %bb.bl

bb.ay:                                            ; preds = %bb.as
  %i.eo = lshr i64 %.0220, 8
  %i.ep = trunc i64 %i.eo to i32                  ; 3 uses
  %i.eq = icmp eq i32 %i.ep, 0
end_hunk_11
begin_hunk_12_@prepend_alloc:bb.a
  store ptr %.0211, ptr %i.gr, align 8, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.gs, align 8, !tbaa !45
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  tail call void @abort() #17
  unreachable

bb.bl:                                            ; preds = %.thread, %bb.bc, %bb.bj, %bb.d, %bb.ax, %bb.b
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  ret ptr %i.gt
}

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dispose_chunk(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2 ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !30     ; 6 uses
  %i.f = and i64 %i.c, 2
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %2, 32
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = sub i64 0, %i.e
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = tail call i32 @munmap(ptr noundef nonnull %i.k, i64 noundef %i.i) #16
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge445

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50
  %i.p = sub i64 %i.o, %i.i
  store i64 %i.p, ptr %i.n, align 8, !tbaa !50
  br label %.critedge445

bb.e:                                             ; preds = %bb.b
  %i.q = sub i64 0, %i.e
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 28 uses
  %i.s = add i64 %i.e, %2                         ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 17 uses
  %.not386 = icmp ult ptr %i.r, %i.u
  br i1 %.not386, label %bb.au, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %.not387 = icmp eq ptr %i.r, %i.w
  br i1 %.not387, label %bb.as, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.e, 256
  br i1 %i.x, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i64 %i.e, 3                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.y to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx = shl nuw nsw i64 %i.y, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 2 uses
  %i.ag = icmp eq ptr %i.aa, %i.af
  br i1 %i.ag, label %.critedge435, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not403 = icmp ult ptr %i.aa, %i.u
  br i1 %.not403, label %.critedge437, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = icmp eq ptr %i.ai, %i.r
  br i1 %i.aj, label %.critedge435, label %.critedge437, !prof !27

.critedge435:                                     ; preds = %bb.h, %bb.j
  %i.ak = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge435
  %i.al = shl nuw i32 1, %i.ad
  %i.am = xor i32 %i.al, -1
  %i.an = load i32, ptr %0, align 8, !tbaa !21
  %i.ao = and i32 %i.an, %i.am
  store i32 %i.ao, ptr %0, align 8, !tbaa !21
  br label %bb.av

bb.l:                                             ; preds = %.critedge435
  %i.ap = icmp eq ptr %i.ac, %i.af
  br i1 %i.ap, label %.critedge439, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not404 = icmp ult ptr %i.ac, %i.u
  br i1 %.not404, label %.critedge441, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.as = icmp eq ptr %i.ar, %i.r
  br i1 %i.as, label %.critedge439, label %.critedge441, !prof !27

.critedge439:                                     ; preds = %bb.l, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ac, ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !23
  br label %bb.av

.critedge441:                                     ; preds = %bb.m, %bb.n
  tail call void @abort() #17
  unreachable

.critedge437:                                     ; preds = %bb.i, %bb.j
  tail call void @abort() #17
  unreachable

bb.o:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 4 uses
  %.not388 = icmp eq ptr %i.ay, %i.r
  br i1 %.not388, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47 ; 3 uses
  %.not394 = icmp ult ptr %i.ba, %i.u
  br i1 %.not394, label %.critedge443, label %bb.q, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = icmp eq ptr %i.bc, %i.r
  br i1 %i.bd, label %bb.r, label %.critedge443, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bg = icmp eq ptr %i.bf, %i.r
  br i1 %i.bg, label %bb.s, label %.critedge443, !prof !27

bb.s:                                             ; preds = %bb.r
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !46
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !47
  br label %bb.z

.critedge443:                                     ; preds = %bb.q, %bb.p, %bb.r
  tail call void @abort() #17
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42 ; 2 uses
  %.not389 = icmp eq ptr %i.bi, null
  br i1 %.not389, label %bb.u, label %.critedge.preheader

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  %.not390 = icmp eq ptr %i.bk, null
  br i1 %.not390, label %bb.z, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.u, %bb.t
  %.1346.ph = phi ptr [ %i.bi, %bb.t ], [ %i.bk, %bb.u ]
  %.1344.ph = phi ptr [ %i.bh, %bb.t ], [ %i.bj, %bb.u ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1346 = phi ptr [ %.1346.ph, %.critedge.preheader ], [ %.1346.be, %.critedge.backedge ] ; 3 uses
  %.1344 = phi ptr [ %.1344.ph, %.critedge.preheader ], [ %.1344.be, %.critedge.backedge ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1346, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 2 uses
  %.not391 = icmp eq ptr %i.bm, null
  br i1 %.not391, label %bb.v, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.v
  %.1346.be = phi ptr [ %i.bm, %.critedge ], [ %i.bo, %bb.v ]
  %.1344.be = phi ptr [ %i.bl, %.critedge ], [ %i.bn, %bb.v ]
  br label %.critedge, !llvm.loop !128

bb.v:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %.1346, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %.not392 = icmp eq ptr %i.bo, null
  br i1 %.not392, label %bb.w, label %.critedge.backedge

bb.w:                                             ; preds = %bb.v
  %.not393 = icmp ult ptr %.1344, %i.u
  br i1 %.not393, label %bb.y, label %bb.x, !prof !25

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %.1344, align 8, !tbaa !42
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @abort() #17
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.s
  %.3348 = phi ptr [ %i.ay, %bb.s ], [ %.1346, %bb.x ], [ null, %bb.u ] ; 11 uses
  %.not395 = icmp eq ptr %i.aw, null
  br i1 %.not395, label %bb.av, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !48 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42
  %i.bv = icmp eq ptr %i.r, %i.bu
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %.3348, ptr %i.bt, align 8, !tbaa !42
  %cond = icmp eq ptr %.3348, null
  br i1 %cond, label %.thread502, label %bb.ai

.thread502:                                       ; preds = %bb.ab
  %i.bw = shl nuw i32 1, %i.br
  %i.bx = xor i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !32
  %i.ca = and i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !32
  br label %bb.av

bb.ac:                                            ; preds = %bb.aa
  %.not396 = icmp ult ptr %i.aw, %i.u
  br i1 %.not396, label %bb.ag, label %bb.ad, !prof !25

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42
  %i.cd = icmp eq ptr %i.cc, %i.r
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %.3348, ptr %i.cb, align 8, !tbaa !42
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %.3348, ptr %i.ce, align 8, !tbaa !42
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  tail call void @abort() #17
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.not397 = icmp eq ptr %.3348, null
  br i1 %.not397, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ah
  %.not398 = icmp ult ptr %.3348, %i.u
  br i1 %.not398, label %bb.ar, label %bb.aj, !prof !25

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %.3348, i64 48
  store ptr %i.aw, ptr %i.cf, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42 ; 4 uses
  %.not399 = icmp eq ptr %i.ch, null
  br i1 %.not399, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not400 = icmp ult ptr %i.ch, %i.u
  br i1 %.not400, label %bb.am, label %bb.al, !prof !25

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %.3348, i64 32
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr %.3348, ptr %i.cj, align 8, !tbaa !45
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @abort() #17
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 4 uses
  %.not401 = icmp eq ptr %i.cl, null
  br i1 %.not401, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not402 = icmp ult ptr %i.cl, %i.u
  br i1 %.not402, label %bb.aq, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.cm = getelementptr inbounds nuw i8, ptr %.3348, i64 40
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %.3348, ptr %i.cn, align 8, !tbaa !45
  br label %bb.av

bb.aq:                                            ; preds = %bb.ao
  tail call void @abort() #17
  unreachable

bb.ar:                                            ; preds = %bb.ai
  tail call void @abort() #17
  unreachable

bb.as:                                            ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !28 ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %i.cr = icmp eq i64 %i.cq, 3
  br i1 %i.cr, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.cs, align 8, !tbaa !29
  %i.ct = and i64 %i.cp, -2
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !28
  %i.cu = or i64 %i.s, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !28
  store i64 %i.s, ptr %i.a, align 8, !tbaa !30
  br label %.critedge445

bb.au:                                            ; preds = %bb.e
  tail call void @abort() #17
  unreachable

bb.av:                                            ; preds = %.thread502, %._crit_edge, %bb.z, %bb.an, %bb.ap, %bb.ah, %.critedge439, %bb.k, %bb.as
  %i.cw = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %bb.as ], [ %i.u, %bb.k ], [ %i.u, %.critedge439 ], [ %i.u, %bb.ah ], [ %i.u, %bb.ap ], [ %i.u, %bb.an ], [ %i.u, %bb.z ], [ %i.u, %.thread502 ] ; 13 uses
  %.1340 = phi i64 [ %2, %._crit_edge ], [ %i.s, %bb.as ], [ %i.s, %bb.k ], [ %i.s, %.critedge439 ], [ %i.s, %bb.ah ], [ %i.s, %bb.ap ], [ %i.s, %bb.an ], [ %i.s, %bb.z ], [ %i.s, %.thread502 ] ; 7 uses
  %.1331 = phi ptr [ %1, %._crit_edge ], [ %i.r, %bb.as ], [ %i.r, %bb.k ], [ %i.r, %.critedge439 ], [ %i.r, %bb.ah ], [ %i.r, %bb.ap ], [ %i.r, %bb.an ], [ %i.r, %bb.z ], [ %i.r, %.thread502 ] ; 34 uses
  %.not405 = icmp ult ptr %i.a, %i.cw
  br i1 %.not405, label %bb.dj, label %bb.aw, !prof !25

bb.aw:                                            ; preds = %bb.av
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !28 ; 5 uses
  %i.cz = and i64 %i.cy, 2
  %.not406 = icmp eq i64 %i.cz, 0
  br i1 %.not406, label %bb.ax, label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !34
  %i.dc = icmp eq ptr %i.a, %i.db
  br i1 %i.dc, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !33
  %i.df = add i64 %i.de, %.1340                   ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !33
  store ptr %.1331, ptr %i.da, align 8, !tbaa !34
  %i.dg = or i64 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.1331, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31
  %i.dk = icmp eq ptr %.1331, %i.dj
  br i1 %i.dk, label %bb.az, label %.critedge445

bb.az:                                            ; preds = %bb.ay
  store ptr null, ptr %i.di, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !29
  br label %.critedge445

bb.ba:                                            ; preds = %bb.ax
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31 ; 2 uses
  %i.do = icmp eq ptr %i.a, %i.dn
  br i1 %i.do, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !29
  %i.dr = add i64 %i.dq, %.1340                   ; 4 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !29
  store ptr %.1331, ptr %i.dm, align 8, !tbaa !31
  %i.ds = or i64 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.1331, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %.1331, i64 %i.dr
  store i64 %i.dr, ptr %i.du, align 8, !tbaa !30
  br label %.critedge445

bb.bc:                                            ; preds = %bb.ba
  %i.dv = and i64 %i.cy, -8
  %i.dw = add i64 %i.dv, %.1340                   ; 5 uses
  %i.dx = icmp ult i64 %i.cy, 256
  br i1 %i.dx, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.dy = lshr i64 %i.cy, 3                       ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !23 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !26 ; 6 uses
  %i.ed = trunc nuw nsw i64 %i.dy to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx422 = shl nuw nsw i64 %i.dy, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx422 ; 2 uses
  %i.eg = icmp eq ptr %i.ea, %i.ef
  br i1 %i.eg, label %.critedge447, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not423 = icmp ult ptr %i.ea, %i.cw
  br i1 %.not423, label %.critedge449, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26
  %i.ej = icmp eq ptr %i.ei, %i.a
  br i1 %i.ej, label %.critedge447, label %.critedge449, !prof !27

.critedge447:                                     ; preds = %bb.bd, %bb.bf
  %i.ek = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ek, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.critedge447
  %i.el = shl nuw i32 1, %i.ed
  %i.em = xor i32 %i.el, -1
  %i.en = load i32, ptr %0, align 8, !tbaa !21
  %i.eo = and i32 %i.en, %i.em
  store i32 %i.eo, ptr %0, align 8, !tbaa !21
  br label %bb.co

bb.bh:                                            ; preds = %.critedge447
  %i.ep = icmp eq ptr %i.ec, %i.ef
  br i1 %i.ep, label %.critedge451, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not424 = icmp ult ptr %i.ec, %i.cw
  br i1 %.not424, label %.critedge453, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !23
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %.critedge451, label %.critedge453, !prof !27

.critedge451:                                     ; preds = %bb.bh, %bb.bj
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.ec, ptr %i.et, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ea, ptr %i.eu, align 8, !tbaa !23
  br label %bb.co

.critedge453:                                     ; preds = %bb.bi, %bb.bj
  tail call void @abort() #17
  unreachable

.critedge449:                                     ; preds = %bb.be, %bb.bf
  tail call void @abort() #17
  unreachable

bb.bk:                                            ; preds = %bb.bc
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !45 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 4 uses
  %.not407 = icmp eq ptr %i.ey, %i.a
  br i1 %.not407, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 3 uses
  %.not413 = icmp ult ptr %i.fa, %i.cw
  br i1 %.not413, label %.critedge455, label %bb.bm, !prof !25

bb.bm:                                            ; preds = %bb.bl
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.fd = icmp eq ptr %i.fc, %i.a
  br i1 %i.fd, label %bb.bn, label %.critedge455, !prof !27

bb.bn:                                            ; preds = %bb.bm
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47
  %i.fg = icmp eq ptr %i.ff, %i.a
  br i1 %i.fg, label %bb.bo, label %.critedge455, !prof !27

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !46
  store ptr %i.fa, ptr %i.fe, align 8, !tbaa !47
  br label %bb.bv

.critedge455:                                     ; preds = %bb.bm, %bb.bl, %bb.bn
  tail call void @abort() #17
  unreachable

bb.bp:                                            ; preds = %bb.bk
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %.not408 = icmp eq ptr %i.fi, null
  br i1 %.not408, label %bb.bq, label %.critedge3.preheader

bb.bq:                                            ; preds = %bb.bp
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42 ; 2 uses
  %.not409 = icmp eq ptr %i.fk, null
  br i1 %.not409, label %bb.bv, label %.critedge3.preheader

.critedge3.preheader:                             ; preds = %bb.bq, %bb.bp
  %.1338.ph = phi ptr [ %i.fi, %bb.bp ], [ %i.fk, %bb.bq ]
  %.1336.ph = phi ptr [ %i.fh, %bb.bp ], [ %i.fj, %bb.bq ]
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.backedge, %.critedge3.preheader
  %.1338 = phi ptr [ %.1338.ph, %.critedge3.preheader ], [ %.1338.be, %.critedge3.backedge ] ; 3 uses
  %.1336 = phi ptr [ %.1336.ph, %.critedge3.preheader ], [ %.1336.be, %.critedge3.backedge ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1338, i64 40 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !42 ; 2 uses
  %.not410 = icmp eq ptr %i.fm, null
  br i1 %.not410, label %bb.br, label %.critedge3.backedge

.critedge3.backedge:                              ; preds = %.critedge3, %bb.br
  %.1338.be = phi ptr [ %i.fm, %.critedge3 ], [ %i.fo, %bb.br ]
  %.1336.be = phi ptr [ %i.fl, %.critedge3 ], [ %i.fn, %bb.br ]
  br label %.critedge3, !llvm.loop !129

bb.br:                                            ; preds = %.critedge3
  %i.fn = getelementptr inbounds nuw i8, ptr %.1338, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 2 uses
  %.not411 = icmp eq ptr %i.fo, null
  br i1 %.not411, label %bb.bs, label %.critedge3.backedge

bb.bs:                                            ; preds = %bb.br
  %.not412 = icmp ult ptr %.1336, %i.cw
  br i1 %.not412, label %bb.bu, label %bb.bt, !prof !25

bb.bt:                                            ; preds = %bb.bs
  store ptr null, ptr %.1336, align 8, !tbaa !42
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  tail call void @abort() #17
  unreachable

bb.bv:                                            ; preds = %bb.bq, %bb.bt, %bb.bo
  %.3 = phi ptr [ %i.ey, %bb.bo ], [ %.1338, %bb.bt ], [ null, %bb.bq ] ; 11 uses
  %.not414 = icmp eq ptr %i.ew, null
  br i1 %.not414, label %bb.co, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !48 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fs ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42
  %i.fv = icmp eq ptr %i.a, %i.fu
  br i1 %i.fv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr %.3, ptr %i.ft, align 8, !tbaa !42
  %cond459 = icmp eq ptr %.3, null
  br i1 %cond459, label %.thread504, label %bb.ce

.thread504:                                       ; preds = %bb.bx
  %i.fw = shl nuw i32 1, %i.fr
  %i.fx = xor i32 %i.fw, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !32
  %i.ga = and i32 %i.fz, %i.fx
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !32
  br label %bb.co

bb.by:                                            ; preds = %bb.bw
  %.not415 = icmp ult ptr %i.ew, %i.cw
  br i1 %.not415, label %bb.cc, label %bb.bz, !prof !25

bb.bz:                                            ; preds = %bb.by
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42
  %i.gd = icmp eq ptr %i.gc, %i.a
  br i1 %i.gd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr %.3, ptr %i.gb, align 8, !tbaa !42
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr %.3, ptr %i.ge, align 8, !tbaa !42
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  tail call void @abort() #17
  unreachable

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.not416 = icmp eq ptr %.3, null
  br i1 %.not416, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.bx, %bb.cd
  %.not417 = icmp ult ptr %.3, %i.cw
  br i1 %.not417, label %bb.cn, label %bb.cf, !prof !25

bb.cf:                                            ; preds = %bb.ce
  %i.gf = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.ew, ptr %i.gf, align 8, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42 ; 4 uses
  %.not418 = icmp eq ptr %i.gh, null
  br i1 %.not418, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not419 = icmp ult ptr %i.gh, %i.cw
  br i1 %.not419, label %bb.ci, label %bb.ch, !prof !25

bb.ch:                                            ; preds = %bb.cg
  %i.gi = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !42
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store ptr %.3, ptr %i.gj, align 8, !tbaa !45
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  tail call void @abort() #17
  unreachable

bb.cj:                                            ; preds = %bb.ch, %bb.cf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !42 ; 4 uses
  %.not420 = icmp eq ptr %i.gl, null
  br i1 %.not420, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not421 = icmp ult ptr %i.gl, %i.cw
  br i1 %.not421, label %bb.cm, label %bb.cl, !prof !25

bb.cl:                                            ; preds = %bb.ck
  %i.gm = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store ptr %.3, ptr %i.gn, align 8, !tbaa !45
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  tail call void @abort() #17
  unreachable

bb.cn:                                            ; preds = %bb.ce
  tail call void @abort() #17
  unreachable

bb.co:                                            ; preds = %.thread504, %bb.bv, %bb.cj, %bb.cl, %bb.cd, %.critedge451, %bb.bg
  %i.go = or i64 %i.dw, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1331, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !28
  %i.gq = getelementptr inbounds nuw i8, ptr %.1331, i64 %i.dw
  store i64 %i.dw, ptr %i.gq, align 8, !tbaa !30
  %.not425 = icmp eq ptr %.1331, %i.dn
  br i1 %.not425, label %bb.cp, label %.critedge458

bb.cp:                                            ; preds = %bb.co
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dw, ptr %i.gr, align 8, !tbaa !29
  br label %.critedge445

bb.cq:                                            ; preds = %bb.aw
  %i.gs = and i64 %i.cy, -2
  store i64 %i.gs, ptr %i.cx, align 8, !tbaa !28
  %i.gt = or i64 %.1340, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.1331, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !28
  %i.gv = getelementptr inbounds nuw i8, ptr %.1331, i64 %.1340
  store i64 %.1340, ptr %i.gv, align 8, !tbaa !30
  br label %.critedge458

.critedge458:                                     ; preds = %bb.co, %bb.cq
  %.2341 = phi i64 [ %.1340, %bb.cq ], [ %i.dw, %bb.co ] ; 6 uses
  %i.gw = icmp ult i64 %.2341, 256
  br i1 %i.gw, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %.critedge458
  %i.gx = lshr i64 %.2341, 3                      ; 2 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx431 = shl nuw nsw i64 %i.gx, 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx431 ; 4 uses
  %i.hb = load i32, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.hc = shl nuw i32 1, %i.gy                    ; 2 uses
  %i.hd = and i32 %i.hb, %i.hc
  %.not432 = icmp eq i32 %i.hd, 0
  br i1 %.not432, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.he = or i32 %i.hb, %i.hc
  store i32 %i.he, ptr %0, align 8, !tbaa !21
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !23 ; 2 uses
  %.not433 = icmp ult ptr %i.hg, %i.cw
  br i1 %.not433, label %bb.cu, label %bb.cv, !prof !25

bb.cu:                                            ; preds = %bb.ct
  tail call void @abort() #17
  unreachable

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %.0333 = phi ptr [ %i.ha, %bb.cs ], [ %i.hg, %bb.ct ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %.1331, ptr %i.hh, align 8, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.0333, i64 24
  store ptr %.1331, ptr %i.hi, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %.1331, i64 16
  store ptr %.0333, ptr %i.hj, align 8, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.1331, i64 24
  store ptr %i.ha, ptr %i.hk, align 8, !tbaa !26
  br label %.critedge445

bb.cw:                                            ; preds = %.critedge458
  %i.hl = lshr i64 %.2341, 8
  %i.hm = trunc i64 %i.hl to i32                  ; 3 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.cz, label %bb.cx
end_hunk_12
begin_hunk_13_@dispose_chunk:bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %.1331, i64 48
  store ptr %i.ia, ptr %i.ii, align 8, !tbaa !45
  %i.ij = getelementptr inbounds nuw i8, ptr %.1331, i64 24
  store ptr %.1331, ptr %i.ij, align 8, !tbaa !46
  %i.ik = getelementptr inbounds nuw i8, ptr %.1331, i64 16
  store ptr %.1331, ptr %i.ik, align 8, !tbaa !47
  br label %.critedge445

bb.db:                                            ; preds = %bb.cz
  %i.il = load ptr, ptr %i.ia, align 8, !tbaa !42
  %i.im = icmp eq i32 %.0332, 31
  %i.in = lshr i32 %.0332, 1
  %i.io = add nuw nsw i32 %i.in, 6
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = sub nuw nsw i64 63, %i.ip
  %i.ir = select i1 %i.im, i64 0, i64 %i.iq
  %i.is = shl i64 %.2341, %i.ir
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %bb.db
  %.0329 = phi ptr [ %i.il, %bb.db ], [ %i.ja, %bb.dd ] ; 6 uses
  %.0 = phi i64 [ %i.is, %bb.db ], [ %i.iz, %bb.dd ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0329, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !44
  %i.iv = and i64 %i.iu, -8
  %.not427 = icmp eq i64 %i.iv, %.2341
  br i1 %.not427, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iw = getelementptr inbounds nuw i8, ptr %.0329, i64 32 ; 2 uses
  %i.ix = lshr i64 %.0, 63                        ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = shl i64 %.0, 1
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !42 ; 2 uses
  %.not429 = icmp eq ptr %i.ja, null
  br i1 %.not429, label %bb.de, label %bb.dc

bb.de:                                            ; preds = %bb.dd
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix ; 2 uses
  %.not430 = icmp ult ptr %i.jb, %i.cw
  br i1 %.not430, label %bb.df, label %.thread, !prof !25

.thread:                                          ; preds = %bb.de
  store ptr %.1331, ptr %i.jb, align 8, !tbaa !42
  %i.jc = getelementptr inbounds nuw i8, ptr %.1331, i64 48
  store ptr %.0329, ptr %i.jc, align 8, !tbaa !45
  %i.jd = getelementptr inbounds nuw i8, ptr %.1331, i64 24
  store ptr %.1331, ptr %i.jd, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw i8, ptr %.1331, i64 16
  store ptr %.1331, ptr %i.je, align 8, !tbaa !47
  br label %.critedge445

bb.df:                                            ; preds = %bb.de
  tail call void @abort() #17
  unreachable

bb.dg:                                            ; preds = %bb.dc
  %i.jf = getelementptr inbounds nuw i8, ptr %.0329, i64 16 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !47 ; 3 uses
  %.not428 = icmp uge ptr %.0329, %i.cw
  %i.jh = icmp uge ptr %i.jg, %i.cw
  %spec.select = select i1 %.not428, i1 %i.jh, i1 false, !prof !27
  br i1 %spec.select, label %bb.dh, label %bb.di, !prof !27

bb.dh:                                            ; preds = %bb.dg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store ptr %.1331, ptr %i.ji, align 8, !tbaa !46
  store ptr %.1331, ptr %i.jf, align 8, !tbaa !47
  %i.jj = getelementptr inbounds nuw i8, ptr %.1331, i64 16
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !47
  %i.jk = getelementptr inbounds nuw i8, ptr %.1331, i64 24
  store ptr %.0329, ptr %i.jk, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %.1331, i64 48
  store ptr null, ptr %i.jl, align 8, !tbaa !45
  br label %.critedge445

bb.di:                                            ; preds = %bb.dg
  tail call void @abort() #17
  unreachable

bb.dj:                                            ; preds = %bb.av
  tail call void @abort() #17
  unreachable

.critedge445:                                     ; preds = %.thread, %bb.cp, %bb.at, %bb.c, %bb.d, %bb.cv, %bb.dh, %bb.da, %bb.ay, %bb.az, %bb.bb
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"malloc_params", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS12malloc_chunk", !12, i64 0}
!15 = !{!"p1 _ZTS14malloc_segment", !12, i64 0}
!16 = !{!"malloc_segment", !13, i64 0, !9, i64 8, !15, i64 16, !6, i64 24}
!17 = !{!"malloc_state", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 600, !9, i64 856, !9, i64 864, !9, i64 872, !6, i64 880, !6, i64 884, !16, i64 888, !12, i64 920, !9, i64 928}
!18 = !{!17, !6, i64 880}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!17, !6, i64 0}
!22 = !{!"malloc_chunk", !9, i64 0, !9, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!22, !14, i64 16}
!24 = !{!17, !13, i64 24}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!22, !14, i64 24}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!22, !9, i64 8}
!29 = !{!17, !9, i64 8}
!30 = !{!22, !9, i64 0}
!31 = !{!17, !14, i64 32}
!32 = !{!17, !6, i64 4}
!33 = !{!17, !9, i64 16}
!34 = !{!17, !14, i64 40}
!35 = !{!10, !9, i64 16}
!36 = !{!10, !9, i64 8}
!37 = !{!10, !9, i64 24}
!38 = !{!10, !9, i64 32}
!39 = !{!10, !6, i64 40}
!40 = !{!9, !9, i64 0}
!41 = !{!"p1 _ZTS17malloc_tree_chunk", !12, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"malloc_tree_chunk", !9, i64 0, !9, i64 8, !41, i64 16, !41, i64 24, !5, i64 32, !41, i64 48, !6, i64 56}
!44 = !{!43, !9, i64 8}
!45 = !{!43, !41, i64 48}
!46 = !{!43, !41, i64 24}
!47 = !{!43, !41, i64 16}
!48 = !{!43, !6, i64 56}
!49 = !{!17, !9, i64 872}
!50 = !{!17, !9, i64 856}
!51 = !{!17, !9, i64 864}
!52 = !{!17, !13, i64 888}
!53 = !{!17, !9, i64 896}
!54 = !{!17, !6, i64 912}
!55 = !{!17, !9, i64 64}
!56 = !{!17, !9, i64 56}
!57 = !{!17, !9, i64 48}
!58 = !{!16, !13, i64 0}
!59 = !{!16, !9, i64 8}
!60 = !{!16, !15, i64 16}
!61 = !{!16, !6, i64 24}
!62 = !{}
!63 = !{!12, !12, i64 0}
!64 = !{!"branch_weights", i32 4001, i32 4000000}
!65 = !{!"branch_weights", i32 6003000, i32 -294967296}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"p1 _ZTS20multialloc_node_impl", !12, i64 0}
!68 = !{!"multialloc_node_impl", !67, i64 0}
!69 = !{!"boost_cont_memchain_impl", !9, i64 0, !68, i64 8, !67, i64 16}
!70 = !{!69, !67, i64 8}
!71 = !{!68, !67, i64 0}
!72 = !{!69, !67, i64 16}
!73 = !{!69, !9, i64 0}
!74 = !{!17, !6, i64 884}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = !{!13, !13, i64 0}
!82 = !{!15, !15, i64 0}
!83 = !{i64 0, i64 8, !81, i64 8, i64 8, !40, i64 16, i64 8, !82, i64 24, i64 4, !19}
!84 = !{!17, !15, i64 904}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20, !96, !97}
!94 = distinct !{!94, !20, !97, !96}
!95 = distinct !{!95, !66}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !20}
!99 = !{!"branch_weights", i32 4000000, i32 4001}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, !66}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = distinct !{!111, !20}
!112 = distinct !{!112, !20}
!113 = distinct !{!113, i1 true, !"get_malloc_stats"}
!114 = distinct !{!114, !113, !"get_malloc_stats: argument 0"}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !20}
!117 = !{!114}
!118 = !{!"boost_cont_malloc_stats_impl", !9, i64 0, !9, i64 8, !9, i64 16}
!119 = !{!118, !9, i64 0}
!120 = !{!118, !9, i64 8}
!121 = !{!118, !9, i64 16}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !20}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
end_hunk_13
