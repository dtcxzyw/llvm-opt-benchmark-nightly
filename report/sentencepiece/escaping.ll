Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/escaping?download=true
inline.NumInlined: 483
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052612_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPcPmPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  br label %.thread580

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 14 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.t, label %bb.dz [
    i8 97, label %bb.h
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 118, label %bb.n
    i8 92, label %bb.o
    i8 63, label %bb.p
    i8 39, label %bb.q
    i8 34, label %bb.r
    i8 48, label %bb.s
    i8 49, label %bb.s
    i8 50, label %bb.s
    i8 51, label %bb.s
    i8 52, label %bb.s
    i8 53, label %bb.s
    i8 54, label %bb.s
    i8 55, label %bb.s
    i8 120, label %bb.as
    i8 88, label %bb.as
    i8 117, label %bb.bs
    i8 85, label %bb.cl
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.2211723, 1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 7, ptr %i.v, align 1, !tbaa !17
  br label %bb.ef

bb.i:                                             ; preds = %bb.g
  %i.w = add i64 %.2211723, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 8, ptr %i.x, align 1, !tbaa !17
  br label %bb.ef

bb.j:                                             ; preds = %bb.g
  %i.y = add i64 %.2211723, 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 12, ptr %i.z, align 1, !tbaa !17
  br label %bb.ef

bb.k:                                             ; preds = %bb.g
  %i.aa = add i64 %.2211723, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 10, ptr %i.ab, align 1, !tbaa !17
  br label %bb.ef

bb.l:                                             ; preds = %bb.g
  %i.ac = add i64 %.2211723, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 13, ptr %i.ad, align 1, !tbaa !17
  br label %bb.ef

bb.m:                                             ; preds = %bb.g
  %i.ae = add i64 %.2211723, 1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 9, ptr %i.af, align 1, !tbaa !17
  br label %bb.ef

bb.n:                                             ; preds = %bb.g
  %i.ag = add i64 %.2211723, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 11, ptr %i.ah, align 1, !tbaa !17
  br label %bb.ef

bb.o:                                             ; preds = %bb.g
  %i.ai = add i64 %.2211723, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 92, ptr %i.aj, align 1, !tbaa !17
  br label %bb.ef

bb.p:                                             ; preds = %bb.g
  %i.ak = add i64 %.2211723, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 63, ptr %i.al, align 1, !tbaa !17
  br label %bb.ef

bb.q:                                             ; preds = %bb.g
  %i.am = add i64 %.2211723, 1
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 39, ptr %i.an, align 1, !tbaa !17
  br label %bb.ef

bb.r:                                             ; preds = %bb.g
  %i.ao = add i64 %.2211723, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 34, ptr %i.ap, align 1, !tbaa !17
  br label %bb.ef

bb.s:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.aq = zext nneg i8 %i.t to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 3 uses
  %i.as = add nuw i64 %.2194724, 2                ; 3 uses
  %i.at = icmp ult i64 %i.as, %0
  br i1 %i.at, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %i.aw = and i8 %i.av, -8
  %i.ax = icmp eq i8 %i.aw, 48
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = shl nuw nsw i32 %i.ar, 3
  %i.az = zext nneg i8 %i.av to i32
  %i.ba = add nsw i32 %i.az, -48
  %i.bb = or disjoint i32 %i.ba, %i.ay
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0256 = phi i32 [ %i.bb, %bb.u ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %.3195 = phi i64 [ %i.as, %bb.u ], [ %i.o, %bb.t ], [ %i.o, %bb.s ] ; 2 uses
  %i.bc = add nuw i64 %.3195, 1                   ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %0
  br i1 %i.bd, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17  ; 2 uses
  %i.bg = and i8 %i.bf, -8
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.bi = shl nuw nsw i32 %.0256, 3
  %i.bj = zext nneg i8 %i.bf to i32
  %i.bk = add nsw i32 %i.bj, -48
  %i.bl = or disjoint i32 %i.bk, %i.bi            ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 256
  br i1 %i.bm, label %.thread583, label %bb.y

.thread583:                                       ; preds = %bb.x
  %i.bn = trunc nuw i32 %i.bl to i8
  %i.bo = add i64 %.2211723, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !17
  br label %bb.ef

bb.y:                                             ; preds = %bb.x
  %.not300 = icmp eq ptr %4, null
  br i1 %.not300, label %.thread580, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bq = sub i64 %i.bc, %.2194724
  %i.br = sub nuw i64 %0, %i.o
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bq) ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !15
  %i.bt = icmp ugt i64 %.sroa.speculated.i, 15
  br i1 %i.bt, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.z
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc311 unwind label %bb.ao ; 2 uses

.noexc311:                                        ; preds = %.noexc.i.i.i
  store ptr %i.bu, ptr %7, align 8, !tbaa !16
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !15
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc311, %bb.z
  %i.bw = phi ptr [ %i.bu, %.noexc311 ], [ %i.bs, %bb.z ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !17
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i.i
  %i.by = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !14
  %i.ca = load ptr, ptr %7, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10)
          to label %.noexc312 unwind label %bb.ap, !noalias !41 ; 6 uses

.noexc312:                                        ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !20, !alias.scope !41
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ad:                                            ; preds = %.noexc312
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc312
  store ptr %i.ce, ptr %6, align 8, !tbaa !16, !alias.scope !41
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !17
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !17, !alias.scope !41
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad
  %i.cm = phi i64 [ %i.ci, %bb.ad ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !14, !alias.scope !41
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !16
  store i64 0, ptr %i.cn, align 8, !tbaa !14
  store i8 0, ptr %i.cf, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !14, !noalias !42
  %i.cq = add i64 %i.cp, -4611686018427387891
  %i.cr = icmp ult i64 %i.cq, 13
  br i1 %i.cr, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
          to label %.noexc316 unwind label %bb.aq, !noalias !42

.noexc316:                                        ; preds = %bb.af
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ae
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 13)
          to label %.noexc317 unwind label %bb.aq, !noalias !42 ; 6 uses

.noexc317:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.ct, ptr %5, align 8, !tbaa !20, !alias.scope !42
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

bb.ag:                                            ; preds = %.noexc317
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !14 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.da, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %.noexc317
  store ptr %i.cu, ptr %5, align 8, !tbaa !16, !alias.scope !42
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !17
  store i64 %i.db, ptr %i.ct, align 8, !tbaa !17, !alias.scope !42
  %.phi.trans.insert.i314 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre.i315 = load i64, ptr %.phi.trans.insert.i314, align 8, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313, %bb.ag
  %i.dc = phi ptr [ %i.ct, %bb.ag ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ] ; 6 uses
  %i.dd = phi i64 [ %i.cy, %bb.ag ], [ %.pre.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ] ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !14, !alias.scope !42
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !16
  store i64 0, ptr %i.de, align 8, !tbaa !14
  store i8 0, ptr %i.cv, align 8, !tbaa !17
  %i.dg = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  %i.dj = icmp eq ptr %i.dc, %i.ct                ; 2 uses
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ah
  br i1 %i.dj, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ah
  br i1 %i.dj, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dk = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dk)
  %.not21.i = icmp eq ptr %5, %4
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.aj, !prof !18

bb.aj:                                            ; preds = %bb.ai
  switch i64 %i.dd, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !17
  store i8 %i.dl, ptr %i.dg, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dm = load i64, ptr %i.df, align 8, !tbaa !14 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !14
  %i.do = load ptr, ptr %4, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !17
  %.pre.i318 = load ptr, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.dc, ptr %4, align 8, !tbaa !16
  store i64 %i.dd, ptr %i.dq, align 8, !tbaa !14
  %i.dr = load i64, ptr %i.ct, align 8, !tbaa !17
  store i64 %i.dr, ptr %i.dh, align 8, !tbaa !17
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ds = load i64, ptr %i.dh, align 8, !tbaa !17
  store ptr %i.dc, ptr %4, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dd, ptr %i.dt, align 8, !tbaa !14
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !17
  store i64 %i.du, ptr %i.dh, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dg, ptr %5, align 8, !tbaa !16
  store i64 %i.ds, ptr %i.ct, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ct, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.am, %bb.an
  %i.dv = phi ptr [ %i.dg, %bb.am ], [ %i.ct, %bb.an ], [ %i.dc, %bb.ai ], [ %.pre.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.df, align 8, !tbaa !14
  store i8 0, ptr %i.dv, align 1, !tbaa !17
  %i.dw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ct
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dy = load i64, ptr %i.ct, align 8, !tbaa !17
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  %i.ea = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cd
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  %i.ee = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bs
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.eg = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread580

bb.ao:                                            ; preds = %.noexc.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.ap:                                            ; preds = %bb.ac
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.af
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cd
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.aq
  %i.en = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.ap
  %.pn301 = phi { ptr, i32 } [ %i.ej, %bb.ap ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %i.ek, %bb.aq ] ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bs
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.er = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.ao
  %.pn301.pn = phi { ptr, i32 } [ %i.ei, %bb.ao ], [ %.pn301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %.pn301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.eg

bb.ar:                                            ; preds = %bb.w, %bb.v
  %i.et = trunc nuw nsw i32 %.0256 to i8
  %i.eu = add i64 %.2211723, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !17
  br label %bb.ef

bb.as:                                            ; preds = %bb.g, %bb.g
  %i.ew = add nuw i64 %.2194724, 2                ; 3 uses
  %.not293 = icmp ult i64 %i.ew, %0
  br i1 %.not293, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not299 = icmp eq ptr %4, null
  br i1 %.not299, label %.thread580, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) ; 0 uses
  br label %.thread580

bb.av:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !17
  %i.fd = icmp slt i8 %i.fc, 0
  br i1 %i.fd, label %.preheader.preheader, label %bb.aw

.preheader.preheader:                             ; preds = %bb.av
  %umax = tail call i64 @llvm.umax.i64(i64 %0, i64 %i.ew)
  %i.fe = add i64 %umax, -1                       ; 2 uses
  %i.ff = add nuw i64 %.2194724, 2                ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %0
  br i1 %i.fg, label %.lr.ph43, label %.preheader._crit_edge

bb.aw:                                            ; preds = %bb.av
  %.not294 = icmp eq ptr %4, null
  br i1 %.not294, label %.thread580, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4) ; 0 uses
  br label %.thread580

.preheader:                                       ; preds = %bb.ay
  %i.fi = icmp ugt i8 %i.fs, 57
  %i.fj = zext i8 %i.fs to i32                    ; 2 uses
  %i.fk = add nuw nsw i32 %i.fj, 9
  %spec.select.i = select i1 %i.fi, i32 %i.fk, i32 %i.fj
  %i.fl = and i32 %spec.select.i, 15
  %i.fm = shl nuw nsw i32 %.023341, 4
  %i.fn = or disjoint i32 %i.fl, %i.fm            ; 2 uses
  %i.fo = add nuw i64 %i.fq, 1                    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %0
  br i1 %i.fp, label %.lr.ph43, label %.preheader._crit_edge.loopexit, !llvm.loop !27

.lr.ph43:                                         ; preds = %.preheader.preheader, %.preheader
  %i.fq = phi i64 [ %i.fo, %.preheader ], [ %i.ff, %.preheader.preheader ] ; 3 uses
  %.519742 = phi i64 [ %i.fq, %.preheader ], [ %i.o, %.preheader.preheader ] ; 2 uses
  %.023341 = phi i32 [ %i.fn, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !17  ; 3 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !17
  %i.fw = icmp slt i8 %i.fv, 0
  br i1 %i.fw, label %bb.ay, label %.preheader._crit_edge.loopexit

bb.ay:                                            ; preds = %.lr.ph43
  %i.fx = icmp ugt i32 %.023341, 15
  br i1 %i.fx, label %bb.az, label %.preheader, !llvm.loop !27

bb.az:                                            ; preds = %bb.ay
  %.not295 = icmp eq ptr %4, null
  br i1 %.not295, label %.thread580, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %reass.sub729 = sub i64 %.519742, %.2194724
  %i.fy = add i64 %reass.sub729, 1
  %i.fz = sub nuw i64 %0, %i.o
  %.sroa.speculated.i332 = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 %i.fy) ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ga, ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %.sroa.speculated.i332, ptr %i.d, align 8, !tbaa !15
  %i.gb = icmp ugt i64 %.sroa.speculated.i332, 15
  br i1 %i.gb, label %.noexc.i.i.i341, label %._crit_edge.i.i.i.i340

.noexc.i.i.i341:                                  ; preds = %bb.ba
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc343 unwind label %bb.bp ; 2 uses

.noexc343:                                        ; preds = %.noexc.i.i.i341
  store ptr %i.gc, ptr %10, align 8, !tbaa !16
  %i.gd = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i340

._crit_edge.i.i.i.i340:                           ; preds = %.noexc343, %bb.ba
  %i.ge = phi ptr [ %i.gc, %.noexc343 ], [ %i.ga, %bb.ba ] ; 2 uses
  switch i64 %.sroa.speculated.i332, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i340
  %i.gf = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !17
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i332, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i.i340
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !14
  %i.gi = load ptr, ptr %10, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store i8 0, ptr %i.gj, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.gk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10)
          to label %.noexc348 unwind label %bb.bq, !noalias !43 ; 6 uses

.noexc348:                                        ; preds = %bb.bd
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.gl, ptr %9, align 8, !tbaa !20, !alias.scope !43
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 5 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

bb.be:                                            ; preds = %.noexc348
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !14 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 16
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add nuw nsw i64 %i.gq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.gs, i1 false)
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %.noexc348
  store ptr %i.gm, ptr %9, align 8, !tbaa !16, !alias.scope !43
  %i.gt = load i64, ptr %i.gn, align 8, !tbaa !17
  store i64 %i.gt, ptr %i.gl, align 8, !tbaa !17, !alias.scope !43
  %.phi.trans.insert.i346 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.pre.i347 = load i64, ptr %.phi.trans.insert.i346, align 8, !tbaa !14
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.be
  %i.gu = phi i64 [ %i.gq, %bb.be ], [ %.pre.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !14, !alias.scope !43
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !16
  store i64 0, ptr %i.gv, align 8, !tbaa !14
  store i8 0, ptr %i.gn, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !14, !noalias !44
  %i.gy = add i64 %i.gx, -4611686018427387891
  %i.gz = icmp ult i64 %i.gy, 13
  br i1 %i.gz, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
          to label %.noexc354 unwind label %bb.br, !noalias !44

.noexc354:                                        ; preds = %bb.bg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350: ; preds = %bb.bf
  %i.ha = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.2, i64 noundef 13)
          to label %.noexc355 unwind label %bb.br, !noalias !44 ; 6 uses

.noexc355:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.hb, ptr %8, align 8, !tbaa !20, !alias.scope !44
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !16 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 5 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

bb.bh:                                            ; preds = %.noexc355
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !14 ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 16
  call void @llvm.assume(i1 %i.hh)
  %i.hi = add nuw nsw i64 %i.hg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hb, ptr noundef nonnull align 8 dereferenceable(1) %i.hd, i64 %i.hi, i1 false)
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %.noexc355
  store ptr %i.hc, ptr %8, align 8, !tbaa !16, !alias.scope !44
  %i.hj = load i64, ptr %i.hd, align 8, !tbaa !17
  store i64 %i.hj, ptr %i.hb, align 8, !tbaa !17, !alias.scope !44
  %.phi.trans.insert.i352 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.pre.i353 = load i64, ptr %.phi.trans.insert.i352, align 8, !tbaa !14
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.bh
  %i.hk = phi ptr [ %i.hb, %bb.bh ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ] ; 6 uses
  %i.hl = phi i64 [ %i.hg, %bb.bh ], [ %.pre.i353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ] ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.hl, ptr %i.hn, align 8, !tbaa !14, !alias.scope !44
  store ptr %i.hd, ptr %i.ha, align 8, !tbaa !16
  store i64 0, ptr %i.hm, align 8, !tbaa !14
  store i8 0, ptr %i.hd, align 8, !tbaa !17
  %i.ho = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  %i.hr = icmp eq ptr %i.hk, %i.hb                ; 2 uses
  br i1 %i.hq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363: ; preds = %bb.bi
  br i1 %i.hr, label %bb.bj, label %.thread.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357: ; preds = %bb.bi
  br i1 %i.hr, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  %i.hs = icmp ult i64 %i.hl, 16
  call void @llvm.assume(i1 %i.hs)
  %.not21.i360 = icmp eq ptr %8, %4
  br i1 %.not21.i360, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365, label %bb.bk, !prof !18

bb.bk:                                            ; preds = %bb.bj
  switch i64 %i.hl, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ht = load i8, ptr %i.hk, align 1, !tbaa !17
  store i8 %i.ht, ptr %i.ho, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %i.hk, i64 %i.hl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.hu = load i64, ptr %i.hn, align 8, !tbaa !14 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !14
  %i.hw = load ptr, ptr %4, align 8, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hu
  store i8 0, ptr %i.hx, align 1, !tbaa !17
  %.pre.i362 = load ptr, ptr %8, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

.thread.i364:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hk, ptr %4, align 8, !tbaa !16
  store i64 %i.hl, ptr %i.hy, align 8, !tbaa !14
  %i.hz = load i64, ptr %i.hb, align 8, !tbaa !17
  store i64 %i.hz, ptr %i.hp, align 8, !tbaa !17
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357
  %i.ia = load i64, ptr %i.hp, align 8, !tbaa !17
  store ptr %i.hk, ptr %4, align 8, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.hl, ptr %i.ib, align 8, !tbaa !14
  %i.ic = load i64, ptr %i.hb, align 8, !tbaa !17
  store i64 %i.ic, ptr %i.hp, align 8, !tbaa !17
  %.not.i359 = icmp eq ptr %i.ho, null
  br i1 %.not.i359, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358
  store ptr %i.ho, ptr %8, align 8, !tbaa !16
  store i64 %i.ia, ptr %i.hb, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358, %.thread.i364
  store ptr %i.hb, ptr %8, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365: ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361, %bb.bn, %bb.bo
  %i.id = phi ptr [ %i.ho, %bb.bn ], [ %i.hb, %bb.bo ], [ %i.hk, %bb.bj ], [ %.pre.i362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361 ]
  store i64 0, ptr %i.hn, align 8, !tbaa !14
  store i8 0, ptr %i.id, align 1, !tbaa !17
  %i.ie = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.hb
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365
  %i.ig = load i64, ptr %i.hb, align 8, !tbaa !17
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366
  %i.ii = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.gl
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
  %i.ik = load i64, ptr %i.gl, align 8, !tbaa !17
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  %i.im = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ga
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371
  %i.io = load i64, ptr %i.ga, align 8, !tbaa !17
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.thread580

bb.bp:                                            ; preds = %.noexc.i.i.i341
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.bq:                                            ; preds = %bb.bd
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350, %bb.bg
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.gl
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.br
  %i.iv = load i64, ptr %i.gl, align 8, !tbaa !17
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.bq
  %.pn296 = phi { ptr, i32 } [ %i.ir, %bb.bq ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.is, %bb.br ] ; 2 uses
  %i.ix = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.ga
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.iz = load i64, ptr %i.ga, align 8, !tbaa !17
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.bp
  %.pn296.pn = phi { ptr, i32 } [ %i.iq, %bb.bp ], [ %.pn296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ], [ %.pn296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.eg

.preheader._crit_edge.loopexit:                   ; preds = %.preheader, %.lr.ph43
  %.0233.lcssa.ph = phi i32 [ %.023341, %.lr.ph43 ], [ %i.fn, %.preheader ]
  %.5197.lcssa.ph = phi i64 [ %.519742, %.lr.ph43 ], [ %i.fe, %.preheader ]
  %i.jb = trunc nuw i32 %.0233.lcssa.ph to i8
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader._crit_edge.loopexit, %.preheader.preheader
  %.0233.lcssa = phi i8 [ 0, %.preheader.preheader ], [ %i.jb, %.preheader._crit_edge.loopexit ]
  %.5197.lcssa = phi i64 [ %i.fe, %.preheader.preheader ], [ %.5197.lcssa.ph, %.preheader._crit_edge.loopexit ]
  %i.jc = add i64 %.2211723, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %.0233.lcssa, ptr %i.jd, align 1, !tbaa !17
  br label %bb.ef

bb.bs:                                            ; preds = %bb.g
  %i.je = add i64 %.2194724, 5                    ; 3 uses
  %.not288 = icmp ult i64 %i.je, %0
  br i1 %.not288, label %.preheader614.preheader, label %bb.bt

.preheader614.preheader:                          ; preds = %bb.bs
  %i.jf = add i64 %.2194724, 2                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !17  ; 3 uses
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !17
  %i.jl = icmp slt i8 %i.jk, 0
  br i1 %i.jl, label %.preheader614.1, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not292 = icmp eq ptr %4, null
  br i1 %.not292, label %.thread580, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !14
  %i.jo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.jn, ptr noundef nonnull @.str.5, i64 noundef 35) ; 0 uses
  br label %.thread580

.preheader614.1:                                  ; preds = %.preheader614.preheader
  %i.jp = add i64 %.2194724, 3                    ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !17  ; 3 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !17
  %i.jv = icmp slt i8 %i.ju, 0
  br i1 %i.jv, label %.preheader614.2, label %bb.bv

.preheader614.2:                                  ; preds = %.preheader614.1
  %i.jw = add i64 %.2194724, 4                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !17  ; 3 uses
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !17
  %i.kc = icmp slt i8 %i.kb, 0
  br i1 %i.kc, label %.preheader614.3, label %bb.bv

.preheader614.3:                                  ; preds = %.preheader614.2
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.je
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !17  ; 3 uses
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !17
  %i.ki = icmp slt i8 %i.kh, 0
  br i1 %i.ki, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit421, label %bb.bv

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit421: ; preds = %.preheader614.3
  %i.kj = icmp ugt i8 %i.jy, 57
  %i.kk = zext i8 %i.jy to i32
  %i.kl = icmp ugt i8 %i.jr, 57
  %i.km = zext i8 %i.jr to i32                    ; 2 uses
  %i.kn = add nuw nsw i32 %i.km, 9
  %spec.select.i381.1 = select i1 %i.kl, i32 %i.kn, i32 %i.km
  %i.ko = and i32 %spec.select.i381.1, 15
  %i.kp = icmp ugt i8 %i.jh, 57
  %i.kq = zext i8 %i.jh to i32
  %i.kr = shl nuw nsw i32 %i.kq, 4                ; 2 uses
  %i.ks = add nuw nsw i32 %i.kr, 144
  %i.kt = select i1 %i.kp, i32 %i.ks, i32 %i.kr
  %i.ku = and i32 %i.kt, 240
  %i.kv = or disjoint i32 %i.ko, %i.ku
  %i.kw = shl nuw nsw i32 %i.kv, 8
  %i.kx = shl nuw nsw i32 %i.kk, 4                ; 2 uses
  %i.ky = add nuw nsw i32 %i.kx, 144
  %i.kz = select i1 %i.kj, i32 %i.ky, i32 %i.kx
  %i.la = and i32 %i.kz, 240
  %i.lb = or disjoint i32 %i.kw, %i.la
  %i.lc = zext i8 %i.ke to i32                    ; 2 uses
  %i.ld = icmp ugt i8 %i.ke, 57
  %i.le = add nuw nsw i32 %i.lc, 9
  %spec.select.i381.3 = select i1 %i.ld, i32 %i.le, i32 %i.lc
  %i.lf = and i32 %spec.select.i381.3, 15
  %i.lg = or disjoint i32 %i.lf, %i.lb            ; 2 uses
  %i.lh = sub nuw i64 %0, %i.o
  %.sroa.speculated.i418 = tail call i64 @llvm.umin.i64(i64 %i.lh, i64 5)
  %i.li = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef zeroext %i.lg, i64 %.sroa.speculated.i418, ptr nonnull %i.s, ptr noundef %4)
  br i1 %i.li, label %.thread580, label %bb.ck

bb.bv:                                            ; preds = %.preheader614.3, %.preheader614.2, %.preheader614.1, %.preheader614.preheader
  %.7199719.lcssa = phi i64 [ %i.o, %.preheader614.preheader ], [ %i.jf, %.preheader614.1 ], [ %i.jp, %.preheader614.2 ], [ %i.jw, %.preheader614.3 ]
  %.not289 = icmp eq ptr %4, null
  br i1 %.not289, label %.thread580, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.lj = sub i64 %.7199719.lcssa, %.2194724
  %i.lk = sub nuw i64 %0, %i.o
  %.sroa.speculated.i382 = tail call i64 @llvm.umin.i64(i64 %i.lk, i64 %i.lj) ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ll, ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %.sroa.speculated.i382, ptr %i.c, align 8, !tbaa !15
  %i.lm = icmp ugt i64 %.sroa.speculated.i382, 15
  br i1 %i.lm, label %.noexc.i.i.i391, label %._crit_edge.i.i.i.i390

.noexc.i.i.i391:                                  ; preds = %bb.bw
  %i.ln = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc393 unwind label %bb.ci ; 2 uses

.noexc393:                                        ; preds = %.noexc.i.i.i391
  store ptr %i.ln, ptr %12, align 8, !tbaa !16
  %i.lo = load i64, ptr %i.c, align 8, !tbaa !15
  store i64 %i.lo, ptr %i.ll, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i390

._crit_edge.i.i.i.i390:                           ; preds = %.noexc393, %bb.bw
  %i.lp = phi ptr [ %i.ln, %.noexc393 ], [ %i.ll, %bb.bw ] ; 2 uses
  switch i64 %.sroa.speculated.i382, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i390
  %i.lq = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.lq, ptr %i.lp, align 1, !tbaa !17
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i.i.i390
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i382, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i.i.i390
  %i.lr = load i64, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !14
  %i.lt = load ptr, ptr %12, align 8, !tbaa !16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lr
  store i8 0, ptr %i.lu, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.lv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 38)
          to label %.noexc398 unwind label %bb.cj, !noalias !45 ; 6 uses

.noexc398:                                        ; preds = %bb.bz
  %i.lw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  store ptr %i.lw, ptr %11, align 8, !tbaa !20, !alias.scope !45
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !16 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 5 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

bb.ca:                                            ; preds = %.noexc398
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !14 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, 16
  call void @llvm.assume(i1 %i.mc)
  %i.md = add nuw nsw i64 %i.mb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lw, ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i64 %i.md, i1 false)
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %.noexc398
  store ptr %i.lx, ptr %11, align 8, !tbaa !16, !alias.scope !45
  %i.me = load i64, ptr %i.ly, align 8, !tbaa !17
  store i64 %i.me, ptr %i.lw, align 8, !tbaa !17, !alias.scope !45
  %.phi.trans.insert.i396 = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %.pre.i397 = load i64, ptr %.phi.trans.insert.i396, align 8, !tbaa !14
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %bb.ca
  %i.mf = phi ptr [ %i.lw, %bb.ca ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ] ; 6 uses
  %i.mg = phi i64 [ %i.mb, %bb.ca ], [ %.pre.i397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ] ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.mg, ptr %i.mi, align 8, !tbaa !14, !alias.scope !45
  store ptr %i.ly, ptr %i.lv, align 8, !tbaa !16
  store i64 0, ptr %i.mh, align 8, !tbaa !14
  store i8 0, ptr %i.ly, align 8, !tbaa !17
  %i.mj = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  %i.mm = icmp eq ptr %i.mf, %i.lw                ; 2 uses
  br i1 %i.ml, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406: ; preds = %bb.cb
  br i1 %i.mm, label %bb.cc, label %.thread.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400: ; preds = %bb.cb
  br i1 %i.mm, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i401

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406
  %i.mn = icmp ult i64 %i.mg, 16
  call void @llvm.assume(i1 %i.mn)
  %.not21.i403 = icmp eq ptr %11, %4
  br i1 %.not21.i403, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408, label %bb.cd, !prof !18

bb.cd:                                            ; preds = %bb.cc
  switch i64 %i.mg, label %bb.cf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.mo = load i8, ptr %i.mf, align 1, !tbaa !17
  store i8 %i.mo, ptr %i.mj, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr align 1 %i.mf, i64 %i.mg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.mp = load i64, ptr %i.mi, align 8, !tbaa !14 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !14
  %i.mr = load ptr, ptr %4, align 8, !tbaa !16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mp
  store i8 0, ptr %i.ms, align 1, !tbaa !17
  %.pre.i405 = load ptr, ptr %11, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408

.thread.i407:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.mf, ptr %4, align 8, !tbaa !16
  store i64 %i.mg, ptr %i.mt, align 8, !tbaa !14
  %i.mu = load i64, ptr %i.lw, align 8, !tbaa !17
  store i64 %i.mu, ptr %i.mk, align 8, !tbaa !17
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i401: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400
  %i.mv = load i64, ptr %i.mk, align 8, !tbaa !17
  store ptr %i.mf, ptr %4, align 8, !tbaa !16
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.mg, ptr %i.mw, align 8, !tbaa !14
  %i.mx = load i64, ptr %i.lw, align 8, !tbaa !17
  store i64 %i.mx, ptr %i.mk, align 8, !tbaa !17
  %.not.i402 = icmp eq ptr %i.mj, null
  br i1 %.not.i402, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i401
  store ptr %i.mj, ptr %11, align 8, !tbaa !16
  store i64 %i.mv, ptr %i.lw, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i401, %.thread.i407
  store ptr %i.lw, ptr %11, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408: ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404, %bb.cg, %bb.ch
  %i.my = phi ptr [ %i.mj, %bb.cg ], [ %i.lw, %bb.ch ], [ %i.mf, %bb.cc ], [ %.pre.i405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i404 ]
  store i64 0, ptr %i.mi, align 8, !tbaa !14
  store i8 0, ptr %i.my, align 1, !tbaa !17
  %i.mz = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.lw
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408
  %i.nb = load i64, ptr %i.lw, align 8, !tbaa !17
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  %i.nd = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.ll
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %i.nf = load i64, ptr %i.ll, align 8, !tbaa !17
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.thread580

bb.ci:                                            ; preds = %.noexc.i.i.i391
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

bb.cj:                                            ; preds = %bb.bz
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.ll
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %bb.cj
  %i.nl = load i64, ptr %i.ll, align 8, !tbaa !17
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415, %bb.ci
  %.pn290 = phi { ptr, i32 } [ %i.nh, %bb.ci ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415 ], [ %i.ni, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.eg

bb.ck:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit421
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  %i.no = tail call noundef i64 @_ZN4absl12lts_2026052616strings_internal14EncodeUTF8CharEPcDi(ptr noundef %i.nn, i32 noundef zeroext %i.lg)
  %i.np = add i64 %i.no, %.2211723
  br label %bb.ef

bb.cl:                                            ; preds = %bb.g
  %i.nq = add i64 %.2194724, 9                    ; 3 uses
  %.not279 = icmp ult i64 %i.nq, %0
  br i1 %.not279, label %.preheader615.preheader, label %bb.cm

.preheader615.preheader:                          ; preds = %bb.cl
  %i.nr = add i64 %.2194724, 2                    ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !17  ; 3 uses
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !17
  %i.nx = icmp slt i8 %i.nw, 0
  br i1 %i.nx, label %.preheader615.1, label %bb.dg

bb.cm:                                            ; preds = %bb.cl
  %.not287 = icmp eq ptr %4, null
  br i1 %.not287, label %.thread580, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !14
  %i.oa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.nz, ptr noundef nonnull @.str.7, i64 noundef 35) ; 0 uses
  br label %.thread580

split:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  %.9201716.lcssa733.ph.ph = phi i64 [ %i.wd, %bb.dx ], [ %i.vi, %bb.dw ], [ %i.uz, %bb.dv ]
  %.not282 = icmp eq ptr %4, null
  br i1 %.not282, label %.thread580, label %bb.co

bb.co:                                            ; preds = %split
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %reass.sub = sub i64 %.9201716.lcssa733.ph.ph, %.2194724
  %i.ob = add i64 %reass.sub, 1
  %i.oc = sub nuw i64 %0, %i.o
  %.sroa.speculated.i423 = tail call i64 @llvm.umin.i64(i64 %i.oc, i64 %i.ob) ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.od, ptr %15, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %.sroa.speculated.i423, ptr %i.b, align 8, !tbaa !15
  %i.oe = icmp ugt i64 %.sroa.speculated.i423, 15
  br i1 %i.oe, label %.noexc.i.i.i432, label %._crit_edge.i.i.i.i431

.noexc.i.i.i432:                                  ; preds = %bb.co
  %i.of = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc434 unwind label %bb.dd ; 2 uses

.noexc434:                                        ; preds = %.noexc.i.i.i432
  store ptr %i.of, ptr %15, align 8, !tbaa !16
  %i.og = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.og, ptr %i.od, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i431

._crit_edge.i.i.i.i431:                           ; preds = %.noexc434, %bb.co
  %i.oh = phi ptr [ %i.of, %.noexc434 ], [ %i.od, %bb.co ] ; 2 uses
  switch i64 %.sroa.speculated.i423, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i431
  %i.oi = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.oi, ptr %i.oh, align 1, !tbaa !17
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i431
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oh, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i423, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i.i431
  %i.oj = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !14
  %i.ol = load ptr, ptr %15, align 8, !tbaa !16
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oj
  store i8 0, ptr %i.om, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.on = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10)
          to label %.noexc439 unwind label %bb.de, !noalias !46 ; 6 uses

.noexc439:                                        ; preds = %bb.cr
  %i.oo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.oo, ptr %14, align 8, !tbaa !20, !alias.scope !46
  %i.op = load ptr, ptr %i.on, align 8, !tbaa !16 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 5 uses
  %i.or = icmp eq ptr %i.op, %i.oq
  br i1 %i.or, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

bb.cs:                                            ; preds = %.noexc439
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !14 ; 3 uses
  %i.ou = icmp ult i64 %i.ot, 16
  call void @llvm.assume(i1 %i.ou)
  %i.ov = add nuw nsw i64 %i.ot, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oo, ptr noundef nonnull align 8 dereferenceable(1) %i.oq, i64 %i.ov, i1 false)
  br label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %.noexc439
  store ptr %i.op, ptr %14, align 8, !tbaa !16, !alias.scope !46
  %i.ow = load i64, ptr %i.oq, align 8, !tbaa !17
  store i64 %i.ow, ptr %i.oo, align 8, !tbaa !17, !alias.scope !46
  %.phi.trans.insert.i437 = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %.pre.i438 = load i64, ptr %.phi.trans.insert.i437, align 8, !tbaa !14
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %bb.cs
  %i.ox = phi i64 [ %i.ot, %bb.cs ], [ %.pre.i438, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.ox, ptr %i.oz, align 8, !tbaa !14, !alias.scope !46
  store ptr %i.oq, ptr %i.on, align 8, !tbaa !16
  store i64 0, ptr %i.oy, align 8, !tbaa !14
  store i8 0, ptr %i.oq, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !14, !noalias !47
  %i.pb = add i64 %i.pa, -4611686018427387871
  %i.pc = icmp ult i64 %i.pb, 33
  br i1 %i.pc, label %bb.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i441

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
          to label %.noexc445 unwind label %bb.df, !noalias !47

.noexc445:                                        ; preds = %bb.cu
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i441: ; preds = %bb.ct
  %i.pd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.8, i64 noundef 33)
          to label %.noexc446 unwind label %bb.df, !noalias !47 ; 6 uses

.noexc446:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i441
  %i.pe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.pe, ptr %13, align 8, !tbaa !20, !alias.scope !47
  %i.pf = load ptr, ptr %i.pd, align 8, !tbaa !16 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 16 ; 5 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %bb.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442

bb.cv:                                            ; preds = %.noexc446
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !14 ; 3 uses
  %i.pk = icmp ult i64 %i.pj, 16
  call void @llvm.assume(i1 %i.pk)
  %i.pl = add nuw nsw i64 %i.pj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pe, ptr noundef nonnull align 8 dereferenceable(1) %i.pg, i64 %i.pl, i1 false)
  br label %bb.cw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442: ; preds = %.noexc446
  store ptr %i.pf, ptr %13, align 8, !tbaa !16, !alias.scope !47
  %i.pm = load i64, ptr %i.pg, align 8, !tbaa !17
  store i64 %i.pm, ptr %i.pe, align 8, !tbaa !17, !alias.scope !47
  %.phi.trans.insert.i443 = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %.pre.i444 = load i64, ptr %.phi.trans.insert.i443, align 8, !tbaa !14
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442, %bb.cv
  %i.pn = phi ptr [ %i.pe, %bb.cv ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442 ] ; 6 uses
  %i.po = phi i64 [ %i.pj, %bb.cv ], [ %.pre.i444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i442 ] ; 6 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 %i.po, ptr %i.pq, align 8, !tbaa !14, !alias.scope !47
  store ptr %i.pg, ptr %i.pd, align 8, !tbaa !16
  store i64 0, ptr %i.pp, align 8, !tbaa !14
  store i8 0, ptr %i.pg, align 8, !tbaa !17
  %i.pr = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  %i.pu = icmp eq ptr %i.pn, %i.pe                ; 2 uses
  br i1 %i.pt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454: ; preds = %bb.cw
  br i1 %i.pu, label %bb.cx, label %.thread.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i448: ; preds = %bb.cw
  br i1 %i.pu, label %bb.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i449

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454
  %i.pv = icmp ult i64 %i.po, 16
  call void @llvm.assume(i1 %i.pv)
  %.not21.i451 = icmp eq ptr %13, %4
  br i1 %.not21.i451, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456, label %bb.cy, !prof !18

bb.cy:                                            ; preds = %bb.cx
  switch i64 %i.po, label %bb.da [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452
    i64 1, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.pw = load i8, ptr %i.pn, align 1, !tbaa !17
  store i8 %i.pw, ptr %i.pr, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pr, ptr align 1 %i.pn, i64 %i.po, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452: ; preds = %bb.da, %bb.cz, %bb.cy
  %i.px = load i64, ptr %i.pq, align 8, !tbaa !14 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.px, ptr %i.py, align 8, !tbaa !14
  %i.pz = load ptr, ptr %4, align 8, !tbaa !16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.px
  store i8 0, ptr %i.qa, align 1, !tbaa !17
  %.pre.i453 = load ptr, ptr %13, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

.thread.i455:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i454
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.pn, ptr %4, align 8, !tbaa !16
  store i64 %i.po, ptr %i.qb, align 8, !tbaa !14
  %i.qc = load i64, ptr %i.pe, align 8, !tbaa !17
  store i64 %i.qc, ptr %i.ps, align 8, !tbaa !17
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i449: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i448
  %i.qd = load i64, ptr %i.ps, align 8, !tbaa !17
  store ptr %i.pn, ptr %4, align 8, !tbaa !16
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.po, ptr %i.qe, align 8, !tbaa !14
  %i.qf = load i64, ptr %i.pe, align 8, !tbaa !17
  store i64 %i.qf, ptr %i.ps, align 8, !tbaa !17
  %.not.i450 = icmp eq ptr %i.pr, null
  br i1 %.not.i450, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i449
  store ptr %i.pr, ptr %13, align 8, !tbaa !16
  store i64 %i.qd, ptr %i.pe, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i449, %.thread.i455
  store ptr %i.pe, ptr %13, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456: ; preds = %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452, %bb.db, %bb.dc
  %i.qg = phi ptr [ %i.pr, %bb.db ], [ %i.pe, %bb.dc ], [ %i.pn, %bb.cx ], [ %.pre.i453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i452 ]
  store i64 0, ptr %i.pq, align 8, !tbaa !14
  store i8 0, ptr %i.qg, align 1, !tbaa !17
  %i.qh = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.pe
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456
  %i.qj = load i64, ptr %i.pe, align 8, !tbaa !17
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  %i.ql = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.oo
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %i.qn = load i64, ptr %i.oo, align 8, !tbaa !17
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  %i.qp = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.od
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %i.qr = load i64, ptr %i.od, align 8, !tbaa !17
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %.thread580

bb.dd:                                            ; preds = %.noexc.i.i.i432
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.de:                                            ; preds = %bb.cr
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i441, %bb.cu
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.oo
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %bb.df
  %i.qy = load i64, ptr %i.oo, align 8, !tbaa !17
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %bb.de
  %.pn283 = phi { ptr, i32 } [ %i.qu, %bb.de ], [ %i.qv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %i.qv, %bb.df ] ; 2 uses
  %i.ra = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.od
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
  %i.rc = load i64, ptr %i.od, align 8, !tbaa !17
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.dd
  %.pn283.pn = phi { ptr, i32 } [ %i.qt, %bb.dd ], [ %.pn283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %.pn283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.eg

bb.dg:                                            ; preds = %.preheader615.7, %.preheader615.6, %.preheader615.5, %.preheader615.4, %.preheader615.3, %.preheader615.2, %.preheader615.1, %.preheader615.preheader
  %.9201716.lcssa = phi i64 [ %i.o, %.preheader615.preheader ], [ %i.nr, %.preheader615.1 ], [ %i.ti, %.preheader615.2 ], [ %i.ua, %.preheader615.3 ], [ %i.uh, %.preheader615.4 ], [ %i.uz, %.preheader615.5 ], [ %i.vi, %.preheader615.6 ], [ %i.wd, %.preheader615.7 ]
  %.not280 = icmp eq ptr %4, null
  br i1 %.not280, label %.thread580, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.re = sub i64 %.9201716.lcssa, %.2194724
  %i.rf = sub nuw i64 %0, %i.o
  %.sroa.speculated.i472 = tail call i64 @llvm.umin.i64(i64 %i.rf, i64 %i.re) ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.rg, ptr %17, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %.sroa.speculated.i472, ptr %i.a, align 8, !tbaa !15
  %i.rh = icmp ugt i64 %.sroa.speculated.i472, 15
  br i1 %i.rh, label %.noexc.i.i.i481, label %._crit_edge.i.i.i.i480

.noexc.i.i.i481:                                  ; preds = %bb.dh
  %i.ri = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc483 unwind label %bb.dt ; 2 uses

.noexc483:                                        ; preds = %.noexc.i.i.i481
  store ptr %i.ri, ptr %17, align 8, !tbaa !16
  %i.rj = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.rj, ptr %i.rg, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i480

._crit_edge.i.i.i.i480:                           ; preds = %.noexc483, %bb.dh
  %i.rk = phi ptr [ %i.ri, %.noexc483 ], [ %i.rg, %bb.dh ] ; 2 uses
  switch i64 %.sroa.speculated.i472, label %bb.dj [
    i64 1, label %bb.di
    i64 0, label %bb.dk
  ]

bb.di:                                            ; preds = %._crit_edge.i.i.i.i480
  %i.rl = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !17
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i.i.i.i480
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rk, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i472, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %._crit_edge.i.i.i.i480
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !14
  %i.ro = load ptr, ptr %17, align 8, !tbaa !16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rm
  store i8 0, ptr %i.rp, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.rq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 38)
          to label %.noexc488 unwind label %bb.du, !noalias !48 ; 6 uses

.noexc488:                                        ; preds = %bb.dk
  %i.rr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 12 uses
  store ptr %i.rr, ptr %16, align 8, !tbaa !20, !alias.scope !48
  %i.rs = load ptr, ptr %i.rq, align 8, !tbaa !16 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 5 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485

bb.dl:                                            ; preds = %.noexc488
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !14 ; 3 uses
  %i.rx = icmp ult i64 %i.rw, 16
  call void @llvm.assume(i1 %i.rx)
  %i.ry = add nuw nsw i64 %i.rw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rr, ptr noundef nonnull align 8 dereferenceable(1) %i.rt, i64 %i.ry, i1 false)
  br label %bb.dm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485: ; preds = %.noexc488
  store ptr %i.rs, ptr %16, align 8, !tbaa !16, !alias.scope !48
  %i.rz = load i64, ptr %i.rt, align 8, !tbaa !17
  store i64 %i.rz, ptr %i.rr, align 8, !tbaa !17, !alias.scope !48
  %.phi.trans.insert.i486 = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.pre.i487 = load i64, ptr %.phi.trans.insert.i486, align 8, !tbaa !14
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485, %bb.dl
  %i.sa = phi ptr [ %i.rr, %bb.dl ], [ %i.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485 ] ; 6 uses
  %i.sb = phi i64 [ %i.rw, %bb.dl ], [ %.pre.i487, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485 ] ; 6 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store i64 %i.sb, ptr %i.sd, align 8, !tbaa !14, !alias.scope !48
  store ptr %i.rt, ptr %i.rq, align 8, !tbaa !16
  store i64 0, ptr %i.sc, align 8, !tbaa !14
  store i8 0, ptr %i.rt, align 8, !tbaa !17
  %i.se = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  %i.sh = icmp eq ptr %i.sa, %i.rr                ; 2 uses
  br i1 %i.sg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i496: ; preds = %bb.dm
  br i1 %i.sh, label %bb.dn, label %.thread.i497

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i490: ; preds = %bb.dm
  br i1 %i.sh, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i491

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i490, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i496
  %i.si = icmp ult i64 %i.sb, 16
  call void @llvm.assume(i1 %i.si)
  %.not21.i493 = icmp eq ptr %16, %4
  br i1 %.not21.i493, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498, label %bb.do, !prof !18

bb.do:                                            ; preds = %bb.dn
  switch i64 %i.sb, label %bb.dq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494
    i64 1, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do
  %i.sj = load i8, ptr %i.sa, align 1, !tbaa !17
  store i8 %i.sj, ptr %i.se, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.se, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494: ; preds = %bb.dq, %bb.dp, %bb.do
  %i.sk = load i64, ptr %i.sd, align 8, !tbaa !14 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.sk, ptr %i.sl, align 8, !tbaa !14
  %i.sm = load ptr, ptr %4, align 8, !tbaa !16
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sk
  store i8 0, ptr %i.sn, align 1, !tbaa !17
  %.pre.i495 = load ptr, ptr %16, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498

.thread.i497:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i496
  %i.so = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.sa, ptr %4, align 8, !tbaa !16
  store i64 %i.sb, ptr %i.so, align 8, !tbaa !14
  %i.sp = load i64, ptr %i.rr, align 8, !tbaa !17
  store i64 %i.sp, ptr %i.sf, align 8, !tbaa !17
  br label %bb.ds

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i491: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i490
  %i.sq = load i64, ptr %i.sf, align 8, !tbaa !17
  store ptr %i.sa, ptr %4, align 8, !tbaa !16
  %i.sr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.sb, ptr %i.sr, align 8, !tbaa !14
  %i.ss = load i64, ptr %i.rr, align 8, !tbaa !17
  store i64 %i.ss, ptr %i.sf, align 8, !tbaa !17
  %.not.i492 = icmp eq ptr %i.se, null
  br i1 %.not.i492, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i491
  store ptr %i.se, ptr %16, align 8, !tbaa !16
  store i64 %i.sq, ptr %i.rr, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i491, %.thread.i497
  store ptr %i.rr, ptr %16, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498: ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494, %bb.dr, %bb.ds
  %i.st = phi ptr [ %i.se, %bb.dr ], [ %i.rr, %bb.ds ], [ %i.sa, %bb.dn ], [ %.pre.i495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i494 ]
  store i64 0, ptr %i.sd, align 8, !tbaa !14
  store i8 0, ptr %i.st, align 1, !tbaa !17
  %i.su = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.rr
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498
  %i.sw = load i64, ptr %i.rr, align 8, !tbaa !17
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit498, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i499
  %i.sy = load ptr, ptr %17, align 8, !tbaa !16   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.rg
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501
  %i.ta = load i64, ptr %i.rg, align 8, !tbaa !17
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %.thread580

bb.dt:                                            ; preds = %.noexc.i.i.i481
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507

bb.du:                                            ; preds = %bb.dk
  %i.td = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.te = load ptr, ptr %17, align 8, !tbaa !16   ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.rg
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505: ; preds = %bb.du
  %i.tg = load i64, ptr %i.rg, align 8, !tbaa !17
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit507: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505, %bb.dt
  %.pn = phi { ptr, i32 } [ %i.tc, %bb.dt ], [ %i.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i505 ], [ %i.td, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.eg

.preheader615.1:                                  ; preds = %.preheader615.preheader
  %i.ti = add i64 %.2194724, 3                    ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !17  ; 3 uses
  %i.tl = zext i8 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !17
  %i.to = icmp slt i8 %i.tn, 0
  br i1 %i.to, label %.preheader615.2, label %bb.dg

.preheader615.2:                                  ; preds = %.preheader615.1
  %i.tp = zext i8 %i.nt to i32
  %i.tq = icmp ugt i8 %i.nt, 57
  %i.tr = icmp ugt i8 %i.tk, 57
  %i.ts = zext i8 %i.tk to i32                    ; 2 uses
  %i.tt = add nuw nsw i32 %i.ts, 9
  %spec.select.i422.1 = select i1 %i.tr, i32 %i.tt, i32 %i.ts
  %i.tu = and i32 %spec.select.i422.1, 15
  %i.tv = shl nuw nsw i32 %i.tp, 4                ; 2 uses
  %i.tw = add nuw nsw i32 %i.tv, 144
  %i.tx = select i1 %i.tq, i32 %i.tw, i32 %i.tv
  %i.ty = and i32 %i.tx, 240
  %i.tz = or disjoint i32 %i.tu, %i.ty            ; 2 uses
  %i.ua = add i64 %.2194724, 4                    ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !17  ; 3 uses
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !17
  %i.ug = icmp slt i8 %i.uf, 0
  br i1 %i.ug, label %.preheader615.3, label %bb.dg

.preheader615.3:                                  ; preds = %.preheader615.2
  %i.uh = add i64 %.2194724, 5                    ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !17  ; 3 uses
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !17
  %i.un = icmp slt i8 %i.um, 0
  br i1 %i.un, label %.preheader615.4, label %bb.dg
end_hunk_0
