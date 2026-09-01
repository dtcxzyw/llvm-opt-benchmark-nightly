Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@skip_trivia:bb.a
    i16 -24382, label %ext_space_len.exit
    i16 -32542, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.279, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81  ; 2 uses
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
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
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
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !81  ; 3 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = and i8 %i.az, 8
  %.not69 = icmp eq i8 %i.ba, 0
  br i1 %.not69, label %ext_space_len.exit.thread, label %.lr.ph, !llvm.loop !224

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
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !81
  switch i8 %i.bf, label %.critedge [
    i8 47, label %bb.l
    i8 42, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 5 uses
  %i.bh = icmp ult ptr %i.bg, %1                  ; 2 uses
  br i1 %.not68, label %.preheader, label %.preheader73, !prof !25

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
  %i.bk = load i8, ptr %.484, align 1, !tbaa !81  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = and i8 %i.bn, 2
  %.not72 = icmp eq i8 %i.bo, 0
  br i1 %.not72, label %ext_eol_len.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph85
  %i.bp = icmp sgt i8 %i.bk, -1
  br i1 %i.bp, label %ext_eol_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.484, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = icmp eq i8 %i.br, -128
  br i1 %i.bs, label %bb.o, label %ext_eol_len.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.484, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
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
  br i1 %exitcond.not, label %.critedge, label %.lr.ph85, !llvm.loop !225

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.p
  %.687 = phi ptr [ %i.cd, %bb.p ], [ %i.bg, %.lr.ph88.preheader ] ; 3 uses
  %i.by = load i8, ptr %.687, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !81
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph88
  %i.cd = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 2 uses
  %exitcond103.not = icmp eq ptr %i.cd, %scevgep102
  br i1 %exitcond103.not, label %.critedge, label %.lr.ph88, !llvm.loop !226

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
  br i1 %.not53, label %bb.s, label %bb.r, !llvm.loop !227

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp eq ptr %.7, %1
  br i1 %i.ci, label %.thread62, label %bb.t

.thread62:                                        ; preds = %bb.s
  store ptr %1, ptr %0, align 8, !tbaa !92
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
  store ptr %.us-phi, ptr %0, align 8, !tbaa !92
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
  %i.b = alloca ptr, align 8                      ; 76 uses
  %i.c = alloca ptr, align 8                      ; 28 uses
  %i.d = alloca [1 x i8], align 1                 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 17 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.d, ptr %i.e, align 8, !tbaa !92
  %i.f = load ptr, ptr %3, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 5 uses
  %i.i = call ptr %i.f(ptr noundef %i.h, i64 noundef 80) #33 ; 69 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.nz, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 60 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !81      ; 8 uses
  %i.l = zext i8 %i.k to i64                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !81
  %i.o = and i8 %i.n, 16
  %.not658 = icmp eq i8 %i.o, 0
  br i1 %.not658, label %bb.im, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !114
  %i.p = and i32 %4, 32
  %.not670 = icmp eq i32 %i.p, 0
  br i1 %.not670, label %bb.d, label %.split, !prof !25

.split:                                           ; preds = %bb.c
  %i.q = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.q, label %read_str_opt.exit, label %bb.ny, !prof !169

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i8 %i.k, 45                      ; 57 uses
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 7 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !81    ; 6 uses
  %i.v = add i8 %i.u, -49
  %i.w = icmp ult i8 %i.v, 9
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !prof !116

.lr.ph:                                           ; preds = %bb.d
  %i.x = and i32 %4, 512                          ; 2 uses
  %.not974 = icmp ne i32 %i.x, 0                  ; 2 uses
  br i1 %.not974, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !8

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.u, 48
  br i1 %.not.i.us.peel, label %.split787.us, label %bb.e, !prof !25

bb.e:                                             ; preds = %.lr.ph.split.us.preheader
  %8 = icmp eq i8 %i.u, 43
  %i.z = icmp ne i8 %i.k, 45
  %or.cond990.i.us.peel = and i1 %i.z, %8
  br i1 %or.cond990.i.us.peel, label %bb.f, label %.split789.us

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !81   ; 4 uses
  %i.ab = add i8 %i.aa, -49
  %i.ac = icmp ult i8 %i.ab, 9
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !117

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.f
  %.not.i.us = icmp eq i8 %i.aa, 48
  br i1 %.not.i.us, label %.split787.us, label %.split789.us, !prof !25

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.u, 48
  br i1 %.not.i, label %.split787.us.thread, label %.loopexit738, !prof !25

.split789.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.e
  %.lcssa1584 = phi i8 [ %i.u, %bb.e ], [ %i.aa, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i784.us.lcssa1581 = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.ad = icmp eq i8 %.lcssa1584, 46
  br i1 %i.ad, label %bb.g, label %.loopexit738

bb.g:                                             ; preds = %.split789.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa1581, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81  ; 2 uses
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
  br i1 %.not671, label %read_inf_or_nan.exit.thread, label %bb.h, !prof !25

bb.h:                                             ; preds = %.loopexit738
  %i.ak = icmp ne i8 %i.k, 43
  %brmerge = or i1 %.not974, %i.ak
  br i1 %brmerge, label %bb.i, label %read_inf_or_nan.exit.thread, !prof !119

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.l
  %i.am = load i8, ptr %i.al, align 1, !tbaa !81  ; 2 uses
  %i.an = and i8 %i.am, 1
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 9 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !81
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 73
  br i1 %i.as, label %bb.j, label %._crit_edge1115

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = and i8 %i.au, -33
  %i.aw = icmp eq i8 %i.av, 78
  br i1 %i.aw, label %bb.k, label %._crit_edge1115

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = and i8 %i.ay, -33
  %i.ba = icmp eq i8 %i.az, 70
  br i1 %i.ba, label %bb.l, label %._crit_edge1115

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !81
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 73
  br i1 %i.be, label %bb.m, label %read_inf.exit251

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = and i8 %i.bg, -33
  %i.bi = icmp eq i8 %i.bh, 78
  br i1 %i.bi, label %bb.n, label %._crit_edge1115

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = and i8 %i.bk, -33
  %i.bm = icmp eq i8 %i.bl, 73
  br i1 %i.bm, label %bb.o, label %._crit_edge1115

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bp = and i8 %i.bo, -33
  %i.bq = icmp eq i8 %i.bp, 84
  br i1 %i.bq, label %bb.p, label %._crit_edge1115

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = and i8 %i.bs, -33
  %i.bu = icmp eq i8 %i.bt, 89
  br i1 %i.bu, label %bb.q, label %._crit_edge1115

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %read_inf.exit251

read_inf.exit251:                                 ; preds = %bb.q, %bb.l
  %.0.i250 = phi ptr [ %i.bv, %bb.q ], [ %i.bb, %bb.l ]
  store ptr %.0.i250, ptr %i.b, align 8, !tbaa !92
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.bw = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !81
  br label %read_num.exit.thread

._crit_edge1115:                                  ; preds = %bb.m, %bb.i, %bb.p, %bb.o, %bb.n, %bb.k, %bb.j
  %i.by = and i8 %i.am, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz ; 4 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !81
  %i.cc = and i8 %i.cb, -33
  %i.cd = icmp eq i8 %i.cc, 78
  br i1 %i.cd, label %bb.r, label %read_inf_or_nan.exit.thread

bb.r:                                             ; preds = %._crit_edge1115
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !81
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 65
  br i1 %i.ch, label %bb.s, label %read_inf_or_nan.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !81
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 78
  br i1 %i.cl, label %bb.t, label %read_inf_or_nan.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !92
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.cn = select i1 %i.r, i64 -2251799813685248, i64 9221120237041090560
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !81
  br label %read_num.exit.thread

read_inf_or_nan.exit.thread:                      ; preds = %bb.h, %._crit_edge1115, %bb.r, %bb.s, %.loopexit738
  store ptr @.str.89, ptr %i.c, align 8, !tbaa !92
  store ptr %.0903.i781, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split

.split787.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %.lr.ph.split.us.preheader
  %.0903.i784.us.lcssa = phi ptr [ %i.t, %.lr.ph.split.us.preheader ], [ %i.y, %.lr.ph.split.us.preheader.peel.newph ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0903.i784.us.lcssa, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !81  ; 3 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !81
  %i.cu = and i8 %i.ct, 26
  %.not672 = icmp eq i8 %i.cu, 0
  br i1 %.not672, label %bb.u, label %bb.v, !prof !25

.split787.us.thread:                              ; preds = %.lr.ph.split
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81  ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  %i.da = and i8 %i.cz, 26
  %.not6721241 = icmp eq i8 %i.da, 0
  br i1 %.not6721241, label %.thread, label %bb.v, !prof !25

bb.u:                                             ; preds = %.split787.us
  %i.db = and i8 %i.cq, -33
  %i.dc = icmp eq i8 %i.db, 88
  br i1 %i.dc, label %.split630, label %.thread, !prof !171

.split630:                                        ; preds = %bb.u
  %i.dd = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.dd, label %read_str_opt.exit, label %bb.ny, !prof !169

.thread:                                          ; preds = %.split787.us.thread, %bb.u
  %i.de = phi ptr [ %i.cp, %bb.u ], [ %i.cv, %.split787.us.thread ]
  %i.df = select i1 %i.r, i64 12, i64 4
  store i64 %i.df, ptr %i.j, align 8, !tbaa !79
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 0, ptr %i.dg, align 8, !tbaa !81
  store ptr %i.de, ptr %i.b, align 8, !tbaa !92
  br label %read_num.exit.thread

bb.v:                                             ; preds = %.split787.us.thread, %.split787.us
  %i.dh = phi i8 [ %i.cw, %.split787.us.thread ], [ %i.cq, %.split787.us ] ; 3 uses
  %i.di = phi ptr [ %i.cv, %.split787.us.thread ], [ %i.cp, %.split787.us ] ; 5 uses
  %.us-phi1242 = phi ptr [ %i.t, %.split787.us.thread ], [ %.0903.i784.us.lcssa, %.split787.us ]
  %i.dj = icmp eq i8 %i.dh, 46
  br i1 %i.dj, label %bb.w, label %bb.ab, !prof !25

end_hunk_0
begin_hunk_1_@yyjson_read_fp:bb.a
bb.k:                                             ; preds = %bb.j
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel150.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel153.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 2, ptr %spec.store.select, align 8, !tbaa !108
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.t = tail call i64 @fread(ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %spec.select125, ptr noundef nonnull %0)
  %.not122 = icmp eq i64 %i.t, %spec.select125
  br i1 %.not122, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel144.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.9, ptr %spec.store.select.sroa.sel147.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 13, ptr %spec.store.select, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  tail call void %i.v(ptr noundef %i.q, ptr noundef nonnull %i.r) #33
  br label %.critedge

bb.n:                                             ; preds = %bb.u
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel138.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel141.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 2, ptr %spec.store.select, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
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
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel129.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 2, ptr %spec.store.select, align 8, !tbaa !108
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.aa = tail call ptr %i.j(ptr noundef %i.l, ptr noundef nonnull %.095165, i64 noundef %.094166, i64 noundef %i.y) #33 ; 2 uses
  %.not119 = icmp eq ptr %i.aa, null
  br i1 %.not119, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel132.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v = select i1 %.not113, ptr %4, ptr %3
  %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel135.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  store i32 2, ptr %spec.store.select, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
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
  store ptr %.3, ptr %i.ap, align 8, !tbaa !94
  br label %.critedge

bb.w:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24
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
define ptr @yyjson_read_number(ptr noundef %0, ptr nofree noundef writeonly %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
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
  store ptr %0, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.c, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %.not = icmp eq ptr %4, null                    ; 3 uses
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.cont.cont.cont, label %.cont.cont.else

.cont.cont.else:                                  ; preds = %bb.b
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep80, align 8, !tbaa !105
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %.sroa.gep83, align 8, !tbaa !107
  store i32 1, ptr %4, align 8, !tbaa !108
  br label %.cont.cont.cont

bb.c:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %.cont.cont.cont, label %.cont86.cont.else

.cont86.cont.else:                                ; preds = %bb.d
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.gep74, align 8, !tbaa !105
  %.sroa.gep77 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.11, ptr %.sroa.gep77, align 8, !tbaa !107
  store i32 1, ptr %4, align 8, !tbaa !108
  br label %.cont.cont.cont

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !114
  %i.g = and i32 %2, 32
  %.not150 = icmp eq i32 %i.g, 0
  br i1 %.not150, label %bb.f, label %.split, !prof !25

.split:                                           ; preds = %bb.e
  %i.h = call fastcc zeroext i1 @read_num_raw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.h, label %bb.in, label %bb.im

bb.f:                                             ; preds = %bb.e
  %i.i = load i8, ptr %0, align 1, !tbaa !81      ; 4 uses
  %i.j = icmp eq i8 %i.i, 45                      ; 57 uses
  %i.k = zext i1 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 7 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !81    ; 6 uses
  %i.n = add i8 %i.m, -49
  %i.o = icmp ult i8 %i.n, 9
  br i1 %i.o, label %._crit_edge, label %.lr.ph, !prof !116

.lr.ph:                                           ; preds = %bb.f
  %i.p = and i32 %2, 512                          ; 2 uses
  %.not342 = icmp ne i32 %i.p, 0                  ; 2 uses
  br i1 %.not342, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !8

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not.i.us.peel = icmp eq i8 %i.m, 48
  br i1 %.not.i.us.peel, label %.split221.us, label %bb.g, !prof !25

bb.g:                                             ; preds = %.lr.ph.split.us.preheader
  %7 = icmp eq i8 %i.m, 43
  %i.r = icmp ne i8 %i.i, 45
  %or.cond990.i.us.peel = and i1 %i.r, %7
  br i1 %or.cond990.i.us.peel, label %bb.h, label %.split223.us

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.q, align 1, !tbaa !81    ; 4 uses
  %i.t = add i8 %i.s, -49
  %i.u = icmp ult i8 %i.t, 9
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split.us.preheader.peel.newph, !prof !117

.lr.ph.split.us.preheader.peel.newph:             ; preds = %bb.h
  %.not.i.us = icmp eq i8 %i.s, 48
  br i1 %.not.i.us, label %.split221.us, label %.split223.us, !prof !25

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not.i = icmp eq i8 %i.m, 48
  br i1 %.not.i, label %.split221.us.thread, label %.loopexit204, !prof !25

.split223.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %bb.g
  %.lcssa741 = phi i8 [ %i.m, %bb.g ], [ %i.s, %.lr.ph.split.us.preheader.peel.newph ]
  %.0903.i218.us.lcssa738 = phi ptr [ %i.l, %bb.g ], [ %i.q, %.lr.ph.split.us.preheader.peel.newph ] ; 5 uses
  %i.v = icmp eq i8 %.lcssa741, 46
  br i1 %i.v, label %bb.i, label %.loopexit204

bb.i:                                             ; preds = %.split223.us
  %i.w = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa738, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !81    ; 2 uses
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
  br i1 %.not151, label %read_inf_or_nan.exit.thread, label %bb.j, !prof !25

bb.j:                                             ; preds = %.loopexit204
  %i.ac = icmp ne i8 %i.i, 43
  %brmerge = or i1 %.not342, %i.ac
  br i1 %brmerge, label %bb.k, label %read_inf_or_nan.exit.thread, !prof !119

bb.k:                                             ; preds = %bb.j
  %i.ad = zext i8 %i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81  ; 2 uses
  %i.ag = and i8 %i.af, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 9 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !81
  %i.ak = and i8 %i.aj, -33
  %i.al = icmp eq i8 %i.ak, 73
  br i1 %i.al, label %bb.l, label %._crit_edge431

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 78
  br i1 %i.ap, label %bb.m, label %._crit_edge431

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !81
  %i.as = and i8 %i.ar, -33
  %i.at = icmp eq i8 %i.as, 70
  br i1 %i.at, label %bb.n, label %._crit_edge431

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !81
  %i.aw = and i8 %i.av, -33
  %i.ax = icmp eq i8 %i.aw, 73
  br i1 %i.ax, label %bb.o, label %read_inf.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = and i8 %i.az, -33
  %i.bb = icmp eq i8 %i.ba, 78
  br i1 %i.bb, label %bb.p, label %._crit_edge431

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !81
  %i.be = and i8 %i.bd, -33
  %i.bf = icmp eq i8 %i.be, 73
  br i1 %i.bf, label %bb.q, label %._crit_edge431

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !81
  %i.bi = and i8 %i.bh, -33
  %i.bj = icmp eq i8 %i.bi, 84
  br i1 %i.bj, label %bb.r, label %._crit_edge431

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bm = and i8 %i.bl, -33
  %i.bn = icmp eq i8 %i.bm, 89
  br i1 %i.bn, label %bb.s, label %._crit_edge431

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %read_inf.exit

read_inf.exit:                                    ; preds = %bb.s, %bb.n
  %.0.i25 = phi ptr [ %i.bo, %bb.s ], [ %i.au, %bb.n ]
  store ptr %.0.i25, ptr %i.b, align 8, !tbaa !92
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.bp = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !81
  br label %.sink.split618

._crit_edge431:                                   ; preds = %bb.o, %bb.k, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l
  %i.br = and i8 %i.af, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = and i8 %i.bu, -33
  %i.bw = icmp eq i8 %i.bv, 78
  br i1 %i.bw, label %bb.t, label %read_inf_or_nan.exit.thread

bb.t:                                             ; preds = %._crit_edge431
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = and i8 %i.by, -33
  %i.ca = icmp eq i8 %i.bz, 65
  br i1 %i.ca, label %bb.u, label %read_inf_or_nan.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !81
  %i.cd = and i8 %i.cc, -33
  %i.ce = icmp eq i8 %i.cd, 78
  br i1 %i.ce, label %bb.v, label %read_inf_or_nan.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !92
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.cg = select i1 %i.j, i64 -2251799813685248, i64 9221120237041090560
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !81
  br label %.sink.split618

read_inf_or_nan.exit.thread:                      ; preds = %bb.j, %._crit_edge431, %bb.t, %bb.u, %.loopexit204
  store ptr @.str.89, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit.thread138

.split221.us:                                     ; preds = %.lr.ph.split.us.preheader.peel.newph, %.lr.ph.split.us.preheader
  %.0903.i218.us.lcssa = phi ptr [ %i.l, %.lr.ph.split.us.preheader ], [ %i.q, %.lr.ph.split.us.preheader.peel.newph ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0903.i218.us.lcssa, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !81  ; 3 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !81
  %i.cn = and i8 %i.cm, 26
  %.not152 = icmp eq i8 %i.cn, 0
  br i1 %.not152, label %bb.w, label %bb.x, !prof !25

.split221.us.thread:                              ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !81  ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %i.ct = and i8 %i.cs, 26
  %.not152536 = icmp eq i8 %i.ct, 0
  br i1 %.not152536, label %.thread, label %bb.x, !prof !25

bb.w:                                             ; preds = %.split221.us
  %i.cu = and i8 %i.cj, -33
  %i.cv = icmp eq i8 %i.cu, 88
  br i1 %i.cv, label %.split140, label %.thread, !prof !243

.split140:                                        ; preds = %bb.w
  %i.cw = call fastcc zeroext i1 @read_num_hex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.cw, label %bb.in, label %bb.im

.thread:                                          ; preds = %.split221.us.thread, %bb.w
  %i.cx = phi ptr [ %i.ci, %bb.w ], [ %i.co, %.split221.us.thread ]
  %i.cy = select i1 %i.j, i64 12, i64 4
  store i64 %i.cy, ptr %1, align 8, !tbaa !79
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !81
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split618

bb.x:                                             ; preds = %.split221.us.thread, %.split221.us
  %i.da = phi i8 [ %i.cp, %.split221.us.thread ], [ %i.cj, %.split221.us ] ; 3 uses
  %i.db = phi ptr [ %i.co, %.split221.us.thread ], [ %i.ci, %.split221.us ] ; 5 uses
  %.us-phi537 = phi ptr [ %i.l, %.split221.us.thread ], [ %.0903.i218.us.lcssa, %.split221.us ]
  %i.dc = icmp eq i8 %i.da, 46
  br i1 %i.dc, label %bb.y, label %bb.ad, !prof !25

end_hunk_1
begin_hunk_2_@yyjson_incr_read:bb.a
  %i.iyw = sub i64 %i.iyu, %i.iyv
  %spec.store.select.sroa.sel1744.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1744.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1744.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.iyw, ptr %spec.store.select.sroa.sel1744.v.sroa.sel.v.sroa.sel, align 8, !tbaa !105
  store i32 4, ptr %spec.store.select, align 8, !tbaa !108
  %spec.store.select.sroa.sel1747.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %9, ptr %2
  %spec.store.select.sroa.sel1747.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1747.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %spec.store.select.sroa.sel1747.v.sroa.sel.v.sroa.sel, align 8, !tbaa !107
  br label %bb.atv

bb.atv:                                           ; preds = %bb.atu, %bb.ats, %bb.atq, %bb.ato, %bb.atm, %bb.atk, %bb.atj, %bb.ati, %bb.ath, %bb.atg, %bb.atf, %bb.atd, %bb.atb, %bb.ata, %bb.asz, %bb.asy, %bb.ng, %bb.h, %bb.f, %bb.d, %bb.b
  %.0764 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.asz ], [ null, %bb.ata ], [ null, %bb.atj ], [ %.27709, %bb.asy ], [ null, %bb.atu ], [ null, %bb.atg ], [ null, %bb.atf ], [ null, %bb.ng ], [ null, %bb.ato ], [ null, %bb.atd ], [ null, %bb.atq ], [ null, %bb.atb ], [ null, %bb.ats ], [ null, %bb.ath ], [ null, %bb.atm ], [ null, %bb.ati ], [ null, %bb.atk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  ret ptr %.0764
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_truncated_end(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 2, 12) %3, i32 noundef %4) unnamed_addr #18 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %is_truncated_str.exit144

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %3, 11
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.i = icmp ugt ptr %i.b, %2                 ; 2 uses
  br i1 %.not.i, label %is_truncated_str.exit, label %is_truncated_str.exit.thread

is_truncated_str.exit:                            ; preds = %bb.c
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.96, i64 %i.e)
  %i.f = icmp eq i32 %bcmp.i, 0
  br i1 %i.f, label %is_truncated_str.exit144, label %is_truncated_str.exit.thread

is_truncated_str.exit.thread:                     ; preds = %bb.c, %is_truncated_str.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.not.i128 = icmp ugt ptr %i.g, %2
  br i1 %.not.i128, label %is_truncated_str.exit133, label %is_truncated_str.exit133.thread

is_truncated_str.exit133:                         ; preds = %is_truncated_str.exit.thread
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %bcmp.i132 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.99, i64 %i.j)
  %i.k = icmp eq i32 %bcmp.i132, 0
  br i1 %i.k, label %is_truncated_str.exit144, label %is_truncated_str.exit133.thread

is_truncated_str.exit133.thread:                  ; preds = %is_truncated_str.exit.thread, %is_truncated_str.exit133
  br i1 %.not.i, label %is_truncated_str.exit139, label %.thread

is_truncated_str.exit139:                         ; preds = %is_truncated_str.exit133.thread
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %bcmp.i138 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.98, i64 %i.n)
  %i.o = icmp eq i32 %bcmp.i138, 0
  br i1 %i.o, label %is_truncated_str.exit144, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %3, 6                        ; 3 uses
  switch i32 %3, label %is_truncated_str.exit154.thread [
    i32 6, label %.thread
    i32 9, label %.thread
  ]

.thread:                                          ; preds = %is_truncated_str.exit133.thread, %is_truncated_str.exit139, %bb.d, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ %i.p, %bb.d ], [ false, %is_truncated_str.exit139 ], [ false, %is_truncated_str.exit133.thread ] ; 3 uses
  %i.r = and i32 %4, 16
  %.not193 = icmp eq i32 %i.r, 0
  br i1 %.not193, label %is_truncated_str.exit154.thread, label %bb.e, !prof !25

bb.e:                                             ; preds = %.thread
  %i.s = load i8, ptr %1, align 1, !tbaa !81
  %i.t = icmp eq i8 %i.s, 45
  %spec.select.idx = zext i1 %i.t to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.not.i140 = icmp ugt ptr %i.u, %2
  %.not21.i141 = icmp ugt ptr %2, %spec.select    ; 2 uses
  %or.cond.i142 = and i1 %.not21.i141, %.not.i140
  br i1 %or.cond.i142, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.01724.i = phi ptr [ %i.z, %bb.f ], [ @.str.100, %bb.e ] ; 2 uses
  %.01823.i = phi ptr [ %i.y, %bb.f ], [ %spec.select, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.01823.i, align 1, !tbaa !81
  %i.w = or i8 %i.v, 32
  %i.x = load i8, ptr %.01724.i, align 1, !tbaa !81
  %.not22.i = icmp eq i8 %i.w, %i.x
  br i1 %.not22.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01823.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01724.i, i64 1
  %exitcond.not.i = icmp eq ptr %i.y, %2
  br i1 %exitcond.not.i, label %is_truncated_str.exit144, label %.lr.ph.i, !llvm.loop !319

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %.not.i145 = icmp ugt ptr %i.aa, %2
  %or.cond.i147 = and i1 %.not21.i141, %.not.i145
  br i1 %or.cond.i147, label %.lr.ph.i149, label %is_truncated_str.exit154.thread

.lr.ph.i149:                                      ; preds = %.loopexit, %bb.g
  %.01724.i150 = phi ptr [ %i.af, %bb.g ], [ @.str.101, %.loopexit ] ; 2 uses
  %.01823.i151 = phi ptr [ %i.ae, %bb.g ], [ %spec.select, %.loopexit ] ; 2 uses
  %i.ab = load i8, ptr %.01823.i151, align 1, !tbaa !81
  %i.ac = or i8 %i.ab, 32
  %i.ad = load i8, ptr %.01724.i150, align 1, !tbaa !81
  %.not22.i152 = icmp eq i8 %i.ac, %i.ad
  br i1 %.not22.i152, label %bb.g, label %is_truncated_str.exit154.thread

bb.g:                                             ; preds = %.lr.ph.i149
  %i.ae = getelementptr inbounds nuw i8, ptr %.01823.i151, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01724.i150, i64 1
  %exitcond.not.i153 = icmp eq ptr %i.ae, %2
  br i1 %exitcond.not.i153, label %is_truncated_str.exit144, label %.lr.ph.i149, !llvm.loop !319

is_truncated_str.exit154.thread:                  ; preds = %.lr.ph.i149, %.loopexit, %bb.d, %.thread
  %i.ag = phi i1 [ %i.p, %bb.d ], [ %i.q, %.thread ], [ %i.q, %.loopexit ], [ %i.q, %.lr.ph.i149 ] ; 2 uses
  %.188 = phi ptr [ %1, %bb.d ], [ %1, %.thread ], [ %spec.select, %.loopexit ], [ %spec.select, %.lr.ph.i149 ] ; 24 uses
  switch i32 %3, label %.thread176 [
    i32 4, label %bb.h
    i32 10, label %bb.l
  ]

bb.h:                                             ; preds = %is_truncated_str.exit154.thread
  %i.ah = and i32 %4, 16
  %.not194 = icmp eq i32 %i.ah, 0
  br i1 %.not194, label %.thread176, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.not109 = icmp ugt ptr %i.ai, %.188
  br i1 %.not109, label %.thread176, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %.188, i64 -3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.188, i64 5
  %.not.i155 = icmp ugt ptr %i.ak, %2
  %.not21.i156 = icmp ugt ptr %2, %i.aj
  %or.cond.i157 = and i1 %.not21.i156, %.not.i155
  br i1 %or.cond.i157, label %.lr.ph.i159, label %.thread176

.lr.ph.i159:                                      ; preds = %bb.j, %bb.k
  %.01724.i160 = phi ptr [ %i.ap, %bb.k ], [ @.str.100, %bb.j ] ; 2 uses
  %.01823.i161 = phi ptr [ %i.ao, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %i.al = load i8, ptr %.01823.i161, align 1, !tbaa !81
  %i.am = or i8 %i.al, 32
  %i.an = load i8, ptr %.01724.i160, align 1, !tbaa !81
  %.not22.i162 = icmp eq i8 %i.am, %i.an
  br i1 %.not22.i162, label %bb.k, label %.thread176

bb.k:                                             ; preds = %.lr.ph.i159
  %i.ao = getelementptr inbounds nuw i8, ptr %.01823.i161, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01724.i160, i64 1
  %exitcond.not.i163 = icmp eq ptr %i.ao, %2
  br i1 %exitcond.not.i163, label %is_truncated_str.exit144, label %.lr.ph.i159, !llvm.loop !319

bb.l:                                             ; preds = %is_truncated_str.exit154.thread
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = ptrtoint ptr %.188 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = load i8, ptr %.188, align 1, !tbaa !81  ; 6 uses
  %i.au = icmp eq i8 %i.at, 92
  br i1 %i.au, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i64 %i.as, 1
  br i1 %i.av, label %is_truncated_str.exit144, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ult i64 %i.as, 6
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %.not121 = icmp eq i8 %i.ay, 117
  br i1 %.not121, label %bb.p, label %is_truncated_str.exit144

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.188, i64 2 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %2
  br i1 %i.ba, label %.lr.ph, label %is_truncated_str.exit144

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.289202 = phi ptr [ %i.bf, %.lr.ph ], [ %i.az, %bb.p ] ; 2 uses
  %i.bb = load i8, ptr %.289202, align 1, !tbaa !81
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81  ; 2 uses
  %.not195.not.not = icmp eq i8 %i.be, -16
  %i.bf = getelementptr inbounds nuw i8, ptr %.289202, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bf, %2
  %or.cond.not = select i1 %.not195.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond.not, label %.thread186.a, label %.lr.ph, !llvm.loop !320

bb.q:                                             ; preds = %bb.n
  %i.bg = icmp ult i64 %i.as, 12
  br i1 %i.bg, label %bb.r, label %is_truncated_str.exit144

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !81
  %.not110 = icmp eq i8 %i.bi, 117
  br i1 %.not110, label %bb.s, label %is_truncated_str.exit144

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %.188, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %.188, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !81
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %.188, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !81
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !81
  %i.cd = zext i8 %i.bn to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = zext i8 %i.bx to i32
  %i.cg = or disjoint i32 %i.ce, %i.cf            ; 2 uses
  %i.ch = zext i8 %i.bs to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8                ; 2 uses
  %i.cj = zext i8 %i.cc to i32
  %i.ck = shl nuw nsw i32 %i.cg, 4
  %i.cl = or i32 %i.ck, %i.ci
  %i.cm = or disjoint i32 %i.ci, %i.cj
  %i.cn = or i32 %i.cm, %i.cg
  %i.co = and i32 %i.cn, 61680
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = and i32 %i.cl, 63488
  %.not111 = icmp eq i32 %i.cq, 55296
  %or.cond189 = select i1 %i.cp, i1 %.not111, i1 false
  br i1 %or.cond189, label %bb.t, label %is_truncated_str.exit144

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.188, i64 6 ; 2 uses
  %.not112 = icmp ult ptr %i.cr, %2
  br i1 %.not112, label %bb.u, label %is_truncated_str.exit144

bb.u:                                             ; preds = %bb.t
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %.not113 = icmp eq i8 %i.cs, 92
  br i1 %.not113, label %bb.v, label %is_truncated_str.exit144

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %.188, i64 7 ; 2 uses
  %.not114 = icmp ult ptr %i.ct, %2
  br i1 %.not114, label %bb.w, label %is_truncated_str.exit144

bb.w:                                             ; preds = %bb.v
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !81
  %.not115 = icmp eq i8 %i.cu, 117
  br i1 %.not115, label %bb.x, label %is_truncated_str.exit144

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.188, i64 8 ; 2 uses
  %.not116 = icmp ult ptr %i.cv, %2
  br i1 %.not116, label %bb.y, label %is_truncated_str.exit144

bb.y:                                             ; preds = %bb.x
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  switch i8 %i.cw, label %is_truncated_str.exit144 [
    i8 100, label %bb.z
    i8 68, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.188, i64 9 ; 2 uses
  %.not119 = icmp ult ptr %i.cx, %2
  br i1 %.not119, label %bb.aa, label %is_truncated_str.exit144

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !81
  switch i8 %i.cy, label %is_truncated_str.exit144 [
    i8 102, label %bb.ab
    i8 101, label %bb.ab
    i8 100, label %bb.ab
    i8 99, label %bb.ab
    i8 70, label %bb.ab
    i8 69, label %bb.ab
    i8 68, label %bb.ab
    i8 67, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.188, i64 10 ; 2 uses
  %.not120 = icmp ult ptr %i.cz, %2
  br i1 %.not120, label %bb.ac, label %is_truncated_str.exit144

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !81
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !81
  %i.de = icmp ne i8 %i.dd, -16
  br label %is_truncated_str.exit144

bb.ad:                                            ; preds = %bb.l
  %i.df = icmp uge ptr %.188, %2
  %i.dg = icmp ugt i64 %i.as, 3
  %or.cond.i165 = or i1 %i.df, %i.dg
  br i1 %or.cond.i165, label %.thread176, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !81  ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.188, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !81
  %i.dl = zext i8 %i.at to i32                    ; 8 uses
  %i.dm = icmp sgt i8 %i.at, -1
  br i1 %i.dm, label %.thread176, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i64 %i.as, label %.thread176 [
    i64 1, label %bb.ag
    i64 2, label %bb.ai
    i64 3, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dn = and i32 %i.dl, 224
  %i.do = icmp eq i32 %i.dn, 192
  %i.dp = and i32 %i.dl, 30
  %.not.i167 = icmp ne i32 %i.dp, 0
  %or.cond40.not50.i = and i1 %i.do, %.not.i167
  %i.dq = and i32 %i.dl, 240
  %i.dr = icmp eq i32 %i.dq, 224
  %or.cond48.i = or i1 %i.dr, %or.cond40.not50.i
  br i1 %or.cond48.i, label %is_truncated_str.exit144, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = and i32 %i.dl, 248
  %i.dt = icmp eq i32 %i.ds, 240
  %i.du = and i32 %i.dl, 7
  %i.dv = icmp samesign ult i32 %i.du, 5
  %or.cond42.i = select i1 %i.dt, i1 %i.dv, i1 false
  br i1 %or.cond42.i, label %is_truncated_str.exit144, label %.thread176

bb.ai:                                            ; preds = %bb.af
  %i.dw = and i32 %i.dl, 240
  %i.dx = icmp eq i32 %i.dw, 224
  %i.dy = icmp slt i8 %i.di, -64                  ; 2 uses
  %or.cond43.i = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond43.i, label %is_truncated_utf8.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = and i32 %i.dl, 248
  %i.ea = icmp eq i32 %i.dz, 240
  %or.cond44.i = select i1 %i.ea, i1 %i.dy, i1 false
  br i1 %or.cond44.i, label %.split227, label %.thread176

.split227:                                        ; preds = %bb.aj
  %i.eb = shl i8 %i.at, 2
  %i.ec = and i8 %i.eb, 28
  %i.ed = lshr i8 %i.di, 4
  %i.ee = and i8 %i.ed, 3
  %i.ef = add nsw i8 %i.ec, -1
  %i.eg = add nsw i8 %i.ef, %i.ee
  %i.eh = icmp ult i8 %i.eg, 16
  br i1 %i.eh, label %is_truncated_str.exit144, label %.thread176

bb.ak:                                            ; preds = %bb.af
  %i.ei = and i32 %i.dl, 248
  %i.ej = icmp eq i32 %i.ei, 240
  %i.ek = icmp slt i8 %i.di, -64
  %or.cond45.i = select i1 %i.ej, i1 %i.ek, i1 false
  %i.el = icmp slt i8 %i.dk, -64
  %or.cond46.i = select i1 %or.cond45.i, i1 %i.el, i1 false
  br i1 %or.cond46.i, label %.split, label %.thread176

.split:                                           ; preds = %bb.ak
  %i.em = shl i8 %i.at, 2
  %i.en = and i8 %i.em, 28
  %i.eo = lshr i8 %i.di, 4
  %i.ep = and i8 %i.eo, 3
  %i.eq = add nsw i8 %i.en, -1
  %i.er = add nsw i8 %i.eq, %i.ep
  %i.es = icmp ult i8 %i.er, 16
  br i1 %i.es, label %is_truncated_str.exit144, label %.thread176

is_truncated_utf8.exit:                           ; preds = %bb.ai
  %i.et = shl i8 %i.at, 1
  %i.eu = and i8 %i.et, 30
  %i.ev = lshr i8 %i.di, 5
  %i.ew = and i8 %i.ev, 1
  %i.ex = or disjoint i8 %i.ew, %i.eu
  switch i8 %i.ex, label %is_truncated_str.exit144 [
    i8 27, label %.thread176
    i8 0, label %.thread176
  ]

.thread176:                                       ; preds = %.lr.ph.i159, %is_truncated_utf8.exit, %is_truncated_utf8.exit, %.split227, %.split, %bb.af, %bb.ah, %bb.aj, %bb.ak, %bb.ae, %bb.ad, %bb.i, %bb.h, %bb.j, %is_truncated_str.exit154.thread
  %i.ey = and i32 %4, 8
  %.not196 = icmp eq i32 %i.ey, 0
  br i1 %.not196, label %bb.an, label %bb.al, !prof !25

bb.al:                                            ; preds = %.thread176
  %i.ez = icmp eq i32 %3, 8                       ; 2 uses
  %.not190 = xor i1 %i.ag, true
  %brmerge = or i1 %i.ez, %.not190
  br i1 %brmerge, label %is_truncated_str.exit144, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = load i8, ptr %.188, align 1, !tbaa !81
  %i.fb = icmp eq i8 %i.fa, 47
  %i.fc = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.fd = icmp eq ptr %i.fc, %2
  %or.cond127 = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %or.cond127, label %is_truncated_str.exit144, label %.thread185

bb.an:                                            ; preds = %.thread176
  %i.fe = and i32 %4, 256
  %i.ff = icmp ne i32 %i.fe, 0
  %or.cond192 = and i1 %i.ff, %i.ag
  br i1 %or.cond192, label %bb.ao, label %is_truncated_str.exit144, !prof !127

.thread185:                                       ; preds = %bb.am
  %.old = and i32 %4, 256
  %.old191.not = icmp eq i32 %.old, 0
  br i1 %.old191.not, label %is_truncated_str.exit144, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %bb.an, %.thread185
  %i.fg = ptrtoint ptr %2 to i64
  %i.fh = ptrtoint ptr %.188 to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = icmp eq ptr %.188, %0
  %i.fk = icmp ult i64 %i.fi, 3
  %or.cond5 = and i1 %i.fj, %i.fk
  br i1 %or.cond5, label %bb.ap, label %.thread186

bb.ap:                                            ; preds = %bb.ao
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull @.str.58, i64 %i.fi)
  %.not122 = icmp eq i32 %bcmp, 0
  br i1 %.not122, label %is_truncated_str.exit144, label %.thread186

.thread186:                                       ; preds = %bb.ao, %bb.ap
  br label %is_truncated_str.exit144

.thread186.a:                                     ; preds = %.lr.ph
  %.not195.not = icmp ne i8 %i.be, -16
  br label %is_truncated_str.exit144

is_truncated_str.exit144:                         ; preds = %bb.f, %bb.g, %bb.k, %.thread186.a, %is_truncated_utf8.exit, %.split227, %.split, %bb.p, %bb.aa, %bb.al, %bb.ah, %bb.ag, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.r, %bb.o, %bb.m, %bb.q, %bb.an, %.thread185, %.thread186, %bb.ap, %bb.am, %is_truncated_str.exit, %is_truncated_str.exit133, %is_truncated_str.exit139, %bb.a
  %.4 = phi i1 [ true, %is_truncated_utf8.exit ], [ true, %bb.a ], [ true, %is_truncated_str.exit ], [ true, %bb.am ], [ true, %.split227 ], [ %i.ez, %bb.al ], [ true, %bb.ap ], [ false, %bb.an ], [ true, %is_truncated_str.exit139 ], [ true, %is_truncated_str.exit133 ], [ true, %bb.k ], [ %.not195.not, %.thread186.a ], [ false, %.thread186 ], [ true, %bb.m ], [ false, %.thread185 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.ab ], [ false, %bb.aa ], [ true, %bb.z ], [ false, %bb.y ], [ true, %bb.x ], [ false, %bb.w ], [ true, %bb.v ], [ false, %bb.u ], [ true, %bb.t ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.o ], [ %i.de, %bb.ac ], [ true, %bb.p ], [ true, %bb.g ], [ true, %.split ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @yyjson_write_number(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not42 = icmp eq ptr %1, null
  %spec.select = or i1 %.not, %.not42
  br i1 %spec.select, label %bb.aw, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !79     ; 4 uses
  %trunc = trunc i64 %i.a to i8
  switch i8 %trunc, label %bb.aw [
    i8 4, label %bb.c
    i8 12, label %bb.v
    i8 20, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 26 uses
  %i.d = icmp ult i64 %i.c, 100000000
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %i.c to i32            ; 4 uses
  %i.f = icmp samesign ult i64 %i.c, 100
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %i.c, 10           ; 2 uses
  %i.h = shl nuw nsw i64 %i.c, 1
  %i.i = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.h
  %.neg70.i = sext i1 %i.g to i64
  %i.j = zext i1 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 1
  store i16 %i.l, ptr %1, align 1
  %i.m = getelementptr inbounds i8, ptr %1, i64 %.neg70.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.o = icmp samesign ult i64 %i.c, 10000
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i32 %i.e, 5243
  %i.q = lshr i32 %i.p, 19                        ; 2 uses
  %.neg68.i = mul nsw i32 %i.q, -100
  %i.r = add nsw i32 %.neg68.i, %i.e
  %i.s = icmp samesign ult i64 %i.c, 1000         ; 2 uses
  %i.t = shl nuw nsw i32 %i.q, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.u
  %.neg69.i = sext i1 %i.s to i64
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i16, ptr %i.x, align 1
  store i16 %i.y, ptr %1, align 1
  %i.z = getelementptr inbounds i8, ptr %1, i64 %.neg69.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = shl nsw i32 %i.r, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  store i16 %i.ae, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %i.c, 1000000
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = mul nuw nsw i64 %i.c, 429497
  %i.ai = lshr i64 %i.ah, 32                      ; 2 uses
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %.neg65.i = mul nsw i32 %i.aj, -10000
  %i.ak = add nsw i32 %.neg65.i, %i.e             ; 2 uses
  %i.al = mul i32 %i.ak, 5243
  %i.am = lshr i32 %i.al, 19                      ; 2 uses
  %.neg66.i = mul nsw i32 %i.am, -100
  %i.an = add nsw i32 %.neg66.i, %i.ak
  %i.ao = icmp samesign ult i64 %i.c, 100000      ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ai, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ap
  %.neg67.i = sext i1 %i.ao to i64
  %i.ar = zext i1 %i.ao to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 1
  store i16 %i.at, ptr %1, align 1
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.neg67.i ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = shl nuw nsw i32 %i.am, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  store i16 %i.az, ptr %i.av, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bb = shl nsw i32 %i.an, 1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bg = mul nuw nsw i64 %i.c, 109951163
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32          ; 3 uses
  %.neg.i52 = mul nsw i32 %i.bi, -10000
  %i.bj = add nsw i32 %.neg.i52, %i.e             ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bi, 5243
  %i.bl = lshr i32 %i.bk, 19                      ; 2 uses
  %i.bm = mul i32 %i.bj, 5243
  %i.bn = lshr i32 %i.bm, 19                      ; 2 uses
  %.neg62.i = mul nsw i32 %i.bl, -100
  %i.bo = add nsw i32 %.neg62.i, %i.bi
  %.neg63.i = mul i32 %i.bn, 2147483548
  %i.bp = add i32 %.neg63.i, %i.bj
  %i.bq = icmp samesign ult i64 %i.c, 10000000    ; 2 uses
  %i.br = shl nuw nsw i32 %i.bl, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.bs
  %.neg64.i = sext i1 %i.bq to i64
  %i.bu = zext i1 %i.bq to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 1
  store i16 %i.bw, ptr %1, align 1
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %.neg64.i ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = shl nsw i32 %i.bo, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  store i16 %i.cc, ptr %i.by, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ce = shl nuw nsw i32 %i.bn, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2
  store i16 %i.ch, ptr %i.cd, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %i.cj = shl i32 %i.bp, 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  store i16 %i.cm, ptr %i.ci, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %.sink.split

bb.k:                                             ; preds = %bb.c
  %i.co = icmp ult i64 %i.c, 10000000000000000
  %i.cp = udiv i64 %i.c, 100000000                ; 6 uses
  %.neg28.i50 = mul i64 %i.cp, 4194967296
  %i.cq = add i64 %.neg28.i50, %i.c               ; 3 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.co, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cs = trunc nuw nsw i64 %i.cp to i32          ; 4 uses
  %i.ct = icmp samesign ult i64 %i.c, 10000000000
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp samesign ult i64 %i.c, 1000000000  ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cp, 1
  %i.cw = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.cv
  %.neg70.i64 = sext i1 %i.cu to i64
  %i.cx = zext i1 %i.cu to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 1
  store i16 %i.cz, ptr %1, align 1
  %i.da = getelementptr inbounds i8, ptr %1, i64 %.neg70.i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  br label %write_u32_len_1_to_8.exit65

bb.n:                                             ; preds = %bb.l
  %i.dc = icmp samesign ult i64 %i.c, 1000000000000
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = mul nuw nsw i32 %i.cs, 5243
  %i.de = lshr i32 %i.dd, 19                      ; 2 uses
  %.neg68.i62 = mul nsw i32 %i.de, -100
  %i.df = add nsw i32 %.neg68.i62, %i.cs
  %i.dg = icmp samesign ult i64 %i.c, 100000000000 ; 2 uses
  %i.dh = shl nuw nsw i32 %i.de, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.di
  %.neg69.i63 = sext i1 %i.dg to i64
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 1
  store i16 %i.dm, ptr %1, align 1
  %i.dn = getelementptr inbounds i8, ptr %1, i64 %.neg69.i63 ; 2 uses
end_hunk_2
begin_hunk_3_@read_str_id:bb.a
  switch i32 %i.ph, label %bb.ce [
    i32 8205, label %bb.bz
    i32 0, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by, %bb.bx
  %i.pi = and i32 %.sroa.0.0.copyload.i77.us, -1061109512
  %i.pj = icmp ne i32 %i.pi, -2139062032
  %i.pk = and i32 %.sroa.0.0.copyload.i77.us, 12295
  %.not54.us = icmp eq i32 %i.pk, 0
  %or.cond62.us = or i1 %i.pj, %.not54.us
  br i1 %or.cond62.us, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pl = and i32 %.sroa.0.0.copyload.i77.us, 4
  %i.pm = icmp eq i32 %i.pl, 0
  %i.pn = and i32 %.sroa.0.0.copyload.i77.us, 12291
  %i.po = icmp eq i32 %i.pn, 0
  %or.cond64.us = or i1 %i.pm, %i.po
  br i1 %or.cond64.us, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 %.sroa.0.0.copyload.i77.us, ptr %.4311.us, align 1
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  br i1 %.not274, label %bb.cd, label %.split318.us, !prof !8

bb.cd:                                            ; preds = %bb.cc
  store i8 %i.pe, ptr %.4311.us, align 1, !tbaa !81
  br label %bb.cf

bb.ce:                                            ; preds = %bb.by
  store i32 %.sroa.0.0.copyload.i77.us, ptr %.4311.us, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.bw
  %.sink404 = phi i64 [ 3, %bb.ce ], [ 1, %bb.cd ], [ 4, %bb.cb ], [ 2, %bb.bw ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.4311.us, i64 %.sink404 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.8310.us, i64 %.sink404 ; 3 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !81  ; 2 uses
  %i.ps = icmp slt i8 %i.pr, 0
  br i1 %i.ps, label %ext_space_len.exit.us, label %._crit_edge313, !llvm.loop !461

.lr.ph312.split:                                  ; preds = %.lr.ph312, %bb.ct
  %i.pt = phi i8 [ %i.qy, %bb.ct ], [ %i.oz, %.lr.ph312 ]
  %.4311 = phi ptr [ %i.qw, %bb.ct ], [ %.3, %.lr.ph312 ] ; 7 uses
  %.8310 = phi ptr [ %i.qx, %bb.ct ], [ %.7, %.lr.ph312 ] ; 7 uses
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !81
  %i.px = and i8 %i.pw, 8
  %.not268 = icmp eq i8 %i.px, 0
  br i1 %.not268, label %ext_space_len.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph312.split
  %.sroa.0.0.copyload.i76 = load i16, ptr %.8310, align 1 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i76, label %bb.cj [
    i16 -24382, label %.thread228
    i16 -32542, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.py = getelementptr inbounds nuw i8, ptr %.8310, i64 2
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !81  ; 2 uses
  %or.cond.i = icmp slt i8 %i.pz, -117
  br i1 %or.cond.i, label %.thread228, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.pz, label %ext_space_len.exit [
    i8 -88, label %.thread228
    i8 -87, label %.thread228
    i8 -81, label %.thread228
  ]

bb.cj:                                            ; preds = %bb.cg
  %i.qa = getelementptr inbounds nuw i8, ptr %.8310, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !81
  %.sroa.4.0.insert.ext.i.i = zext i8 %i.qb to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.0.0.copyload.i76 to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  switch i32 %.sroa.0.0.insert.insert.i.i, label %ext_space_len.exit [
    i32 8428257, label %.thread228
    i32 10453474, label %.thread228
    i32 8421603, label %.thread228
    i32 12565487, label %.thread228
  ]

.thread228:                                       ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cg, %bb.ci, %bb.ci, %bb.ci, %bb.ch
  %i.qc = ptrtoint ptr %.4311 to i64
  %i.qd = ptrtoint ptr %i.a to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = shl i64 %i.qe, 8
  %i.qg = or disjoint i64 %i.qf, 5
  store i64 %i.qg, ptr %3, align 8, !tbaa !79
  %i.qh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.qh, align 8, !tbaa !81
  store ptr %.4311, ptr %2, align 8, !tbaa !92
  br label %bb.cu

ext_space_len.exit:                               ; preds = %bb.cj, %bb.ci, %.lr.ph312.split
  %.sroa.0.0.copyload.i77 = load i32, ptr %.8310, align 1 ; 12 uses
  %i.qi = and i32 %.sroa.0.0.copyload.i77, 49376
  %i.qj = icmp ne i32 %i.qi, 32960
  %i.qk = and i32 %.sroa.0.0.copyload.i77, 30
  %.not53 = icmp eq i32 %i.qk, 0
  %or.cond61 = or i1 %i.qj, %.not53
  %i.ql = trunc i32 %.sroa.0.0.copyload.i77 to i8
  br i1 %or.cond61, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %ext_space_len.exit
  %.sroa.0.0.extract.trunc6 = trunc i32 %.sroa.0.0.copyload.i77 to i16
  store i16 %.sroa.0.0.extract.trunc6, ptr %.4311, align 1
  br label %bb.ct

bb.cl:                                            ; preds = %ext_space_len.exit
  %i.qm = and i32 %.sroa.0.0.copyload.i77, 12632304
  %i.qn = icmp eq i32 %i.qm, 8421600
  br i1 %i.qn, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.qo = and i32 %.sroa.0.0.copyload.i77, 8207
  switch i32 %i.qo, label %bb.cn [
    i32 8205, label %bb.co
    i32 0, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  store i32 %.sroa.0.0.copyload.i77, ptr %.4311, align 1
  br label %bb.ct

bb.co:                                            ; preds = %bb.cm, %bb.cm, %bb.cl
  %i.qp = and i32 %.sroa.0.0.copyload.i77, -1061109512
  %i.qq = icmp ne i32 %i.qp, -2139062032
  %i.qr = and i32 %.sroa.0.0.copyload.i77, 12295
  %.not54 = icmp eq i32 %i.qr, 0
  %or.cond62 = or i1 %i.qq, %.not54
  br i1 %or.cond62, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qs = and i32 %.sroa.0.0.copyload.i77, 4
  %i.qt = icmp eq i32 %i.qs, 0
  %i.qu = and i32 %.sroa.0.0.copyload.i77, 12291
  %i.qv = icmp eq i32 %i.qu, 0
  %or.cond64 = or i1 %i.qt, %i.qv
  br i1 %or.cond64, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 %.sroa.0.0.copyload.i77, ptr %.4311, align 1
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not274, label %bb.cs, label %.split318.us, !prof !8

.split318.us:                                     ; preds = %bb.cr, %bb.cc
  %.us-phi319 = phi ptr [ %.8310.us, %bb.cc ], [ %.8310, %bb.cr ]
  store ptr @.str.76, ptr %4, align 8, !tbaa !92
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  store i8 %i.ql, ptr %.4311, align 1, !tbaa !81
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cn, %bb.cs, %bb.cq, %bb.ck
  %.sink406 = phi i64 [ 3, %bb.cn ], [ 1, %bb.cs ], [ 4, %bb.cq ], [ 2, %bb.ck ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.4311, i64 %.sink406 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.8310, i64 %.sink406 ; 3 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !81  ; 3 uses
  %i.qz = icmp slt i8 %i.qy, 0
  br i1 %i.qz, label %.lr.ph312.split, label %._crit_edge313, !llvm.loop !461

._crit_edge313:                                   ; preds = %bb.ct, %bb.cf, %byte_move_forward.exit115
  %.8.lcssa = phi ptr [ %.7, %byte_move_forward.exit115 ], [ %i.pq, %bb.cf ], [ %i.qx, %bb.ct ] ; 4 uses
  %.4.lcssa = phi ptr [ %.3, %byte_move_forward.exit115 ], [ %i.pp, %bb.cf ], [ %i.qw, %bb.ct ] ; 3 uses
  %.lcssa = phi i8 [ %i.oz, %byte_move_forward.exit115 ], [ %i.pr, %bb.cf ], [ %i.qy, %bb.ct ]
  %i.ra = zext nneg i8 %.lcssa to i64
  %i.rb = getelementptr inbounds nuw i8, ptr @char_table2, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !81
  %i.rd = and i8 %i.rc, 16
  %.not266 = icmp eq i8 %i.rd, 0
  br i1 %.not266, label %.loopexit, label %read_uni_esc.exit.backedge

bb.cu:                                            ; preds = %.split318.us, %.thread228, %bb.aw, %bb.av, %bb.au, %.split.us, %.thread, %bb.y
  %.us-phi319.sink = phi ptr [ %.us-phi319, %.split318.us ], [ %.8310, %.thread228 ], [ %.4218.lcssa, %bb.aw ], [ %.4218.lcssa, %bb.av ], [ %.4218324, %bb.au ], [ %.us-phi, %.split.us ], [ %.2216306, %.thread ], [ %.1215, %bb.y ]
  %.0 = phi i1 [ false, %.split318.us ], [ true, %.thread228 ], [ false, %bb.aw ], [ true, %bb.av ], [ false, %bb.au ], [ false, %.split.us ], [ true, %.thread ], [ true, %bb.y ]
  store ptr %.us-phi319.sink, ptr %0, align 8, !tbaa !92
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @read_num_raw(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 16 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !81    ; 4 uses
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  %i.d = zext i1 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !81    ; 4 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !prof !116

.lr.ph:                                           ; preds = %bb.a
  %i.i = and i32 %2, 512
  %.not132 = icmp ne i32 %i.i, 0                  ; 2 uses
  br i1 %.not132, label %.lr.ph.split.us.preheader, label %.loopexit117, !prof !8

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %5 = icmp eq i8 %i.f, 43
  %i.k = icmp ne i8 %i.b, 45
  %or.cond.us.peel = and i1 %i.k, %5
  br i1 %or.cond.us.peel, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us.preheader
  %i.l = load i8, ptr %i.j, align 1, !tbaa !81    ; 3 uses
  %i.m = add i8 %i.l, -48
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %._crit_edge, label %.split.us, !prof !117

.split.us:                                        ; preds = %bb.b, %.lr.ph.split.us.preheader
  %.lcssa158 = phi i8 [ %i.f, %.lr.ph.split.us.preheader ], [ %i.l, %bb.b ]
  %.0126.us.lcssa = phi ptr [ %i.e, %.lr.ph.split.us.preheader ], [ %i.j, %bb.b ] ; 4 uses
  %i.o = icmp eq i8 %.lcssa158, 46
  br i1 %i.o, label %bb.c, label %.loopexit117

bb.c:                                             ; preds = %.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.0126.us.lcssa, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !81
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %.thread141, label %.loopexit117

.loopexit117:                                     ; preds = %.lr.ph, %.split.us, %bb.c
  %.0123 = phi ptr [ %.0126.us.lcssa, %bb.c ], [ %.0126.us.lcssa, %.split.us ], [ %i.e, %.lr.ph ]
  %i.t = and i32 %2, 16
  %.not105 = icmp eq i32 %i.t, 0
  br i1 %.not105, label %read_inf_or_nan.exit.thread, label %bb.d, !prof !25

bb.d:                                             ; preds = %.loopexit117
  %i.u = icmp ne i8 %i.b, 43
  %brmerge = or i1 %.not132, %i.u
  br i1 %brmerge, label %bb.e, label %read_inf_or_nan.exit.thread, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.v = zext i8 %i.b to i64
  %i.w = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !81    ; 3 uses
  %i.y = and i8 %i.x, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z ; 9 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !81
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 73
  br i1 %i.ad, label %bb.f, label %._crit_edge139

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81
  %i.ag = and i8 %i.af, -33
  %i.ah = icmp eq i8 %i.ag, 78
  br i1 %i.ah, label %bb.g, label %._crit_edge139

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !81
  %i.ak = and i8 %i.aj, -33
  %i.al = icmp eq i8 %i.ak, 70
  br i1 %i.al, label %bb.h, label %._crit_edge139

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 3 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 73
  br i1 %i.ap, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !81
  %i.as = and i8 %i.ar, -33
  %i.at = icmp eq i8 %i.as, 78
  br i1 %i.at, label %bb.j, label %._crit_edge139

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !81
  %i.aw = and i8 %i.av, -33
  %i.ax = icmp eq i8 %i.aw, 73
  br i1 %i.ax, label %bb.k, label %._crit_edge139

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !81
  %i.ba = and i8 %i.az, -33
  %i.bb = icmp eq i8 %i.ba, 84
  br i1 %i.bb, label %bb.l, label %._crit_edge139

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !81
  %i.be = and i8 %i.bd, -33
  %i.bf = icmp eq i8 %i.be, 89
  br i1 %i.bf, label %bb.m, label %._crit_edge139

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.0.i99 = phi ptr [ %i.bg, %bb.m ], [ %i.am, %bb.h ] ; 3 uses
  store ptr %.0.i99, ptr %0, align 8, !tbaa !92
  %i.bh = and i32 %2, 32
  %.not106 = icmp eq i32 %i.bh, 0
  br i1 %.not106, label %bb.p, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %1, align 8, !tbaa !92
  store i8 0, ptr %i.bi, align 1, !tbaa !81
  store ptr %.0.i99, ptr %1, align 8, !tbaa !92
  %i.bj = ptrtoint ptr %.0.i99 to i64
  %i.bk = ptrtoint ptr %i.a to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = shl i64 %i.bl, 8
  %i.bn = or disjoint i64 %i.bm, 1
  store i64 %i.bn, ptr %3, align 8, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.bo, align 8, !tbaa !81
  br label %read_inf_or_nan.exit

bb.p:                                             ; preds = %bb.n
  store i64 20, ptr %3, align 8, !tbaa !79
  %i.bp = select i1 %i.c, i64 -4503599627370496, i64 9218868437227405312
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !81
  br label %read_inf_or_nan.exit

._crit_edge139:                                   ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %i.br = trunc i8 %i.x to i1
  %.mask = and i8 %i.x, 1
  %i.bs = zext nneg i8 %.mask to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !81
  %i.bv = and i8 %i.bu, -33
  %i.bw = icmp eq i8 %i.bv, 78
  br i1 %i.bw, label %bb.q, label %read_inf_or_nan.exit.thread

bb.q:                                             ; preds = %._crit_edge139
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = and i8 %i.by, -33
  %i.ca = icmp eq i8 %i.bz, 65
  br i1 %i.ca, label %bb.r, label %read_inf_or_nan.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !81
  %i.cd = and i8 %i.cc, -33
  %i.ce = icmp eq i8 %i.cd, 78
  br i1 %i.ce, label %bb.s, label %read_inf_or_nan.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 3 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !92
  %i.cg = and i32 %2, 32
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.u, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %1, align 8, !tbaa !92
  store i8 0, ptr %i.ch, align 1, !tbaa !81
  store ptr %i.cf, ptr %1, align 8, !tbaa !92
  %i.ci = select i1 %i.br, i64 1025, i64 769
  store i64 %i.ci, ptr %3, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.cj, align 8, !tbaa !81
  br label %read_inf_or_nan.exit

bb.u:                                             ; preds = %bb.s
  store i64 20, ptr %3, align 8, !tbaa !79
  %i.ck = select i1 %i.c, i64 -2251799813685248, i64 9221120237041090560
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !81
  br label %read_inf_or_nan.exit

read_inf_or_nan.exit.thread:                      ; preds = %bb.d, %._crit_edge139, %bb.q, %bb.r, %.loopexit117
  store ptr @.str.89, ptr %4, align 8, !tbaa !92
  store ptr %.0123, ptr %0, align 8, !tbaa !92
  br label %read_inf_or_nan.exit

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ] ; 4 uses
  %.lcssa118 = phi i8 [ %i.f, %bb.a ], [ %i.l, %bb.b ]
  %i.cm = icmp eq i8 %.lcssa118, 48
  br i1 %i.cm, label %bb.v, label %.preheader116

bb.v:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81  ; 4 uses
  %i.cp = add i8 %i.co, -48
  %i.cq = icmp ult i8 %i.cp, 10
  br i1 %i.cq, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  store ptr @.str.91, ptr %4, align 8, !tbaa !92
  store ptr %.0.lcssa, ptr %0, align 8, !tbaa !92
  br label %read_inf_or_nan.exit

bb.x:                                             ; preds = %bb.v
  %i.cr = zext i8 %i.co to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !81
  %i.cu = and i8 %i.ct, 24
end_hunk_3
