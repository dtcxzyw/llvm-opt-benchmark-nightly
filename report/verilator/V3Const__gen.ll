Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Const__gen?download=true
inline.NumInlined: 16874
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN21ConstBitOpTreeVisitor5visitEP8AstConst:bb.a
bb.d:                                             ; preds = %bb.b
  store ptr %1, ptr %i.g, align 8, !tbaa !372
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN21ConstBitOpTreeVisitor8LeafInfo7setLeafEPK8AstConst.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !283  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.r = load i32, ptr %i.q, align 8
  %i.s = select i1 %.not.i.i.i, i32 %i.r, i32 %i.p
  %i.t = add nsw i32 %i.s, -1
  br label %_ZN21ConstBitOpTreeVisitor8LeafInfo7setLeafEPK8AstConst.exit

_ZN21ConstBitOpTreeVisitor8LeafInfo7setLeafEPK8AstConst.exit: ; preds = %bb.d, %bb.e
  %i.u = phi i32 [ %i.t, %bb.e ], [ -1, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !371
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN21ConstBitOpTreeVisitor8LeafInfo7setLeafEPK8AstConst.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21ConstBitOpTreeVisitor5visitEP11AstNodeBiop(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ConstBitOpTreeVisitor::Restorer", align 8 ; 11 uses
  %3 = alloca %"class.ConstBitOpTreeVisitor::Restorer", align 8 ; 12 uses
  %4 = alloca %"class.ConstBitOpTreeVisitor::LeafInfo", align 8 ; 19 uses
  %5 = alloca %"class.ConstBitOpTreeVisitor::Restorer", align 8 ; 11 uses
  %6 = alloca %class.anon.187, align 8            ; 7 uses
  %7 = alloca %"class.ConstBitOpTreeVisitor::LeafInfo", align 8 ; 7 uses
  %8 = alloca %"class.ConstBitOpTreeVisitor::LeafInfo", align 8 ; 6 uses
  %9 = alloca %"class.ConstBitOpTreeVisitor::LeafInfo", align 8 ; 7 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit

_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 269
  br i1 %i.b, label %bb.b, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread

bb.b:                                             ; preds = %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.e, align 8, !tbaa !36
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  br i1 %i.f, label %_ZL7isConstPK7AstNodem.exit, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread

_ZL7isConstPK7AstNodem.exit:                      ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.h = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread

bb.d:                                             ; preds = %_ZL7isConstPK7AstNodem.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !342
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !373
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !346
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 40
  store i64 %i.r, ptr %i.j, align 8, !tbaa !375
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !376
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !348
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !377
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !341
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !378
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !350, !range !115, !noundef !116
  store i8 %i.ag, ptr %i.ae, align 4, !tbaa !379
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  store i8 1, ptr %i.ah, align 1, !tbaa !380
  invoke void @_ZN21ConstBitOpTreeVisitor7incrOpsEPK7AstNodei(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, i32 noundef 555)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !170 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit unwind label %bb.g, !inline_history !9

_ZN14VNVisitorConst12iterateConstEP7AstNode.exit: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !352 ; 3 uses
  %.not113 = icmp eq ptr %i.ao, null
  br i1 %.not113, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !369
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !371
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.h, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN21ConstBitOpTreeVisitor8RestorerD2Ev(ptr noundef nonnull align 8 dead_on_return(30) dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.cl

bb.h:                                             ; preds = %bb.f, %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !316, !range !115, !noundef !116
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !170
  %i.az = invoke noundef zeroext i1 @_ZN21ConstBitOpTreeVisitor9setFailedEbPKcPK7AstNodei(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %i.ax, ptr noundef nonnull @.str.595, ptr noundef %i.ay, i32 noundef 558)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ah, align 1, !tbaa !380
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @_ZN21ConstBitOpTreeVisitor8RestorerD2Ev(ptr noundef nonnull align 8 dead_on_return(30) dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ck

_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZL7isConstPK7AstNodem.exit, %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i16, ptr %i.ba, align 8, !tbaa !36 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !325
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %.sroa.0.0.copyload.i120 = load i16, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.be = icmp eq i16 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i120
  br i1 %i.be, label %bb.l, label %_ZNK21ConstBitOpTreeVisitor9isAndTreeEv.exit189

bb.l:                                             ; preds = %_ZN7AstNode2isI6AstAnd11AstNodeBiopEEbPKT0_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !350, !range !115, !noundef !116
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = icmp ne i16 %.sroa.0.0.copyload.i, 274
  %i.bj = icmp ne i16 %.sroa.0.0.copyload.i, 343
  %spec.select.i.not = and i1 %i.bi, %i.bj
  %not. = xor i1 %i.bh, true
  %i.bk = and i1 %spec.select.i.not, %not.
  %i.bl = tail call noundef zeroext i1 @_ZN21ConstBitOpTreeVisitor9setFailedEbPKcPK7AstNodei(ptr noundef nonnull align 8 dereferenceable(112) %0, i1 noundef zeroext %i.bk, ptr noundef nonnull @.str.596, ptr noundef nonnull %1, i32 noundef 562)
  br i1 %i.bl, label %bb.ck, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN21ConstBitOpTreeVisitor7incrOpsEPK7AstNodei(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, i32 noundef 563)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !381 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EE12emplace_backIJRNS0_8LeafInfoEbiEEERS1_DpOT_.exit
  %.not103 = phi i1 [ false, %bb.m ], [ true, %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EE12emplace_backIJRNS0_8LeafInfoEbiEEERS1_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !342
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !373
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !346
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 40
  store i64 %i.cl, ptr %i.bn, align 8, !tbaa !375
  %i.cm = load ptr, ptr %i.bs, align 8, !tbaa !376
  %i.cn = load ptr, ptr %i.br, align 8, !tbaa !348
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 4
  store i64 %i.cr, ptr %i.bq, align 8, !tbaa !377
  %i.cs = load i32, ptr %i.bu, align 4, !tbaa !341
  store i32 %i.cs, ptr %i.bt, align 8, !tbaa !378
  %i.ct = load i8, ptr %i.bf, align 2, !tbaa !350, !range !115, !noundef !116
  store i8 %i.ct, ptr %i.bv, align 4, !tbaa !379
  store i8 1, ptr %i.bw, align 1, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cu = load i32, ptr %i.bx, align 8, !tbaa !351
  store i8 1, ptr %4, align 8, !tbaa !370
  store i32 %i.cu, ptr %i.by, align 4, !tbaa !369
  store i32 0, ptr %i.bz, align 8, !tbaa !371
  store i32 -1, ptr %i.ca, align 4, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.bm, align 8, !tbaa !352
  %.in.v = select i1 %.not103, i64 32, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v
  %i.cv = load ptr, ptr %.in, align 8, !tbaa !192 ; 5 uses
  %i.cw = load i8, ptr %i.cc, align 1, !tbaa !316, !range !115, !noundef !116
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(152) %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit123 unwind label %bb.s, !inline_history !9

_ZN14VNVisitorConst12iterateConstEP7AstNode.exit123: ; preds = %bb.n
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !372
  %.not104 = icmp eq ptr %i.da, null
  br i1 %.not104, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit123
  %i.db = load i8, ptr %i.cc, align 1, !tbaa !316, !range !115, !noundef !116
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o, %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit123
  invoke void @_ZN21ConstBitOpTreeVisitor8Restorer10restoreNowEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %.sroa.0.0.copyload.i.i.i125 = load i16, ptr %i.dd, align 8, !tbaa !36
  %.not = icmp eq i16 %.sroa.0.0.copyload.i.i.i125, 311
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !177
  br label %bb.t

bb.s:                                             ; preds = %bb.ae, %bb.n, %bb.p
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.t:                                             ; preds = %bb.r, %bb.q
  %.0244 = phi ptr [ %i.cv, %bb.q ], [ %i.df, %bb.r ] ; 2 uses
  %i.dh = load ptr, ptr %i.bb, align 8, !tbaa !325 ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i127, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131.thread, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131

_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131:  ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %.sroa.0.0.copyload.i.i.i.i129 = load i16, ptr %i.di, align 8, !tbaa !36
  switch i16 %.sroa.0.0.copyload.i.i.i.i129, label %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131.thread [
    i16 343, label %.critedge
    i16 274, label %.critedge
  ]

_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131.thread: ; preds = %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131, %bb.t
  %i.dj = load i8, ptr %i.bf, align 2, !tbaa !350, !range !115, !noundef !116
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %.critedge, label %bb.u, !prof !168

bb.u:                                             ; preds = %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131.thread
  %i.dl = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 579)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.dm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.597, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.dm) #27
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.y:                                             ; preds = %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.v, %bb.u
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.critedge:                                        ; preds = %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131, %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131, %_ZNK21ConstBitOpTreeVisitor9isXorTreeEv.exit131.thread
  %i.dp = load i32, ptr %i.bx, align 8, !tbaa !351 ; 2 uses
  %i.dq = load ptr, ptr %i.bs, align 8, !tbaa !376 ; 6 uses
  %i.dr = load ptr, ptr %i.cf, align 8, !tbaa !349
  %.not.i132 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge
  store ptr %.0244, ptr %i.dq, align 8, !tbaa !331
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.6226.0.insert.ext = zext i32 %i.dp to i64
  %.sroa.6226.0.insert.shift = shl nuw i64 %.sroa.6226.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6226.0.insert.shift, 1
  store i64 %.sroa.0.0.insert.insert, ptr %i.ds, align 8
  %i.dt = load ptr, ptr %i.bs, align 8, !tbaa !376
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.du, ptr %i.bs, align 8, !tbaa !376
  br label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit

bb.aa:                                            ; preds = %.critedge
  %i.dv = load ptr, ptr %i.br, align 8, !tbaa !348 ; 5 uses
  %i.dw = ptrtoint ptr %i.dq to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775792
  br i1 %i.dz, label %bb.ab, label %_ZNKSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
          to label %.noexc unwind label %.loopexit.split-lp271

.noexc:                                           ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.ea = ashr exact i64 %i.dy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 576460752303423487)
  %i.ee = select i1 %i.ec, i64 576460752303423487, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 4
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #30
          to label %.noexc133 unwind label %.loopexit270 ; 5 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy ; 2 uses
  store ptr %.0244, ptr %i.eh, align 8, !tbaa !331
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.6226.0.insert.ext228 = zext i32 %i.dp to i64
  %.sroa.6226.0.insert.shift229 = shl nuw i64 %.sroa.6226.0.insert.ext228, 32
  %.sroa.0.0.insert.insert220 = or disjoint i64 %.sroa.6226.0.insert.shift229, 1
  store i64 %.sroa.0.0.insert.insert220, ptr %i.ei, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dv, %i.dq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc133, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %i.eg, %.noexc133 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.noexc133 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !825
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, %i.dq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc133
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.eg, %.noexc133 ], [ %i.ek, %.lr.ph.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  %i.em = load ptr, ptr %i.cf, align 8, !tbaa !349
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.eo) #26
  br label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  store ptr %i.eg, ptr %i.br, align 8, !tbaa !348
  store ptr %i.el, ptr %i.bs, align 8, !tbaa !376
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.ep, ptr %i.cf, align 8, !tbaa !349
  br label %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit

_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.z
  store i8 %i.cw, ptr %i.cc, align 1, !tbaa !316
  br label %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EE12emplace_backIJRNS0_8LeafInfoEbiEEERS1_DpOT_.exit

.loopexit270:                                     ; preds = %_ZNKSt6vectorISt4pairIP11AstNodeExprN21ConstBitOpTreeVisitor14FrozenNodeInfoEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp271:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp273 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ad:                                            ; preds = %bb.o
  store i8 0, ptr %i.bw, align 1, !tbaa !380
  %i.eq = load ptr, ptr %i.cb, align 8, !tbaa !367
  %.not105 = icmp eq ptr %i.eq, null
  br i1 %.not105, label %_ZNSt6vectorIN21ConstBitOpTreeVisitor16BitPolarityEntryESaIS1_EE12emplace_backIJRNS0_8LeafInfoEbiEEERS1_DpOT_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = load i32, ptr %i.by, align 4, !tbaa !369
  %i.es = invoke noundef i32 @_ZNK21ConstBitOpTreeVisitor8LeafInfo8varWidthEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.af unwind label %bb.s

bb.af:                                            ; preds = %bb.ae
  %i.et = add nsw i32 %i.es, -1
  %i.eu = load i32, ptr %i.bz, align 8, !tbaa !96
  %.sroa.speculated.i = call noundef i32 @llvm.smin.i32(i32 %i.et, i32 %i.eu)
  %.not106 = icmp sgt i32 %i.er, %.sroa.speculated.i
  %i.ev = load ptr, ptr %i.bb, align 8, !tbaa !325 ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.ev, null          ; 2 uses
end_hunk_0
