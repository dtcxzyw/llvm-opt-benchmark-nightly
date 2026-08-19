inline.NumInlined: 63
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@free_StreamsInfo:bb.a
free_CodersInfo.exit:                             ; preds = %bb.a, %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.ao) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !177
  tail call void @free(ptr noundef %i.aq) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !178
  tail call void @free(ptr noundef %i.as) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_Header(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 9 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.f, align 1, !tbaa !39
  %.not325 = icmp eq i8 %i.h, 1
  br i1 %.not325, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.i, align 1, !tbaa !39    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %.preheader404, label %bb.i

.preheader404:                                    ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.m = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader404, %bb.g
  %i.o = phi ptr [ %i.t, %bb.g ], [ %i.m, %.preheader404 ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.g, %.preheader404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.t = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.v = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.h
  %.pr = load i8, ptr %i.v, align 1, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.e
  %i.x = phi i8 [ %.pr, %thread-pre-split ], [ %i.k, %bb.e ] ; 2 uses
  %i.y = icmp eq i8 %i.x, 4
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = tail call fastcc i32 @read_StreamsInfo(ptr noundef nonnull %0, ptr noundef %i.e)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %._crit_edge482.a

._crit_edge482.a:                                 ; preds = %bb.k
  %.pre = load i8, ptr %i.ab, align 1, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge482.a, %bb.i
  %i.ad = phi i8 [ %.pre, %._crit_edge482.a ], [ %i.x, %bb.i ]
  switch i8 %i.ad, label %bb.m [
    i8 0, label %.loopexit
    i8 5, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 11 uses
  %i.af = tail call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.ae)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !86 ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 100000000
  br i1 %i.ai, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.ah, i64 noundef 80) #19 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !62
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %.loopexit, label %.preheader402

.preheader402:                                    ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.am = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread375, label %.lr.ph429

.lr.ph429:                                        ; preds = %.preheader402
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph429, %.loopexit396
  %i.au = phi ptr [ %i.am, %.lr.ph429 ], [ %i.fg, %.loopexit396 ]
  %.0269428 = phi i32 [ 0, %.lr.ph429 ], [ %.3272, %.loopexit396 ] ; 15 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39  ; 3 uses
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = icmp eq i8 %i.av, 0
  br i1 %i.ax, label %bb.ba, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.thread375, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !68
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !40  ; 6 uses
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %.thread375, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i8 %i.av, label %.split [
    i8 14, label %bb.u
    i8 15, label %bb.x
    i8 16, label %bb.ac
    i8 18, label %bb.ah
    i8 19, label %bb.ah
    i8 20, label %bb.ah
    i8 17, label %bb.ai
    i8 21, label %bb.ap
    i8 25, label %bb.az
  ]

bb.u:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !81
  %.not338 = icmp eq ptr %i.bd, null
  br i1 %.not338, label %bb.v, label %.thread375

bb.v:                                             ; preds = %bb.u
  %i.be = load i64, ptr %i.ae, align 8, !tbaa !86 ; 2 uses
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 1) #19 ; 3 uses
  store ptr %i.bf, ptr %i.at, align 8, !tbaa !81
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread375, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = tail call fastcc i32 @read_Bools(ptr noundef nonnull %0, ptr noundef nonnull %i.bf, i64 noundef %i.be)
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread375, label %.preheader395

.preheader395:                                    ; preds = %bb.w
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !86 ; 6 uses
  %.not469 = icmp eq i64 %i.bj, 0
  br i1 %.not469, label %.loopexit396, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader395
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !81 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph427
  %i.bl = add i64 %i.bj, -1                       ; 2 uses
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = icmp eq i64 %i.bm, 4294967295
  %i.bo = icmp ugt i64 %i.bl, 4294967295
  %i.bp = or i1 %i.bn, %i.bo
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bj, 8589934584              ; 4 uses
  %3 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi555 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %wide.load = load <4 x i8>, ptr %i.bq, align 1, !tbaa !39
  %wide.load556 = load <4 x i8>, ptr %i.br, align 1, !tbaa !39
  %i.bs = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.bt = icmp ne <4 x i8> %wide.load556, zeroinitializer
  %i.bu = zext <4 x i1> %i.bs to <4 x i32>
  %i.bv = zext <4 x i1> %i.bt to <4 x i32>
  %i.bw = add <4 x i32> %vec.phi, %i.bu           ; 2 uses
  %i.bx = add <4 x i32> %vec.phi555, %i.bv        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.loopexit396, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph427, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph427 ], [ %n.vec, %middle.block ]
  %.1270426.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph427 ], [ %i.bz, %middle.block ]
  %.0277425.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph427 ], [ %3, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %5, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %.1270426 = phi i32 [ %spec.select, %scalar.ph ], [ %.1270426.ph, %scalar.ph.preheader ]
  %.1270426.a = phi i32 [ %4, %scalar.ph ], [ %.0277425.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.not339 = icmp ne i8 %i.cb, 0
  %i.cc = zext i1 %.not339 to i32
  %spec.select = add nuw nsw i32 %.1270426, %i.cc ; 2 uses
  %4 = add i32 %.1270426.a, 1                     ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.cd = icmp ugt i64 %i.bj, %5
  br i1 %i.cd, label %scalar.ph, label %.loopexit396, !llvm.loop !182

bb.x:                                             ; preds = %bb.t
  %i.ce = icmp slt i32 %.0269428, 1
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef %i.bb)
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.thread375, label %.loopexit396

bb.z:                                             ; preds = %bb.x
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not337 = icmp eq ptr %i.ch, null
  br i1 %.not337, label %bb.aa, label %.thread375

bb.aa:                                            ; preds = %bb.z
  %i.ci = zext nneg i32 %.0269428 to i64          ; 2 uses
  %i.cj = tail call noalias ptr @calloc(i64 noundef %i.ci, i64 noundef 1) #19 ; 3 uses
  store ptr %i.cj, ptr %i.as, align 8, !tbaa !83
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread375, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = tail call fastcc i32 @read_Bools(ptr noundef nonnull %0, ptr noundef nonnull %i.cj, i64 noundef %i.ci)
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %.thread375, label %.loopexit396

bb.ac:                                            ; preds = %bb.t
  %i.cn = icmp slt i32 %.0269428, 1
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef %i.bb)
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.thread375, label %.loopexit396

bb.ae:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !84
  %.not336 = icmp eq ptr %i.cq, null
  br i1 %.not336, label %bb.af, label %.thread375

bb.af:                                            ; preds = %bb.ae
  %i.cr = zext nneg i32 %.0269428 to i64          ; 2 uses
  %i.cs = tail call noalias ptr @calloc(i64 noundef %i.cr, i64 noundef 1) #19 ; 3 uses
  store ptr %i.cs, ptr %i.ar, align 8, !tbaa !84
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.thread375, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = tail call fastcc i32 @read_Bools(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, i64 noundef %i.cr)
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread375, label %.loopexit396

bb.ah:                                            ; preds = %bb.t, %bb.t, %bb.t
  %i.cw = tail call fastcc i32 @read_Times(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.aw)
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.thread375, label %.loopexit396

bb.ai:                                            ; preds = %bb.t
  %i.cy = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1)
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.thread375, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = add i64 %i.bb, -1                       ; 6 uses
  %i.db = and i64 %i.da, 1
  %.not330 = icmp eq i64 %i.db, 0
  br i1 %.not330, label %bb.ak, label %.thread375

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load i64, ptr %i.ae, align 8, !tbaa !86 ; 2 uses
  %i.dd = shl i64 %i.dc, 2
  %i.de = icmp ult i64 %i.da, %i.dd
  br i1 %i.de, label %.thread375, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %i.aq, align 8, !tbaa !120
  %.not331 = icmp eq ptr %i.df, null
  br i1 %.not331, label %bb.am, label %.thread375

bb.am:                                            ; preds = %bb.al
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.da) #21 ; 4 uses
  store ptr %i.dg, ptr %i.aq, align 8, !tbaa !120
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.thread375, label %.preheader398

.preheader398:                                    ; preds = %bb.am
  %.not332411 = icmp eq i64 %i.da, 0
  br i1 %.not332411, label %._crit_edge, label %.lr.ph414

.lr.ph414:                                        ; preds = %.preheader398, %bb.an
  %.0257413 = phi i64 [ %i.dk, %bb.an ], [ %i.da, %.preheader398 ] ; 2 uses
  %.0261412 = phi ptr [ %i.dj, %bb.an ], [ %i.dg, %.preheader398 ] ; 2 uses
  %..0257 = tail call i64 @llvm.umin.i64(i64 %.0257413, i64 65536) ; 4 uses
  %i.di = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef %..0257) ; 2 uses
  %.not335 = icmp eq ptr %i.di, null
  br i1 %.not335, label %.thread375, label %bb.an

bb.an:                                            ; preds = %.lr.ph414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0261412, ptr noundef nonnull align 1 dereferenceable(1) %i.di, i64 %..0257, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.0261412, i64 %..0257
  %i.dk = sub i64 %.0257413, %..0257              ; 2 uses
  %.not332 = icmp eq i64 %i.dk, 0
  br i1 %.not332, label %._crit_edge.loopexit, label %.lr.ph414, !llvm.loop !183

._crit_edge.loopexit:                             ; preds = %bb.an
  %.pre486.a = load ptr, ptr %i.aq, align 8, !tbaa !120
  %.pre487.a = load i64, ptr %i.ae, align 8, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader398
  %i.dl = phi i64 [ %.pre487.a, %._crit_edge.loopexit ], [ %i.dc, %.preheader398 ] ; 2 uses
  %i.dm = phi ptr [ %.pre486.a, %._crit_edge.loopexit ], [ %i.dg, %.preheader398 ]
  %.not468 = icmp eq i64 %i.dl, 0
  br i1 %.not468, label %.loopexit396, label %.lr.ph424

.lr.ph424:                                        ; preds = %._crit_edge, %.critedge
  %i.dn = phi i64 [ %i.ed, %.critedge ], [ 0, %._crit_edge ]
  %.0259422 = phi i64 [ %i.eb, %.critedge ], [ %i.da, %._crit_edge ] ; 2 uses
  %.2421 = phi ptr [ %i.ea, %.critedge ], [ %i.dm, %._crit_edge ] ; 3 uses
  %.1278420 = phi i32 [ %i.ec, %.critedge ], [ 0, %._crit_edge ]
  %i.do = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.2421, ptr %i.dp, align 8, !tbaa !100
  %i.dq = icmp ugt i64 %.0259422, 1
  br i1 %i.dq, label %.lr.ph418, label %.thread375

.lr.ph418:                                        ; preds = %.lr.ph424, %.critedge4
  %.1260416 = phi i64 [ %i.dv, %.critedge4 ], [ %.0259422, %.lr.ph424 ] ; 2 uses
  %.3415 = phi ptr [ %i.du, %.critedge4 ], [ %.2421, %.lr.ph424 ] ; 5 uses
  %i.dr = load i8, ptr %.3415, align 1, !tbaa !39
  %.not333 = icmp eq i8 %i.dr, 0
  br i1 %.not333, label %bb.ao, label %.critedge4

bb.ao:                                            ; preds = %.lr.ph418
  %i.ds = getelementptr inbounds nuw i8, ptr %.3415, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !39
  %.not334 = icmp eq i8 %i.dt, 0
  br i1 %.not334, label %.critedge, label %.critedge4

.critedge4:                                       ; preds = %.lr.ph418, %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %.3415, i64 2
  %i.dv = add i64 %.1260416, -2                   ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 1
  br i1 %i.dw, label %.lr.ph418, label %.thread375, !llvm.loop !184

.critedge:                                        ; preds = %bb.ao
  %i.dx = ptrtoint ptr %.3415 to i64
  %i.dy = ptrtoint ptr %.2421 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  store i64 %i.dz, ptr %i.do, align 8, !tbaa !101
  %i.ea = getelementptr inbounds nuw i8, ptr %.3415, i64 2
  %i.eb = add i64 %.1260416, -2
  %i.ec = add i32 %.1278420, 1                    ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = icmp ugt i64 %i.dl, %i.ed
  br i1 %i.ee, label %.lr.ph424, label %.loopexit396, !llvm.loop !185

bb.ap:                                            ; preds = %bb.t
  %i.ef = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 2) ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %.thread375, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !39
  %i.ei = load ptr, ptr %i.ap, align 8, !tbaa !85
  %.not327 = icmp eq ptr %i.ei, null
  br i1 %.not327, label %bb.ar, label %.thread375

bb.ar:                                            ; preds = %bb.aq
  %i.ej = load i64, ptr %i.ae, align 8, !tbaa !86 ; 4 uses
  %i.ek = tail call noalias ptr @calloc(i64 noundef %i.ej, i64 noundef 1) #19 ; 4 uses
  store ptr %i.ek, ptr %i.ap, align 8, !tbaa !85
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.thread375, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not328 = icmp eq i8 %i.eh, 0
  br i1 %.not328, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ek, i8 1, i64 %i.ej, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.em = tail call fastcc i32 @read_Bools(ptr noundef nonnull %0, ptr noundef nonnull %i.ek, i64 noundef %i.ej)
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %.thread375, label %._crit_edge483

._crit_edge483:                                   ; preds = %bb.au
  %.pre484.a = load i64, ptr %i.ae, align 8, !tbaa !86
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge483, %bb.at
  %i.eo = phi i64 [ %.pre484.a, %._crit_edge483 ], [ %i.ej, %bb.at ] ; 2 uses
  %.not467 = icmp eq i64 %i.eo, 0
  br i1 %.not467, label %.loopexit396, label %.lr.ph410

.lr.ph410:                                        ; preds = %bb.av, %bb.ay
end_hunk_0
begin_hunk_1_@read_StreamsInfo:bb.a
  %i.hv = icmp eq ptr %i.ht, null
  br i1 %i.hv, label %read_Folder.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge170.i.i
  %i.hw = icmp eq i64 %i.hr, 1
  br i1 %i.hw, label %.preheader152.i.i, label %.preheader153.i.i

.preheader153.i.i:                                ; preds = %bb.ay
  %.not195.i.i = icmp eq i64 %i.gl, %.lcssa158.i.i
  br i1 %.not195.i.i, label %.loopexit.i, label %.lr.ph173.i.i

.preheader152.i.i:                                ; preds = %bb.ay
  %.not196.i.i = icmp eq i64 %i.gl, 0
  %.not197.i.i = icmp eq i64 %.lcssa158.i.i, 0
  %or.cond227.i.i = or i1 %.not196.i.i, %.not197.i.i
  br i1 %or.cond227.i.i, label %._crit_edge181.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader152.i.i, %bb.bb
  %i.hx = phi i64 [ %i.ih, %bb.bb ], [ 0, %.preheader152.i.i ] ; 2 uses
  %.2180.us.i.i = phi i32 [ %i.ig, %bb.bb ], [ 0, %.preheader152.i.i ]
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %i.hy = add i32 %.0174.us.i.i, 1                ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 3 uses
  %i.ia = icmp ugt i64 %.lcssa158.i.i, %i.hz
  br i1 %i.ia, label %bb.ba, label %._crit_edge176.us.i.i, !llvm.loop !261

bb.ba:                                            ; preds = %bb.az, %.preheader.us.i.i
  %i.ib = phi i64 [ 0, %.preheader.us.i.i ], [ %i.hz, %bb.az ] ; 2 uses
  %.0174.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %i.hy, %bb.az ]
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.ib
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !157
  %i.ie = icmp eq i64 %i.id, %i.hx
  br i1 %i.ie, label %._crit_edge176.us.i.i, label %bb.az

._crit_edge176.us.i.i:                            ; preds = %bb.ba, %bb.az
  %.lcssa.us.i.i = phi i64 [ %i.ib, %bb.ba ], [ %i.hz, %bb.az ]
  %i.if = icmp eq i64 %.lcssa158.i.i, %.lcssa.us.i.i
  br i1 %i.if, label %._crit_edge181.i.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge176.us.i.i
  %i.ig = add i32 %.2180.us.i.i, 1                ; 2 uses
  %i.ih = zext i32 %i.ig to i64                   ; 3 uses
  %i.ii = icmp ugt i64 %i.gl, %i.ih
  br i1 %i.ii, label %.preheader.us.i.i, label %._crit_edge181.i.i, !llvm.loop !262

._crit_edge181.i.i:                               ; preds = %bb.bb, %._crit_edge176.us.i.i, %.preheader152.i.i
  %.lcssa157.i.i = phi i64 [ 0, %.preheader152.i.i ], [ %i.hx, %._crit_edge176.us.i.i ], [ %i.ih, %bb.bb ] ; 2 uses
  %i.ij = icmp eq i64 %i.gl, %.lcssa157.i.i
  br i1 %i.ij, label %read_Folder.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge181.i.i
  store i64 %.lcssa157.i.i, ptr %i.ht, align 8, !tbaa !40
  br label %.loopexit.i

bb.bd:                                            ; preds = %bb.be
  %i.ik = add i32 %.3172.i.i, 1                   ; 2 uses
  %i.il = zext i32 %i.ik to i64                   ; 2 uses
  %i.im = load i64, ptr %i.hs, align 8, !tbaa !143
  %i.in = icmp ugt i64 %i.im, %i.il
  br i1 %i.in, label %.lr.ph173.i.i, label %.loopexit.i, !llvm.loop !263

.lr.ph173.i.i:                                    ; preds = %.preheader153.i.i, %bb.bd
  %i.io = phi ptr [ %i.it, %bb.bd ], [ %i.ht, %.preheader153.i.i ]
  %i.ip = phi i64 [ %i.il, %bb.bd ], [ 0, %.preheader153.i.i ] ; 2 uses
  %.3172.i.i = phi i32 [ %i.ik, %bb.bd ], [ 0, %.preheader153.i.i ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.ir = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef %i.iq)
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %read_Folder.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph173.i.i
  %i.it = load ptr, ptr %i.hu, align 8, !tbaa !174 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.ip
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !40
  %i.iw = icmp ugt i64 %i.iv, 100000000
  br i1 %i.iw, label %read_Folder.exit.thread.i, label %bb.bd

.loopexit.i:                                      ; preds = %bb.bd, %bb.bc, %.preheader153.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store <2 x i64> %i.gd, ptr %i.ix, align 8, !tbaa !40
  %i.iy = add i32 %.05788.i, 1                    ; 2 uses
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = load i64, ptr %i.bx, align 8, !tbaa !171
  %i.jb = icmp ugt i64 %i.ja, %i.iz
  br i1 %i.jb, label %.lr.ph.i84, label %.loopexit82.i, !llvm.loop !264

bb.bf:                                            ; preds = %bb.x
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.jd = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef nonnull %i.jc)
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %read_CodersInfo.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jf = load i64, ptr %i.jc, align 8, !tbaa !265
  %i.jg = icmp ugt i64 %i.jf, 100000000
  br i1 %i.jg, label %read_CodersInfo.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = load i64, ptr %i.bx, align 8, !tbaa !171
  %.not69.i = icmp eq i64 %i.jh, 0
  br i1 %.not69.i, label %.loopexit82.i, label %read_Folder.exit.thread.sink.split.i

.loopexit82.i:                                    ; preds = %.loopexit.i, %bb.bh, %.preheader81.i
  %i.ji = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %read_Folder.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.loopexit82.i
  %i.jk = load i8, ptr %i.ji, align 1, !tbaa !39
  %.not70.i = icmp eq i8 %i.jk, 12
  br i1 %.not70.i, label %.preheader76.i, label %read_Folder.exit.thread.i

.preheader76.i:                                   ; preds = %bb.bi
  %i.jl = load i64, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
  %.not98.i = icmp eq i64 %i.jl, 0
  br i1 %.not98.i, label %._crit_edge93.i, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.preheader76.i
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i82, %.lr.ph92.i
  %i.jn = phi i64 [ %i.jl, %.lr.ph92.i ], [ %i.kf, %._crit_edge.i82 ]
  %i.jo = phi i64 [ 0, %.lr.ph92.i ], [ %i.kh, %._crit_edge.i82 ]
  %.191.i = phi i32 [ 0, %.lr.ph92.i ], [ %i.kg, %._crit_edge.i82 ]
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !170
  %i.jq = getelementptr inbounds nuw [104 x i8], ptr %i.jp, i64 %i.jo ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 56 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !147 ; 2 uses
  %i.jt = tail call noalias ptr @calloc(i64 noundef %i.js, i64 noundef 8) #19 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 64 ; 2 uses
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !153
  %i.jv = icmp eq ptr %i.jt, null
  br i1 %i.jv, label %read_Folder.exit.thread.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.bj
  %.not99.i = icmp eq i64 %i.js, 0
  br i1 %.not99.i, label %._crit_edge.i82, label %.lr.ph90.i

bb.bk:                                            ; preds = %.lr.ph90.i
  %i.jw = add i32 %.089.i, 1                      ; 2 uses
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = load i64, ptr %i.jr, align 8, !tbaa !147
  %i.jz = icmp ugt i64 %i.jy, %i.jx
  br i1 %i.jz, label %.lr.ph90.i, label %._crit_edge.loopexit.i, !llvm.loop !266

.lr.ph90.i:                                       ; preds = %.preheader75.i, %bb.bk
  %i.ka = phi i64 [ %i.jx, %bb.bk ], [ 0, %.preheader75.i ]
  %.089.i = phi i32 [ %i.jw, %bb.bk ], [ 0, %.preheader75.i ]
  %i.kb = load ptr, ptr %i.ju, align 8, !tbaa !153
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef %i.kc)
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %read_Folder.exit.thread.i, label %bb.bk

._crit_edge.loopexit.i:                           ; preds = %bb.bk
  %.pre.i = load i64, ptr %i.bx, align 8, !tbaa !171
  br label %._crit_edge.i82

._crit_edge.i82:                                  ; preds = %._crit_edge.loopexit.i, %.preheader75.i
  %i.kf = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.jn, %.preheader75.i ] ; 2 uses
  %i.kg = add i32 %.191.i, 1                      ; 2 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = icmp ugt i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.bj, label %._crit_edge93.i, !llvm.loop !267

._crit_edge93.i:                                  ; preds = %._crit_edge.i82, %.preheader76.i
  %i.kj = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %read_Folder.exit.thread.i, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge93.i
  %i.kl = load i8, ptr %i.kj, align 1, !tbaa !39
  switch i8 %i.kl, label %read_Folder.exit.thread.i [
    i8 0, label %read_CodersInfo.exit.thread100
    i8 10, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.km = load i64, ptr %i.bx, align 8, !tbaa !171
  %i.kn = call fastcc i32 @read_Digests(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.km)
  %i.ko = icmp slt i32 %i.kn, 0
  br i1 %i.ko, label %read_Folder.exit.thread.i, label %.preheader.i83

.preheader.i83:                                   ; preds = %bb.bm
  %i.kp = load i64, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
  %.not100.i = icmp eq i64 %i.kp, 0
  br i1 %.not100.i, label %._crit_edge96.i, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.preheader.i83
  %i.kq = load ptr, ptr %3, align 8, !tbaa !168
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !170
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !169
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph95.i
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph95.i ], [ %5, %bb.bn ] ; 3 uses
  %.294.i = phi i32 [ 0, %.lr.ph95.i ], [ %4, %bb.bn ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.i.a
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !39
  %i.kx = getelementptr inbounds nuw [104 x i8], ptr %i.ks, i64 %indvars.iv.i.a ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  store i8 %i.kw, ptr %i.ky, align 8, !tbaa !73
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i.a
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !79
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 76
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !76
  %4 = add i32 %.294.i, 1                         ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.lc = icmp ugt i64 %i.kp, %5
  br i1 %i.lc, label %bb.bn, label %._crit_edge96.i, !llvm.loop !268

._crit_edge96.i:                                  ; preds = %bb.bn, %.preheader.i83
  %i.ld = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %read_Folder.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge96.i
  %i.lf = load i8, ptr %i.ld, align 1, !tbaa !39
  %.not72.i = icmp eq i8 %i.lf, 0
  br i1 %.not72.i, label %read_CodersInfo.exit, label %read_Folder.exit.thread.i

read_Folder.exit.thread.sink.split.i:             ; preds = %bb.bh, %bb.x
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #18
  br label %read_Folder.exit.thread.i

read_Folder.exit.thread.i:                        ; preds = %._crit_edge181.i.i, %._crit_edge170.i.i, %bb.at, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.aa, %bb.z, %.lr.ph.i84, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ac, %bb.ab, %.lr.ph.i.i, %bb.ax, %bb.aw, %bb.av, %.lr.ph169.i.i, %bb.be, %.lr.ph173.i.i, %bb.bj, %.lr.ph90.i, %read_Folder.exit.thread.sink.split.i, %bb.bo, %._crit_edge96.i, %bb.bm, %bb.bl, %._crit_edge93.i, %bb.bi, %.loopexit82.i, %bb.w, %bb.u, %bb.t, %bb.s
  %i.lg = load ptr, ptr %3, align 8, !tbaa !168
  tail call void @free(ptr noundef %i.lg) #18
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.li) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.critedge

read_CodersInfo.exit.thread:                      ; preds = %bb.bf, %bb.v, %bb.bg, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.critedge

read_CodersInfo.exit:                             ; preds = %bb.bo
  %i.lj = load ptr, ptr %3, align 8, !tbaa !168
  tail call void @free(ptr noundef %i.lj) #18
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.ll) #18
  br label %read_CodersInfo.exit.thread100

read_CodersInfo.exit.thread100:                   ; preds = %bb.bl, %read_CodersInfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !187
  %i.lo = load i64, ptr %i.bx, align 8, !tbaa !140 ; 2 uses
  %.not133 = icmp eq i64 %i.lo, 0
  br i1 %.not133, label %._crit_edge131, label %.lr.ph130

.lr.ph130:                                        ; preds = %read_CodersInfo.exit.thread100
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bs
  %i.lq = add i32 %.158127, 1                     ; 2 uses
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = icmp ugt i64 %i.lo, %i.lr
  br i1 %i.ls, label %bb.bq, label %._crit_edge131, !llvm.loop !269

bb.bq:                                            ; preds = %.lr.ph130, %bb.bp
  %i.lt = phi i64 [ 0, %.lr.ph130 ], [ %i.lr, %bb.bp ]
  %.0128 = phi i32 [ 0, %.lr.ph130 ], [ %i.mc, %bb.bp ] ; 3 uses
  %.158127 = phi i32 [ 0, %.lr.ph130 ], [ %i.lq, %bb.bp ]
  %i.lu = getelementptr inbounds nuw [104 x i8], ptr %i.ln, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 88
  store i32 %.0128, ptr %i.lv, align 8, !tbaa !145
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !143 ; 2 uses
  %i.ly = icmp ugt i64 %i.lx, 4294967295
  br i1 %i.ly, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lz = trunc nuw i64 %i.lx to i32              ; 2 uses
  %i.ma = xor i32 %i.lz, -1
  %i.mb = icmp ugt i32 %.0128, %i.ma
  br i1 %i.mb, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mc = add i32 %.0128, %i.lz                   ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = load i64, ptr %i.lp, align 8, !tbaa !139
  %i.mf = icmp ult i64 %i.me, %i.md
  br i1 %i.mf, label %.critedge, label %bb.bp

._crit_edge131:                                   ; preds = %bb.bp, %read_CodersInfo.exit.thread100
  %i.mg = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not104 = icmp eq ptr %i.mg, null
  br i1 %.not104, label %.critedge, label %._crit_edge131._crit_edge

._crit_edge131._crit_edge:                        ; preds = %._crit_edge131
  %.pre = load i8, ptr %i.mg, align 1, !tbaa !39
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge131._crit_edge, %bb.r
  %i.mh = phi i8 [ %.pre, %._crit_edge131._crit_edge ], [ %i.bv, %bb.r ] ; 2 uses
  %i.mi = icmp eq i8 %i.mh, 8
  br i1 %i.mi, label %bb.bu, label %bb.cz

bb.bu:                                            ; preds = %bb.bt
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !187 ; 5 uses
  %i.mn = load i64, ptr %i.mk, align 8, !tbaa !140 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i8 0, i64 32, i1 false)
  %.not216.i = icmp eq i64 %i.mn, 0               ; 5 uses
  br i1 %.not216.i, label %._crit_edge.i88, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.bu, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ %7, %.lr.ph.i85 ], [ 0, %bb.bu ]
  %.0124177.i = phi i32 [ %6, %.lr.ph.i85 ], [ 0, %bb.bu ]
  %i.mo = getelementptr inbounds nuw [104 x i8], ptr %i.mm, i64 %indvars.iv.i86
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 80
  store i64 1, ptr %i.mp, align 8, !tbaa !190
  %6 = add i32 %.0124177.i, 1                     ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.mq = icmp ugt i64 %i.mn, %7
  br i1 %i.mq, label %.lr.ph.i85, label %._crit_edge.i88, !llvm.loop !270

._crit_edge.i88:                                  ; preds = %.lr.ph.i85, %bb.bu
  %i.mr = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i88
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !39  ; 2 uses
  %i.mu = icmp eq i8 %i.mt, 13
  br i1 %i.mu, label %.preheader171.i, label %bb.bz

.preheader171.i:                                  ; preds = %bb.bv
  br i1 %.not216.i, label %._crit_edge181.i, label %.lr.ph180.i

.lr.ph180.i:                                      ; preds = %.preheader171.i, %bb.bx
  %i.mv = phi i64 [ %i.nf, %bb.bx ], [ 0, %.preheader171.i ]
  %.1125179.i = phi i32 [ %i.ne, %bb.bx ], [ 0, %.preheader171.i ]
  %.0131178.i = phi i64 [ %i.nd, %bb.bx ], [ 0, %.preheader171.i ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [104 x i8], ptr %i.mm, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 80 ; 2 uses
  %i.my = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef nonnull %i.mx)
  %i.mz = icmp slt i32 %i.my, 0
  br i1 %i.mz, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph180.i
  %i.na = load i64, ptr %i.mx, align 8, !tbaa !190 ; 2 uses
  %i.nb = icmp ugt i64 %i.na, 100000000
  %i.nc = icmp ugt i64 %.0131178.i, -100000001
  %or.cond160.i = select i1 %i.nb, i1 true, i1 %i.nc
  br i1 %or.cond160.i, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nd = add nuw i64 %i.na, %.0131178.i          ; 2 uses
  %i.ne = add i32 %.1125179.i, 1                  ; 2 uses
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = icmp ugt i64 %i.mn, %i.nf
  br i1 %i.ng, label %.lr.ph180.i, label %._crit_edge181.i, !llvm.loop !271

._crit_edge181.i:                                 ; preds = %bb.bx, %.preheader171.i
  %.0131.lcssa.i = phi i64 [ 0, %.preheader171.i ], [ %i.nd, %bb.bx ]
  %i.nh = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %.critedge, label %bb.by

bb.by:                                            ; preds = %._crit_edge181.i
  %i.nj = load i8, ptr %i.nh, align 1, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.1132.i = phi i64 [ %.0131.lcssa.i, %bb.by ], [ %i.mn, %bb.bv ] ; 6 uses
  %.0127.in.i = phi i8 [ %i.nj, %bb.by ], [ %i.mt, %bb.bv ] ; 3 uses
  store i64 %.1132.i, ptr %i.mj, align 8, !tbaa !272
  %.not.i89 = icmp eq i64 %.1132.i, 0             ; 2 uses
  br i1 %.not.i89, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nk = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 8) #19 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !176
  %i.nm = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 1) #19 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !177
  %i.no = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 4) #19 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.no, ptr %i.np, align 8, !tbaa !178
  %i.nq = icmp eq ptr %i.nk, null
  br i1 %i.nq, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nr = icmp eq ptr %i.nm, null
  %i.ns = icmp eq ptr %i.no, null
  %or.cond.i90 = or i1 %i.nr, %i.ns
  br i1 %or.cond.i90, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  br i1 %.not216.i, label %._crit_edge192.i, label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %bb.cc
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !176
  %i.nv = icmp ne i8 %.0127.in.i, 9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ck, %.lr.ph191.i
  %i.nw = phi i64 [ 0, %.lr.ph191.i ], [ %i.pm, %bb.ck ]
  %.2126189.i = phi i32 [ 0, %.lr.ph191.i ], [ %i.pl, %bb.ck ]
  %.0133188.i = phi ptr [ %i.nu, %.lr.ph191.i ], [ %.3136.i, %bb.ck ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [104 x i8], ptr %i.mm, i64 %i.nw ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 80 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !190 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not260.i = icmp eq i64 %i.nz, 1
  %or.cond270.i = or i1 %i.nv, %.not260.i
  br i1 %or.cond270.i, label %.loopexit169.i, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %bb.ce, %bb.cg
  %.0117184.i = phi i64 [ %i.oh, %bb.cg ], [ 0, %bb.ce ] ; 2 uses
  %.0119183.i = phi i32 [ %i.oi, %bb.cg ], [ 1, %bb.ce ]
  %.1134182.i = phi ptr [ %i.og, %bb.cg ], [ %.0133188.i, %bb.ce ] ; 3 uses
  %i.ob = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef %.1134182.i)
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %.critedge, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph185.i
  %i.od = load i64, ptr %.1134182.i, align 8, !tbaa !40 ; 2 uses
  %i.oe = xor i64 %.0117184.i, -1
  %i.of = icmp ugt i64 %i.od, %i.oe
  br i1 %i.of, label %.critedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.og = getelementptr inbounds nuw i8, ptr %.1134182.i, i64 8 ; 2 uses
  %i.oh = add i64 %i.od, %.0117184.i              ; 2 uses
  %i.oi = add i32 %.0119183.i, 1                  ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = load i64, ptr %i.ny, align 8, !tbaa !190
  %i.ol = icmp ugt i64 %i.ok, %i.oj
  br i1 %i.ol, label %.lr.ph185.i, label %.loopexit169.i, !llvm.loop !273

.loopexit169.i:                                   ; preds = %bb.cg, %bb.ce
  %.2135.i = phi ptr [ %.0133188.i, %bb.ce ], [ %i.og, %bb.cg ] ; 2 uses
  %.1118.i = phi i64 [ 0, %bb.ce ], [ %i.oh, %bb.cg ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nx, i64 56
  %i.on = load i64, ptr %i.om, align 8, !tbaa !147
  %i.oo = trunc i64 %i.on to i32                  ; 2 uses
  %i.op = add i32 %i.oo, -1                       ; 2 uses
  %i.oq = icmp sgt i32 %i.oo, 0
  br i1 %i.oq, label %.preheader.lr.ph.i.i, label %folder_uncompressed_size.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.loopexit169.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.os = load i64, ptr %i.or, align 8, !tbaa !148
  %i.ot = and i64 %i.os, 4294967295               ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i94, label %.thread18.i.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !149
  %i.ow = zext nneg i32 %i.op to i64
  br label %.preheader.us.i.i95

.preheader.us.i.i95:                              ; preds = %.loopexit.us.i.i, %.preheader.lr.ph.split.us.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i, %.loopexit.us.i.i ], [ %i.ow, %.preheader.lr.ph.split.us.i.i ] ; 4 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ci
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ot
  br i1 %exitcond.not.i.i, label %.thread18.loopexit.i.i, label %bb.ci, !llvm.loop !150

bb.ci:                                            ; preds = %bb.ch, %.preheader.us.i.i95
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i95 ], [ %indvars.iv.next.i.i, %bb.ch ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.ov, i64 %indvars.iv.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !151
  %i.pa = icmp eq i64 %i.oz, %indvars.iv26.i.i
  br i1 %i.pa, label %.loopexit.us.i.i, label %bb.ch

.loopexit.us.i.i:                                 ; preds = %bb.ci
  %indvars.iv.next27.i.i = add nsw i64 %indvars.iv26.i.i, -1
  %i.pb = icmp sgt i64 %indvars.iv26.i.i, 0
  br i1 %i.pb, label %.preheader.us.i.i95, label %folder_uncompressed_size.exit.i

.thread18.loopexit.i.i:                           ; preds = %bb.ch
  %i.pc = trunc nuw nsw i64 %indvars.iv26.i.i to i32
  br label %.thread18.i.i

.thread18.i.i:                                    ; preds = %.thread18.loopexit.i.i, %.preheader.lr.ph.i.i
  %.lcssa21.i.i = phi i32 [ %i.op, %.preheader.lr.ph.i.i ], [ %i.pc, %.thread18.loopexit.i.i ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !153
  %i.pf = zext nneg i32 %.lcssa21.i.i to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !40
  br label %folder_uncompressed_size.exit.i

folder_uncompressed_size.exit.i:                  ; preds = %.loopexit.us.i.i, %.thread18.i.i, %.loopexit169.i
  %.2.i.i = phi i64 [ %i.ph, %.thread18.i.i ], [ 0, %.loopexit169.i ], [ 0, %.loopexit.us.i.i ] ; 2 uses
  %i.pi = icmp ult i64 %.2.i.i, %.1118.i
  br i1 %i.pi, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %folder_uncompressed_size.exit.i
  %i.pj = sub nuw i64 %.2.i.i, %.1118.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.2135.i, i64 8
  store i64 %i.pj, ptr %.2135.i, align 8, !tbaa !40
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cd
  %.3136.i = phi ptr [ %i.pk, %bb.cj ], [ %.0133188.i, %bb.cd ]
  %i.pl = add i32 %.2126189.i, 1                  ; 2 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = icmp ugt i64 %i.mn, %i.pm
  br i1 %i.pn, label %bb.cd, label %._crit_edge192.i, !llvm.loop !274

._crit_edge192.i:                                 ; preds = %bb.ck, %bb.cc
  %i.po = icmp eq i8 %.0127.in.i, 9
  br i1 %i.po, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %._crit_edge192.i
  %i.pp = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pr = load i8, ptr %i.pp, align 1, !tbaa !39
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge192.i
  %.1128.in.i = phi i8 [ %i.pr, %bb.cm ], [ %.0127.in.i, %._crit_edge192.i ] ; 2 uses
  br i1 %.not.i89, label %.preheader167.i, label %.lr.ph195.i

.lr.ph195.i:                                      ; preds = %bb.cn
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.co

.preheader167.i:                                  ; preds = %bb.co, %bb.cn
  br i1 %.not216.i, label %._crit_edge199.i, label %.lr.ph198.i

bb.co:                                            ; preds = %bb.co, %.lr.ph195.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph195.i ], [ %9, %bb.co ] ; 2 uses
  %.3193.i = phi i32 [ 0, %.lr.ph195.i ], [ %8, %bb.co ]
  %i.pu = load ptr, ptr %i.ps, align 8, !tbaa !177
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %indvars.iv232.i
  store i8 0, ptr %i.pv, align 1, !tbaa !39
  %i.pw = load ptr, ptr %i.pt, align 8, !tbaa !178
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv232.i
  store i32 0, ptr %i.px, align 4, !tbaa !79
  %8 = add i32 %.3193.i, 1                        ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.py = icmp ugt i64 %.1132.i, %9
  br i1 %i.py, label %bb.co, label %.preheader167.i, !llvm.loop !275

.lr.ph198.i:                                      ; preds = %.preheader167.i, %bb.cr
  %indvars.iv236.i = phi i64 [ %11, %bb.cr ], [ 0, %.preheader167.i ]
  %.0122197.i = phi i32 [ %.1123.i, %bb.cr ], [ 0, %.preheader167.i ] ; 2 uses
  %.0122197.i.a = phi i32 [ %10, %bb.cr ], [ 0, %.preheader167.i ]
  %i.pz = getelementptr inbounds nuw [104 x i8], ptr %i.mm, i64 %indvars.iv236.i ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 80
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !190 ; 2 uses
  %.not158.i = icmp eq i64 %i.qb, 1
  br i1 %.not158.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph198.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 72
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !73
  %.not159.i = icmp eq i8 %i.qd, 0
  br i1 %.not159.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %.lr.ph198.i
  %i.qe = trunc i64 %i.qb to i32
  %i.qf = add i32 %.0122197.i, %i.qe
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1123.i = phi i32 [ %i.qf, %bb.cq ], [ %.0122197.i, %bb.cp ] ; 2 uses
  %10 = add i32 %.0122197.i.a, 1                  ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.qg = icmp ugt i64 %i.mn, %11
  br i1 %i.qg, label %.lr.ph198.i, label %._crit_edge199.loopexit.i, !llvm.loop !276

._crit_edge199.loopexit.i:                        ; preds = %bb.cr
  %i.qh = zext i32 %.1123.i to i64
  br label %._crit_edge199.i

._crit_edge199.i:                                 ; preds = %._crit_edge199.loopexit.i, %.preheader167.i
  %.0122.lcssa.i = phi i64 [ 0, %.preheader167.i ], [ %i.qh, %._crit_edge199.loopexit.i ]
  %i.qi = icmp eq i8 %.1128.in.i, 10
  br i1 %i.qi, label %bb.cs, label %read_SubStreamsInfo.exit

bb.cs:                                            ; preds = %._crit_edge199.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !177
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.qn = call fastcc i32 @read_Digests(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %.0122.lcssa.i)
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %bb.ct, label %.preheader.i92

.preheader.i92:                                   ; preds = %bb.cs
  br i1 %.not216.i, label %._crit_edge215.i, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %.preheader.i92
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qq = load ptr, ptr %2, align 8, !tbaa !168
  tail call void @free(ptr noundef %i.qq) #18
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.qs) #18
  br label %.thread164.i

bb.cu:                                            ; preds = %.loopexit.i93, %.lr.ph214.i
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph214.i ], [ %13, %.loopexit.i93 ]
  %.0110213.i = phi i32 [ 0, %.lr.ph214.i ], [ %.2.i, %.loopexit.i93 ] ; 3 uses
  %.0111212.i = phi ptr [ %i.qm, %.lr.ph214.i ], [ %.2113.i, %.loopexit.i93 ] ; 4 uses
  %.0114211.i = phi ptr [ %i.qk, %.lr.ph214.i ], [ %.2116.i, %.loopexit.i93 ] ; 4 uses
  %.5210.i = phi i32 [ 0, %.lr.ph214.i ], [ %12, %.loopexit.i93 ]
  %i.qt = getelementptr inbounds nuw [104 x i8], ptr %i.mm, i64 %indvars.iv244.i ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 80 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !190
  switch i64 %i.qv, label %.lr.ph206.preheader.i [
    i64 1, label %bb.cv
    i64 0, label %.loopexit.i93
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 72
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !73
  %.not156.i = icmp eq i8 %i.qx, 0
  br i1 %.not156.i, label %.lr.ph206.preheader.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qy = getelementptr inbounds nuw i8, ptr %.0114211.i, i64 1
  store i8 1, ptr %.0114211.i, align 1, !tbaa !39
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 76
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !76
  %i.rb = getelementptr inbounds nuw i8, ptr %.0111212.i, i64 4
  store i32 %i.ra, ptr %.0111212.i, align 4, !tbaa !79
  br label %.loopexit.i93

.lr.ph206.preheader.i:                            ; preds = %bb.cv, %bb.cu
  %i.rc = sext i32 %.0110213.i to i64
  br label %.lr.ph206.i

.lr.ph206.i:                                      ; preds = %.lr.ph206.i, %.lr.ph206.preheader.i
  %indvars.iv240.i = phi i64 [ %i.rc, %.lr.ph206.preheader.i ], [ %indvars.iv.next241.i, %.lr.ph206.i ] ; 3 uses
  %.0204.i = phi i32 [ 0, %.lr.ph206.preheader.i ], [ %i.rl, %.lr.ph206.i ]
  %.1112202.i = phi ptr [ %.0111212.i, %.lr.ph206.preheader.i ], [ %i.rk, %.lr.ph206.i ] ; 2 uses
  %.1115201.i = phi ptr [ %.0114211.i, %.lr.ph206.preheader.i ], [ %i.rg, %.lr.ph206.i ] ; 2 uses
  %i.rd = load ptr, ptr %2, align 8, !tbaa !168
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 %indvars.iv240.i
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !39
  %i.rg = getelementptr inbounds nuw i8, ptr %.1115201.i, i64 1 ; 2 uses
  store i8 %i.rf, ptr %.1115201.i, align 1, !tbaa !39
  %i.rh = load ptr, ptr %i.qp, align 8, !tbaa !169
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %indvars.iv240.i
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !79
  %i.rk = getelementptr inbounds nuw i8, ptr %.1112202.i, i64 4 ; 2 uses
  store i32 %i.rj, ptr %.1112202.i, align 4, !tbaa !79
  %i.rl = add i32 %.0204.i, 1                     ; 2 uses
  %indvars.iv.next241.i = add nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %i.rm = zext i32 %i.rl to i64
  %i.rn = load i64, ptr %i.qu, align 8, !tbaa !190
  %i.ro = icmp ugt i64 %i.rn, %i.rm
  br i1 %i.ro, label %.lr.ph206.i, label %.loopexit.loopexit.i, !llvm.loop !277

.loopexit.loopexit.i:                             ; preds = %.lr.ph206.i
  %i.rp = trunc nsw i64 %indvars.iv.next241.i to i32
  br label %.loopexit.i93

.loopexit.i93:                                    ; preds = %.loopexit.loopexit.i, %bb.cw, %bb.cu
  %.2116.i = phi ptr [ %i.qy, %bb.cw ], [ %.0114211.i, %bb.cu ], [ %i.rg, %.loopexit.loopexit.i ]
  %.2113.i = phi ptr [ %i.rb, %bb.cw ], [ %.0111212.i, %bb.cu ], [ %i.rk, %.loopexit.loopexit.i ]
  %.2.i = phi i32 [ %.0110213.i, %bb.cw ], [ %.0110213.i, %bb.cu ], [ %i.rp, %.loopexit.loopexit.i ]
  %12 = add i32 %.5210.i, 1                       ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.rq = icmp ugt i64 %i.mn, %13
  br i1 %i.rq, label %bb.cu, label %._crit_edge215.i, !llvm.loop !278

._crit_edge215.i:                                 ; preds = %.loopexit.i93, %.preheader.i92
  %i.rr = load ptr, ptr %2, align 8, !tbaa !168
  tail call void @free(ptr noundef %i.rr) #18
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.rt) #18
  %i.ru = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %.thread164.i, label %bb.cx

.thread164.i:                                     ; preds = %._crit_edge215.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.critedge

bb.cx:                                            ; preds = %._crit_edge215.i
  %i.rw = load i8, ptr %i.ru, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %read_SubStreamsInfo.exit

read_SubStreamsInfo.exit:                         ; preds = %._crit_edge199.i, %bb.cx
  %.3130.in.i = phi i8 [ %i.rw, %bb.cx ], [ %.1128.in.i, %._crit_edge199.i ]
  %.not157.i.not = icmp eq i8 %.3130.in.i, 0
  br i1 %.not157.i.not, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %read_SubStreamsInfo.exit
  %i.rx = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %.critedge, label %._crit_edge154

._crit_edge154:                                   ; preds = %bb.cy
  %.pre155 = load i8, ptr %i.rx, align 1, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge154, %bb.bt
  %i.rz = phi i8 [ %.pre155, %._crit_edge154 ], [ %i.mh, %bb.bt ]
  %.not = icmp ne i8 %i.rz, 0
  %.80 = sext i1 %.not to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %bb.q, %bb.p, %bb.bs, %bb.bq, %bb.br, %bb.bw, %.lr.ph180.i, %folder_uncompressed_size.exit.i, %.lr.ph185.i, %bb.cf, %.split, %read_Folder.exit.thread.i, %bb.ca, %bb.cl, %._crit_edge181.i, %bb.cb, %._crit_edge.i88, %.thread164.i, %bb.g, %bb.k, %._crit_edge.i, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.l, %read_CodersInfo.exit.thread, %read_PackInfo.exit, %read_PackInfo.exit.thread97, %bb.m, %bb.cz, %bb.cy, %read_SubStreamsInfo.exit, %bb.a, %._crit_edge, %._crit_edge131
  %.364 = phi i32 [ -1, %._crit_edge ], [ -1, %._crit_edge181.i ], [ -1, %read_SubStreamsInfo.exit ], [ %.80, %bb.cz ], [ -1, %bb.cy ], [ -1, %._crit_edge131 ], [ -1, %bb.a ], [ -1, %bb.m ], [ -1, %bb.bs ], [ -1, %read_PackInfo.exit.thread97 ], [ -1, %read_PackInfo.exit ], [ -1, %bb.cl ], [ -1, %bb.ca ], [ -1, %read_Folder.exit.thread.i ], [ -1, %.split ], [ -1, %bb.g ], [ -1, %read_CodersInfo.exit.thread ], [ -1, %bb.l ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %._crit_edge.i ], [ -1, %bb.k ], [ -1, %.lr.ph185.i ], [ -1, %.thread164.i ], [ -1, %._crit_edge.i88 ], [ -1, %folder_uncompressed_size.exit.i ], [ -1, %bb.bw ], [ -1, %bb.cb ], [ -1, %bb.q ], [ -1, %bb.cf ], [ -1, %.lr.ph180.i ], [ -1, %bb.br ], [ -1, %bb.bq ], [ -1, %bb.p ], [ -1, %.lr.ph.i ]
  ret i32 %.364
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_7zip_uint64(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !39    ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !40
  %i.d = zext i8 %i.c to i32                      ; 8 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.e, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8, !tbaa !40
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  store i64 %i.j, ptr %1, align 8, !tbaa !40
  %i.k = and i32 %i.d, 64
  %.not.1 = icmp eq i32 %i.k, 0
  br i1 %.not.1, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.l, align 1, !tbaa !39
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = load i64, ptr %1, align 8, !tbaa !40
  %i.r = or i64 %i.p, %i.q                        ; 2 uses
  store i64 %i.r, ptr %1, align 8, !tbaa !40
  %i.s = and i32 %i.d, 32
  %.not.2 = icmp eq i32 %i.s, 0
  br i1 %.not.2, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.t, align 1, !tbaa !39
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 16
  %i.y = load i64, ptr %1, align 8, !tbaa !40
  %i.z = or i64 %i.x, %i.y                        ; 2 uses
  store i64 %i.z, ptr %1, align 8, !tbaa !40
  %i.aa = and i32 %i.d, 16
  %.not.3 = icmp eq i32 %i.aa, 0
  br i1 %.not.3, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = load i64, ptr %1, align 8, !tbaa !40
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  store i64 %i.ah, ptr %1, align 8, !tbaa !40
  %i.ai = and i32 %i.d, 8
  %.not.4 = icmp eq i32 %i.ai, 0
  br i1 %.not.4, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !39
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = load i64, ptr %1, align 8, !tbaa !40
  %i.ap = or i64 %i.an, %i.ao                     ; 2 uses
  store i64 %i.ap, ptr %1, align 8, !tbaa !40
  %i.aq = and i32 %i.d, 4
  %.not.5 = icmp eq i32 %i.aq, 0
  br i1 %.not.5, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !39
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 40
  %i.aw = load i64, ptr %1, align 8, !tbaa !40
  %i.ax = or i64 %i.av, %i.aw                     ; 2 uses
  store i64 %i.ax, ptr %1, align 8, !tbaa !40
  %i.ay = and i32 %i.d, 2
  %.not.6 = icmp eq i32 %i.ay, 0
  br i1 %.not.6, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !39
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 48
  %i.be = load i64, ptr %1, align 8, !tbaa !40
  %i.bf = or i64 %i.bd, %i.be                     ; 2 uses
  store i64 %i.bf, ptr %1, align 8, !tbaa !40
  %i.bg = and i32 %i.d, 1
  %.not.7 = icmp eq i32 %i.bg, 0
  br i1 %.not.7, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !39
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw i64 %i.bk, 56
  %i.bm = load i64, ptr %1, align 8, !tbaa !40
  %i.bn = or i64 %i.bl, %i.bm
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %i.bo = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.r, %bb.f ], [ %i.z, %bb.h ], [ %i.ah, %bb.j ], [ %i.ap, %bb.l ], [ %i.ax, %bb.n ], [ %i.bf, %bb.p ]
  %.023.lcssa.wide = phi i64 [ 0, %bb.b ], [ 8, %bb.d ], [ 16, %bb.f ], [ 24, %bb.h ], [ 32, %bb.j ], [ 40, %bb.l ], [ 48, %bb.n ], [ 56, %bb.p ]
  %.01622.lcssa = phi i32 [ 383, %bb.b ], [ 319, %bb.d ], [ 287, %bb.f ], [ 271, %bb.h ], [ 263, %bb.j ], [ 259, %bb.l ], [ 257, %bb.n ], [ 256, %bb.p ]
  %i.bp = and i32 %.01622.lcssa, %i.d
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, %.023.lcssa.wide
  %i.bs = add i64 %i.bo, %i.br
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.s, %bb.r
  %.sink = phi i64 [ %i.bn, %bb.r ], [ %i.bs, %bb.s ]
  store i64 %.sink, ptr %1, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.a
end_hunk_1
