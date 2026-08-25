Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnixAPIChecker?download=true
begin_hunk_0_@_ZN5clang4ento28registerUnixAPIMisuseCheckerERNS0_14CheckerManagerE:bb.a
  store i8 1, ptr %i.bp, align 8, !tbaa !203, !noalias !190
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !190
  store i64 22, ptr %i.e, align 8, !tbaa !206, !noalias !190
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !207, !noalias !190
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !206, !noalias !190 ; 3 uses
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !208, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.bs, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 22, i1 false), !noalias !190
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !209, !noalias !190
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !207, !noalias !190
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !190
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !190
  store i64 %i.bn, ptr %i.d, align 8, !tbaa !206, !noalias !190
  %i.bz = icmp ugt i64 %i.bn, 15
  br i1 %i.bz, label %bb.d, label %._crit_edge.i.i.i.i2.i9.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ca = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !207, !noalias !190
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !206, !noalias !190
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !208, !noalias !190
  br label %._crit_edge.i.i.i.i2.i9.i.i.i

._crit_edge.i.i.i.i2.i9.i.i.i:                    ; preds = %bb.d, %bb.c
  %i.cc = phi ptr [ %i.ca, %bb.d ], [ %i.by, %bb.c ] ; 2 uses
  switch i64 %i.bn, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i2.i9.i.i.i
  %i.cd = load i8, ptr %i.x, align 1, !tbaa !208, !noalias !190
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !208, !noalias !190
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i2.i9.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %i.x, i64 %i.bn, i1 false), !noalias !190
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i2.i9.i.i.i
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !206, !noalias !190 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !209, !noalias !190
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !207, !noalias !190
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !190
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  store i8 0, ptr %i.ci, align 8, !tbaa !210, !noalias !190
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #20, !noalias !190 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4ento7BugTypeE, i64 16), ptr %i.cj, align 8, !tbaa !197, !noalias !190
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  store ptr %i.w, ptr %i.cl, align 8, !tbaa !200, !noalias !190
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store i8 1, ptr %i.cm, align 8, !tbaa !203, !noalias !190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20, !noalias !190
  store i64 24, ptr %i.g, align 8, !tbaa !206, !noalias !190
  %i.cp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !207, !noalias !190
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !206, !noalias !190 ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !208, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false), !noalias !190
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !209, !noalias !190
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !207, !noalias !190
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !190
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 208 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 224 ; 3 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !190
  store i64 %i.ck, ptr %i.f, align 8, !tbaa !206, !noalias !190
  %i.cw = icmp ugt i64 %i.ck, 15
  br i1 %i.cw, label %bb.h, label %._crit_edge.i.i.i.i2.i6.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !207, !noalias !190
  %i.cy = load i64, ptr %i.f, align 8, !tbaa !206, !noalias !190
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !208, !noalias !190
  br label %._crit_edge.i.i.i.i2.i6.i.i.i

._crit_edge.i.i.i.i2.i6.i.i.i:                    ; preds = %bb.h, %bb.g
  %i.cz = phi ptr [ %i.cx, %bb.h ], [ %i.cv, %bb.g ] ; 2 uses
  switch i64 %i.ck, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i2.i6.i.i.i
  %i.da = load i8, ptr %i.x, align 1, !tbaa !208, !noalias !190
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !208, !noalias !190
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i2.i6.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.x, i64 %i.ck, i1 false), !noalias !190
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i2.i6.i.i.i
  %i.db = load i64, ptr %i.f, align 8, !tbaa !206, !noalias !190 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !209, !noalias !190
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !207, !noalias !190
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !190
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  store i8 0, ptr %i.df, align 8, !tbaa !210, !noalias !190
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #20, !noalias !190 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4ento7BugTypeE, i64 16), ptr %i.dg, align 8, !tbaa !197, !noalias !190
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store ptr %i.w, ptr %i.di, align 8, !tbaa !200, !noalias !190
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  store i8 1, ptr %i.dj, align 8, !tbaa !203, !noalias !190
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 280 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 296 ; 2 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20, !noalias !190
  store i64 30, ptr %i.i, align 8, !tbaa !206, !noalias !190
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !207, !noalias !190
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !206, !noalias !190 ; 3 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !208, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.dm, ptr noundef nonnull align 1 dereferenceable(30) @.str.2, i64 30, i1 false), !noalias !190
  %i.do = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !209, !noalias !190
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !207, !noalias !190
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20, !noalias !190
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 312 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 328 ; 3 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !190
  store i64 %i.dh, ptr %i.h, align 8, !tbaa !206, !noalias !190
  %i.dt = icmp ugt i64 %i.dh, 15
  br i1 %i.dt, label %bb.l, label %._crit_edge.i.i.i.i2.i3.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.du = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !207, !noalias !190
  %i.dv = load i64, ptr %i.h, align 8, !tbaa !206, !noalias !190
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !208, !noalias !190
  br label %._crit_edge.i.i.i.i2.i3.i.i.i

._crit_edge.i.i.i.i2.i3.i.i.i:                    ; preds = %bb.l, %bb.k
  %i.dw = phi ptr [ %i.du, %bb.l ], [ %i.ds, %bb.k ] ; 2 uses
  switch i64 %i.dh, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i2.i3.i.i.i
  %i.dx = load i8, ptr %i.x, align 1, !tbaa !208, !noalias !190
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !208, !noalias !190
  br label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i2.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr nonnull align 1 %i.x, i64 %i.dh, i1 false), !noalias !190
  br label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i

_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i2.i3.i.i.i
  %i.dy = load i64, ptr %i.h, align 8, !tbaa !206, !noalias !190 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !209, !noalias !190
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !207, !noalias !190
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !190
  %i.ec = getelementptr inbounds nuw i8, ptr %i.s, i64 344
  store i8 0, ptr %i.ec, align 8, !tbaa !210, !noalias !190
  %i.ed = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #20, !noalias !190
  br label %bb.o

bb.o:                                             ; preds = %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i, %_ZN4llvm9StringRefC2EPKc.exit10.thread.i.i.i.i
  %.sroa.0.0.i13.i.i.i.i = phi i64 [ %i.ed, %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit4.i.i.i ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit10.thread.i.i.i.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4ento7BugTypeE, i64 16), ptr %i.ee, align 8, !tbaa !197, !noalias !190
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 360
  store ptr %i.w, ptr %i.ef, align 8, !tbaa !200, !noalias !190
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  store i8 1, ptr %i.eg, align 8, !tbaa !203, !noalias !190
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 400 ; 2 uses
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !205, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ei, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false), !noalias !190
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 392
  store i64 12, ptr %i.ej, align 8, !tbaa !209, !noalias !190
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 412
  store i8 0, ptr %i.ek, align 4, !tbaa !208, !noalias !190
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 416 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 432 ; 3 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !205, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20, !noalias !190
  store i64 %.sroa.0.0.i13.i.i.i.i, ptr %i.j, align 8, !tbaa !206, !noalias !190
  %i.en = icmp ugt i64 %.sroa.0.0.i13.i.i.i.i, 15
  br i1 %i.en, label %bb.p, label %._crit_edge.i.i.i.i2.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.eo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #20, !noalias !190 ; 2 uses
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !207, !noalias !190
  %i.ep = load i64, ptr %i.j, align 8, !tbaa !206, !noalias !190
  store i64 %i.ep, ptr %i.em, align 8, !tbaa !208, !noalias !190
  br label %._crit_edge.i.i.i.i2.i.i.i.i

._crit_edge.i.i.i.i2.i.i.i.i:                     ; preds = %bb.p, %bb.o
  %i.eq = phi ptr [ %i.eo, %bb.p ], [ %i.em, %bb.o ] ; 2 uses
  switch i64 %.sroa.0.0.i13.i.i.i.i, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i2.i.i.i.i
  %i.er = load i8, ptr %i.x, align 1, !tbaa !208, !noalias !190
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !208, !noalias !190
  br label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i2.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.x, i64 %.sroa.0.0.i13.i.i.i.i, i1 false), !noalias !190
  br label %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i

_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i2.i.i.i.i
  %i.es = load i64, ptr %i.j, align 8, !tbaa !206, !noalias !190 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  store i64 %i.es, ptr %i.et, align 8, !tbaa !209, !noalias !190
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !207, !noalias !190
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  store i8 0, ptr %i.ev, align 1, !tbaa !208, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20, !noalias !190
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 448
  store i8 0, ptr %i.ew, align 8, !tbaa !210, !noalias !190
  %i.ex = call i64 @_ZN5clang4ento18tryExpandAsIntegerEN4llvm9StringRefERKNS_12PreprocessorE(ptr nonnull @.str.5, i64 7, ptr noundef nonnull align 8 dereferenceable(3344) %i.n) #20, !noalias !190 ; 7 uses
  %i.ey = and i64 %i.ex, 4294967296
  %.not.i15.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i15.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i
  %.sroa.522.0.extract.shift23.i.i.i.i.i = and i64 %i.ex, -1099511627776
  %i.ez = and i64 %i.ex, 1095216660480
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

bb.t:                                             ; preds = %_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b.exit.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 17712
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !218, !noalias !190
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 256
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !614, !noalias !190
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.4.0.extract.trunc.i.i.i.i.i = and i64 %i.ex, 1090921693184
  %.sroa.522.0.extract.shift.i.i.i.i.i = and i64 %i.ex, -1099511627776
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.018.0.i.i.i.i.i = phi i64 [ %i.ex, %bb.s ], [ %i.ex, %bb.u ], [ 512, %bb.t ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %i.ez, %bb.s ], [ %.sroa.4.0.extract.trunc.i.i.i.i.i, %bb.u ], [ 4294967296, %bb.t ]
  %.sroa.522.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.522.0.extract.shift23.i.i.i.i.i, %bb.s ], [ %.sroa.522.0.extract.shift.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %.sroa.018.0.insert.ext.i.i.i.i.i = and i64 %.sroa.018.0.i.i.i.i.i, 4294967295
  %.sroa.4.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.018.0.insert.ext.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  %.sroa.018.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i.i, %.sroa.522.sroa.0.0.i.i.i.i.i
  store i64 %.sroa.018.0.insert.insert.i.i.i.i.i, ptr %i.ff, align 8, !noalias !190
  call void @_ZN5clang4ento14CheckerManager19_registerForPreCallENS0_9CheckerFnIFvRKNS0_9CallEventERNS0_14CheckerContextEEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_120UnixAPIMisuseCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE, ptr nonnull %i.s) #20
  %i.fg = load ptr, ptr %i.q, align 8, !tbaa !188 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !188
  %.not.i.i.i6.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i6.i.i, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit.i, label %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !197
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #20, !inline_history !622
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !188
  br label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit.i

_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i, %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %bb.a
  %i.fk = phi ptr [ %i.s, %_ZSt11make_uniqueIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRN5clang10ASTContextERKNS2_12PreprocessorEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i ], [ %i.r, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fm, align 8, !tbaa !199
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !206
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !193, !range !623, !noundef !624
  %i.fp = trunc nuw i8 %i.fo to i1
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.fl, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br i1 %i.fp, label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit.i
  store i8 1, ptr %i.fn, align 8, !tbaa !193
  br label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit

_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit: ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120UnixAPIMisuseCheckerEJRNS_10ASTContextERKNS_12PreprocessorEEEEPT_DpOT0_.exit.i, %bb.v
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang4ento34shouldRegisterUnixAPIMisuseCheckerERKNS0_14CheckerManagerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1864) %0) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento33registerUnixAPIPortabilityCheckerERNS0_14CheckerManagerE(ptr noundef nonnull align 8 dereferenceable(1864) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr @_ZZN5clang4ento14CheckerManager6getTagIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEEEPvvE3tag, ptr %i.a, align 8, !tbaa !187
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21, !noalias !625 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.f, i8 0, i64 144, i1 false), !noalias !625
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_125UnixAPIPortabilityCheckerE, i64 16), ptr %i.f, align 8, !tbaa !197, !noalias !625
  %i.g = load ptr, ptr @_ZN5clang4ento10categories7UnixAPIE, align 8, !tbaa !199, !noalias !625 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20, !noalias !625
  br label %_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i

_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @_ZN5clang4ento7BugTypeC2EPKNS0_15CheckerFrontendEN4llvm9StringRefES6_b(ptr noundef nonnull align 8 dereferenceable(97) %i.j, ptr noundef nonnull %i.i, ptr nonnull @.str.34, i64 55, ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i, i1 noundef zeroext false), !noalias !625
  call void @_ZN5clang4ento14CheckerManager19_registerForPreStmtENS0_9CheckerFnIFvPKNS_4StmtERNS0_14CheckerContextEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreStmtINS_8CallExprEE10_checkStmtIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE, ptr nonnull %i.f, ptr noundef nonnull @_ZN5clang4ento5check7PreStmtINS_8CallExprEE12_handlesStmtEPKNS_4StmtE) #20
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !188  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !188
  %.not.i.i.i4.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4.i.i, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i, label %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !628
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !188
  br label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i

_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i, %_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i, %bb.a
  %i.o = phi ptr [ %i.f, %_ZSt11make_uniqueIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !199
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !193, !range !623, !noundef !624
  %i.t = trunc nuw i8 %i.s to i1
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br i1 %i.t, label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i
  store i8 1, ptr %i.r, align 8, !tbaa !193
  br label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit

_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit: ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_125UnixAPIPortabilityCheckerEJEEEPT_DpOT0_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang4ento39shouldRegisterUnixAPIPortabilityCheckerERKNS0_14CheckerManagerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1864) %0) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !629, !noalias !630 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !635, !noalias !630 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !636, !noalias !630 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !187    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !637
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !638

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.01624.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !187
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit, label %bb.c, !prof !639

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.01624.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !637
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !640, !llvm.loop !641

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !643
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !644
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !639

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !643
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !635
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !629
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !637
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !637
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !644
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !187
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !187
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !645
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !629, !noalias !647 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !635, !noalias !647 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !636, !noalias !647 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !187    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !637
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_120UnixAPIMisuseChecker16CheckPthreadOnceERN5clang4ento14CheckerContextERKNS2_9CallEventE:bb.a

bb.e:                                             ; preds = %bb.d
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.i, ptr %8, align 8, !tbaa !675
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19.thread, %bb.e
  %i.o = call noundef nonnull ptr @_ZNK5clang4ento9MemRegion14getMemorySpaceEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr nofree noundef nonnull align 8 dereferenceable(8) %8) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !904
  %i.r = load ptr, ptr %8, align 8, !tbaa !675    ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.f
  %i.s = and i32 %i.q, -2
  %.not90 = icmp eq i32 %i.s, 6                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %.split

.split:                                           ; preds = %bb.g
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  br i1 %.not90, label %.thread.i.i, label %.thread89

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.g
  br i1 %.not90, label %bb.h, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit56

.thread.i.i:                                      ; preds = %.split
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !661
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.w = inttoptr i64 %i.v to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.i, ptr %7, align 8, !tbaa !675
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !661  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.0.copyload.i.i.i.i.i75 = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i75, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.pr.i.i = load ptr, ptr %i.ab, align 8, !tbaa !675 ; 3 uses
  store ptr %.pr.i.i, ptr %7, align 8, !tbaa !675
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i.i
  %i.ac = phi ptr [ %i.w, %.thread.i.i ], [ %i.aa, %bb.h ]
  %i.ad = phi ptr [ %i.t, %.thread.i.i ], [ %i.x, %bb.h ]
  %i.ae = phi ptr [ %i.i, %.thread.i.i ], [ %.pr.i.i, %bb.h ]
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ae) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ]
  %i.ag = phi ptr [ %i.ad, %bb.i ], [ %i.x, %bb.h ]
  %i.ah = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext true, ptr noundef %i.ag, ptr noundef %i.af) ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !675   ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i3.i.i, label %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #20
  br label %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i

_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i: ; preds = %bb.j, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit26, label %bb.k

bb.k:                                             ; preds = %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit26

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit26: ; preds = %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i, %bb.k
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !911
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !913
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 256, ptr %i.al, align 8, !tbaa !914
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 2, ptr %i.am, align 8, !tbaa !915
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.an, align 8, !tbaa !919
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.ao, align 4, !tbaa !920
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %11, align 8, !tbaa !197
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %10, ptr %i.aq, align 8, !tbaa !921
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !923
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 12 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !924 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 27
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.23, i64 noundef 27) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.au, ptr noundef nonnull align 1 dereferenceable(27) @.str.23, i64 27, i1 false)
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !924
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 27
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.m, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !904
  %i.be = and i32 %i.bd, -2
  %.not92 = icmp eq i32 %i.be, 22
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !923
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !924 ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  br i1 %.not92, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bk = icmp ult i64 %i.bj, 21
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.24, i64 noundef 21) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bg, ptr noundef nonnull align 1 dereferenceable(21) @.str.24, i64 21, i1 false)
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !924
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 21
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit29

_ZN4llvm11raw_ostreamlsEPKc.exit29:               ; preds = %bb.p, %bb.q
  %.0.i.i28 = phi ptr [ %i.bl, %bb.p ], [ %11, %bb.q ] ; 6 uses
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !197
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !925 ; 2 uses
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = and i64 %i.bt, -8                       ; 2 uses
  %.not2.i = icmp eq i64 %i.bw, 0
  %.not.i = or i1 %i.bv, %.not2.i
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %_ZNK5clang9NamedDecl7getNameEv.exit

_ZNK5clang9NamedDecl7getNameEv.exit:              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !927 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !930
  %i.cc = and i64 %i.cb, 4294967295               ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !923
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 32 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !924 ; 2 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ugt i64 %i.cc, %i.cj
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i28, ptr noundef nonnull %i.ca, i64 noundef %i.cc) #20
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.s:                                             ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit
  %.not.i30 = icmp eq i64 %i.cc, 0
  br i1 %.not.i30, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 1 %i.ca, i64 %i.cc, i1 false)
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !924
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cc
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit29, %bb.r, %bb.s, %bb.t
  %.0.i = phi ptr [ %i.cl, %bb.r ], [ %.0.i.i28, %bb.t ], [ %.0.i.i28, %bb.s ], [ %.0.i.i28, %_ZN4llvm11raw_ostreamlsEPKc.exit29 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !924 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !923
  %.not.i31 = icmp ult ptr %i.cp, %i.cr
  br i1 %.not.i31, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.cs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i8 noundef zeroext 39) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !924
  store i8 39, ptr %i.cp, align 1, !tbaa !208
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.cu = icmp ult i64 %i.bj, 23
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.25, i64 noundef 23) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bg, ptr noundef nonnull align 1 dereferenceable(23) @.str.25, i64 23, i1 false)
  %i.cw = load ptr, ptr %i.at, align 8, !tbaa !924
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 23
  store ptr %i.cx, ptr %i.at, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.y, %bb.x, %bb.v, %bb.u
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !923
  %i.cz = load ptr, ptr %i.at, align 8, !tbaa !924 ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ult i64 %i.dc, 102
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.de = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.26, i64 noundef 102) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(102) %i.cz, ptr noundef nonnull align 1 dereferenceable(102) @.str.26, i64 102, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 102
  store ptr %i.df, ptr %i.at, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit38

_ZN4llvm11raw_ostreamlsEPKc.exit38:               ; preds = %bb.z, %bb.aa
  %i.dg = load i32, ptr %i.bc, align 8, !tbaa !904
  %i.dh = and i32 %i.dg, -2
  %i.di = icmp eq i32 %i.dh, 22
  br i1 %i.di, label %bb.ab, label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit38
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit40.thread, label %bb.ac

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit40.thread: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr null, ptr %6, align 8, !tbaa !675
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i42

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.i, ptr %6, align 8, !tbaa !675
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i42

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i42: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit40.thread, %bb.ac
  %i.dj = call noundef nonnull ptr @_ZNK5clang4ento9MemRegion14getMemorySpaceEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !904
  %i.dm = load ptr, ptr %6, align 8, !tbaa !675   ; 2 uses
  %.not.i.i1.i43 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i1.i43, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i42
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dm) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i42
  %i.dn = icmp eq i32 %i.dl, 7                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit45, label %.split87

.split87:                                         ; preds = %bb.ae
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #20
  br i1 %i.dn, label %bb.af, label %_ZN4llvm11raw_ostreamlsEPKc.exit48

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit45: ; preds = %bb.ae
  br i1 %i.dn, label %bb.af, label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.af:                                            ; preds = %.split87, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit45
  %i.do = load ptr, ptr %i.ar, align 8, !tbaa !923
  %i.dp = load ptr, ptr %i.at, align 8, !tbaa !924 ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ult i64 %i.ds, 59
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.27, i64 noundef 59) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.dp, ptr noundef nonnull align 1 dereferenceable(59) @.str.27, i64 59, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  store ptr %i.dv, ptr %i.at, align 8, !tbaa !924
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48

_ZN4llvm11raw_ostreamlsEPKc.exit48:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit38, %bb.ah, %bb.ag, %.split87, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit45
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dx = load ptr, ptr %i.aq, align 8, !tbaa !932, !nonnull !624, !align !733 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !911
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !913
  %i.eb = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #21, !noalias !935 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !935
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.ec, align 8, !tbaa !938, !noalias !935
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ed, align 1, !tbaa !941, !noalias !935
  store ptr %i.dy, ptr %5, align 8, !tbaa !208, !noalias !935
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ea, ptr %i.ee, align 8, !tbaa !208, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !935
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !noalias !935
  store i32 1, ptr %4, align 8, !tbaa !942, !noalias !935
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ef, i8 0, i64 28, i1 false), !noalias !935
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.eg, i8 0, i64 17, i1 false), !noalias !935
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.eb, ptr noundef nonnull align 8 dereferenceable(97) %i.dw, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %4, ptr noundef null) #20, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !935
  %i.eh = load ptr, ptr %2, align 8, !tbaa !197
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0) #20
  %i.el = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 88 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 96 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !950 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 100
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !951
  %.not.i.i51 = icmp ult i32 %i.eo, %i.eq
  br i1 %.not.i.i51, label %bb.aj, label %bb.ai, !prof !639

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 %i.el)
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

bb.aj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.er = zext i32 %i.eo to i64
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !952
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  store i64 %i.el, ptr %i.et, align 1
  %i.eu = load i32, ptr %i.en, align 8, !tbaa !950
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.en, align 8, !tbaa !950
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ew, align 8, !tbaa !900
  %i.ex = load ptr, ptr %1, align 8, !tbaa !732, !nonnull !624, !align !733
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 672 ; 2 uses
  %i.ez = ptrtoint ptr %i.eb to i64
  store i64 %i.ez, ptr %3, align 8, !tbaa !953
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !197
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(120) %i.ey, ptr nofree noundef nonnull align 8 dereferenceable(8) %3) #20, !inline_history !955
  %i.fd = load ptr, ptr %3, align 8, !tbaa !953   ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i52, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i: ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !197
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(488) %i.fd) #20, !inline_history !956
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit, %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #20
end_hunk_1
