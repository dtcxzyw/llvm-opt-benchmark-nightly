Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %.085488 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dk, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.085488
  %i.cg = trunc i64 %.085488 to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !309
  %i.ci = or disjoint i64 %.085488, 1             ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ci
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !309
  %i.cm = or disjoint i64 %.085488, 2             ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cm
  %i.co = trunc i64 %i.cm to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !309
  %i.cq = or disjoint i64 %.085488, 3             ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cq
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !309
  %i.cu = or disjoint i64 %.085488, 4             ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cu
  %i.cw = trunc i64 %i.cu to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !309
  %i.cy = or disjoint i64 %.085488, 5             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cy
  %i.da = trunc i64 %i.cy to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.da, ptr %i.db, align 8, !tbaa !309
  %i.dc = or disjoint i64 %.085488, 6             ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc
  %i.de = trunc i64 %i.dc to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !309
  %i.dg = or disjoint i64 %.085488, 7             ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dg
  %i.di = trunc i64 %i.dg to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !309
  %i.dk = add nuw i64 %.085488, 8                 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !301

bb.f:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !178
  %i.dl = load ptr, ptr %i.ca, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  store ptr %i.dm, ptr %i.ca, align 8, !tbaa !176
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.g:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit
  invoke void @_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge unwind label %.thread317

._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge: ; preds = %bb.g
  %.pre630 = load ptr, ptr %i.ca, align 8, !tbaa !179
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge, %bb.f
  %i.dn = phi ptr [ %.pre630, %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge ], [ %i.dm, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !179 ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %._crit_edge541, label %.lr.ph540

.lr.ph540:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.phi.trans.insert.i164 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph540, %bb.cc
  %i.el = phi ptr [ %i.dp, %.lr.ph540 ], [ %i.tp, %bb.cc ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph540 ], [ %i.to, %bb.cc ]
  %.sroa.0265.0539 = phi ptr [ null, %.lr.ph540 ], [ %.sroa.0265.3, %bb.cc ] ; 4 uses
  %.sroa.24.0538 = phi i64 [ 0, %.lr.ph540 ], [ %.sroa.24.3, %bb.cc ] ; 3 uses
  %.sroa.18.0537 = phi i64 [ 0, %.lr.ph540 ], [ %.sroa.18.3, %bb.cc ] ; 3 uses
  %.sroa.15296.0536 = phi ptr [ null, %.lr.ph540 ], [ %.sroa.15296.3, %bb.cc ] ; 3 uses
  %.sroa.10294.0535 = phi ptr [ null, %.lr.ph540 ], [ %.sroa.10294.3, %bb.cc ] ; 3 uses
  %.sroa.0290.0534 = phi ptr [ null, %.lr.ph540 ], [ %.sroa.0290.5, %bb.cc ] ; 7 uses
  %i.en = load i64, ptr %i.dr, align 8, !tbaa !83 ; 2 uses
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 2 uses
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = icmp ne ptr %i.eo, null
  %.neg.i.i.i = sext i1 %i.eu to i64
  %i.ev = add nsw i64 %i.et, %.neg.i.i.i
  %i.ew = mul nsw i64 %i.ev, 42
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.ey = ptrtoint ptr %i.em to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %i.fc = add nsw i64 %i.ew, %i.fb
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !182 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.el to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 12
  %i.fi = add nsw i64 %i.fc, %i.fh                ; 2 uses
  %i.fj = sub i64 %i.en, %i.fi                    ; 4 uses
  %.sroa.0249.0.copyload = load i32, ptr %i.el, align 4, !tbaa !73 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !73 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !73 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fd, i64 -12
  %.not.i.i103 = icmp eq ptr %i.el, %i.fk
  br i1 %.not.i.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %i.dw, align 8, !tbaa !183
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef 504) #20
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.dt, align 8, !tbaa !180
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !185 ; 3 uses
  store ptr %i.fp, ptr %i.dw, align 8, !tbaa !181
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 504
  store ptr %i.fq, ptr %i.dv, align 8, !tbaa !182
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.fl, %bb.i ], [ %i.fp, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.do, align 8, !tbaa !186
  %i.fr = zext i32 %.sroa.0249.0.copyload to i64  ; 2 uses
  %i.fs = icmp ult i32 %.sroa.0249.0.copyload, %.sroa.15.0.copyload
  br i1 %i.fs, label %.lr.ph490, label %.critedge

.lr.ph490:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph490, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph490 ], [ %i.gc, %bb.l ] ; 2 uses
  %.sroa.0249.0489 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph490 ], [ %i.gb, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !69
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %i.gb = add i32 %.sroa.0249.0489, 1             ; 3 uses
  %i.gc = zext i32 %i.gb to i64
  %exitcond626.not = icmp eq i32 %i.gb, %.sroa.15.0.copyload
  br i1 %exitcond626.not, label %.critedge.thread, label %bb.k, !llvm.loop !302

.thread317:                                       ; preds = %bb.g
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie3KeyEED2Ev.exit236

bb.m:                                             ; preds = %.lr.ph.i, %bb.ce, %bb.cd, %._crit_edge541
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.critedge.thread
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0489, %bb.k ] ; 3 uses
  %.lcssa326 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.gg = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.gh = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.gh, label %.critedge.thread, label %bb.o

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.n, !llvm.loop !303

bb.o:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0539, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0539) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.gi = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %.lcssa326
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !55 ; 2 uses
  %.081496 = add nuw nsw i64 %.lcssa326, 1        ; 2 uses
  %i.gm = icmp samesign ult i64 %.081496, %i.gg
  br i1 %i.gm, label %.lr.ph505, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre636.a = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge506

.lr.ph505:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gn = fpext float %i.gl to double
  %i.go = zext i32 %.sroa.19.0.copyload to i64    ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.y, %._crit_edge528
  %.sroa.0290.1 = phi ptr [ %.sroa.0290.2.lcssa, %._crit_edge528 ], [ %.sroa.0290.0534, %bb.y ]
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.lr.ph505, %bb.v
  %i.gq = phi ptr [ %i.gi, %.lr.ph505 ], [ %i.hn, %bb.v ] ; 3 uses
  %.081504 = phi i64 [ %.081496, %.lr.ph505 ], [ %.081, %bb.v ] ; 6 uses
  %.081.in503 = phi i64 [ %.lcssa326, %.lr.ph505 ], [ %.081504, %bb.v ]
  %.082502 = phi double [ %i.gn, %.lr.ph505 ], [ %i.hs, %bb.v ] ; 2 uses
  %.sroa.0249.1501 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph505 ], [ %.sroa.0249.2, %bb.v ] ; 2 uses
  %.sroa.34.0500 = phi i64 [ 0, %.lr.ph505 ], [ %.sroa.34.1, %bb.v ] ; 6 uses
  %.sroa.23.0499 = phi i64 [ 0, %.lr.ph505 ], [ %.sroa.23.1, %bb.v ] ; 4 uses
  %.sroa.12.0498 = phi ptr [ null, %.lr.ph505 ], [ %.sroa.12.1, %bb.v ] ; 3 uses
  %.sroa.0265.1497 = phi ptr [ null, %.lr.ph505 ], [ %.sroa.0265.2, %bb.v ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.081.in503
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.go
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !55
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.081504
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.go
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gu, %i.gy
  br i1 %.not95, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gz = zext i32 %.sroa.0249.1501 to i64
  %i.ha = fptrunc double %.082502 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081504, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.gz
  %i.hb = bitcast float %i.ha to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.hb to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.go
  %i.hc = add i64 %.sroa.23.0499, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.hc, %.sroa.34.0500
  br i1 %.not.i.i116, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hd = lshr i64 %i.hc, 1
  %i.he = icmp ugt i64 %.sroa.34.0500, %i.hd
  %i.hf = icmp ugt i64 %.sroa.34.0500, 576460752303423487
  %i.hg = shl nuw nsw i64 %.sroa.34.0500, 1
  %spec.select.i.i119 = select i1 %i.hf, i64 1152921504606846975, i64 %i.hg
  %.0.i.i120 = select i1 %i.he, i64 %spec.select.i.i119, i64 %i.hc ; 3 uses
  %i.hh = shl i64 %.0.i.i120, 4
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hh) #22
          to label %.noexc125 unwind label %bb.u  ; 5 uses

.noexc125:                                        ; preds = %bb.s
  %i.hj = shl nuw i64 %.sroa.23.0499, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %.sroa.12.0498, i64 %i.hj, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1497, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.t, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1497) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.6 = phi ptr [ %.sroa.0265.1497, %bb.r ], [ %i.hi, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hi, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0498, %bb.r ], [ %i.hi, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hi, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0500, %bb.r ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0499 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hk, align 4
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hl = trunc i64 %.081504 to i32
  %.pre631 = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.t, %bb.q
  %i.hn = phi ptr [ %i.gq, %bb.q ], [ %.pre631, %bb.t ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1497, %bb.q ], [ %.sroa.0265.6, %bb.t ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0498, %bb.q ], [ %.sroa.12.2, %bb.t ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0499, %bb.q ], [ %i.hc, %bb.t ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0500, %bb.q ], [ %.sroa.34.2, %bb.t ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1501, %bb.q ], [ %i.hl, %bb.t ] ; 2 uses
  %.183 = phi double [ %.082502, %bb.q ], [ 0.000000e+00, %bb.t ]
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.081504
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !55
  %i.hr = fpext float %i.hq to double
  %i.hs = fadd double %.183, %i.hr                ; 2 uses
  %.081 = add nuw nsw i64 %.081504, 1             ; 2 uses
  %exitcond627.not = icmp eq i64 %.081, %i.gg
  br i1 %exitcond627.not, label %._crit_edge506.loopexit, label %bb.q, !llvm.loop !304

._crit_edge506.loopexit:                          ; preds = %bb.v
  %i.ht = fptrunc double %i.hs to float
  br label %._crit_edge506

._crit_edge506:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge, %._crit_edge506.loopexit
  %.pre-phi637.a = phi i64 [ %.pre636.a, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %i.go, %._crit_edge506.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %.sroa.0265.2, %._crit_edge506.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %.sroa.12.1, %._crit_edge506.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %.sroa.23.1, %._crit_edge506.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %.sroa.34.1, %._crit_edge506.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %.sroa.0249.2, %._crit_edge506.loopexit ]
  %.082.lcssa = phi float [ %i.gl, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge506_crit_edge ], [ %i.ht, %._crit_edge506.loopexit ]
  %i.hu = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.gg, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.hu
  %i.hv = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hv to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi637.a
  %i.hw = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.hw, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge506
  %i.hx = lshr i64 %i.hw, 1
  %i.hy = icmp ugt i64 %.sroa.34.0.lcssa, %i.hx
  %i.hz = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.ia = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.hz, i64 1152921504606846975, i64 %i.ia
  %.0.i.i131 = select i1 %i.hy, i64 %spec.select.i.i130, i64 %i.hw
  %i.ib = shl i64 %.0.i.i131, 4
  %i.ic = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ib) #22
          to label %.noexc137 unwind label %bb.z  ; 5 uses

.noexc137:                                        ; preds = %bb.w
  %i.id = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ic, ptr align 4 %.sroa.12.0.lcssa, i64 %i.id, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.x, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge506, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge506 ], [ %i.ic, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ic, %.noexc137 ] ; 10 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge506 ], [ %i.ic, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ic, %.noexc137 ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ie, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.if = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.ig = icmp eq i32 %i.if, 131072
  br i1 %i.ig, label %bb.y, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.y:                                             ; preds = %bb.x
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.hw
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ih)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %bb.p

bb.z:                                             ; preds = %bb.w
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.y, %bb.x
  %i.ij = icmp eq i64 %i.en, %i.fi
  br i1 %i.ij, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.hw, ptr %i.dy, align 8, !tbaa !112
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not549 = icmp eq i64 %i.hw, 0
  br i1 %.not549, label %._crit_edge528, label %.lr.ph527

.lr.ph527:                                        ; preds = %bb.ab
  %i.ik = shl i64 %i.fj, 5
  %i.il = trunc i64 %i.fj to i32
  %invariant.op = xor i64 %i.ik, %i.fj
  br label %bb.ac

._crit_edge528:                                   ; preds = %bb.cb, %bb.ab
  %.sroa.0290.2.lcssa = phi ptr [ %.sroa.0290.0534, %bb.ab ], [ %.sroa.0290.4, %bb.cb ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0535, %bb.ab ], [ %.sroa.10294.2, %bb.cb ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0536, %bb.ab ], [ %.sroa.15296.2, %bb.cb ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0537, %bb.ab ], [ %.sroa.18.2, %bb.cb ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0538, %bb.ab ], [ %.sroa.24.2, %bb.cb ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.p

bb.ac:                                            ; preds = %.lr.ph527, %bb.cb
  %.080525 = phi i64 [ 0, %.lr.ph527 ], [ %i.tn, %bb.cb ] ; 3 uses
  %.sroa.24.1524 = phi i64 [ %.sroa.24.0538, %.lr.ph527 ], [ %.sroa.24.2, %bb.cb ] ; 5 uses
  %.sroa.18.1523 = phi i64 [ %.sroa.18.0537, %.lr.ph527 ], [ %.sroa.18.2, %bb.cb ] ; 4 uses
  %.sroa.15296.1522 = phi ptr [ %.sroa.15296.0536, %.lr.ph527 ], [ %.sroa.15296.2, %bb.cb ] ; 2 uses
  %.sroa.10294.1521 = phi ptr [ %.sroa.10294.0535, %.lr.ph527 ], [ %.sroa.10294.2, %bb.cb ] ; 3 uses
  %.sroa.0290.2519 = phi ptr [ %.sroa.0290.0534, %.lr.ph527 ], [ %.sroa.0290.4, %bb.cb ] ; 12 uses
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.080525 ; 8 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !188
  %i.ip = zext i32 %i.io to i64                   ; 5 uses
  %i.iq = load i32, ptr %i.im, align 4, !tbaa !189
  %i.ir = zext i32 %i.iq to i64                   ; 3 uses
  %i.is = load ptr, ptr %i.h, align 8, !tbaa !60  ; 3 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %i.ir ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !69
  %i.iw = zext i32 %i.iv to i64                   ; 4 uses
  %.079513 = add nuw nsw i64 %i.ip, 1             ; 3 uses
  %i.ix = icmp samesign ult i64 %.079513, %i.iw
  br i1 %i.ix, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %bb.ac
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !190
  %i.ja = zext i32 %i.iz to i64                   ; 2 uses
  %i.jb = add nsw i64 %i.iw, -1
  %.0858 = add nuw nsw i64 %i.ir, 1               ; 2 uses
  %i.jc = icmp samesign ult i64 %.0858, %i.ja
  br label %.preheader

.loopexit:                                        ; preds = %bb.ad, %.preheader
  %.079 = add nuw nsw i64 %.079515, 1             ; 2 uses
  %exitcond628.not = icmp eq i64 %.079, %i.iw
  br i1 %exitcond628.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.079515 = phi i64 [ %.079513, %.preheader.lr.ph ], [ %.079, %.loopexit ] ; 5 uses
  %.079.in514 = phi i64 [ %i.ip, %.preheader.lr.ph ], [ %.079515, %.loopexit ]
  br i1 %i.jc, label %.lr.ph861, label %.loopexit

bb.ad:                                            ; preds = %.lr.ph861
  %.0 = add nuw nsw i64 %.0860, 1                 ; 2 uses
  %i.jd = icmp samesign ult i64 %.0, %i.ja
  br i1 %i.jd, label %.lr.ph861, label %.loopexit, !llvm.loop !305

.lr.ph861:                                        ; preds = %.preheader, %bb.ad
  %.0860 = phi i64 [ %.0, %bb.ad ], [ %.0858, %.preheader ] ; 3 uses
  %.0.in859 = phi i64 [ %.0860, %bb.ad ], [ %i.ir, %.preheader ]
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.0.in859
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !68
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.079515
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !55
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.0860
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !68
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.079515
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !55
  %.not = icmp eq i8 %i.jh, %i.jl
  br i1 %.not, label %bb.ad, label %.thread, !llvm.loop !305

.loopexit324:                                     ; preds = %bb.al, %bb.au, %bb.bz, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %.sroa.0290.3.ph = phi ptr [ %.sroa.0290.2519, %bb.au ], [ %.sroa.0290.2519, %bb.al ], [ %.sroa.0290.4, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i ], [ %.sroa.0290.4, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i ], [ %.sroa.0290.4, %bb.bz ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.bw, %bb.be, %.noexc.i.i, %.noexc3.i.i
  %.sroa.0290.3.ph325 = phi ptr [ %.sroa.0290.4, %.noexc.i.i ], [ %.sroa.0290.2519, %.invoke ], [ %.sroa.0290.4, %.noexc3.i.i ], [ %.sroa.0290.4, %bb.bw ], [ %.sroa.0290.4, %bb.be ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %.loopexit, %.lr.ph861, %bb.ac
  %.079.in348 = phi i64 [ %.079.in514, %.lr.ph861 ], [ %i.ip, %bb.ac ], [ %i.jb, %.loopexit ] ; 2 uses
  %.079346 = phi i64 [ %.079515, %.lr.ph861 ], [ %.079513, %bb.ac ], [ %i.iw, %.loopexit ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.im, i64 12 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !193 ; 2 uses
  %i.jo = load ptr, ptr %i.it, align 8, !tbaa !68
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ip
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !55
  %i.jr = zext i8 %i.jq to i64
  %.reass.reass = xor i64 %i.jr, %invariant.op
  %i.js = load i64, ptr %i.be, align 8, !tbaa !111
  %i.jt = and i64 %.reass.reass, %i.js
  %i.ju = load ptr, ptr %i.dz, align 8, !tbaa !165
  %i.jv = getelementptr inbounds nuw [12 x i8], ptr %i.ju, i64 %i.jt ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !55
  %i.jy = fcmp ogt float %i.jn, %i.jx
  br i1 %i.jy, label %bb.ae, label %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit

bb.ae:                                            ; preds = %.thread
  %i.jz = load i64, ptr %i.bg, align 8, !tbaa !85
  store i32 %i.il, ptr %i.jv, align 4, !tbaa !134
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !135
  store float %i.jn, ptr %i.jw, align 4, !tbaa !55
  %.pre632 = load i32, ptr %i.in, align 4, !tbaa !188
  %.pre633 = zext i32 %.pre632 to i64
  br label %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit

_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit: ; preds = %bb.ae, %.thread
  %.pre-phi = phi i64 [ %.pre633, %bb.ae ], [ %i.ip, %.thread ]
  %i.kc = icmp eq i64 %.079.in348, %.pre-phi
  br i1 %i.kc, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit
  %i.kd = load i32, ptr %i.im, align 4, !tbaa !189
  %i.ke = zext i32 %i.kd to i64
  %i.kf = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.ke
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !68
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.079.in348
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !55
  %i.kk = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.kl = add i64 %i.kk, 1                        ; 3 uses
  %i.km = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i140 = icmp ugt i64 %i.kl, %i.km
  br i1 %.not.i.i140, label %bb.ag, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141: ; preds = %bb.af
  %.pre.i143 = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kn = lshr i64 %i.kl, 1
  %i.ko = icmp ugt i64 %i.km, %i.kn
  %i.kp = shl nuw i64 %i.km, 1
  %.inv.i.i144 = icmp sgt i64 %i.km, -1
  %spec.select.i.i145 = select i1 %.inv.i.i144, i64 %i.kp, i64 -1
  %.0.i.i146 = select i1 %i.ko, i64 %spec.select.i.i145, i64 %i.kl ; 2 uses
  %i.kq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i146) #22
          to label %.noexc152 unwind label %bb.an ; 5 uses

.noexc152:                                        ; preds = %bb.ag
  %i.kr = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kq, ptr align 1 %i.kr, i64 %i.kk, i1 false)
  %i.ks = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.kq, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i147 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i147, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148: ; preds = %.noexc152
  call void @_ZdaPv(ptr noundef nonnull %i.ks) #20
  %.pre2.pre.i149 = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148, %.noexc152
  %.pre2.i151 = phi i64 [ %.pre2.pre.i149, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148 ], [ %i.kk, %.noexc152 ]
  store ptr %i.kq, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  store ptr %i.kq, ptr %i.ea, align 8, !tbaa !136
  store i64 %.0.i.i146, ptr %i.bj, align 8, !tbaa !170
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141
  %i.kt = phi i64 [ %i.kk, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141 ], [ %.pre2.i151, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150 ]
  %i.ku = phi ptr [ %.pre.i143, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141 ], [ %i.kq, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kt
  store i8 %i.kj, ptr %i.kv, align 1, !tbaa !55
  %i.kw = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.kx = add i64 %i.kw, 1
  store i64 %i.kx, ptr %i.bg, align 8, !tbaa !85
  %i.ky = load i64, ptr %i.dr, align 8, !tbaa !83 ; 3 uses
  %i.kz = icmp eq i64 %i.ky, 4294967295
  br i1 %i.kz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.la = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.am

.invoke:                                          ; preds = %bb.ar, %bb.ai
  %i.lb = phi ptr [ %i.la, %bb.ai ], [ %i.mr, %bb.ar ]
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.lc = load i64, ptr %i.eb, align 8, !tbaa !86 ; 6 uses
  %i.ld = shl i64 %i.lc, 6
  %i.le = icmp eq i64 %i.ky, %i.ld
  br i1 %i.le, label %bb.ak, label %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit

bb.ak:                                            ; preds = %bb.aj
  %i.lf = add i64 %i.lc, 1                        ; 5 uses
  %i.lg = load i64, ptr %i.ec, align 8, !tbaa !87 ; 4 uses
  %.not.i.i.i154 = icmp ugt i64 %i.lf, %i.lg
  br i1 %.not.i.i.i154, label %bb.al, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.lh = lshr i64 %i.lf, 1
  %i.li = icmp ugt i64 %i.lg, %i.lh
  %i.lj = icmp ugt i64 %i.lg, 1152921504606846975
  %i.lk = shl nuw nsw i64 %i.lg, 1
  %spec.select.i.i.i155 = select i1 %i.lj, i64 2305843009213693951, i64 %i.lk
  %.0.i.i.i156 = select i1 %i.li, i64 %spec.select.i.i.i155, i64 %i.lf ; 2 uses
  %i.ll = shl i64 %.0.i.i.i156, 3
  %i.lm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ll) #22
          to label %.noexc161 unwind label %.loopexit324 ; 4 uses

.noexc161:                                        ; preds = %bb.al
  %i.ln = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.lo = shl i64 %i.lc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr align 8 %i.ln, i64 %i.lo, i1 false)
  %i.lp = load ptr, ptr %i.by, align 8, !tbaa !51 ; 2 uses
  store ptr %i.lm, ptr %i.by, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i157 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i.i.i.i.i157, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158: ; preds = %.noexc161
  call void @_ZdaPv(ptr noundef nonnull %i.lp) #20
  %.pre.pre.i = load i64, ptr %i.eb, align 8, !tbaa !86
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158, %.noexc161
  %.pre.i159 = phi i64 [ %.pre.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158 ], [ %i.lc, %.noexc161 ]
  store ptr %i.lm, ptr %i.ed, align 8, !tbaa !88
  store ptr %i.lm, ptr %i.ee, align 8, !tbaa !89
  store i64 %.0.i.i.i156, ptr %i.ec, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i, %bb.ak
  %i.lq = phi i64 [ %.pre.i159, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i ], [ %i.lc, %bb.ak ] ; 3 uses
  %i.lr = icmp ugt i64 %i.lf, %i.lq
  br i1 %i.lr, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i
  %i.ls = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lq
  %i.lu = shl i64 %i.lc, 3
  %i.lv = add i64 %i.lu, 8
  %i.lw = shl i64 %i.lq, 3
  %i.lx = sub i64 %i.lv, %i.lw
  call void @llvm.memset.p0.i64(ptr align 8 %i.lt, i8 0, i64 %i.lx, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i
  store i64 %i.lf, ptr %i.eb, align 8, !tbaa !86
  %.pre6.pre.i = load i64, ptr %i.dr, align 8, !tbaa !83
  br label %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit

bb.am:                                            ; preds = %bb.ai
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.la) #21
  br label %.body

_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit: ; preds = %bb.aj, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i
  %.pre6.i = phi i64 [ %.pre6.pre.i, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i ], [ %i.ky, %bb.aj ]
  %i.lz = add i64 %.pre6.i, 1
  store i64 %i.lz, ptr %i.dr, align 8, !tbaa !83
  %.pre634 = trunc i64 %.079346 to i32
  br label %bb.bb

bb.an:                                            ; preds = %bb.ag
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_3KeyEEEvmmfc.exit
  %i.mb = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.mc = add i64 %i.mb, 1                        ; 3 uses
  %i.md = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i162 = icmp ugt i64 %i.mc, %i.md
  br i1 %.not.i.i162, label %bb.ap, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i163: ; preds = %bb.ao
  %.pre.i165 = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.me = lshr i64 %i.mc, 1
end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_10ReverseKeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %.not.i.i.i102 = icmp eq ptr %i.cb, %i.ce
  br i1 %.not.i.i.i102, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.085486 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dk, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.085486
  %i.cg = trunc i64 %.085486 to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !353
  %i.ci = or disjoint i64 %.085486, 1             ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ci
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !353
  %i.cm = or disjoint i64 %.085486, 2             ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cm
  %i.co = trunc i64 %i.cm to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !353
  %i.cq = or disjoint i64 %.085486, 3             ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cq
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !353
  %i.cu = or disjoint i64 %.085486, 4             ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cu
  %i.cw = trunc i64 %i.cu to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !353
  %i.cy = or disjoint i64 %.085486, 5             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cy
  %i.da = trunc i64 %i.cy to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.da, ptr %i.db, align 8, !tbaa !353
  %i.dc = or disjoint i64 %.085486, 6             ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc
  %i.de = trunc i64 %i.dc to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !353
  %i.dg = or disjoint i64 %.085486, 7             ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dg
  %i.di = trunc i64 %i.dg to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !353
  %i.dk = add nuw i64 %.085486, 8                 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !345

bb.f:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !178
  %i.dl = load ptr, ptr %i.ca, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  store ptr %i.dm, ptr %i.ca, align 8, !tbaa !176
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.g:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit
  invoke void @_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge unwind label %.thread317

._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge: ; preds = %bb.g
  %.pre627 = load ptr, ptr %i.ca, align 8, !tbaa !179
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge, %bb.f
  %i.dn = phi ptr [ %.pre627, %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge ], [ %i.dm, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !179 ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %._crit_edge538, label %.lr.ph537

.lr.ph537:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.phi.trans.insert.i164 = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph537, %bb.cb
  %i.el = phi ptr [ %i.dp, %.lr.ph537 ], [ %i.tr, %bb.cb ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph537 ], [ %i.tq, %bb.cb ]
  %.sroa.0265.0536 = phi ptr [ null, %.lr.ph537 ], [ %.sroa.0265.3, %bb.cb ] ; 4 uses
  %.sroa.24.0535 = phi i64 [ 0, %.lr.ph537 ], [ %.sroa.24.3, %bb.cb ] ; 3 uses
  %.sroa.18.0534 = phi i64 [ 0, %.lr.ph537 ], [ %.sroa.18.3, %bb.cb ] ; 3 uses
  %.sroa.15296.0533 = phi ptr [ null, %.lr.ph537 ], [ %.sroa.15296.3, %bb.cb ] ; 3 uses
  %.sroa.10294.0532 = phi ptr [ null, %.lr.ph537 ], [ %.sroa.10294.3, %bb.cb ] ; 3 uses
  %.sroa.0290.0531 = phi ptr [ null, %.lr.ph537 ], [ %.sroa.0290.5, %bb.cb ] ; 7 uses
  %i.en = load i64, ptr %i.dr, align 8, !tbaa !83 ; 2 uses
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !180 ; 2 uses
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !180
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = icmp ne ptr %i.eo, null
  %.neg.i.i.i = sext i1 %i.eu to i64
  %i.ev = add nsw i64 %i.et, %.neg.i.i.i
  %i.ew = mul nsw i64 %i.ev, 42
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !181
  %i.ey = ptrtoint ptr %i.em to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 12
  %i.fc = add nsw i64 %i.ew, %i.fb
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !182 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.el to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 12
  %i.fi = add nsw i64 %i.fc, %i.fh                ; 2 uses
  %i.fj = sub i64 %i.en, %i.fi                    ; 2 uses
  %.sroa.0249.0.copyload = load i32, ptr %i.el, align 4, !tbaa !73 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !73 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !73 ; 3 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fd, i64 -12
  %.not.i.i103 = icmp eq ptr %i.el, %i.fk
  br i1 %.not.i.i103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %i.dw, align 8, !tbaa !183
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef 504) #20
  %i.fn = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.dt, align 8, !tbaa !180
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !185 ; 3 uses
  store ptr %i.fp, ptr %i.dw, align 8, !tbaa !181
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 504
  store ptr %i.fq, ptr %i.dv, align 8, !tbaa !182
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.fl, %bb.i ], [ %i.fp, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.do, align 8, !tbaa !186
  %i.fr = zext i32 %.sroa.0249.0.copyload to i64  ; 2 uses
  %i.fs = icmp ult i32 %.sroa.0249.0.copyload, %.sroa.15.0.copyload
  br i1 %i.fs, label %.lr.ph488, label %.critedge

.lr.ph488:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph488, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph488 ], [ %i.gc, %bb.l ] ; 2 uses
  %.sroa.0249.0487 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph488 ], [ %i.gb, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !164
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %i.gb = add i32 %.sroa.0249.0487, 1             ; 3 uses
  %i.gc = zext i32 %i.gb to i64
  %exitcond623.not = icmp eq i32 %i.gb, %.sroa.15.0.copyload
  br i1 %exitcond623.not, label %.critedge.thread, label %bb.k, !llvm.loop !346

.thread317:                                       ; preds = %bb.g
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236

bb.m:                                             ; preds = %.critedge.thread
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0487, %bb.k ] ; 3 uses
  %.lcssa326 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.gf = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.gg = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.gg, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.cb unwind label %bb.m, !llvm.loop !347

bb.n:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0536, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0536) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.gh = load ptr, ptr %i.h, align 8, !tbaa !160 ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %.lcssa326
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !55 ; 2 uses
  %.081494 = add nuw nsw i64 %.lcssa326, 1        ; 2 uses
  %i.gl = icmp samesign ult i64 %.081494, %i.gf
  br i1 %i.gl, label %.lr.ph503, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre633.a = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge504

.lr.ph503:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gm = fpext float %i.gk to double
  %i.gn = zext i32 %.sroa.19.0.copyload to i64    ; 3 uses
  %i.go = sub nsw i64 0, %i.gn                    ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.x, %._crit_edge525
  %.sroa.0290.1 = phi ptr [ %.sroa.0290.2.lcssa, %._crit_edge525 ], [ %.sroa.0290.0531, %bb.x ]
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph503, %bb.u
  %i.gq = phi ptr [ %i.gh, %.lr.ph503 ], [ %i.hp, %bb.u ] ; 3 uses
  %.081502 = phi i64 [ %.081494, %.lr.ph503 ], [ %.081, %bb.u ] ; 6 uses
  %.081.in501 = phi i64 [ %.lcssa326, %.lr.ph503 ], [ %.081502, %bb.u ]
  %.082500 = phi double [ %i.gm, %.lr.ph503 ], [ %i.hu, %bb.u ] ; 2 uses
  %.sroa.0249.1499 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph503 ], [ %.sroa.0249.2, %bb.u ] ; 2 uses
  %.sroa.34.0498 = phi i64 [ 0, %.lr.ph503 ], [ %.sroa.34.1, %bb.u ] ; 6 uses
  %.sroa.23.0497 = phi i64 [ 0, %.lr.ph503 ], [ %.sroa.23.1, %bb.u ] ; 4 uses
  %.sroa.12.0496 = phi ptr [ null, %.lr.ph503 ], [ %.sroa.12.1, %bb.u ] ; 3 uses
  %.sroa.0265.1495 = phi ptr [ null, %.lr.ph503 ], [ %.sroa.0265.2, %bb.u ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.081.in501
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !163
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.go
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !55
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.081502
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !163
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %i.go
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gv, %i.ha
  br i1 %.not95, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hb = zext i32 %.sroa.0249.1499 to i64
  %i.hc = fptrunc double %.082500 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081502, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.hb
  %i.hd = bitcast float %i.hc to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.hd to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.gn
  %i.he = add i64 %.sroa.23.0497, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.he, %.sroa.34.0498
  br i1 %.not.i.i116, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hf = lshr i64 %i.he, 1
  %i.hg = icmp ugt i64 %.sroa.34.0498, %i.hf
  %i.hh = icmp ugt i64 %.sroa.34.0498, 576460752303423487
  %i.hi = shl nuw nsw i64 %.sroa.34.0498, 1
  %spec.select.i.i119 = select i1 %i.hh, i64 1152921504606846975, i64 %i.hi
  %.0.i.i120 = select i1 %i.hg, i64 %spec.select.i.i119, i64 %i.he ; 3 uses
  %i.hj = shl i64 %.0.i.i120, 4
  %i.hk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hj) #22
          to label %.noexc125 unwind label %bb.t  ; 5 uses

.noexc125:                                        ; preds = %bb.r
  %i.hl = shl nuw i64 %.sroa.23.0497, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr align 4 %.sroa.12.0496, i64 %i.hl, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1495, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.s, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1495) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.6 = phi ptr [ %.sroa.0265.1495, %bb.q ], [ %i.hk, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hk, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0496, %bb.q ], [ %i.hk, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hk, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0498, %bb.q ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0497 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hm, align 4
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hn = trunc i64 %.081502 to i32
  %.pre628 = load ptr, ptr %i.h, align 8, !tbaa !160
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  %i.hp = phi ptr [ %i.gq, %bb.p ], [ %.pre628, %bb.s ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1495, %bb.p ], [ %.sroa.0265.6, %bb.s ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0496, %bb.p ], [ %.sroa.12.2, %bb.s ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0497, %bb.p ], [ %i.he, %bb.s ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0498, %bb.p ], [ %.sroa.34.2, %bb.s ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1499, %bb.p ], [ %i.hn, %bb.s ] ; 2 uses
  %.183 = phi double [ %.082500, %bb.p ], [ 0.000000e+00, %bb.s ]
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %.081502
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !55
  %i.ht = fpext float %i.hs to double
  %i.hu = fadd double %.183, %i.ht                ; 2 uses
  %.081 = add nuw nsw i64 %.081502, 1             ; 2 uses
  %exitcond624.not = icmp eq i64 %.081, %i.gf
  br i1 %exitcond624.not, label %._crit_edge504.loopexit, label %bb.p, !llvm.loop !348

._crit_edge504.loopexit:                          ; preds = %bb.u
  %i.hv = fptrunc double %i.hu to float
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge, %._crit_edge504.loopexit
  %.pre-phi634.a = phi i64 [ %.pre633.a, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %i.gn, %._crit_edge504.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %.sroa.0265.2, %._crit_edge504.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %.sroa.12.1, %._crit_edge504.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %.sroa.23.1, %._crit_edge504.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %.sroa.34.1, %._crit_edge504.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %.sroa.0249.2, %._crit_edge504.loopexit ]
  %.082.lcssa = phi float [ %i.gk, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge504_crit_edge ], [ %i.hv, %._crit_edge504.loopexit ]
  %i.hw = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.gf, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.hw
  %i.hx = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hx to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi634.a
  %i.hy = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.hy, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge504
  %i.hz = lshr i64 %i.hy, 1
  %i.ia = icmp ugt i64 %.sroa.34.0.lcssa, %i.hz
  %i.ib = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.ic = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic
  %.0.i.i131 = select i1 %i.ia, i64 %spec.select.i.i130, i64 %i.hy
  %i.id = shl i64 %.0.i.i131, 4
  %i.ie = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #22
          to label %.noexc137 unwind label %bb.y  ; 5 uses

.noexc137:                                        ; preds = %bb.v
  %i.if = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ie, ptr align 4 %.sroa.12.0.lcssa, i64 %i.if, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.w, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge504, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge504 ], [ %i.ie, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ie, %.noexc137 ] ; 10 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge504 ], [ %i.ie, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.ie, %.noexc137 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ig, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ih = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.ii = icmp eq i32 %i.ih, 131072
  br i1 %i.ii, label %bb.x, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.x:                                             ; preds = %bb.w
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.hy
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ij)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %bb.o

bb.y:                                             ; preds = %bb.v
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.x, %bb.w
  %i.il = icmp eq i64 %i.en, %i.fi
  br i1 %i.il, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.hy, ptr %i.dy, align 8, !tbaa !112
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not546 = icmp eq i64 %i.hy, 0
  br i1 %.not546, label %._crit_edge525, label %.lr.ph524

.lr.ph524:                                        ; preds = %bb.aa
  %i.im = trunc i64 %i.fj to i32
  br label %bb.ab

._crit_edge525:                                   ; preds = %bb.ca, %bb.aa
  %.sroa.0290.2.lcssa = phi ptr [ %.sroa.0290.0531, %bb.aa ], [ %.sroa.0290.4, %bb.ca ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0532, %bb.aa ], [ %.sroa.10294.2, %bb.ca ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0533, %bb.aa ], [ %.sroa.15296.2, %bb.ca ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0534, %bb.aa ], [ %.sroa.18.2, %bb.ca ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0535, %bb.aa ], [ %.sroa.24.2, %bb.ca ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.cb unwind label %bb.o

bb.ab:                                            ; preds = %.lr.ph524, %bb.ca
  %.080522 = phi i64 [ 0, %.lr.ph524 ], [ %i.tp, %bb.ca ] ; 3 uses
  %.sroa.24.1521 = phi i64 [ %.sroa.24.0535, %.lr.ph524 ], [ %.sroa.24.2, %bb.ca ] ; 5 uses
  %.sroa.18.1520 = phi i64 [ %.sroa.18.0534, %.lr.ph524 ], [ %.sroa.18.2, %bb.ca ] ; 4 uses
  %.sroa.15296.1519 = phi ptr [ %.sroa.15296.0533, %.lr.ph524 ], [ %.sroa.15296.2, %bb.ca ] ; 2 uses
  %.sroa.10294.1518 = phi ptr [ %.sroa.10294.0532, %.lr.ph524 ], [ %.sroa.10294.2, %bb.ca ] ; 3 uses
  %.sroa.0290.2516 = phi ptr [ %.sroa.0290.0531, %.lr.ph524 ], [ %.sroa.0290.4, %bb.ca ] ; 12 uses
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.080522 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !188
  %i.iq = zext i32 %i.ip to i64                   ; 4 uses
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !189
  %i.is = zext i32 %i.ir to i64                   ; 3 uses
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !160 ; 3 uses
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !164
  %i.ix = zext i32 %i.iw to i64                   ; 4 uses
  %.079511 = add nuw nsw i64 %i.iq, 1             ; 3 uses
  %i.iy = icmp samesign ult i64 %.079511, %i.ix
  br i1 %i.iy, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %bb.ab
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !190
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = add nsw i64 %i.ix, -1
  %.0855 = add nuw nsw i64 %i.is, 1               ; 2 uses
  %i.jd = icmp samesign ult i64 %.0855, %i.jb
  br label %.preheader

.loopexit:                                        ; preds = %bb.ac, %.preheader
  %.079 = add nuw nsw i64 %.079513, 1             ; 2 uses
  %exitcond625.not = icmp eq i64 %.079, %i.ix
  br i1 %exitcond625.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.079513 = phi i64 [ %.079511, %.preheader.lr.ph ], [ %.079, %.loopexit ] ; 3 uses
  %.079.in512 = phi i64 [ %i.iq, %.preheader.lr.ph ], [ %.079513, %.loopexit ] ; 2 uses
  %7 = xor i64 %.079.in512, -1                    ; 2 uses
  br i1 %i.jd, label %.lr.ph858, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph858
  %.0 = add nuw nsw i64 %.0857, 1                 ; 2 uses
  %i.je = icmp samesign ult i64 %.0, %i.jb
  br i1 %i.je, label %.lr.ph858, label %.loopexit, !llvm.loop !349

.lr.ph858:                                        ; preds = %.preheader, %bb.ac
  %.0857 = phi i64 [ %.0, %bb.ac ], [ %.0855, %.preheader ] ; 3 uses
  %.0.in856 = phi i64 [ %.0857, %bb.ac ], [ %i.is, %.preheader ]
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.0.in856
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !163
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %7
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !55
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.0857
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !163
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 %7
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !55
  %.not = icmp eq i8 %i.jj, %i.jo
  br i1 %.not, label %bb.ac, label %.thread, !llvm.loop !349

.thread:                                          ; preds = %.loopexit, %.lr.ph858, %bb.ab
  %.079.in346 = phi i64 [ %.079.in512, %.lr.ph858 ], [ %i.iq, %bb.ab ], [ %i.jc, %.loopexit ] ; 2 uses
  %.079344 = phi i64 [ %.079513, %.lr.ph858 ], [ %.079511, %bb.ab ], [ %i.ix, %.loopexit ] ; 2 uses
  %i.jp = load i64, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.in, i64 12 ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !193 ; 2 uses
  %i.js = load i64, ptr %i.be, align 8, !tbaa !111
  %i.jt = and i64 %i.js, %i.jp
  %i.ju = load ptr, ptr %i.dz, align 8, !tbaa !165
  %i.jv = getelementptr inbounds nuw [12 x i8], ptr %i.ju, i64 %i.jt ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !55
  %i.jy = fcmp ogt float %i.jr, %i.jx
  br i1 %i.jy, label %bb.ad, label %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit

bb.ad:                                            ; preds = %.thread
  store i32 %i.im, ptr %i.jv, align 4, !tbaa !134
  %i.jz = trunc i64 %i.jp to i32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !135
  store float %i.jr, ptr %i.jw, align 4, !tbaa !55
  %.pre629 = load i32, ptr %i.io, align 4, !tbaa !188
  %.pre630 = zext i32 %.pre629 to i64
  br label %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit

_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit: ; preds = %bb.ad, %.thread
  %.pre-phi = phi i64 [ %.pre630, %bb.ad ], [ %i.iq, %.thread ]
  %i.kb = icmp eq i64 %.079.in346, %.pre-phi
  br i1 %i.kb, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit
  %i.kc = load i32, ptr %i.in, align 4, !tbaa !189
  %i.kd = zext i32 %i.kc to i64
  %i.ke = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %i.kd
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !163
  %i.kh = sub nsw i64 0, %.079.in346
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 %i.kh
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !55
  %i.kl = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.km = add i64 %i.kl, 1                        ; 3 uses
  %i.kn = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i140 = icmp ugt i64 %i.km, %i.kn
  br i1 %.not.i.i140, label %bb.af, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141: ; preds = %bb.ae
  %.pre.i143 = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ko = lshr i64 %i.km, 1
  %i.kp = icmp ugt i64 %i.kn, %i.ko
  %i.kq = shl nuw i64 %i.kn, 1
  %.inv.i.i144 = icmp sgt i64 %i.kn, -1
  %spec.select.i.i145 = select i1 %.inv.i.i144, i64 %i.kq, i64 -1
  %.0.i.i146 = select i1 %i.kp, i64 %spec.select.i.i145, i64 %i.km ; 2 uses
  %i.kr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i146) #22
          to label %.noexc152 unwind label %bb.am ; 5 uses

.noexc152:                                        ; preds = %bb.af
  %i.ks = load ptr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kr, ptr align 1 %i.ks, i64 %i.kl, i1 false)
  %i.kt = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.kr, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i147 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i147, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148: ; preds = %.noexc152
  call void @_ZdaPv(ptr noundef nonnull %i.kt) #20
  %.pre2.pre.i149 = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148, %.noexc152
  %.pre2.i151 = phi i64 [ %.pre2.pre.i149, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i148 ], [ %i.kl, %.noexc152 ]
  store ptr %i.kr, ptr %.phi.trans.insert.i164, align 8, !tbaa !147
  store ptr %i.kr, ptr %i.ea, align 8, !tbaa !136
  store i64 %.0.i.i146, ptr %i.bj, align 8, !tbaa !170
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141
  %i.ku = phi i64 [ %i.kl, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141 ], [ %.pre2.i151, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150 ]
  %i.kv = phi ptr [ %.pre.i143, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i141 ], [ %i.kr, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i150 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ku
  store i8 %i.kk, ptr %i.kw, align 1, !tbaa !55
  %i.kx = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.ky = add i64 %i.kx, 1
  store i64 %i.ky, ptr %i.bg, align 8, !tbaa !85
  %i.kz = load i64, ptr %i.dr, align 8, !tbaa !83 ; 3 uses
  %i.la = icmp eq i64 %i.kz, 4294967295
  br i1 %i.la, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull @.str.15)
          to label %.invoke unwind label %bb.al

.invoke:                                          ; preds = %bb.ah, %bb.aq
  %i.lc = phi ptr [ %i.ms, %bb.aq ], [ %i.lb, %bb.ah ]
  invoke void @__cxa_throw(ptr nonnull %i.lc, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ld = load i64, ptr %i.eb, align 8, !tbaa !86 ; 6 uses
  %i.le = shl i64 %i.ld, 6
  %i.lf = icmp eq i64 %i.kz, %i.le
  br i1 %i.lf, label %bb.aj, label %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit

bb.aj:                                            ; preds = %bb.ai
  %i.lg = add i64 %i.ld, 1                        ; 5 uses
  %i.lh = load i64, ptr %i.ec, align 8, !tbaa !87 ; 4 uses
  %.not.i.i.i154 = icmp ugt i64 %i.lg, %i.lh
  br i1 %.not.i.i.i154, label %bb.ak, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.li = lshr i64 %i.lg, 1
  %i.lj = icmp ugt i64 %i.lh, %i.li
  %i.lk = icmp ugt i64 %i.lh, 1152921504606846975
  %i.ll = shl nuw nsw i64 %i.lh, 1
  %spec.select.i.i.i155 = select i1 %i.lk, i64 2305843009213693951, i64 %i.ll
  %.0.i.i.i156 = select i1 %i.lj, i64 %spec.select.i.i.i155, i64 %i.lg ; 2 uses
  %i.lm = shl i64 %.0.i.i.i156, 3
  %i.ln = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lm) #22
          to label %.noexc161 unwind label %.loopexit324 ; 4 uses

.noexc161:                                        ; preds = %bb.ak
  %i.lo = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.lp = shl i64 %i.ld, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ln, ptr align 8 %i.lo, i64 %i.lp, i1 false)
  %i.lq = load ptr, ptr %i.by, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ln, ptr %i.by, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i157 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i.i.i.i.i157, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158: ; preds = %.noexc161
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #20
  %.pre.pre.i = load i64, ptr %i.eb, align 8, !tbaa !86
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158, %.noexc161
  %.pre.i159 = phi i64 [ %.pre.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i.i158 ], [ %i.ld, %.noexc161 ]
  store ptr %i.ln, ptr %i.ed, align 8, !tbaa !88
  store ptr %i.ln, ptr %i.ee, align 8, !tbaa !89
  store i64 %.0.i.i.i156, ptr %i.ec, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i, %bb.aj
  %i.lr = phi i64 [ %.pre.i159, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i.i ], [ %i.ld, %bb.aj ] ; 3 uses
  %i.ls = icmp ugt i64 %i.lg, %i.lr
  br i1 %i.ls, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i
  %i.lt = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lr
  %i.lv = shl i64 %i.ld, 3
  %i.lw = add i64 %i.lv, 8
  %i.lx = shl i64 %i.lr, 3
  %i.ly = sub i64 %i.lw, %i.lx
  call void @llvm.memset.p0.i64(ptr align 8 %i.lu, i8 0, i64 %i.ly, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit.i, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i.i
  store i64 %i.lg, ptr %i.eb, align 8, !tbaa !86
  %.pre6.pre.i = load i64, ptr %i.dr, align 8, !tbaa !83
  br label %_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit

bb.al:                                            ; preds = %bb.ah
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #21
  br label %.body

_ZN6marisa8grimoire6vector9BitVector9push_backEb.exit: ; preds = %bb.ai, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i
  %.pre6.i = phi i64 [ %.pre6.pre.i, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.i ], [ %i.kz, %bb.ai ]
  %i.ma = add i64 %.pre6.i, 1
  store i64 %i.ma, ptr %i.dr, align 8, !tbaa !83
  %.pre631 = trunc i64 %.079344 to i32
  br label %bb.ba

.loopexit324:                                     ; preds = %bb.ak, %bb.at, %bb.by, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i
  %.sroa.0290.3.ph = phi ptr [ %.sroa.0290.2516, %bb.at ], [ %.sroa.0290.2516, %bb.ak ], [ %.sroa.0290.4, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit.i ], [ %.sroa.0290.4, %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE22_M_reserve_map_at_backEm.exit.i ], [ %.sroa.0290.4, %bb.by ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.bv, %bb.bd, %.noexc.i.i, %.noexc3.i.i
  %.sroa.0290.3.ph325 = phi ptr [ %.sroa.0290.4, %.noexc.i.i ], [ %.sroa.0290.2516, %.invoke ], [ %.sroa.0290.4, %.noexc3.i.i ], [ %.sroa.0290.4, %bb.bv ], [ %.sroa.0290.4, %bb.bd ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.af
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie5cacheINS1_10ReverseKeyEEEvmmfc.exit
  %i.mc = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.md = add i64 %i.mc, 1                        ; 3 uses
  %i.me = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
end_hunk_1
