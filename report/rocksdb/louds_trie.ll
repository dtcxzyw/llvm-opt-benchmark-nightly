Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/louds_trie?download=true
inline.NumInlined: 2107
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEv:bb.a
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge429
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bl) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit: ; preds = %bb.c, %._crit_edge429
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !109 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108
  %.not.i.i.i.i.i.i185 = icmp eq ptr %i.bo, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i185, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bu) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188: ; preds = %bb.d, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !138
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !108
  %.not.i.i.i.i.i.i189 = icmp eq ptr %i.bx, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i189, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cd) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192: ; preds = %bb.e, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit188
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !138
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !139 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.ck, %i.ci
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit192, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108
  %.not.i.i.i.i.i.i193 = icmp eq ptr %i.cm, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i193, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cs) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !138
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !109 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.cv, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i197, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.db) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200: ; preds = %bb.g, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit196
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  store i64 0, ptr %i.dc, align 8, !tbaa !138
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !108
  %.not.i.i.i.i.i.i201 = icmp eq ptr %i.de, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i201, label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = sub i64 %i.di, %i.dj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dk) #28
  br label %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204

_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204: ; preds = %bb.h, %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit200
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 5                 ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 576460752303423487
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #26
          to label %.noexc206 unwind label %bb.bo

.noexc206:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN7rocksdb10trie_index16BitvectorBuilderD2Ev.exit204
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.not658 = icmp eq ptr %i.dn, %i.do
  br i1 %.not658, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dw = ashr exact i64 %i.dr, 1
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #27
          to label %.noexc207 unwind label %bb.bo ; 4 uses

.noexc207:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_M_allocateEm.exit.i
  %i.dy = load ptr, ptr %2, align 16, !tbaa !98   ; 5 uses
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc207, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i ], [ %i.dx, %.noexc207 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %i.dy, %.noexc207 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !97, !alias.scope !235
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i205 = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.i.i.i205, label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc207
  %.not.i8.i = icmp eq ptr %i.dy, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ec = load ptr, ptr %i.du, align 16, !tbaa !96
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ef) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.dx, ptr %2, align 16, !tbaa !98
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !95
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.ds
  store ptr %i.eg, ptr %i.du, align 16, !tbaa !96
  br label %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit

bb.l:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

.lr.ph428:                                        ; preds = %.preheader420, %._crit_edge
  %i.ei = phi ptr [ %i.jb, %._crit_edge ], [ %i.bd, %.preheader420 ]
  %.0138427 = phi i64 [ %i.iz, %._crit_edge ], [ 0, %.preheader420 ] ; 5 uses
  %i.ej = getelementptr [32 x i8], ptr %i.ei, i64 %.0138427 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !92 ; 3 uses
  %i.em = trunc i64 %i.el to i32                  ; 3 uses
  %.not161 = icmp eq i64 %.0138427, 0
  br i1 %.not161, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph428
  %i.en = getelementptr i8, ptr %i.ej, i64 -24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !92
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.eo) ; 2 uses
  %i.ep = trunc i64 %.sroa.speculated to i32      ; 2 uses
  %.not460 = icmp eq i32 %i.ep, 0
  br i1 %.not460, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.eq = getelementptr i8, ptr %i.ej, i64 -32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !104
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !104
  %wide.trip.count = and i64 %.sroa.speculated, 4294967295
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !62
  %i.ex = icmp eq i8 %i.eu, %i.ew
  br i1 %i.ex, label %bb.o, label %.critedge.split.loop.exit673

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.n, !llvm.loop !221

.critedge.split.loop.exit673:                     ; preds = %bb.n
  %i.ey = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.critedge.split.loop.exit673
  %.0137.lcssa = phi i32 [ %i.ey, %.critedge.split.loop.exit673 ], [ %i.ep, %bb.o ] ; 8 uses
  %.not162 = icmp eq i32 %.0137.lcssa, 0
  br i1 %.not162, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ez = add i32 %.0137.lcssa, -1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !68 ; 2 uses
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -1 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !62
  %.not163 = icmp eq i8 %i.fi, 0
  br i1 %.not163, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.fh, align 1, !tbaa !62
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !141
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -8 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !65
  store i64 -1, ptr %i.fl, align 8, !tbaa !65
  %i.fn = load i32, ptr %i.f, align 4, !tbaa !127
  %.not164 = icmp ugt i32 %.0137.lcssa, %i.fn
  br i1 %.not164, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = zext i32 %.0137.lcssa to i64
  %i.fp = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.fo ; 3 uses
  invoke fastcc void @_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData9StartNodeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.fp)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -1
  store i8 1, ptr %i.fs, align 1, !tbaa !62
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !141
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -8
  store i64 %i.fm, ptr %i.fv, align 8, !tbaa !65
  br label %.critedge.thread

bb.u:                                             ; preds = %bb.s
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

.critedge.thread:                                 ; preds = %bb.m, %.lr.ph428, %bb.p, %bb.q, %bb.t, %bb.r, %.critedge
  %.1392 = phi i32 [ 0, %.critedge ], [ %.0137.lcssa, %bb.p ], [ %.0137.lcssa, %bb.q ], [ %.0137.lcssa, %bb.t ], [ %.0137.lcssa, %bb.r ], [ 0, %.lr.ph428 ], [ 0, %bb.m ] ; 2 uses
  %i.fx = icmp ult i32 %.1392, %i.em
  br i1 %i.fx, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %.critedge.thread
  %i.fy = zext i32 %.1392 to i64                  ; 4 uses
  %i.fz = and i64 %i.el, 4294967295               ; 2 uses
  %i.ga = load ptr, ptr %i.ej, align 8, !tbaa !104
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !62  ; 2 uses
  %indvars.iv.next467.peel = add nuw nsw i64 %i.fy, 1 ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next467.peel, %i.fz ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.fy ; 2 uses
  %.phi.trans.insert492 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert492, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert494 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre495 = load ptr, ptr %.phi.trans.insert494, align 8, !tbaa !142 ; 2 uses
  %i.ge = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.fy ; 10 uses
  %i.gf = zext i1 %i.gd to i8                     ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %.not.i.i209.peel = icmp eq ptr %.pre, %.pre495
  br i1 %.not.i.i209.peel, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.gc, ptr %.pre, align 1, !tbaa !62
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !140
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel

bb.x:                                             ; preds = %bb.v
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !139 ; 4 uses
  %i.gl = ptrtoint ptr %.pre495 to i64
  %i.gm = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 7 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775807
  br i1 %i.go, label %.loopexit473.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel: ; preds = %bb.x
  %.sroa.speculated.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.gp = add i64 %.sroa.speculated.i.i.i.i.peel, %i.gn ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.gn
  %i.gr = tail call i64 @llvm.umin.i64(i64 %i.gp, i64 9223372036854775807)
  %i.gs = select i1 %i.gq, i64 9223372036854775807, i64 %i.gr ; 3 uses
  %.not.i.i.i.i210.peel = icmp ne i64 %i.gs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i210.peel)
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #27
          to label %.noexc212.peel unwind label %.loopexit415.loopexit.split-lp ; 4 uses

.noexc212.peel:                                   ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gn ; 2 uses
  store i8 %i.gc, ptr %i.gu, align 1, !tbaa !62
  %i.gv = icmp sgt i64 %i.gn, 0
  br i1 %i.gv, label %bb.y, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel

bb.y:                                             ; preds = %.noexc212.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr align 1 %i.gk, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel: ; preds = %bb.y, %.noexc212.peel
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %.not.i17.i.i.i.peel = icmp eq ptr %i.gk, null
  br i1 %.not.i17.i.i.i.peel, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !142
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gz) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel: ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.peel
  store ptr %i.gt, ptr %i.ge, align 8, !tbaa !139
  store ptr %i.gw, ptr %i.gg, align 8, !tbaa !140
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gs
  store ptr %i.ha, ptr %i.gh, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel:   ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.peel, %bb.w
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ge, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 4 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !140 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ge, i64 40 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !142
  %.not.i.i.i.peel = icmp eq ptr %i.hd, %i.hf
  br i1 %.not.i.i.i.peel, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel
  store i8 %i.gf, ptr %i.hd, align 1, !tbaa !62
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !140
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.peel
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !139 ; 4 uses
  %i.hj = ptrtoint ptr %i.hd to i64
  %i.hk = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 7 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775807
  br i1 %i.hm, label %.loopexit473.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hn = add i64 %.sroa.speculated.i.i.i.i.i.peel, %i.hl ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hl
  %i.hp = tail call i64 @llvm.umin.i64(i64 %i.hn, i64 9223372036854775807)
  %i.hq = select i1 %i.ho, i64 9223372036854775807, i64 %i.hp ; 3 uses
  %.not.i.i.i.i.i.peel = icmp ne i64 %i.hq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.peel)
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #27
          to label %.noexc214.peel unwind label %.loopexit415.loopexit.split-lp ; 4 uses

.noexc214.peel:                                   ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hl ; 2 uses
  store i8 %i.gf, ptr %i.hs, align 1, !tbaa !62
  %i.ht = icmp sgt i64 %i.hl, 0
  br i1 %i.ht, label %bb.ac, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.peel

bb.ac:                                            ; preds = %.noexc214.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr align 1 %i.hi, i64 %i.hl, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.peel

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.peel: ; preds = %bb.ac, %.noexc214.peel
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %.not.i17.i.i.i.i.peel = icmp eq ptr %i.hi, null
  br i1 %.not.i17.i.i.i.i.peel, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.peel, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.peel
  %i.hv = load ptr, ptr %i.he, align 8, !tbaa !142
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hx) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.peel

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.peel: ; preds = %bb.ad, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.peel
  store ptr %i.hr, ptr %i.hb, align 8, !tbaa !139
  store ptr %i.hu, ptr %i.hc, align 8, !tbaa !140
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store ptr %i.hy, ptr %i.he, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel:    ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.peel, %bb.aa
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ge, i64 48 ; 2 uses
  %i.ia = select i1 %i.gd, i64 -1, i64 %.0138427  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ge, i64 56 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !144 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ge, i64 64 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !145
  %.not.i.i3.i.peel = icmp eq ptr %i.ic, %i.ie
  br i1 %.not.i.i3.i.peel, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel
  store i64 %i.ia, ptr %i.ic, align 8, !tbaa !65
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.if, ptr %i.ib, align 8, !tbaa !144
  br label %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel

bb.af:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.peel
  %i.ig = load ptr, ptr %i.hz, align 8, !tbaa !146 ; 4 uses
  %i.ih = ptrtoint ptr %i.ic to i64
  %i.ii = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ij = sub i64 %i.ih, %i.ii                    ; 5 uses
  %i.ik = icmp eq i64 %i.ij, 9223372036854775800
  br i1 %i.ik, label %.loopexit473.invoke, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.peel

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.peel: ; preds = %bb.af
  %i.il = ashr exact i64 %i.ij, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i4.i.peel = tail call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i.i4.i.peel, %i.il ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %i.io = tail call i64 @llvm.umin.i64(i64 %i.im, i64 1152921504606846975)
  %i.ip = select i1 %i.in, i64 1152921504606846975, i64 %i.io ; 3 uses
  %.not.i.i.i.i5.i.peel = icmp ne i64 %i.ip, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5.i.peel)
  %i.iq = shl nuw nsw i64 %i.ip, 3
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #27
          to label %.noexc216.peel unwind label %.loopexit415.loopexit.split-lp ; 4 uses

.noexc216.peel:                                   ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.peel
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ij ; 2 uses
  store i64 %i.ia, ptr %i.is, align 8, !tbaa !65
  %i.it = icmp sgt i64 %i.ij, 0
  br i1 %i.it, label %bb.ag, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.peel

bb.ag:                                            ; preds = %.noexc216.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ir, ptr align 8 %i.ig, i64 %i.ij, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.peel

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.peel: ; preds = %bb.ag, %.noexc216.peel
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.not.i17.i.i.i6.i.peel = icmp eq ptr %i.ig, null
  br i1 %.not.i17.i.i.i6.i.peel, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.peel, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.peel
  %i.iv = load ptr, ptr %i.id, align 8, !tbaa !145
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.iw, %i.ii
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.ix) #28
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.peel

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.peel: ; preds = %bb.ah, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i.peel
  store ptr %i.ir, ptr %i.hz, align 8, !tbaa !146
  store ptr %i.iu, ptr %i.ib, align 8, !tbaa !144
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ip
  store ptr %i.iy, ptr %i.id, align 8, !tbaa !145
  br label %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel

_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.peel, %bb.ae
  %lftr.wideiv.peel = trunc nuw i64 %indvars.iv.next467.peel to i32
  %exitcond469.peel.not = icmp eq i32 %lftr.wideiv.peel, %i.em
  br i1 %exitcond469.peel.not, label %._crit_edge, label %.lr.ph426.peel.next

._crit_edge:                                      ; preds = %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit, %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel, %.critedge.thread
  %i.iz = add nuw i64 %.0138427, 1                ; 2 uses
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.jb = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 5
  %i.jg = icmp ult i64 %i.iz, %i.jf
  br i1 %i.jg, label %.lr.ph428, label %._crit_edge429, !llvm.loop !222

.lr.ph426.peel.next:                              ; preds = %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel, %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit ], [ %indvars.iv.next467.peel, %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit.peel ] ; 4 uses
  %i.jh = load ptr, ptr %i.ej, align 8, !tbaa !104
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv466
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !62  ; 2 uses
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 3 uses
  %i.jk = icmp samesign ult i64 %indvars.iv.next467, %i.fz ; 2 uses
  %i.jl = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %indvars.iv466
  invoke fastcc void @_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData9StartNodeEv(ptr noundef nonnull align 8 dereferenceable(144) %i.jl)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %.lr.ph426.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

bb.aj:                                            ; preds = %.lr.ph426.peel.next
  %i.jm = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %indvars.iv466 ; 10 uses
  %i.jn = zext i1 %i.jk to i8                     ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !140 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !142
  %.not.i.i209 = icmp eq ptr %i.jp, %i.jr
  br i1 %.not.i.i209, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.jj, ptr %i.jp, align 1, !tbaa !62
  %i.js = load ptr, ptr %i.jo, align 8, !tbaa !140
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  store ptr %i.jt, ptr %i.jo, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ju = load ptr, ptr %i.jm, align 8, !tbaa !139 ; 4 uses
  %i.jv = ptrtoint ptr %i.jp to i64
  %i.jw = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.jx = sub i64 %i.jv, %i.jw                    ; 7 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775807
  br i1 %i.jy, label %.loopexit473.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

.loopexit473.invoke:                              ; preds = %bb.af, %bb.ab, %bb.x, %bb.at, %bb.ap, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #26
          to label %.loopexit473.cont unwind label %.loopexit.split-lp416

.loopexit473.cont:                                ; preds = %.loopexit473.invoke
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jz = add i64 %.sroa.speculated.i.i.i.i, %i.jx ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jx
  %i.kb = tail call i64 @llvm.umin.i64(i64 %i.jz, i64 9223372036854775807)
  %i.kc = select i1 %i.ka, i64 9223372036854775807, i64 %i.kb ; 3 uses
  %.not.i.i.i.i210 = icmp ne i64 %i.kc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i210)
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #27
          to label %.noexc212 unwind label %.loopexit415.loopexit ; 4 uses

.noexc212:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jx ; 2 uses
  store i8 %i.jj, ptr %i.ke, align 1, !tbaa !62
  %i.kf = icmp sgt i64 %i.jx, 0
  br i1 %i.kf, label %bb.am, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.am:                                            ; preds = %.noexc212
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr align 1 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.am, %.noexc212
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.kh = load ptr, ptr %i.jq, align 8, !tbaa !142
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.jw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.kj) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.kd, ptr %i.jm, align 8, !tbaa !139
  store ptr %i.kg, ptr %i.jo, align 8, !tbaa !140
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc
  store ptr %i.kk, ptr %i.jq, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.ak
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jm, i64 32 ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !140 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jm, i64 40 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !142
  %.not.i.i.i = icmp eq ptr %i.kn, %i.kp
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i
  store i8 %i.jn, ptr %i.kn, align 1, !tbaa !62
  %i.kq = load ptr, ptr %i.km, align 8, !tbaa !140
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store ptr %i.kr, ptr %i.km, align 8, !tbaa !140
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !139 ; 4 uses
  %i.kt = ptrtoint ptr %i.kn to i64
  %i.ku = ptrtoint ptr %i.ks to i64               ; 2 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 7 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775807
  br i1 %i.kw, label %.loopexit473.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ap
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kx = add i64 %.sroa.speculated.i.i.i.i.i, %i.kv ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kv
  %i.kz = tail call i64 @llvm.umin.i64(i64 %i.kx, i64 9223372036854775807)
  %i.la = select i1 %i.ky, i64 9223372036854775807, i64 %i.kz ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.la, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #27
          to label %.noexc214 unwind label %.loopexit415.loopexit ; 4 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kv ; 2 uses
  store i8 %i.jn, ptr %i.lc, align 1, !tbaa !62
  %i.ld = icmp sgt i64 %i.kv, 0
  br i1 %i.ld, label %bb.aq, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.aq:                                            ; preds = %.noexc214
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lb, ptr align 1 %i.ks, i64 %i.kv, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.aq, %.noexc214
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  %i.lf = load ptr, ptr %i.ko, align 8, !tbaa !142
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.ku
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.lh) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ar, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.lb, ptr %i.kl, align 8, !tbaa !139
  store ptr %i.le, ptr %i.km, align 8, !tbaa !140
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store ptr %i.li, ptr %i.ko, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.ao
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jm, i64 48 ; 2 uses
  %i.lk = select i1 %i.jk, i64 -1, i64 %.0138427  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jm, i64 56 ; 3 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !144 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jm, i64 64 ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !145
  %.not.i.i3.i = icmp eq ptr %i.lm, %i.lo
  br i1 %.not.i.i3.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  store i64 %i.lk, ptr %i.lm, align 8, !tbaa !65
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %i.lp, ptr %i.ll, align 8, !tbaa !144
  br label %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit

bb.at:                                            ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  %i.lq = load ptr, ptr %i.lj, align 8, !tbaa !146 ; 4 uses
  %i.lr = ptrtoint ptr %i.lm to i64
  %i.ls = ptrtoint ptr %i.lq to i64               ; 2 uses
  %i.lt = sub i64 %i.lr, %i.ls                    ; 5 uses
  %i.lu = icmp eq i64 %i.lt, 9223372036854775800
  br i1 %i.lu, label %.loopexit473.invoke, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.at
  %i.lv = ashr exact i64 %i.lt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i4.i = tail call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i.i4.i, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = tail call i64 @llvm.umin.i64(i64 %i.lw, i64 1152921504606846975)
  %i.lz = select i1 %i.lx, i64 1152921504606846975, i64 %i.ly ; 3 uses
  %.not.i.i.i.i5.i = icmp ne i64 %i.lz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5.i)
  %i.ma = shl nuw nsw i64 %i.lz, 3
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #27
          to label %.noexc216 unwind label %.loopexit415.loopexit ; 4 uses

.noexc216:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 %i.lt ; 2 uses
  store i64 %i.lk, ptr %i.mc, align 8, !tbaa !65
  %i.md = icmp sgt i64 %i.lt, 0
  br i1 %i.md, label %bb.au, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i

bb.au:                                            ; preds = %.noexc216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr align 8 %i.lq, i64 %i.lt, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.au, %.noexc216
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %.not.i17.i.i.i6.i = icmp eq ptr %i.lq, null
  br i1 %.not.i17.i.i.i6.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i
  %i.mf = load ptr, ptr %i.ln, align 8, !tbaa !145
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = sub i64 %i.mg, %i.ls
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.mh) #28
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i: ; preds = %bb.av, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.mb, ptr %i.lj, align 8, !tbaa !146
  store ptr %i.me, ptr %i.ll, align 8, !tbaa !144
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lz
  store ptr %i.mi, ptr %i.ln, align 8, !tbaa !145
  br label %_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit

_ZZN7rocksdb10trie_index16LoudsTrieBuilder6FinishEvEN12PerLevelData8AddLabelEhbl.exit: ; preds = %bb.as, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i
  %lftr.wideiv = trunc i64 %indvars.iv.next467 to i32
  %exitcond469.not = icmp eq i32 %lftr.wideiv, %i.em
  br i1 %exitcond469.not, label %._crit_edge, label %.lr.ph426.peel.next, !llvm.loop !223

.loopexit415.loopexit:                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit474 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

.loopexit415.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.peel, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.peel, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i.peel
  %lpad.loopexit.split-lp475 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

.loopexit.split-lp416:                            ; preds = %.loopexit473.invoke
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit415

_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !147, !range !148, !noundef !149
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.aw, label %_ZNSt6vectorImSaImEE7reserveEm.exit243

bb.aw:                                            ; preds = %_ZNSt6vectorIN7rocksdb10trie_index15TrieBlockHandleESaIS2_EE7reserveEm.exit
  %i.mm = load ptr, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.mn = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = ashr exact i64 %i.mq, 5                 ; 2 uses
  %i.ms = icmp ugt i64 %i.mr, 1152921504606846975
  br i1 %i.ms, label %.invoke, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not659 = icmp eq ptr %i.mm, %i.mn
  br i1 %.not659, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.ax
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.mv = ashr exact i64 %i.mq, 2
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mv) #27
          to label %.noexc219 unwind label %bb.bp ; 4 uses

.noexc219:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.mx = load ptr, ptr %3, align 16, !tbaa !109  ; 4 uses
  %i.my = load ptr, ptr %i.mu, align 8, !tbaa !107
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.nb = sub i64 %i.mz, %i.na                    ; 2 uses
  %i.nc = icmp sgt i64 %i.nb, 0
  br i1 %i.nc, label %bb.ay, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.ay:                                            ; preds = %.noexc219
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mw, ptr align 8 %i.mx, i64 %i.nb, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.ay, %.noexc219
  %.not.i8.i217 = icmp eq ptr %i.mx, null
  br i1 %.not.i8.i217, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.nd = load ptr, ptr %i.mt, align 16, !tbaa !108
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = sub i64 %i.ne, %i.na
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nf) #28
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.az
  store ptr %i.mw, ptr %3, align 16, !tbaa !109
  store ptr %i.mw, ptr %i.mu, align 8, !tbaa !107
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mr
  store ptr %i.ng, ptr %i.mt, align 16, !tbaa !108
  %.pre496 = load ptr, ptr %i.c, align 8, !tbaa !101
  %.pre497 = load ptr, ptr %0, align 8, !tbaa !128
  %.pre502 = ptrtoint ptr %.pre496 to i64
  %.pre503 = ptrtoint ptr %.pre497 to i64
  %.pre505 = sub i64 %.pre502, %.pre503           ; 2 uses
  %.pre507 = ashr exact i64 %.pre505, 5           ; 3 uses
  %i.nh = icmp ugt i64 %.pre507, 2305843009213693951
  br i1 %i.nh, label %.invoke, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.nj = load ptr, ptr %i.ni, align 16, !tbaa !111
  %i.nk = load ptr, ptr %4, align 16, !tbaa !80
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64               ; 2 uses
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = ashr exact i64 %i.nn, 2
  %i.np = icmp ult i64 %i.no, %.pre507
  br i1 %i.np, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.ba
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !110
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.nm
  %i.nu = ashr exact i64 %.pre505, 3
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #27
          to label %.noexc222 unwind label %bb.bp ; 4 uses

.noexc222:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.nw = load ptr, ptr %4, align 16, !tbaa !80   ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !110
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 2 uses
  %i.ob = icmp sgt i64 %i.oa, 0
  br i1 %i.ob, label %bb.bb, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.bb:                                            ; preds = %.noexc222
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nv, ptr align 4 %i.nw, i64 %i.oa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.bb, %.noexc222
  %.not.i8.i220 = icmp eq ptr %i.nw, null
  br i1 %.not.i8.i220, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.oc = load ptr, ptr %i.ni, align 16, !tbaa !111
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = sub i64 %i.od, %i.nz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.oe) #28
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.nv, ptr %4, align 16, !tbaa !80
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nt
  store ptr %i.of, ptr %i.nq, align 8, !tbaa !110
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.pre507
  store ptr %i.og, ptr %i.ni, align 16, !tbaa !111
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.ax, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.ba
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !150
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !150
  %i.ol = icmp eq ptr %i.oi, %i.ok
  br i1 %i.ol, label %_ZNSt6vectorImSaImEE7reserveEm.exit243, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.om = load ptr, ptr %i.c, align 8, !tbaa !101 ; 5 uses
  %i.on = load ptr, ptr %0, align 8, !tbaa !128   ; 5 uses
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = ashr exact i64 %i.oq, 5                 ; 8 uses
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !110 ; 4 uses
  %i.ou = load ptr, ptr %5, align 8, !tbaa !80    ; 9 uses
  %i.ov = ptrtoint ptr %i.ot to i64               ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64               ; 2 uses
  %i.ox = sub i64 %i.ov, %i.ow                    ; 4 uses
  %i.oy = ashr exact i64 %i.ox, 2                 ; 7 uses
  %i.oz = icmp ugt i64 %i.or, %i.oy
  br i1 %i.oz, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.pa = sub nuw nsw i64 %i.or, %i.oy            ; 6 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !111
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = sub i64 %i.pd, %i.ov
  %i.pf = ashr exact i64 %i.pe, 2                 ; 2 uses
  %i.pg = icmp ult i64 %i.oy, 2305843009213693952
  tail call void @llvm.assume(i1 %i.pg)
  %i.ph = xor i64 %i.oy, 2305843009213693951      ; 2 uses
  %i.pi = icmp ule i64 %i.pf, %i.ph
  tail call void @llvm.assume(i1 %i.pi)
  %.not28.i = icmp ult i64 %i.pf, %i.pa
  br i1 %.not28.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ot, align 4, !tbaa !70
  %i.pj = getelementptr i8, ptr %i.ot, i64 4      ; 3 uses
  %i.pk = add nsw i64 %i.pa, -1                   ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.bf
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.pk, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.pj, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !70
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.bf
  %.0.i.i.i.i = phi ptr [ %i.pm, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.pj, %bb.bf ]
  store ptr %.0.i.i.i.i, ptr %i.os, align 8, !tbaa !110
end_hunk_0
