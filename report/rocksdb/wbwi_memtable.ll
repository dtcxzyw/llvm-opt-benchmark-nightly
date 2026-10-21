Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wbwi_memtable?download=true
inline.NumInlined: 1365
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12WBWIMemTable3GetERKNS_9LookupKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsESA_PNS_6StatusEPNS_12MergeContextEPmSH_RKNS_11ReadOptionsEbPNS_12ReadCallbackEPbbPKNS_11BlobFetcherE:bb.a
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.bn, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke { ptr, i64 } %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.j unwind label %bb.s       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bt = extractvalue { ptr, i64 } %i.bs, 1
  %i.bu = add i64 %i.bt, -8
  %i.bv = extractvalue { ptr, i64 } %i.bs, 0
  store ptr %i.bv, ptr %17, align 8
  store i64 %i.bu, ptr %i.bc, align 8
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br i1 %i.bz, label %bb.l, label %.loopexit282

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke { ptr, i64 } %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.0.copyload.i.i94 = load i64, ptr %i.ch, align 1 ; 5 uses
  %i.ci = lshr i64 %.0.copyload.i.i94, 8          ; 8 uses
  %i.cj = trunc i64 %.0.copyload.i.i94 to i8      ; 4 uses
  br i1 %.not, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load i64, ptr %i.bd, align 8, !tbaa !267
  %i.cl = icmp ult i64 %i.ci, %i.ck
  br i1 %i.cl, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = load i64, ptr %i.be, align 8, !tbaa !268
  %i.cn = icmp ult i64 %i.cm, %i.ci
  br i1 %i.cn, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread278, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %11, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ci)
          to label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !242

_ZN7rocksdb12ReadCallback9IsVisibleEm.exit:       ; preds = %bb.p
  br i1 %i.cr, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread278

_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread: ; preds = %bb.n, %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit, %bb.m
  %i.cs = load i64, ptr %8, align 8, !tbaa !121
  %i.ct = icmp eq i64 %i.cs, 72057594037927935
  br i1 %i.ct, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread
  %i.cu = load i64, ptr %7, align 8, !tbaa !121
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cu)
  store i64 %.sroa.speculated, ptr %8, align 8, !tbaa !121
  br label %bb.t

bb.r:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit249

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.g, %bb.p, %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread278, %.thread
  %lpad.loopexit.split-lp717 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.q, %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread
  %i.cx = load i64, ptr %7, align 8, !tbaa !121
  %i.cy = icmp ugt i64 %i.cx, %i.ci
  br i1 %i.cy, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i8 %i.cj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i [
    i8 1, label %bb.v
    i8 0, label %.thread
    i8 7, label %.thread
    i8 15, label %.thread
    i8 2, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke { ptr, i64 } %i.db(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.w unwind label %bb.z       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0
  store ptr %i.dd, ptr %18, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.df = extractvalue { ptr, i64 } %i.dc, 1
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 168
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dk = trunc nuw i8 %.044 to i1
  %i.dl = load ptr, ptr %i.bg, align 8, !tbaa !269
  %i.dm = load ptr, ptr %i.bh, align 8, !tbaa !270
  %i.dn = load ptr, ptr %i.bi, align 8, !tbaa !271
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !272
  invoke void @_ZN7rocksdb16ReadOnlyMemTable15HandleTypeValueERKNS_5SliceES3_bbbPNS_12MergeContextEPKNS_13MergeOperatorEPNS_11SystemClockEPNS_10StatisticsEPNS_6LoggerEPNS_6StatusEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEPb(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %18, i1 noundef zeroext %i.dj, i1 noundef zeroext %13, i1 noundef zeroext %i.dk, ptr noundef %6, ptr noundef %i.dl, ptr noundef %i.dm, ptr noundef %i.dn, ptr noundef %i.do, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef %12)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.loopexit.split-lp

.thread:                                          ; preds = %bb.t, %bb.u, %bb.u, %bb.u
  %i.dq = trunc nuw i8 %.044 to i1
  %i.dr = load ptr, ptr %i.bg, align 8, !tbaa !269
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !270
  %i.dt = load ptr, ptr %i.bi, align 8, !tbaa !271
  %i.du = load ptr, ptr %i.bj, align 8, !tbaa !272
  invoke void @_ZN7rocksdb16ReadOnlyMemTable18HandleTypeDeletionERKNS_5SliceEbPNS_12MergeContextEPKNS_13MergeOperatorEPNS_11SystemClockEPNS_10StatisticsEPNS_6LoggerEPNS_6StatusEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr noundef nonnull align 8 dereferenceable(16) %16, i1 noundef zeroext %i.dq, ptr noundef %6, ptr noundef %i.dr, ptr noundef %i.ds, ptr noundef %i.dt, ptr noundef %i.du, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3)
          to label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 112
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke { ptr, i64 } %i.dx(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.ae     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0
  store ptr %i.dz, ptr %19, align 8
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  store i64 %i.ea, ptr %i.bf, align 8
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 168
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ef = load ptr, ptr %i.bg, align 8, !tbaa !269
  %i.eg = load ptr, ptr %i.bh, align 8, !tbaa !270
  %i.eh = load ptr, ptr %i.bi, align 8, !tbaa !271
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !272
  %i.ej = invoke noundef zeroext i1 @_ZN7rocksdb16ReadOnlyMemTable15HandleTypeMergeERKNS_5SliceES3_bbPNS_12MergeContextEPKNS_13MergeOperatorEPNS_11SystemClockEPNS_10StatisticsEPNS_6LoggerEPNS_6StatusEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %19, i1 noundef zeroext %i.ee, i1 noundef zeroext %13, ptr noundef %6, ptr noundef %i.ef, ptr noundef %i.eg, ptr noundef %i.eh, ptr noundef %i.ei, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br i1 %i.ej, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt14default_deleteIS3_EED2Ev.exit, label %_ZN7rocksdb12ReadCallback9IsVisibleEm.exit.thread278

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.loopexit.split-lp

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.el = trunc i64 %.0.copyload.i.i94 to i32
  %i.em = and i32 %i.el, 255                      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.en = icmp samesign ult i32 %i.em, 10
  %i.eo = icmp samesign ult i32 %i.em, 100        ; 2 uses
  %.022.i.i = select i1 %i.eo, i64 2, i64 3       ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 12 uses
  store ptr %i.ep, ptr %22, align 8, !tbaa !161, !alias.scope !273
  br i1 %i.en, label %.thread404, label %bb.af

.thread404:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.eq, align 8, !tbaa !162, !alias.scope !273
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2) %i.ep, i8 45, i64 %.022.i.i, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.022.i.i, ptr %i.er, align 8, !tbaa !162, !alias.scope !273
  %..sroa.sel.v = select i1 %i.eo, i64 18, i64 19
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %22, i64 %..sroa.sel.v
  store i8 0, ptr %..sroa.sel, align 1, !tbaa !20
  %i.es = icmp samesign ugt i32 %i.em, 99
  br i1 %i.es, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.af
  %i.et = urem i8 %i.cj, 100
  %i.eu = shl nuw i8 %i.et, 1
  %i.ev = udiv i8 %i.cj, 100
  %i.ew = zext i8 %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20, !noalias !273
  %i.fa = getelementptr inbounds nuw i8, ptr %22, i64 18
  store i8 %i.ez, ptr %i.fa, align 2, !tbaa !20
  %i.fb = load i8, ptr %i.ex, align 2, !tbaa !20, !noalias !273
  br label %bb.ag, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.af
  %i.fc = shl nuw nsw i32 %i.em, 1
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20, !noalias !273
  %i.fh = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !20
  %i.fi = load i8, ptr %i.fe, align 2, !tbaa !20, !noalias !273
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.ag:                                            ; preds = %.lr.ph.preheader.i.i, %.thread404
  %35 = phi i64 [ %.022.i.i, %.lr.ph.preheader.i.i ], [ 1, %.thread404 ]
  %.sink = phi i8 [ %i.fb, %.lr.ph.preheader.i.i ], [ 0, %.thread404 ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.ev, %.lr.ph.preheader.i.i ], [ %i.cj, %.thread404 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 %.sink, ptr %i.fj, align 1, !tbaa !20
  %i.fk = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.ag, %._crit_edge.i.i
  %36 = phi i64 [ %35, %bb.ag ], [ %.022.i.i, %._crit_edge.i.i ] ; 5 uses
  %storemerge.i.i = phi i8 [ %i.fk, %bb.ag ], [ %i.fi, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.ep, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fm = or disjoint i64 %36, 64                 ; 5 uses
  %i.fn = add nuw nsw i64 %36, 65
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #28
          to label %bb.ah unwind label %bb.dd     ; 4 uses

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fo, ptr noundef nonnull align 1 dereferenceable(64) @.str.40, i64 64, i1 false)
  %.pre.i463 = load ptr, ptr %22, align 8, !tbaa !19 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64 ; 2 uses
  %cond31.i = icmp eq i64 %36, 1
  br i1 %cond31.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fq = load i8, ptr %.pre.i463, align 1, !tbaa !20
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr align 1 %.pre.i463, i64 %36, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %bb.aj, %bb.ai
  %i.fr = icmp eq ptr %.pre.i463, %i.ep
  br i1 %i.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.fs = load i64, ptr %i.ep, align 8, !tbaa !20
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %.pre.i463, i64 noundef %i.ft) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store i64 %i.fm, ptr %i.ep, align 8, !tbaa !20
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 0, ptr %i.fu, align 1, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  store ptr %i.fo, ptr %21, align 8, !tbaa !19, !alias.scope !274
  store i64 %i.fm, ptr %i.fv, align 8, !tbaa !20, !alias.scope !274
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i64 %i.fm, ptr %i.fw, align 8, !tbaa !162, !alias.scope !274
  store ptr %i.ep, ptr %22, align 8, !tbaa !19
  store i64 0, ptr %i.fl, align 8, !tbaa !162
  store i8 0, ptr %i.ep, align 8, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.fm, i64 noundef 0, ptr noundef nonnull @.str.41, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i
  %i.fx = add nuw nsw i64 %36, 66                 ; 2 uses
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !162, !noalias !275
  %i.fy = load ptr, ptr %21, align 8, !tbaa !19, !noalias !275
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !20, !noalias !275
  %i.ga = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.ga, ptr %20, align 8, !tbaa !161, !alias.scope !275
  %i.gb = load ptr, ptr %21, align 8, !tbaa !19, !noalias !275 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fv
  br i1 %i.gc, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.gd = load i64, ptr %i.fw, align 8, !tbaa !162, !noalias !275 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 16
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nuw nsw i64 %i.gd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ga, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.gf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.gb, ptr %20, align 8, !tbaa !19, !alias.scope !275
  %i.gg = load i64, ptr %i.fv, align 8, !tbaa !20, !noalias !275
  store i64 %i.gg, ptr %i.ga, align 8, !tbaa !20, !alias.scope !275
  %.pre.i97 = load i64, ptr %i.fw, align 8, !tbaa !162, !noalias !275
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ak
  %i.gh = phi i64 [ %i.gd, %bb.ak ], [ %.pre.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !162, !alias.scope !275
  store ptr %i.fv, ptr %21, align 8, !tbaa !19, !noalias !275
  store i64 0, ptr %i.fw, align 8, !tbaa !162, !noalias !275
  store i8 0, ptr %i.fv, align 8, !tbaa !20, !noalias !275
  %i.gj = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ep
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gl = load i64, ptr %i.ep, align 8, !tbaa !20
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = invoke { ptr, i64 } %i.gp(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.al unwind label %bb.df     ; 2 uses

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.gr = extractvalue { ptr, i64 } %i.gq, 1
  %i.gs = add i64 %i.gr, -8
  %i.gt = extractvalue { ptr, i64 } %i.gq, 0
  store ptr %i.gt, ptr %26, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.gs, ptr %i.gu, align 8
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i1 noundef zeroext true)
          to label %bb.am unwind label %bb.df

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !162 ; 13 uses
  %i.gx = icmp sgt i64 %i.gw, 9223372036854775797
  br i1 %i.gx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i437: ; preds = %bb.am
  %i.gy = add nsw i64 %i.gw, 10                   ; 7 uses
  %i.gz = load ptr, ptr %25, align 8, !tbaa !19   ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 12 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i437
  %i.hc = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.hc)
  %.not.i440 = icmp samesign ugt i64 %i.gw, 5
  br i1 %.not.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread, label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i437
  %i.hd = load i64, ptr %i.ha, align 8, !tbaa !20 ; 2 uses
  %.not.i440503 = icmp ugt i64 %i.gy, %i.hd
  br i1 %.not.i440503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439
  %i.he = icmp ugt ptr %i.gz, @.str.42
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gw
  %i.hg = icmp ult ptr %i.hf, @.str.42
  %i.hh = select i1 %i.he, i1 true, i1 %i.hg
  br i1 %i.hh, label %bb.ao, label %bb.as, !prof !163

bb.ao:                                            ; preds = %bb.an
  %.not35.i441 = icmp eq i64 %i.gw, 0
  br i1 %.not35.i441, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i443, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 10 ; 2 uses
  %cond38.i442 = icmp eq i64 %i.gw, 1
  br i1 %cond38.i442, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hj = load i8, ptr %i.gz, align 1, !tbaa !20
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i443

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hi, ptr align 1 %i.gz, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i443: ; preds = %bb.ar, %bb.aq, %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.gz, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false)
  br label %.noexc109

bb.as:                                            ; preds = %bb.an
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.gz, i64 noundef 0, ptr noundef nonnull @.str.42, i64 noundef 10, i64 noundef %i.gw) #29
          to label %.noexc109 unwind label %bb.dg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439.thread
  %i.hk = icmp slt i64 %i.gw, -10
  br i1 %i.hk, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469, %bb.am
  %i.hl = phi ptr [ @.str.50, %bb.am ], [ @.str.46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.hl) #30
          to label %.cont unwind label %bb.dg

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469
  %i.hm = phi i64 [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i439 ] ; 2 uses
  %i.hn = icmp ugt i64 %i.gy, %i.hm
  br i1 %i.hn, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread
  %i.ho = shl nuw i64 %i.hm, 1                    ; 2 uses
  %i.hp = icmp ult i64 %i.gy, %i.ho
  br i1 %i.hp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %spec.store.select.i.i478 = call i64 @llvm.umin.i64(i64 %i.ho, i64 9223372036854775807)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread
  %.0.i470 = phi i64 [ %spec.store.select.i.i478, %bb.au ], [ %i.gy, %bb.at ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i469.thread ] ; 2 uses
  %i.hq = add nuw i64 %.0.i470, 1                 ; 2 uses
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i471, !prof !164

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc481 unwind label %bb.dg

.noexc481:                                        ; preds = %bb.aw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i471: ; preds = %bb.av
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #28
          to label %.noexc482 unwind label %bb.dg ; 3 uses

.noexc482:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.hs, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false)
  %.not25.i472 = icmp eq i64 %i.gw, 0
  %.pre.i473 = load ptr, ptr %25, align 8, !tbaa !19 ; 4 uses
  br i1 %.not25.i472, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475, label %bb.ax

bb.ax:                                            ; preds = %.noexc482
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 10 ; 2 uses
  %cond31.i474 = icmp eq i64 %i.gw, 1
  br i1 %cond31.i474, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hu = load i8, ptr %.pre.i473, align 1, !tbaa !20
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr align 1 %.pre.i473, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475: ; preds = %bb.az, %bb.ay, %.noexc482
  %i.hv = icmp eq ptr %.pre.i473, %i.ha
  br i1 %i.hv, label %.noexc447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475
  %i.hw = load i64, ptr %i.ha, align 8, !tbaa !20
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %.pre.i473, i64 noundef %i.hx) #26
  br label %.noexc447

.noexc447:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i476
  store ptr %i.hs, ptr %25, align 8, !tbaa !19
  store i64 %.0.i470, ptr %i.ha, align 8, !tbaa !20
  br label %.noexc109

end_hunk_0
