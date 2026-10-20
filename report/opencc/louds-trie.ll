Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !111
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext true)
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 13 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.bi = add i64 %i.bh, 1                        ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.bi, %i.bk
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i: ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie13reserve_cacheERKNS1_6ConfigEmm.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !147
  br label %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit

bb.e:                                             ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie13reserve_cacheERKNS1_6ConfigEmm.exit
  %i.bl = lshr i64 %i.bi, 1
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  %i.bn = shl nuw i64 %i.bk, 1
  %.inv.i.i = icmp sgt i64 %i.bk, -1
  %spec.select.i.i = select i1 %.inv.i.i, i64 %i.bn, i64 -1
  %.0.i.i = select i1 %i.bm, i64 %spec.select.i.i, i64 %i.bi ; 2 uses
  %i.bo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #22 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bq, i64 %i.bh, i1 false)
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.bo, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #20
  %.pre2.pre.i = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  %.pre2.i = phi i64 [ %.pre2.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i ], [ %i.bh, %bb.e ]
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !147
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !136
  store i64 %.0.i.i, ptr %i.bj, align 8, !tbaa !170
  br label %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit

_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i
  %i.bt = phi i64 [ %i.bh, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i ], [ %.pre2.i, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i ]
  %i.bu = phi ptr [ %.pre.i, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i ], [ %i.bo, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !55
  %i.bw = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bg, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %i.by, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !59
  %.sroa.3.0.insert.ext.i = shl i64 %i.bz, 32
  store i64 %.sroa.3.0.insert.ext.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 9 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !177
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %.not.i.i.i102 = icmp eq ptr %i.cb, %i.ce
  br i1 %.not.i.i.i102, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.085477 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dk, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.085477
  %i.cg = trunc i64 %.085477 to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !309
  %i.ci = or disjoint i64 %.085477, 1             ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ci
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !309
  %i.cm = or disjoint i64 %.085477, 2             ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cm
  %i.co = trunc i64 %i.cm to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !309
  %i.cq = or disjoint i64 %.085477, 3             ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cq
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !309
  %i.cu = or disjoint i64 %.085477, 4             ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cu
  %i.cw = trunc i64 %i.cu to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !309
  %i.cy = or disjoint i64 %.085477, 5             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cy
  %i.da = trunc i64 %i.cy to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.da, ptr %i.db, align 8, !tbaa !309
  %i.dc = or disjoint i64 %.085477, 6             ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc
  %i.de = trunc i64 %i.dc to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !309
  %i.dg = or disjoint i64 %.085477, 7             ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dg
  %i.di = trunc i64 %i.dg to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !309
  %i.dk = add nuw i64 %.085477, 8                 ; 2 uses
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
  %.pre599 = load ptr, ptr %i.ca, align 8, !tbaa !179
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge, %bb.f
  %i.dn = phi ptr [ %.pre599, %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge ], [ %i.dm, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !179 ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %._crit_edge530, label %.lr.ph529

.lr.ph529:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
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

bb.h:                                             ; preds = %.lr.ph529, %bb.bw
  %i.el = phi ptr [ %i.dp, %.lr.ph529 ], [ %i.th, %bb.bw ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph529 ], [ %i.tg, %bb.bw ]
  %.sroa.0265.0528 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.0265.4, %bb.bw ] ; 4 uses
  %.sroa.24.0527 = phi i64 [ 0, %.lr.ph529 ], [ %.sroa.24.3, %bb.bw ] ; 3 uses
  %.sroa.18.0526 = phi i64 [ 0, %.lr.ph529 ], [ %.sroa.18.3, %bb.bw ] ; 3 uses
  %.sroa.15296.0525 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.15296.3, %bb.bw ] ; 3 uses
  %.sroa.10294.0524 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.10294.3, %bb.bw ] ; 3 uses
  %.sroa.0290.0523 = phi ptr [ null, %.lr.ph529 ], [ %.sroa.0290.4, %bb.bw ] ; 7 uses
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
  br i1 %i.fs, label %.lr.ph479, label %.critedge

.lr.ph479:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph479, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph479 ], [ %8, %bb.l ] ; 2 uses
  %.sroa.0249.0478 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph479 ], [ %7, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !69
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %7 = add i32 %.sroa.0249.0478, 1                ; 3 uses
  %8 = zext i32 %7 to i64
  %exitcond595.not = icmp eq i32 %7, %.sroa.15.0.copyload
  br i1 %exitcond595.not, label %.critedge.thread, label %bb.k, !llvm.loop !302

.thread317:                                       ; preds = %bb.g
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie3KeyEED2Ev.exit236

bb.m:                                             ; preds = %.lr.ph.i, %bb.by, %bb.bx, %._crit_edge530
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0478, %bb.k ] ; 3 uses
  %.lcssa335 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.gd = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.ge = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.ge, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit, !llvm.loop !303

bb.n:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0528, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0528) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %.lcssa335
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !55 ; 2 uses
  %.081485 = add nuw nsw i64 %.lcssa335, 1        ; 2 uses
  %i.gj = icmp samesign ult i64 %.081485, %i.gd
  br i1 %i.gj, label %.lr.ph494, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre605 = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge495

.lr.ph494:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gk = fpext float %i.gi to double
  %i.gl = zext i32 %.sroa.19.0.copyload to i64    ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph494, %bb.s
  %i.gm = phi ptr [ %i.gf, %.lr.ph494 ], [ %i.hi, %bb.s ] ; 3 uses
  %.081493 = phi i64 [ %.081485, %.lr.ph494 ], [ %.081, %bb.s ] ; 6 uses
  %.081.in492 = phi i64 [ %.lcssa335, %.lr.ph494 ], [ %.081493, %bb.s ]
  %.082491 = phi double [ %i.gk, %.lr.ph494 ], [ %i.hn, %bb.s ] ; 2 uses
  %.sroa.0249.1490 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph494 ], [ %.sroa.0249.2, %bb.s ] ; 2 uses
  %.sroa.34.0489 = phi i64 [ 0, %.lr.ph494 ], [ %.sroa.34.1, %bb.s ] ; 6 uses
  %.sroa.23.0488 = phi i64 [ 0, %.lr.ph494 ], [ %.sroa.23.1, %bb.s ] ; 4 uses
  %.sroa.12.0487 = phi ptr [ null, %.lr.ph494 ], [ %.sroa.12.1, %bb.s ] ; 3 uses
  %.sroa.0265.1486 = phi ptr [ null, %.lr.ph494 ], [ %.sroa.0265.2, %bb.s ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %.081.in492
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !68
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gl
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !55
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %.081493
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gl
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gq, %i.gu
  br i1 %.not95, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gv = zext i32 %.sroa.0249.1490 to i64
  %i.gw = fptrunc double %.082491 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081493, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.gv
  %i.gx = bitcast float %i.gw to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.gx to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.gl
  %i.gy = add i64 %.sroa.23.0488, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.gy, %.sroa.34.0489
  br i1 %.not.i.i116, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gz = lshr i64 %i.gy, 1
  %i.ha = icmp ugt i64 %.sroa.34.0489, %i.gz
  %i.hb = icmp ugt i64 %.sroa.34.0489, 576460752303423487
  %i.hc = shl nuw nsw i64 %.sroa.34.0489, 1
  %spec.select.i.i119 = select i1 %i.hb, i64 1152921504606846975, i64 %i.hc
  %.0.i.i120 = select i1 %i.ha, i64 %spec.select.i.i119, i64 %i.gy ; 3 uses
  %i.hd = shl i64 %.0.i.i120, 4
  %i.he = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hd) #22
          to label %.noexc125 unwind label %.loopexit326 ; 5 uses

.noexc125:                                        ; preds = %bb.q
  %i.hf = shl nuw i64 %.sroa.23.0488, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %.sroa.12.0487, i64 %i.hf, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1486, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.r, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1486) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1486, %bb.p ], [ %i.he, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.he, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0487, %bb.p ], [ %i.he, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.he, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0489, %bb.p ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0488 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hg, align 4, !tbaa !73
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hh = trunc i64 %.081493 to i32
  %.pre600 = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.hi = phi ptr [ %i.gm, %bb.o ], [ %.pre600, %bb.r ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1486, %bb.o ], [ %.sroa.0265.7, %bb.r ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0487, %bb.o ], [ %.sroa.12.2, %bb.r ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0488, %bb.o ], [ %i.gy, %bb.r ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0489, %bb.o ], [ %.sroa.34.2, %bb.r ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1490, %bb.o ], [ %i.hh, %bb.r ] ; 2 uses
  %.183 = phi double [ %.082491, %bb.o ], [ 0.000000e+00, %bb.r ]
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.081493
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !55
  %i.hm = fpext float %i.hl to double
  %i.hn = fadd double %.183, %i.hm                ; 2 uses
  %.081 = add nuw nsw i64 %.081493, 1             ; 2 uses
  %exitcond596.not = icmp eq i64 %.081, %i.gd
  br i1 %exitcond596.not, label %._crit_edge495.loopexit, label %bb.o, !llvm.loop !304

._crit_edge495.loopexit:                          ; preds = %bb.s
  %i.ho = fptrunc double %i.hn to float
  br label %._crit_edge495

._crit_edge495:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge, %._crit_edge495.loopexit
  %.pre-phi606 = phi i64 [ %.pre605, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %i.gl, %._crit_edge495.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.0265.2, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.12.1, %._crit_edge495.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.23.1, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.34.1, %._crit_edge495.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %.sroa.0249.2, %._crit_edge495.loopexit ]
  %.082.lcssa = phi float [ %i.gi, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge495_crit_edge ], [ %i.ho, %._crit_edge495.loopexit ]
  %i.hp = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.gd, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.hp
  %i.hq = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hq to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi606
  %i.hr = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.hr, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge495
  %i.hs = lshr i64 %i.hr, 1
  %i.ht = icmp ugt i64 %.sroa.34.0.lcssa, %i.hs
  %i.hu = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.hv = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.hu, i64 1152921504606846975, i64 %i.hv
  %.0.i.i131 = select i1 %i.ht, i64 %spec.select.i.i130, i64 %i.hr
  %i.hw = shl i64 %.0.i.i131, 4
  %i.hx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hw) #22
          to label %.noexc137 unwind label %.loopexit.split-lp327 ; 5 uses

.noexc137:                                        ; preds = %bb.t
  %i.hy = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hx, ptr align 4 %.sroa.12.0.lcssa, i64 %i.hy, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.u, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge495, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.8 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge495 ], [ %i.hx, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hx, %.noexc137 ] ; 9 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge495 ], [ %i.hx, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hx, %.noexc137 ] ; 4 uses
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.hz, align 4, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ia = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.ib = icmp eq i32 %i.ia, 131072
  br i1 %i.ib, label %bb.v, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.v:                                             ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.hr
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ic)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %.loopexit.split-lp.loopexit

.loopexit326:                                     ; preds = %bb.q
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp327:                            ; preds = %bb.t
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.v, %bb.u
  %i.id = icmp eq i64 %i.en, %i.fi
  br i1 %i.id, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.hr, ptr %i.dy, align 8, !tbaa !112
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not538 = icmp eq i64 %i.hr, 0
  br i1 %.not538, label %._crit_edge517, label %.lr.ph516

.lr.ph516:                                        ; preds = %bb.x
  %i.ie = shl i64 %i.fj, 5
  %i.if = trunc i64 %i.fj to i32
  %invariant.op = xor i64 %i.ie, %i.fj
  br label %bb.y

._crit_edge517:                                   ; preds = %bb.bv, %bb.x
  %.sroa.0290.1.lcssa = phi ptr [ %.sroa.0290.0523, %bb.x ], [ %.sroa.0290.3, %bb.bv ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0524, %bb.x ], [ %.sroa.10294.2, %bb.bv ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0525, %bb.x ], [ %.sroa.15296.2, %bb.bv ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0526, %bb.x ], [ %.sroa.18.2, %bb.bv ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0527, %bb.x ], [ %.sroa.24.2, %bb.bv ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.lr.ph516, %bb.bv
  %.080514 = phi i64 [ 0, %.lr.ph516 ], [ %i.tf, %bb.bv ] ; 3 uses
  %.sroa.24.1513 = phi i64 [ %.sroa.24.0527, %.lr.ph516 ], [ %.sroa.24.2, %bb.bv ] ; 5 uses
  %.sroa.18.1512 = phi i64 [ %.sroa.18.0526, %.lr.ph516 ], [ %.sroa.18.2, %bb.bv ] ; 4 uses
  %.sroa.15296.1511 = phi ptr [ %.sroa.15296.0525, %.lr.ph516 ], [ %.sroa.15296.2, %bb.bv ] ; 2 uses
  %.sroa.10294.1510 = phi ptr [ %.sroa.10294.0524, %.lr.ph516 ], [ %.sroa.10294.2, %bb.bv ] ; 3 uses
  %.sroa.0290.1508 = phi ptr [ %.sroa.0290.0523, %.lr.ph516 ], [ %.sroa.0290.3, %bb.bv ] ; 10 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.080514 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m:bb.a
  %.5200 = phi ptr [ %i.by, %.lr.ph201 ], [ %.1130.lcssa, %.preheader ] ; 3 uses
  %.3140199 = phi ptr [ %i.bz, %.lr.ph201 ], [ %.2139, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.5200, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.5200, ptr noundef nonnull align 8 dereferenceable(20) %.3140199, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.3140199, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.by = getelementptr inbounds nuw i8, ptr %.5200, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.3140199, i64 24 ; 2 uses
  %i.ca = icmp ult ptr %i.by, %.0154204
  br i1 %i.ca, label %.lr.ph201, label %._crit_edge, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph201, %.preheader
  %.3140.lcssa = phi ptr [ %.2139, %.preheader ], [ %i.bz, %.lr.ph201 ] ; 12 uses
  %i.cb = ptrtoint ptr %.4145.lcssa to i64        ; 2 uses
  %i.cc = sub i64 %i.cb, %i.f                     ; 6 uses
  %i.cd = ptrtoint ptr %.3140.lcssa to i64        ; 3 uses
  %i.ce = sub i64 %i.cd, %i.cb                    ; 6 uses
  %i.cf = icmp sgt i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cg = sub i64 %i.g, %i.cd                     ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, %i.ce
  br i1 %i.ch, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.ci = icmp eq i64 %i.ce, 24
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = add i64 %.0146206, 1
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ck = icmp sgt i64 %i.ce, 24
  br i1 %i.ck, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp eq i32 %.0.i, -1
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = add i64 %.0146206, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cn = add i64 %.0152205, 1
  %i.co = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef %.4145.lcssa, ptr noundef %.3140.lcssa, i64 noundef %i.cn)
  %i.cp = add i64 %i.co, %.0146206
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.u
  %.1147 = phi i64 [ %i.cj, %bb.u ], [ %i.cm, %bb.x ], [ %i.cp, %bb.y ], [ %.0146206, %bb.v ] ; 6 uses
  %i.cq = sub i64 %i.g, %i.cd                     ; 3 uses
  %i.cr = icmp slt i64 %i.cc, %i.cq
  br i1 %i.cr, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp eq i64 %i.cc, 24
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ct = add i64 %.1147, 1
  br label %bb.aw

bb.ac:                                            ; preds = %bb.aa
  %i.cu = icmp sgt i64 %i.cc, 24
  br i1 %i.cu, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.cv = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.cw = add i64 %i.cv, %.1147
  br label %bb.aw

bb.ae:                                            ; preds = %bb.z
  %i.cx = icmp eq i64 %i.cq, 24
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = add i64 %.1147, 1
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae
  %i.cz = icmp sgt i64 %i.cq, 24
  br i1 %i.cz, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.da = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.db = add i64 %i.da, %.1147
  br label %bb.aw

bb.ai:                                            ; preds = %bb.s
  %i.dc = icmp eq i64 %i.cc, 24
  br i1 %i.dc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dd = add i64 %.0146206, 1
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.de = icmp sgt i64 %i.cc, 24
  br i1 %i.de, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.df = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.dg = add i64 %i.df, %.0146206
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4150 = phi i64 [ %i.dd, %bb.aj ], [ %i.dg, %bb.al ], [ %.0146206, %bb.ak ] ; 3 uses
  %i.dh = icmp eq i64 %i.cg, 24
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.di = add i64 %.4150, 1
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dj = icmp sgt i64 %i.cg, 24
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dk = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.dl = add i64 %i.dk, %.4150
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.5151 = phi i64 [ %i.di, %bb.an ], [ %i.dl, %bb.ap ], [ %.4150, %bb.ao ] ; 4 uses
  %i.dm = icmp eq i64 %i.ce, 24
  br i1 %i.dm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dn = add i64 %.5151, 1
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.do = icmp sgt i64 %i.ce, 24
  br i1 %i.do, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dp = icmp eq i32 %.0.i, -1
  br i1 %i.dp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dq = add i64 %.5151, 1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.dr = add i64 %.0152205, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ab, %bb.ad, %bb.ac, %bb.ar, %bb.au, %bb.av, %bb.as
  %.1157 = phi ptr [ %.4145.lcssa, %bb.as ], [ %.3140.lcssa, %bb.ab ], [ %.4145.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.4145.lcssa, %bb.av ], [ %.3140.lcssa, %bb.ac ], [ %.3140.lcssa, %bb.ad ], [ %.0156203, %bb.ag ], [ %.0156203, %bb.ah ], [ %.0156203, %bb.af ] ; 3 uses
  %.1155 = phi ptr [ %.3140.lcssa, %bb.as ], [ %.0154204, %bb.ab ], [ %.3140.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.3140.lcssa, %bb.av ], [ %.0154204, %bb.ac ], [ %.0154204, %bb.ad ], [ %.4145.lcssa, %bb.ag ], [ %.4145.lcssa, %bb.ah ], [ %.4145.lcssa, %bb.af ] ; 3 uses
  %.1153 = phi i64 [ %.0152205, %bb.as ], [ %.0152205, %bb.ab ], [ %.0152205, %bb.ar ], [ %.0152205, %bb.au ], [ %i.dr, %bb.av ], [ %.0152205, %bb.ac ], [ %.0152205, %bb.ad ], [ %.0152205, %bb.ag ], [ %.0152205, %bb.ah ], [ %.0152205, %bb.af ] ; 2 uses
  %.6 = phi i64 [ %.5151, %bb.as ], [ %i.ct, %bb.ab ], [ %i.dn, %bb.ar ], [ %i.dq, %bb.au ], [ %.5151, %bb.av ], [ %.1147, %bb.ac ], [ %i.cw, %bb.ad ], [ %.1147, %bb.ag ], [ %i.db, %bb.ah ], [ %i.cy, %bb.af ] ; 2 uses
  %i.ds = ptrtoint ptr %.1155 to i64              ; 2 uses
  %i.dt = ptrtoint ptr %.1157 to i64              ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 240
  br i1 %i.dv, label %.lr.ph208, label %._crit_edge209, !llvm.loop !314

._crit_edge209:                                   ; preds = %bb.aw, %bb.a
  %.0156.lcssa = phi ptr [ %0, %bb.a ], [ %.1157, %bb.aw ] ; 2 uses
  %.0154.lcssa = phi ptr [ %1, %bb.a ], [ %.1155, %bb.aw ] ; 2 uses
  %.0152.lcssa = phi i64 [ %2, %bb.a ], [ %.1153, %bb.aw ] ; 2 uses
  %.0146.lcssa = phi i64 [ 0, %bb.a ], [ %.6, %bb.aw ] ; 2 uses
  %.lcssa182 = phi i64 [ %i.c, %bb.a ], [ %i.du, %bb.aw ]
  %i.dw = icmp sgt i64 %.lcssa182, 24
  br i1 %i.dw, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %._crit_edge209
  %.01739.i = getelementptr inbounds nuw i8, ptr %.0156.lcssa, i64 24 ; 2 uses
  %i.dx = icmp ult ptr %.01739.i, %.0154.lcssa
  br i1 %i.dx, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie3KeyEEEmT_S7_m.exit

.preheader.i:                                     ; preds = %bb.ax, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i
  %.01741.i = phi ptr [ %.017.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i ], [ %.01739.i, %bb.ax ] ; 2 uses
  %.01840.i = phi i64 [ %i.et, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i ], [ 1, %bb.ax ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i
  %.037.i = phi ptr [ %i.dy, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i ], [ %.01741.i, %.preheader.i ] ; 6 uses
  %i.dy = getelementptr inbounds i8, ptr %.037.i, i64 -24 ; 5 uses
  %i.dz = getelementptr inbounds i8, ptr %.037.i, i64 -16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !69 ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ult i64 %.0152.lcssa, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !69 ; 3 uses
  br i1 %i.ec, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.ef = zext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.dy, align 8
  %i.eh = load ptr, ptr %.037.i, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.ei = add i64 %.01927.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ei, %i.eb
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.az, !llvm.loop !315

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.01927.i.i = phi i64 [ %.0152.lcssa, %.lr.ph.i.i ], [ %i.ei, %bb.ay ] ; 4 uses
  %i.ej = icmp eq i64 %.01927.i.i, %i.ef
  br i1 %i.ej, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.01927.i.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !55  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.01927.i.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq i8 %i.el, %i.en
  br i1 %.not.i.i, label %bb.ay, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.i

._crit_edge.i.i:                                  ; preds = %bb.ay, %.lr.ph.i
  %i.eo = icmp eq i32 %i.ea, %i.ee
  br i1 %i.eo, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i
  %i.ep = icmp ult i32 %i.ea, %i.ee
  br i1 %i.ep, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread30.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread30.i: ; preds = %bb.bb
  %i.eq = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.i: ; preds = %bb.ba
  %.not56.i = icmp ugt i8 %i.el, %i.en
  br i1 %.not56.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i: ; preds = %bb.az, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.i, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dy, ptr noundef nonnull align 8 dereferenceable(20) %.037.i, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.037.i, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.er = icmp ugt ptr %i.dy, %.0156.lcssa
  br i1 %i.er, label %.lr.ph.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.i, !llvm.loop !316

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.i: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread24.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.i
  %i.es = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i: ; preds = %._crit_edge.i.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread30.i
  %i.et = phi i64 [ %i.eq, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread30.i ], [ %i.es, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.i ], [ %.01840.i, %._crit_edge.i.i ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.01741.i, i64 24 ; 2 uses
  %i.eu = icmp ult ptr %.017.i, %.0154.lcssa
  br i1 %i.eu, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie3KeyEEEmT_S7_m.exit, !llvm.loop !317

_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie3KeyEEEmT_S7_m.exit: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i, %bb.ax
  %.018.lcssa.i = phi i64 [ 1, %bb.ax ], [ %i.et, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie3KeyEEEiRKT_S8_m.exit.thread.thread.i ]
  %i.ev = add i64 %.018.lcssa.i, %.0146.lcssa
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie3KeyEEEmT_S7_m.exit, %._crit_edge209
  %.7 = phi i64 [ %i.ev, %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie3KeyEEEmT_S7_m.exit ], [ %.0146.lcssa, %._crit_edge209 ]
  ret i64 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit:
  %i.a = udiv i64 %1, 42                          ; 2 uses
  %i.b = urem i64 %1, 42
  %i.c = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.d, 3     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8, !tbaa !194
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !195
  %i.h = sub nuw nsw i64 %.sroa.speculated, %i.c
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #22
          to label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !185
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !318

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #21 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !185
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 504) #20
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !8

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #23
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #21 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !195
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !194
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !180
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !185 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !181
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 504
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !180
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !185 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !181
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !182
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !186
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.b
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !176
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #24
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
end_hunk_1
begin_hunk_2_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_10ReverseKeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !111
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext true)
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 13 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !85 ; 4 uses
  %i.bi = add i64 %i.bh, 1                        ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 6 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.bi, %i.bk
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i

._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i: ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie13reserve_cacheERKNS1_6ConfigEmm.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !147
  br label %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit

bb.e:                                             ; preds = %_ZN6marisa8grimoire4trie9LoudsTrie13reserve_cacheERKNS1_6ConfigEmm.exit
  %i.bl = lshr i64 %i.bi, 1
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  %i.bn = shl nuw i64 %i.bk, 1
  %.inv.i.i = icmp sgt i64 %i.bk, -1
  %spec.select.i.i = select i1 %.inv.i.i, i64 %i.bn, i64 -1
  %.0.i.i = select i1 %i.bm, i64 %spec.select.i.i, i64 %i.bi ; 2 uses
  %i.bo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #22 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bq, i64 %i.bh, i1 false)
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  store ptr %i.bo, ptr %i.bf, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #20
  %.pre2.pre.i = load i64, ptr %i.bg, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  %.pre2.i = phi i64 [ %.pre2.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i ], [ %i.bh, %bb.e ]
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !147
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !136
  store i64 %.0.i.i, ptr %i.bj, align 8, !tbaa !170
  br label %_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit

_ZN6marisa8grimoire6vector6VectorIhE9push_backERKh.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i
  %i.bt = phi i64 [ %i.bh, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i ], [ %.pre2.i, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i ]
  %i.bu = phi ptr [ %.pre.i, %._ZN6marisa8grimoire6vector6VectorIhE7reserveEm.exit_crit_edge.i ], [ %i.bo, %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !55
  %i.bw = load i64, ptr %i.bg, align 8, !tbaa !85
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bg, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  tail call void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %i.by, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !159
  %.sroa.3.0.insert.ext.i = shl i64 %i.bz, 32
  store i64 %.sroa.3.0.insert.ext.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 9 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !176 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !177
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %.not.i.i.i102 = icmp eq ptr %i.cb, %i.ce
  br i1 %.not.i.i.i102, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.085475 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dk, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.085475
  %i.cg = trunc i64 %.085475 to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !353
  %i.ci = or disjoint i64 %.085475, 1             ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ci
  %i.ck = trunc i64 %i.ci to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !353
  %i.cm = or disjoint i64 %.085475, 2             ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cm
  %i.co = trunc i64 %i.cm to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !353
  %i.cq = or disjoint i64 %.085475, 3             ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cq
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !353
  %i.cu = or disjoint i64 %.085475, 4             ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cu
  %i.cw = trunc i64 %i.cu to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !353
  %i.cy = or disjoint i64 %.085475, 5             ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.cy
  %i.da = trunc i64 %i.cy to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.da, ptr %i.db, align 8, !tbaa !353
  %i.dc = or disjoint i64 %.085475, 6             ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dc
  %i.de = trunc i64 %i.dc to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !353
  %i.dg = or disjoint i64 %.085475, 7             ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.dg
  %i.di = trunc i64 %i.dg to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !353
  %i.dk = add nuw i64 %.085475, 8                 ; 2 uses
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
  %.pre596 = load ptr, ptr %i.ca, align 8, !tbaa !179
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge, %bb.f
  %i.dn = phi ptr [ %.pre596, %._ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit_crit_edge ], [ %i.dm, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !179 ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %._crit_edge527, label %.lr.ph526

.lr.ph526:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
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

bb.h:                                             ; preds = %.lr.ph526, %bb.bv
  %i.el = phi ptr [ %i.dp, %.lr.ph526 ], [ %i.tk, %bb.bv ] ; 6 uses
  %i.em = phi ptr [ %i.dn, %.lr.ph526 ], [ %i.tj, %bb.bv ]
  %.sroa.0265.0525 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.0265.4, %bb.bv ] ; 4 uses
  %.sroa.24.0524 = phi i64 [ 0, %.lr.ph526 ], [ %.sroa.24.3, %bb.bv ] ; 3 uses
  %.sroa.18.0523 = phi i64 [ 0, %.lr.ph526 ], [ %.sroa.18.3, %bb.bv ] ; 3 uses
  %.sroa.15296.0522 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.15296.3, %bb.bv ] ; 3 uses
  %.sroa.10294.0521 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.10294.3, %bb.bv ] ; 3 uses
  %.sroa.0290.0520 = phi ptr [ null, %.lr.ph526 ], [ %.sroa.0290.4, %bb.bv ] ; 7 uses
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
  br i1 %i.fs, label %.lr.ph477, label %.critedge

.lr.ph477:                                        ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %i.ft = trunc i64 %i.fj to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph477, %bb.l
  %i.fu = phi i64 [ %i.fr, %.lr.ph477 ], [ %8, %bb.l ] ; 2 uses
  %.sroa.0249.0476 = phi i32 [ %.sroa.0249.0.copyload, %.lr.ph477 ], [ %7, %bb.l ] ; 2 uses
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !164
  %i.fz = icmp eq i32 %i.fy, %.sroa.19.0.copyload
  br i1 %i.fz, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !55
  %7 = add i32 %.sroa.0249.0476, 1                ; 3 uses
  %8 = zext i32 %7 to i64
  %exitcond592.not = icmp eq i32 %7, %.sroa.15.0.copyload
  br i1 %exitcond592.not, label %.critedge.thread, label %bb.k, !llvm.loop !346

.thread317:                                       ; preds = %bb.g
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236

.critedge:                                        ; preds = %bb.k, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.sroa.0249.0.lcssa = phi i32 [ %.sroa.0249.0.copyload, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %.sroa.0249.0476, %bb.k ] ; 3 uses
  %.lcssa335 = phi i64 [ %i.fr, %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEE3popEv.exit ], [ %i.fu, %bb.k ] ; 3 uses
  %i.gc = zext i32 %.sroa.15.0.copyload to i64    ; 3 uses
  %i.gd = icmp eq i32 %.sroa.0249.0.lcssa, %.sroa.15.0.copyload
  br i1 %i.gd, label %.critedge.thread, label %bb.m

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit, !llvm.loop !347

bb.m:                                             ; preds = %.critedge
  %.not.i.i.i104 = icmp eq ptr %.sroa.0265.0525, null
  br i1 %.not.i.i.i104, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0525) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !160 ; 2 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %.lcssa335
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !55 ; 2 uses
  %.081483 = add nuw nsw i64 %.lcssa335, 1        ; 2 uses
  %i.gi = icmp samesign ult i64 %.081483, %i.gc
  br i1 %i.gi, label %.lr.ph492, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %.pre602 = zext i32 %.sroa.19.0.copyload to i64
  br label %._crit_edge493

.lr.ph492:                                        ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit
  %i.gj = fpext float %i.gh to double
  %i.gk = zext i32 %.sroa.19.0.copyload to i64    ; 3 uses
  %i.gl = sub nsw i64 0, %i.gk                    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph492, %bb.r
  %i.gm = phi ptr [ %i.ge, %.lr.ph492 ], [ %i.hk, %bb.r ] ; 3 uses
  %.081491 = phi i64 [ %.081483, %.lr.ph492 ], [ %.081, %bb.r ] ; 6 uses
  %.081.in490 = phi i64 [ %.lcssa335, %.lr.ph492 ], [ %.081491, %bb.r ]
  %.082489 = phi double [ %i.gj, %.lr.ph492 ], [ %i.hp, %bb.r ] ; 2 uses
  %.sroa.0249.1488 = phi i32 [ %.sroa.0249.0.lcssa, %.lr.ph492 ], [ %.sroa.0249.2, %bb.r ] ; 2 uses
  %.sroa.34.0487 = phi i64 [ 0, %.lr.ph492 ], [ %.sroa.34.1, %bb.r ] ; 6 uses
  %.sroa.23.0486 = phi i64 [ 0, %.lr.ph492 ], [ %.sroa.23.1, %bb.r ] ; 4 uses
  %.sroa.12.0485 = phi ptr [ null, %.lr.ph492 ], [ %.sroa.12.1, %bb.r ] ; 3 uses
  %.sroa.0265.1484 = phi ptr [ null, %.lr.ph492 ], [ %.sroa.0265.2, %bb.r ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %.081.in490
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !163
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.gl
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !55
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %.081491
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !163
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !55
  %.not95 = icmp eq i8 %i.gr, %i.gw
  br i1 %.not95, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gx = zext i32 %.sroa.0249.1488 to i64
  %i.gy = fptrunc double %.082489 to float
  %.sroa.0.sroa.3.0.insert.ext.i107 = shl i64 %.081491, 32
  %.sroa.0.sroa.0.0.insert.insert.i109 = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i107, %i.gx
  %i.gz = bitcast float %i.gy to i32
  %.sroa.4.sroa.3.0.insert.ext.i111 = zext i32 %i.gz to i64
  %.sroa.4.sroa.3.0.insert.shift.i112 = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i111, 32
  %.sroa.4.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i112, %i.gk
  %i.ha = add i64 %.sroa.23.0486, 1               ; 4 uses
  %.not.i.i116 = icmp ugt i64 %i.ha, %.sroa.34.0487
  br i1 %.not.i.i116, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hb = lshr i64 %i.ha, 1
  %i.hc = icmp ugt i64 %.sroa.34.0487, %i.hb
  %i.hd = icmp ugt i64 %.sroa.34.0487, 576460752303423487
  %i.he = shl nuw nsw i64 %.sroa.34.0487, 1
  %spec.select.i.i119 = select i1 %i.hd, i64 1152921504606846975, i64 %i.he
  %.0.i.i120 = select i1 %i.hc, i64 %spec.select.i.i119, i64 %i.ha ; 3 uses
  %i.hf = shl i64 %.0.i.i120, 4
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hf) #22
          to label %.noexc125 unwind label %.loopexit326 ; 5 uses

.noexc125:                                        ; preds = %bb.p
  %i.hh = shl nuw i64 %.sroa.23.0486, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr align 4 %.sroa.12.0485, i64 %i.hh, i1 false)
  %.not.i.i.i.i.i.i.i121 = icmp eq ptr %.sroa.0265.1484, null
  br i1 %.not.i.i.i.i.i.i.i121, label %bb.q, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1484) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122, %.noexc125
  %.sroa.0265.7 = phi ptr [ %.sroa.0265.1484, %bb.o ], [ %i.hg, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hg, %.noexc125 ]
  %.sroa.12.2 = phi ptr [ %.sroa.12.0485, %bb.o ], [ %i.hg, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %i.hg, %.noexc125 ] ; 2 uses
  %.sroa.34.2 = phi i64 [ %.sroa.34.0487, %bb.o ], [ %.0.i.i120, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i122 ], [ %.0.i.i120, %.noexc125 ]
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.2, i64 %.sroa.23.0486 ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i109, ptr %i.hi, align 4, !tbaa !73
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i114, ptr %.sroa.5248.0..sroa_idx, align 4
  %i.hj = trunc i64 %.081491 to i32
  %.pre597 = load ptr, ptr %i.h, align 8, !tbaa !160
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.hk = phi ptr [ %i.gm, %bb.n ], [ %.pre597, %bb.q ] ; 2 uses
  %.sroa.0265.2 = phi ptr [ %.sroa.0265.1484, %bb.n ], [ %.sroa.0265.7, %bb.q ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0485, %bb.n ], [ %.sroa.12.2, %bb.q ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %.sroa.23.0486, %bb.n ], [ %i.ha, %bb.q ] ; 2 uses
  %.sroa.34.1 = phi i64 [ %.sroa.34.0487, %bb.n ], [ %.sroa.34.2, %bb.q ] ; 2 uses
  %.sroa.0249.2 = phi i32 [ %.sroa.0249.1488, %bb.n ], [ %i.hj, %bb.q ] ; 2 uses
  %.183 = phi double [ %.082489, %bb.n ], [ 0.000000e+00, %bb.q ]
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %.081491
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !55
  %i.ho = fpext float %i.hn to double
  %i.hp = fadd double %.183, %i.ho                ; 2 uses
  %.081 = add nuw nsw i64 %.081491, 1             ; 2 uses
  %exitcond593.not = icmp eq i64 %.081, %i.gc
  br i1 %exitcond593.not, label %._crit_edge493.loopexit, label %bb.n, !llvm.loop !348

._crit_edge493.loopexit:                          ; preds = %bb.r
  %i.hq = fptrunc double %i.hp to float
  br label %._crit_edge493

._crit_edge493:                                   ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge, %._crit_edge493.loopexit
  %.pre-phi603 = phi i64 [ %.pre602, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %i.gk, %._crit_edge493.loopexit ]
  %.sroa.0265.1.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.0265.2, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.12.1, %._crit_edge493.loopexit ] ; 2 uses
  %.sroa.23.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.23.1, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.34.0.lcssa = phi i64 [ 0, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.34.1, %._crit_edge493.loopexit ] ; 4 uses
  %.sroa.0249.1.lcssa = phi i32 [ %.sroa.0249.0.lcssa, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %.sroa.0249.2, %._crit_edge493.loopexit ]
  %.082.lcssa = phi float [ %i.gh, %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEE5clearEv.exit.._crit_edge493_crit_edge ], [ %i.hq, %._crit_edge493.loopexit ]
  %i.hr = zext i32 %.sroa.0249.1.lcssa to i64
  %.sroa.0.sroa.3.0.insert.ext.i = shl nuw i64 %i.gc, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i, %i.hr
  %i.hs = bitcast float %.082.lcssa to i32
  %.sroa.4.sroa.3.0.insert.ext.i = zext i32 %i.hs to i64
  %.sroa.4.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.4.sroa.3.0.insert.ext.i, 32
  %.sroa.4.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i, %.pre-phi603
  %i.ht = add i64 %.sroa.23.0.lcssa, 1            ; 6 uses
  %.not.i.i126 = icmp ugt i64 %i.ht, %.sroa.34.0.lcssa
  br i1 %.not.i.i126, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge493
  %i.hu = lshr i64 %i.ht, 1
  %i.hv = icmp ugt i64 %.sroa.34.0.lcssa, %i.hu
  %i.hw = icmp ugt i64 %.sroa.34.0.lcssa, 576460752303423487
  %i.hx = shl nuw nsw i64 %.sroa.34.0.lcssa, 1
  %spec.select.i.i130 = select i1 %i.hw, i64 1152921504606846975, i64 %i.hx
  %.0.i.i131 = select i1 %i.hv, i64 %spec.select.i.i130, i64 %i.ht
  %i.hy = shl i64 %.0.i.i131, 4
  %i.hz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hy) #22
          to label %.noexc137 unwind label %.loopexit.split-lp327 ; 5 uses

.noexc137:                                        ; preds = %bb.s
  %i.ia = shl i64 %.sroa.23.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hz, ptr align 4 %.sroa.12.0.lcssa, i64 %i.ia, i1 false)
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0265.1.lcssa, null
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.t, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133: ; preds = %.noexc137
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.1.lcssa) #20
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge493, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133, %.noexc137
  %.sroa.0265.8 = phi ptr [ %.sroa.0265.1.lcssa, %._crit_edge493 ], [ %i.hz, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hz, %.noexc137 ] ; 9 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0.lcssa, %._crit_edge493 ], [ %i.hz, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i133 ], [ %i.hz, %.noexc137 ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %.sroa.23.0.lcssa ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ib, align 4, !tbaa !73
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 %.sroa.4.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ic = load i32, ptr %i.dx, align 8, !tbaa !50
  %i.id = icmp eq i32 %i.ic, 131072
  br i1 %i.id, label %bb.u, label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit

bb.u:                                             ; preds = %bb.t
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.3, i64 %i.ht
  invoke void @_ZSt13__stable_sortIPN6marisa8grimoire4trie13WeightedRangeEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SB_T0_(ptr noundef nonnull %.sroa.12.3, ptr noundef %i.ie)
          to label %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit unwind label %.loopexit.split-lp.loopexit

.loopexit326:                                     ; preds = %bb.p
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp327:                            ; preds = %bb.s
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit: ; preds = %bb.u, %bb.t
  %i.if = icmp eq i64 %i.en, %i.fi
  br i1 %i.if, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  store i64 %i.ht, ptr %i.dy, align 8, !tbaa !112
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt11stable_sortIPN6marisa8grimoire4trie13WeightedRangeESt7greaterIS3_EEvT_S7_T0_.exit
  %.not535 = icmp eq i64 %i.ht, 0
  br i1 %.not535, label %._crit_edge514, label %.lr.ph513

.lr.ph513:                                        ; preds = %bb.w
  %i.ig = trunc i64 %i.fj to i32
  br label %bb.x

._crit_edge514:                                   ; preds = %bb.bu, %bb.w
  %.sroa.0290.1.lcssa = phi ptr [ %.sroa.0290.0520, %bb.w ], [ %.sroa.0290.3, %bb.bu ] ; 2 uses
  %.sroa.10294.1.lcssa = phi ptr [ %.sroa.10294.0521, %bb.w ], [ %.sroa.10294.2, %bb.bu ]
  %.sroa.15296.1.lcssa = phi ptr [ %.sroa.15296.0522, %bb.w ], [ %.sroa.15296.2, %bb.bu ]
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0523, %bb.w ], [ %.sroa.18.2, %bb.bu ]
  %.sroa.24.1.lcssa = phi i64 [ %.sroa.24.0524, %bb.w ], [ %.sroa.24.2, %bb.bu ]
  invoke void @_ZN6marisa8grimoire6vector9BitVector9push_backEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext false)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %.lr.ph513, %bb.bu
  %.080511 = phi i64 [ 0, %.lr.ph513 ], [ %i.ti, %bb.bu ] ; 3 uses
  %.sroa.24.1510 = phi i64 [ %.sroa.24.0524, %.lr.ph513 ], [ %.sroa.24.2, %bb.bu ] ; 5 uses
  %.sroa.18.1509 = phi i64 [ %.sroa.18.0523, %.lr.ph513 ], [ %.sroa.18.2, %bb.bu ] ; 4 uses
  %.sroa.15296.1508 = phi ptr [ %.sroa.15296.0522, %.lr.ph513 ], [ %.sroa.15296.2, %bb.bu ] ; 2 uses
  %.sroa.10294.1507 = phi ptr [ %.sroa.10294.0521, %.lr.ph513 ], [ %.sroa.10294.2, %bb.bu ] ; 3 uses
  %.sroa.0290.1505 = phi ptr [ %.sroa.0290.0520, %.lr.ph513 ], [ %.sroa.0290.3, %bb.bu ] ; 10 uses
end_hunk_2
begin_hunk_3_@_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m:bb.a
  %.5200 = phi ptr [ %i.ch, %.lr.ph201 ], [ %.1130.lcssa, %.preheader ] ; 3 uses
  %.3140199 = phi ptr [ %i.ci, %.lr.ph201 ], [ %.2139, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.5200, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.5200, ptr noundef nonnull align 8 dereferenceable(20) %.3140199, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.3140199, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ch = getelementptr inbounds nuw i8, ptr %.5200, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.3140199, i64 24 ; 2 uses
  %i.cj = icmp ult ptr %i.ch, %.0154204
  br i1 %i.cj, label %.lr.ph201, label %._crit_edge, !llvm.loop !357

._crit_edge:                                      ; preds = %.lr.ph201, %.preheader
  %.3140.lcssa = phi ptr [ %.2139, %.preheader ], [ %i.ci, %.lr.ph201 ] ; 12 uses
  %i.ck = ptrtoint ptr %.4145.lcssa to i64        ; 2 uses
  %i.cl = sub i64 %i.ck, %i.f                     ; 6 uses
  %i.cm = ptrtoint ptr %.3140.lcssa to i64        ; 3 uses
  %i.cn = sub i64 %i.cm, %i.ck                    ; 6 uses
  %i.co = icmp sgt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cp = sub i64 %i.g, %i.cm                     ; 3 uses
  %i.cq = icmp sgt i64 %i.cp, %i.cn
  br i1 %i.cq, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.cr = icmp eq i64 %i.cn, 24
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = add i64 %.0146206, 1
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ct = icmp sgt i64 %i.cn, 24
  br i1 %i.ct, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cu = icmp eq i32 %.0.i, -1
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = add i64 %.0146206, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cw = add i64 %.0152205, 1
  %i.cx = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef %.4145.lcssa, ptr noundef %.3140.lcssa, i64 noundef %i.cw)
  %i.cy = add i64 %i.cx, %.0146206
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.u
  %.1147 = phi i64 [ %i.cs, %bb.u ], [ %i.cv, %bb.x ], [ %i.cy, %bb.y ], [ %.0146206, %bb.v ] ; 6 uses
  %i.cz = sub i64 %i.g, %i.cm                     ; 3 uses
  %i.da = icmp slt i64 %i.cl, %i.cz
  br i1 %i.da, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.db = icmp eq i64 %i.cl, 24
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add i64 %.1147, 1
  br label %bb.aw

bb.ac:                                            ; preds = %bb.aa
  %i.dd = icmp sgt i64 %i.cl, 24
  br i1 %i.dd, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.de = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.df = add i64 %i.de, %.1147
  br label %bb.aw

bb.ae:                                            ; preds = %bb.z
  %i.dg = icmp eq i64 %i.cz, 24
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = add i64 %.1147, 1
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae
  %i.di = icmp sgt i64 %i.cz, 24
  br i1 %i.di, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.dj = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.dk = add i64 %i.dj, %.1147
  br label %bb.aw

bb.ai:                                            ; preds = %bb.s
  %i.dl = icmp eq i64 %i.cl, 24
  br i1 %i.dl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dm = add i64 %.0146206, 1
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.dn = icmp sgt i64 %i.cl, 24
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef nonnull %.0156203, ptr noundef %.4145.lcssa, i64 noundef %.0152205)
  %i.dp = add i64 %i.do, %.0146206
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4150 = phi i64 [ %i.dm, %bb.aj ], [ %i.dp, %bb.al ], [ %.0146206, %bb.ak ] ; 3 uses
  %i.dq = icmp eq i64 %i.cp, 24
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dr = add i64 %.4150, 1
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ds = icmp sgt i64 %i.cp, 24
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dt = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.du = add i64 %i.dt, %.4150
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.5151 = phi i64 [ %i.dr, %bb.an ], [ %i.du, %bb.ap ], [ %.4150, %bb.ao ] ; 4 uses
  %i.dv = icmp eq i64 %i.cn, 24
  br i1 %i.dv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dw = add i64 %.5151, 1
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.dx = icmp sgt i64 %i.cn, 24
  br i1 %i.dx, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dy = icmp eq i32 %.0.i, -1
  br i1 %i.dy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dz = add i64 %.5151, 1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ea = add i64 %.0152205, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ab, %bb.ad, %bb.ac, %bb.ar, %bb.au, %bb.av, %bb.as
  %.1157 = phi ptr [ %.4145.lcssa, %bb.as ], [ %.3140.lcssa, %bb.ab ], [ %.4145.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.4145.lcssa, %bb.av ], [ %.3140.lcssa, %bb.ac ], [ %.3140.lcssa, %bb.ad ], [ %.0156203, %bb.ag ], [ %.0156203, %bb.ah ], [ %.0156203, %bb.af ] ; 3 uses
  %.1155 = phi ptr [ %.3140.lcssa, %bb.as ], [ %.0154204, %bb.ab ], [ %.3140.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.3140.lcssa, %bb.av ], [ %.0154204, %bb.ac ], [ %.0154204, %bb.ad ], [ %.4145.lcssa, %bb.ag ], [ %.4145.lcssa, %bb.ah ], [ %.4145.lcssa, %bb.af ] ; 3 uses
  %.1153 = phi i64 [ %.0152205, %bb.as ], [ %.0152205, %bb.ab ], [ %.0152205, %bb.ar ], [ %.0152205, %bb.au ], [ %i.ea, %bb.av ], [ %.0152205, %bb.ac ], [ %.0152205, %bb.ad ], [ %.0152205, %bb.ag ], [ %.0152205, %bb.ah ], [ %.0152205, %bb.af ] ; 2 uses
  %.6 = phi i64 [ %.5151, %bb.as ], [ %i.dc, %bb.ab ], [ %i.dw, %bb.ar ], [ %i.dz, %bb.au ], [ %.5151, %bb.av ], [ %.1147, %bb.ac ], [ %i.df, %bb.ad ], [ %.1147, %bb.ag ], [ %i.dk, %bb.ah ], [ %i.dh, %bb.af ] ; 2 uses
  %i.eb = ptrtoint ptr %.1155 to i64              ; 2 uses
  %i.ec = ptrtoint ptr %.1157 to i64              ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 240
  br i1 %i.ee, label %.lr.ph208, label %._crit_edge209, !llvm.loop !358

._crit_edge209:                                   ; preds = %bb.aw, %bb.a
  %.0156.lcssa = phi ptr [ %0, %bb.a ], [ %.1157, %bb.aw ] ; 2 uses
  %.0154.lcssa = phi ptr [ %1, %bb.a ], [ %.1155, %bb.aw ] ; 2 uses
  %.0152.lcssa = phi i64 [ %2, %bb.a ], [ %.1153, %bb.aw ] ; 2 uses
  %.0146.lcssa = phi i64 [ 0, %bb.a ], [ %.6, %bb.aw ] ; 2 uses
  %.lcssa182 = phi i64 [ %i.c, %bb.a ], [ %i.ed, %bb.aw ]
  %i.ef = icmp sgt i64 %.lcssa182, 24
  br i1 %i.ef, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %._crit_edge209
  %.01739.i = getelementptr inbounds nuw i8, ptr %.0156.lcssa, i64 24 ; 2 uses
  %i.eg = icmp ult ptr %.01739.i, %.0154.lcssa
  br i1 %i.eg, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit

.preheader.i:                                     ; preds = %bb.ax, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i
  %.01741.i = phi ptr [ %.017.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ], [ %.01739.i, %bb.ax ] ; 2 uses
  %.01840.i = phi i64 [ %i.ff, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ], [ 1, %bb.ax ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i
  %.037.i = phi ptr [ %i.eh, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i ], [ %.01741.i, %.preheader.i ] ; 6 uses
  %i.eh = getelementptr inbounds i8, ptr %.037.i, i64 -24 ; 5 uses
  %i.ei = getelementptr inbounds i8, ptr %.037.i, i64 -16
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !164 ; 3 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp ult i64 %.0152.lcssa, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !164 ; 3 uses
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.eo = zext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.eh, align 8
  %i.eq = load ptr, ptr %.037.i, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.er = add i64 %.01927.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.ek
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.az, !llvm.loop !359

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.01927.i.i = phi i64 [ %.0152.lcssa, %.lr.ph.i.i ], [ %i.er, %bb.ay ] ; 3 uses
  %i.es = icmp eq i64 %.01927.i.i, %i.eo
  br i1 %i.es, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = sub nsw i64 0, %.01927.i.i              ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ep, i64 %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !55  ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ew, %i.ez
  br i1 %.not.i.i, label %bb.ay, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i

._crit_edge.i.i:                                  ; preds = %bb.ay, %.lr.ph.i
  %i.fa = icmp eq i32 %i.ej, %i.en
  br i1 %i.fa, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i
  %i.fb = icmp ult i32 %i.ej, %i.en
  br i1 %i.fb, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i: ; preds = %bb.bb
  %i.fc = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i: ; preds = %bb.ba
  %.not56.i = icmp ugt i8 %i.ew, %i.ez
  br i1 %.not56.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i: ; preds = %bb.az, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eh, ptr noundef nonnull align 8 dereferenceable(20) %.037.i, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.037.i, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fd = icmp ugt ptr %i.eh, %.0156.lcssa
  br i1 %i.fd, label %.lr.ph.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i, !llvm.loop !360

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i
  %i.fe = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i: ; preds = %._crit_edge.i.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i
  %i.ff = phi i64 [ %i.fc, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i ], [ %i.fe, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i ], [ %.01840.i, %._crit_edge.i.i ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.01741.i, i64 24 ; 2 uses
  %i.fg = icmp ult ptr %.017.i, %.0154.lcssa
  br i1 %i.fg, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit, !llvm.loop !361

_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i, %bb.ax
  %.018.lcssa.i = phi i64 [ 1, %bb.ax ], [ %i.ff, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ]
  %i.fh = add i64 %.018.lcssa.i, %.0146.lcssa
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit, %._crit_edge209
  %.7 = phi i64 [ %i.fh, %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit ], [ %.0146.lcssa, %._crit_edge209 ]
  ret i64 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIhE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !51
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.e, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !199, !range !91, !noundef !92
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorIhE3fixEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.21)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #21
  resume { ptr, i32 } %i.l

_ZN6marisa8grimoire6vector6VectorIhE3fixEv.exit:  ; preds = %bb.a
  store i8 1, ptr %i.h, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = mul nuw i64 %i.d, 12
  %i.h = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.g)
  store ptr %i.h, ptr %i.f, align 8, !tbaa !96
  %i.i = sub i64 0, %i.b
  %i.j = and i64 %i.i, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !362, !range !91, !noundef !92
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.21)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.e, %bb.h ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE3fixEv.exit: ; preds = %bb.d
  store i8 1, ptr %i.l, align 8, !tbaa !362
  ret void

bb.h:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIhE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !170  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  %i.f = icmp ugt i64 %i.d, %i.e
  %i.g = shl nuw i64 %i.d, 1
  %.inv.i.i = icmp sgt i64 %i.d, -1
  %spec.select.i.i = select i1 %.inv.i.i, i64 %i.g, i64 -1
  %.0.i.i = select i1 %i.f, i64 %spec.select.i.i, i64 %i.b ; 2 uses
  %i.h = call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #22 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.j, i64 %i.l, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.m) #20
  br label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread

_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread: ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.n, align 8, !tbaa !136
  store i64 %.0.i.i, ptr %i.c, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.o, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit

_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.p, align 8, !tbaa !85
  %i.q = icmp eq ptr %.pre, null
  %i.r = icmp ne i64 %i.b, 0
  %or.cond.i = and i1 %i.r, %i.q
  br i1 %or.cond.i, label %bb.c, label %_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit

bb.c:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.s) #21
  resume { ptr, i32 } %i.t

_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit
  %i.u = phi ptr [ %i.h, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread ], [ %.pre, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit ]
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.u, i64 noundef %i.b)
  %i.v = load i64, ptr %i.a, align 8, !tbaa !54
  %i.w = sub i64 0, %i.v
  %i.x = and i64 %i.w, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 9 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !166  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.d, 1
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 768614336404564650
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 1537228672809129301, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.d ; 2 uses
  %i.l = mul i64 %.0.i.i, 12
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !101
  %i.r = mul i64 %i.q, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !113
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !166
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101  ; 6 uses
  %i.w = icmp ult i64 %i.v, %i.d
  br i1 %i.w, label %.lr.ph.i, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit

.lr.ph.i:                                         ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = sub nuw i64 %i.d, %i.v
  %.neg = add i64 %i.v, 1
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.v ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float f0x00800000, ptr %i.ac, align 4, !tbaa !55
  %i.ad = add nuw i64 %i.v, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.07.i.unr = phi i64 [ %i.v, %.lr.ph.i ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i64 %i.d, %.neg
  br i1 %i.ae, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.07.i = phi i64 [ %i.ao, %.lr.ph.i.new ], [ %.07.i.unr, %.prol.loopexit ] ; 3 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %.07.i ; 3 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store float f0x00800000, ptr %i.ai, align 4, !tbaa !55
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.07.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.am, align 4, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store float f0x00800000, ptr %i.an, align 4, !tbaa !55
  %i.ao = add nuw i64 %.07.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d
  br i1 %exitcond.not.i.1, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit, label %.lr.ph.i.new, !llvm.loop !7

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i
  store i64 %i.d, ptr %i.u, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165
  call void @_ZN6marisa8grimoire2io6Reader4readINS0_4trie5CacheEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.aq, i64 noundef %i.d)
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !54
  %i.as = sub i64 0, %i.ar
  %i.at = and i64 %i.as, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readINS0_4trie5CacheEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = mul nuw i64 %2, 12
  tail call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6marisa8grimoire6vector6VectorIhE6write_ERNS0_2io6WriterE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.c, ptr %i.a, align 8, !tbaa !54
  call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i64 %i.f, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.b, label %_ZN6marisa8grimoire2io6Writer5writeIhEEvPKT_m.exit

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #21
  resume { ptr, i32 } %i.j

_ZN6marisa8grimoire2io6Writer5writeIhEEvPKT_m.exit: ; preds = %bb.a
  call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.e, i64 noundef %i.f)
  %i.k = load i64, ptr %i.b, align 8, !tbaa !85
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.l, 7
  call void @_ZN6marisa8grimoire2io6Writer4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.m)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Writer5writeINS0_4trie5CacheEEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.11)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.12)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = mul nuw i64 %2, 12
  tail call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
