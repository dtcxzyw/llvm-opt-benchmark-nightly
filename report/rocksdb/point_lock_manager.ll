Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/point_lock_manager?download=true
inline.NumInlined: 3593
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb22PerKeyPointLockManager13AcquireLockedEPNS_7LockMapEPNS_13LockMapStripeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_3EnvERKNS_8LockInfoEPmPNS_10autovectorImLm8EEEPPSF_Pbb:bb.a
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !281, !alias.scope !640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !640
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.j:                                             ; preds = %_ZN7rocksdb10autovectorImLm8EE5clearEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 13 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 3 uses
  %i.an = sub i64 0, %i.ae
  %i.ao = icmp eq i64 %i.am, %i.an                ; 4 uses
  %i.ap = add i64 %i.am, %i.ae
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = icmp eq i64 %i.at, %i.k                 ; 2 uses
  br i1 %i.ao, label %bb.t, label %bb.l

.thread:                                          ; preds = %bb.j
  br i1 %i.ao, label %bb.t, label %.thread249

bb.l:                                             ; preds = %bb.k
  br i1 %i.au, label %bb.m, label %.thread249

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %i.l, align 8, !tbaa !276, !range !92, !noundef !93
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre300.pre310 = load i8, ptr %6, align 8, !tbaa !276, !range !92 ; 2 uses
  br i1 %i.aw, label %bb.n, label %.critedge.thread336

bb.n:                                             ; preds = %bb.m
  %i.ax = trunc nuw i8 %.pre300.pre310 to i1
  br i1 %i.ax, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 4 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %.critedge.thread, label %.preheader281

.preheader281:                                    ; preds = %bb.o
  %.sroa.0244.0284 = load ptr, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0244.0284, %i.az
  br i1 %i.ba, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader281, %bb.p
  %.sroa.0244.0285 = phi ptr [ %.sroa.0244.0, %bb.p ], [ %.sroa.0244.0284, %.preheader281 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0244.0285, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !91, !range !92, !noundef !93
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  store i8 1, ptr %i.bg, align 1, !tbaa !94
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !97
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi), !inline_history !1
  %.sroa.0244.0 = load ptr, ptr %.sroa.0244.0285, align 8, !tbaa !51 ; 2 uses
  %i.bm = icmp eq ptr %.sroa.0244.0, %i.az
  br i1 %i.bm, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.p
  %.pre = load i8, ptr %i.l, align 8, !tbaa !276, !range !92
  %.pre300.pre = load i8, ptr %6, align 8, !tbaa !276, !range !92 ; 2 uses
  %i.bn = trunc nuw i8 %.pre to i1
  br i1 %i.bn, label %.critedge.thread, label %.critedge.thread336

.critedge.thread336:                              ; preds = %bb.m, %.critedge
  %.pre300338 = phi i8 [ %.pre300.pre, %.critedge ], [ %.pre300.pre310, %bb.m ]
  %i.bo = trunc nuw i8 %.pre300338 to i1
  br i1 %i.bo, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.o, %.preheader281, %.critedge.thread336, %.critedge
  %.pre300335 = phi i8 [ %.pre300.pre, %.critedge ], [ 0, %.critedge.thread336 ], [ 1, %bb.n ], [ 0, %bb.o ], [ 0, %.preheader281 ]
  store i8 %.pre300335, ptr %i.l, align 8, !tbaa !276
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !200
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !200
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bs, align 8, !tbaa !281, !alias.scope !641
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !641
  br label %_ZN7rocksdb6StatusD2Ev.exit

.thread249:                                       ; preds = %.thread, %bb.l
  %i.bt = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread249
  %i.bv = load i8, ptr %i.l, align 8, !tbaa !276, !range !92, !noundef !93
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !74, !noalias !642
  %i.by = add i64 %i.bx, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !643
  store ptr %i.ad, ptr %12, align 8, !noalias !643
  %.sroa.2241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %.sroa.2241.0..sroa_idx, align 8, !noalias !643
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !643
  store ptr %i.ad, ptr %13, align 8, !noalias !643
  %.sroa.2.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.by, ptr %.sroa.2.0..sroa_idx239, align 8, !noalias !643
  call void @_ZSt9__find_ifIN7rocksdb10autovectorImLm8EE13iterator_implIS2_mEEN9__gnu_cxx5__ops16_Iter_equals_valIKmEEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::autovector<unsigned long>::iterator_impl") align 8 %14, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13, ptr nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !643
  %i.bz = load i64, ptr %i.ad, align 8, !tbaa !74, !noalias !644
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !75, !noalias !644
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !76, !noalias !644
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = add i64 %i.cf, %i.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %.not270 = icmp eq i64 %i.ci, %i.cg
  br i1 %.not270, label %.critedge184, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !80
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !80
  %i.cn = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cm)
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !200
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.co, align 8, !tbaa !281, !alias.scope !645
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !645
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

.critedge184:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.t

bb.t:                                             ; preds = %.thread, %.critedge184, %.critedge.thread336, %bb.q, %.thread249, %bb.k
  %i.cp = phi i1 [ false, %.thread ], [ false, %.critedge184 ], [ true, %.critedge.thread336 ], [ %i.au, %bb.k ], [ false, %bb.q ], [ false, %.thread249 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48 ; 5 uses
  %.not.i194 = icmp eq ptr %i.cr, null
  br i1 %.not.i194, label %.thread259, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !51 ; 3 uses
  %.not272 = icmp ne ptr %i.cs, %i.cr             ; 2 uses
  %brmerge.not = and i1 %i.cp, %.not272
  br i1 %brmerge.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 9
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !94, !range !92, !noundef !93
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !91, !range !92, !noundef !93
  %i.da = trunc nuw i8 %i.cz to i1
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0158 = phi i1 [ %i.cp, %bb.u ], [ true, %bb.v ] ; 2 uses
  br i1 %.not272, label %._crit_edge, label %.thread259

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.pre301 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %.split
  %i.db = phi ptr [ %i.cu, %.split ], [ %.pre301, %._crit_edge ]
  %.0158258 = phi i1 [ %i.da, %.split ], [ %.0158, %._crit_edge ] ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !388
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !80  ; 2 uses
  %i.de = icmp ne i64 %i.dc, %i.dd
  %or.cond7.not = select i1 %11, i1 %i.de, i1 false
  br i1 %or.cond7.not, label %bb.y, label %.thread259

bb.y:                                             ; preds = %bb.x
  %i.df = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  %i.dg = trunc nuw i8 %i.df to i1                ; 2 uses
  br i1 %i.dg, label %.critedge186, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.ao, label %.preheader345, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i8, ptr %i.l, align 8, !tbaa !276, !range !92, !noundef !93
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.critedge186, label %.preheader345

.preheader345:                                    ; preds = %bb.aa, %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader345, %bb.ac
  %.sroa.0234.0.in = phi ptr [ %.sroa.0234.0, %bb.ac ], [ %i.cr, %.preheader345 ]
  %.sroa.0234.0 = load ptr, ptr %.sroa.0234.0.in, align 8, !tbaa !51 ; 3 uses
  %.not274 = icmp eq ptr %.sroa.0234.0, %i.cr
  br i1 %.not274, label %.critedge278, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0234.0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !91, !range !92, !noundef !93
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.critedge186, label %bb.ab

.critedge278:                                     ; preds = %bb.ab
  call void @_ZN7rocksdb10autovectorImLm8EE9push_backERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store i8 0, ptr %i.l, align 8, !tbaa !276
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !80
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !80
  %i.ds = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  store i64 %i.ds, ptr %i.do, align 8, !tbaa !200
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !281, !alias.scope !646
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !646
  br label %_ZN7rocksdb6StatusD2Ev.exit

.critedge186:                                     ; preds = %bb.ac, %bb.aa, %bb.y
  br i1 %.0158258, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.critedge186
  %i.du = load i8, ptr %i.l, align 8, !tbaa !276, !range !92, !noundef !93
  %i.dv = trunc nuw i8 %i.du to i1
  %.not267 = xor i1 %i.dg, true
  %brmerge268 = or i1 %.not267, %i.dv
  br i1 %brmerge268, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.l, align 8, !tbaa !276
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !200
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !200
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.dz, align 8, !tbaa !281, !alias.scope !647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !647
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.af:                                            ; preds = %bb.ad, %.critedge186
  br i1 %.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 9, ptr %0, align 8, !tbaa !299, !alias.scope !648
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ea, align 1, !tbaa !314, !alias.scope !648
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ec, align 8, !tbaa !281, !alias.scope !648
  store i32 0, ptr %i.eb, align 2, !alias.scope !648
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.ed = load i64, ptr %i.ad, align 8, !tbaa !74, !noalias !649
  %i.ee = load ptr, ptr %i.ag, align 8, !tbaa !75, !noalias !649
  %i.ef = load ptr, ptr %i.af, align 8, !tbaa !76, !noalias !649
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 3
  %i.ek = add i64 %i.ej, %i.ed                    ; 2 uses
  %.not3233.i = icmp eq i64 %i.ek, 0
  br i1 %.not3233.i, label %.thread265, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge.i, %.lr.ph.i
  %i.em = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.ey, %.critedge.i ] ; 2 uses
  %.sroa.5.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ez, %.critedge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !650
  %i.en = icmp ult i64 %.sroa.5.034.i, 8
  %i.eo = load ptr, ptr %i.el, align 8, !noalias !650
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.5.034.i
  %i.eq = load ptr, ptr %i.af, align 8, !noalias !650
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %.sroa.5.034.i
  %i.es = getelementptr i8, ptr %i.er, i64 -64
  %.0.i.i.i = select i1 %i.en, ptr %i.ep, ptr %i.es
  %i.et = load i64, ptr %.0.i.i.i, align 8, !tbaa !80, !noalias !650 ; 2 uses
  store i64 %i.et, ptr %i.a, align 8, !tbaa !80, !noalias !650
  %.not22.i = icmp eq i64 %i.et, %i.em
  br i1 %.not22.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN7rocksdb10autovectorImLm8EE9push_backERKm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !650
  %.pre302 = load i64, ptr %i.b, align 8, !tbaa !80, !noalias !650
  br label %.critedge.i

bb.ak:                                            ; preds = %bb.ai
  %i.eu = load i8, ptr %i.l, align 8, !tbaa !276, !range !92, !noalias !650, !noundef !93
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noalias !650, !noundef !93
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.thread29.i, label %bb.am

.thread29.i:                                      ; preds = %bb.al
  store i8 1, ptr %10, align 1, !tbaa !287, !noalias !650
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread29.i, %bb.aj
  %i.ey = phi i64 [ %i.em, %.thread29.i ], [ %.pre302, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !650
  %i.ez = add nuw i64 %.sroa.5.034.i, 1           ; 2 uses
  %.not32.i = icmp eq i64 %i.ez, %i.ek
  br i1 %.not32.i, label %.thread265, label %bb.ai

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !650
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %0, align 8, !tbaa !299
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 18, ptr %i.fb, align 1, !tbaa !314
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr null, ptr %i.fa, align 8, !tbaa !298
  store i32 0, ptr %i.fc, align 2
  br label %_ZN7rocksdb6StatusD2Ev.exit

.thread265:                                       ; preds = %.critedge.i, %bb.ah
  %i.fd = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = load ptr, ptr %i.cq, align 8, !tbaa !188 ; 4 uses
  %.sroa.0230.0291 = load ptr, ptr %i.ff, align 8, !tbaa !51 ; 3 uses
  %i.fg = icmp eq ptr %.sroa.0230.0291, %i.ff     ; 2 uses
  br i1 %i.fe, label %bb.an, label %.preheader

.preheader:                                       ; preds = %.thread265
  br i1 %i.fg, label %.critedge188, label %.lr.ph290

bb.an:                                            ; preds = %.thread265
  br i1 %i.fg, label %.critedge188, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.an, %bb.ar
  %.sroa.0230.0292 = phi ptr [ %.sroa.0230.0, %bb.ar ], [ %.sroa.0230.0291, %bb.an ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0230.0292, i64 16
  %i.fi = load i8, ptr %10, align 1, !tbaa !287, !range !92, !noundef !93
  %i.fj = trunc nuw i8 %i.fi to i1
  %.pre309 = load ptr, ptr %i.fh, align 8, !tbaa !83 ; 3 uses
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph293
  %i.fk = getelementptr inbounds nuw i8, ptr %.pre309, i64 8
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !91, !range !92, !noundef !93
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %.critedge188, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph293
  %i.fn = load i64, ptr %.pre309, align 8, !tbaa !388
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !80
  %.not177 = icmp eq i64 %i.fn, %i.fo
  br i1 %.not177, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7rocksdb10autovectorImLm8EE9push_backERKm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(8) %.pre309)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0230.0 = load ptr, ptr %.sroa.0230.0292, align 8, !tbaa !51 ; 2 uses
  %i.fp = icmp eq ptr %.sroa.0230.0, %i.ff
  br i1 %i.fp, label %.critedge188, label %.lr.ph293

.lr.ph290:                                        ; preds = %.preheader, %bb.at
  %i.fq = phi ptr [ %i.ga, %bb.at ], [ %.sroa.0230.0291, %.preheader ] ; 2 uses
  %.sroa.0226.0289 = phi ptr [ %.sroa.0226.0, %bb.at ], [ %i.ff, %.preheader ]
  %.0288 = phi i1 [ %or.cond, %bb.at ], [ true, %.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0226.0289, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !383 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !83 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !91, !range !92, !noundef !93
  %i.fx = trunc nuw i8 %i.fw to i1
  %.not269 = xor i1 %i.fx, true
  %or.cond = and i1 %.0288, %.not269              ; 2 uses
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph290
  %i.fy = load i64, ptr %i.fu, align 8, !tbaa !388
  %i.fz = load i64, ptr %i.b, align 8, !tbaa !80
  %.not176 = icmp eq i64 %i.fy, %i.fz
  br i1 %.not176, label %bb.at, label %._crit_edge305

._crit_edge305:                                   ; preds = %bb.as
  call void @_ZN7rocksdb10autovectorImLm8EE9push_backERKm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
  %.sroa.0226.0.pre = load ptr, ptr %i.fr, align 8, !tbaa !188
  %.pre307 = load ptr, ptr %i.cq, align 8, !tbaa !48
  %.pre308 = load ptr, ptr %.pre307, align 8, !tbaa !51, !noalias !651
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge305, %.lr.ph290, %bb.as
  %i.ga = phi ptr [ %.pre308, %._crit_edge305 ], [ %i.fq, %.lr.ph290 ], [ %i.fq, %bb.as ] ; 2 uses
  %.sroa.0226.0 = phi ptr [ %.sroa.0226.0.pre, %._crit_edge305 ], [ %i.fs, %.lr.ph290 ], [ %i.fs, %bb.as ] ; 2 uses
  %i.gb = icmp eq ptr %.sroa.0226.0, %i.ga
  br i1 %i.gb, label %.critedge188, label %.lr.ph290, !llvm.loop !622

.critedge188:                                     ; preds = %bb.at, %bb.ao, %bb.ar, %.preheader, %bb.an
  store i8 9, ptr %0, align 8, !tbaa !299, !alias.scope !652
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.gc, align 1, !tbaa !314, !alias.scope !652
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ge, align 8, !tbaa !281, !alias.scope !652
  store i32 0, ptr %i.gd, align 2, !alias.scope !652
  br label %_ZN7rocksdb6StatusD2Ev.exit

.thread259:                                       ; preds = %bb.t, %bb.w, %bb.x
  %.0158257264 = phi i1 [ %.0158258, %bb.x ], [ %.0158, %bb.w ], [ %i.cp, %bb.t ]
  br i1 %i.ao, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.thread259
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !277
  %i.gh = load ptr, ptr %i.j, align 8, !tbaa !318
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !318
  call void @_ZNSt6vectorImSaImEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %i.gh, ptr %i.gj)
  %i.gk = load i64, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  store i64 %i.gk, ptr %i.ad, align 8, !tbaa !74
  %.not.i.i201 = icmp eq i64 %i.gk, 0
  %.pre.i.i = load ptr, ptr %i.gg, align 8, !tbaa !277 ; 3 uses
  br i1 %.not.i.i201, label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit, label %.lr.ph.i.i

._crit_edge.i.i202:                               ; preds = %.lr.ph.i.i
  %i.gl = load ptr, ptr %i.h, align 8, !tbaa !277 ; 2 uses
  %i.gm = icmp ugt i64 %i.gr, 1
  br i1 %i.gm, label %bb.av, label %bb.aw, !prof !319

bb.av:                                            ; preds = %._crit_edge.i.i202
  %.idx.i.i = shl nuw nsw i64 %i.gr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.pre.i.i, ptr align 8 %i.gl, i64 %.idx.i.i, i1 false)
  br label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit

bb.aw:                                            ; preds = %._crit_edge.i.i202
  %i.gn = icmp eq i64 %i.gr, 1
  br i1 %i.gn, label %bb.ax, label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.go = load i64, ptr %i.gl, align 8, !tbaa !80
  store i64 %i.go, ptr %.pre.i.i, align 8, !tbaa !80
  br label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.au, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.gq, %.lr.ph.i.i ], [ 0, %bb.au ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.010.i.i
  store i64 0, ptr %i.gp, align 8, !tbaa !80
  %i.gq = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.gr = load i64, ptr %i.ad, align 8, !tbaa !74 ; 4 uses
  %i.gs = icmp ult i64 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph.i.i, label %._crit_edge.i.i202, !llvm.loop !13

_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit:      ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %i.gt = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  store i8 %i.gt, ptr %i.l, align 8, !tbaa !276
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !200
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !200
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.gx, align 8, !tbaa !281, !alias.scope !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !653
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.ay:                                            ; preds = %.thread259
  %i.gy = load i64, ptr %i.b, align 8, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 6 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !200
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = load ptr, ptr %5, align 8, !tbaa !97
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 448
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call noundef i64 %i.he(ptr noundef nonnull align 8 dereferenceable(72) %5), !inline_history !317
  %i.hg = load i64, ptr %i.gz, align 8, !tbaa !200 ; 2 uses
  %.not.i203 = icmp ugt i64 %i.hg, %i.hf
  br i1 %.not.i203, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hh = load i64, ptr %i.ad, align 8, !tbaa !74, !noalias !654
  %i.hi = load ptr, ptr %i.ag, align 8, !tbaa !75, !noalias !654
  %i.hj = load ptr, ptr %i.af, align 8, !tbaa !76, !noalias !654
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3
  %i.ho = add i64 %i.hn, %i.hh                    ; 2 uses
  %.not4244.i = icmp eq i64 %i.ho, 0
  br i1 %.not4244.i, label %.loopexit279, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.ba
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.lr.ph.i204
  %.sroa.5.045.i = phi i64 [ 0, %.lr.ph.i204 ], [ %i.ib, %bb.bd ] ; 4 uses
  %i.hr = icmp ult i64 %.sroa.5.045.i, 8
  %i.hs = load ptr, ptr %i.hp, align 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.sroa.5.045.i
  %i.hu = load ptr, ptr %i.af, align 8
  %i.hv = getelementptr [8 x i8], ptr %i.hu, i64 %.sroa.5.045.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 -64
  %.0.i.i.i205 = select i1 %i.hr, ptr %i.ht, ptr %i.hw
  %i.hx = load i64, ptr %.0.i.i.i205, align 8, !tbaa !80 ; 2 uses
  %i.hy = icmp eq i64 %i.gy, %i.hx
  br i1 %i.hy, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !130
  %i.ia = call noundef zeroext i1 @_ZN7rocksdb24PessimisticTransactionDB34TryStealingExpiredTransactionLocksEm(ptr noundef nonnull align 8 dereferenceable(520) %i.hz, i64 noundef %i.hx)
  br i1 %i.ia, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ib = add nuw i64 %.sroa.5.045.i, 1           ; 2 uses
  %.not42.i = icmp eq i64 %i.ib, %i.ho
  br i1 %.not42.i, label %.loopexit279, label %bb.bb

.loopexit279:                                     ; preds = %bb.bd, %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !277
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !318
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !318
  call void @_ZNSt6vectorImSaImEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %i.ie, ptr %i.ig)
  %i.ih = load i64, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  store i64 %i.ih, ptr %i.ad, align 8, !tbaa !74
  %.not.i.i206 = icmp eq i64 %i.ih, 0
  %.pre.i.i207 = load ptr, ptr %i.id, align 8, !tbaa !277 ; 3 uses
  br i1 %.not.i.i206, label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit212, label %.lr.ph.i.i208

._crit_edge.i.i210:                               ; preds = %.lr.ph.i.i208
  %i.ii = load ptr, ptr %i.h, align 8, !tbaa !277 ; 2 uses
  %i.ij = icmp ugt i64 %i.io, 1
  br i1 %i.ij, label %bb.be, label %bb.bf, !prof !319

bb.be:                                            ; preds = %._crit_edge.i.i210
  %.idx.i.i211 = shl nuw nsw i64 %i.io, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.pre.i.i207, ptr align 8 %i.ii, i64 %.idx.i.i211, i1 false)
  br label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit212

bb.bf:                                            ; preds = %._crit_edge.i.i210
  %i.ik = icmp eq i64 %i.io, 1
  br i1 %i.ik, label %bb.bg, label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit212

bb.bg:                                            ; preds = %bb.bf
  %i.il = load i64, ptr %i.ii, align 8, !tbaa !80
  store i64 %i.il, ptr %.pre.i.i207, align 8, !tbaa !80
  br label %_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit212

.lr.ph.i.i208:                                    ; preds = %.loopexit279, %.lr.ph.i.i208
  %.010.i.i209 = phi i64 [ %i.in, %.lr.ph.i.i208 ], [ 0, %.loopexit279 ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i207, i64 %.010.i.i209
  store i64 0, ptr %i.im, align 8, !tbaa !80
  %i.in = add nuw i64 %.010.i.i209, 1             ; 2 uses
  %i.io = load i64, ptr %i.ad, align 8, !tbaa !74 ; 4 uses
  %i.ip = icmp ult i64 %i.in, %i.io
  br i1 %i.ip, label %.lr.ph.i.i208, label %._crit_edge.i.i210, !llvm.loop !13

_ZN7rocksdb10autovectorImLm8EEaSERKS1_.exit212:   ; preds = %.loopexit279, %bb.be, %bb.bf, %bb.bg
  %i.iq = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  store i8 %i.iq, ptr %i.l, align 8, !tbaa !276
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !200
  store i64 %i.is, ptr %i.gz, align 8, !tbaa !200
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.it, align 8, !tbaa !281, !alias.scope !655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !655
  br label %_ZN7rocksdb6StatusD2Ev.exit

.loopexit:                                        ; preds = %bb.bc, %bb.az, %bb.ay
  %.sink.i = phi i64 [ %i.hg, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.bc ]
  store i64 %.sink.i, ptr %7, align 8, !tbaa !80
  %i.iu = load i8, ptr %6, align 8, !tbaa !276, !range !92, !noundef !93
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %.loopexit
  br i1 %.0158257264, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.l, align 8, !tbaa !276
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !200
  store i64 %i.ix, ptr %i.gz, align 8, !tbaa !200
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.iy, align 8, !tbaa !281, !alias.scope !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !656
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN7rocksdb22PerKeyPointLockManager11FillWaitIdsERNS_8LockInfoERKS1_PNS_10autovectorImLm8EEERbRmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull align 8 poison)
  %i.iz = load i8, ptr %15, align 8, !tbaa !299
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7rocksdb6StatusC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %15) #28
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store i8 9, ptr %0, align 8, !tbaa !299, !alias.scope !657
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.jb, align 1, !tbaa !314, !alias.scope !657
end_hunk_0
begin_hunk_1_@_ZN7rocksdb11SystemClock7DefaultEv
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt9__find_ifIN7rocksdb10autovectorImLm8EE13iterator_implIS2_mEEN9__gnu_cxx5__ops16_Iter_equals_valIKmEEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::autovector<unsigned long>::iterator_impl") align 8 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79   ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = ashr i64 %i.e, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.022.0.copyload = load ptr, ptr %1, align 8, !tbaa !692 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 72 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 80 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.223.0.copyload = phi i64 [ %i.d, %.lr.ph ], [ %i.aw, %bb.f ] ; 7 uses
  %.0431 = phi i64 [ %i.f, %.lr.ph ], [ %i.ax, %bb.f ] ; 2 uses
  %i.j = icmp ult i64 %.sroa.223.0.copyload, 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.223.0.copyload
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.sroa.223.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 -64
  %.0.i.i.i = select i1 %i.j, ptr %i.l, ptr %i.o
  %i.p = load i64, ptr %.0.i.i.i, align 8, !tbaa !80
  %i.q = load i64, ptr %3, align 8, !tbaa !80
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i64 %.sroa.223.0.copyload, 1         ; 4 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !79
  %i.t = icmp ult i64 %i.s, 8
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 -64
  %.0.i.i.i6 = select i1 %i.t, ptr %i.v, ptr %i.y
  %i.z = load i64, ptr %.0.i.i.i6, align 8, !tbaa !80
  %i.aa = load i64, ptr %3, align 8, !tbaa !80
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %.sroa.223.0.copyload, 2        ; 4 uses
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !79
  %i.ad = icmp ult i64 %i.ac, 8
  %i.ae = load ptr, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  %i.ag = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 -64
  %.0.i.i.i7 = select i1 %i.ad, ptr %i.af, ptr %i.ai
  %i.aj = load i64, ptr %.0.i.i.i7, align 8, !tbaa !80
  %i.ak = load i64, ptr %3, align 8, !tbaa !80
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add i64 %.sroa.223.0.copyload, 3        ; 4 uses
  store i64 %i.am, ptr %i.c, align 8, !tbaa !79
  %i.an = icmp ult i64 %i.am, 8
  %i.ao = load ptr, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr i8, ptr %i.ar, i64 -64
  %.0.i.i.i8 = select i1 %i.an, ptr %i.ap, ptr %i.as
  %i.at = load i64, ptr %.0.i.i.i8, align 8, !tbaa !80
  %i.au = load i64, ptr %3, align 8, !tbaa !80
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = add i64 %.sroa.223.0.copyload, 4        ; 3 uses
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !79
  %i.ax = add nsw i64 %.0431, -1
  %i.ay = icmp sgt i64 %.0431, 1
  br i1 %i.ay, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !691

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i64, ptr %i.a, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.az = phi i64 [ %i.aw, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 7 uses
  %i.ba = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.bb = sub i64 %i.ba, %i.az
  switch i64 %i.bb, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge35
  ]

._crit_edge._crit_edge35:                         ; preds = %._crit_edge
  %.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !692
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.sroa.012.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !692
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %.sroa.014.0.copyload = load ptr, ptr %1, align 8, !tbaa !692 ; 3 uses
  %i.bc = icmp ult i64 %i.az, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.az
  %i.bj = getelementptr i8, ptr %i.bi, i64 -64
  %.0.i.i.i9 = select i1 %i.bc, ptr %i.bf, ptr %i.bj
  %i.bk = load i64, ptr %.0.i.i.i9, align 8, !tbaa !80
  %i.bl = load i64, ptr %3, align 8, !tbaa !80
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %.sroa.213.0.copyload = phi i64 [ %i.az, %._crit_edge._crit_edge ], [ %i.bn, %bb.h ] ; 4 uses
  %.sroa.012.0.copyload = phi ptr [ %.sroa.012.0.copyload.pre, %._crit_edge._crit_edge ], [ %.sroa.014.0.copyload, %bb.h ] ; 3 uses
  %i.bo = icmp ult i64 %.sroa.213.0.copyload, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.213.0.copyload
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %.sroa.213.0.copyload
  %i.bv = getelementptr i8, ptr %i.bu, i64 -64
  %.0.i.i.i10 = select i1 %i.bo, ptr %i.br, ptr %i.bv
  %i.bw = load i64, ptr %.0.i.i.i10, align 8, !tbaa !80
  %i.bx = load i64, ptr %3, align 8, !tbaa !80
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = add i64 %.sroa.213.0.copyload, 1        ; 2 uses
  store i64 %i.bz, ptr %i.c, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge35, %bb.j
  %.sroa.2.0.copyload = phi i64 [ %i.az, %._crit_edge._crit_edge35 ], [ %i.bz, %bb.j ] ; 4 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %._crit_edge._crit_edge35 ], [ %.sroa.012.0.copyload, %bb.j ] ; 2 uses
  %i.ca = icmp ult i64 %.sroa.2.0.copyload, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.2.0.copyload
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.2.0.copyload
  %i.ch = getelementptr i8, ptr %i.cg, i64 -64
  %.0.i.i.i11 = select i1 %i.ca, ptr %i.cd, ptr %i.ch
  %i.ci = load i64, ptr %.0.i.i.i11, align 8, !tbaa !80
  %i.cj = load i64, ptr %3, align 8, !tbaa !80
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = add i64 %.sroa.2.0.copyload, 1
  store i64 %i.cl, ptr %i.c, align 8, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %._crit_edge, %bb.l, %bb.k, %bb.i, %bb.g
  %.sink = phi ptr [ %1, %bb.k ], [ %1, %bb.i ], [ %1, %bb.g ], [ %2, %bb.l ], [ %2, %._crit_edge ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %bb.d ], [ %1, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !170    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #27
  unreachable

_ZNKSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 13, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !40
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !44
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !45
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !46
  store ptr %i.v, ptr %i.s, align 8, !tbaa !44
  store i64 0, ptr %i.ad, align 8, !tbaa !46
  store i8 0, ptr %i.v, align 8, !tbaa !45
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 13, i1 false), !alias.scope !702
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !40, !alias.scope !700, !noalias !701
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !44, !alias.scope !701, !noalias !700 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46, !alias.scope !701, !noalias !700 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !702
  br label %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !44, !alias.scope !700, !noalias !701
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !45, !alias.scope !700, !noalias !701
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !46, !alias.scope !701, !noalias !700
  br label %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !46, !alias.scope !700, !noalias !701
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !44, !alias.scope !701, !noalias !700
  store i64 0, ptr %i.ar, align 8, !tbaa !46, !alias.scope !701, !noalias !700
  store i8 0, ptr %i.aj, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !696

_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN7rocksdb12DeadlockInfoEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i19, i64 13, i1 false), !alias.scope !705
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !40, !alias.scope !703, !noalias !704
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !44, !alias.scope !704, !noalias !703 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46, !alias.scope !704, !noalias !703 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !705
  br label %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !44, !alias.scope !703, !noalias !704
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !45, !alias.scope !704, !noalias !703
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !45, !alias.scope !703, !noalias !704
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !46, !alias.scope !704, !noalias !703
  br label %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !46, !alias.scope !703, !noalias !704
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !44, !alias.scope !704, !noalias !703
  store i64 0, ptr %i.bi, align 8, !tbaa !46, !alias.scope !704, !noalias !703
  store i8 0, ptr %i.ba, align 8, !tbaa !45, !alias.scope !704, !noalias !703
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !696

_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN7rocksdb12DeadlockInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #30
  br label %_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !170
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !171
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !172
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN7rocksdb12DeadlockInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rocksdb::DeadlockInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !40
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !44
  %i.k = load i64, ptr %i.e, align 8, !tbaa !45
  store i64 %i.k, ptr %i.c, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !46
  store ptr %i.e, ptr %i.b, align 8, !tbaa !44
  store i64 0, ptr %i.m, align 8, !tbaa !46
  store i8 0, ptr %i.e, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 13, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
end_hunk_1
