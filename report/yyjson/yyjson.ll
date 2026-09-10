Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@skip_trivia:bb.a

bb.f:                                             ; preds = %.preheader76
  br i1 %.not68, label %ext_space_len.exit.thread, label %.preheader75, !prof !62

.preheader75:                                     ; preds = %bb.f
  %i.ao = and i8 %i.al, 8
  %.not6978 = icmp eq i8 %i.ao, 0
  br i1 %.not6978, label %ext_space_len.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader75, %ext_space_len.exit
  %i.ap = phi i8 [ %i.aw, %ext_space_len.exit ], [ %i.ai, %.preheader75 ]
  %.279 = phi ptr [ %i.av, %ext_space_len.exit ], [ %.1, %.preheader75 ] ; 6 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %ext_space_len.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i56 = load i16, ptr %.279, align 1 ; 3 uses
  switch i16 %.sroa.0.0.copyload.i56, label %bb.j [
    i16 -24382, label %ext_space_len.exit
    i16 -32542, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.279, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !100 ; 2 uses
  %or.cond.i = icmp slt i8 %i.as, -117
  br i1 %or.cond.i, label %ext_space_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.as, label %.critedge [
    i8 -88, label %ext_space_len.exit
    i8 -87, label %ext_space_len.exit
    i8 -81, label %ext_space_len.exit
  ]

bb.j:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.279, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.au to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.0.0.copyload.i56 to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  switch i32 %.sroa.0.0.insert.insert.i.i, label %ext_space_len.exit.thread.loopexit.split.loop.exit [
    i32 8428257, label %ext_space_len.exit
    i32 10453474, label %ext_space_len.exit
    i32 8421603, label %ext_space_len.exit
    i32 12565487, label %ext_space_len.exit
  ]

ext_space_len.exit:                               ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.g, %.lr.ph, %bb.h, %bb.i, %bb.i, %bb.i
  %.1.i = phi i64 [ 3, %bb.j ], [ 1, %.lr.ph ], [ 2, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ], [ 3, %bb.i ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.j ], [ 3, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.279, i64 %.1.i ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !100 ; 3 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = and i8 %i.az, 8
  %.not69 = icmp eq i8 %i.ba, 0
  br i1 %.not69, label %ext_space_len.exit.thread, label %.lr.ph, !llvm.loop !268

ext_space_len.exit.thread.loopexit.split.loop.exit: ; preds = %bb.j
  %i.bb = trunc i16 %.sroa.0.0.copyload.i56 to i8
  br label %ext_space_len.exit.thread

ext_space_len.exit.thread:                        ; preds = %ext_space_len.exit, %ext_space_len.exit.thread.loopexit.split.loop.exit, %.preheader75, %bb.f
  %i.bc = phi i8 [ %i.ai, %bb.f ], [ %i.ai, %.preheader75 ], [ %i.bb, %ext_space_len.exit.thread.loopexit.split.loop.exit ], [ %i.aw, %ext_space_len.exit ]
  %.3 = phi ptr [ %.1, %bb.f ], [ %.1, %.preheader75 ], [ %.279, %ext_space_len.exit.thread.loopexit.split.loop.exit ], [ %i.av, %ext_space_len.exit ] ; 8 uses
  %.399 = ptrtoaddr ptr %.3 to i64                ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %ext_space_len.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !100
  switch i8 %i.bf, label %.critedge [
    i8 47, label %bb.l
    i8 42, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 5 uses
  %i.bh = icmp ult ptr %i.bg, %1                  ; 2 uses
  br i1 %.not68, label %.preheader, label %.preheader73, !prof !62

.preheader73:                                     ; preds = %bb.l
  br i1 %i.bh, label %.lr.ph85.preheader, label %.critedge

.lr.ph85.preheader:                               ; preds = %.preheader73
  %scevgep = getelementptr i8, ptr %.3, i64 %i.a
  %i.bi = sub i64 0, %.399
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  br label %.lr.ph85

.preheader:                                       ; preds = %bb.l
  br i1 %i.bh, label %.lr.ph88.preheader, label %.critedge

.lr.ph88.preheader:                               ; preds = %.preheader
  %scevgep101 = getelementptr i8, ptr %.3, i64 %i.a
  %i.bj = sub i64 0, %.399
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.bj ; 2 uses
  br label %.lr.ph88

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %ext_eol_len.exit
  %.484 = phi ptr [ %i.bx, %ext_eol_len.exit ], [ %i.bg, %.lr.ph85.preheader ] ; 5 uses
  %i.bk = load i8, ptr %.484, align 1, !tbaa !100 ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !100
  %i.bo = and i8 %i.bn, 2
  %.not72 = icmp eq i8 %i.bo, 0
  br i1 %.not72, label %ext_eol_len.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph85
  %i.bp = icmp sgt i8 %i.bk, -1
  br i1 %i.bp, label %ext_eol_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.484, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !100
  %i.bs = icmp eq i8 %i.br, -128
  br i1 %i.bs, label %bb.o, label %ext_eol_len.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.484, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !100
  %i.bv = and i8 %i.bu, -2
  %switch.i = icmp eq i8 %i.bv, -88
  br i1 %switch.i, label %ext_eol_len.exit.thread, label %ext_eol_len.exit

ext_eol_len.exit.thread:                          ; preds = %bb.m, %bb.o
  %.0.i55.ph = phi i64 [ 3, %bb.o ], [ 1, %bb.m ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.484, i64 %.0.i55.ph
  br label %.critedge

ext_eol_len.exit:                                 ; preds = %bb.o, %bb.n, %.lr.ph85
  %i.bx = getelementptr inbounds nuw i8, ptr %.484, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bx, %scevgep100
  br i1 %exitcond.not, label %.critedge, label %.lr.ph85, !llvm.loop !269

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.p
  %.687 = phi ptr [ %i.cd, %bb.p ], [ %i.bg, %.lr.ph88.preheader ] ; 3 uses
  %i.by = load i8, ptr %.687, align 1, !tbaa !100
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph88
  %i.cd = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 2 uses
  %exitcond103.not = icmp eq ptr %i.cd, %scevgep102
  br i1 %exitcond103.not, label %.critedge, label %.lr.ph88, !llvm.loop !270

bb.q:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.7 = phi ptr [ %i.ce, %bb.q ], [ %i.ch, %bb.r ] ; 5 uses
  %.sroa.01.0.copyload.i = load i16, ptr %.7, align 1
  %i.cf = icmp eq i16 %.sroa.01.0.copyload.i, 12074
  %i.cg = icmp uge ptr %.7, %1
  %.not53 = or i1 %i.cg, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br i1 %.not53, label %bb.s, label %bb.r, !llvm.loop !271

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp eq ptr %.7, %1
  br i1 %i.ci, label %.thread62, label %bb.t

.thread62:                                        ; preds = %bb.s
  store ptr %1, ptr %0, align 8, !tbaa !107
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.7, i64 2
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %ext_eol_len.exit, %bb.p, %.lr.ph88, %.preheader73, %.preheader, %ext_eol_len.exit.thread, %bb.k, %bb.t, %ext_space_len.exit.thread
  %.8 = phi ptr [ %i.bw, %ext_eol_len.exit.thread ], [ %.3, %bb.k ], [ %.3, %ext_space_len.exit.thread ], [ %i.bg, %.preheader73 ], [ %i.cj, %bb.t ], [ %i.bg, %.preheader ], [ %scevgep100, %ext_eol_len.exit ], [ %.687, %.lr.ph88 ], [ %scevgep102, %bb.p ], [ %.279, %bb.i ] ; 3 uses
  %i.ck = icmp eq ptr %.8, %.046
  br i1 %i.ck, label %.thread65, label %.split

.thread65:                                        ; preds = %.split, %.critedge, %ext_space_len.exit.thread.loopexit.us, %.split.us.split, %ext_space_len.exit.thread.us.us, %.split.us.split.us
  %.us-phi = phi ptr [ %.046.us, %ext_space_len.exit.thread.loopexit.us ], [ %.046.us.us, %ext_space_len.exit.thread.us.us ], [ %.046.us.us, %.split.us.split.us ], [ %.046.us, %.split.us.split ], [ %.046, %.split ], [ %.8, %.critedge ] ; 2 uses
  store ptr %.us-phi, ptr %0, align 8, !tbaa !107
  %i.cl = icmp ugt ptr %.us-phi, %i.b
  br label %bb.u

bb.u:                                             ; preds = %.thread62, %.thread65
  %.249 = phi i1 [ false, %.thread62 ], [ %i.cl, %.thread65 ]
  ret i1 %.249
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @read_root_single(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.yyjson_alc) align 8 captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %6 = alloca %struct.bigint, align 8             ; 29 uses
  %7 = alloca %struct.bigint, align 8             ; 20 uses
  %i.b = alloca ptr, align 8                      ; 69 uses
  %i.c = alloca ptr, align 8                      ; 27 uses
  %i.d = alloca [1 x i8], align 1                 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 17 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.d, ptr %i.e, align 8, !tbaa !107
  %i.f = load ptr, ptr %3, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 5 uses
  %i.i = call ptr %i.f(ptr noundef %i.h, i64 noundef 80) #33 ; 69 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.nx, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 60 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !100     ; 7 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !100
  %i.o = and i8 %i.n, 16
  %.not658 = icmp eq i8 %i.o, 0
  br i1 %.not658, label %bb.ik, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.p = and i32 %4, 32
  %.not670 = icmp eq i32 %i.p, 0
  br i1 %.not670, label %bb.d, label %.split, !prof !62

.split:                                           ; preds = %bb.c
  %i.q = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.q, label %read_str_opt.exit, label %bb.nw, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i8 %i.k, 45                      ; 58 uses
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 7 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !100   ; 6 uses
  %i.v = add i8 %i.u, -49
  %i.w = icmp ult i8 %i.v, 9
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !prof !120

.lr.ph:                                           ; preds = %bb.d
  %i.x = and i32 %4, 512                          ; 2 uses
  %.not974 = icmp ne i32 %i.x, 0                  ; 2 uses
  br i1 %.not974, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.u, 48
  br i1 %.not.i.us.peel, label %.split787.us, label %bb.e, !prof !62

bb.e:                                             ; preds = %.lr.ph.split.us.preheader
  %i.z = icmp ne i8 %i.u, 43
  %or.cond990.i.us.peel.not = or i1 %i.z, %i.r
  br i1 %or.cond990.i.us.peel.not, label %.split789.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !100  ; 4 uses
  %i.ab = add i8 %i.aa, -49
  %i.ac = icmp ult i8 %i.ab, 9
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !121

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.f
  %.not.i.us = icmp eq i8 %i.aa, 48
  br i1 %.not.i.us, label %.split787.us, label %.split789.us, !prof !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.u, 48
  br i1 %.not.i, label %.split787.us.thread, label %.loopexit738, !prof !62

.split789.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.e
  %.lcssa1584 = phi i8 [ %i.u, %bb.e ], [ %i.aa, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i784.us.lcssa1581 = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.ad = icmp eq i8 %.lcssa1584, 46
  br i1 %i.ad, label %bb.g, label %.loopexit738

bb.g:                                             ; preds = %.split789.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa1581, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !100 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  br i1 %i.ah, label %.thread1244, label %.loopexit738

.thread1244:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa1581, i64 1
  br label %.preheader737

.loopexit738:                                     ; preds = %.lr.ph.split, %bb.g, %.split789.us
  %.0903.i781 = phi ptr [ %.0903.i784.us.lcssa1581, %.split789.us ], [ %.0903.i784.us.lcssa1581, %bb.g ], [ %i.t, %.lr.ph.split ]
  %i.aj = and i32 %4, 16
  %.not671 = icmp eq i32 %i.aj, 0
  br i1 %.not671, label %read_inf_or_nan.exit.thread, label %bb.h, !prof !62

bb.h:                                             ; preds = %.loopexit738
  %i.ak = icmp ne i8 %i.k, 43
  %brmerge = or i1 %.not974, %i.ak
  br i1 %brmerge, label %bb.i, label %read_inf_or_nan.exit.thread, !prof !122

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.l
  %i.am = load i8, ptr %i.al, align 1, !tbaa !100 ; 2 uses
  %i.an = and i8 %i.am, 1
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 9 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 73
  br i1 %i.as, label %bb.j, label %._crit_edge1115

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = and i8 %i.au, -33
  %i.aw = icmp eq i8 %i.av, 78
  br i1 %i.aw, label %bb.k, label %._crit_edge1115

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !100
  %i.az = and i8 %i.ay, -33
  %i.ba = icmp eq i8 %i.az, 70
  br i1 %i.ba, label %bb.l, label %._crit_edge1115

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 73
  br i1 %i.be, label %bb.m, label %read_inf.exit251

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !100
  %i.bh = and i8 %i.bg, -33
  %i.bi = icmp eq i8 %i.bh, 78
  br i1 %i.bi, label %bb.n, label %._crit_edge1115

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !100
  %i.bl = and i8 %i.bk, -33
  %i.bm = icmp eq i8 %i.bl, 73
  br i1 %i.bm, label %bb.o, label %._crit_edge1115

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !100
  %i.bp = and i8 %i.bo, -33
  %i.bq = icmp eq i8 %i.bp, 84
  br i1 %i.bq, label %bb.p, label %._crit_edge1115

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !100
  %i.bt = and i8 %i.bs, -33
  %i.bu = icmp eq i8 %i.bt, 89
  br i1 %i.bu, label %bb.q, label %._crit_edge1115

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %read_inf.exit251

read_inf.exit251:                                 ; preds = %bb.q, %bb.l
  %.0.i250 = phi ptr [ %i.bv, %bb.q ], [ %i.bb, %bb.l ]
  store ptr %.0.i250, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bw = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !100
  br label %read_num.exit.thread

._crit_edge1115:                                  ; preds = %bb.m, %bb.i, %bb.p, %bb.o, %bb.n, %bb.k, %bb.j
  %i.by = and i8 %i.am, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz ; 4 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !100
  %i.cc = and i8 %i.cb, -33
  %i.cd = icmp eq i8 %i.cc, 78
  br i1 %i.cd, label %bb.r, label %read_inf_or_nan.exit.thread

bb.r:                                             ; preds = %._crit_edge1115
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !100
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 65
  br i1 %i.ch, label %bb.s, label %read_inf_or_nan.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !100
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 78
  br i1 %i.cl, label %bb.t, label %read_inf_or_nan.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.cn = select i1 %i.r, i64 -2251799813685248, i64 9221120237041090560
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !100
  br label %read_num.exit.thread

read_inf_or_nan.exit.thread:                      ; preds = %bb.h, %._crit_edge1115, %bb.r, %bb.s, %.loopexit738
  store ptr @.str.89, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

.split787.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %.lr.ph.split.us.preheader
  %.0903.i784.us.lcssa = phi ptr [ %i.t, %.lr.ph.split.us.preheader ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !100 ; 3 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !100
  %i.cu = and i8 %i.ct, 26
  %.not672 = icmp eq i8 %i.cu, 0
  br i1 %.not672, label %bb.u, label %bb.v, !prof !62

.split787.us.thread:                              ; preds = %.lr.ph.split
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !100 ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !100
  %i.da = and i8 %i.cz, 26
  %.not6721241 = icmp eq i8 %i.da, 0
  br i1 %.not6721241, label %.thread, label %bb.v, !prof !62

bb.u:                                             ; preds = %.split787.us
  %i.db = and i8 %i.cq, -33
  %i.dc = icmp eq i8 %i.db, 88
  br i1 %i.dc, label %.split630, label %.thread, !prof !138

.split630:                                        ; preds = %bb.u
  %i.dd = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.dd, label %read_str_opt.exit, label %bb.nw, !prof !137

.thread:                                          ; preds = %.split787.us.thread, %bb.u
  %i.de = phi ptr [ %i.cp, %bb.u ], [ %i.cv, %.split787.us.thread ]
  %i.df = select i1 %i.r, i64 12, i64 4
  store i64 %i.df, ptr %i.j, align 8, !tbaa !99
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 0, ptr %i.dg, align 8, !tbaa !100
  store ptr %i.de, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.v:                                             ; preds = %.split787.us.thread, %.split787.us
  %i.dh = phi i8 [ %i.cw, %.split787.us.thread ], [ %i.cq, %.split787.us ] ; 3 uses
  %i.di = phi ptr [ %i.cv, %.split787.us.thread ], [ %i.cp, %.split787.us ] ; 5 uses
  %.us-phi1242 = phi ptr [ %i.t, %.split787.us.thread ], [ %.0903.i784.us.lcssa, %.split787.us ]
  %i.dj = icmp eq i8 %i.dh, 46
  br i1 %i.dj, label %bb.w, label %bb.ab, !prof !62

bb.w:                                             ; preds = %bb.v
  %.phi.trans.insert1117 = getelementptr inbounds nuw i8, ptr %.us-phi1242, i64 2
  %.pre1118 = load i8, ptr %.phi.trans.insert1117, align 1, !tbaa !100 ; 3 uses
  %.pre1131 = add i8 %.pre1118, -48
  %i.dk = icmp ult i8 %.pre1131, 10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 4 uses
  br i1 %i.dk, label %.preheader737, label %bb.x, !prof !283

.preheader737:                                    ; preds = %.thread1244, %bb.w
  %i.dm = phi ptr [ %i.ai, %.thread1244 ], [ %i.dl, %bb.w ] ; 2 uses
  %.1904.i1247 = phi ptr [ %.0903.i784.us.lcssa1581, %.thread1244 ], [ %i.di, %bb.w ]
  %i.dn = phi i8 [ %i.af, %.thread1244 ], [ %.pre1118, %bb.w ] ; 2 uses
  %i.do = icmp eq i8 %i.dn, 48
  br i1 %i.do, label %.lr.ph796, label %._crit_edge797.thread, !prof !123

bb.x:                                             ; preds = %bb.w
  %.not674 = icmp eq i32 %i.x, 0
  br i1 %.not674, label %bb.aa, label %bb.y, !prof !62

bb.y:                                             ; preds = %bb.x
  %i.dp = and i8 %.pre1118, -33
  %i.dq = icmp eq i8 %i.dp, 69
  br i1 %i.dq, label %bb.fu, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.dr = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !100
  store ptr %i.dl, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.aa:                                            ; preds = %bb.x
  store ptr @.str.90, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

.lr.ph796:                                        ; preds = %.preheader737, %.lr.ph796
  %.2905.i795 = phi ptr [ %i.dt, %.lr.ph796 ], [ %i.dm, %.preheader737 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.2905.i795, i64 1 ; 4 uses
  %.pr = load i8, ptr %i.dt, align 1, !tbaa !100  ; 4 uses
  %i.du = icmp eq i8 %.pr, 48
  br i1 %i.du, label %.lr.ph796, label %._crit_edge797, !prof !124, !llvm.loop !6

._crit_edge797:                                   ; preds = %.lr.ph796
  %.pre1133 = add i8 %.pr, -48
  %i.dv = icmp ult i8 %.pre1133, 10
  br i1 %i.dv, label %._crit_edge797.thread, label %.thread1253, !prof !284

._crit_edge797.thread:                            ; preds = %.preheader737, %._crit_edge797
  %.2905.i.lcssa1252 = phi ptr [ %i.dt, %._crit_edge797 ], [ %i.dm, %.preheader737 ]
  %.lcssa7731251 = phi i8 [ %.pr, %._crit_edge797 ], [ %i.dn, %.preheader737 ]
  %i.dw = zext nneg i8 %.lcssa7731251 to i64
  %i.dx = add nsw i64 %i.dw, -48
  %i.dy = getelementptr inbounds i8, ptr %.2905.i.lcssa1252, i64 -1
  br label %bb.de

bb.ab:                                            ; preds = %bb.v
  %.pre1156 = add i8 %i.dh, -48
  %i.dz = icmp ult i8 %.pre1156, 10
  br i1 %i.dz, label %bb.ac, label %.thread1253, !prof !285

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.91, ptr %i.c, align 8, !tbaa !107
  %i.ea = getelementptr inbounds i8, ptr %i.di, i64 -1
  br label %read_num.exit.thread628

.thread1253:                                      ; preds = %._crit_edge797, %bb.ab
  %.3906.i1256 = phi ptr [ %i.di, %bb.ab ], [ %i.dt, %._crit_edge797 ] ; 3 uses
  %i.eb = phi i8 [ %i.dh, %bb.ab ], [ %.pr, %._crit_edge797 ]
  %i.ec = and i8 %i.eb, -33
  %i.ed = icmp eq i8 %i.ec, 69
  br i1 %i.ed, label %bb.ad, label %.loopexit736, !prof !45

bb.ad:                                            ; preds = %.thread1253
  %i.ee = getelementptr inbounds nuw i8, ptr %.3906.i1256, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !100
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !100
  %i.ej = trunc i8 %i.ei to i1
  %i.ek = select i1 %i.ej, i64 2, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.3906.i1256, i64 %i.ek ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !100
  %i.en = add i8 %i.em, -48
  %i.eo = icmp ult i8 %i.en, 10
  br i1 %i.eo, label %.preheader735, label %bb.ae, !prof !62

bb.ae:                                            ; preds = %bb.ad
  store ptr @.str.92, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

.preheader735:                                    ; preds = %bb.ad, %.preheader735
  %.4907.i = phi ptr [ %i.ep, %.preheader735 ], [ %i.el, %bb.ad ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.4907.i, i64 1 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !100
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %.preheader735, label %.loopexit736, !llvm.loop !7

.loopexit736:                                     ; preds = %.preheader735, %.thread1253
  %.5908.i = phi ptr [ %.3906.i1256, %.thread1253 ], [ %i.ep, %.preheader735 ]
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.et = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !100
  store ptr %.5908.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.0903.i.lcssa = phi ptr [ %i.t, %bb.d ], [ %i.y, %bb.f ] ; 39 uses
  %.lcssa774 = phi i8 [ %i.u, %bb.d ], [ %i.aa, %bb.f ]
  %i.ev = zext nneg i8 %.lcssa774 to i64          ; 2 uses
  %i.ew = add nsw i64 %i.ev, -48                  ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 1 ; 6 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !100 ; 2 uses
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %i.fa = add nsw i64 %i.ez, -48                  ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 10
  br i1 %i.fb, label %bb.af, label %bb.bc, !prof !62

bb.af:                                            ; preds = %._crit_edge
  %i.fc = mul nuw nsw i64 %i.ew, 10
  %i.fd = add nuw nsw i64 %i.fa, %i.fc            ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 2 ; 6 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !100 ; 2 uses
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %i.fh = add nsw i64 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i64 %i.fh, 10
  br i1 %i.fi, label %bb.ag, label %bb.bf, !prof !62

bb.ag:                                            ; preds = %bb.af
  %i.fj = mul nuw nsw i64 %i.fd, 10
  %i.fk = add nuw nsw i64 %i.fh, %i.fj            ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 3 ; 6 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !100 ; 2 uses
  %i.fn = zext i8 %i.fm to i64                    ; 2 uses
  %i.fo = add nsw i64 %i.fn, -48                  ; 2 uses
  %i.fp = icmp ult i64 %i.fo, 10
  br i1 %i.fp, label %bb.ah, label %bb.bi, !prof !62

bb.ah:                                            ; preds = %bb.ag
  %i.fq = mul nuw nsw i64 %i.fk, 10
  %i.fr = add nuw nsw i64 %i.fo, %i.fq            ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 4 ; 6 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !100 ; 2 uses
  %i.fu = zext i8 %i.ft to i64                    ; 2 uses
  %i.fv = add nsw i64 %i.fu, -48                  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 10
  br i1 %i.fw, label %bb.ai, label %bb.bl, !prof !62

bb.ai:                                            ; preds = %bb.ah
  %i.fx = mul nuw nsw i64 %i.fr, 10
  %i.fy = add nuw nsw i64 %i.fv, %i.fx            ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 5 ; 6 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !100 ; 2 uses
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  %i.gc = add nsw i64 %i.gb, -48                  ; 2 uses
  %i.gd = icmp ult i64 %i.gc, 10
  br i1 %i.gd, label %bb.aj, label %bb.bo, !prof !62

bb.aj:                                            ; preds = %bb.ai
  %i.ge = mul nuw nsw i64 %i.fy, 10
  %i.gf = add nuw nsw i64 %i.gc, %i.ge            ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 6 ; 6 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !100 ; 2 uses
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = add nsw i64 %i.gi, -48                  ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 10
  br i1 %i.gk, label %bb.ak, label %bb.br, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.gl = mul nuw nsw i64 %i.gf, 10
  %i.gm = add nuw nsw i64 %i.gj, %i.gl            ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 7 ; 6 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !100 ; 2 uses
  %i.gp = zext i8 %i.go to i64                    ; 2 uses
  %i.gq = add nsw i64 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i64 %i.gq, 10
  br i1 %i.gr, label %bb.al, label %bb.bu, !prof !62

bb.al:                                            ; preds = %bb.ak
  %i.gs = mul nuw nsw i64 %i.gm, 10
  %i.gt = add nuw nsw i64 %i.gq, %i.gs            ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 8 ; 6 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !100 ; 2 uses
  %i.gw = zext i8 %i.gv to i64                    ; 2 uses
  %i.gx = add nsw i64 %i.gw, -48                  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, 10
  br i1 %i.gy, label %bb.am, label %bb.bx, !prof !62

bb.am:                                            ; preds = %bb.al
  %i.gz = mul nuw nsw i64 %i.gt, 10
  %i.ha = add nuw nsw i64 %i.gx, %i.gz            ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 9 ; 6 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !100 ; 2 uses
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %i.he = add nsw i64 %i.hd, -48                  ; 2 uses
  %i.hf = icmp ult i64 %i.he, 10
  br i1 %i.hf, label %bb.an, label %bb.ca, !prof !62

bb.an:                                            ; preds = %bb.am
  %i.hg = mul nuw nsw i64 %i.ha, 10
  %i.hh = add nuw nsw i64 %i.he, %i.hg            ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 10 ; 6 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !100 ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 2 uses
  %i.hl = add nsw i64 %i.hk, -48                  ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 10
  br i1 %i.hm, label %bb.ao, label %bb.cd, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.hn = mul nuw nsw i64 %i.hh, 10
  %i.ho = add nuw nsw i64 %i.hl, %i.hn            ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 11 ; 6 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !100 ; 2 uses
  %i.hr = zext i8 %i.hq to i64                    ; 2 uses
  %i.hs = add nsw i64 %i.hr, -48                  ; 2 uses
  %i.ht = icmp ult i64 %i.hs, 10
  br i1 %i.ht, label %bb.ap, label %bb.cg, !prof !62

bb.ap:                                            ; preds = %bb.ao
  %i.hu = mul nuw nsw i64 %i.ho, 10
  %i.hv = add nuw nsw i64 %i.hs, %i.hu            ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 12 ; 6 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !100 ; 2 uses
  %i.hy = zext i8 %i.hx to i64                    ; 2 uses
  %i.hz = add nsw i64 %i.hy, -48                  ; 2 uses
  %i.ia = icmp ult i64 %i.hz, 10
  br i1 %i.ia, label %bb.aq, label %bb.cj, !prof !62

bb.aq:                                            ; preds = %bb.ap
  %i.ib = mul nuw nsw i64 %i.hv, 10
  %i.ic = add nuw nsw i64 %i.hz, %i.ib            ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 13 ; 6 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !100 ; 2 uses
  %i.if = zext i8 %i.ie to i64                    ; 2 uses
  %i.ig = add nsw i64 %i.if, -48                  ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 10
  br i1 %i.ih, label %bb.ar, label %bb.cm, !prof !62

bb.ar:                                            ; preds = %bb.aq
  %i.ii = mul nuw nsw i64 %i.ic, 10
  %i.ij = add nuw nsw i64 %i.ig, %i.ii            ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 14 ; 6 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !100 ; 2 uses
  %i.im = zext i8 %i.il to i64                    ; 2 uses
  %i.in = add nsw i64 %i.im, -48                  ; 2 uses
  %i.io = icmp ult i64 %i.in, 10
  br i1 %i.io, label %bb.as, label %bb.cp, !prof !62

bb.as:                                            ; preds = %bb.ar
  %i.ip = mul nuw nsw i64 %i.ij, 10
  %i.iq = add nuw nsw i64 %i.in, %i.ip            ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 15 ; 6 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !100 ; 2 uses
  %i.it = zext i8 %i.is to i64                    ; 2 uses
  %i.iu = add nsw i64 %i.it, -48                  ; 2 uses
  %i.iv = icmp ult i64 %i.iu, 10
  br i1 %i.iv, label %bb.at, label %bb.cs, !prof !62

bb.at:                                            ; preds = %bb.as
  %i.iw = mul nuw nsw i64 %i.iq, 10
  %i.ix = add nuw nsw i64 %i.iu, %i.iw            ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 16 ; 6 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !100 ; 2 uses
  %i.ja = zext i8 %i.iz to i64                    ; 2 uses
  %i.jb = add nsw i64 %i.ja, -48                  ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 10
  br i1 %i.jc, label %bb.au, label %bb.cv, !prof !62

bb.au:                                            ; preds = %bb.at
  %i.jd = mul nuw nsw i64 %i.ix, 10
  %i.je = add nuw nsw i64 %i.jb, %i.jd            ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 17 ; 6 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !100 ; 2 uses
  %i.jh = zext i8 %i.jg to i64                    ; 2 uses
  %i.ji = add nsw i64 %i.jh, -48                  ; 2 uses
  %i.jj = icmp ult i64 %i.ji, 10
  br i1 %i.jj, label %bb.av, label %bb.cy, !prof !62

bb.av:                                            ; preds = %bb.au
  %i.jk = mul nuw nsw i64 %i.je, 10
  %i.jl = add nuw nsw i64 %i.ji, %i.jk            ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 18 ; 6 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !100 ; 2 uses
  %i.jo = zext i8 %i.jn to i64                    ; 2 uses
  %i.jp = add nsw i64 %i.jo, -48                  ; 2 uses
  %i.jq = icmp ult i64 %i.jp, 10
  br i1 %i.jq, label %bb.aw, label %bb.db, !prof !62

end_hunk_0
begin_hunk_1_@read_root_single:bb.a
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !100 ; 2 uses
  %i.td = zext i8 %i.tc to i64
  %i.te = add nsw i64 %i.td, -48                  ; 2 uses
  %i.tf = icmp ult i64 %i.te, 10
  br i1 %i.tf, label %bb.eb, label %bb.fo, !prof !62

bb.eb:                                            ; preds = %bb.ea
  %i.tg = mul nuw nsw i64 %.11883.i, 10
  %i.th = add nuw nsw i64 %i.te, %i.tg
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.co
  %.18921.i = phi ptr [ %.17920.i, %bb.eb ], [ %.0903.i.lcssa, %bb.co ] ; 2 uses
  %.12884.i = phi i64 [ %i.th, %bb.eb ], [ %i.ic, %bb.co ] ; 2 uses
  %.12.i = phi ptr [ %.11.i, %bb.eb ], [ %i.id, %bb.co ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.18921.i, i64 14 ; 2 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !100 ; 2 uses
  %i.tk = zext i8 %i.tj to i64
  %i.tl = add nsw i64 %i.tk, -48                  ; 2 uses
  %i.tm = icmp ult i64 %i.tl, 10
  br i1 %i.tm, label %bb.ed, label %bb.fo, !prof !62

bb.ed:                                            ; preds = %bb.ec
  %i.tn = mul nuw nsw i64 %.12884.i, 10
  %i.to = add nuw nsw i64 %i.tl, %i.tn
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.cr
  %.19922.i = phi ptr [ %.18921.i, %bb.ed ], [ %.0903.i.lcssa, %bb.cr ] ; 2 uses
  %.13885.i = phi i64 [ %i.to, %bb.ed ], [ %i.ij, %bb.cr ] ; 2 uses
  %.13.i = phi ptr [ %.12.i, %bb.ed ], [ %i.ik, %bb.cr ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.19922.i, i64 15 ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !100 ; 2 uses
  %i.tr = zext i8 %i.tq to i64
  %i.ts = add nsw i64 %i.tr, -48                  ; 2 uses
  %i.tt = icmp ult i64 %i.ts, 10
  br i1 %i.tt, label %bb.ef, label %bb.fo, !prof !62

bb.ef:                                            ; preds = %bb.ee
  %i.tu = mul nuw nsw i64 %.13885.i, 10
  %i.tv = add nuw nsw i64 %i.ts, %i.tu
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.cu
  %.20923.i = phi ptr [ %.19922.i, %bb.ef ], [ %.0903.i.lcssa, %bb.cu ] ; 2 uses
  %.14886.i = phi i64 [ %i.tv, %bb.ef ], [ %i.iq, %bb.cu ] ; 2 uses
  %.14.i = phi ptr [ %.13.i, %bb.ef ], [ %i.ir, %bb.cu ] ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.20923.i, i64 16 ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !100 ; 2 uses
  %i.ty = zext i8 %i.tx to i64
  %i.tz = add nsw i64 %i.ty, -48                  ; 2 uses
  %i.ua = icmp ult i64 %i.tz, 10
  br i1 %i.ua, label %bb.eh, label %bb.fo, !prof !62

bb.eh:                                            ; preds = %bb.eg
  %i.ub = mul nuw nsw i64 %.14886.i, 10
  %i.uc = add nuw nsw i64 %i.tz, %i.ub
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.cx
  %.21924.i = phi ptr [ %.20923.i, %bb.eh ], [ %.0903.i.lcssa, %bb.cx ] ; 2 uses
  %.15887.i = phi i64 [ %i.uc, %bb.eh ], [ %i.ix, %bb.cx ] ; 2 uses
  %.15.i = phi ptr [ %.14.i, %bb.eh ], [ %i.iy, %bb.cx ] ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.21924.i, i64 17 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !100 ; 2 uses
  %i.uf = zext i8 %i.ue to i64
  %i.ug = add nsw i64 %i.uf, -48                  ; 2 uses
  %i.uh = icmp ult i64 %i.ug, 10
  br i1 %i.uh, label %bb.ej, label %bb.fo, !prof !62

bb.ej:                                            ; preds = %bb.ei
  %i.ui = mul nuw nsw i64 %.15887.i, 10
  %i.uj = add nuw nsw i64 %i.ug, %i.ui
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.da
  %.22925.i = phi ptr [ %.21924.i, %bb.ej ], [ %.0903.i.lcssa, %bb.da ] ; 2 uses
  %.16888.i = phi i64 [ %i.uj, %bb.ej ], [ %i.je, %bb.da ] ; 2 uses
  %.16.i = phi ptr [ %.15.i, %bb.ej ], [ %i.jf, %bb.da ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.22925.i, i64 18 ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !100 ; 2 uses
  %i.um = zext i8 %i.ul to i64
  %i.un = add nsw i64 %i.um, -48                  ; 2 uses
  %i.uo = icmp ult i64 %i.un, 10
  br i1 %i.uo, label %bb.el, label %bb.fo, !prof !62

bb.el:                                            ; preds = %bb.ek
  %i.up = mul nuw nsw i64 %.16888.i, 10
  %i.uq = add nuw nsw i64 %i.un, %i.up
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.dd
  %.23926.i = phi ptr [ %.22925.i, %bb.el ], [ %.0903.i.lcssa, %bb.dd ] ; 2 uses
  %.17889.i = phi i64 [ %i.uq, %bb.el ], [ %i.jl, %bb.dd ] ; 2 uses
  %.17.i = phi ptr [ %.16.i, %bb.el ], [ %i.jm, %bb.dd ] ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.23926.i, i64 19 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !100 ; 2 uses
  %i.ut = zext i8 %i.us to i64
  %i.uu = add nsw i64 %i.ut, -48                  ; 2 uses
  %i.uv = icmp ult i64 %i.uu, 10
  br i1 %i.uv, label %bb.en, label %bb.fo, !prof !62

bb.en:                                            ; preds = %bb.em
  %i.uw = mul nuw i64 %.17889.i, 10
  %i.ux = add nuw i64 %i.uu, %i.uw                ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.23926.i, i64 20 ; 3 uses
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !100 ; 3 uses
  %i.va = add i8 %i.uz, -48
  %i.vb = icmp ult i8 %i.va, 10
  br i1 %i.vb, label %bb.fc, label %bb.fo

bb.eo:                                            ; preds = %bb.aw
  %i.vc = add i8 %i.ju, -48
  %i.vd = icmp ult i8 %i.vc, 10
  br i1 %i.vd, label %bb.ep, label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  %i.ve = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 20 ; 6 uses
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !100
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !100
  %i.vj = and i8 %i.vi, 26
  %.not695 = icmp eq i8 %i.vj, 0
  br i1 %.not695, label %bb.eq, label %bb.ex

bb.eq:                                            ; preds = %bb.ep
  %i.vk = icmp ult i64 %i.js, 1844674407370955161
  br i1 %i.vk, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vl = icmp eq i64 %i.js, 1844674407370955161
  %i.vm = icmp samesign ult i8 %i.ju, 54
  %or.cond5.i = and i1 %i.vl, %i.vm
  br i1 %or.cond5.i, label %bb.es, label %bb.ex

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.vn = mul nuw i64 %i.js, 10
  %i.vo = add nsw i64 %i.vn, -48
  %i.vp = add nsw i64 %i.vo, %i.jv                ; 2 uses
  br i1 %i.r, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.vq = and i32 %4, 128
  %.not696 = icmp eq i32 %i.vq, 0
  br i1 %.not696, label %bb.ev, label %bb.eu, !prof !62

bb.eu:                                            ; preds = %bb.et
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.vr = ptrtoint ptr %i.ve to i64
  %i.vs = ptrtoint ptr %1 to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = shl i64 %i.vt, 8
  %i.vv = or disjoint i64 %i.vu, 1
  store i64 %i.vv, ptr %i.j, align 8, !tbaa !99
  %i.vw = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.vw, align 8, !tbaa !100
  store ptr %i.ve, ptr %i.e, align 8, !tbaa !107
  store ptr %i.ve, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.ev:                                            ; preds = %bb.et
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.vx = uitofp i64 %i.vp to double
  %i.vy = fneg double %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store double %i.vy, ptr %i.vz, align 8, !tbaa !100
  store ptr %i.ve, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.ew:                                            ; preds = %bb.es
  store i64 4, ptr %i.j, align 8, !tbaa !99
  %i.wa = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.vp, ptr %i.wa, align 8, !tbaa !100
  store ptr %i.ve, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.ex:                                            ; preds = %bb.er, %bb.ep, %bb.eo
  %i.wb = and i8 %i.ju, -33
  %i.wc = icmp eq i8 %i.wb, 69
  br i1 %i.wc, label %bb.fu, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.wd = icmp eq i8 %i.ju, 46
  br i1 %i.wd, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.we = getelementptr inbounds nuw i8, ptr %.0903.i.lcssa, i64 20 ; 4 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !100 ; 3 uses
  %i.wg = add i8 %i.wf, -48
  %i.wh = icmp ult i8 %i.wg, 10
  br i1 %i.wh, label %bb.fc, label %bb.fa, !prof !62

bb.fa:                                            ; preds = %bb.ez
  %i.wi = and i32 %4, 512
  %.not697 = icmp eq i32 %i.wi, 0
  br i1 %.not697, label %bb.fb, label %bb.fo, !prof !62

bb.fb:                                            ; preds = %bb.fa
  store ptr @.str.90, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

bb.fc:                                            ; preds = %bb.ez, %bb.ey, %bb.en
  %i.wj = phi i8 [ %i.uz, %bb.en ], [ %i.wf, %bb.ez ], [ %i.ju, %bb.ey ]
  %.24.i = phi ptr [ %i.uy, %bb.en ], [ %i.we, %bb.ez ], [ %i.jt, %bb.ey ] ; 5 uses
  %.18890.i = phi i64 [ %i.ux, %bb.en ], [ %i.js, %bb.ez ], [ %i.js, %bb.ey ]
  %.18.i = phi ptr [ %.17.i, %bb.en ], [ %i.jt, %bb.ez ], [ null, %bb.ey ] ; 2 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fd, %bb.fc
  %.25.i = phi ptr [ %.24.i, %bb.fc ], [ %i.wk, %bb.fd ] ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.25.i, i64 1 ; 9 uses
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !100 ; 5 uses
  %i.wm = add i8 %i.wl, -48
  %i.wn = icmp ult i8 %i.wm, 10
  br i1 %i.wn, label %bb.fd, label %bb.fe, !llvm.loop !8

bb.fe:                                            ; preds = %bb.fd
  %i.wo = icmp ugt i8 %i.wj, 52
  %i.wp = zext i1 %i.wo to i64
  %i.wq = add nuw i64 %.18890.i, %i.wp            ; 2 uses
  %.not982.i = icmp eq ptr %.18.i, null
  br i1 %.not982.i, label %bb.ff, label %.loopexit734

bb.ff:                                            ; preds = %bb.fe
  %i.wr = zext i8 %i.wl to i64
  %i.ws = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !100
  %i.wu = and i8 %i.wt, 24
  %i.wv = icmp eq i8 %i.wu, 0
  %i.ww = and i32 %4, 128
  %i.wx = icmp ne i32 %i.ww, 0
  %or.cond = and i1 %i.wx, %i.wv
  br i1 %or.cond, label %bb.fg, label %bb.fh, !prof !126

bb.fg:                                            ; preds = %bb.ff
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.wy = ptrtoint ptr %i.wk to i64
  %i.wz = ptrtoint ptr %1 to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = shl i64 %i.xa, 8
  %i.xc = or disjoint i64 %i.xb, 1
  store i64 %i.xc, ptr %i.j, align 8, !tbaa !99
  %i.xd = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.xd, align 8, !tbaa !100
  store ptr %i.wk, ptr %i.e, align 8, !tbaa !107
  store ptr %i.wk, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.fh:                                            ; preds = %bb.ff
  %i.xe = icmp eq i8 %i.wl, 46
  br i1 %i.xe, label %bb.fi, label %.loopexit734

bb.fi:                                            ; preds = %bb.fh
  %i.xf = getelementptr inbounds nuw i8, ptr %.25.i, i64 2 ; 3 uses
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !100
  %i.xh = add i8 %i.xg, -48
  %i.xi = icmp ult i8 %i.xh, 10
  br i1 %i.xi, label %.preheader1575, label %bb.fj, !prof !62

.preheader1575:                                   ; preds = %bb.fj, %bb.fi
  br label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.xj = and i32 %4, 512
  %.not699 = icmp eq i32 %i.xj, 0
  br i1 %.not699, label %bb.fk, label %.preheader1575, !prof !62

bb.fk:                                            ; preds = %bb.fj
  store ptr @.str.90, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

bb.fl:                                            ; preds = %.preheader1575, %bb.fl
  %.26.i = phi ptr [ %i.xn, %bb.fl ], [ %i.xf, %.preheader1575 ] ; 3 uses
  %i.xk = load i8, ptr %.26.i, align 1, !tbaa !100 ; 2 uses
  %i.xl = add i8 %i.xk, -48
  %i.xm = icmp ult i8 %i.xl, 10
  %i.xn = getelementptr inbounds nuw i8, ptr %.26.i, i64 1
  br i1 %i.xm, label %bb.fl, label %.loopexit734, !llvm.loop !9

.loopexit734:                                     ; preds = %bb.fl, %bb.fh, %bb.fe
  %i.xo = phi i8 [ %i.wl, %bb.fe ], [ %i.wl, %bb.fh ], [ %i.xk, %bb.fl ]
  %.27.i = phi ptr [ %i.wk, %bb.fe ], [ %i.wk, %bb.fh ], [ %.26.i, %bb.fl ] ; 4 uses
  %.19.i = phi ptr [ %.18.i, %bb.fe ], [ %i.wk, %bb.fh ], [ %i.wk, %bb.fl ] ; 4 uses
  %i.xp = ptrtoint ptr %.19.i to i64
  %i.xq = ptrtoint ptr %.24.i to i64
  %i.xr = sub i64 %i.xp, %i.xq
  %i.xs = icmp ult ptr %.19.i, %.24.i
  %i.xt = zext i1 %i.xs to i64
  %i.xu = add nsw i64 %i.xr, %i.xt                ; 2 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fn, %.loopexit734
  %.27.pn.i = phi ptr [ %.27.i, %.loopexit734 ], [ %.0927.i, %bb.fn ]
  %.0927.i = getelementptr inbounds i8, ptr %.27.pn.i, i64 -1 ; 4 uses
  %i.xv = load i8, ptr %.0927.i, align 1, !tbaa !100
  switch i8 %i.xv, label %.critedge.i [
    i8 48, label %bb.fn
    i8 46, label %bb.fn
  ]

bb.fn:                                            ; preds = %bb.fm, %bb.fm
  %i.xw = icmp ugt ptr %.0927.i, %1
  br i1 %i.xw, label %bb.fm, label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.fn, %bb.fm
  %i.xx = icmp ult ptr %.0927.i, %.24.i           ; 2 uses
  %..27.i = select i1 %i.xx, ptr null, ptr %.27.i ; 2 uses
  %..24.i = select i1 %i.xx, ptr null, ptr %.24.i ; 2 uses
  %i.xy = and i8 %i.xo, -33
  %i.xz = icmp eq i8 %i.xy, 69
  br i1 %i.xz, label %bb.fu, label %bb.ge

bb.fo:                                            ; preds = %bb.fa, %bb.en, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de
  %i.ya = phi i8 [ %i.uz, %bb.en ], [ %i.ul, %bb.ek ], [ %i.ue, %bb.ei ], [ %i.tx, %bb.eg ], [ %i.tq, %bb.ee ], [ %i.tj, %bb.ec ], [ %i.tc, %bb.ea ], [ %i.sv, %bb.dy ], [ %i.so, %bb.dw ], [ %i.sh, %bb.du ], [ %i.sa, %bb.ds ], [ %i.rt, %bb.dq ], [ %i.rm, %bb.do ], [ %i.rf, %bb.dm ], [ %i.qy, %bb.dk ], [ %i.qr, %bb.di ], [ %i.qk, %bb.dg ], [ %i.qd, %bb.de ], [ %i.wf, %bb.fa ], [ %i.us, %bb.em ]
  %.28.i = phi ptr [ %i.uy, %bb.en ], [ %i.uk, %bb.ek ], [ %i.ud, %bb.ei ], [ %i.tw, %bb.eg ], [ %i.tp, %bb.ee ], [ %i.ti, %bb.ec ], [ %i.tb, %bb.ea ], [ %i.su, %bb.dy ], [ %i.sn, %bb.dw ], [ %i.sg, %bb.du ], [ %i.rz, %bb.ds ], [ %i.rs, %bb.dq ], [ %i.rl, %bb.do ], [ %i.re, %bb.dm ], [ %i.qx, %bb.dk ], [ %i.qq, %bb.di ], [ %i.qj, %bb.dg ], [ %i.qc, %bb.de ], [ %i.we, %bb.fa ], [ %i.ur, %bb.em ] ; 8 uses
  %.19891.i = phi i64 [ %i.ux, %bb.en ], [ %.16888.i, %bb.ek ], [ %.15887.i, %bb.ei ], [ %.14886.i, %bb.eg ], [ %.13885.i, %bb.ee ], [ %.12884.i, %bb.ec ], [ %.11883.i, %bb.ea ], [ %.10882.i, %bb.dy ], [ %.9881.i, %bb.dw ], [ %.8880.i, %bb.du ], [ %.7879.i, %bb.ds ], [ %.6878.i, %bb.dq ], [ %.5877.i, %bb.do ], [ %.4876.i, %bb.dm ], [ %.3875.i, %bb.dk ], [ %.2874.i, %bb.di ], [ %.1873.i, %bb.dg ], [ %.0872.i, %bb.de ], [ %i.js, %bb.fa ], [ %.17889.i, %bb.em ] ; 2 uses
  %.20.i = phi ptr [ %.17.i, %bb.en ], [ %.16.i, %bb.ek ], [ %.15.i, %bb.ei ], [ %.14.i, %bb.eg ], [ %.13.i, %bb.ee ], [ %.12.i, %bb.ec ], [ %.11.i, %bb.ea ], [ %.10.i, %bb.dy ], [ %.9.i, %bb.dw ], [ %.8.i, %bb.du ], [ %.7.i, %bb.ds ], [ %.6.i, %bb.dq ], [ %.5.i, %bb.do ], [ %.4.i, %bb.dm ], [ %.3871.i, %bb.dk ], [ %.2870.i, %bb.di ], [ %.1869.i, %bb.dg ], [ %.0868.i, %bb.de ], [ %i.jt, %bb.fa ], [ %.17.i, %bb.em ] ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.20.i, i64 1
  %i.yc = icmp eq ptr %i.yb, %.28.i
  br i1 %i.yc, label %bb.fp, label %bb.fr, !prof !45

bb.fp:                                            ; preds = %bb.fo
  %i.yd = and i32 %4, 512
  %.not698 = icmp eq i32 %i.yd, 0
  br i1 %.not698, label %bb.fq, label %bb.fr, !prof !62

bb.fq:                                            ; preds = %bb.fp
  store ptr @.str.90, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

bb.fr:                                            ; preds = %bb.fp, %bb.fo
  %i.ye = ptrtoint ptr %.28.i to i64
  %i.yf = ptrtoint ptr %.20.i to i64
  %reass.sub = sub i64 %i.yf, %i.ye
  %.neg981.i = add i64 %reass.sub, 1              ; 3 uses
  %i.yg = and i8 %i.ya, -33
  %i.yh = icmp eq i8 %i.yg, 69
  br i1 %i.yh, label %bb.fu, label %bb.fs, !prof !45

bb.fs:                                            ; preds = %bb.fr
  %i.yi = icmp slt i64 %.neg981.i, -343
  br i1 %i.yi, label %bb.ft, label %bb.gm, !prof !45

bb.ft:                                            ; preds = %bb.fs
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.yj = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.yk = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.yj, ptr %i.yk, align 8, !tbaa !100
  store ptr %.28.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.fu:                                            ; preds = %bb.fr, %.critedge.i, %bb.ex, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.y
  %.0929.i = phi i64 [ 0, %bb.y ], [ %i.xu, %.critedge.i ], [ %.neg981.i, %bb.fr ], [ 0, %bb.dd ], [ 0, %bb.da ], [ 0, %bb.cx ], [ 0, %bb.cu ], [ 0, %bb.cr ], [ 0, %bb.co ], [ 0, %bb.cl ], [ 0, %bb.ci ], [ 0, %bb.cf ], [ 0, %bb.cc ], [ 0, %bb.bz ], [ 0, %bb.bw ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bn ], [ 0, %bb.bk ], [ 0, %bb.bh ], [ 0, %bb.be ], [ 0, %bb.ex ]
  %.29.i = phi ptr [ %i.dl, %bb.y ], [ %.27.i, %.critedge.i ], [ %.28.i, %bb.fr ], [ %i.jm, %bb.dd ], [ %i.jf, %bb.da ], [ %i.iy, %bb.cx ], [ %i.ir, %bb.cu ], [ %i.ik, %bb.cr ], [ %i.id, %bb.co ], [ %i.hw, %bb.cl ], [ %i.hp, %bb.ci ], [ %i.hi, %bb.cf ], [ %i.hb, %bb.cc ], [ %i.gu, %bb.bz ], [ %i.gn, %bb.bw ], [ %i.gg, %bb.bt ], [ %i.fz, %bb.bq ], [ %i.fs, %bb.bn ], [ %i.fl, %bb.bk ], [ %i.fe, %bb.bh ], [ %i.ex, %bb.be ], [ %i.jt, %bb.ex ]
  %.20892.i = phi i64 [ 0, %bb.y ], [ %i.wq, %.critedge.i ], [ %.19891.i, %bb.fr ], [ %i.jl, %bb.dd ], [ %i.je, %bb.da ], [ %i.ix, %bb.cx ], [ %i.iq, %bb.cu ], [ %i.ij, %bb.cr ], [ %i.ic, %bb.co ], [ %i.hv, %bb.cl ], [ %i.ho, %bb.ci ], [ %i.hh, %bb.cf ], [ %i.ha, %bb.cc ], [ %i.gt, %bb.bz ], [ %i.gm, %bb.bw ], [ %i.gf, %bb.bt ], [ %i.fy, %bb.bq ], [ %i.fr, %bb.bn ], [ %i.fk, %bb.bk ], [ %i.fd, %bb.bh ], [ %i.ew, %bb.be ], [ %i.js, %bb.ex ]
  %.21.i = phi ptr [ %i.di, %bb.y ], [ %.19.i, %.critedge.i ], [ %.20.i, %bb.fr ], [ %i.jm, %bb.dd ], [ %i.jf, %bb.da ], [ %i.iy, %bb.cx ], [ %i.ir, %bb.cu ], [ %i.ik, %bb.cr ], [ %i.id, %bb.co ], [ %i.hw, %bb.cl ], [ %i.hp, %bb.ci ], [ %i.hi, %bb.cf ], [ %i.hb, %bb.cc ], [ %i.gu, %bb.bz ], [ %i.gn, %bb.bw ], [ %i.gg, %bb.bt ], [ %i.fz, %bb.bq ], [ %i.fs, %bb.bn ], [ %i.fl, %bb.bk ], [ %i.fe, %bb.bh ], [ %i.ex, %bb.be ], [ %i.jt, %bb.ex ]
  %.1865.i = phi ptr [ null, %bb.y ], [ %..27.i, %.critedge.i ], [ %.28.i, %bb.fr ], [ %i.jm, %bb.dd ], [ %i.jf, %bb.da ], [ %i.iy, %bb.cx ], [ %i.ir, %bb.cu ], [ %i.ik, %bb.cr ], [ %i.id, %bb.co ], [ %i.hw, %bb.cl ], [ %i.hp, %bb.ci ], [ %i.hi, %bb.cf ], [ %i.hb, %bb.cc ], [ %i.gu, %bb.bz ], [ %i.gn, %bb.bw ], [ %i.gg, %bb.bt ], [ %i.fz, %bb.bq ], [ %i.fs, %bb.bn ], [ %i.fl, %bb.bk ], [ %i.fe, %bb.bh ], [ %i.ex, %bb.be ], [ null, %bb.ex ]
  %.1861.i = phi ptr [ null, %bb.y ], [ %..24.i, %.critedge.i ], [ null, %bb.fr ], [ null, %bb.dd ], [ null, %bb.da ], [ null, %bb.cx ], [ null, %bb.cu ], [ null, %bb.cr ], [ null, %bb.co ], [ null, %bb.cl ], [ null, %bb.ci ], [ null, %bb.cf ], [ null, %bb.cc ], [ null, %bb.bz ], [ null, %bb.bw ], [ null, %bb.bt ], [ null, %bb.bq ], [ null, %bb.bn ], [ null, %bb.bk ], [ null, %bb.bh ], [ null, %bb.be ], [ null, %bb.ex ]
  %i.yl = getelementptr inbounds nuw i8, ptr %.29.i, i64 1 ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !100 ; 2 uses
  %i.yn = icmp eq i8 %i.ym, 45                    ; 2 uses
  %i.yo = zext i8 %i.ym to i64
  %i.yp = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !100
  %i.yr = and i8 %i.yq, 1
  %i.ys = zext nneg i8 %i.yr to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.ys ; 4 uses
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !100 ; 2 uses
  %i.yv = add i8 %i.yu, -48                       ; 2 uses
  %i.yw = icmp ult i8 %i.yv, 10
  br i1 %i.yw, label %.preheader733, label %bb.fv, !prof !62

.preheader733:                                    ; preds = %bb.fu
  %i.yx = icmp eq i8 %i.yu, 48
  br i1 %i.yx, label %.lr.ph800, label %.lr.ph804.preheader

bb.fv:                                            ; preds = %bb.fu
  store ptr @.str.92, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

.preheader732:                                    ; preds = %.lr.ph800
  %.pre1130 = add i8 %.pr612, -48                 ; 2 uses
  %i.yy = icmp ult i8 %.pre1130, 10
  br i1 %i.yy, label %.lr.ph804.preheader, label %._crit_edge805

.lr.ph804.preheader:                              ; preds = %.preheader733, %.preheader732
  %.30.i.lcssa1261 = phi ptr [ %i.yz, %.preheader732 ], [ %i.yt, %.preheader733 ] ; 2 uses
  %.pre-phi1259 = phi i8 [ %.pre1130, %.preheader732 ], [ %i.yv, %.preheader733 ]
  br label %.lr.ph804

.lr.ph800:                                        ; preds = %.preheader733, %.lr.ph800
  %.30.i799 = phi ptr [ %i.yz, %.lr.ph800 ], [ %i.yt, %.preheader733 ]
  %i.yz = getelementptr inbounds nuw i8, ptr %.30.i799, i64 1 ; 5 uses
  %.pr612 = load i8, ptr %i.yz, align 1, !tbaa !100 ; 2 uses
  %i.za = icmp eq i8 %.pr612, 48
  br i1 %i.za, label %.lr.ph800, label %.preheader732, !llvm.loop !11

.lr.ph804:                                        ; preds = %.lr.ph804.preheader, %.lr.ph804
  %i.zb = phi i8 [ %i.zh, %.lr.ph804 ], [ %.pre-phi1259, %.lr.ph804.preheader ]
  %.31.i803 = phi ptr [ %i.zc, %.lr.ph804 ], [ %.30.i.lcssa1261, %.lr.ph804.preheader ]
  %.0928.i802 = phi i64 [ %i.zf, %.lr.ph804 ], [ 0, %.lr.ph804.preheader ]
  %i.zc = getelementptr inbounds nuw i8, ptr %.31.i803, i64 1 ; 3 uses
  %i.zd = zext nneg i8 %i.zb to i64
  %i.ze = mul i64 %.0928.i802, 10
  %i.zf = add i64 %i.ze, %i.zd                    ; 2 uses
  %i.zg = load i8, ptr %i.zc, align 1, !tbaa !100
  %i.zh = add i8 %i.zg, -48                       ; 2 uses
  %i.zi = icmp ult i8 %i.zh, 10
  br i1 %i.zi, label %.lr.ph804, label %._crit_edge805, !llvm.loop !12

._crit_edge805:                                   ; preds = %.lr.ph804, %.preheader732
  %.30.i.lcssa1260 = phi ptr [ %i.yz, %.preheader732 ], [ %.30.i.lcssa1261, %.lr.ph804 ]
  %.0928.i.lcssa = phi i64 [ 0, %.preheader732 ], [ %i.zf, %.lr.ph804 ] ; 2 uses
  %.31.i.lcssa = phi ptr [ %i.yz, %.preheader732 ], [ %i.zc, %.lr.ph804 ] ; 6 uses
  %i.zj = ptrtoint ptr %.31.i.lcssa to i64        ; 2 uses
  %i.zk = ptrtoint ptr %.30.i.lcssa1260 to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = icmp sgt i64 %i.zl, 18
  br i1 %i.zm, label %bb.fw, label %bb.gd, !prof !45

bb.fw:                                            ; preds = %._crit_edge805
  br i1 %i.yn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.zn = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.zo = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.zn, ptr %i.zo, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.fy:                                            ; preds = %bb.fw
  %i.zp = and i32 %4, 128
  %.not708 = icmp eq i32 %i.zp, 0
  br i1 %.not708, label %bb.ga, label %bb.fz, !prof !62

bb.fz:                                            ; preds = %bb.fy
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.zq = ptrtoint ptr %1 to i64
  %i.zr = sub i64 %i.zj, %i.zq
  %i.zs = shl i64 %i.zr, 8
  %i.zt = or disjoint i64 %i.zs, 1
  store i64 %i.zt, ptr %i.j, align 8, !tbaa !99
  %i.zu = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.zu, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.e, align 8, !tbaa !107
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.ga:                                            ; preds = %bb.fy
  %i.zv = and i32 %4, 16
  %.not709 = icmp eq i32 %i.zv, 0
  br i1 %.not709, label %bb.gc, label %bb.gb, !prof !62

bb.gb:                                            ; preds = %bb.ga
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.zw = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.zx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.zw, ptr %i.zx, align 8, !tbaa !100
  store ptr %.31.i.lcssa, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gc:                                            ; preds = %bb.ga
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

bb.gd:                                            ; preds = %._crit_edge805
  %i.zy = sub nsw i64 0, %.0928.i.lcssa
  %i.zz = select i1 %i.yn, i64 %i.zy, i64 %.0928.i.lcssa
  %i.aaa = add nsw i64 %i.zz, %.0929.i
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.critedge.i
  %.1930.i = phi i64 [ %i.aaa, %bb.gd ], [ %i.xu, %.critedge.i ] ; 3 uses
  %.32.i = phi ptr [ %.31.i.lcssa, %bb.gd ], [ %.27.i, %.critedge.i ] ; 6 uses
  %.21893.i = phi i64 [ %.20892.i, %bb.gd ], [ %i.wq, %.critedge.i ]
  %.22.i = phi ptr [ %.21.i, %bb.gd ], [ %.19.i, %.critedge.i ]
  %.2866.i = phi ptr [ %.1865.i, %bb.gd ], [ %..27.i, %.critedge.i ]
  %.2862.i = phi ptr [ %.1861.i, %bb.gd ], [ %..24.i, %.critedge.i ]
  %i.aab = icmp slt i64 %.1930.i, -343
  br i1 %i.aab, label %bb.gf, label %bb.gg, !prof !45

bb.gf:                                            ; preds = %bb.ge
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.aac = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.aad = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.aac, ptr %i.aad, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.aae = icmp sgt i64 %.1930.i, 308
  br i1 %i.aae, label %bb.gh, label %bb.gm, !prof !45

bb.gh:                                            ; preds = %bb.gg
  %i.aaf = and i32 %4, 128
  %.not706 = icmp eq i32 %i.aaf, 0
  br i1 %.not706, label %bb.gj, label %bb.gi, !prof !62

bb.gi:                                            ; preds = %bb.gh
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.aag = ptrtoint ptr %.32.i to i64
  %i.aah = ptrtoint ptr %1 to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = shl i64 %i.aai, 8
  %i.aak = or disjoint i64 %i.aaj, 1
  store i64 %i.aak, ptr %i.j, align 8, !tbaa !99
  %i.aal = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.aal, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.e, align 8, !tbaa !107
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gj:                                            ; preds = %bb.gh
  %i.aam = and i32 %4, 16
  %.not707 = icmp eq i32 %i.aam, 0
  br i1 %.not707, label %bb.gl, label %bb.gk, !prof !62

bb.gk:                                            ; preds = %bb.gj
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.aan = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.aao = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.aan, ptr %i.aao, align 8, !tbaa !100
  store ptr %.32.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gl:                                            ; preds = %bb.gj
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  br label %read_num.exit.thread628

bb.gm:                                            ; preds = %bb.gg, %bb.fs
  %storemerge.in.i = phi i64 [ %.neg981.i, %bb.fs ], [ %.1930.i, %bb.gg ] ; 3 uses
  %.33.i = phi ptr [ %.28.i, %bb.fs ], [ %.32.i, %bb.gg ] ; 7 uses
  %.22894.i = phi i64 [ %.19891.i, %bb.fs ], [ %.21893.i, %bb.gg ] ; 7 uses
  %.23.i = phi ptr [ %.20.i, %bb.fs ], [ %.22.i, %bb.gg ]
  %.3867.i = phi ptr [ %.28.i, %bb.fs ], [ %.2866.i, %bb.gg ]
  %.3863.i = phi ptr [ null, %bb.fs ], [ %.2862.i, %bb.gg ] ; 2 uses
  %storemerge.i = trunc i64 %storemerge.in.i to i32 ; 8 uses
  store i32 %storemerge.i, ptr %i.a, align 4, !tbaa !119
  %i.aap = icmp ult i64 %.22894.i, 9007199254740992
  %i.aaq = add i32 %storemerge.i, 22
  %i.aar = icmp ult i32 %i.aaq, 45
  %or.cond9.i = and i1 %i.aap, %i.aar
  br i1 %or.cond9.i, label %bb.gn, label %bb.gr

bb.gn:                                            ; preds = %bb.gm
  %i.aas = uitofp nneg i64 %.22894.i to double    ; 2 uses
  %i.aat = icmp slt i32 %storemerge.i, 0
  br i1 %i.aat, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.aau = sub nsw i64 0, %storemerge.in.i
  %i.aav = and i64 %i.aau, 4294967295
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aav
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !128
  %i.aay = fdiv double %i.aas, %i.aax
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.aaz = and i64 %storemerge.in.i, 2147483647
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr @f64_pow10_table, i64 %i.aaz
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !128
  %i.abc = fmul double %i.abb, %i.aas
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.0900.i = phi double [ %i.aay, %bb.go ], [ %i.abc, %bb.gp ] ; 2 uses
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.abd = fneg double %.0900.i
  %i.abe = select i1 %i.r, double %i.abd, double %.0900.i
  %i.abf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store double %i.abe, ptr %i.abf, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

bb.gr:                                            ; preds = %bb.gm
  %i.abg = icmp eq ptr %.3863.i, null             ; 2 uses
  %i.abh = add i32 %storemerge.i, 306
  %i.abi = icmp ult i32 %i.abh, 594
  %i.abj = and i1 %i.abi, %i.abg
  br i1 %i.abj, label %bb.gs, label %..critedge992.i_crit_edge, !prof !62

..critedge992.i_crit_edge:                        ; preds = %bb.gr
  %.pre1136 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %.pre1138 = shl i64 %.22894.i, %.pre1136
  %.pre1140 = shl i32 %storemerge.i, 1
  %.pre1142 = mul nsw i32 %storemerge.i, 217706
  %.pre1144 = add nsw i32 %.pre1142, -4128768
  %.pre1146 = ashr i32 %.pre1144, 16
  %.pre1148 = zext i64 %.pre1138 to i128
  %.pre1150 = trunc nuw nsw i64 %.pre1136 to i32
  br label %.critedge992.i

bb.gs:                                            ; preds = %bb.gr
  %i.abk = shl nsw i32 %storemerge.i, 1           ; 2 uses
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr [8 x i8], ptr @pow10_sig_table, i64 %i.abl ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 5488
  %i.abo = load i64, ptr %i.abn, align 16, !tbaa !106
  %i.abp = mul nsw i32 %storemerge.i, 217706
  %i.abq = add nsw i32 %i.abp, -4128768
  %i.abr = ashr i32 %i.abq, 16                    ; 2 uses
  %i.abs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.22894.i, i1 true) ; 3 uses
  %i.abt = trunc nuw nsw i64 %i.abs to i32        ; 2 uses
  %i.abu = shl i64 %.22894.i, %i.abs
  %i.abv = zext i64 %i.abu to i128                ; 3 uses
  %i.abw = zext i64 %i.abo to i128
  %i.abx = mul nuw i128 %i.abw, %i.abv            ; 2 uses
  %i.aby = lshr i128 %i.abx, 64
  %i.abz = trunc nuw i128 %i.aby to i64           ; 3 uses
  %i.aca = trunc i128 %i.abx to i64               ; 2 uses
  %i.acb = and i64 %i.abz, 511
  %i.acc = add nsw i64 %i.acb, -1
  %i.acd = icmp ult i64 %i.acc, 510
  br i1 %i.acd, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ace = getelementptr i8, ptr %i.abm, i64 5496
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !106
  %i.acg = zext i64 %i.acf to i128
  %i.ach = mul nuw i128 %i.acg, %i.abv
  %i.aci = lshr i128 %i.ach, 64
  %i.acj = trunc nuw i128 %i.aci to i64
  %i.ack = add i64 %i.acj, %i.aca                 ; 2 uses
  %i.acl = add i64 %i.ack, -1
  %i.acm = icmp ult i64 %i.acl, -2
  br i1 %i.acm, label %bb.gu, label %.critedge992.i

bb.gu:                                            ; preds = %bb.gt
  %i.acn = icmp ult i64 %i.ack, %i.aca
  %i.aco = zext i1 %i.acn to i64
  %i.acp = add nuw i64 %i.aco, %i.abz
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gs
  %.0596 = phi i64 [ %i.abz, %bb.gs ], [ %i.acp, %bb.gu ] ; 2 uses
  %i.acq = icmp sgt i64 %.0596, -1                ; 2 uses
  %.neg983.i = sext i1 %i.acq to i32
  %i.acr = zext i1 %i.acq to i64
  %i.acs = shl i64 %.0596, %i.acr                 ; 2 uses
  %i.act = and i64 %i.acs, 1024
  %i.acu = add i64 %i.act, %i.acs                 ; 2 uses
  %i.acv = icmp ult i64 %i.acu, 1024
  %spec.select651.v = select i1 %i.acv, i32 65, i32 64
  %i.acw = lshr i64 %i.acu, 11
  %reass.sub980 = sub nsw i32 %i.abr, %i.abt
  %i.acx = add nsw i32 %reass.sub980, 1086
  %spec.select651 = add nsw i32 %i.acx, %.neg983.i
  %i.acy = add nsw i32 %spec.select651, %spec.select651.v
  %i.acz = zext nneg i32 %i.acy to i64
  %i.ada = shl nuw nsw i64 %i.acz, 52
  %i.adb = and i64 %i.acw, 4503599627370495
  %i.adc = or disjoint i64 %i.ada, %i.adb
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.add = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.ade = or disjoint i64 %i.adc, %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.ade, ptr %i.adf, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit.thread

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.gt
  %.pre-phi1151 = phi i32 [ %.pre1150, %..critedge992.i_crit_edge ], [ %i.abt, %bb.gt ]
  %.pre-phi1149 = phi i128 [ %.pre1148, %..critedge992.i_crit_edge ], [ %i.abv, %bb.gt ]
  %.pre-phi1147 = phi i32 [ %.pre1146, %..critedge992.i_crit_edge ], [ %i.abr, %bb.gt ]
  %.pre-phi1141 = phi i32 [ %.pre1140, %..critedge992.i_crit_edge ], [ %i.abk, %bb.gt ] ; 2 uses
  %.pre-phi1137 = phi i64 [ %.pre1136, %..critedge992.i_crit_edge ], [ %i.abs, %bb.gt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.adg = select i1 %i.abg, i64 0, i64 4
  %i.adh = shl i64 %i.adg, %.pre-phi1137          ; 2 uses
  %i.adi = add i32 %.pre-phi1141, 686
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adj
  %i.adl = load i64, ptr %i.adk, align 16, !tbaa !106
  %i.adm = add i32 %.pre-phi1141, 687
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adn
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !106
  %i.adq = lshr i64 %i.adp, 63
  %i.adr = add i64 %i.adq, %i.adl
  %i.ads = zext i64 %i.adr to i128
  %i.adt = mul nuw i128 %.pre-phi1149, %i.ads     ; 2 uses
  %i.adu = lshr i128 %i.adt, 64
  %i.adv = trunc nuw i128 %i.adu to i64
  %i.adw = trunc i128 %i.adt to i64
  %i.adx = lshr i64 %i.adw, 63
  %i.ady = add nuw i64 %i.adx, %i.adv             ; 2 uses
  %.not986.i = icmp eq i64 %i.adh, 0
  %i.adz = select i1 %.not986.i, i64 8, i64 9
  %i.aea = add i64 %i.adz, %i.adh
  %i.aeb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ady, i1 true) ; 3 uses
  %i.aec = trunc nuw nsw i64 %i.aeb to i32
  %i.aed = shl i64 %i.ady, %i.aeb                 ; 3 uses
  %i.aee = add nsw i32 %.pre-phi1147, 64
  %i.aef = add nuw nsw i32 %.pre-phi1151, %i.aec
  %i.aeg = sub nsw i32 %i.aee, %i.aef             ; 7 uses
  %i.aeh = shl i64 %i.aea, %i.aeb                 ; 3 uses
  %i.aei = icmp sgt i32 %i.aeg, -1086
  br i1 %i.aei, label %.thread616, label %bb.gw, !prof !62

bb.gw:                                            ; preds = %.critedge992.i
  %i.aej = icmp samesign ult i32 %i.aeg, -1137
  br i1 %i.aej, label %.thread613, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aek = sub nuw nsw i32 -1074, %i.aeg          ; 2 uses
  %i.ael = icmp samesign ult i32 %i.aeg, -1134
  br i1 %i.ael, label %.thread613, label %.thread616, !prof !286

.thread613:                                       ; preds = %bb.gw, %bb.gx
  %.0897.i615 = phi i32 [ %i.aek, %bb.gx ], [ 64, %bb.gw ]
  %i.aem = add nsw i32 %.0897.i615, -60           ; 2 uses
  %i.aen = zext nneg i32 %i.aem to i64            ; 2 uses
  %i.aeo = lshr i64 %i.aed, %i.aen
  %i.aep = add nsw i32 %i.aem, %i.aeg
  %i.aeq = lshr i64 %i.aeh, %i.aen
  %i.aer = add nuw i64 %i.aeq, 9
  br label %.thread616

.thread616:                                       ; preds = %.critedge992.i, %.thread613, %bb.gx
  %.0898.i = phi i64 [ %i.aer, %.thread613 ], [ %i.aeh, %bb.gx ], [ %i.aeh, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread613 ], [ %i.aek, %bb.gx ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.aep, %.thread613 ], [ %i.aeg, %bb.gx ], [ %i.aeg, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.aeo, %.thread613 ], [ %i.aed, %bb.gx ], [ %i.aed, %.critedge992.i ] ; 2 uses
  %i.aes = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aes
  %i.aet = xor i64 %notmask.i, -1
  %i.aeu = and i64 %.sroa.025.0.i, %i.aet
  %i.aev = shl nuw nsw i64 %i.aeu, 3              ; 2 uses
  %i.aew = add nsw i32 %.0896.i, -1
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = shl nuw nsw i64 8, %i.aex              ; 2 uses
  %i.aez = lshr i64 %.sroa.025.0.i, %i.aes
  %i.afa = add i64 %i.aey, %.0898.i
  %i.afb = icmp uge i64 %i.aev, %i.afa            ; 2 uses
  %i.afc = zext i1 %i.afb to i64
  %i.afd = add nuw nsw i64 %i.aez, %i.afc         ; 3 uses
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %bb.hg, label %bb.gy, !prof !45

bb.gy:                                            ; preds = %.thread616
  %i.aff = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.afg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.afd, i1 true) ; 2 uses
  %i.afh = trunc nuw nsw i64 %i.afg to i32
  %i.afi = shl i64 %i.afd, %i.afg
  %i.afj = lshr i64 %i.afi, 11                    ; 2 uses
  %i.afk = sub nsw i32 %i.aff, %i.afh             ; 5 uses
  %i.afl = icmp sgt i32 %i.afk, 960
  br i1 %i.afl, label %diy_fp_to_ieee_raw.exit, label %bb.gz, !prof !45

bb.gz:                                            ; preds = %bb.gy
  %i.afm = icmp sgt i32 %i.afk, -1086
  br i1 %i.afm, label %bb.ha, label %bb.hb, !prof !62

bb.ha:                                            ; preds = %bb.gz
  %i.afn = add nsw i32 %i.afk, 1086
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = shl nuw nsw i64 %i.afo, 52
  %i.afq = and i64 %i.afj, 4503599627370495
  %i.afr = or disjoint i64 %i.afp, %i.afq
  br label %bb.hg

bb.hb:                                            ; preds = %bb.gz
  %i.afs = icmp samesign ugt i32 %i.afk, -1138
  br i1 %i.afs, label %bb.hc, label %bb.hg, !prof !62

bb.hc:                                            ; preds = %bb.hb
  %i.aft = sub nuw nsw i32 -1085, %i.afk
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = lshr i64 %i.afj, %i.afu
  br label %bb.hg

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.gy
  %i.afw = and i32 %4, 128
  %.not700 = icmp eq i32 %i.afw, 0
  br i1 %.not700, label %bb.he, label %bb.hd, !prof !62

bb.hd:                                            ; preds = %diy_fp_to_ieee_raw.exit
  store i8 0, ptr %i.d, align 1, !tbaa !100
  %i.afx = ptrtoint ptr %.33.i to i64
  %i.afy = ptrtoint ptr %1 to i64
  %i.afz = sub i64 %i.afx, %i.afy
  %i.aga = shl i64 %i.afz, 8
  %i.agb = or disjoint i64 %i.aga, 1
  store i64 %i.agb, ptr %i.j, align 8, !tbaa !99
  %i.agc = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.agc, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread632

bb.he:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.agd = and i32 %4, 16
  %.not701 = icmp eq i32 %i.agd, 0
  br i1 %.not701, label %read_num.exit, label %bb.hf, !prof !62

bb.hf:                                            ; preds = %bb.he
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.age = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.agf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.age, ptr %i.agf, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.hg:                                            ; preds = %.thread616, %bb.ha, %bb.hc, %bb.hb
  %.0.i254.ph = phi i64 [ 0, %bb.hb ], [ %i.afv, %bb.hc ], [ %i.afr, %bb.ha ], [ 0, %.thread616 ] ; 7 uses
  %i.agg = sub i64 %i.aey, %.0898.i
  %.not987.i = icmp ule i64 %i.aev, %i.agg
  %spec.select.i = or i1 %.not987.i, %i.afb
  br i1 %spec.select.i, label %bb.hh, label %bb.hi, !prof !62

bb.hh:                                            ; preds = %bb.hg
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.agh = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.agi = or disjoint i64 %.0.i254.ph, %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.agi, ptr %i.agj, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.hi:                                            ; preds = %bb.hg
  %.not988.i = icmp samesign ult i64 %.0.i254.ph, 4503599627370496 ; 2 uses
  %i.agk = and i64 %.0.i254.ph, 4503599627370495
  %i.agl = or disjoint i64 %i.agk, 4503599627370496
  %i.agm = lshr i64 %.0.i254.ph, 52
  %i.agn = trunc nuw nsw i64 %i.agm to i32
  %i.ago = add nsw i32 %i.agn, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.ago ; 4 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i254.ph, i64 %i.agl
  %i.agp = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.agq = or disjoint i64 %i.agp, 1
  call fastcc void @bigint_set_buf(ptr noundef %6, i64 noundef %.22894.i, ptr noundef %i.a, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i)
  %i.agr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 29 uses
  store i64 %i.agq, ptr %i.agr, align 8, !tbaa !106
  %i.ags = load i32, ptr %i.a, align 4, !tbaa !119 ; 6 uses
  %i.agt = icmp sgt i32 %i.ags, -1
  br i1 %i.agt, label %.preheader731, label %bb.hq

.preheader731:                                    ; preds = %bb.hi
  %.promoted854 = load i32, ptr %6, align 8       ; 2 uses
  %i.agu = icmp samesign ugt i32 %i.ags, 18
  br i1 %i.agu, label %.lr.ph857, label %._crit_edge858

.lr.ph857:                                        ; preds = %.preheader731
  %i.agv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph857, %bigint_mul_u64.exit290
  %.0.i255856 = phi i32 [ %i.ags, %.lr.ph857 ], [ %i.aij, %bigint_mul_u64.exit290 ] ; 2 uses
  %i.agw = phi i32 [ %.promoted854, %.lr.ph857 ], [ %i.aii, %bigint_mul_u64.exit290 ] ; 9 uses
  %.not978 = icmp eq i32 %i.agw, 0
  br i1 %.not978, label %._crit_edge844, label %.lr.ph843.preheader

.lr.ph843.preheader:                              ; preds = %bb.hj
  %wide.trip.count1060 = zext i32 %i.agw to i64
  br label %.lr.ph843

.lr.ph843:                                        ; preds = %.lr.ph843.preheader, %bb.hk
  %indvars.iv1057 = phi i64 [ 0, %.lr.ph843.preheader ], [ %indvars.iv.next1058, %bb.hk ] ; 3 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1057
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !106
  %.not.i289 = icmp eq i64 %i.agy, 0
  br i1 %.not.i289, label %bb.hk, label %._crit_edge844.loopexit

bb.hk:                                            ; preds = %.lr.ph843
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 1 ; 2 uses
  %exitcond1061.not = icmp eq i64 %indvars.iv.next1058, %wide.trip.count1060
  br i1 %exitcond1061.not, label %bigint_mul_u64.exit290, label %.lr.ph843, !llvm.loop !13

._crit_edge844.loopexit:                          ; preds = %.lr.ph843
  %i.agz = trunc nuw i64 %indvars.iv1057 to i32
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %._crit_edge844.loopexit, %bb.hj
  %.018.i285.lcssa = phi i32 [ 0, %bb.hj ], [ %i.agz, %._crit_edge844.loopexit ] ; 2 uses
  %i.aha = icmp ult i32 %.018.i285.lcssa, %i.agw
  br i1 %i.aha, label %.lr.ph851.preheader, label %bigint_mul_u64.exit290

.lr.ph851.preheader:                              ; preds = %._crit_edge844
  %i.ahb = zext i32 %.018.i285.lcssa to i64       ; 4 uses
  %wide.trip.count1065 = zext i32 %i.agw to i64   ; 2 uses
  %i.ahc = sub nsw i64 %wide.trip.count1065, %i.ahb ; 3 uses
  %xtraiter1598 = and i64 %i.ahc, 1
  %i.ahd = add nsw i64 %wide.trip.count1065, -1
  %i.ahe = icmp eq i64 %i.ahd, %i.ahb
  br i1 %i.ahe, label %.lr.ph851.epil.preheader, label %.lr.ph851.preheader.new

.lr.ph851.preheader.new:                          ; preds = %.lr.ph851.preheader
  %unroll_iter1603 = and i64 %i.ahc, -2
  br label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851, %.lr.ph851.preheader.new
  %indvars.iv1062 = phi i64 [ %i.ahb, %.lr.ph851.preheader.new ], [ %indvars.iv.next1063.1, %.lr.ph851 ] ; 3 uses
  %.0.i287849 = phi i64 [ 0, %.lr.ph851.preheader.new ], [ %i.ahu, %.lr.ph851 ]
  %niter1604 = phi i64 [ 0, %.lr.ph851.preheader.new ], [ %niter1604.next.1, %.lr.ph851 ]
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062 ; 2 uses
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !106
  %i.ahh = zext i64 %i.ahg to i128
  %i.ahi = mul nuw i128 %i.ahh, 10000000000000000000
  %i.ahj = zext i64 %.0.i287849 to i128
  %i.ahk = add nuw i128 %i.ahi, %i.ahj            ; 2 uses
  %i.ahl = lshr i128 %i.ahk, 64
  %i.ahm = trunc i128 %i.ahk to i64
  store i64 %i.ahm, ptr %i.ahf, align 8, !tbaa !106
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8 ; 2 uses
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !106
  %i.ahq = zext i64 %i.ahp to i128
  %i.ahr = mul nuw i128 %i.ahq, 10000000000000000000
  %i.ahs = add nuw i128 %i.ahr, %i.ahl            ; 2 uses
  %i.aht = lshr i128 %i.ahs, 64                   ; 2 uses
  %i.ahu = trunc nuw i128 %i.aht to i64           ; 3 uses
  %i.ahv = trunc i128 %i.ahs to i64
  store i64 %i.ahv, ptr %i.aho, align 8, !tbaa !106
  %indvars.iv.next1063.1 = add nuw nsw i64 %indvars.iv1062, 2 ; 2 uses
  %niter1604.next.1 = add i64 %niter1604, 2       ; 2 uses
  %niter1604.ncmp.1 = icmp eq i64 %niter1604.next.1, %unroll_iter1603
  br i1 %niter1604.ncmp.1, label %._crit_edge852.unr-lcssa, label %.lr.ph851, !llvm.loop !14

._crit_edge852.unr-lcssa:                         ; preds = %.lr.ph851
  %lcmp.mod1599.not = icmp eq i64 %xtraiter1598, 0
  br i1 %lcmp.mod1599.not, label %._crit_edge852, label %.lr.ph851.epil.preheader

.lr.ph851.epil.preheader:                         ; preds = %._crit_edge852.unr-lcssa, %.lr.ph851.preheader
  %indvars.iv1062.epil.init = phi i64 [ %i.ahb, %.lr.ph851.preheader ], [ %indvars.iv.next1063.1, %._crit_edge852.unr-lcssa ]
  %.0.i287849.epil.init = phi i64 [ 0, %.lr.ph851.preheader ], [ %i.ahu, %._crit_edge852.unr-lcssa ]
  %lcmp.mod1602 = trunc i64 %i.ahc to i1
  call void @llvm.assume(i1 %lcmp.mod1602)
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062.epil.init ; 2 uses
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !106
  %i.ahy = zext i64 %i.ahx to i128
  %i.ahz = mul nuw i128 %i.ahy, 10000000000000000000
  %i.aia = zext i64 %.0.i287849.epil.init to i128
  %i.aib = add nuw i128 %i.ahz, %i.aia            ; 2 uses
  %i.aic = lshr i128 %i.aib, 64                   ; 2 uses
  %i.aid = trunc nuw i128 %i.aic to i64
  %i.aie = trunc i128 %i.aib to i64
  store i64 %i.aie, ptr %i.ahw, align 8, !tbaa !106
  br label %._crit_edge852

._crit_edge852:                                   ; preds = %._crit_edge852.unr-lcssa, %.lr.ph851.epil.preheader
  %.lcssa1560.a = phi i128 [ %i.aht, %._crit_edge852.unr-lcssa ], [ %i.aic, %.lr.ph851.epil.preheader ]
  %.lcssa1559 = phi i64 [ %i.ahu, %._crit_edge852.unr-lcssa ], [ %i.aid, %.lr.ph851.epil.preheader ]
  %.not19.i288 = icmp eq i128 %.lcssa1560.a, 0
  br i1 %.not19.i288, label %bigint_mul_u64.exit290, label %bb.hl

bb.hl:                                            ; preds = %._crit_edge852
  %i.aif = add nuw i32 %i.agw, 1
  %i.aig = zext i32 %i.agw to i64
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.aig
  store i64 %.lcssa1559, ptr %i.aih, align 8, !tbaa !106
  br label %bigint_mul_u64.exit290

bigint_mul_u64.exit290:                           ; preds = %bb.hk, %._crit_edge844, %._crit_edge852, %bb.hl
  %i.aii = phi i32 [ %i.agw, %._crit_edge852 ], [ %i.aif, %bb.hl ], [ %i.agw, %._crit_edge844 ], [ %i.agw, %bb.hk ] ; 2 uses
  %i.aij = add nsw i32 %.0.i255856, -19           ; 2 uses
  %i.aik = icmp sgt i32 %.0.i255856, 37
  br i1 %i.aik, label %bb.hj, label %._crit_edge858, !llvm.loop !15

._crit_edge858:                                   ; preds = %bigint_mul_u64.exit290, %.preheader731
  %i.ail = phi i32 [ %.promoted854, %.preheader731 ], [ %i.aii, %bigint_mul_u64.exit290 ] ; 7 uses
  %.0.i255.lcssa = phi i32 [ %i.ags, %.preheader731 ], [ %i.aij, %bigint_mul_u64.exit290 ] ; 2 uses
  store i32 %i.ail, ptr %6, align 8
  %.not.i256 = icmp eq i32 %.0.i255.lcssa, 0
  br i1 %.not.i256, label %bigint_mul_pow10.exit, label %bb.hm

bb.hm:                                            ; preds = %._crit_edge858
  %i.aim = sext i32 %.0.i255.lcssa to i64
  %i.ain = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.aim
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !106
  %i.aip = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not979 = icmp eq i32 %i.ail, 0
  br i1 %.not979, label %._crit_edge864, label %.lr.ph863.preheader

.lr.ph863.preheader:                              ; preds = %bb.hm
  %wide.trip.count1070 = zext i32 %i.ail to i64
  br label %.lr.ph863

.lr.ph863:                                        ; preds = %.lr.ph863.preheader, %bb.hn
  %indvars.iv1067 = phi i64 [ 0, %.lr.ph863.preheader ], [ %indvars.iv.next1068, %bb.hn ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv1067
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !106
  %.not.i295 = icmp eq i64 %i.air, 0
  br i1 %.not.i295, label %bb.hn, label %._crit_edge864.loopexit

bb.hn:                                            ; preds = %.lr.ph863
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1 ; 2 uses
  %exitcond1071.not = icmp eq i64 %indvars.iv.next1068, %wide.trip.count1070
  br i1 %exitcond1071.not, label %bigint_mul_pow10.exit, label %.lr.ph863, !llvm.loop !13

._crit_edge864.loopexit:                          ; preds = %.lr.ph863
  %i.ais = trunc nuw i64 %indvars.iv1067 to i32
  br label %._crit_edge864

._crit_edge864:                                   ; preds = %._crit_edge864.loopexit, %bb.hm
  %.018.i291.lcssa = phi i32 [ 0, %bb.hm ], [ %i.ais, %._crit_edge864.loopexit ] ; 2 uses
  %i.ait = icmp ult i32 %.018.i291.lcssa, %i.ail
  br i1 %i.ait, label %.lr.ph871, label %bigint_mul_pow10.exit

.lr.ph871:                                        ; preds = %._crit_edge864
  %i.aiu = zext i64 %i.aio to i128                ; 3 uses
  %i.aiv = zext i32 %.018.i291.lcssa to i64       ; 4 uses
  %wide.trip.count1075 = zext i32 %i.ail to i64   ; 2 uses
  %i.aiw = sub nsw i64 %wide.trip.count1075, %i.aiv ; 3 uses
  %xtraiter1606 = and i64 %i.aiw, 1
end_hunk_1
begin_hunk_2_@read_root_single:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.axc = sub i64 %i.awk, %index                 ; 3 uses
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axc ; 2 uses
  %i.axe = getelementptr inbounds i8, ptr %i.axd, i64 -8
  %i.axf = getelementptr inbounds i8, ptr %i.axd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.axe, align 8, !tbaa !106
  %wide.load1464 = load <2 x i64>, ptr %i.axf, align 8, !tbaa !106
  %i.axg = shl <2 x i64> %wide.load, %broadcast.splat1463
  %i.axh = shl <2 x i64> %wide.load1464, %broadcast.splat1463
  %i.axi = getelementptr [8 x i8], ptr %6, i64 %i.axc ; 2 uses
  %i.axj = getelementptr i8, ptr %i.axi, i64 -8
  %i.axk = getelementptr i8, ptr %i.axi, i64 -24
  %wide.load1465 = load <2 x i64>, ptr %i.axj, align 8, !tbaa !106
  %wide.load1466 = load <2 x i64>, ptr %i.axk, align 8, !tbaa !106
  %i.axl = lshr <2 x i64> %wide.load1465, %broadcast.splat
  %i.axm = lshr <2 x i64> %wide.load1466, %broadcast.splat
  %i.axn = or <2 x i64> %i.axl, %i.axg
  %i.axo = or <2 x i64> %i.axm, %i.axh
  %i.axp = trunc nuw i64 %i.axc to i32
  %i.axq = add i32 %i.atr, %i.axp
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axr ; 2 uses
  %i.axt = getelementptr inbounds i8, ptr %i.axs, i64 -8
  %i.axu = getelementptr inbounds i8, ptr %i.axs, i64 -24
  store <2 x i64> %i.axn, ptr %i.axt, align 8, !tbaa !106
  store <2 x i64> %i.axo, ptr %i.axu, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.axv = icmp eq i64 %index.next, %n.vec
  br i1 %i.axv, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.awk
  br i1 %cmp.n, label %._crit_edge878, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph877, %middle.block
  %indvars.iv1077.ph = phi i64 [ %i.awk, %vector.memcheck ], [ %i.awk, %vector.scevcheck ], [ %i.awk, %.lr.ph877 ], [ %i.axb, %middle.block ] ; 7 uses
  %xtraiter1613 = and i64 %indvars.iv1077.ph, 1
  %lcmp.mod1614.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1614.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077.ph
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !106
  %i.axy = shl i64 %i.axx, %.pre1154
  %i.axz = add nsw i64 %indvars.iv1077.ph, -1
  %i.aya = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077.ph
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !106
  %i.ayc = lshr i64 %i.ayb, %i.awn
  %i.ayd = or i64 %i.ayc, %i.axy
  %i.aye = trunc nuw i64 %indvars.iv1077.ph to i32
  %i.ayf = add i32 %i.atr, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !106
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1077.unr = phi i64 [ %indvars.iv1077.ph, %scalar.ph.preheader ], [ %i.axz, %scalar.ph.prol ]
  %i.ayi = icmp eq i64 %indvars.iv1077.ph, 1
  br i1 %i.ayi, label %._crit_edge878, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1077 = phi i64 [ %i.ayy, %scalar.ph ], [ %indvars.iv1077.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !106
  %i.ayl = shl i64 %i.ayk, %.pre1154
  %i.aym = add nsw i64 %indvars.iv1077, -1        ; 2 uses
  %i.ayn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayo = load i64, ptr %i.ayn, align 8, !tbaa !106
  %i.ayp = lshr i64 %i.ayo, %i.awn
  %i.ayq = or i64 %i.ayp, %i.ayl
  %i.ayr = trunc nuw i64 %indvars.iv1077 to i32
  %i.ays = add i32 %i.atr, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayt
  store i64 %i.ayq, ptr %i.ayu, align 8, !tbaa !106
  %i.ayv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !106
  %i.ayx = shl i64 %i.ayw, %.pre1154
  %i.ayy = add nsw i64 %indvars.iv1077, -2        ; 2 uses
  %i.ayz = getelementptr [8 x i8], ptr %6, i64 %i.aym
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !106
  %i.azb = lshr i64 %i.aza, %i.awn
  %i.azc = or i64 %i.azb, %i.ayx
  %i.azd = trunc nuw i64 %i.aym to i32
  %i.aze = add i32 %i.atr, %i.azd
  %i.azf = zext i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azf
  store i64 %i.azc, ptr %i.azg, align 8, !tbaa !106
  %.not.i265.wide.1 = icmp eq i64 %i.ayy, 0
  br i1 %.not.i265.wide.1, label %._crit_edge878, label %scalar.ph, !llvm.loop !281

._crit_edge878:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ia
  %i.azh = load i64, ptr %i.awj, align 8, !tbaa !106
  %i.azi = shl i64 %i.azh, %.pre1154
  %i.azj = zext nneg i32 %i.atr to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azj
  store i64 %i.azi, ptr %i.azk, align 8, !tbaa !106
  %i.azl = add i32 %i.ats, %i.atr                 ; 2 uses
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azm
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !106
  %i.azp = icmp ne i64 %i.azo, 0
  %i.azq = zext i1 %i.azp to i32
  %i.azr = add i32 %i.azl, %i.azq
  store i32 %i.azr, ptr %6, align 8, !tbaa !131
  %.not45.i267879 = icmp eq i32 %i.atr, 0
  br i1 %.not45.i267879, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge878, %._crit_edge895, %.lr.ph907.preheader, %.lr.ph890
  %.sink1365 = phi i32 [ %i.ans, %._crit_edge895 ], [ %i.atr, %.lr.ph890 ], [ %i.ans, %.lr.ph907.preheader ], [ %i.atr, %._crit_edge878 ]
  %.sink1360 = phi ptr [ %i.agr, %._crit_edge895 ], [ %i.awi, %.lr.ph890 ], [ %i.agr, %.lr.ph907.preheader ], [ %i.awj, %._crit_edge878 ]
  %.ph1359 = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %.lr.ph890 ], [ %i.aqg, %.lr.ph907.preheader ], [ %i.anp, %._crit_edge878 ]
  %i.azs = add nsw i32 %.sink1365, -1
  %i.azt = zext i32 %i.azs to i64
  %i.azu = shl nuw nsw i64 %i.azt, 3
  %i.azv = add nuw nsw i64 %i.azu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink1360, i8 0, i64 %i.azv, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge878, %._crit_edge886, %._crit_edge895
  %i.azw = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %._crit_edge878 ], [ %i.anp, %._crit_edge886 ], [ %.ph1359, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.azx = load i32, ptr %6, align 8, !tbaa !131  ; 4 uses
  %i.azy = icmp ult i32 %i.azx, %i.azw
  br i1 %i.azy, label %bigint_cmp.exit.thread, label %bb.ib

bb.ib:                                            ; preds = %bigint_mul_pow2.exit
  %i.azz = icmp ugt i32 %i.azx, %i.azw
  br i1 %i.azz, label %bigint_cmp.exit.thread, label %.preheader725

.preheader725:                                    ; preds = %bb.ib
  %.not.i2731448 = icmp eq i32 %i.azx, 0
  br i1 %.not.i2731448, label %bigint_cmp.exit.thread623, label %.lr.ph1451

.lr.ph1451:                                       ; preds = %.preheader725
  %i.baa = zext i32 %i.azx to i64
  br label %bb.id

bb.ic:                                            ; preds = %bb.id
  %i.bab = add nsw i64 %indvars.iv10951449, -1    ; 2 uses
  %.not.i273 = icmp eq i64 %i.bab, 0
  br i1 %.not.i273, label %bigint_cmp.exit.thread623, label %bb.id, !llvm.loop !16

bb.id:                                            ; preds = %.lr.ph1451, %bb.ic
  %.016.i1450 = phi i32 [ undef, %.lr.ph1451 ], [ %.1.i274, %bb.ic ]
  %indvars.iv10951449 = phi i64 [ %i.baa, %.lr.ph1451 ], [ %i.bab, %bb.ic ] ; 3 uses
  %i.bac = getelementptr [8 x i8], ptr %6, i64 %indvars.iv10951449
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !106 ; 3 uses
  %i.bae = getelementptr [8 x i8], ptr %7, i64 %indvars.iv10951449
  %i.baf = load i64, ptr %i.bae, align 8, !tbaa !106 ; 3 uses
  %.not702 = icmp ult i64 %i.bad, %i.baf
  %.not703 = icmp ugt i64 %i.bad, %i.baf
  %..016.i = select i1 %.not703, i32 1, i32 %.016.i1450
  %.1.i274 = select i1 %.not702, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.bad, %i.baf
  br i1 %cond.i, label %bb.ic, label %bigint_cmp.exit, !llvm.loop !16

bigint_cmp.exit:                                  ; preds = %bb.id
  %.not989.i = icmp eq i32 %.1.i274, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread623, label %bigint_cmp.exit.thread, !prof !125

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.ib, %bigint_cmp.exit
  %.2.i275622 = phi i32 [ %.1.i274, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.ib ]
  %i.bag = icmp sgt i32 %.2.i275622, 0
  %i.bah = zext i1 %i.bag to i64
  br label %bb.ie

bigint_cmp.exit.thread623:                        ; preds = %bb.ic, %.preheader725, %bigint_cmp.exit
  %i.bai = and i64 %.0.i254.ph, 1
  br label %bb.ie

bb.ie:                                            ; preds = %bigint_cmp.exit.thread623, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.bah, %bigint_cmp.exit.thread ], [ %i.bai, %bigint_cmp.exit.thread623 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i254.ph  ; 2 uses
  %i.baj = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.baj, label %bb.if, label %bb.ij, !prof !45

bb.if:                                            ; preds = %bb.ie
  %i.bak = and i32 %4, 128
  %.not704 = icmp eq i32 %i.bak, 0
  br i1 %.not704, label %bb.ih, label %bb.ig, !prof !62

bb.ig:                                            ; preds = %bb.if
  %i.bal = load ptr, ptr %i.e, align 8, !tbaa !107
  store i8 0, ptr %i.bal, align 1, !tbaa !100
  %i.bam = ptrtoint ptr %.33.i to i64
  %i.ban = ptrtoint ptr %1 to i64
  %i.bao = sub i64 %i.bam, %i.ban
  %i.bap = shl i64 %i.bao, 8
  %i.baq = or disjoint i64 %i.bap, 1
  store i64 %i.baq, ptr %i.j, align 8, !tbaa !99
  %i.bar = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bar, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread632

bb.ih:                                            ; preds = %bb.if
  %i.bas = and i32 %4, 16
  %.not705 = icmp eq i32 %i.bas, 0
  br i1 %.not705, label %read_num.exit, label %bb.ii, !prof !62

bb.ii:                                            ; preds = %bb.ih
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bat = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.bau = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bat, ptr %i.bau, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.ij:                                            ; preds = %bb.ie
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bav = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.baw = or disjoint i64 %.0895.i, %i.bav
  %i.bax = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.baw, ptr %i.bax, align 8, !tbaa !100
  br label %read_num.exit.thread632

read_num.exit.thread:                             ; preds = %bb.fx, %bb.fz, %bb.gb, %bb.gf, %bb.gi, %bb.gk, %bb.gv, %bb.gq, %bb.z, %bb.fg, %bb.ft, %.loopexit736, %bb.bd, %.thread, %bb.eu, %bb.ev, %bb.ew, %bb.az, %bb.ba, %bb.bb, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.t, %read_inf.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit.thread628:                          ; preds = %bb.fv, %bb.aa, %bb.fk, %bb.gc, %bb.fb, %read_inf_or_nan.exit.thread, %bb.fq, %bb.gl, %bb.ac, %bb.ae
  %.sink1366 = phi ptr [ %i.yt, %bb.fv ], [ %i.dl, %bb.aa ], [ %i.xf, %bb.fk ], [ %1, %bb.gc ], [ %i.we, %bb.fb ], [ %.0903.i781, %read_inf_or_nan.exit.thread ], [ %.28.i, %bb.fq ], [ %1, %bb.gl ], [ %i.ea, %bb.ac ], [ %i.el, %bb.ae ]
  store ptr %.sink1366, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

read_num.exit.thread632:                          ; preds = %bb.hd, %bb.hf, %bb.hh, %bb.ig, %bb.ii, %bb.ij
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit:                                    ; preds = %bb.ih, %bb.he
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.sink.split

bb.ik:                                            ; preds = %bb.b
  switch i8 %i.k, label %bb.mu [
    i8 34, label %bb.il
    i8 116, label %bb.mk
    i8 102, label %bb.ml
    i8 110, label %bb.mm
  ]

bb.il:                                            ; preds = %bb.ik
  %i.bay = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.baz = and i32 %4, 64
  %.not661 = icmp eq i32 %i.baz, 0                ; 3 uses
  br label %.backedge724

.backedge724:                                     ; preds = %.backedge724.backedge, %bb.il
  %.0599 = phi ptr [ %i.bay, %bb.il ], [ %.0599.be, %.backedge724.backedge ] ; 18 uses
  %i.bba = load i8, ptr %.0599, align 1, !tbaa !100 ; 2 uses
  %i.bbb = zext i8 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbb
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !100
  %i.bbe = trunc i8 %i.bbd to i1
  br i1 %i.bbe, label %bb.im, label %bb.jc, !prof !62

bb.im:                                            ; preds = %.backedge724
  %i.bbf = getelementptr inbounds nuw i8, ptr %.0599, i64 1 ; 2 uses
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !100 ; 2 uses
  %i.bbh = zext i8 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbh
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !100
  %i.bbk = trunc i8 %i.bbj to i1
  br i1 %i.bbk, label %bb.in, label %bb.jc, !prof !62

bb.in:                                            ; preds = %bb.im
  %i.bbl = getelementptr inbounds nuw i8, ptr %.0599, i64 2 ; 2 uses
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !100 ; 2 uses
  %i.bbn = zext i8 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbn
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !100
  %i.bbq = trunc i8 %i.bbp to i1
  br i1 %i.bbq, label %bb.io, label %bb.jc, !prof !62

bb.io:                                            ; preds = %bb.in
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0599, i64 3 ; 2 uses
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !100 ; 2 uses
  %i.bbt = zext i8 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbt
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !100
  %i.bbw = trunc i8 %i.bbv to i1
  br i1 %i.bbw, label %bb.ip, label %bb.jc, !prof !62

bb.ip:                                            ; preds = %bb.io
  %i.bbx = getelementptr inbounds nuw i8, ptr %.0599, i64 4 ; 2 uses
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !100 ; 2 uses
  %i.bbz = zext i8 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbz
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !100
  %i.bcc = trunc i8 %i.bcb to i1
  br i1 %i.bcc, label %bb.iq, label %bb.jc, !prof !62

bb.iq:                                            ; preds = %bb.ip
  %i.bcd = getelementptr inbounds nuw i8, ptr %.0599, i64 5 ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !100 ; 2 uses
  %i.bcf = zext i8 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcf
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !100
  %i.bci = trunc i8 %i.bch to i1
  br i1 %i.bci, label %bb.ir, label %bb.jc, !prof !62

bb.ir:                                            ; preds = %bb.iq
  %i.bcj = getelementptr inbounds nuw i8, ptr %.0599, i64 6 ; 2 uses
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !100 ; 2 uses
  %i.bcl = zext i8 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcl
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !100
  %i.bco = trunc i8 %i.bcn to i1
  br i1 %i.bco, label %bb.is, label %bb.jc, !prof !62

bb.is:                                            ; preds = %bb.ir
  %i.bcp = getelementptr inbounds nuw i8, ptr %.0599, i64 7 ; 2 uses
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !100 ; 2 uses
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !100
  %i.bcu = trunc i8 %i.bct to i1
  br i1 %i.bcu, label %bb.it, label %bb.jc, !prof !62

bb.it:                                            ; preds = %bb.is
  %i.bcv = getelementptr inbounds nuw i8, ptr %.0599, i64 8 ; 2 uses
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !100 ; 2 uses
  %i.bcx = zext i8 %i.bcw to i64
  %i.bcy = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcx
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !100
  %i.bda = trunc i8 %i.bcz to i1
  br i1 %i.bda, label %bb.iu, label %bb.jc, !prof !62

bb.iu:                                            ; preds = %bb.it
  %i.bdb = getelementptr inbounds nuw i8, ptr %.0599, i64 9 ; 2 uses
  %i.bdc = load i8, ptr %i.bdb, align 1, !tbaa !100 ; 2 uses
  %i.bdd = zext i8 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdd
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !100
  %i.bdg = trunc i8 %i.bdf to i1
  br i1 %i.bdg, label %bb.iv, label %bb.jc, !prof !62

bb.iv:                                            ; preds = %bb.iu
  %i.bdh = getelementptr inbounds nuw i8, ptr %.0599, i64 10 ; 2 uses
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !100 ; 2 uses
  %i.bdj = zext i8 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdj
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !100
  %i.bdm = trunc i8 %i.bdl to i1
  br i1 %i.bdm, label %bb.iw, label %bb.jc, !prof !62

bb.iw:                                            ; preds = %bb.iv
  %i.bdn = getelementptr inbounds nuw i8, ptr %.0599, i64 11 ; 2 uses
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !100 ; 2 uses
  %i.bdp = zext i8 %i.bdo to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !100
  %i.bds = trunc i8 %i.bdr to i1
  br i1 %i.bds, label %bb.ix, label %bb.jc, !prof !62

bb.ix:                                            ; preds = %bb.iw
  %i.bdt = getelementptr inbounds nuw i8, ptr %.0599, i64 12 ; 2 uses
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !100 ; 2 uses
  %i.bdv = zext i8 %i.bdu to i64
  %i.bdw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdv
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !100
  %i.bdy = trunc i8 %i.bdx to i1
  br i1 %i.bdy, label %bb.iy, label %bb.jc, !prof !62

bb.iy:                                            ; preds = %bb.ix
  %i.bdz = getelementptr inbounds nuw i8, ptr %.0599, i64 13 ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !100 ; 2 uses
  %i.beb = zext i8 %i.bea to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !100
  %i.bee = trunc i8 %i.bed to i1
  br i1 %i.bee, label %bb.iz, label %bb.jc, !prof !62

bb.iz:                                            ; preds = %bb.iy
  %i.bef = getelementptr inbounds nuw i8, ptr %.0599, i64 14 ; 2 uses
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !100 ; 2 uses
  %i.beh = zext i8 %i.beg to i64
  %i.bei = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.beh
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !100
  %i.bek = trunc i8 %i.bej to i1
  br i1 %i.bek, label %bb.ja, label %bb.jc, !prof !62

bb.ja:                                            ; preds = %bb.iz
  %i.bel = getelementptr inbounds nuw i8, ptr %.0599, i64 15 ; 2 uses
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !100 ; 2 uses
  %i.ben = zext i8 %i.bem to i64
  %i.beo = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ben
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !100
  %i.beq = trunc i8 %i.bep to i1
  br i1 %i.beq, label %bb.jb, label %bb.jc, !prof !62

bb.jb:                                            ; preds = %bb.ja
  %i.ber = getelementptr inbounds nuw i8, ptr %.0599, i64 16
  br label %.backedge724.backedge

bb.jc:                                            ; preds = %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %.backedge724
  %.pr634 = phi i8 [ %i.bem, %bb.ja ], [ %i.beg, %bb.iz ], [ %i.bea, %bb.iy ], [ %i.bdu, %bb.ix ], [ %i.bdo, %bb.iw ], [ %i.bdi, %bb.iv ], [ %i.bdc, %bb.iu ], [ %i.bcw, %bb.it ], [ %i.bcq, %bb.is ], [ %i.bck, %bb.ir ], [ %i.bce, %bb.iq ], [ %i.bby, %bb.ip ], [ %i.bbs, %bb.io ], [ %i.bbm, %bb.in ], [ %i.bbg, %bb.im ], [ %i.bba, %.backedge724 ] ; 3 uses
  %.1600 = phi ptr [ %i.bel, %bb.ja ], [ %i.bef, %bb.iz ], [ %i.bdz, %bb.iy ], [ %i.bdt, %bb.ix ], [ %i.bdn, %bb.iw ], [ %i.bdh, %bb.iv ], [ %i.bdb, %bb.iu ], [ %i.bcv, %bb.it ], [ %i.bcp, %bb.is ], [ %i.bcj, %bb.ir ], [ %i.bcd, %bb.iq ], [ %i.bbx, %bb.ip ], [ %i.bbr, %bb.io ], [ %i.bbl, %bb.in ], [ %i.bbf, %bb.im ], [ %.0599, %.backedge724 ] ; 9 uses
  %i.bes = icmp eq i8 %.pr634, 34
  br i1 %i.bes, label %bb.jd, label %bb.je, !prof !62

bb.jd:                                            ; preds = %bb.jc
  %i.bet = ptrtoint ptr %.1600 to i64
  %i.beu = ptrtoint ptr %i.bay to i64
  %i.bev = sub i64 %i.bet, %i.beu
  %i.bew = shl i64 %i.bev, 8
  %i.bex = or disjoint i64 %i.bew, 13
  store i64 %i.bex, ptr %i.j, align 8, !tbaa !99
  %i.bey = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.bay, ptr %i.bey, align 8, !tbaa !100
  store i8 0, ptr %.1600, align 1, !tbaa !100
  %i.bez = getelementptr inbounds nuw i8, ptr %.1600, i64 1
  store ptr %i.bez, ptr %i.b, align 8, !tbaa !107
  br label %read_str_opt.exit

bb.je:                                            ; preds = %bb.jc
  %.not115.i = icmp sgt i8 %.pr634, -1
  br i1 %.not115.i, label %bb.jk, label %.preheader723

.preheader723:                                    ; preds = %bb.je
  %storemerge.i183908 = load i32, ptr %.1600, align 1 ; 3 uses
  %i.bfa = and i32 %storemerge.i183908, 12632304
  %i.bfb = icmp eq i32 %i.bfa, 8421600
  br i1 %i.bfb, label %.lr.ph911, label %.critedge.i184

.lr.ph911:                                        ; preds = %.preheader723, %bb.jf
  %storemerge.i183910 = phi i32 [ %storemerge.i183, %bb.jf ], [ %storemerge.i183908, %.preheader723 ] ; 3 uses
  %.2601909 = phi ptr [ %i.bfd, %bb.jf ], [ %.1600, %.preheader723 ] ; 3 uses
  %i.bfc = and i32 %storemerge.i183910, 8207
end_hunk_2
begin_hunk_3_@read_root_single:bb.a
  %i.bxa = icmp eq i8 %i.bwz, 73
  br i1 %i.bxa, label %bb.nc, label %bb.ni

bb.nc:                                            ; preds = %bb.nb
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwd, i64 6
  %i.bxc = load i8, ptr %i.bxb, align 1, !tbaa !100
  %i.bxd = and i8 %i.bxc, -33
  %i.bxe = icmp eq i8 %i.bxd, 84
  br i1 %i.bxe, label %bb.nd, label %bb.ni

bb.nd:                                            ; preds = %bb.nc
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwd, i64 7
  %i.bxg = load i8, ptr %i.bxf, align 1, !tbaa !100
  %i.bxh = and i8 %i.bxg, -33
  %i.bxi = icmp eq i8 %i.bxh, 89
  br i1 %i.bxi, label %bb.ne, label %bb.ni

bb.ne:                                            ; preds = %bb.nd
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 8
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.mz
  %.0.i248 = phi ptr [ %i.bxj, %bb.ne ], [ %i.bwp, %bb.mz ] ; 3 uses
  store ptr %.0.i248, ptr %i.b, align 8, !tbaa !107
  %i.bxk = and i32 %4, 32
  %.not669 = icmp eq i32 %i.bxk, 0
  br i1 %.not669, label %bb.nh, label %bb.ng, !prof !62

bb.ng:                                            ; preds = %bb.nf
  store i8 0, ptr %i.d, align 1, !tbaa !100
  store ptr %.0.i248, ptr %i.e, align 8, !tbaa !107
  %i.bxl = ptrtoint ptr %.0.i248 to i64
  %i.bxm = ptrtoint ptr %1 to i64
  %i.bxn = sub i64 %i.bxl, %i.bxm
  %i.bxo = shl i64 %i.bxn, 8
  %i.bxp = or disjoint i64 %i.bxo, 1
  store i64 %i.bxp, ptr %i.j, align 8, !tbaa !99
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bxq, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.nh:                                            ; preds = %bb.nf
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bxr = select i1 %i.bvv, i64 -4503599627370496, i64 9218868437227405312
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bxr, ptr %i.bxs, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.ni:                                            ; preds = %bb.na, %bb.nd, %bb.nc, %bb.nb, %bb.my, %bb.mx, %bb.mw
  %i.bxt = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.l
  %i.bxu = load i8, ptr %i.bxt, align 1, !tbaa !100 ; 2 uses
  %i.bxv = trunc i8 %i.bxu to i1
  %.mask666 = and i8 %i.bxu, 1
  %i.bxw = zext nneg i8 %.mask666 to i64
  %i.bxx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bxw ; 4 uses
  %i.bxy = load i8, ptr %i.bxx, align 1, !tbaa !100
  %i.bxz = and i8 %i.bxy, -33
  %i.bya = icmp eq i8 %i.bxz, 78
  br i1 %i.bya, label %bb.nj, label %read_inf_or_nan.exit182

bb.nj:                                            ; preds = %bb.ni
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxx, i64 1
  %i.byc = load i8, ptr %i.byb, align 1, !tbaa !100
  %i.byd = and i8 %i.byc, -33
  %i.bye = icmp eq i8 %i.byd, 65
  br i1 %i.bye, label %bb.nk, label %read_inf_or_nan.exit182

bb.nk:                                            ; preds = %bb.nj
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxx, i64 2
  %i.byg = load i8, ptr %i.byf, align 1, !tbaa !100
  %i.byh = and i8 %i.byg, -33
  %i.byi = icmp eq i8 %i.byh, 78
  br i1 %i.byi, label %bb.nl, label %read_inf_or_nan.exit182

bb.nl:                                            ; preds = %bb.nk
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxx, i64 3 ; 2 uses
  store ptr %i.byj, ptr %i.b, align 8, !tbaa !107
  %i.byk = and i32 %4, 32
  %.not668 = icmp eq i32 %i.byk, 0
  br i1 %.not668, label %bb.nn, label %bb.nm, !prof !62

bb.nm:                                            ; preds = %bb.nl
  store i8 0, ptr %i.d, align 1, !tbaa !100
  store ptr %i.byj, ptr %i.e, align 8, !tbaa !107
  %i.byl = select i1 %i.bxv, i64 1025, i64 769
  store i64 %i.byl, ptr %i.j, align 8, !tbaa !99
  %i.bym = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bym, align 8, !tbaa !100
  br label %read_str_opt.exit

bb.nn:                                            ; preds = %bb.nl
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.byn = select i1 %i.bvv, i64 -2251799813685248, i64 9221120237041090560
  %i.byo = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.byn, ptr %i.byo, align 8, !tbaa !100
  br label %read_str_opt.exit

read_inf_or_nan.exit182:                          ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.mu
  %i.byp = and i32 %4, 4096
  %.not667 = icmp eq i32 %i.byp, 0
  br i1 %.not667, label %.thread1283, label %bb.no, !prof !62

bb.no:                                            ; preds = %read_inf_or_nan.exit182
  %i.byq = icmp eq i8 %i.k, 39
  br i1 %i.byq, label %bb.np, label %.thread1283

bb.np:                                            ; preds = %bb.no
  %i.byr = call fastcc zeroext i1 @read_str_sq(ptr noundef %i.b, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef %i.c)
  br i1 %i.byr, label %read_str_opt.exit, label %.read_str_opt.exit.thread_crit_edge, !prof !62

.read_str_opt.exit.thread_crit_edge:              ; preds = %bb.np
  %.pre1128 = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %read_str_opt.exit.thread

read_str_opt.exit:                                ; preds = %bb.nn, %bb.nm, %bb.ng, %bb.nh, %bb.mt, %bb.ms, %read_null.exit.thread, %read_false.exit.thread, %read_true.exit.thread, %bb.lc, %bb.jd, %read_num.exit.thread632, %.split630, %.split, %read_num.exit.thread, %bb.np
  %i.bys = load ptr, ptr %i.b, align 8, !tbaa !107 ; 4 uses
  %i.byt = icmp ult ptr %i.bys, %2
  br i1 %i.byt, label %bb.nq, label %bb.nv, !prof !45

bb.nq:                                            ; preds = %read_str_opt.exit
  %i.byu = and i32 %4, 2
  %.not710 = icmp eq i32 %i.byu, 0
  br i1 %.not710, label %.preheader, label %bb.nv, !prof !62

.preheader:                                       ; preds = %bb.nq, %.preheader
  %i.byv = phi ptr [ %i.bzb, %.preheader ], [ %i.bys, %bb.nq ] ; 5 uses
  %i.byw = load i8, ptr %i.byv, align 1, !tbaa !100
  %i.byx = zext i8 %i.byw to i64
  %i.byy = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.byx
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !100 ; 2 uses
  %i.bza = and i8 %i.byz, 4
  %.not711 = icmp eq i8 %i.bza, 0
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byv, i64 1
  br i1 %.not711, label %bb.nr, label %.preheader, !llvm.loop !282

bb.nr:                                            ; preds = %.preheader
  store ptr %i.byv, ptr %i.b, align 8
  %i.bzc = and i32 %4, 2056
  %.not712 = icmp eq i32 %i.bzc, 0
  br i1 %.not712, label %bb.nu, label %bb.ns, !prof !62

bb.ns:                                            ; preds = %bb.nr
  %i.bzd = and i8 %i.byz, 40
  %.not713 = icmp eq i8 %i.bzd, 0
  br i1 %.not713, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bze = call fastcc zeroext i1 @skip_trivia(ptr noundef %i.b, ptr noundef nonnull %2, i32 noundef %4)
  %.pre1129 = load ptr, ptr %i.b, align 8, !tbaa !107 ; 3 uses
  %i.bzf = icmp ne ptr %.pre1129, %2
  %or.cond1367.not = select i1 %i.bze, i1 true, i1 %i.bzf
  br i1 %or.cond1367.not, label %bb.nu, label %bb.oa

bb.nu:                                            ; preds = %bb.nt, %bb.ns, %bb.nr
  %i.bzg = phi ptr [ %.pre1129, %bb.nt ], [ %i.byv, %bb.nr ], [ %i.byv, %bb.ns ] ; 4 uses
  %i.bzh = icmp ult ptr %i.bzg, %2
  br i1 %i.bzh, label %bb.ob, label %bb.nv, !prof !45

bb.nv:                                            ; preds = %bb.nu, %bb.nq, %read_str_opt.exit
  %i.bzi = phi ptr [ %i.bzg, %bb.nu ], [ %i.bys, %bb.nq ], [ %i.bys, %read_str_opt.exit ]
  %i.bzj = load ptr, ptr %i.e, align 8, !tbaa !107
  store i8 0, ptr %i.bzj, align 1, !tbaa !100
  store ptr %i.j, ptr %i.i, align 8, !tbaa !95
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bzk, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !48
  %i.bzl = ptrtoint ptr %i.bzi to i64
  %i.bzm = ptrtoint ptr %0 to i64
  %i.bzn = sub i64 %i.bzl, %i.bzm
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.bzn, ptr %i.bzo, align 8, !tbaa !111
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 1, ptr %i.bzp, align 8, !tbaa !110
  %i.bzq = and i32 %4, 1
  %.not714 = icmp eq i32 %i.bzq, 0
  %i.bzr = select i1 %.not714, ptr %0, ptr null, !prof !62
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.bzr, ptr %i.bzs, align 8, !tbaa !109
  br label %bb.oc

read_str_opt.exit.thread:                         ; preds = %.read_str_opt.exit.thread_crit_edge, %bb.mj, %bb.le, %bb.lb, %bb.jj, %bb.kr, %bb.kw, %bb.kq, %bb.kg, %bb.lg
  %i.bzt = phi ptr [ %.pre1128, %.read_str_opt.exit.thread_crit_edge ], [ %.12.lcssa, %bb.mj ], [ %.6605, %bb.le ], [ %.6605, %bb.lb ], [ %.4603.lcssa, %bb.jj ], [ %.6605, %bb.kr ], [ %.6605, %bb.kw ], [ %.6605, %bb.kq ], [ %.6605, %bb.kg ], [ %.6605, %bb.lg ] ; 2 uses
  %i.bzu = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.bzt, ptr noundef %2, i32 noundef 10, i32 noundef %4) ; 3 uses
  %i.bzv = ptrtoint ptr %0 to i64
  %i.bzw = load ptr, ptr %i.c, align 8
  %.sink1099.v.v = select i1 %i.bzu, ptr %2, ptr %i.bzt
  %.sink1099.v = ptrtoint ptr %.sink1099.v.v to i64
  %.sink1099 = sub i64 %.sink1099.v, %i.bzv
  %.sink1098 = select i1 %i.bzu, i32 5, i32 10
  %.sink = select i1 %i.bzu, ptr @.str.17, ptr %i.bzw
  %i.bzx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sink1099, ptr %i.bzx, align 8, !tbaa !113
  store i32 %.sink1098, ptr %5, align 8, !tbaa !115
  %i.bzy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sink, ptr %i.bzy, align 8, !tbaa !114
  %i.bzz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !60
  %i.cab = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.caa(ptr noundef %i.cab, ptr noundef nonnull %i.i) #33
  br label %bb.oc

.sink.split:                                      ; preds = %read_num.exit.thread628, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.nw

bb.nw:                                            ; preds = %.sink.split, %.split630, %.split
  %i.cac = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %i.cad = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.cac, ptr noundef %2, i32 noundef 9, i32 noundef %4) ; 3 uses
  %i.cae = ptrtoint ptr %2 to i64
  %i.caf = ptrtoint ptr %0 to i64
  %i.cag = sub i64 %i.cae, %i.caf
  %i.cah = ptrtoint ptr %i.cac to i64
  %i.cai = ptrtoint ptr %0 to i64
  %i.caj = sub i64 %i.cah, %i.cai
  %i.cak = load ptr, ptr %i.c, align 8
  %.sink1102 = select i1 %i.cad, i64 %i.cag, i64 %i.caj
  %.sink1101 = select i1 %i.cad, i32 5, i32 9
  %.sink1100 = select i1 %i.cad, ptr @.str.17, ptr %i.cak
  %i.cal = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sink1102, ptr %i.cal, align 8, !tbaa !113
  store i32 %.sink1101, ptr %5, align 8, !tbaa !115
  %i.cam = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sink1100, ptr %i.cam, align 8, !tbaa !114
  %i.can = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !60
  %i.cap = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.cao(ptr noundef %i.cap, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.nx:                                            ; preds = %bb.a
  %i.caq = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2, i32 noundef %4)
  %i.car = ptrtoint ptr %0 to i64                 ; 2 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br i1 %i.caq, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.cau = ptrtoint ptr %2 to i64
  %i.cav = sub i64 %i.cau, %i.car
  store i64 %i.cav, ptr %i.cas, align 8, !tbaa !113
  store i32 5, ptr %5, align 8, !tbaa !115
  store ptr @.str.17, ptr %i.cat, align 8, !tbaa !114
  br label %bb.oc

bb.nz:                                            ; preds = %bb.nx
  %i.caw = ptrtoint ptr %1 to i64
  %i.cax = sub i64 %i.caw, %i.car
  store i64 %i.cax, ptr %i.cas, align 8, !tbaa !113
  store i32 2, ptr %5, align 8, !tbaa !115
  store ptr @.str.2, ptr %i.cat, align 8, !tbaa !114
  br label %bb.oc

read_true.exit:                                   ; preds = %bb.mk
  %i.cay = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.caz = ptrtoint ptr %0 to i64
  %.1378 = select i1 %i.cay, ptr %2, ptr %1
  %.1379 = select i1 %i.cay, i32 5, i32 11
  %.str.17..str.20 = select i1 %i.cay, ptr @.str.17, ptr @.str.20
  %i.cba = ptrtoint ptr %.1378 to i64
  %i.cbb = sub i64 %i.cba, %i.caz
  %i.cbc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbb, ptr %i.cbc, align 8, !tbaa !113
  store i32 %.1379, ptr %5, align 8, !tbaa !115
  %i.cbd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.20, ptr %i.cbd, align 8, !tbaa !114
  %i.cbe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbf = load ptr, ptr %i.cbe, align 8, !tbaa !60
  call void %i.cbf(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

read_false.exit:                                  ; preds = %bb.ml
  %i.cbg = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.cbh = ptrtoint ptr %0 to i64
  %.1380 = select i1 %i.cbg, ptr %2, ptr %1
  %.1381 = select i1 %i.cbg, i32 5, i32 11
  %.str.17..str.21 = select i1 %i.cbg, ptr @.str.17, ptr @.str.21
  %i.cbi = ptrtoint ptr %.1380 to i64
  %i.cbj = sub i64 %i.cbi, %i.cbh
  %i.cbk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbj, ptr %i.cbk, align 8, !tbaa !113
  store i32 %.1381, ptr %5, align 8, !tbaa !115
  %i.cbl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.21, ptr %i.cbl, align 8, !tbaa !114
  %i.cbm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbn = load ptr, ptr %i.cbm, align 8, !tbaa !60
  call void %i.cbn(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

read_nan.exit.thread:                             ; preds = %bb.mn, %bb.mo, %bb.mp, %bb.mq, %read_null.exit
  %i.cbo = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 11, i32 noundef %4) ; 3 uses
  %i.cbp = ptrtoint ptr %0 to i64
  %.1382 = select i1 %i.cbo, ptr %2, ptr %1
  %.1383 = select i1 %i.cbo, i32 5, i32 11
  %.str.17..str.22 = select i1 %i.cbo, ptr @.str.17, ptr @.str.22
  %i.cbq = ptrtoint ptr %.1382 to i64
  %i.cbr = sub i64 %i.cbq, %i.cbp
  %i.cbs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbr, ptr %i.cbs, align 8, !tbaa !113
  store i32 %.1383, ptr %5, align 8, !tbaa !115
  %i.cbt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.22, ptr %i.cbt, align 8, !tbaa !114
  %i.cbu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !60
  call void %i.cbv(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

.thread1283:                                      ; preds = %bb.mv, %bb.no, %read_inf_or_nan.exit182
  %i.cbw = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 6, i32 noundef %4) ; 3 uses
  %i.cbx = ptrtoint ptr %0 to i64
  %.1384 = select i1 %i.cbw, ptr %2, ptr %1
  %.1385 = select i1 %i.cbw, i32 5, i32 6
  %.str.17..str.23 = select i1 %i.cbw, ptr @.str.17, ptr @.str.23
  %i.cby = ptrtoint ptr %.1384 to i64
  %i.cbz = sub i64 %i.cby, %i.cbx
  %i.cca = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cbz, ptr %i.cca, align 8, !tbaa !113
  store i32 %.1385, ptr %5, align 8, !tbaa !115
  %i.ccb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.23, ptr %i.ccb, align 8, !tbaa !114
  %i.ccc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ccd = load ptr, ptr %i.ccc, align 8, !tbaa !60
  call void %i.ccd(ptr noundef %i.h, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.oa:                                            ; preds = %bb.nt
  %i.cce = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %.pre1129, ptr noundef nonnull %2, i32 noundef 8, i32 noundef %4) ; 2 uses
  %i.ccf = ptrtoint ptr %2 to i64
  %i.ccg = ptrtoint ptr %0 to i64
  %i.cch = sub i64 %i.ccf, %i.ccg
  %. = select i1 %i.cce, i32 5, i32 8
  %.str.17..str.3 = select i1 %i.cce, ptr @.str.17, ptr @.str.3
  %i.cci = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cch, ptr %i.cci, align 8, !tbaa !113
  store i32 %., ptr %5, align 8, !tbaa !115
  %i.ccj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.3, ptr %i.ccj, align 8, !tbaa !114
  %i.cck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !60
  %i.ccm = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.ccl(ptr noundef %i.ccm, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.ob:                                            ; preds = %bb.nu
  %i.ccn = call fastcc zeroext i1 @is_truncated_end(ptr noundef %0, ptr noundef %i.bzg, ptr noundef nonnull %2, i32 noundef 4, i32 noundef %4) ; 3 uses
  %i.cco = ptrtoint ptr %0 to i64
  %.1386 = select i1 %i.ccn, ptr %2, ptr %i.bzg
  %.1387 = select i1 %i.ccn, i32 5, i32 4
  %.str.17..str.28 = select i1 %i.ccn, ptr @.str.17, ptr @.str.28
  %i.ccp = ptrtoint ptr %.1386 to i64
  %i.ccq = sub i64 %i.ccp, %i.cco
  %i.ccr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ccq, ptr %i.ccr, align 8, !tbaa !113
  store i32 %.1387, ptr %5, align 8, !tbaa !115
  %i.ccs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.str.17..str.28, ptr %i.ccs, align 8, !tbaa !114
  %i.cct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ccu = load ptr, ptr %i.cct, align 8, !tbaa !60
  %i.ccv = load ptr, ptr %i.g, align 8, !tbaa !61
  call void %i.ccu(ptr noundef %i.ccv, ptr noundef nonnull %i.i) #33
  br label %bb.oc

bb.oc:                                            ; preds = %bb.nz, %bb.ny, %bb.ob, %bb.oa, %.thread1283, %read_nan.exit.thread, %read_false.exit, %read_true.exit, %bb.nw, %read_str_opt.exit.thread, %bb.nv
  %.0 = phi ptr [ null, %.thread1283 ], [ %i.i, %bb.nv ], [ null, %bb.ob ], [ null, %bb.oa ], [ null, %bb.nw ], [ null, %read_str_opt.exit.thread ], [ null, %read_true.exit ], [ null, %read_false.exit ], [ null, %read_nan.exit.thread ], [ null, %bb.ny ], [ null, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_read_file(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.yyjson_read_err, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.not = icmp eq ptr %3, null                    ; 5 uses
  %spec.store.select = select i1 %.not, ptr %4, ptr %3 ; 3 uses
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel24.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.8, ptr %spec.store.select.sroa.sel27.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) ; 3 uses
  %.not17 = icmp eq ptr %i.a, null
  br i1 %.not17, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %4, ptr %3
  %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel21.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 12, ptr %spec.store.select, align 8, !tbaa !115
end_hunk_3
begin_hunk_4_@yyjson_read_fp:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.not113 = icmp eq ptr %3, null                 ; 13 uses
  %spec.store.select = select i1 %.not113, ptr %4, ptr %3 ; 7 uses
  %.not114 = icmp eq ptr %0, null
  br i1 %.not114, label %bb.e, label %bb.f, !prof !45

bb.e:                                             ; preds = %bb.d
  %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel156.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.10, ptr %spec.store.select.sroa.sel159.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.a = tail call i64 @ftell(ptr noundef nonnull %0) ; 3 uses
  %.not115 = icmp eq i64 %i.a, -1
  br i1 %.not115, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 2)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.d = tail call i64 @ftell(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.097 = phi i64 [ %i.d, %bb.h ], [ 0, %bb.g ]
  %i.e = tail call i32 @fseek(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef 0)
  %.not116 = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not116, i64 %.097, i64 0 ; 2 uses
  %i.f = icmp sgt i64 %spec.select, 0
  %i.g = select i1 %i.f, i64 %i.a, i64 0
  %spec.select125 = sub nsw i64 %spec.select, %i.g ; 6 uses
  %i.h = icmp sgt i64 %spec.select125, 0
  br i1 %i.h, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.i
  %.299205 = phi i64 [ %spec.select125, %bb.i ], [ 0, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = load ptr, ptr %5, align 8
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.n = add nuw i64 %spec.select125, 4
  %i.o = load ptr, ptr %5, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %i.r = tail call ptr %i.o(ptr noundef %i.q, i64 noundef %i.n) #33 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.t = tail call i64 @fread(ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %spec.select125, ptr noundef nonnull %0)
  %.not122 = icmp eq i64 %i.t, %spec.select125
  br i1 %.not122, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 13, ptr %spec.store.select, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  tail call void %i.v(ptr noundef %i.q, ptr noundef nonnull %i.r) #33
  br label %.critedge

bb.n:                                             ; preds = %bb.u
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  tail call void %i.x(ptr noundef %i.l, ptr noundef nonnull %.196) #33
  br label %.critedge

bb.o:                                             ; preds = %.preheader, %bb.u
  %i.y = phi i64 [ 68, %.preheader ], [ %i.ak, %bb.u ] ; 6 uses
  %.0167 = phi i64 [ 64, %.preheader ], [ %spec.select124, %bb.u ] ; 4 uses
  %.094166 = phi i64 [ 4, %.preheader ], [ %i.y, %bb.u ]
  %.095165 = phi ptr [ null, %.preheader ], [ %.196, %bb.u ] ; 3 uses
  %.3100164 = phi i64 [ %.299205, %.preheader ], [ %i.ai, %bb.u ]
  %.not117 = icmp eq ptr %.095165, null
  br i1 %.not117, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = tail call ptr %i.m(ptr noundef %i.l, i64 noundef %i.y) #33 ; 2 uses
  %.not118 = icmp eq ptr %i.z, null
  br i1 %.not118, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.aa = tail call ptr %i.j(ptr noundef %i.l, ptr noundef nonnull %.095165, i64 noundef %.094166, i64 noundef %i.y) #33 ; 2 uses
  %.not119 = icmp eq ptr %i.aa, null
  br i1 %.not119, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 2, ptr %spec.store.select, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  tail call void %i.ac(ptr noundef %i.l, ptr noundef nonnull %.095165) #33
  br label %.critedge

bb.t:                                             ; preds = %bb.r, %bb.p
  %.196 = phi ptr [ %i.z, %bb.p ], [ %i.aa, %bb.r ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.196, i64 %i.y
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.af = sub nsw i64 0, %.0167
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = tail call i64 @fread(ptr noundef nonnull %i.ag, i64 noundef 1, i64 noundef %.0167, ptr noundef nonnull %0) ; 2 uses
  %i.ai = add nsw i64 %i.ah, %.3100164            ; 2 uses
  %.not120 = icmp eq i64 %i.ah, %.0167
  br i1 %.not120, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.aj = shl nuw nsw i64 %.0167, 1
  %spec.select124 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 536870912) ; 2 uses
  %i.ak = add i64 %spec.select124, %i.y           ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.y
  br i1 %i.al, label %bb.n, label %bb.o

.loopexit:                                        ; preds = %bb.t, %bb.l
  %.5 = phi i64 [ %spec.select125, %bb.l ], [ %i.ai, %bb.t ] ; 2 uses
  %.3 = phi ptr [ %i.r, %bb.l ], [ %.196, %bb.t ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.3, i64 %.5
  store i32 0, ptr %i.am, align 1
  %i.an = or i32 %1, 1
  %i.ao = call ptr @yyjson_read_opts(ptr noundef nonnull %.3, i64 noundef %.5, i32 noundef %i.an, ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select) ; 3 uses
  %.not123 = icmp eq ptr %i.ao, null
  br i1 %.not123, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %.3, ptr %i.ap, align 8, !tbaa !109
  br label %.critedge

bb.w:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.at, ptr noundef nonnull %.3) #33
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.n, %bb.w, %bb.v, %bb.m, %bb.k, %bb.e
  %.1102 = phi ptr [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.m ], [ %i.ao, %bb.v ], [ null, %bb.w ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.1102
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @yyjson_read_number(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %5 = alloca %struct.bigint, align 8             ; 29 uses
  %6 = alloca %struct.bigint, align 8             ; 19 uses
  %i.b = alloca ptr, align 8                      ; 49 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 16 uses
  %i.f = ptrtoint ptr %0 to i64                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.c, ptr %i.d, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %.not = icmp eq ptr %4, null                    ; 3 uses
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.cont.cont.cont, label %.cont.cont.else

.cont.cont.else:                                  ; preds = %bb.b
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep80, align 8, !tbaa !113
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %.sroa.gep83, align 8, !tbaa !114
  store i32 1, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

bb.c:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.cont.cont.cont, label %.cont86.cont.else

.cont86.cont.else:                                ; preds = %bb.d
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep74, align 8, !tbaa !113
  %.sroa.gep77 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.11, ptr %.sroa.gep77, align 8, !tbaa !114
  store i32 1, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %i.g = and i32 %2, 32
  %.not150 = icmp eq i32 %i.g, 0
  br i1 %.not150, label %bb.f, label %.split, !prof !62

.split:                                           ; preds = %bb.e
  %i.h = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.h, label %bb.in, label %bb.im

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr %0, align 1, !tbaa !100     ; 3 uses
  %i.j = icmp eq i8 %i.i, 45                      ; 58 uses
  %i.k = zext i1 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 7 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !100   ; 6 uses
  %i.n = add i8 %i.m, -49
  %i.o = icmp ult i8 %i.n, 9
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !prof !120

.lr.ph:                                           ; preds = %bb.f
  %i.p = and i32 %2, 512                          ; 2 uses
  %.not342 = icmp ne i32 %i.p, 0                  ; 2 uses
  br i1 %.not342, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !45

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.m, 48
  br i1 %.not.i.us.peel, label %.split221.us, label %bb.g, !prof !62

bb.g:                                             ; preds = %.lr.ph.split.us.preheader
  %i.r = icmp ne i8 %i.m, 43
  %or.cond990.i.us.peel.not = or i1 %i.r, %i.j
  br i1 %or.cond990.i.us.peel.not, label %.split223.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.q, align 1, !tbaa !100   ; 4 uses
  %i.t = add i8 %i.s, -49
  %i.u = icmp ult i8 %i.t, 9
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !121

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.h
  %.not.i.us = icmp eq i8 %i.s, 48
  br i1 %.not.i.us, label %.split221.us, label %.split223.us, !prof !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.m, 48
  br i1 %.not.i, label %.split221.us.thread, label %.loopexit204, !prof !62

.split223.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.g
  %.lcssa741 = phi i8 [ %i.m, %bb.g ], [ %i.s, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i218.us.lcssa738 = phi ptr [ %i.l, %bb.g ], [ %i.q, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.v = icmp eq i8 %.lcssa741, 46
  br i1 %i.v, label %bb.i, label %.loopexit204

bb.i:                                             ; preds = %.split223.us
  %i.w = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa738, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !100   ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %.thread539, label %.loopexit204

.thread539:                                       ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa738, i64 1
  br label %.preheader203

.loopexit204:                                     ; preds = %.lr.ph.split, %bb.i, %.split223.us
  %.0903.i215 = phi ptr [ %.0903.i218.us.lcssa738, %.split223.us ], [ %.0903.i218.us.lcssa738, %bb.i ], [ %i.l, %.lr.ph.split ]
  %i.ab = and i32 %2, 16
  %.not151 = icmp eq i32 %i.ab, 0
  br i1 %.not151, label %read_inf_or_nan.exit.thread, label %bb.j, !prof !62

bb.j:                                             ; preds = %.loopexit204
  %i.ac = icmp ne i8 %i.i, 43
  %brmerge = or i1 %.not342, %i.ac
  br i1 %brmerge, label %bb.k, label %read_inf_or_nan.exit.thread, !prof !122

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i8 %i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !100 ; 2 uses
  %i.ag = and i8 %i.af, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 9 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !100
  %i.ak = and i8 %i.aj, -33
  %i.al = icmp eq i8 %i.ak, 73
  br i1 %i.al, label %bb.l, label %._crit_edge431

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 78
  br i1 %i.ap, label %bb.m, label %._crit_edge431

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !100
  %i.as = and i8 %i.ar, -33
  %i.at = icmp eq i8 %i.as, 70
  br i1 %i.at, label %bb.n, label %._crit_edge431

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !100
  %i.aw = and i8 %i.av, -33
  %i.ax = icmp eq i8 %i.aw, 73
  br i1 %i.ax, label %bb.o, label %read_inf.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !100
  %i.ba = and i8 %i.az, -33
  %i.bb = icmp eq i8 %i.ba, 78
  br i1 %i.bb, label %bb.p, label %._crit_edge431

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !100
  %i.be = and i8 %i.bd, -33
  %i.bf = icmp eq i8 %i.be, 73
  br i1 %i.bf, label %bb.q, label %._crit_edge431

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !100
  %i.bi = and i8 %i.bh, -33
  %i.bj = icmp eq i8 %i.bi, 84
  br i1 %i.bj, label %bb.r, label %._crit_edge431

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !100
  %i.bm = and i8 %i.bl, -33
  %i.bn = icmp eq i8 %i.bm, 89
  br i1 %i.bn, label %bb.s, label %._crit_edge431

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %read_inf.exit

read_inf.exit:                                    ; preds = %bb.s, %bb.n
  %.0.i25 = phi ptr [ %i.bo, %bb.s ], [ %i.au, %bb.n ]
  store ptr %.0.i25, ptr %i.b, align 8, !tbaa !107
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.bp = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !100
  br label %.sink.split618

._crit_edge431:                                   ; preds = %bb.o, %bb.k, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l
  %i.br = and i8 %i.af, 1
end_hunk_4
begin_hunk_5_@yyjson_read_number:bb.a
bb.il:                                            ; preds = %bb.ig
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.bah = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.bai = or disjoint i64 %.0895.i, %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bai, ptr %i.baj, align 8, !tbaa !100
  br label %read_num.exit.thread142

read_num.exit.thread138:                          ; preds = %bb.fx, %bb.ac, %bb.fm, %bb.ge, %bb.fd, %read_inf_or_nan.exit.thread, %bb.fs, %bb.gn, %bb.ae, %bb.ag
  %.sink617 = phi ptr [ %i.yj, %bb.fx ], [ %i.de, %bb.ac ], [ %i.wv, %bb.fm ], [ %0, %bb.ge ], [ %i.vv, %bb.fd ], [ %.0903.i215, %read_inf_or_nan.exit.thread ], [ %.28.i, %bb.fs ], [ %0, %bb.gn ], [ %i.dt, %bb.ae ], [ %i.ee, %bb.ag ]
  store ptr %.sink617, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

read_num.exit.thread142:                          ; preds = %bb.hf, %bb.hh, %bb.hj, %bb.ii, %bb.ik, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split618

read_num.exit:                                    ; preds = %bb.ij, %bb.hg
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  store ptr %0, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split

.sink.split:                                      ; preds = %read_num.exit.thread138, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.im

bb.im:                                            ; preds = %.sink.split, %.split140, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont89.cont.else

.cont89.cont.else:                                ; preds = %bb.im
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bak = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %i.bal = icmp ugt ptr %i.bak, %0
  %i.bam = ptrtoint ptr %i.bak to i64
  %i.ban = sub i64 %i.bam, %i.f
  %i.bao = select i1 %i.bal, i64 %i.ban, i64 0
  store i64 %i.bao, ptr %.sroa.gep69, align 8, !tbaa !113
  %i.bap = load ptr, ptr %i.e, align 8, !tbaa !107
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bap, ptr %.sroa.gep71, align 8, !tbaa !114
  store i32 9, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

.sink.split618:                                   ; preds = %read_inf.exit, %bb.v, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cy, %bb.db, %bb.de, %bb.bd, %bb.bc, %bb.bb, %bb.ey, %bb.ex, %bb.ew, %.thread, %bb.bf, %.loopexit202, %bb.fv, %bb.fi, %bb.ab, %bb.gs, %bb.gx, %bb.gm, %bb.gk, %bb.gh, %bb.gd, %bb.gb, %bb.fz, %read_num.exit.thread142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.in

bb.in:                                            ; preds = %.sink.split618, %.split140, %.split
  %i.baq = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %.cont89.cont.else, %bb.im, %.cont86.cont.else, %bb.d, %.cont.cont.else, %bb.b, %bb.in
  %.0 = phi ptr [ null, %.cont86.cont.else ], [ null, %.cont.cont.else ], [ %i.baq, %bb.in ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.im ], [ null, %.cont89.cont.else ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_new(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.sroa.77.0 = phi ptr [ %.sroa.77.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 3 uses
  %i.a = and i32 %2, -16221
  %.not48 = icmp eq ptr %0, null
  %i.b = icmp ugt i64 %1, -6
  %or.cond = or i1 %.not48, %i.b
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !139

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef 144) #33 ; 15 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx5, align 8, !tbaa !47
  %.sroa.77.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.77.0, ptr %.sroa.77.0..sroa_idx9, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx12, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.a, ptr %i.e, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %1, ptr %i.f, align 8, !tbaa !142
  %i.g = and i32 %2, 1
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.g, label %bb.f, !prof !62

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %0, ptr %i.h, align 8, !tbaa !143
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = add nuw i64 %1, 4
  %i.j = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef %i.i) #33 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !143
  %.not50 = icmp eq ptr %i.j, null
  br i1 %.not50, label %bb.h, label %bb.i, !prof !45

bb.h:                                             ; preds = %bb.g
  tail call void %.sroa.77.0(ptr noundef %.sroa.8.0, ptr noundef nonnull %i.c) #33
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %0, i64 %1, i1 false)
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !143
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.l = phi ptr [ %.pre, %bb.i ], [ %0, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  store i32 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !144
  store i32 0, ptr %i.c, align 8, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.j, %bb.h
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ %i.c, %bb.j ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @yyjson_incr_free(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.c) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !141
  %i.h = and i32 %i.g, 1
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %i.e) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void %.sroa.3.0.copyload(ptr noundef %.sroa.6.0.copyload, ptr noundef nonnull %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_read(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %3 = alloca %struct.bigint, align 8             ; 29 uses
  %4 = alloca %struct.bigint, align 8             ; 19 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %5 = alloca %struct.bigint, align 8             ; 29 uses
  %6 = alloca %struct.bigint, align 8             ; 20 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %7 = alloca %struct.bigint, align 8             ; 29 uses
  %8 = alloca %struct.bigint, align 8             ; 20 uses
  %i.d = alloca ptr, align 8                      ; 212 uses
  %i.e = alloca ptr, align 8                      ; 50 uses
  %9 = alloca %struct.yyjson_read_err, align 8    ; 41 uses
  %i.f = alloca [1 x i8], align 1                 ; 9 uses
  %i.g = alloca ptr, align 8                      ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.f, ptr %i.g, align 8, !tbaa !107
  %.not = icmp eq ptr %2, null                    ; 39 uses
  %spec.store.select = select i1 %.not, ptr %9, ptr %2 ; 21 uses
  %.not812 = icmp eq ptr %0, null
  br i1 %.not812, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1777.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.12, ptr %spec.store.select.sroa.sel1780.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.atv

bb.c:                                             ; preds = %bb.a
  %.not813 = icmp eq i64 %1, 0
  br i1 %.not813, label %bb.d, label %bb.e, !prof !45

bb.d:                                             ; preds = %bb.c
  %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1771.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.1, ptr %spec.store.select.sroa.sel1774.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.atv

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !142
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.f, label %bb.g, !prof !45

bb.f:                                             ; preds = %bb.e
  %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1765.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.13, ptr %spec.store.select.sroa.sel1768.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.atv

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 35 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1 ; 36 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !144
  store ptr %i.o, ptr %i.d, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !141
  %.fr = freeze i32 %i.q                          ; 90 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !47 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47 ; 8 uses
  %.sroa.13338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13338.0.copyload = load ptr, ptr %.sroa.13338.0..sroa_idx, align 8, !tbaa !47 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !342  ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !343  ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !344  ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 25 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !345 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !146 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !346 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !347 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  %i.ai = load i8, ptr %i.m, align 1, !tbaa !100
  store i8 0, ptr %i.m, align 1, !tbaa !100
  %i.aj = load i32, ptr %0, align 8, !tbaa !145
  switch i32 %i.aj, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.nj
    i32 2, label %..preheader3575_crit_edge
    i32 3, label %bb.abl
    i32 4, label %..preheader3613_crit_edge
    i32 5, label %._crit_edge4904
    i32 6, label %..preheader3579_crit_edge
    i32 7, label %read_str_opt.exit
  ]

..preheader3575_crit_edge:                        ; preds = %bb.g
  %.promoted4033.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3575

..preheader3579_crit_edge:                        ; preds = %bb.g
  %.promoted4026.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3579

._crit_edge4904:                                  ; preds = %bb.g
  %.pre4905 = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %bb.afi

..preheader3613_crit_edge:                        ; preds = %bb.g
  %.promoted3817.pre = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3613

bb.h:                                             ; preds = %bb.g
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1759.v.sroa.sel.v.sroa.sel, align 8, !tbaa !113
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.14, ptr %spec.store.select.sroa.sel1762.v.sroa.sel.v.sroa.sel, align 8, !tbaa !114
  store i32 1, ptr %spec.store.select, align 8, !tbaa !115
  br label %bb.atv

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !107 ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !100 ; 4 uses
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 91
  br i1 %i.an, label %bb.j, label %.preheader3630, !prof !62

.preheader3630:                                   ; preds = %bb.i
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %i.ar = and i8 %i.aq, 4
  %.not33513744 = icmp eq i8 %i.ar, 0
  br i1 %.not33513744, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader3630, %.lr.ph
  %i.as = phi ptr [ %i.at, %.lr.ph ], [ %i.ak, %.preheader3630 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 4 uses
  store ptr %i.at, ptr %i.d, align 8, !tbaa !107
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100 ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !100
  %i.ay = and i8 %i.ax, 4
  %.not3351 = icmp eq i8 %i.ay, 0
  br i1 %.not3351, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %.lr.ph, %.preheader3630
  %i.az = phi i8 [ %i.al, %.preheader3630 ], [ %i.au, %.lr.ph ]
  %.lcssa3743 = phi ptr [ %i.ak, %.preheader3630 ], [ %i.at, %.lr.ph ] ; 2 uses
  %.not814 = icmp ult ptr %.lcssa3743, %i.m
  br i1 %.not814, label %bb.j, label %.loopexit3576, !prof !62

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ba = phi i8 [ %i.az, %._crit_edge ], [ %i.al, %bb.i ] ; 2 uses
  %i.bb = phi ptr [ %.lcssa3743, %._crit_edge ], [ %i.ak, %bb.i ]
  %.not815 = icmp eq ptr %i.ac, null
  br i1 %.not815, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bc = and i8 %i.ba, -33
  %i.bd = icmp eq i8 %i.bc, 91
  br i1 %i.bd, label %bb.l, label %bb.n, !prof !62

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %.fr, 2
  %.not3352 = icmp eq i32 %i.be, 0
  br i1 %.not3352, label %bb.m, label %bb.n, !prof !62

bb.m:                                             ; preds = %bb.l
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !142
  %i.bg = udiv i64 %i.bf, 6
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846967)
  %i.bi = add nuw nsw i64 %i.bh, 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.0722 = phi i64 [ 50, %bb.l ], [ %i.bi, %bb.m ], [ 5, %bb.k ] ; 5 uses
  %i.bj = shl nuw i64 %.0722, 4
  %i.bk = call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.13338.0.copyload, i64 noundef %i.bj) #33 ; 5 uses
  %.not816 = icmp eq ptr %i.bk, null
  br i1 %.not816, label %bb.ate, label %bb.o, !prof !45
end_hunk_5
