Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaStr?download=true
inline.NumInlined: 638
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Str_ManNormalize_rec:bb.a
  store i32 %.0.lcssa48.i.i, ptr %i.mm, align 4, !tbaa !44
  br label %Gia_ManSuperCollect.exit

bb.ap:                                            ; preds = %.critedge.i.i
  %.not.i.i213 = icmp eq i32 %.1.i.i, 0
  br i1 %.not.i.i213, label %Gia_ManSuperCollect.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mn = load i32, ptr %.val31.i.i, align 4, !tbaa !44
  %i.mo = xor i32 %i.mn, 1
  store i32 %i.mo, ptr %.val31.i.i, align 4, !tbaa !44
  br label %Gia_ManSuperCollect.exit

bb.ar:                                            ; preds = %Gia_ObjIsXor.exit.i
  %i.mp = icmp samesign ugt i32 %i.ky, %i.lb
  br i1 %i.mp, label %bb.as, label %Gia_ManSuperCollect.exit

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i.i, label %Gia_ObjIsAndReal.exit.thread27.i, label %Gia_ObjIsAndReal.exit.i

Gia_ObjIsAndReal.exit.i:                          ; preds = %bb.as
  %i.mq = ptrtoint ptr %2 to i64
  %i.mr = ptrtoint ptr %.val195 to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = sdiv exact i64 %i.ms, 12
  %sext.i.i.i = shl i64 %i.mt, 32
  %i.mu = ashr exact i64 %sext.i.i.i, 30
  %i.mv = getelementptr inbounds i8, ptr %.val196, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !44
  %.not29.i = icmp eq i32 %i.mw, 0
  br i1 %.not29.i, label %Gia_ObjIsAndReal.exit.thread27.i, label %Gia_ManSuperCollect.exit

Gia_ObjIsAndReal.exit.thread27.i:                 ; preds = %Gia_ObjIsAndReal.exit.i, %bb.as
  %i.mx = sub nsw i64 0, %i.kv
  %i.my = getelementptr inbounds [12 x i8], ptr %2, i64 %i.mx
  %i.mz = lshr i64 %.val.i210, 29
  %i.na = and i64 %i.mz, 1
  %i.nb = ptrtoint ptr %i.my to i64
  %i.nc = xor i64 %i.na, %i.nb
  %i.nd = inttoptr i64 %i.nc to ptr
  tail call fastcc void @Gia_ManSuperCollectAnd_rec(ptr noundef nonnull %1, ptr noundef %i.nd)
  %i.ne = load i64, ptr %2, align 4               ; 2 uses
  %i.nf = lshr i64 %i.ne, 32
  %i.ng = and i64 %i.nf, 536870911
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds [12 x i8], ptr %2, i64 %i.nh
  %i.nj = lshr i64 %i.ne, 61
  %i.nk = and i64 %i.nj, 1
  %i.nl = ptrtoint ptr %i.ni to i64
  %i.nm = xor i64 %i.nk, %i.nl
  %i.nn = inttoptr i64 %i.nm to ptr
  tail call fastcc void @Gia_ManSuperCollectAnd_rec(ptr noundef nonnull %1, ptr noundef %i.nn)
  %i.no = load ptr, ptr %i.km, align 8, !tbaa !70 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 4
  %.val19.i = load i32, ptr %i.np, align 4, !tbaa !48
  %i.nq = getelementptr i8, ptr %i.no, i64 8
  %.val20.i = load ptr, ptr %i.nq, align 8, !tbaa !42
  %i.nr = sext i32 %.val19.i to i64
  tail call void @qsort(ptr noundef %.val20.i, i64 noundef %i.nr, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #29
  %i.ns = load ptr, ptr %i.km, align 8, !tbaa !70
  tail call fastcc void @Gia_ManSimplifyAnd(ptr noundef %i.ns)
  br label %Gia_ManSuperCollect.exit

Gia_ManSuperCollect.exit:                         ; preds = %bb.ad, %Vec_IntPush.exit.i.i, %bb.ap, %bb.aq, %bb.ar, %Gia_ObjIsAndReal.exit.i, %Gia_ObjIsAndReal.exit.thread27.i
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 4 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !71 ; 5 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 4      ; 4 uses
  %.val166 = load i32, ptr %i.nv, align 4, !tbaa !48 ; 6 uses
  %i.nw = load ptr, ptr %i.km, align 8, !tbaa !70 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 4      ; 2 uses
  %.val7.i214 = load i32, ptr %i.nx, align 4, !tbaa !48
  %i.ny = icmp sgt i32 %.val7.i214, 0
  br i1 %i.ny, label %.lr.ph.i215, label %.critedge12

.lr.ph.i215:                                      ; preds = %Gia_ManSuperCollect.exit
  %i.nz = getelementptr i8, ptr %i.nw, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 4 uses
  br label %bb.at

bb.at:                                            ; preds = %Vec_IntPush.exit.i220, %.lr.ph.i215
  %indvars.iv.i216 = phi i64 [ 0, %.lr.ph.i215 ], [ %indvars.iv.next.i221, %Vec_IntPush.exit.i220 ] ; 2 uses
  %.val6.i217 = load ptr, ptr %i.nz, align 8, !tbaa !42
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.val6.i217, i64 %indvars.iv.i216
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !44
  %i.od = load i32, ptr %i.nv, align 4, !tbaa !48 ; 7 uses
  %i.oe = load i32, ptr %i.nu, align 8, !tbaa !50
  %i.of = icmp eq i32 %i.od, %i.oe
  br i1 %i.of, label %bb.au, label %.Vec_IntPush.exit_crit_edge.i218

.Vec_IntPush.exit_crit_edge.i218:                 ; preds = %bb.at
  %.pre.i219 = load ptr, ptr %i.oa, align 8, !tbaa !42
  br label %Vec_IntPush.exit.i220

bb.au:                                            ; preds = %bb.at
  %i.og = icmp slt i32 %i.od, 16
  br i1 %i.og, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.oh = load ptr, ptr %i.oa, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i230 = icmp eq ptr %i.oh, null
  br i1 %.not9.i.i.i230, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.oh, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i227

bb.ax:                                            ; preds = %bb.av
  %i.oj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i227

bb.ay:                                            ; preds = %bb.au
  %i.ok = icmp samesign ult i32 %i.od, 1073741823
  %i.ol = shl nuw nsw i32 %i.od, 1
  %spec.select.i.i223 = select i1 %i.ok, i32 %i.ol, i32 2147483647 ; 4 uses
  %.not.i9.i.i224 = icmp samesign ult i32 %i.od, %spec.select.i.i223
  %.pre10.i225 = load ptr, ptr %i.oa, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i.i224, label %bb.az, label %Vec_IntPush.exit.i220

bb.az:                                            ; preds = %bb.ay
  %.not9.i10.i.i226 = icmp eq ptr %.pre10.i225, null
  %i.om = zext nneg i32 %spec.select.i.i223 to i64
  %i.on = shl nuw nsw i64 %i.om, 2                ; 2 uses
  br i1 %.not9.i10.i.i226, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oo = tail call ptr @realloc(ptr noundef nonnull %.pre10.i225, i64 noundef %i.on) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i227

bb.bb:                                            ; preds = %bb.az
  %i.op = tail call noalias ptr @malloc(i64 noundef %i.on) #31
  br label %Vec_IntGrow.exit11.sink.split.i.i227

Vec_IntGrow.exit11.sink.split.i.i227:             ; preds = %bb.bb, %bb.ba, %bb.ax, %bb.aw
  %i.oq = phi ptr [ %i.oj, %bb.ax ], [ %i.oi, %bb.aw ], [ %i.oo, %bb.ba ], [ %i.op, %bb.bb ] ; 2 uses
  %spec.select.sink.i.i228 = phi i32 [ 16, %bb.ax ], [ 16, %bb.aw ], [ %spec.select.i.i223, %bb.ba ], [ %spec.select.i.i223, %bb.bb ]
  store ptr %i.oq, ptr %i.oa, align 8, !tbaa !42
  store i32 %spec.select.sink.i.i228, ptr %i.nu, align 8, !tbaa !50
  %.pre11.i229 = load i32, ptr %i.nv, align 4, !tbaa !48
  br label %Vec_IntPush.exit.i220

Vec_IntPush.exit.i220:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i227, %bb.ay, %.Vec_IntPush.exit_crit_edge.i218
  %i.or = phi i32 [ %i.od, %.Vec_IntPush.exit_crit_edge.i218 ], [ %i.od, %bb.ay ], [ %.pre11.i229, %Vec_IntGrow.exit11.sink.split.i.i227 ] ; 2 uses
  %i.os = phi ptr [ %.pre.i219, %.Vec_IntPush.exit_crit_edge.i218 ], [ %.pre10.i225, %bb.ay ], [ %i.oq, %Vec_IntGrow.exit11.sink.split.i.i227 ]
  %i.ot = add nsw i32 %i.or, 1
  store i32 %i.ot, ptr %i.nv, align 4, !tbaa !48
  %i.ou = sext i32 %i.or to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ou
  store i32 %i.oc, ptr %i.ov, align 4, !tbaa !44
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i216, 1 ; 2 uses
  %.val.i222 = load i32, ptr %i.nx, align 4, !tbaa !48
  %i.ow = sext i32 %.val.i222 to i64
  %i.ox = icmp slt i64 %indvars.iv.next.i221, %i.ow
  br i1 %i.ox, label %bb.at, label %Vec_IntAppend.exit231, !llvm.loop !112

Vec_IntAppend.exit231:                            ; preds = %Vec_IntPush.exit.i220
  %.pre296 = load ptr, ptr %i.nt, align 8, !tbaa !71 ; 3 uses
  %.phi.trans.insert297.a = getelementptr i8, ptr %.pre296, i64 4
  %.val.pre = load i32, ptr %.phi.trans.insert297.a, align 4, !tbaa !48 ; 4 uses
  %i.oy = icmp slt i32 %.val166, %.val.pre
  br i1 %i.oy, label %.lr.ph265.preheader, label %.critedge12

.lr.ph265.preheader:                              ; preds = %Vec_IntAppend.exit231
  %i.oz = sext i32 %.val166 to i64
  %.phi.trans.insert299 = getelementptr i8, ptr %.pre296, i64 8
  %.val184.pre = load ptr, ptr %.phi.trans.insert299, align 8, !tbaa !42
  br label %.lr.ph265

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %.lr.ph265
  %.val184 = phi ptr [ %.val184.pre, %.lr.ph265.preheader ], [ %.val198, %.lr.ph265 ]
  %indvars.iv287 = phi i64 [ %i.oz, %.lr.ph265.preheader ], [ %indvars.iv.next288, %.lr.ph265 ] ; 3 uses
  %i.pa = getelementptr inbounds [4 x i8], ptr %.val184, i64 %indvars.iv287
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !44 ; 2 uses
  %i.pc = ashr i32 %i.pb, 1
  %.val174 = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [12 x i8], ptr %.val174, i64 %i.pd ; 2 uses
  tail call void @Str_ManNormalize_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.pe, ptr noundef %3, ptr noundef %4)
  %i.pf = load ptr, ptr %i.nt, align 8, !tbaa !71 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !57
  %i.pi = and i32 %i.pb, 1
  %i.pj = xor i32 %i.ph, %i.pi
  %i.pk = getelementptr i8, ptr %i.pf, i64 8
  %.val198 = load ptr, ptr %i.pk, align 8, !tbaa !42 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %.val198, i64 %indvars.iv287
  store i32 %i.pj, ptr %i.pl, align 4, !tbaa !44
  %indvars.iv.next288 = add nsw i64 %indvars.iv287, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next288 to i32
  %exitcond290.not = icmp eq i32 %.val.pre, %lftr.wideiv
  br i1 %exitcond290.not, label %.critedge12, label %.lr.ph265, !llvm.loop !118

.critedge12:                                      ; preds = %.lr.ph265, %Gia_ManSuperCollect.exit, %Vec_IntAppend.exit231
  %.val326 = phi i32 [ %.val166, %Gia_ManSuperCollect.exit ], [ %.val.pre, %Vec_IntAppend.exit231 ], [ %.val.pre, %.lr.ph265 ]
  %i.pm = phi ptr [ %i.nu, %Gia_ManSuperCollect.exit ], [ %.pre296, %Vec_IntAppend.exit231 ], [ %i.pf, %.lr.ph265 ]
  %.val201 = load i64, ptr %2, align 4            ; 4 uses
  %i.pn = and i64 %.val201, 2147483648
  %.not.i.i232 = icmp ne i64 %i.pn, 0
  %i.po = and i64 %.val201, 536870911
  %i.pp = icmp eq i64 %i.po, 536870911
  %narrow.i.not.i = or i1 %.not.i.i232, %i.pp
  br i1 %narrow.i.not.i, label %bb.bc, label %Gia_ObjIsXor.exit.a

Gia_ObjIsXor.exit.a:                              ; preds = %.critedge12
  %i.pq = trunc i64 %.val201 to i32
  %i.pr = and i32 %i.pq, 536870911
  %i.ps = lshr i64 %.val201, 32
  %i.pt = trunc nuw i64 %i.ps to i32
  %i.pu = and i32 %i.pt, 536870911
  %5 = icmp samesign ult i32 %i.pr, %i.pu
  %6 = select i1 %5, i32 4, i32 3
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge12, %Gia_ObjIsXor.exit.a
  %i.pv = phi i32 [ 3, %.critedge12 ], [ %6, %Gia_ObjIsXor.exit.a ]
  %i.pw = sub nsw i32 %.val326, %.val166
  %i.px = getelementptr i8, ptr %i.pm, i64 8
  %.val202 = load ptr, ptr %i.px, align 8, !tbaa !42
  %i.py = sext i32 %.val166 to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %.val202, i64 %i.py
  %i.qa = tail call fastcc i32 @Str_ObjCreate(ptr noundef %0, i32 noundef %i.pv, i32 noundef %i.pw, ptr noundef %i.pz)
  store i32 %i.qa, ptr %i.b, align 4, !tbaa !57
  %i.qb = load ptr, ptr %i.nt, align 8, !tbaa !71
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store i32 %.val166, ptr %i.qc, align 4, !tbaa !48
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc, %bb.aa
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @Str_ObjCreate(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 8) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = load i32, ptr %0, align 8, !tbaa !38
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.d ; 4 uses
  %i.f = shl i32 %2, 4
  %i.g = or disjoint i32 %i.f, %1
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %.val = load i32, ptr %i.i, align 4, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.val, ptr %i.j, align 4, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -1, ptr %i.k, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -1, ptr %i.l, align 4, !tbaa !72
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = load i32, ptr %i.i, align 4, !tbaa !48   ; 7 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !50
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !42
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.w = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.x = icmp samesign ult i32 %i.q, 1073741823
  %i.y = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  %.pre20 = load ptr, ptr %i.n, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre20, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %.pre20, i64 noundef %i.aa) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.ad = phi ptr [ %i.w, %bb.f ], [ %i.v, %bb.e ], [ %i.ab, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !42
  store i32 %spec.select.sink.i, ptr %i.h, align 8, !tbaa !50
  %.pre21 = load i32, ptr %i.i, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ae = phi i32 [ %i.q, %.Vec_IntPush.exit_crit_edge ], [ %i.q, %bb.g ], [ %.pre21, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.af = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre20, %bb.g ], [ %i.ad, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !48
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah
  store i32 %i.p, ptr %i.ai, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !119

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = zext nneg i32 %1 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !44
  %i.ao = load i32, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %0, align 8, !tbaa !38
  %i.aq = shl nsw i32 %i.ao, 1
  ret i32 %i.aq
}

; Function Attrs: nounwind uwtable
define noundef ptr @Str_ManNormalizeInt(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !48
  store i32 100, ptr %i.e, align 8, !tbaa !50
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #31
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  store ptr %i.e, ptr %i.b, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !48
  store i32 100, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #31
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !42
  store ptr %i.l, ptr %i.i, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #29
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i32, ptr %i.p, align 8, !tbaa !33  ; 3 uses
  %i.q = add nsw i32 %.val, 10000                 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 72
  %.val32 = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.s = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.s, align 4, !tbaa !48 ; 2 uses
  %i.t = add nsw i32 %.val32.val, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val3.i = load i32, ptr %i.w, align 4, !tbaa !48
  %i.x = add i32 %.val3.i, %.val32.val
  %i.y = xor i32 %i.x, -1
  %i.z = add i32 %.val, %i.y
  %i.aa = shl nsw i32 %i.z, 1
  %i.ab = getelementptr i8, ptr %0, i64 52
  %.val33 = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ac = add i32 %i.t, %.val33
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #33 ; 14 uses
  %i.af = sext i32 %i.q to i64
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.q, ptr %i.aj, align 4, !tbaa !121
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 -1>, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
end_hunk_0
