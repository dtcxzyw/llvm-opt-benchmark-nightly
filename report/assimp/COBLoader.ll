Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/COBLoader?download=true
inline.NumInlined: 2279
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  switch i8 %i.af, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.107)
          to label %bb.g unwind label %common.resume

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #26
  resume { ptr, i32 } %i.ah

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, !llvm.loop !5

bb.h:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.aj = ptrtoaddr ptr %.1.i to i64
  %i.ak = sub i64 %i.ab, %i.aj
  %scevgep.i.i5.i = getelementptr i8, ptr %.1.i, i64 %i.ak
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.al = phi i8 [ %i.af, %bb.h ], [ %.pre.i, %bb.k ]
  %.0.i.i6.i = phi ptr [ %.1.i, %bb.h ], [ %i.am, %bb.k ] ; 3 uses
  switch i8 %i.al, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread: ; preds = %bb.i
  store ptr %i.p, ptr %4, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.z
  br i1 %.not.i.i7.i, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.am, align 1
  br label %bb.i, !llvm.loop !4

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i:     ; preds = %bb.j
  store ptr %i.p, ptr %4, align 8
  %i.an = icmp eq ptr %i.z, null
  br i1 %i.an, label %.noexc, label %bb.l

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.103) #27
  unreachable

bb.l:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i
  %.0.lcssa.i.i9.i59 = phi ptr [ %.0.i.i6.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i.thread ], [ %scevgep.i.i5.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit10.i ] ; 3 uses
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i9.i59) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ao, ptr %i.b, align 8
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %4, align 8
  %i.ar = load i64, ptr %i.b, align 8
  store i64 %i.ar, ptr %i.p, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.l
  %i.as = phi ptr [ %i.aq, %.noexc.i ], [ %i.p, %bb.l ] ; 2 uses
  switch i64 %i.ao, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %.0.lcssa.i.i9.i59, align 1
  store i8 %i.at, ptr %i.as, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %.0.lcssa.i.i9.i59, i64 %i.ao, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.au = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.au, ptr %i.q, align 8
  %i.av = load ptr, ptr %4, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ax = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.s
  %i.az = load ptr, ptr %4, align 8               ; 5 uses
  %i.ba = icmp eq ptr %i.az, %i.p                 ; 2 uses
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.ba, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = load i64, ptr %i.q, align 8             ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = load i8, ptr %i.az, align 1
  store i8 %i.bd, ptr %i.ax, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.be = load i64, ptr %i.q, align 8             ; 2 uses
  store i64 %i.be, ptr %i.t, align 8
  %i.bf = load ptr, ptr %i.r, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1
  %.pre.i24 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.az, ptr %i.r, align 8
  %i.bh = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bh, ptr %i.t, align 8
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.s, align 8
  store ptr %i.az, ptr %i.r, align 8
  %i.bj = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.bj, ptr %i.t, align 8
  %.not.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ax, ptr %4, align 8
  store i64 %i.bi, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bk = phi ptr [ %.pre.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ax, %bb.s ], [ %i.p, %bb.t ]
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.bk, align 1
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.p
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bn = load i64, ptr %i.p, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bp = load ptr, ptr %i.r, align 8             ; 44 uses
  %i.bq = load i64, ptr %i.t, align 8             ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %.not6.i = icmp samesign eq i64 %i.bq, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %min.iters.check = icmp ult i64 %i.bq, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check76 = icmp ult i64 %i.bq, 32
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bq, 24
  %n.vec = and i64 %i.bq, -32                     ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue170, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue170 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %index ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.bu, i64 1
  %i.bv = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.bv, i64 2
  %i.bw = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.bw, i64 3
  %i.bx = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.bx, i64 4
  %i.by = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.by, i64 5
  %i.bz = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.bz, i64 6
  %i.ca = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.ca, i64 7
  %i.cb = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.cb, i64 8
  %i.cc = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.cc, i64 9
  %i.cd = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.cd, i64 10
  %i.ce = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.ce, i64 11
  %i.cf = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.cf, i64 12
  %i.cg = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.cg, i64 13
  %i.ch = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.ch, i64 14
  %i.ci = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.ci, i64 15
  %i.cj = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.cj, i64 16
  %i.ck = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.ck, i64 17
  %i.cl = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.cl, i64 18
  %i.cm = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep95 = getelementptr i8, ptr %i.cm, i64 19
  %i.cn = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep96 = getelementptr i8, ptr %i.cn, i64 20
  %i.co = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep97 = getelementptr i8, ptr %i.co, i64 21
  %i.cp = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep98 = getelementptr i8, ptr %i.cp, i64 22
  %i.cq = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep99 = getelementptr i8, ptr %i.cq, i64 23
  %i.cr = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep100 = getelementptr i8, ptr %i.cr, i64 24
  %i.cs = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep101 = getelementptr i8, ptr %i.cs, i64 25
  %i.ct = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep102 = getelementptr i8, ptr %i.ct, i64 26
  %i.cu = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep103 = getelementptr i8, ptr %i.cu, i64 27
  %i.cv = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep104 = getelementptr i8, ptr %i.cv, i64 28
  %i.cw = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep105 = getelementptr i8, ptr %i.cw, i64 29
  %i.cx = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep106 = getelementptr i8, ptr %i.cx, i64 30
  %i.cy = getelementptr i8, ptr %i.bp, i64 %index
  %next.gep107 = getelementptr i8, ptr %i.cy, i64 31
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load108 = load <16 x i8>, ptr %i.cz, align 1
  %i.da = icmp eq <16 x i8> %wide.load, splat (i8 44) ; 16 uses
  %i.db = icmp eq <16 x i8> %wide.load108, splat (i8 44) ; 16 uses
  %i.dc = extractelement <16 x i1> %i.da, i64 0
  br i1 %i.dc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dd = extractelement <16 x i1> %i.da, i64 1
  br i1 %i.dd, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue
  store i8 95, ptr %next.gep77, align 1
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue
  %i.de = extractelement <16 x i1> %i.da, i64 2
  br i1 %i.de, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  store i8 95, ptr %next.gep78, align 1
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %i.df = extractelement <16 x i1> %i.da, i64 3
  br i1 %i.df, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  store i8 95, ptr %next.gep79, align 1
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %i.dg = extractelement <16 x i1> %i.da, i64 4
  br i1 %i.dg, label %pred.store.if115, label %pred.store.continue116

pred.store.if115:                                 ; preds = %pred.store.continue114
  store i8 95, ptr %next.gep80, align 1
  br label %pred.store.continue116

pred.store.continue116:                           ; preds = %pred.store.if115, %pred.store.continue114
  %i.dh = extractelement <16 x i1> %i.da, i64 5
  br i1 %i.dh, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %pred.store.continue116
  store i8 95, ptr %next.gep81, align 1
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %pred.store.continue116
  %i.di = extractelement <16 x i1> %i.da, i64 6
  br i1 %i.di, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  store i8 95, ptr %next.gep82, align 1
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.dj = extractelement <16 x i1> %i.da, i64 7
  br i1 %i.dj, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  store i8 95, ptr %next.gep83, align 1
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.dk = extractelement <16 x i1> %i.da, i64 8
  br i1 %i.dk, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  store i8 95, ptr %next.gep84, align 1
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.dl = extractelement <16 x i1> %i.da, i64 9
  br i1 %i.dl, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  store i8 95, ptr %next.gep85, align 1
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.dm = extractelement <16 x i1> %i.da, i64 10
  br i1 %i.dm, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  store i8 95, ptr %next.gep86, align 1
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.dn = extractelement <16 x i1> %i.da, i64 11
  br i1 %i.dn, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  store i8 95, ptr %next.gep87, align 1
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.do = extractelement <16 x i1> %i.da, i64 12
  br i1 %i.do, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  store i8 95, ptr %next.gep88, align 1
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.dp = extractelement <16 x i1> %i.da, i64 13
  br i1 %i.dp, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  store i8 95, ptr %next.gep89, align 1
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.dq = extractelement <16 x i1> %i.da, i64 14
  br i1 %i.dq, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  store i8 95, ptr %next.gep90, align 1
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.dr = extractelement <16 x i1> %i.da, i64 15
  br i1 %i.dr, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  store i8 95, ptr %next.gep91, align 1
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.ds = extractelement <16 x i1> %i.db, i64 0
  br i1 %i.ds, label %pred.store.if139, label %pred.store.continue140

end_hunk_0
