Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/memtable?download=true
inline.NumInlined: 3338
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7rocksdb8MemTable8MultiGetERKNS_11ReadOptionsEPNS_15MultiGetContext5RangeEPNS_12ReadCallbackEbPKNS_11BlobFetcherE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.y:                                             ; preds = %.lr.ph673, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph673 ], [ %indvars.iv.next, %bb.ah ] ; 3 uses
  %.sroa.41.0671 = phi i64 [ %i.bp, %.lr.ph673 ], [ %.sroa.41.1, %bb.ah ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !440, !range !104, !noundef !105
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !169
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = or i64 %i.fw, %.sroa.41.0671            ; 2 uses
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit

_ZTWN7rocksdb10perf_levelE.exit:                  ; preds = %bb.z, %bb.aa
  %i.fy = load i8, ptr %i.i, align 1, !tbaa !42
  %i.fz = icmp ugt i8 %i.fy, 1
  br i1 %i.fz, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit196, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit196

_ZTWN7rocksdb12perf_contextE.exit196:             ; preds = %bb.ab, %bb.ac
  %i.ga = load i64, ptr %i.ee, align 8, !tbaa !488
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.ee, align 8, !tbaa !488
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit198, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit198

_ZTWN7rocksdb10perf_levelE.exit198:               ; preds = %bb.ad, %bb.ae
  %i.gc = load i8, ptr %i.i, align 1, !tbaa !42
  %i.gd = icmp ugt i8 %i.gc, 1
  br i1 %i.gd, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit198
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit200, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit200

_ZTWN7rocksdb12perf_contextE.exit200:             ; preds = %bb.af, %bb.ag
  %i.ge = load i64, ptr %i.ef, align 8, !tbaa !489
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.ef, align 8, !tbaa !489
  br label %bb.ah

bb.ah:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit196, %_ZTWN7rocksdb10perf_levelE.exit, %_ZTWN7rocksdb12perf_contextE.exit200, %_ZTWN7rocksdb10perf_levelE.exit198
  %.sroa.41.1 = phi i64 [ %.sroa.41.0671, %_ZTWN7rocksdb12perf_contextE.exit200 ], [ %.sroa.41.0671, %_ZTWN7rocksdb10perf_levelE.exit198 ], [ %i.fx, %_ZTWN7rocksdb12perf_contextE.exit196 ], [ %i.fx, %_ZTWN7rocksdb10perf_levelE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond711.not, label %._crit_edge674, label %bb.y, !llvm.loop !833

bb.ai:                                            ; preds = %bb.n, %bb.u, %bb.x
  %.pn173.pn = phi { ptr, i32 } [ %i.fq, %bb.x ], [ %i.fg, %bb.u ], [ %i.eh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.eb

bb.aj:                                            ; preds = %._crit_edge674, %.loopexit654
  %.sroa.41.2 = phi i64 [ %.sroa.41.0.lcssa, %._crit_edge674 ], [ %i.bp, %.loopexit654 ] ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 7679
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !890, !range !104, !noundef !105
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 7677 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !404, !range !104, !noundef !105
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 7678
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !334, !range !104, !noundef !105
  %i.go = trunc nuw i8 %i.gn to i1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gp = phi i1 [ true, %bb.aj ], [ %i.go, %bb.ak ]
  br i1 %i.gi, label %bb.am, label %bb.cp

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %11, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %12, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %13, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.gq = icmp ult i64 %.sink.i, %.sroa.2.0.copyload.sink.i ; 3 uses
  br i1 %i.gq, label %.lr.ph.i.i202, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206

.lr.ph.i.i202:                                    ; preds = %bb.am
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !886, !noalias !891
  %i.gt = or i64 %i.bo, %i.gs
  %i.gu = or i64 %i.gt, %.sroa.41.2               ; 2 uses
  %i.gv = sub nuw i64 %.sroa.2.0.copyload.sink.i, %.sink.i ; 3 uses
  %min.iters.check1009 = icmp ult i64 %i.gv, 32
  br i1 %min.iters.check1009, label %scalar.ph1008.preheader, label %vector.ph1010

vector.ph1010:                                    ; preds = %.lr.ph.i.i202
  %n.vec1011 = and i64 %i.gv, -32                 ; 3 uses
  %i.gw = add i64 %.sink.i, %n.vec1011
  %broadcast.splatinsert1012 = insertelement <32 x i64> poison, i64 %i.gu, i64 0
  %broadcast.splat1013 = shufflevector <32 x i64> %broadcast.splatinsert1012, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1014 = insertelement <32 x i64> poison, i64 %.sink.i, i64 0
  %broadcast.splat1015 = shufflevector <32 x i64> %broadcast.splatinsert1014, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction1016 = add <32 x i64> %broadcast.splat1015, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body.interim1022, %vector.ph1010
  %index1018 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1020, %vector.body.interim1022 ] ; 2 uses
  %vec.ind1019 = phi <32 x i64> [ %induction1016, %vector.ph1010 ], [ %vec.ind.next1021, %vector.body.interim1022 ] ; 2 uses
  %i.gx = shl nuw <32 x i64> splat (i64 1), %vec.ind1019
  %i.gy = and <32 x i64> %i.gx, %broadcast.splat1013
  %.fr1156 = freeze <32 x i64> %i.gy
  %i.gz = icmp eq <32 x i64> %.fr1156, zeroinitializer ; 2 uses
  %i.ha = bitcast <32 x i1> %i.gz to i32
  %.not1157 = icmp eq i32 %i.ha, 0
  br i1 %.not1157, label %vector.body.interim1022, label %vector.early.exit1025

vector.body.interim1022:                          ; preds = %vector.body1017
  %vec.ind.next1021 = add <32 x i64> %vec.ind1019, splat (i64 32)
  %index.next1020 = add nuw i64 %index1018, 32    ; 2 uses
  %i.hb = icmp eq i64 %index.next1020, %n.vec1011
  br i1 %i.hb, label %middle.block1023, label %vector.body1017, !llvm.loop !836

middle.block1023:                                 ; preds = %vector.body.interim1022
  %cmp.n1024 = icmp eq i64 %i.gv, %n.vec1011
  br i1 %cmp.n1024, label %._crit_edge686.thread, label %scalar.ph1008.preheader

scalar.ph1008.preheader:                          ; preds = %.lr.ph.i.i202, %middle.block1023
  %storemerge3.i.i203.ph = phi i64 [ %.sink.i, %.lr.ph.i.i202 ], [ %i.gw, %middle.block1023 ]
  br label %scalar.ph1008

vector.early.exit1025:                            ; preds = %vector.body1017
  %i.hc = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.gz, i1 false)
  %i.hd = add i64 %index1018, %i.hc
  %i.he = add i64 %.sink.i, %i.hd
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206

scalar.ph1008:                                    ; preds = %scalar.ph1008.preheader, %bb.an
  %storemerge3.i.i203 = phi i64 [ %i.hh, %bb.an ], [ %storemerge3.i.i203.ph, %scalar.ph1008.preheader ] ; 3 uses
  %i.hf = shl nuw i64 1, %storemerge3.i.i203
  %i.hg = and i64 %i.hf, %i.gu
  %.not.i.i204 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i204, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206, label %bb.an

bb.an:                                            ; preds = %scalar.ph1008
  %i.hh = add i64 %storemerge3.i.i203, 1          ; 2 uses
  %exitcond.not.i.i205 = icmp eq i64 %i.hh, %.sroa.2.0.copyload.sink.i
  br i1 %exitcond.not.i.i205, label %._crit_edge686.thread, label %scalar.ph1008, !llvm.loop !837

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206: ; preds = %scalar.ph1008, %vector.early.exit1025, %bb.am
  %storemerge.lcssa.i.i201 = phi i64 [ %.sink.i, %bb.am ], [ %i.he, %vector.early.exit1025 ], [ %storemerge3.i.i203, %scalar.ph1008 ] ; 2 uses
  %.not648682 = icmp eq i64 %storemerge.lcssa.i.i201, %.sroa.2.0.copyload.sink.i
  br i1 %.not648682, label %._crit_edge686.thread, label %.lr.ph685

.lr.ph685:                                        ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ap, i64 3584 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 7656
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 7664
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 7609
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 7648
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 7676
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 7672
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %invariant.op1301 = or i64 %.sroa.41.2, %i.bo
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph685, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233
  %.0105684 = phi i64 [ 0, %.lr.ph685 ], [ %i.mc, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233 ] ; 6 uses
  %.sroa.23.0683 = phi i64 [ %storemerge.lcssa.i.i201, %.lr.ph685 ], [ %.lcssa.i231, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233 ] ; 5 uses
  br i1 %i.am, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.sroa.23.0683 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !889
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !896 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !473 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !474
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ic
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.ie, align 1
  %i.if = lshr i64 %.0.copyload.i.i, 8
  %i.ig = invoke noundef ptr @_ZN7rocksdb8MemTable33NewRangeTombstoneIteratorInternalERKNS_11ReadOptionsEmb(ptr noundef nonnull align 16 dereferenceable(10624) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.if, i1 noundef zeroext %4)
          to label %bb.aq unwind label %bb.au     ; 7 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !889
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !896 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !473 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !474
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %reass.sub700 = sub i64 %i.io, %i.ip
  %i.iq = add i64 %reass.sub700, -8
  store ptr %i.il, ptr %16, align 8
  store i64 %i.iq, ptr %i.hj, align 8
  %i.ir = invoke noundef i64 @_ZN7rocksdb32FragmentedRangeTombstoneIterator26MaxCoveringTombstoneSeqnumERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(200) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ar unwind label %bb.av     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.is = load ptr, ptr %i.hs, align 8, !tbaa !889 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 112 ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !897
  %i.iv = icmp ugt i64 %i.ir, %i.iu
  br i1 %i.iv, label %bb.as, label %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ir, ptr %i.it, align 8, !tbaa !897
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 152
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !898 ; 3 uses
  %.not163 = icmp eq ptr %i.ix, null
  br i1 %.not163, label %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ig, i64 104
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !486 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 144
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !157
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !157
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 3                 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !487 ; 2 uses
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.jj, i64 %i.jh
  %.sroa.0.0.copyload.i = load ptr, ptr %i.jk, align 8, !tbaa !383
  %i.jl = getelementptr inbounds [16 x i8], ptr %i.jj, i64 %i.jh
  %.sroa.2.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.2.0.copyload.i218 = load i64, ptr %.sroa.2.0..sroa_idx.i217, align 8, !tbaa !169
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !56
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, i64 noundef 0, i64 noundef %i.jn, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i218)
          to label %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit unwind label %bb.aw ; 0 uses

bb.au:                                            ; preds = %bb.ap
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.av:                                            ; preds = %bb.aq
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit226

bb.aw:                                            ; preds = %bb.at
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit226

_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.at, %bb.as, %bb.ar
  %i.js = load ptr, ptr %i.ig, align 8, !tbaa !49
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(200) %i.ig) #36, !inline_history !19
  br label %bb.ax

_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit226: ; preds = %bb.aw, %bb.av
  %.pn164.pn = phi { ptr, i32 } [ %i.jq, %bb.av ], [ %i.jr, %bb.aw ]
  %i.jv = load ptr, ptr %i.ig, align 8, !tbaa !49
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(200) %i.ig) #36, !inline_history !19
  br label %bb.co

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EED2Ev.exit, %bb.ao
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 %.0105684 ; 2 uses
  store i8 0, ptr %i.jy, align 1, !tbaa !440
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.sroa.23.0683
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !889 ; 8 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !899 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !382
  %i.ke = icmp eq i8 %i.kd, 6
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 %.0105684 ; 2 uses
  %i.kg = zext i1 %i.ke to i8
  store i8 %i.kg, ptr %i.kf, align 1, !tbaa !440
  %i.kh = getelementptr inbounds nuw [160 x i8], ptr %11, i64 %.0105684 ; 23 uses
  store ptr %i.kc, ptr %i.kh, align 8, !tbaa !499
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store ptr %i.jy, ptr %i.ki, align 8, !tbaa !500
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  store ptr %i.kf, ptr %i.kj, align 8, !tbaa !501
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !896 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !502
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 136
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !900 ; 2 uses
  %.not168 = icmp eq ptr %i.ko, null
  br i1 %.not168, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 80
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !549
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kr = phi ptr [ %i.kq, %bb.ay ], [ null, %bb.ax ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !503
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !901
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !504
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ka, i64 152
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !898
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kh, i64 56
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !505
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  store i64 72057594037927935, ptr %i.kz, align 8, !tbaa !506
  %i.la = getelementptr inbounds nuw i8, ptr %i.kh, i64 88
  store ptr %0, ptr %i.la, align 8, !tbaa !507
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ka, i64 80
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !508
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ka, i64 112
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !897
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !509
  %i.lg = load ptr, ptr %i.hk, align 8, !tbaa !510
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !511
  %i.li = load ptr, ptr %i.hl, align 16, !tbaa !397
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kh, i64 96
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !512
  %i.lk = load i8, ptr %i.hm, align 1, !tbaa !326, !range !104, !noundef !105
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kh, i64 112
  store i8 %i.lk, ptr %i.ll, align 8, !tbaa !513
  %i.lm = load ptr, ptr %i.hn, align 16, !tbaa !514
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kh, i64 104
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !515
  %i.lo = load ptr, ptr %i.ho, align 16, !tbaa !328
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kh, i64 120
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !516
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kh, i64 128
  store ptr %5, ptr %i.lq, align 8, !tbaa !517
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kh, i64 136
  store ptr %3, ptr %i.lr, align 8, !tbaa !518
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ka, i64 121
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kh, i64 144
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !519
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kh, i64 113
  store i8 1, ptr %i.lu, align 1, !tbaa !520
  %i.lv = load i8, ptr %i.hp, align 4, !tbaa !407, !range !104, !noundef !105
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kh, i64 152
  store i8 %i.lv, ptr %i.lw, align 8, !tbaa !521
  %i.lx = load i32, ptr %i.hq, align 8, !tbaa !333
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kh, i64 156
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !522
  %i.lz = load ptr, ptr %i.kl, align 8, !tbaa !550
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %.0105684
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !383
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %.0105684
  store ptr %i.kh, ptr %i.mb, align 8, !tbaa !409
  %i.mc = add nuw i64 %.0105684, 1                ; 2 uses
  %i.md = add i64 %.sroa.23.0683, 1
  %umax.i230 = call i64 @llvm.umax.i64(i64 %.sroa.2.0.copyload.sink.i, i64 %i.md) ; 3 uses
  %i.me = add i64 %umax.i230, -1                  ; 2 uses
  %exitcond714.not885 = icmp eq i64 %.sroa.23.0683, %i.me
  br i1 %exitcond714.not885, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233, label %.lr.ph887.preheader

.lr.ph887.preheader:                              ; preds = %bb.az
  %i.mf = load i64, ptr %i.hr, align 8, !tbaa !886
  %.reass835.reass = or i64 %i.mf, %invariant.op1301
  br label %.lr.ph887

bb.ba:                                            ; preds = %.lr.ph887
  %exitcond714.not = icmp eq i64 %i.mh, %i.me
  br i1 %exitcond714.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233, label %.lr.ph887, !llvm.loop !831

.lr.ph887:                                        ; preds = %.lr.ph887.preheader, %bb.ba
  %i.mg = phi i64 [ %i.mh, %bb.ba ], [ %.sroa.23.0683, %.lr.ph887.preheader ]
  %i.mh = add i64 %i.mg, 1                        ; 4 uses
  %i.mi = shl nuw i64 1, %i.mh
  %i.mj = and i64 %.reass835.reass, %i.mi
  %.not.i232 = icmp eq i64 %i.mj, 0
  br i1 %.not.i232, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233_crit_edge889, label %bb.ba, !llvm.loop !831

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233_crit_edge889: ; preds = %.lr.ph887
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233, !llvm.loop !831

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233: ; preds = %bb.ba, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233_crit_edge889, %bb.az
  %.lcssa.i231 = phi i64 [ %umax.i230, %bb.az ], [ %i.mh, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233_crit_edge889 ], [ %umax.i230, %bb.ba ] ; 2 uses
  %.not648 = icmp eq i64 %.lcssa.i231, %.sroa.2.0.copyload.sink.i
  br i1 %.not648, label %bb.bb, label %bb.ao, !llvm.loop !838

bb.bb:                                            ; preds = %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 10192
  %i.ml = load ptr, ptr %i.mk, align 16, !tbaa !320 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 7676
  %i.mn = load i8, ptr %i.mm, align 4, !tbaa !407, !range !104, !noundef !105
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.gp, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.mp = load i8, ptr %i.gj, align 1, !tbaa !404, !range !104, !noundef !105
  %i.mq = trunc nuw i8 %i.mp to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.mr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 10600 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !335 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 10584
  %i.mv = invoke noundef zeroext i1 %i.mt(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef 2)
          to label %bb.be unwind label %bb.bf     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.mw = load <2 x ptr>, ptr %i.ms, align 8, !tbaa !409
  store <2 x ptr> %i.mw, ptr %i.mr, align 8, !tbaa !409
  br label %_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !335 ; 2 uses
  %.not.i.i234 = icmp eq ptr %i.my, null
  br i1 %.not.i.i234, label %.body, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mz = invoke noundef zeroext i1 %i.my(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %.body unwind label %bb.bh     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  call void @__clang_call_terminate(ptr %i.nb) #40
  unreachable

bb.bi:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  br label %_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit

_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit: ; preds = %bb.be, %bb.bc, %bb.bi
  %i.nc = phi i1 [ false, %bb.bi ], [ %i.mq, %bb.bc ], [ %i.mq, %bb.be ]
  %i.nd = load ptr, ptr %i.ml, align 8, !tbaa !49
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 120
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.ml, i64 noundef %i.mc, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @_ZN7rocksdbL9SaveValueEPvPKc, i1 noundef zeroext %i.mo, i1 noundef zeroext %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !335 ; 2 uses
  %.not.i235 = icmp eq ptr %i.nh, null
  br i1 %.not.i235, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ni = invoke noundef zeroext i1 %i.nh(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.nj = landingpad { ptr, i32 }
          catch ptr null
  %i.nk = extractvalue { ptr, i32 } %i.nj, 0
  call void @__clang_call_terminate(ptr %i.nk) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.nl = load i8, ptr %17, align 8, !tbaa !382
  %i.nm = icmp eq i8 %i.nl, 2
  br i1 %i.nm, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  br i1 %i.gq, label %.lr.ph.i.i237, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241

.lr.ph.i.i237:                                    ; preds = %bb.bm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !886, !noalias !902
  %i.np = or i64 %i.bo, %i.no
  %i.nq = or i64 %i.np, %.sroa.41.2               ; 2 uses
  %i.nr = sub nuw i64 %.sroa.2.0.copyload.sink.i, %.sink.i ; 3 uses
  %min.iters.check1028 = icmp ult i64 %i.nr, 32
  br i1 %min.iters.check1028, label %scalar.ph1027.preheader, label %vector.ph1029

vector.ph1029:                                    ; preds = %.lr.ph.i.i237
  %n.vec1030 = and i64 %i.nr, -32                 ; 3 uses
  %i.ns = add i64 %.sink.i, %n.vec1030
  %broadcast.splatinsert1031 = insertelement <32 x i64> poison, i64 %i.nq, i64 0
  %broadcast.splat1032 = shufflevector <32 x i64> %broadcast.splatinsert1031, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1033 = insertelement <32 x i64> poison, i64 %.sink.i, i64 0
  %broadcast.splat1034 = shufflevector <32 x i64> %broadcast.splatinsert1033, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction1035 = add <32 x i64> %broadcast.splat1034, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body.interim1041, %vector.ph1029
  %index1037 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1039, %vector.body.interim1041 ] ; 2 uses
  %vec.ind1038 = phi <32 x i64> [ %induction1035, %vector.ph1029 ], [ %vec.ind.next1040, %vector.body.interim1041 ] ; 2 uses
  %i.nt = shl nuw <32 x i64> splat (i64 1), %vec.ind1038
  %i.nu = and <32 x i64> %i.nt, %broadcast.splat1032
  %.fr1158 = freeze <32 x i64> %i.nu
  %i.nv = icmp eq <32 x i64> %.fr1158, zeroinitializer ; 2 uses
  %i.nw = bitcast <32 x i1> %i.nv to i32
  %.not1159 = icmp eq i32 %i.nw, 0
  br i1 %.not1159, label %vector.body.interim1041, label %vector.early.exit1044

vector.body.interim1041:                          ; preds = %vector.body1036
  %vec.ind.next1040 = add <32 x i64> %vec.ind1038, splat (i64 32)
  %index.next1039 = add nuw i64 %index1037, 32    ; 2 uses
  %i.nx = icmp eq i64 %index.next1039, %n.vec1030
  br i1 %i.nx, label %middle.block1042, label %vector.body1036, !llvm.loop !841

middle.block1042:                                 ; preds = %vector.body.interim1041
  %cmp.n1043 = icmp eq i64 %i.nr, %n.vec1030
  br i1 %cmp.n1043, label %._crit_edge691, label %scalar.ph1027.preheader

scalar.ph1027.preheader:                          ; preds = %.lr.ph.i.i237, %middle.block1042
  %storemerge3.i.i238.ph = phi i64 [ %.sink.i, %.lr.ph.i.i237 ], [ %i.ns, %middle.block1042 ]
  br label %scalar.ph1027

vector.early.exit1044:                            ; preds = %vector.body1036
  %i.ny = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.nv, i1 false)
  %i.nz = add i64 %index1037, %i.ny
  %i.oa = add i64 %.sink.i, %i.nz
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241

scalar.ph1027:                                    ; preds = %scalar.ph1027.preheader, %bb.bn
  %storemerge3.i.i238 = phi i64 [ %i.od, %bb.bn ], [ %storemerge3.i.i238.ph, %scalar.ph1027.preheader ] ; 3 uses
  %i.ob = shl nuw i64 1, %storemerge3.i.i238
  %i.oc = and i64 %i.ob, %i.nq
  %.not.i.i239 = icmp eq i64 %i.oc, 0
  br i1 %.not.i.i239, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241, label %bb.bn

bb.bn:                                            ; preds = %scalar.ph1027
  %i.od = add i64 %storemerge3.i.i238, 1          ; 2 uses
  %exitcond.not.i.i240 = icmp eq i64 %i.od, %.sroa.2.0.copyload.sink.i
  br i1 %exitcond.not.i.i240, label %._crit_edge691, label %scalar.ph1027, !llvm.loop !842

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241: ; preds = %scalar.ph1027, %vector.early.exit1044, %bb.bm
  %storemerge.lcssa.i.i236 = phi i64 [ %.sink.i, %bb.bm ], [ %i.oa, %vector.early.exit1044 ], [ %storemerge3.i.i238, %scalar.ph1027 ] ; 2 uses
  %.not649688 = icmp eq i64 %storemerge.lcssa.i.i236, %.sroa.2.0.copyload.sink.i
  br i1 %.not649688, label %._crit_edge691, label %.lr.ph690

.lr.ph690:                                        ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ap, i64 3584
  %i.of = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 5
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %invariant.op1302 = or i64 %.sroa.41.2, %i.bo
  br label %bb.bs

._crit_edge691:                                   ; preds = %bb.bn, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256, %middle.block1042, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit241
  %i.oj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !383 ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i242, label %bb.cn, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %._crit_edge691
  call void @_ZdaPv(ptr noundef nonnull %i.ok) #39
  br label %bb.cn

bb.bo:                                            ; preds = %_ZNSt8functionIFN7rocksdb6StatusEPKcbEEC2ERKS5_.exit
  %i.ol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !335 ; 2 uses
  %.not.i243 = icmp eq ptr %i.on, null
  br i1 %.not.i243, label %.body, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oo = invoke noundef zeroext i1 %i.on(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %.body unwind label %bb.bq     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #40
  unreachable

.body:                                            ; preds = %bb.bp, %bb.bo, %bb.bg, %bb.bf
  %.pn154 = phi { ptr, i32 } [ %i.mx, %bb.bf ], [ %i.ol, %bb.bp ], [ %i.mx, %bb.bg ], [ %i.ol, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %_ZN7rocksdb6StatusD2Ev.exit247

bb.br:                                            ; preds = %bb.bu
  %i.or = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %i.oh, align 8, !tbaa !383 ; 2 uses
  %.not.i.i245 = icmp eq ptr %i.os, null
  br i1 %.not.i.i245, label %_ZN7rocksdb6StatusD2Ev.exit247, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i246

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i246: ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.os) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit247

bb.bs:                                            ; preds = %.lr.ph690, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256
  %.sroa.7490.0689 = phi i64 [ %storemerge.lcssa.i.i236, %.lr.ph690 ], [ %.lcssa.i254, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256 ] ; 5 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %.sroa.7490.0689
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !889
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !899 ; 5 uses
  %.not.i248 = icmp eq ptr %i.ow, %17
  br i1 %.not.i248, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ox = load <4 x i8>, ptr %17, align 8, !tbaa !55
  store <4 x i8> %i.ox, ptr %i.ow, align 8, !tbaa !55
  %i.oy = load i8, ptr %i.of, align 4, !tbaa !524, !range !104, !noundef !105
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i8 %i.oy, ptr %i.oz, align 4, !tbaa !524
  %i.pa = load i8, ptr %i.og, align 1, !tbaa !523
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 5
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !523
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.pc = load ptr, ptr %i.oh, align 8, !tbaa !383 ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i249, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.271") align 8 %6, ptr noundef nonnull %i.pc)
          to label %.noexc251 unwind label %bb.br

.noexc251:                                        ; preds = %bb.bu
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !383
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc251, %bb.bt
  %i.pd = phi ptr [ %.pre.i, %.noexc251 ], [ null, %bb.bt ]
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !383
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !383 ; 2 uses
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !383
  %.not.i.i.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %i.pf) #39
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !383  ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i250

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i250: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #39
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i250, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, %bb.bs
  %i.pg = shl nuw i64 1, %.sroa.7490.0689
  %i.ph = load ptr, ptr %2, align 8, !tbaa !874
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 3848 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !886
  %i.pk = or i64 %i.pj, %i.pg
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !886
  %i.pl = add i64 %.sroa.7490.0689, 1
  %umax.i253 = call i64 @llvm.umax.i64(i64 %.sroa.2.0.copyload.sink.i, i64 %i.pl) ; 3 uses
  %i.pm = add i64 %umax.i253, -1                  ; 2 uses
  %exitcond715.not891 = icmp eq i64 %.sroa.7490.0689, %i.pm
  br i1 %exitcond715.not891, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256, label %.lr.ph892.preheader

.lr.ph892.preheader:                              ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  %i.pn = load i64, ptr %i.oi, align 8, !tbaa !886
  %.reass837.reass = or i64 %i.pn, %invariant.op1302
  br label %.lr.ph892

bb.bw:                                            ; preds = %.lr.ph892
  %exitcond715.not = icmp eq i64 %i.pp, %i.pm
  br i1 %exitcond715.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256, label %.lr.ph892, !llvm.loop !831

.lr.ph892:                                        ; preds = %.lr.ph892.preheader, %bb.bw
  %i.po = phi i64 [ %i.pp, %bb.bw ], [ %.sroa.7490.0689, %.lr.ph892.preheader ]
  %i.pp = add i64 %i.po, 1                        ; 4 uses
  %i.pq = shl nuw i64 1, %i.pp
  %i.pr = and i64 %.reass837.reass, %i.pq
  %.not.i255 = icmp eq i64 %i.pr, 0
  br i1 %.not.i255, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256_crit_edge894, label %bb.bw, !llvm.loop !831

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256_crit_edge894: ; preds = %.lr.ph892
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256, !llvm.loop !831

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256: ; preds = %bb.bw, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256_crit_edge894, %_ZN7rocksdb6StatusaSERKS0_.exit
  %.lcssa.i254 = phi i64 [ %umax.i253, %_ZN7rocksdb6StatusaSERKS0_.exit ], [ %i.pp, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit256_crit_edge894 ], [ %umax.i253, %bb.bw ] ; 2 uses
  %.not649 = icmp eq i64 %.lcssa.i254, %.sroa.2.0.copyload.sink.i
  br i1 %.not649, label %._crit_edge691, label %bb.bs, !llvm.loop !843

_ZN7rocksdb6StatusD2Ev.exit247:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i246, %bb.br, %.body
  %.pn161 = phi { ptr, i32 } [ %.pn154, %.body ], [ %i.or, %bb.br ], [ %i.or, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.co

.critedge:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !383 ; 2 uses
  %.not.i.i257 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i257, label %_ZN7rocksdb6StatusD2Ev.exit260, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i258

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i258: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.pt) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit260

_ZN7rocksdb6StatusD2Ev.exit260:                   ; preds = %.critedge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %._crit_edge686.thread

._crit_edge686.thread:                            ; preds = %bb.an, %middle.block1023, %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit206, %_ZN7rocksdb6StatusD2Ev.exit260
  br i1 %i.gq, label %.lr.ph.i.i262, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit266

.lr.ph.i.i262:                                    ; preds = %._crit_edge686.thread
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !886, !noalias !903
  %i.pw = or i64 %i.bo, %i.pv
  %i.px = or i64 %i.pw, %.sroa.41.2               ; 2 uses
  %i.py = sub nuw i64 %.sroa.2.0.copyload.sink.i, %.sink.i ; 3 uses
  %min.iters.check1047 = icmp ult i64 %i.py, 32
  br i1 %min.iters.check1047, label %scalar.ph1046.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %.lr.ph.i.i262
  %n.vec1049 = and i64 %i.py, -32                 ; 3 uses
  %i.pz = add i64 %.sink.i, %n.vec1049
  %broadcast.splatinsert1050 = insertelement <32 x i64> poison, i64 %i.px, i64 0
  %broadcast.splat1051 = shufflevector <32 x i64> %broadcast.splatinsert1050, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert1052 = insertelement <32 x i64> poison, i64 %.sink.i, i64 0
  %broadcast.splat1053 = shufflevector <32 x i64> %broadcast.splatinsert1052, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction1054 = add <32 x i64> %broadcast.splat1053, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body.interim1060, %vector.ph1048
  %index1056 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1058, %vector.body.interim1060 ] ; 2 uses
  %vec.ind1057 = phi <32 x i64> [ %induction1054, %vector.ph1048 ], [ %vec.ind.next1059, %vector.body.interim1060 ] ; 2 uses
  %i.qa = shl nuw <32 x i64> splat (i64 1), %vec.ind1057
  %i.qb = and <32 x i64> %i.qa, %broadcast.splat1051
  %.fr1160 = freeze <32 x i64> %i.qb
  %i.qc = icmp eq <32 x i64> %.fr1160, zeroinitializer ; 2 uses
  %i.qd = bitcast <32 x i1> %i.qc to i32
  %.not1161 = icmp eq i32 %i.qd, 0
  br i1 %.not1161, label %vector.body.interim1060, label %vector.early.exit1063

vector.body.interim1060:                          ; preds = %vector.body1055
  %vec.ind.next1059 = add <32 x i64> %vec.ind1057, splat (i64 32)
  %index.next1058 = add nuw i64 %index1056, 32    ; 2 uses
  %i.qe = icmp eq i64 %index.next1058, %n.vec1049
  br i1 %i.qe, label %middle.block1061, label %vector.body1055, !llvm.loop !846

middle.block1061:                                 ; preds = %vector.body.interim1060
  %cmp.n1062 = icmp eq i64 %i.py, %n.vec1049
  br i1 %cmp.n1062, label %.critedge182, label %scalar.ph1046.preheader

scalar.ph1046.preheader:                          ; preds = %.lr.ph.i.i262, %middle.block1061
  %storemerge3.i.i263.ph = phi i64 [ %.sink.i, %.lr.ph.i.i262 ], [ %i.pz, %middle.block1061 ]
  br label %scalar.ph1046

vector.early.exit1063:                            ; preds = %vector.body1055
  %i.qf = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.qc, i1 false)
  %i.qg = add i64 %index1056, %i.qf
  %i.qh = add i64 %.sink.i, %i.qg
  br label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit266

scalar.ph1046:                                    ; preds = %scalar.ph1046.preheader, %bb.bx
  %storemerge3.i.i263 = phi i64 [ %i.qk, %bb.bx ], [ %storemerge3.i.i263.ph, %scalar.ph1046.preheader ] ; 3 uses
  %i.qi = shl nuw i64 1, %storemerge3.i.i263
  %i.qj = and i64 %i.qi, %i.px
  %.not.i.i264 = icmp eq i64 %i.qj, 0
  br i1 %.not.i.i264, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit266, label %bb.bx

bb.bx:                                            ; preds = %scalar.ph1046
  %i.qk = add i64 %storemerge3.i.i263, 1          ; 2 uses
  %exitcond.not.i.i265 = icmp eq i64 %i.qk, %.sroa.2.0.copyload.sink.i
  br i1 %exitcond.not.i.i265, label %.critedge182, label %scalar.ph1046, !llvm.loop !847

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit266: ; preds = %scalar.ph1046, %vector.early.exit1063, %._crit_edge686.thread
  %storemerge.lcssa.i.i261 = phi i64 [ %.sink.i, %._crit_edge686.thread ], [ %i.qh, %vector.early.exit1063 ], [ %storemerge3.i.i263, %scalar.ph1046 ] ; 2 uses
  %.not650692 = icmp eq i64 %storemerge.lcssa.i.i261, %.sroa.2.0.copyload.sink.i
  br i1 %.not650692, label %.critedge182, label %.lr.ph696

.lr.ph696:                                        ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit266
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ap, i64 3584 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 7648
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ap, i64 3848
  %invariant.op1303 = or i64 %.sroa.41.2, %i.bo
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph696, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit300
  %.0695 = phi i64 [ 0, %.lr.ph696 ], [ %i.wi, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit300 ] ; 3 uses
  %.sroa.14.0693 = phi i64 [ %storemerge.lcssa.i.i261, %.lr.ph696 ], [ %.lcssa.i298, %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit300 ] ; 7 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %14, i64 %.0695
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !440, !range !104, !noundef !105
  %i.qr = trunc nuw i8 %i.qq to i1                ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %15, i64 %.0695
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !440, !range !104, !noundef !105
  %i.qu = trunc nuw i8 %i.qt to i1
  %.not = xor i1 %i.qr, true
  %or.cond6 = and i1 %.not, %i.qu
  br i1 %or.cond6, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.14.0693
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !889
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !899 ; 4 uses
  %i.qz = load i8, ptr %i.qy, align 8, !tbaa !382
  %i.ra = icmp eq i8 %i.qz, 0
  br i1 %i.ra, label %bb.ca, label %.thread638

bb.ca:                                            ; preds = %bb.bz
  store i8 6, ptr %i.qy, align 8, !tbaa !382
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.rb, i8 0, i64 5, i1 false)
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !383 ; 2 uses
  store ptr null, ptr %i.rc, align 8, !tbaa !383
  %.not.i.i.i.i.i268 = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i.i.i268, label %.thread638, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.rd) #39
  br label %.thread638

bb.cb:                                            ; preds = %bb.cg
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cc:                                            ; preds = %bb.by
  br i1 %i.qr, label %._crit_edge738, label %.thread638

._crit_edge738:                                   ; preds = %bb.cc
  %.phi.trans.insert739 = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.14.0693
  %.pre740 = load ptr, ptr %.phi.trans.insert739, align 8, !tbaa !889
  br label %bb.cd

.thread638:                                       ; preds = %bb.ca, %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.bz, %bb.cc
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.14.0693
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !889 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 72
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !899
  %i.rj = load i8, ptr %i.ri, align 8, !tbaa !382
  switch i8 %i.rj, label %bb.cd [
    i8 0, label %bb.cl
    i8 6, label %bb.cl
  ]

bb.cd:                                            ; preds = %._crit_edge738, %.thread638
  %i.rk = phi ptr [ %.pre740, %._crit_edge738 ], [ %i.rg, %.thread638 ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 136
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !900 ; 4 uses
  %.not156 = icmp eq ptr %i.rm, null
  br i1 %.not156, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 80
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !549 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !54
  store ptr %i.rp, ptr %i.rm, align 8, !tbaa !39
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !56 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !40
  br label %_ZNK7rocksdb19PinnableWideColumns12payload_sizeEv.exit

bb.cf:                                            ; preds = %bb.cd
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rk, i64 144
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !901 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !552 ; 7 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !552 ; 3 uses
  %i.rz = icmp eq ptr %i.rw, %i.ry
  br i1 %i.rz, label %_ZNK7rocksdb19PinnableWideColumns12payload_sizeEv.exit, label %iter.check1107

iter.check1107:                                   ; preds = %bb.cf
  %i.sa = ptrtoaddr ptr %i.ry to i64
  %i.sb = ptrtoaddr ptr %i.rw to i64
  %i.sc = add i64 %i.sa, -32
  %i.sd = sub i64 %i.sc, %i.sb                    ; 3 uses
  %i.se = lshr i64 %i.sd, 5
  %i.sf = add nuw nsw i64 %i.se, 1                ; 4 uses
  %min.iters.check1066 = icmp ult i64 %i.sd, 128
  br i1 %min.iters.check1066, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1067

vector.main.loop.iter.check1067:                  ; preds = %iter.check1107
  %min.iters.check1068 = icmp ult i64 %i.sd, 512
  br i1 %min.iters.check1068, label %vec.epilog.ph1111, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.main.loop.iter.check1067
  %i.sg = and i64 %i.sf, 15                       ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  %i.si = select i1 %i.sh, i64 16, i64 %i.sg      ; 2 uses
  %n.vec1070 = sub nsw i64 %i.sf, %i.si           ; 3 uses
  %i.sj = shl i64 %n.vec1070, 5
  %i.sk = getelementptr i8, ptr %i.rw, i64 %i.sj  ; 2 uses
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1098, %vector.body1071 ]
  %vec.phi1073 = phi <4 x i64> [ zeroinitializer, %vector.ph1069 ], [ %i.sp, %vector.body1071 ]
  %vec.phi1074 = phi <4 x i64> [ zeroinitializer, %vector.ph1069 ], [ %i.sq, %vector.body1071 ]
  %vec.phi1075 = phi <4 x i64> [ zeroinitializer, %vector.ph1069 ], [ %i.sr, %vector.body1071 ]
  %vec.phi1076 = phi <4 x i64> [ zeroinitializer, %vector.ph1069 ], [ %i.ss, %vector.body1071 ]
  %pointer.phi1077 = phi ptr [ %i.rw, %vector.ph1069 ], [ %ptr.ind1099, %vector.body1071 ] ; 2 uses
  %vector.gep1078 = getelementptr i8, ptr %pointer.phi1077, <4 x i64> <i64 0, i64 32, i64 64, i64 96> ; 8 uses
  %wide.gep1082 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep1078, i64 8
  %wide.gep1083 = getelementptr i8, <4 x ptr> %vector.gep1078, i64 136
  %wide.gep1084 = getelementptr i8, <4 x ptr> %vector.gep1078, i64 264
  %wide.gep1085 = getelementptr i8, <4 x ptr> %vector.gep1078, i64 392
end_hunk_0
