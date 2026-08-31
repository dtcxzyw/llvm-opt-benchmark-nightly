Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tidstore?download=true
inline.NumInlined: 228
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 24
begin_hunk_0_@TidStoreIsMember:bb.a
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp ult i64 %i.bt, %i.e
  br i1 %i.bu, label %shared_ts_find.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.val31, i64 24
  %i.bw = load i32, ptr %i.bv, align 8            ; 2 uses
  %.sroa.0.011.i = load ptr, ptr %.val31, align 8
  %i.bx = icmp sgt i32 %i.bw, -1
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = zext nneg i32 %i.bw to i64
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %local_ts_node_search.exit.i, %bb.o
  %indvars.iv.i33 = phi i64 [ %i.by, %bb.o ], [ %indvars.iv.next.i36, %local_ts_node_search.exit.i ] ; 3 uses
  %.sroa.0.013.i = phi ptr [ %.sroa.0.011.i, %bb.o ], [ %.sroa.0.0.i37, %local_ts_node_search.exit.i ] ; 12 uses
  %i.bz = lshr i64 %i.e, %indvars.iv.i33          ; 5 uses
  %i.ca = trunc i64 %i.bz to i8                   ; 2 uses
  %i.cb = load i8, ptr %.sroa.0.013.i, align 1
  switch i8 %i.cb, label %bb.x [
    i8 0, label %.preheader.i.i44
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.v
  ]

.preheader.i.i44:                                 ; preds = %.lr.ph.i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 2
  %i.cd = load i8, ptr %i.cc, align 2             ; 2 uses
  %.not27.not.i.i45 = icmp eq i8 %i.cd, 0
  br i1 %.not27.not.i.i45, label %shared_ts_find.exit.thread, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %.preheader.i.i44
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 3
  %wide.trip.count.i.i47 = zext i8 %i.cd to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i48, 1 ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, %wide.trip.count.i.i47
  br i1 %exitcond.not.i.i50, label %shared_ts_find.exit.thread, label %bb.q, !llvm.loop !14

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i46
  %indvars.iv.i.i48 = phi i64 [ 0, %.lr.ph.i.i46 ], [ %indvars.iv.next.i.i49, %bb.p ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.i.i48
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, %i.ca
  br i1 %i.ch, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i48
  br label %local_ts_node_search.exit.i

bb.s:                                             ; preds = %.lr.ph.i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 2
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 3
  %.val1416.i.i.i40 = load <16 x i8>, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 19
  %.val17.i.i.i41 = load <16 x i8>, ptr %i.co, align 1
  %i.cp = shufflevector <16 x i8> %i.cm, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.cq = shufflevector <16 x i8> %.val1416.i.i.i40, <16 x i8> %.val17.i.i.i41, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cr = icmp eq <32 x i8> %i.cp, %i.cq
  %i.cs = bitcast <32 x i1> %i.cr to i32
  %i.ct = zext nneg i8 %i.cl to i64
  %notmask.i.i.i42 = shl nsw i64 -1, %i.ct
  %i.cu = trunc i64 %notmask.i.i.i42 to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %i.cs, %i.cv                    ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 40
  %i.cy = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.cw, i1 true)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  br i1 %.not.i.i.i43, label %shared_ts_find.exit.thread, label %local_ts_node_search.exit.i

bb.t:                                             ; preds = %.lr.ph.i32
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 16
  %i.dc = and i64 %i.bz, 255
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1             ; 2 uses
  %i.df = icmp eq i8 %i.de, -1
  br i1 %i.df, label %shared_ts_find.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 272
  %i.dh = zext i8 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  br label %local_ts_node_search.exit.i

bb.v:                                             ; preds = %.lr.ph.i32
  %i.dj = lshr i64 %i.bz, 6
  %i.dk = and i64 %i.dj, 3
  %i.dl = and i64 %i.bz, 63
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = shl nuw i64 1, %i.dl
  %i.dq = and i64 %i.do, %i.dp
  %.not26.i.i34 = icmp eq i64 %i.dq, 0
  br i1 %.not26.i.i34, label %shared_ts_find.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 40
  %i.ds = and i64 %i.bz, 255
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  br label %local_ts_node_search.exit.i

bb.x:                                             ; preds = %.lr.ph.i32
  unreachable

local_ts_node_search.exit.i:                      ; preds = %bb.w, %bb.u, %bb.s, %bb.r
  %.4.i.i35 = phi ptr [ %i.dt, %bb.w ], [ %i.da, %bb.s ], [ %i.cj, %bb.r ], [ %i.di, %bb.u ] ; 2 uses
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i33, -8
  %.sroa.0.0.i37 = load ptr, ptr %.4.i.i35, align 8 ; 3 uses
  %i.du = icmp sgt i64 %indvars.iv.i33, 7
  br i1 %i.du, label %.lr.ph.i32, label %._crit_edge.i38, !llvm.loop !20

._crit_edge.i38:                                  ; preds = %local_ts_node_search.exit.i
  %i.dv = ptrtoint ptr %.sroa.0.0.i37 to i64
  %i.dw = trunc i64 %i.dv to i1
  br i1 %i.dw, label %shared_ts_find.exit.thread53, label %shared_ts_find.exit

shared_ts_find.exit:                              ; preds = %._crit_edge.i38, %bb.m
  %.023 = phi ptr [ %.sroa.0.0.i37, %._crit_edge.i38 ], [ %i.br, %bb.m ] ; 2 uses
  %i.dx = icmp eq ptr %.023, null
  br i1 %i.dx, label %shared_ts_find.exit.thread, label %shared_ts_find.exit.thread53

shared_ts_find.exit.thread53:                     ; preds = %._crit_edge.i38, %._crit_edge.i, %shared_ts_find.exit
  %.02355 = phi ptr [ %.023, %shared_ts_find.exit ], [ %.4.i.i, %._crit_edge.i ], [ %.4.i.i35, %._crit_edge.i38 ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02355, i64 1
  %i.dz = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %shared_ts_find.exit.thread53
  %i.eb = getelementptr inbounds nuw i8, ptr %.02355, i64 2
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = icmp eq i16 %i.ec, %.val30
  br i1 %i.ed, label %shared_ts_find.exit.thread, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.02355, i64 4
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = icmp eq i16 %i.ef, %.val30
  br i1 %i.eg, label %shared_ts_find.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %.02355, i64 6
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = icmp eq i16 %i.ei, %.val30
  br label %shared_ts_find.exit.thread

bb.aa:                                            ; preds = %shared_ts_find.exit.thread53
  %i.ek = sext i8 %i.dz to i32
  %i.el = zext i16 %.val30 to i32                 ; 2 uses
  %i.em = lshr i32 %i.el, 6                       ; 2 uses
  %.not28 = icmp slt i32 %i.em, %i.ek
  br i1 %.not28, label %bb.ab, label %shared_ts_find.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.en = and i32 %i.el, 63
  %i.eo = getelementptr inbounds nuw i8, ptr %.02355, i64 8
  %i.ep = zext nneg i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = zext nneg i32 %i.en to i64
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.er, %i.et
  %i.ev = icmp ne i64 %i.eu, 0
  br label %shared_ts_find.exit.thread

shared_ts_find.exit.thread:                       ; preds = %.preheader.i.i, %bb.h, %bb.j, %bb.g, %bb.d, %bb.s, %.preheader.i.i44, %bb.t, %bb.v, %bb.p, %bb.z, %.preheader, %bb.y, %bb.n, %bb.b, %bb.aa, %shared_ts_find.exit, %bb.ab
  %.1 = phi i1 [ %i.ev, %bb.ab ], [ false, %shared_ts_find.exit ], [ false, %bb.aa ], [ true, %bb.y ], [ %i.ej, %bb.z ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.s ], [ true, %.preheader ], [ false, %bb.v ], [ false, %bb.t ], [ false, %.preheader.i.i44 ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.h ], [ false, %.preheader.i.i ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @TidStoreBeginIterate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc0(i64 noundef 32) #14 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @palloc0(i64 noundef 216) #14 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = tail call ptr @dsa_get_address(ptr noundef %.val.i, i64 noundef %i.i) #14
  %1 = ptrtoint ptr %i.k to i64
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sdiv i32 %i.o, 8                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 204 ; 2 uses
  store i32 %i.p, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = sext i32 %i.p to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  store i64 %i.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = load i32, ptr %i.r, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %i.y, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = tail call ptr @palloc0(i64 noundef 152) #14 ; 5 uses
  store ptr %i.e, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %2 = ptrtoint ptr %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = sdiv i32 %i.ad, 8                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 140 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ai
  store i64 %2, ptr %i.aj, align 8
  %i.ak = load i32, ptr %i.ag, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 0, ptr %i.an, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.z, %bb.c ], [ %i.f, %bb.b ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sink, ptr %i.ao, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @TidStoreIterateNext(ptr nofree noundef captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 10 uses
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 204 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4              ; 2 uses
  %i.i = load i32, ptr %i.g, align 8              ; 2 uses
  %.not45.i = icmp sgt i32 %i.h, %i.i
  br i1 %.not45.i, label %shared_ts_iterate_next.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.t, %.lr.ph.i
  %i.l = phi i32 [ %i.i, %.lr.ph.i ], [ %i.cy, %bb.t ]
  %i.m = phi i32 [ %i.h, %.lr.ph.i ], [ %i.cz, %bb.t ] ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.n ; 5 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8 ; 11 uses
  %i.p = load i8, ptr %.sroa.3.0.copyload.i.i, align 1
  switch i8 %i.p, label %shared_ts_node_iterate_next.exit.i [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 3, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 2
  %i.u = zext i8 %i.t to i32
  %.not74.i.i = icmp slt i32 %i.r, %i.u
  br i1 %.not74.i.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 8
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 3
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = add nsw i32 %i.r, 1
  store i32 %i.ab, ptr %i.q, align 8
  br label %shared_ts_node_iterate_next.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i32
  %.not.i.i = icmp slt i32 %i.ad, %i.ag
  br i1 %.not.i.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 40
  %i.ai = sext i32 %i.ad to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 3
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add nsw i32 %i.ad, 1
  store i32 %i.an, ptr %i.ac, align 8
  br label %shared_ts_node_iterate_next.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 256
  br i1 %i.aq, label %.lr.ph90.i.i, label %.thread.i

.lr.ph90.i.i:                                     ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph90.i.i
  %.05689.i.i = phi i32 [ %i.ap, %.lr.ph90.i.i ], [ %i.aw, %bb.j ] ; 4 uses
  %i.as = and i32 %.05689.i.i, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not83.i.i = icmp eq i8 %i.av, -1
  br i1 %.not83.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %.05689.i.i, 1              ; 2 uses
  %exitcond94.not.i.i = icmp eq i32 %i.aw, 256
  br i1 %exitcond94.not.i.i, label %.thread.i, label %bb.i, !llvm.loop !21

bb.k:                                             ; preds = %bb.i
  %i.ax = trunc i32 %.05689.i.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 272
  %i.az = zext i8 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = add nsw i32 %.05689.i.i, 1
  store i32 %i.bb, ptr %i.ao, align 8
  br label %shared_ts_node_iterate_next.exit.i

bb.l:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp slt i32 %i.bd, 256
  br i1 %i.be, label %.lr.ph.i.i, label %.thread.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.088.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %i.bp, %bb.n ] ; 6 uses
  %i.bg = lshr i32 %.088.i.i, 6
  %i.bh = and i32 %i.bg, 3
  %i.bi = and i32 %.088.i.i, 63
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = zext nneg i32 %i.bi to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bn, %i.bl
  %.not82.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not82.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = add nsw i32 %.088.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bp, 256
  br i1 %exitcond.not.i.i, label %.thread.i, label %bb.m, !llvm.loop !22

bb.o:                                             ; preds = %bb.m
  %i.bq = trunc i32 %.088.i.i to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i, i64 40
  %.mask.i.i = and i32 %.088.i.i, 255
  %i.bs = zext nneg i32 %.mask.i.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = add nsw i32 %.088.i.i, 1
  store i32 %i.bu, ptr %i.bc, align 8
  br label %shared_ts_node_iterate_next.exit.i

shared_ts_node_iterate_next.exit.i:               ; preds = %bb.o, %bb.k, %bb.g, %bb.e, %bb.c
  %.466.i.i = phi i8 [ 0, %bb.c ], [ %i.aa, %bb.e ], [ %i.am, %bb.g ], [ %i.ax, %bb.k ], [ %i.bq, %bb.o ]
  %.4.i.i = phi ptr [ null, %bb.c ], [ %i.x, %bb.e ], [ %i.aj, %bb.g ], [ %i.ba, %bb.k ], [ %i.bt, %bb.o ] ; 4 uses
  %i.bv = shl i32 %i.m, 3
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = shl i64 255, %i.bw
  %i.by = xor i64 %i.bx, -1
  %i.bz = load i64, ptr %i.k, align 8
  %i.ca = and i64 %i.bz, %i.by
  %i.cb = zext i8 %.466.i.i to i64
  %i.cc = shl i64 %i.cb, %i.bw
  %i.cd = or i64 %i.ca, %i.cc                     ; 3 uses
  store i64 %i.cd, ptr %i.k, align 8
  %i.ce = icmp ne i32 %i.m, 0
  %i.cf = icmp eq ptr %.4.i.i, null               ; 2 uses
  %or.cond.not.i = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %shared_ts_node_iterate_next.exit.i
  %i.cg = load i64, ptr %.4.i.i, align 8          ; 2 uses
  %i.ch = trunc i64 %i.cg to i1
  br i1 %i.ch, label %shared_ts_iterate_next.exit.thread33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.e, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val28.i = load ptr, ptr %i.cj, align 8
  %i.ck = tail call ptr @dsa_get_address(ptr noundef %.val28.i, i64 noundef %i.cg) #14
  br label %shared_ts_iterate_next.exit

bb.r:                                             ; preds = %shared_ts_node_iterate_next.exit.i
  br i1 %i.cf, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load i64, ptr %.4.i.i, align 8          ; 2 uses
end_hunk_0
