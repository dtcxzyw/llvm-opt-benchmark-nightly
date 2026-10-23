Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVF?download=true
inline.NumInlined: 1115
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE:bb.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.aa
  %i.bx = load i64, ptr %i.bj, align 8, !tbaa !85
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.cp

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  %.not78 = icmp eq ptr %9, null                  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.in = select i1 %.not78, ptr %i.ca, ptr %i.bz
  %i.cb = load i64, ptr %.in, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !114
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 %i.cd) ; 4 uses
  store i64 %.sroa.speculated, ptr %i.j, align 8, !tbaa !27
  %i.ce = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ce, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.cf, ptr %15, align 8, !tbaa !86
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !87
  store i8 0, ptr %i.cf, align 8, !tbaa !85
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.30) #29 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cj = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.ck)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load ptr, ptr %15, align 8, !tbaa !84
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !87
  %i.cn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cl, i64 noundef %i.cm, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.30) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %i.cp = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE, ptr noundef nonnull @.str.2, i32 noundef 418)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #42
          to label %bb.cq unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cp) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn79 = phi { ptr, i32 } [ %i.co, %bb.af ], [ %i.cq, %bb.ai ]
  %i.cr = load ptr, ptr %15, align 8, !tbaa !84   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.aj
  %i.ct = load i64, ptr %i.cf, align 8, !tbaa !85
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.co

bb.ak:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.in82 = select i1 %.not78, ptr %i.cw, ptr %i.cv
  %i.cx = load i64, ptr %.in82, align 8, !tbaa !27
  %.fr = freeze i64 %i.cx                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  br i1 %.not78, label %.thread133, label %bb.al

.thread133:                                       ; preds = %bb.ak
  store i8 0, ptr %i.k, align 1, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  store ptr null, ptr %i.l, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  br label %.thread.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !255, !range !28, !noundef !29 ; 5 uses
  store i8 %i.cz, ptr %i.k, align 1, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !125 ; 3 uses
  store ptr %i.db, ptr %i.l, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.thread.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = tail call ptr @__dynamic_cast(ptr nonnull %i.db, ptr nonnull @_ZTIN5faiss10IDSelectorE, ptr nonnull @_ZTIN5faiss15IDSelectorRangeE, i64 0) #29 ; 3 uses
  store ptr %i.dd, ptr %i.m, align 8, !tbaa !127
  %.not85 = icmp eq ptr %i.dd, null
  br i1 %.not85, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i8, ptr %i.de, align 8, !tbaa !258, !range !28, !noundef !29
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.thread.sink.split, label %.split

.split:                                           ; preds = %bb.an
  store ptr null, ptr %i.m, align 8, !tbaa !127
  br i1 %8, label %bb.ap, label %.thread

bb.ao:                                            ; preds = %bb.am
  br i1 %8, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %.split, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.dh, ptr %16, align 8, !tbaa !86
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.di, align 8, !tbaa !87
  store i8 0, ptr %i.dh, align 8, !tbaa !85
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #29 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dl = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.dm)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dn = load ptr, ptr %16, align 8, !tbaa !84
  %i.do = load i64, ptr %i.di, align 8, !tbaa !87
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.dn, i64 noundef %i.do, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.dl)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.au, %bb.ar, %bb.aq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.dr = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE, ptr noundef nonnull @.str.2, i32 noundef 436)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #42
          to label %bb.cq unwind label %bb.as

bb.av:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dr) #29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn97 = phi { ptr, i32 } [ %i.dq, %bb.as ], [ %i.ds, %bb.av ]
  %i.dt = load ptr, ptr %16, align 8, !tbaa !84   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dh
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.aw
  %i.dv = load i64, ptr %i.dh, align 8, !tbaa !85
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.cn

.thread.sink.split:                               ; preds = %bb.an, %.thread133, %bb.al
  %.sink = phi ptr [ %i.m, %.thread133 ], [ %i.m, %bb.al ], [ %i.l, %bb.an ]
  %.ph173 = phi i8 [ 0, %.thread133 ], [ %i.cz, %bb.al ], [ %i.cz, %bb.an ]
  store ptr null, ptr %.sink, align 8, !tbaa !119
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.split, %bb.ao
  %i.dx = phi i8 [ %i.cz, %.split ], [ %i.cz, %bb.ao ], [ %.ph173, %.thread.sink.split ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !129, !range !28, !noundef !29
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = icmp ne i64 %.fr, 0                     ; 3 uses
  %or.cond102.not = or i1 %8, %i.eb
  %or.cond139 = and i1 %or.cond102.not, %i.ea
  br i1 %or.cond139, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ec, ptr %17, align 8, !tbaa !86
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.ed, align 8, !tbaa !87
  store i8 0, ptr %i.ec, align 8, !tbaa !85
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #29 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.eg = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.eh)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ei = load ptr, ptr %17, align 8, !tbaa !84
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !87
  %i.ek = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ei, i64 noundef %i.ej, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.eg)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az, %bb.ay
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.az, %bb.ax
  %i.em = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE, ptr noundef nonnull @.str.2, i32 noundef 441)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_throw(ptr nonnull %i.em, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #42
          to label %bb.cq unwind label %bb.ba

bb.bd:                                            ; preds = %bb.bb
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.em) #29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn86 = phi { ptr, i32 } [ %i.el, %bb.ba ], [ %i.en, %bb.bd ]
  %i.eo = load ptr, ptr %17, align 8, !tbaa !84   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ec
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.be
  %i.eq = load i64, ptr %i.ec, align 8, !tbaa !85
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cn

bb.bf:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #29
  store i64 0, ptr %i.n, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #29
  store i64 0, ptr %i.o, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #29
  store i64 0, ptr %i.p, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  store ptr null, ptr %18, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  store i8 0, ptr %19, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #29
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.et = load i32, ptr %i.es, align 8, !tbaa !99 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !100 ; 2 uses
  %i.ew = xor i32 %i.ev, -1
  %i.ex = and i32 %i.et, %i.ew                    ; 5 uses
  store i32 %i.ex, ptr %i.q, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #29
  %i.ey = and i32 %i.ev, %i.et
  %.not88 = icmp eq i32 %i.ey, 0
  %i.ez = zext i1 %.not88 to i8
  store i8 %i.ez, ptr %i.r, align 1, !tbaa !118
  br i1 %i.eb, label %switch.early.test, label %bb.bo

switch.early.test:                                ; preds = %bb.bf
  switch i32 %i.ex, label %bb.bg [
    i32 3, label %bb.bo
    i32 0, label %bb.bo
  ]

bb.bg:                                            ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.fa, ptr %20, align 8, !tbaa !86
  %i.fb = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !87
  store i8 0, ptr %i.fa, align 8, !tbaa !85
  %i.fc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #29 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.fe = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.ff)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fg = load ptr, ptr %20, align 8, !tbaa !84
  %i.fh = load i64, ptr %i.fb, align 8, !tbaa !87
  %i.fi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fg, i64 noundef %i.fh, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.fe)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi, %bb.bh
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi, %bb.bg
  %i.fk = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE, ptr noundef nonnull @.str.2, i32 noundef 456)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #42
          to label %bb.cq unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bk
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fk) #29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn89 = phi { ptr, i32 } [ %i.fj, %bb.bj ], [ %i.fl, %bb.bm ]
  %i.fm = load ptr, ptr %20, align 8, !tbaa !84   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fa
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.bn
  %i.fo = load i64, ptr %i.fa, align 8, !tbaa !85
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.cl

bb.bo:                                            ; preds = %switch.early.test, %switch.early.test, %bb.bf
  %.not = icmp eq i8 %i.dx, 0
  br i1 %.not, label %bb.bx, label %switch.early.test103

switch.early.test103:                             ; preds = %bb.bo
  switch i32 %i.ex, label %bb.bp [
    i32 3, label %bb.bx
    i32 0, label %bb.bx
  ]

bb.bp:                                            ; preds = %switch.early.test103
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.fq, ptr %21, align 8, !tbaa !86
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.fr, align 8, !tbaa !87
  store i8 0, ptr %i.fq, align 8, !tbaa !85
  %i.fs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #29 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.fu = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fv = add nuw nsw i64 %i.fu, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.fv)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fw = load ptr, ptr %21, align 8, !tbaa !84
  %i.fx = load i64, ptr %i.fr, align 8, !tbaa !87
  %i.fy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fw, i64 noundef %i.fx, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.fu)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br, %bb.bq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %bb.br, %bb.bp
  %i.ga = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE, ptr noundef nonnull @.str.2, i32 noundef 460)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #42
          to label %bb.cq unwind label %bb.bs

bb.bv:                                            ; preds = %bb.bt
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ga) #29
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn91 = phi { ptr, i32 } [ %i.fz, %bb.bs ], [ %i.gb, %bb.bv ]
  %i.gc = load ptr, ptr %21, align 8, !tbaa !84   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fq
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.bw
  %i.ge = load i64, ptr %i.fq, align 8, !tbaa !85
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.cl

bb.bx:                                            ; preds = %switch.early.test103, %switch.early.test103, %bb.bo
  %spec.select = select i1 %i.eb, i64 %.fr, i64 9223372036854775807 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #29
  %22 = trunc nuw i8 %i.dx to i1
  %i.gg = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 %3)
  %i.gh = select i1 %22, i64 %i.gg, i64 %spec.select
  store i64 %i.gh, ptr %i.s, align 8, !tbaa !27
  %i.gi = tail call i32 @omp_get_max_threads()
  %i.gj = icmp slt i32 %i.gi, 2
  %i.gk = icmp eq i32 %i.ex, 0
  %or.cond11 = select i1 %i.gj, i1 true, i1 %i.gk
  br i1 %or.cond11, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i32 %i.ex, label %bb.cb [
    i32 3, label %bb.bz
    i32 1, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.gl = icmp sgt i64 %1, 1
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.gm = icmp ne i64 %.sroa.speculated, 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  %i.gn = mul nsw i64 %1, %.sroa.speculated
  %i.go = icmp sgt i64 %i.gn, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %bb.bz, %bb.bx
  %i.gp = phi i1 [ false, %bb.bx ], [ %i.go, %bb.cb ], [ %i.gl, %bb.bz ], [ %i.gm, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #29
  br i1 %.not78, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !130
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.gs = phi ptr [ %i.gr, %bb.cd ], [ null, %bb.cc ]
  store ptr %i.gs, ptr %i.t, align 8, !tbaa !119
  br i1 %i.gp, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 23, ptr nonnull @_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined, ptr nonnull %0, ptr nonnull %i.h, ptr nonnull %i.l, ptr nonnull %i.i, ptr nonnull %i.r, ptr nonnull %i.c, ptr nonnull %i.t, ptr nonnull %i.n, ptr nonnull %i.p, ptr nonnull %i.m, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %19, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.k, ptr nonnull %i.s, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.o, ptr nonnull %18)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.v)
  store i32 %i.v, ptr %i.u, align 4, !tbaa !101
  call void @_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined(ptr nonnull %i.u, ptr nonnull poison, ptr nonnull %0, ptr %i.h, ptr %i.l, ptr %i.i, ptr %i.r, ptr %i.c, ptr %i.t, ptr %i.n, ptr %i.p, ptr %i.m, ptr %i.q, ptr %i.a, ptr %19, ptr %i.b, ptr %i.f, ptr %i.g, ptr %i.j, ptr %i.k, ptr %i.s, ptr %i.d, ptr %i.e, ptr %i.o, ptr %18) #29
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.v)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.gt = load ptr, ptr %18, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.gt, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.ch
  store ptr %i.gt, ptr %11, align 8, !tbaa !103
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %11) #42
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.cj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %11, align 8, !tbaa !103
  %.not.i3.i = icmp eq ptr %i.gv, null
  br i1 %.not.i3.i, label %.body, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  br label %.body

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.gw = icmp eq ptr %10, null
  %spec.store.select = select i1 %i.gw, ptr @_ZN5faiss14indexIVF_statsE, ptr %10 ; 5 uses
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !27
  %i.gy = load i64, ptr %spec.store.select, align 8, !tbaa !131
  %i.gz = add i64 %i.gy, %i.gx
  store i64 %i.gz, ptr %spec.store.select, align 8, !tbaa !131
  %i.ha = load i64, ptr %i.n, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !132
  %i.hd = add i64 %i.hc, %i.ha
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !132
  %i.he = load i64, ptr %i.o, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !133
  %i.hh = add i64 %i.hg, %i.he
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !133
  %i.hi = load i64, ptr %i.p, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 24 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !261
  %i.hl = add i64 %i.hk, %i.hi
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  ret void

.body:                                            ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #29
  br label %bb.cl

bb.cl:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.pn95 = phi { ptr, i32 } [ %i.gu, %.body ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.hm = load ptr, ptr %18, align 8, !tbaa !103
  %.not.i127 = icmp eq ptr %i.hm, null
  br i1 %.not.i127, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #29
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #29
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn97.pn = phi { ptr, i32 } [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn95, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit128 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %bb.cn ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn97.pn.pn.pn = phi { ptr, i32 } [ %.pn97.pn.pn, %bb.co ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn97.pn.pn.pn

bb.cq:                                            ; preds = %bb.bu, %bb.bl, %bb.bc, %bb.au, %bb.ah, %bb.y, %bb.p, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273) %0, i64 noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %8, ptr nofree noundef captures(address_is_null) %9) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 7 uses
  %i.m = alloca i64, align 8                      ; 7 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 11 uses
  %16 = alloca %"class.std::vector.103", align 8  ; 14 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 2 uses
  %i.p = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  store ptr %2, ptr %i.b, align 8, !tbaa !90
  store float %3, ptr %i.c, align 4, !tbaa !34
  store ptr %4, ptr %i.d, align 8, !tbaa !91
  store ptr %5, ptr %i.e, align 8, !tbaa !90
  store ptr %6, ptr %i.f, align 8, !tbaa !135
  %i.q = zext i1 %7 to i8
  store i8 %i.q, ptr %i.g, align 1, !tbaa !118
  store ptr %8, ptr %i.h, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !tbaa !80, !range !28, !noundef !29
end_hunk_0
