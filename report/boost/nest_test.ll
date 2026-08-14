inline.NumInlined: 1589
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z15test_erase_voidv:bb.a
  br label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split

_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split: ; preds = %bb.s, %bb.q
  %.sink = phi ptr [ %i.cl, %bb.q ], [ %0, %bb.s ]
  store ptr %i.j, ptr %.sink, align 8, !tbaa !9
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.j, ptr %i.da, align 8, !tbaa !14
  br label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit

_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit: ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split, %bb.r
  %i.db = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.dc = add i64 %i.db, -1                       ; 2 uses
  store i64 %i.dc, ptr %i.ac, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.dc, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 2, ptr %i.d, align 4, !tbaa !21
  %i.dd = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 493, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_erase_voidv, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @_ZN5boost9container4nestIivvE10priv_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void

bb.u:                                             ; preds = %bb.a
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %bb.o
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.z

bb.y:                                             ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.di, %bb.y ], [ %i.dh, %bb.x ], [ %i.dg, %bb.w ], [ %i.df, %bb.v ], [ %i.de, %bb.u ]
  call void @_ZN5boost9container4nestIivvE10priv_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_erase_rangev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::nest", align 8 ; 21 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.boost::container::nest_iterator", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::nest_iterator.2", align 8 ; 3 uses
  %3 = alloca %"class.boost::container::nest_iterator.2", align 8 ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  store ptr %0, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 1, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.al, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 10, ptr %i.b, align 4, !tbaa !21
  %i.k = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_erase_rangev, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.k unwind label %bb.s       ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.i
  %storemerge35 = phi i32 [ 0, %bb.a ], [ %i.am, %bb.i ] ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !59, !noalias !363 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, %0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !363 ; 2 uses
  %i.o = xor i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.o, i1 true)
  br label %.noexc11

bb.e:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZN5boost9container4nestIivvE31priv_create_new_available_blockEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %..noexc11_crit_edge unwind label %bb.j ; 2 uses

..noexc11_crit_edge:                              ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17, !noalias !363
  br label %.noexc11

.noexc11:                                         ; preds = %..noexc11_crit_edge, %bb.d
  %i.r = phi i64 [ %i.n, %bb.d ], [ %.pre, %..noexc11_crit_edge ] ; 2 uses
  %.0 = phi i64 [ %i.p, %bb.d ], [ 0, %..noexc11_crit_edge ]
  %.0.i.i = phi ptr [ %i.l, %bb.d ], [ %i.q, %..noexc11_crit_edge ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26, !noalias !363, !nonnull !60, !noundef !60
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0
  store i32 %storemerge35, ptr %i.v, align 4, !tbaa !21
  %i.w = add i64 %i.r, 1
  %i.x = or i64 %i.w, %i.r                        ; 2 uses
  store i64 %i.x, ptr %i.s, align 8, !tbaa !17, !noalias !363
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = icmp ult i64 %i.y, 3
  br i1 %i.z, label %bb.f, label %bb.i, !prof !25

bb.f:                                             ; preds = %.noexc11
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14, !noalias !363 ; 2 uses
  %i.ad = load ptr, ptr %.0.i.i, align 8, !tbaa !9, !noalias !363 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !14, !noalias !363
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !9, !noalias !363
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store ptr %0, ptr %i.af, align 8, !tbaa !16, !noalias !363
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !15, !noalias !363
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !15, !noalias !363
  store ptr %.0.i.i, ptr %i.f, align 8, !tbaa !15, !noalias !363
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15, !noalias !363
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.0.i.i, ptr %i.aj, align 8, !tbaa !16, !noalias !363
  br label %bb.i

bb.i:                                             ; preds = %.noexc11, %bb.g, %bb.h
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !363
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.j, align 8, !tbaa !18, !noalias !363
  %i.am = add nuw nsw i32 %storemerge35, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !366

bb.j:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !17, !noalias !367 ; 2 uses
  %i.ap = and i64 %i.ao, -2                       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN5boost9container4nestIivvE5beginEv.exit, !prof !25

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !16, !noalias !367 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16, !noalias !367 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16, !noalias !367
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1), !noalias !367
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26, !noalias !367
  call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1), !noalias !367
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17, !noalias !367 ; 2 uses
  br label %_ZN5boost9container4nestIivvE5beginEv.exit

_ZN5boost9container4nestIivvE5beginEv.exit:       ; preds = %bb.k, %bb.l
  %i.bb = phi i64 [ %i.ba, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ar, %bb.l ], [ %0, %bb.k ] ; 2 uses
  %.0.i.i12 = phi i64 [ %i.ba, %bb.l ], [ %i.ap, %bb.k ] ; 2 uses
  %neg = sub i64 0, %.0.i.i12
  %4 = and i64 %.0.i.i12, %neg
  %5 = mul i64 %4, -2
  %i.bc = and i64 %5, %i.bb                       ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10, !prof !25

bb.m:                                             ; preds = %_ZN5boost9container4nestIivvE5beginEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.bk, i32 0, i32 3, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26
  call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17 ; 2 uses
  br label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10

_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10: ; preds = %_ZN5boost9container4nestIivvE5beginEv.exit, %bb.m
  %i.bp = phi i64 [ %i.bo, %bb.m ], [ %i.bb, %_ZN5boost9container4nestIivvE5beginEv.exit ] ; 2 uses
  %.sroa.022.1 = phi ptr [ %i.bf, %bb.m ], [ %.sroa.0.0.i, %_ZN5boost9container4nestIivvE5beginEv.exit ] ; 2 uses
  %.0.i9 = phi i64 [ %i.bo, %bb.m ], [ %i.bc, %_ZN5boost9container4nestIivvE5beginEv.exit ] ; 2 uses
  %neg35 = sub i64 0, %.0.i9
  %6 = and i64 %.0.i9, %neg35
  %7 = mul i64 %6, -2
  %i.bq = and i64 %7, %i.bp                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.n, label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8, !prof !25

bb.n:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26
  call void @llvm.prefetch.p0(ptr %i.ca, i32 0, i32 3, i32 1)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !17 ; 2 uses
  br label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8

_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8: ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10, %bb.n
  %i.cd = phi i64 [ %i.cc, %bb.n ], [ %i.bp, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10 ] ; 2 uses
  %.sroa.022.0 = phi ptr [ %i.bt, %bb.n ], [ %.sroa.022.1, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10 ] ; 3 uses
  %.0.i7 = phi i64 [ %i.cc, %bb.n ], [ %i.bq, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit10 ]
  %i.ce = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i7, i1 true) ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl i64 -2, %i.ce
  %i.ch = and i64 %i.cg, %i.cd                    ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6, !prof !25

bb.o:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.cp, i32 0, i32 3, i32 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26
  call void @llvm.prefetch.p0(ptr %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !17 ; 2 uses
  br label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6

_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6: ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8, %bb.o
  %i.cu = phi i64 [ %i.ct, %bb.o ], [ %i.cd, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.ck, %bb.o ], [ %.sroa.022.0, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8 ] ; 2 uses
  %.0.i5 = phi i64 [ %i.ct, %bb.o ], [ %i.ch, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit8 ] ; 2 uses
  %neg36 = sub i64 0, %.0.i5
  %8 = and i64 %.0.i5, %neg36
  %9 = mul i64 %8, -2
  %i.cv = and i64 %9, %i.cu                       ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4, !prof !25

bb.p:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.dd, i32 0, i32 3, i32 1)
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26
  call void @llvm.prefetch.p0(ptr %i.df, i32 0, i32 3, i32 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !17 ; 2 uses
  br label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4

_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4: ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6, %bb.p
  %i.di = phi i64 [ %i.dh, %bb.p ], [ %i.cu, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6 ]
  %.sroa.0.1 = phi ptr [ %i.cy, %bb.p ], [ %.sroa.0.2, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6 ] ; 2 uses
  %.0.i3 = phi i64 [ %i.dh, %bb.p ], [ %i.cv, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit6 ] ; 2 uses
  %neg37 = sub i64 0, %.0.i3
  %10 = and i64 %.0.i3, %neg37
  %11 = mul i64 %10, -2
  %i.dj = and i64 %11, %i.di                      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.q, label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit, !prof !25

bb.q:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  call void @llvm.prefetch.p0(ptr nonnull %i.dr, i32 0, i32 3, i32 1)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !17
  br label %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit

_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit: ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4, %bb.q
  %.sroa.0.0 = phi ptr [ %i.dm, %bb.q ], [ %.sroa.0.1, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4 ]
  %.0.i = phi i64 [ %i.dv, %bb.q ], [ %i.dj, %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit4 ]
  %i.dw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %.sroa.022.0, ptr %2, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cf, ptr %i.dy, align 8, !tbaa !78
  store ptr %.sroa.0.0, ptr %3, align 8, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dx, ptr %i.dz, align 8, !tbaa !78
  call void @_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::nest_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ea = load i64, ptr %i.j, align 8, !tbaa !18
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 7, ptr %i.d, align 4, !tbaa !21
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmjEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 506, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_erase_rangev, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN5boost9container4nestIivvE10priv_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret void

bb.s:                                             ; preds = %bb.b
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.u

bb.t:                                             ; preds = %_ZN5boost9container13nest_iteratorIPiLb0ELb1EEppEv.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.j
  %.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.ed, %bb.t ], [ %i.ec, %bb.s ]
  call void @_ZN5boost9container4nestIivvE10priv_resetEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEES6_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::nest_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit, %bb.a
  %i.f = phi i32 [ %i.ad, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %.sroa.034.0, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit ], [ %i.a, %bb.a ] ; 15 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.i = icmp ne ptr %i.g, %i.h
  %i.j = load i32, ptr %i.c, align 8
  %i.k = icmp ne i32 %i.f, %i.j
  %.not46 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %.not46, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !370 ; 3 uses
  %i.n = zext nneg i32 %i.f to i64                ; 2 uses
  %i.o = shl i64 -2, %i.n
  %i.p = and i64 %i.m, %i.o                       ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEE.exit22, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16, !noalias !370 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16, !noalias !370 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16, !noalias !370
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  tail call void @llvm.prefetch.p0(ptr nonnull %i.x, i32 0, i32 3, i32 1), !noalias !370
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26, !noalias !370
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1), !noalias !370
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17, !noalias !370
  br label %_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEE.exit22

_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEE.exit22: ; preds = %bb.c, %bb.d
  %.sroa.034.0 = phi ptr [ %i.s, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.0.i.i21 = phi i64 [ %i.ab, %bb.d ], [ %i.p, %bb.c ]
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i21, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32          ; 3 uses
  %i.ae = shl nuw i64 1, %i.n
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %i.m, %i.af                     ; 2 uses
  store i64 %i.ag, ptr %i.l, align 8, !tbaa !17, !noalias !370
  %i.ah = icmp eq i64 %i.m, -1
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEE.exit22
  store ptr %1, ptr %i.g, align 8, !tbaa !9, !noalias !370
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !14, !noalias !370 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !14, !noalias !370
  br label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split

bb.f:                                             ; preds = %_ZN5boost9container4nestIivvE5eraseENS0_13nest_iteratorIPKiLb0ELb1EEE.exit22
  %i.ak = icmp eq i64 %i.ag, 0
  br i1 %i.ak, label %bb.g, label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16, !noalias !370 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15, !noalias !370 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !16, !noalias !370
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !15, !noalias !370
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14, !noalias !370 ; 2 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !9, !noalias !370 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14, !noalias !370
  store ptr %i.at, ptr %i.as, align 8, !tbaa !9, !noalias !370
  store ptr %1, ptr %i.ar, align 8, !tbaa !14, !noalias !370
  %i.av = load ptr, ptr %1, align 8, !tbaa !9, !noalias !370
  store ptr %i.av, ptr %i.g, align 8, !tbaa !9, !noalias !370
  br label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split

_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.ai, %bb.e ], [ %1, %bb.g ]
  store ptr %i.g, ptr %.sink, align 8, !tbaa !9, !noalias !370
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !9, !noalias !370
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.g, ptr %i.ax, align 8, !tbaa !14, !noalias !370
  br label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit

_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit: ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit.sink.split, %bb.f
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !370
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.e, align 8, !tbaa !18, !noalias !370
  store ptr %.sroa.034.0, ptr %2, align 8, !tbaa !76
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq ptr %.sroa.034.0, %i.a
  br i1 %.not, label %bb.b, label %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge, !llvm.loop !373

_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge: ; preds = %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit
  %.pre59 = load ptr, ptr %3, align 8, !tbaa !76
  br label %split, !llvm.loop !373

split:                                            ; preds = %bb.b, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge
  %i.ba = phi i32 [ %i.ad, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge ], [ %i.f, %bb.b ]
  %i.bb = phi ptr [ %.pre59, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %i.bc = phi ptr [ %.sroa.034.0, %_ZN5boost9container4nestIivvE15priv_erase_implEPNS0_11nest_detail10block_baseIPvEEi.exit._crit_edge ], [ %i.g, %bb.b ] ; 4 uses
  %.not18 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not18, label %bb.l, label %.preheader

.preheader:                                       ; preds = %split
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.pre61 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre61, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.j
  %i.be = phi i64 [ %i.bm, %bb.j ], [ %.promoted, %.preheader ]
  %.0 = phi ptr [ %i.bi, %bb.j ], [ %i.bc, %.preheader ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
end_hunk_0
