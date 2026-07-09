inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_mark_and_move:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 4 uses
  %i.q = getelementptr i8, ptr %i.j, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.j, i64 252
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [16 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 256      ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %.not17.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i, label %.preheader5.i, label %.lr.ph.i

.preheader5.i:                                    ; preds = %bb.g, %bb.e
  %.0.lcssa.i = phi ptr [ %i.v, %bb.e ], [ %i.af, %bb.g ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 248      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not18.i = icmp eq i32 %i.z, 0
  br i1 %.not18.i, label %.preheader4.i, label %.lr.ph10.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.aa = phi i32 [ %i.ad, %bb.g ], [ %i.x, %bb.e ]
  %.07.i = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %.0446.i = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.e ]
  %i.ab = load ptr, ptr %.07.i, align 8, !tbaa !115 ; 2 uses
  %.not56.i = icmp eq ptr %i.ab, null
  br i1 %.not56.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ac) #20
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ad = phi i32 [ %.pre.i, %bb.f ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ae = add nuw i32 %.0446.i, 1                 ; 2 uses
  %i.af = getelementptr i8, ptr %.07.i, i64 16    ; 2 uses
  %i.ag = icmp ult i32 %i.ae, %i.ad
  br i1 %i.ag, label %.lr.ph.i, label %.preheader5.i, !llvm.loop !118

.preheader4.i:                                    ; preds = %bb.i, %.preheader5.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader5.i ], [ %i.ao, %bb.i ]
  %i.ah = getelementptr i8, ptr %i.j, i64 244     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %.not19.i = icmp eq i32 %i.ai, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph14.i

.lr.ph10.i:                                       ; preds = %.preheader5.i, %bb.i
  %i.aj = phi i32 [ %i.am, %bb.i ], [ %i.z, %.preheader5.i ]
  %.19.i = phi ptr [ %i.ao, %bb.i ], [ %.0.lcssa.i, %.preheader5.i ] ; 2 uses
  %.0468.i = phi i32 [ %i.an, %bb.i ], [ 0, %.preheader5.i ]
  %i.ak = getelementptr i8, ptr %.19.i, i64 8     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90
  %.not55.i = icmp eq i64 %i.al, 0
  br i1 %.not55.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph10.i
  tail call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ak) #20
  %.pre30.i = load i32, ptr %i.y, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph10.i
  %i.am = phi i32 [ %.pre30.i, %bb.h ], [ %i.aj, %.lr.ph10.i ] ; 2 uses
  %i.an = add nuw i32 %.0468.i, 1                 ; 2 uses
  %i.ao = getelementptr i8, ptr %.19.i, i64 16    ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.am
  br i1 %i.ap, label %.lr.ph10.i, label %.preheader4.i, !llvm.loop !119

.lr.ph14.i:                                       ; preds = %.preheader4.i, %bb.m
  %i.aq = phi i32 [ %i.ax, %bb.m ], [ %i.ai, %.preheader4.i ]
  %.213.i = phi ptr [ %i.az, %bb.m ], [ %.1.lcssa.i, %.preheader4.i ] ; 4 uses
  %.04512.i = phi i32 [ %i.ay, %bb.m ], [ 0, %.preheader4.i ]
  %i.ar = load ptr, ptr %.213.i, align 8, !tbaa !120 ; 2 uses
  %.not53.i = icmp eq ptr %i.ar, null
  br i1 %.not53.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.as = ptrtoint ptr %i.ar to i64
  store i64 %i.as, ptr %i.a, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.a) #20
  %i.at = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.au = load ptr, ptr %.213.i, align 8, !tbaa !120
  %i.av = ptrtoint ptr %i.au to i64
  %.not54.i = icmp eq i64 %i.at, %i.av
  br i1 %.not54.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = inttoptr i64 %i.at to ptr
  store ptr %i.aw, ptr %.213.i, align 8, !tbaa !120
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre31.i = load i32, ptr %i.ah, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph14.i
  %i.ax = phi i32 [ %.pre31.i, %bb.l ], [ %i.aq, %.lr.ph14.i ] ; 2 uses
  %i.ay = add nuw i32 %.04512.i, 1                ; 2 uses
  %i.az = getelementptr i8, ptr %.213.i, i64 16
  %i.ba = icmp ult i32 %i.ay, %i.ax
  br i1 %i.ba, label %.lr.ph14.i, label %.loopexit.i, !llvm.loop !121

.loopexit.i:                                      ; preds = %bb.m, %.preheader4.i, %bb.d
  %i.bb = getelementptr i8, ptr %i.j, i64 280     ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not52.i = icmp eq ptr %i.bc, null
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  br i1 %.not52.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.be = zext i32 %i.n to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 3 uses
  switch i64 %i.bg, label %.lr.ph16.i [
    i64 1, label %.lr.ph.i.i
    i64 0, label %rb_iseq_mark_and_move_each_body_value.exit
  ]

.lr.ph16.i:                                       ; preds = %bb.n
  %.not22.i59.i = icmp eq ptr %i.l, null
  br i1 %.not22.i59.i, label %.lr.ph16.split.us.i, label %.lr.ph16.split.i

.lr.ph16.split.us.i:                              ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %iseq_scan_bits.exit69.us.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv26.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.us.i = icmp eq i64 %i.bj, 0
  br i1 %.not24.i57.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.i58.us.i

.lr.ph.i58.us.i:                                  ; preds = %.lr.ph16.split.us.i
  %invariant.gep.i.us.idx.i = shl i64 %indvars.iv26.i, 9
  %invariant.gep.i.us.i = getelementptr i8, ptr %i.p, i64 %invariant.gep.i.us.idx.i
  br label %.lr.ph.split.us.i65.us.i

.lr.ph.split.us.i65.us.i:                         ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph.i58.us.i
  %.025.us.i66.us.i = phi i64 [ %i.bm, %.lr.ph.split.us.i65.us.i ], [ %i.bj, %.lr.ph.i58.us.i ] ; 3 uses
  %i.bk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i66.us.i, i1 true)
  %gep.i67.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %i.bk
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i67.us.i) #20
  %i.bl = add i64 %.025.us.i66.us.i, -1
  %i.bm = and i64 %i.bl, %.025.us.i66.us.i        ; 2 uses
  %.not.us.i68.us.i = icmp eq i64 %i.bm, 0
  br i1 %.not.us.i68.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.split.us.i65.us.i, !llvm.loop !122

iseq_scan_bits.exit69.us.i:                       ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph16.split.us.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, %i.bg
  br i1 %exitcond29.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.us.i, !llvm.loop !123

.lr.ph.i.i:                                       ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %i.l, null
  br i1 %.not22.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.025.us.i.i = phi i64 [ %i.bp, %.lr.ph.split.us.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i, i1 true)
  %gep.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.bn
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i) #20
  %i.bo = add i64 %.025.us.i.i, -1
  %i.bp = and i64 %i.bo, %.025.us.i.i             ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.us.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.us.i.i, !llvm.loop !122

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.p
  %.025.i.i = phi i64 [ %i.bw, %bb.p ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i, i1 true) ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %i.bq ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.br) #20
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.bt, %i.bs
  br i1 %.not23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.bu = getelementptr [8 x i8], ptr %i.l, i64 %i.bq
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.i.i
  %i.bv = add i64 %.025.i.i, -1
  %i.bw = and i64 %i.bv, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.i.i, !llvm.loop !122

.lr.ph16.split.i:                                 ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %iseq_scan_bits.exit69.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.i = icmp eq i64 %i.bz, 0
  br i1 %.not24.i57.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph16.split.i
  %i.ca = shl nuw nsw i64 %indvars.iv.i, 6
  br label %.lr.ph.split.i60.i

.lr.ph.split.i60.i:                               ; preds = %bb.r, %.lr.ph.i58.i
  %.025.i61.i = phi i64 [ %i.ci, %bb.r ], [ %i.bz, %.lr.ph.i58.i ] ; 3 uses
  %i.cb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i61.i, i1 true)
  %i.cc = or disjoint i64 %i.cb, %i.ca            ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.p, i64 %i.cc ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.cd) #20
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !11 ; 2 uses
  %.not23.i62.i = icmp eq i64 %i.cf, %i.ce
  br i1 %.not23.i62.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i60.i
  %i.cg = getelementptr [8 x i8], ptr %i.l, i64 %i.cc
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.i60.i
  %i.ch = add i64 %.025.i61.i, -1
  %i.ci = and i64 %i.ch, %.025.i61.i              ; 2 uses
  %.not.i63.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i63.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.split.i60.i, !llvm.loop !122

iseq_scan_bits.exit69.i:                          ; preds = %bb.r, %.lr.ph16.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bg
  br i1 %exitcond.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.i, !llvm.loop !123

rb_iseq_mark_and_move_each_body_value.exit:       ; preds = %bb.p, %.lr.ph.split.us.i.i, %iseq_scan_bits.exit69.i, %iseq_scan_bits.exit69.us.i, %.loopexit.i, %bb.n
  %i.cj = getelementptr i8, ptr %i.j, i64 208
  call void @rb_gc_mark_and_move(ptr noundef %i.cj) #20
  %i.ck = getelementptr i8, ptr %i.j, i64 64
  %i.cl = getelementptr i8, ptr %i.j, i64 80
  call void @rb_gc_mark_and_move(ptr noundef %i.cl) #20
  %i.cm = getelementptr i8, ptr %i.j, i64 72
  call void @rb_gc_mark_and_move(ptr noundef %i.cm) #20
  call void @rb_gc_mark_and_move(ptr noundef %i.ck) #20
  %i.cn = getelementptr i8, ptr %i.j, i64 176     ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !124 ; 2 uses
  %.not100 = icmp eq ptr %i.co, null
  br i1 %.not100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %rb_iseq_mark_and_move_each_body_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cp = ptrtoint ptr %i.co to i64
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.b) #20
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !124
  %i.cs = ptrtoint ptr %i.cr to i64
  %.not101 = icmp eq i64 %i.cq, %i.cs
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = inttoptr i64 %i.cq to ptr
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !124
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rb_iseq_mark_and_move_each_body_value.exit
  %i.cu = getelementptr i8, ptr %i.j, i64 168     ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !125 ; 2 uses
  %.not102 = icmp eq ptr %i.cv, null
  br i1 %.not102, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.cw = ptrtoint ptr %i.cv to i64
  store i64 %i.cw, ptr %i.c, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.c) #20
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !125
  %i.cz = ptrtoint ptr %i.cy to i64
  %.not103 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = inttoptr i64 %i.cx to ptr
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.db = getelementptr i8, ptr %i.j, i64 296     ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !126 ; 2 uses
  %.not104 = icmp eq ptr %i.dc, null
  br i1 %.not104, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.dd = ptrtoint ptr %i.dc to i64
  store i64 %i.dd, ptr %i.d, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #20
  %i.de = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !126
  %i.dg = ptrtoint ptr %i.df to i64
  %.not105 = icmp eq i64 %i.de, %i.dg
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = inttoptr i64 %i.de to ptr
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.di = getelementptr i8, ptr %i.j, i64 192     ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !86
  %.not106 = icmp eq ptr %i.dj, null
  br i1 %.not106, label %.loopexit147, label %.preheader146

.preheader146:                                    ; preds = %bb.ad
  %i.dk = getelementptr i8, ptr %i.j, i64 260     ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !127
  %.not158 = icmp eq i32 %i.dl, 0
  br i1 %.not158, label %.loopexit147, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader146, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader146 ] ; 2 uses
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !86
  %i.dn = getelementptr [16 x i8], ptr %i.dm, i64 %indvars.iv ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !128 ; 2 uses
  %.not115 = icmp eq ptr %i.do, null
  br i1 %.not115, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.dp = ptrtoint ptr %i.do to i64
  store i64 %i.dp, ptr %i.e, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #20
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !128
  %i.ds = ptrtoint ptr %i.dr to i64
  %.not116 = icmp eq i64 %i.dq, %i.ds
  br i1 %.not116, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = inttoptr i64 %i.dq to ptr
  store ptr %i.dt, ptr %i.dn, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph
  %i.du = getelementptr i8, ptr %i.dn, i64 8      ; 6 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !132 ; 4 uses
  %.not.i121 = icmp eq ptr %i.dv, null
  br i1 %.not.i121, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = call ptr @rb_vm_empty_cc() #20
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = call ptr @rb_vm_empty_cc_for_super() #20
  %.not15.i = icmp eq ptr %i.dy, null
  br i1 %.not15.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  br i1 %1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = call i64 @rb_gc_location(i64 noundef %i.dz) #20
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.013.i = phi ptr [ %i.eb, %bb.al ], [ %i.dv, %bb.ak ] ; 3 uses
  %i.ec = load i64, ptr %.013.i, align 8, !tbaa !80
  %i.ed = and i64 %i.ec, 1048576
  %.not19.i122 = icmp eq i64 %i.ed, 0
  br i1 %.not19.i122, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr i8, ptr %.013.i, i64 8
  %.013.val.i = load i64, ptr %i.ee, align 8, !tbaa !133
  %.not20.i = icmp eq i64 %.013.val.i, 36
  br i1 %.not20.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr i8, ptr %.013.i, i64 16
  %.013.val18.i = load ptr, ptr %i.ef, align 8, !tbaa !136 ; 2 uses
  br i1 %1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eg = ptrtoint ptr %.013.val18.i to i64
end_hunk_0
begin_hunk_1_@rb_iseq_mark_and_move:bb.a
  %i.ew = icmp samesign ult i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %.lr.ph, label %.loopexit147, !llvm.loop !140

.loopexit147:                                     ; preds = %bb.av, %.preheader146, %bb.ad
  %i.ex = getelementptr i8, ptr %i.j, i64 16
  %i.ey = load i16, ptr %i.ex, align 8
  %i.ez = and i16 %i.ey, 16
  %.not107 = icmp eq i16 %i.ez, 0
  br i1 %.not107, label %.loopexit145, label %bb.aw

bb.aw:                                            ; preds = %.loopexit147
  %i.fa = getelementptr i8, ptr %i.j, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !92 ; 5 uses
  %.not108 = icmp eq ptr %i.fb, null
  br i1 %.not108, label %.loopexit145, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr i8, ptr %i.fb, i64 24     ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !98
  %.not109 = icmp eq ptr %i.fd, null
  br i1 %.not109, label %.loopexit145, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fe = getelementptr i8, ptr %i.fb, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !141 ; 2 uses
  %i.fg = load i32, ptr %i.fb, align 8, !tbaa !97
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph155, label %.loopexit145

.lr.ph155:                                        ; preds = %bb.ay, %.lr.ph155
  %.088154 = phi i32 [ %i.fm, %.lr.ph155 ], [ 0, %bb.ay ] ; 2 uses
  %.089153 = phi i32 [ %i.fl, %.lr.ph155 ], [ %i.ff, %bb.ay ]
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !98
  %i.fj = sext i32 %.088154 to i64
  %i.fk = getelementptr [8 x i8], ptr %i.fi, i64 %i.fj
  call void @rb_gc_mark_and_move(ptr noundef %i.fk) #20
  %i.fl = add nsw i32 %.089153, 1                 ; 2 uses
  %i.fm = add i32 %.088154, 1
  %i.fn = load i32, ptr %i.fb, align 8, !tbaa !97
  %i.fo = icmp slt i32 %i.fl, %i.fn
  br i1 %i.fo, label %.lr.ph155, label %.loopexit145, !llvm.loop !142

.loopexit145:                                     ; preds = %.lr.ph155, %bb.ay, %bb.ax, %bb.aw, %.loopexit147
  %i.fp = getelementptr i8, ptr %i.j, i64 160
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !87 ; 4 uses
  %.not110 = icmp eq ptr %i.fq, null
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit145
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !7  ; 2 uses
  %.not159 = icmp eq i32 %i.fr, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader, %bb.bc
  %i.fs = phi i32 [ %i.gb, %bb.bc ], [ %i.fr, %.preheader ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.bc ], [ 0, %.preheader ] ; 2 uses
  %i.ft = getelementptr [32 x i8], ptr %i.fq, i64 %indvars.iv168
  %i.fu = getelementptr i8, ptr %i.ft, i64 12     ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !143 ; 2 uses
  %.not113 = icmp eq ptr %i.fv, null
  br i1 %.not113, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.lr.ph157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.fw = ptrtoint ptr %i.fv to i64
  store i64 %i.fw, ptr %i.g, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.g) #20
  %i.fx = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !143
  %i.fz = ptrtoint ptr %i.fy to i64
  %.not114 = icmp eq i64 %i.fx, %i.fz
  br i1 %.not114, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = inttoptr i64 %i.fx to ptr
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !143
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.pre = load i32, ptr %i.fq, align 1, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph157
  %i.gb = phi i32 [ %.pre, %bb.bb ], [ %i.fs, %.lr.ph157 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next169, %i.gc
  br i1 %i.gd, label %.lr.ph157, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.bc, %.preheader, %.loopexit145
  br i1 %1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit
  call void @rb_yjit_iseq_update_references(ptr noundef %0) #20
  %i.ge = getelementptr i8, ptr %i.j, i64 352
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !146
  call void @rb_zjit_iseq_update_references(ptr noundef %i.gf) #20
  br label %bb.bg

bb.be:                                            ; preds = %.loopexit
  %i.gg = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = getelementptr i8, ptr %i.j, i64 336
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !147
  call void @rb_yjit_iseq_mark(ptr noundef %i.gi) #20
  %i.gj = getelementptr i8, ptr %i.j, i64 352
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !146
  call void @rb_zjit_iseq_mark(ptr noundef %i.gk) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.gl = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gl, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gm = getelementptr i8, ptr %i.j, i64 216
  call void @rb_gc_mark_and_move(ptr noundef %i.gm) #20
  %i.gn = getelementptr i8, ptr %i.j, i64 224
  call void @rb_gc_mark_and_move(ptr noundef %i.gn) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.a
  %i.go = load i64, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.gp = and i64 %i.go, 131072
  %.not111 = icmp eq i64 %i.gp, 0
  br i1 %.not111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gq, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = getelementptr i8, ptr %0, i64 24
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bi
  %i.gs = and i64 %i.go, 262144
  %.not112 = icmp eq i64 %i.gs, 0
  br i1 %.not112, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gt = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gt, label %bb.bu, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.bm
  %i.gu = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !90 ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 104
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !112
  call void @rb_iseq_mark_and_move_insn_storage(ptr noundef %i.gx) #20
  br i1 %1, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %ISEQ_COMPILE_DATA.exit
  %.val = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.gy = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.gy, align 8, !tbaa !91
  br label %bb.bo

bb.bo:                                            ; preds = %ISEQ_COMPILE_DATA.exit, %bb.bn
  %i.gz = phi ptr [ %.val.val, %bb.bn ], [ null, %ISEQ_COMPILE_DATA.exit ] ; 4 uses
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !90 ; 4 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !148
  %i.hd = getelementptr i8, ptr %i.ha, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !149 ; 4 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 40     ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %.not.i125 = icmp eq ptr %i.hg, null
  %i.hh = ptrtoint ptr %i.hg to i64               ; 2 uses
  br i1 %.not.i125, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hi = getelementptr i8, ptr %i.ha, i64 32
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !150, !range !151, !noundef !152
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %.lr.ph.i.i132, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  %i.hl = zext i32 %i.hc to i64
  %i.hm = add nuw nsw i64 %i.hl, 63
  %i.hn = lshr i64 %i.hm, 6                       ; 3 uses
  %.not35.i = icmp eq i64 %i.hn, 0
  br i1 %.not35.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.preheader.i
  %.not22.i20.i = icmp eq ptr %i.gz, null
  br i1 %.not22.i20.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.us.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %iseq_scan_bits.exit30.us.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !90
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %indvars.iv40.i
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.us.i = icmp eq i64 %i.hq, 0
  br i1 %.not24.i18.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.i19.us.i

.lr.ph.i19.us.i:                                  ; preds = %.lr.ph.split.us.i
  %invariant.gep.i.us.idx.i130 = shl nuw nsw i64 %indvars.iv40.i, 9
  %invariant.gep.i.us.i131 = getelementptr i8, ptr %i.he, i64 %invariant.gep.i.us.idx.i130
  br label %.lr.ph.split.us.i26.us.i

.lr.ph.split.us.i26.us.i:                         ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.i19.us.i
  %.025.us.i27.us.i = phi i64 [ %i.ht, %.lr.ph.split.us.i26.us.i ], [ %i.hq, %.lr.ph.i19.us.i ] ; 3 uses
  %i.hr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i27.us.i, i1 true)
  %gep.i28.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i131, i64 %i.hr
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i28.us.i) #20
  %i.hs = add i64 %.025.us.i27.us.i, -1
  %i.ht = and i64 %i.hs, %.025.us.i27.us.i        ; 2 uses
  %.not.us.i29.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not.us.i29.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.split.us.i26.us.i, !llvm.loop !122

iseq_scan_bits.exit30.us.i:                       ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.split.us.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, %i.hn
  br i1 %exitcond43.not.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i, !llvm.loop !153

.lr.ph.i.i132:                                    ; preds = %bb.bp
  %.not22.i.i133 = icmp eq ptr %i.gz, null
  br i1 %.not22.i.i133, label %.lr.ph.split.us.i.i137, label %.lr.ph.split.i.i134

.lr.ph.split.us.i.i137:                           ; preds = %.lr.ph.i.i132, %.lr.ph.split.us.i.i137
  %.025.us.i.i138 = phi i64 [ %i.hw, %.lr.ph.split.us.i.i137 ], [ %i.hh, %.lr.ph.i.i132 ] ; 3 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i138, i1 true)
  %gep.i.i139 = getelementptr [8 x i8], ptr %i.he, i64 %i.hu
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i139) #20
  %i.hv = add i64 %.025.us.i.i138, -1
  %i.hw = and i64 %i.hv, %.025.us.i.i138          ; 2 uses
  %.not.us.i.i140 = icmp eq i64 %i.hw, 0
  br i1 %.not.us.i.i140, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i.i137, !llvm.loop !122

.lr.ph.split.i.i134:                              ; preds = %.lr.ph.i.i132, %bb.br
  %.025.i.i135 = phi i64 [ %i.id, %bb.br ], [ %i.hh, %.lr.ph.i.i132 ] ; 3 uses
  %i.hx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i135, i1 true) ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.he, i64 %i.hx ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.hy) #20
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i136 = icmp eq i64 %i.ia, %i.hz
  br i1 %.not23.i.i136, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i.i134
  %i.ib = getelementptr [8 x i8], ptr %i.gz, i64 %i.hx
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.split.i.i134
  %i.ic = add i64 %.025.i.i135, -1
  %i.id = and i64 %i.ic, %.025.i.i135             ; 2 uses
  %.not.i17.i = icmp eq i64 %i.id, 0
  br i1 %.not.i17.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i.i134, !llvm.loop !122

.lr.ph.split.i:                                   ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.i
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i128, %iseq_scan_bits.exit30.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ie = load ptr, ptr %i.hf, align 8, !tbaa !90
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %indvars.iv.i127
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.i = icmp eq i64 %i.ig, 0
  br i1 %.not24.i18.i, label %iseq_scan_bits.exit30.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.split.i
  %i.ih = shl nuw nsw i64 %indvars.iv.i127, 6
  br label %.lr.ph.split.i21.i

.lr.ph.split.i21.i:                               ; preds = %bb.bt, %.lr.ph.i19.i
  %.025.i22.i = phi i64 [ %i.ip, %bb.bt ], [ %i.ig, %.lr.ph.i19.i ] ; 3 uses
  %i.ii = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i22.i, i1 true)
  %i.ij = or disjoint i64 %i.ii, %i.ih            ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %i.he, i64 %i.ij ; 3 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ik) #20
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %.not23.i23.i = icmp eq i64 %i.im, %i.il
  br i1 %.not23.i23.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.i21.i
  %i.in = getelementptr [8 x i8], ptr %i.gz, i64 %i.ij
  store i64 %i.im, ptr %i.in, align 8, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.split.i21.i
  %i.io = add i64 %.025.i22.i, -1
  %i.ip = and i64 %i.io, %.025.i22.i              ; 2 uses
  %.not.i24.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i24.i, label %iseq_scan_bits.exit30.i, label %.lr.ph.split.i21.i, !llvm.loop !122

iseq_scan_bits.exit30.i:                          ; preds = %bb.bt, %.lr.ph.split.i
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %i.hn
  br i1 %exitcond.not.i129, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i, !llvm.loop !153

rb_iseq_mark_and_move_each_compile_data_value.exit: ; preds = %iseq_scan_bits.exit30.i, %iseq_scan_bits.exit30.us.i, %bb.br, %.lr.ph.split.us.i.i137, %bb.bo, %.preheader.i
  call void @rb_gc_mark_and_move(ptr noundef %i.gv) #20
  %i.iq = getelementptr i8, ptr %i.gv, i64 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %rb_iseq_mark_and_move_each_compile_data_value.exit
  %.sink = phi ptr [ %i.iq, %rb_iseq_mark_and_move_each_compile_data_value.exit ], [ %i.gr, %bb.bk ]
  call void @rb_gc_mark_and_move(ptr noundef %.sink) #20
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bm, %bb.bl, %bb.bj
  ret void
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #2

declare ptr @rb_vm_empty_cc() local_unnamed_addr #2

declare void @rb_yjit_iseq_update_references(ptr noundef) local_unnamed_addr #2

declare void @rb_zjit_iseq_update_references(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @rb_gc_checking_shareable() local_unnamed_addr #2

declare void @rb_yjit_iseq_mark(ptr noundef) local_unnamed_addr #2

declare void @rb_zjit_iseq_mark(ptr noundef) local_unnamed_addr #2

declare void @rb_iseq_mark_and_move_insn_storage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_iseq_memsize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 13 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.d = and i64 %i.c, 393216
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !89
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 128
  %i.k = load i32, ptr %i.j, align 8, !tbaa !154
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = getelementptr i8, ptr %i.b, i64 240
  %i.o = load i32, ptr %i.n, align 8, !tbaa !155
  %i.p = zext i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.i, 63
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741816
  %reass.add = add nuw nsw i64 %i.p, %i.i
  %reass.mul = shl nuw nsw i64 %reass.add, 3
  %i.t = add nuw nsw i64 %i.m, 360
  %i.u = add nuw nsw i64 %i.t, %i.s
  %i.v = add nuw nsw i64 %i.u, %reass.mul         ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.x, align 1, !tbaa !7    ; 3 uses
  %i.z = icmp sgt i32 %i.y, 67108863
  br i1 %i.z, label %bb.d, label %iseq_catch_table_bytes.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.106, i32 noundef %i.y) #22
  unreachable

iseq_catch_table_bytes.exit:                      ; preds = %bb.c
  %i.aa = shl i32 %i.y, 5
  %i.ab = or disjoint i32 %i.aa, 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.v, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %iseq_catch_table_bytes.exit, %bb.b
  %.050 = phi i64 [ %i.ad, %iseq_catch_table_bytes.exit ], [ %i.v, %bb.b ]
  %i.ae = getelementptr i8, ptr %i.b, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !156
  %i.ag = add i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %.050
  %i.ak = getelementptr i8, ptr %i.b, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %param_keyword_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !141
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, 32
  br label %param_keyword_size.exit

param_keyword_size.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.as, %bb.f ], [ 0, %bb.e ]
  %i.at = add nsw i64 %i.aj, %.0.i
  %i.au = getelementptr i8, ptr %i.b, i64 244
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.b, i64 252
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = getelementptr i8, ptr %i.b, i64 248
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr i8, ptr %i.b, i64 256
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bc = add i32 %i.az, %i.ax                    ; 2 uses
  %i.bd = add i32 %i.bc, %i.av
  %i.be = add i32 %i.bd, %i.bb
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nsw i64 %i.at, %i.bg                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %.not56 = icmp ne ptr %i.bj, null
  %i.bk = icmp ne i32 %i.av, 0
  %or.cond80 = select i1 %.not56, i1 %i.bk, i1 false
  br i1 %or.cond80, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %param_keyword_size.exit
  %i.bl = add i32 %i.bc, %i.bb
  %wide.trip.count = zext i32 %i.av to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph71, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.170 = phi i64 [ %i.bh, %.lr.ph71 ], [ %.3, %bb.h ] ; 3 uses
  %i.bm = trunc nuw i64 %indvars.iv to i32
  %i.bn = add i32 %i.bl, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !44 ; 3 uses
  %.not59 = icmp eq ptr %i.br, null
  br i1 %.not59, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %.not6066 = icmp eq i64 %i.bs, 0
  br i1 %.not6066, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.04968 = phi ptr [ %i.bt, %.lr.ph ], [ %i.br, %.preheader ]
  %.267 = phi i64 [ %i.bu, %.lr.ph ], [ %.170, %.preheader ]
  %i.bt = getelementptr i8, ptr %.04968, i64 8    ; 2 uses
  %i.bu = add i64 %.267, 8                        ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !11
  %.not60 = icmp eq i64 %i.bv, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2.lcssa = phi i64 [ %.170, %.preheader ], [ %i.bu, %.lr.ph ]
  %i.bw = add i64 %.2.lcssa, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.3 = phi i64 [ %i.bw, %._crit_edge ], [ %.170, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !158

end_hunk_1
begin_hunk_2_@rb_iseq_insns_info_encode_positions:bb.a
  br i1 %i.u, label %.preheader60.preheader.i, label %.preheader.i

.preheader60.preheader.i:                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.u, %.preheader60.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader60.preheader.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.05564.i = phi i32 [ 0, %.preheader60.preheader.i ], [ %.2.8.i, %bb.u ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i ; 2 uses
  %.promoted.i = load i64, ptr %i.v, align 8, !tbaa !11
  %i.w = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.x = icmp slt i32 %.05564.i, %i.d
  br i1 %i.x, label %bb.d, label %bb.e

.preheader.i:                                     ; preds = %bb.u, %bb.c
  %.055.lcssa.i = phi i32 [ 0, %bb.c ], [ %.2.8.i, %bb.u ]
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %.lr.ph.i, label %succ_index_table_create.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.z = getelementptr i8, ptr %i.t, i64 48
  %wide.trip.count86.i = zext nneg i32 %i.q to i64
  br label %bb.v

bb.d:                                             ; preds = %.preheader60.i
  %i.aa = sext i32 %.05564.i to i64
  %i.ab = getelementptr [4 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i64 %i.w, %i.ad
  %i.af = zext i1 %i.ae to i32
  %spec.select.i = add nsw i32 %.05564.i, %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader60.i
  %.2.i = phi i32 [ %.05564.i, %.preheader60.i ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.ag = sext i32 %.2.i to i64                   ; 3 uses
  %i.ah = icmp slt i32 %.2.i, %i.d
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = add nuw nsw i64 %i.w, 1
  %i.al = zext i32 %i.aj to i64
  %i.am = icmp eq i64 %i.ak, %i.al
  %i.an = zext i1 %i.am to i32
  %spec.select.1.i = add nsw i32 %.2.i, %i.an     ; 2 uses
  %.pre.i = sext i32 %spec.select.1.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %.2.1.i = phi i32 [ %spec.select.1.i, %bb.f ], [ %.2.i, %bb.e ] ; 3 uses
  %i.ao = shl nsw i64 %.pre-phi.i, 7
  %i.ap = icmp slt i32 %.2.1.i, %i.d
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = add nuw nsw i64 %i.w, 2
  %i.at = zext i32 %i.ar to i64
  %i.au = icmp eq i64 %i.as, %i.at
  %i.av = zext i1 %i.au to i32
  %spec.select.2.i = add nsw i32 %.2.1.i, %i.av   ; 2 uses
  %.pre88.i = sext i32 %spec.select.2.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi89.i = phi i64 [ %.pre88.i, %bb.h ], [ %.pre-phi.i, %bb.g ] ; 3 uses
  %.2.2.i = phi i32 [ %spec.select.2.i, %bb.h ], [ %.2.1.i, %bb.g ] ; 3 uses
  %i.aw = shl nsw i64 %.pre-phi89.i, 14
  %i.ax = icmp slt i32 %.2.2.i, %i.d
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi89.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = add nuw nsw i64 %i.w, 3
  %i.bb = zext i32 %i.az to i64
  %i.bc = icmp eq i64 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %spec.select.3.i = add nsw i32 %.2.2.i, %i.bd   ; 2 uses
  %.pre90.i = sext i32 %spec.select.3.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi91.i = phi i64 [ %.pre90.i, %bb.j ], [ %.pre-phi89.i, %bb.i ] ; 3 uses
  %.2.3.i = phi i32 [ %spec.select.3.i, %bb.j ], [ %.2.2.i, %bb.i ] ; 3 uses
  %i.be = shl nsw i64 %.pre-phi91.i, 21
  %i.bf = icmp slt i32 %.2.3.i, %i.d
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi91.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = add nuw nsw i64 %i.w, 4
  %i.bj = zext i32 %i.bh to i64
  %i.bk = icmp eq i64 %i.bi, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %spec.select.4.i = add nsw i32 %.2.3.i, %i.bl   ; 2 uses
  %.pre92.i = sext i32 %spec.select.4.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi93.i = phi i64 [ %.pre92.i, %bb.l ], [ %.pre-phi91.i, %bb.k ] ; 3 uses
  %.2.4.i = phi i32 [ %spec.select.4.i, %bb.l ], [ %.2.3.i, %bb.k ] ; 3 uses
  %i.bm = shl nsw i64 %.pre-phi93.i, 28
  %i.bn = icmp slt i32 %.2.4.i, %i.d
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi93.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = add nuw nsw i64 %i.w, 5
  %i.br = zext i32 %i.bp to i64
  %i.bs = icmp eq i64 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i32
  %spec.select.5.i = add nsw i32 %.2.4.i, %i.bt   ; 2 uses
  %.pre94.i = sext i32 %spec.select.5.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi95.i = phi i64 [ %.pre94.i, %bb.n ], [ %.pre-phi93.i, %bb.m ] ; 3 uses
  %.2.5.i = phi i32 [ %spec.select.5.i, %bb.n ], [ %.2.4.i, %bb.m ] ; 3 uses
  %i.bu = shl i64 %.pre-phi95.i, 35
  %i.bv = icmp slt i32 %.2.5.i, %i.d
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi95.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = add nuw nsw i64 %i.w, 6
  %i.bz = zext i32 %i.bx to i64
  %i.ca = icmp eq i64 %i.by, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %spec.select.6.i = add nsw i32 %.2.5.i, %i.cb   ; 2 uses
  %.pre96.i = sext i32 %spec.select.6.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi97.i = phi i64 [ %.pre96.i, %bb.p ], [ %.pre-phi95.i, %bb.o ] ; 3 uses
  %.2.6.i = phi i32 [ %spec.select.6.i, %bb.p ], [ %.2.5.i, %bb.o ] ; 3 uses
  %i.cc = shl i64 %.pre-phi97.i, 42
  %i.cd = icmp slt i32 %.2.6.i, %i.d
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi97.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = add nuw nsw i64 %i.w, 7
  %i.ch = zext i32 %i.cf to i64
  %i.ci = icmp eq i64 %i.cg, %i.ch
  %i.cj = zext i1 %i.ci to i32
  %spec.select.7.i = add nsw i32 %.2.6.i, %i.cj   ; 2 uses
  %.pre98.i = sext i32 %spec.select.7.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi99.i = phi i64 [ %.pre98.i, %bb.r ], [ %.pre-phi97.i, %bb.q ] ; 2 uses
  %.2.7.i = phi i32 [ %spec.select.7.i, %bb.r ], [ %.2.6.i, %bb.q ] ; 3 uses
  %i.ck = shl i64 %.pre-phi99.i, 49
  %i.cl = icmp slt i32 %.2.7.i, %i.d
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr [4 x i8], ptr %i.h, i64 %.pre-phi99.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = add nuw nsw i64 %i.w, 8
  %i.cp = zext i32 %i.cn to i64
  %i.cq = icmp eq i64 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i32
  %spec.select.8.i = add nsw i32 %.2.7.i, %i.cr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.8.i = phi i32 [ %.2.7.i, %bb.s ], [ %spec.select.8.i, %bb.t ] ; 3 uses
  %i.cs = zext i32 %.2.8.i to i64
  %i.ct = shl i64 %i.cs, 56
  %i.cu = or i64 %.promoted.i, %i.ao
  %i.cv = or i64 %i.cu, %i.aw
  %i.cw = or i64 %i.cv, %i.be
  %i.cx = or i64 %i.cw, %i.bm
  %i.cy = or i64 %i.cx, %i.bu
  %i.cz = or i64 %i.cy, %i.cc
  %i.da = or i64 %i.cz, %i.ck
  %i.db = or i64 %i.da, %i.ct
  %i.dc = or i64 %i.db, %i.ag
  store i64 %i.dc, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader60.i, !llvm.loop !161

bb.v:                                             ; preds = %bb.ah, %.lr.ph.i
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next84.i, %bb.ah ] ; 3 uses
  %.372.i = phi i32 [ %.055.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
  %i.dd = getelementptr [80 x i8], ptr %i.z, i64 %indvars.iv83.i ; 3 uses
  store i32 %.372.i, ptr %i.dd, align 8, !tbaa !162
  %i.de = shl nuw nsw i64 %indvars.iv83.i, 9
  %i.df = or disjoint i64 %i.de, 54
  %i.dg = getelementptr i8, ptr %i.dd, i64 16
  %i.dh = getelementptr i8, ptr %i.dd, i64 8      ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.v
  %indvars.iv79.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next80.i, %bb.ag ] ; 5 uses
  %.05270.i = phi i32 [ 0, %bb.v ], [ %i.en, %bb.ag ] ; 2 uses
  %.469.i = phi i32 [ %.372.i, %bb.v ], [ %.6.i.1, %bb.ag ]
  %.not.i = icmp eq i64 %indvars.iv79.i, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = sext i32 %.05270.i to i64
  %i.dj = mul nuw nsw i64 %indvars.iv79.i, 9
  %i.dk = add nsw i64 %i.dj, -9
  %i.dl = shl i64 %i.di, %i.dk
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !164
  %i.dn = or i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !164
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = shl nuw nsw i64 %indvars.iv79.i, 6
  %i.dp = add nuw nsw i64 %i.df, %i.do            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %indvars.iv75.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next76.i.1, %bb.af ] ; 5 uses
  %.067.i = phi i64 [ 0, %bb.y ], [ %.1.i.1, %bb.af ] ; 3 uses
  %.565.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.565.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.565.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = add nuw nsw i64 %i.dp, %indvars.iv75.i
  %i.dv = zext i32 %i.dt to i64
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl nuw i64 1, %indvars.iv75.i
  %i.dy = or i64 %i.dx, %.067.i
  %i.dz = add nsw i32 %.565.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.6.i = phi i32 [ %i.dz, %bb.ab ], [ %.565.i, %bb.aa ], [ %.565.i, %bb.z ] ; 5 uses
  %.1.i = phi i64 [ %i.dy, %bb.ab ], [ %.067.i, %bb.aa ], [ %.067.i, %bb.z ] ; 3 uses
  %i.ea = icmp slt i32 %.6.i, %i.d
  br i1 %i.ea, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1
  %i.eb = sext i32 %.6.i to i64
  %i.ec = getelementptr [4 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = add nuw nsw i64 %i.dp, %indvars.iv.next76.i
  %i.ef = zext i32 %i.ed to i64
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = shl nuw i64 2, %indvars.iv75.i
  %i.ei = or i64 %i.eh, %.1.i
  %i.ej = add nsw i32 %.6.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.6.i.1 = phi i32 [ %i.ej, %bb.ae ], [ %.6.i, %bb.ad ], [ %.6.i, %bb.ac ] ; 3 uses
  %.1.i.1 = phi i64 [ %i.ei, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.ac ] ; 3 uses
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %exitcond78.not.i.1 = icmp eq i64 %indvars.iv.next76.i.1, 64
  br i1 %exitcond78.not.i.1, label %bb.ag, label %bb.z, !llvm.loop !165

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv79.i
  store i64 %.1.i.1, ptr %i.ek, align 8, !tbaa !11
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.1.i.1)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = add i32 %.05270.i, %i.em
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 8
  br i1 %exitcond82.not.i, label %bb.ah, label %bb.w, !llvm.loop !166

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %succ_index_table_create.exit, label %bb.v, !llvm.loop !167

succ_index_table_create.exit:                     ; preds = %bb.ah, %.preheader.i
  store ptr %i.t, ptr %i.i, align 8, !tbaa !85
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @ruby_xfree(ptr noundef %i.eo) #20
  store ptr null, ptr %i.g, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_iseq_insns_info_decode_positions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp sgt i32 %i.d, 53
  %i.h = add nsw i32 %i.d, 8
  %i.i = sdiv i32 %i.h, 9
  %i.j = select i1 %i.g, i32 6, i32 %i.i          ; 2 uses
  %i.k = add i32 %i.d, 457
  %i.l = sdiv i32 %i.k, 512
  %i.m = sext i32 %i.b to i64
  %i.n = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.m, i64 noundef 4) #21 ; 3 uses
  %i.o = icmp sgt i32 %i.j, 0
  br i1 %i.o, label %.preheader45.preheader.i, label %.preheader44.i

.preheader45.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.s, %.preheader45.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader45.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.051.i = phi ptr [ %i.n, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %.03550.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bn, %bb.s ]
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 6 uses
  %i.r = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.s = trunc i64 %i.q to i32                    ; 4 uses
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.03550.i, %i.t
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.u = add i32 %i.d, -55
  %i.v = icmp ult i32 %i.u, 2147483136
  br i1 %i.v, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.w = getelementptr i8, ptr %.051.i, i64 4
  %i.x = trunc nuw i64 %i.r to i32
  store i32 %i.x, ptr %.051.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.w, %bb.b ], [ %.051.i, %.preheader45.i ] ; 3 uses
  %i.y = lshr i32 %i.s, 7
  %i.z = and i32 %i.y, 127                        ; 2 uses
  %.not42.1.i = icmp eq i32 %i.t, %i.z
  br i1 %.not42.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %.2.i, i64 4
  %i.ab = trunc i64 %i.r to i32
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %.2.i, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.1.i = phi ptr [ %i.aa, %bb.d ], [ %.2.i, %bb.c ] ; 3 uses
  %i.ad = lshr i32 %i.s, 14
  %i.ae = and i32 %i.ad, 127                      ; 2 uses
  %.not42.2.i = icmp eq i32 %i.z, %i.ae
  br i1 %.not42.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %.2.1.i, i64 4
  %i.ag = trunc i64 %i.r to i32
  %i.ah = add i32 %i.ag, 2
  store i32 %i.ah, ptr %.2.1.i, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.2.i = phi ptr [ %i.af, %bb.f ], [ %.2.1.i, %bb.e ] ; 3 uses
  %i.ai = lshr i32 %i.s, 21
  %i.aj = and i32 %i.ai, 127                      ; 2 uses
  %.not42.3.i = icmp eq i32 %i.ae, %i.aj
  br i1 %.not42.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %.2.2.i, i64 4
  %i.al = trunc i64 %i.r to i32
  %i.am = add i32 %i.al, 3
  store i32 %i.am, ptr %.2.2.i, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3.i = phi ptr [ %i.ak, %bb.h ], [ %.2.2.i, %bb.g ] ; 3 uses
  %i.an = lshr i64 %i.q, 28
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 127                      ; 2 uses
  %.not42.4.i = icmp eq i32 %i.aj, %i.ap
  br i1 %.not42.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.2.3.i, i64 4
  %i.ar = trunc i64 %i.r to i32
  %i.as = add i32 %i.ar, 4
  store i32 %i.as, ptr %.2.3.i, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.4.i = phi ptr [ %i.aq, %bb.j ], [ %.2.3.i, %bb.i ] ; 3 uses
  %i.at = lshr i64 %i.q, 35
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 127                      ; 2 uses
  %.not42.5.i = icmp eq i32 %i.ap, %i.av
  br i1 %.not42.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %.2.4.i, i64 4
  %i.ax = trunc i64 %i.r to i32
  %i.ay = add i32 %i.ax, 5
  store i32 %i.ay, ptr %.2.4.i, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.5.i = phi ptr [ %i.aw, %bb.l ], [ %.2.4.i, %bb.k ] ; 3 uses
  %i.az = lshr i64 %i.q, 42
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 127                      ; 2 uses
  %.not42.6.i = icmp eq i32 %i.av, %i.bb
  br i1 %.not42.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %.2.5.i, i64 4
  %i.bd = trunc i64 %i.r to i32
  %i.be = add i32 %i.bd, 6
  store i32 %i.be, ptr %.2.5.i, align 4, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.6.i = phi ptr [ %i.bc, %bb.n ], [ %.2.5.i, %bb.m ] ; 3 uses
  %i.bf = lshr i64 %i.q, 49
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 127                      ; 2 uses
  %.not42.7.i = icmp eq i32 %i.bb, %i.bh
  br i1 %.not42.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %.2.6.i, i64 4
  %i.bj = trunc i64 %i.r to i32
  %i.bk = add i32 %i.bj, 7
  store i32 %i.bk, ptr %.2.6.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.7.i = phi ptr [ %i.bi, %bb.p ], [ %.2.6.i, %bb.o ] ; 3 uses
  %i.bl = lshr i64 %i.q, 56
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 127                      ; 2 uses
  %.not42.8.i = icmp eq i32 %i.bh, %i.bn
  br i1 %.not42.8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %.2.7.i, i64 4
  %i.bp = trunc i64 %i.r to i32
  %i.bq = add i32 %i.bp, 8
  store i32 %i.bq, ptr %.2.7.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.8.i = phi ptr [ %i.bo, %bb.r ], [ %.2.7.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader44.i, label %.preheader45.i, !llvm.loop !168

.preheader43.i:                                   ; preds = %bb.bh, %.preheader43.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader43.preheader.i ], [ %indvars.iv.next69.i, %bb.bh ] ; 3 uses
  %.357.i = phi ptr [ %.0.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.br = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = shl nuw nsw i64 %indvars.iv68.i, 9      ; 8 uses
  %i.bu = or disjoint i64 %i.bt, 54               ; 2 uses
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.553.i = phi ptr [ %.357.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bw = shl nuw i64 1, %indvars.iv60.i
  %i.bx = and i64 %i.bw, %i.bv
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bu, %indvars.iv60.i
  %i.bz = getelementptr i8, ptr %.553.i, i64 4
  %i.ca = trunc nuw nsw i64 %i.by to i32
  store i32 %i.ca, ptr %.553.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i = phi ptr [ %i.bz, %bb.u ], [ %.553.i, %bb.t ] ; 3 uses
  %i.cb = shl nuw i64 2, %indvars.iv60.i
  %i.cc = and i64 %i.cb, %i.bv
  %.not.i.1 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.cd = add nuw nsw i64 %i.bu, %indvars.iv.next61.i
  %i.ce = getelementptr i8, ptr %.6.i, i64 4
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  store i32 %i.cf, ptr %.6.i, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.6.i.1 = phi ptr [ %i.ce, %bb.w ], [ %.6.i, %bb.v ] ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond63.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, 64
  br i1 %exitcond63.not.i.1, label %.preheader.1.i, label %bb.t, !llvm.loop !169

.preheader.1.i:                                   ; preds = %bb.x
  %i.cg = getelementptr i8, ptr %i.br, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  %i.ci = or disjoint i64 %i.bt, 118              ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.preheader.1.i
  %indvars.iv60.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next61.1.i.1, %bb.ac ] ; 5 uses
  %.553.1.i = phi ptr [ %.6.i.1, %.preheader.1.i ], [ %.6.1.i.1, %bb.ac ] ; 3 uses
  %i.cj = shl nuw i64 1, %indvars.iv60.1.i
  %i.ck = and i64 %i.cj, %i.ch
  %.not.1.i = icmp eq i64 %i.ck, 0
  br i1 %.not.1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = add nuw nsw i64 %i.ci, %indvars.iv60.1.i
  %i.cm = getelementptr i8, ptr %.553.1.i, i64 4
  %i.cn = trunc nuw nsw i64 %i.cl to i32
  store i32 %i.cn, ptr %.553.1.i, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6.1.i = phi ptr [ %i.cm, %bb.z ], [ %.553.1.i, %bb.y ] ; 3 uses
  %i.co = shl nuw i64 2, %indvars.iv60.1.i
  %i.cp = and i64 %i.co, %i.ch
  %.not.1.i.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.1.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next61.1.i = or disjoint i64 %indvars.iv60.1.i, 1
  %i.cq = add nuw nsw i64 %i.ci, %indvars.iv.next61.1.i
  %i.cr = getelementptr i8, ptr %.6.1.i, i64 4
  %i.cs = trunc nuw nsw i64 %i.cq to i32
  store i32 %i.cs, ptr %.6.1.i, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.6.1.i.1 = phi ptr [ %i.cr, %bb.ab ], [ %.6.1.i, %bb.aa ] ; 2 uses
  %indvars.iv.next61.1.i.1 = add nuw nsw i64 %indvars.iv60.1.i, 2 ; 2 uses
  %exitcond63.1.not.i.1 = icmp eq i64 %indvars.iv.next61.1.i.1, 64
  br i1 %exitcond63.1.not.i.1, label %.preheader.2.i, label %bb.y, !llvm.loop !169

.preheader.2.i:                                   ; preds = %bb.ac
  %i.ct = getelementptr i8, ptr %i.br, i64 80
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %i.cv = or disjoint i64 %i.bt, 182              ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.preheader.2.i
  %indvars.iv60.2.i = phi i64 [ 0, %.preheader.2.i ], [ %indvars.iv.next61.2.i.1, %bb.ah ] ; 5 uses
  %.553.2.i = phi ptr [ %.6.1.i.1, %.preheader.2.i ], [ %.6.2.i.1, %bb.ah ] ; 3 uses
  %i.cw = shl nuw i64 1, %indvars.iv60.2.i
  %i.cx = and i64 %i.cw, %i.cu
  %.not.2.i = icmp eq i64 %i.cx, 0
  br i1 %.not.2.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add nuw nsw i64 %i.cv, %indvars.iv60.2.i
  %i.cz = getelementptr i8, ptr %.553.2.i, i64 4
  %i.da = trunc nuw nsw i64 %i.cy to i32
  store i32 %i.da, ptr %.553.2.i, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.6.2.i = phi ptr [ %i.cz, %bb.ae ], [ %.553.2.i, %bb.ad ] ; 3 uses
  %i.db = shl nuw i64 2, %indvars.iv60.2.i
  %i.dc = and i64 %i.db, %i.cu
  %.not.2.i.1 = icmp eq i64 %i.dc, 0
  br i1 %.not.2.i.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next61.2.i = or disjoint i64 %indvars.iv60.2.i, 1
  %i.dd = add nuw nsw i64 %i.cv, %indvars.iv.next61.2.i
  %i.de = getelementptr i8, ptr %.6.2.i, i64 4
  %i.df = trunc nuw nsw i64 %i.dd to i32
  store i32 %i.df, ptr %.6.2.i, align 4, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.6.2.i.1 = phi ptr [ %i.de, %bb.ag ], [ %.6.2.i, %bb.af ] ; 2 uses
  %indvars.iv.next61.2.i.1 = add nuw nsw i64 %indvars.iv60.2.i, 2 ; 2 uses
  %exitcond63.2.not.i.1 = icmp eq i64 %indvars.iv.next61.2.i.1, 64
  br i1 %exitcond63.2.not.i.1, label %.preheader.3.i, label %bb.ad, !llvm.loop !169

.preheader.3.i:                                   ; preds = %bb.ah
  %i.dg = getelementptr i8, ptr %i.br, i64 88
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !11 ; 2 uses
  %i.di = or disjoint i64 %i.bt, 246              ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.preheader.3.i
  %indvars.iv60.3.i = phi i64 [ 0, %.preheader.3.i ], [ %indvars.iv.next61.3.i.1, %bb.am ] ; 5 uses
  %.553.3.i = phi ptr [ %.6.2.i.1, %.preheader.3.i ], [ %.6.3.i.1, %bb.am ] ; 3 uses
  %i.dj = shl nuw i64 1, %indvars.iv60.3.i
  %i.dk = and i64 %i.dj, %i.dh
  %.not.3.i = icmp eq i64 %i.dk, 0
  br i1 %.not.3.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = add nuw nsw i64 %i.di, %indvars.iv60.3.i
  %i.dm = getelementptr i8, ptr %.553.3.i, i64 4
  %i.dn = trunc nuw nsw i64 %i.dl to i32
  store i32 %i.dn, ptr %.553.3.i, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.6.3.i = phi ptr [ %i.dm, %bb.aj ], [ %.553.3.i, %bb.ai ] ; 3 uses
  %i.do = shl nuw i64 2, %indvars.iv60.3.i
  %i.dp = and i64 %i.do, %i.dh
  %.not.3.i.1 = icmp eq i64 %i.dp, 0
  br i1 %.not.3.i.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next61.3.i = or disjoint i64 %indvars.iv60.3.i, 1
  %i.dq = add nuw nsw i64 %i.di, %indvars.iv.next61.3.i
  %i.dr = getelementptr i8, ptr %.6.3.i, i64 4
  %i.ds = trunc nuw nsw i64 %i.dq to i32
  store i32 %i.ds, ptr %.6.3.i, align 4, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.6.3.i.1 = phi ptr [ %i.dr, %bb.al ], [ %.6.3.i, %bb.ak ] ; 2 uses
  %indvars.iv.next61.3.i.1 = add nuw nsw i64 %indvars.iv60.3.i, 2 ; 2 uses
  %exitcond63.3.not.i.1 = icmp eq i64 %indvars.iv.next61.3.i.1, 64
  br i1 %exitcond63.3.not.i.1, label %.preheader.4.i, label %bb.ai, !llvm.loop !169

.preheader.4.i:                                   ; preds = %bb.am
  %i.dt = getelementptr i8, ptr %i.br, i64 96
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !11 ; 2 uses
  %i.dv = or disjoint i64 %i.bt, 310              ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.preheader.4.i
  %indvars.iv60.4.i = phi i64 [ 0, %.preheader.4.i ], [ %indvars.iv.next61.4.i.1, %bb.ar ] ; 5 uses
  %.553.4.i = phi ptr [ %.6.3.i.1, %.preheader.4.i ], [ %.6.4.i.1, %bb.ar ] ; 3 uses
  %i.dw = shl nuw i64 1, %indvars.iv60.4.i
  %i.dx = and i64 %i.dw, %i.du
  %.not.4.i = icmp eq i64 %i.dx, 0
  br i1 %.not.4.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = add nuw nsw i64 %i.dv, %indvars.iv60.4.i
  %i.dz = getelementptr i8, ptr %.553.4.i, i64 4
  %i.ea = trunc nuw nsw i64 %i.dy to i32
  store i32 %i.ea, ptr %.553.4.i, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.6.4.i = phi ptr [ %i.dz, %bb.ao ], [ %.553.4.i, %bb.an ] ; 3 uses
  %i.eb = shl nuw i64 2, %indvars.iv60.4.i
  %i.ec = and i64 %i.eb, %i.du
  %.not.4.i.1 = icmp eq i64 %i.ec, 0
  br i1 %.not.4.i.1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next61.4.i = or disjoint i64 %indvars.iv60.4.i, 1
  %i.ed = add nuw nsw i64 %i.dv, %indvars.iv.next61.4.i
  %i.ee = getelementptr i8, ptr %.6.4.i, i64 4
  %i.ef = trunc nuw nsw i64 %i.ed to i32
  store i32 %i.ef, ptr %.6.4.i, align 4, !tbaa !7
end_hunk_2
