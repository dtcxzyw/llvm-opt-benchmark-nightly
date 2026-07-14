inline.NumInlined: 2626
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0

@_ZN4LIEF2PE6ExportC1ERKNS0_7details25pe_export_directory_tableE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF2PE6ExportC2ERKNS0_7details25pe_export_directory_tableE
@_ZN4LIEF2PE6ExportC1ERKS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF2PE6ExportC2ERKS1_

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6ExportC2ERKNS0_7details25pe_export_directory_tableE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE6ExportE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %1, align 1
  store i32 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 1
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 1
  store i16 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i16, ptr %i.m, align 1
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.t = load i32, ptr %i.s, align 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 1
  store i32 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 1
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 1
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.af = load i32, ptr %i.ae, align 1
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  ret void
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE6ExportC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE6ExportE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i16, ptr %i.l, align 4
  store i16 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.p = load i16, ptr %i.o, align 2
  store i16 %i.p, ptr %i.n, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8
  store i32 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8
  store i32 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = load i32, ptr %i.aa, align 4
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load i32, ptr %i.ag, align 4
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i32, ptr %i.aj, align 8
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8
  %i.ap = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ar = load i64, ptr %i.aq, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ar, ptr %i.a, align 8
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.at = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8
  %i.au = load i64, ptr %i.a, align 8
  store i64 %i.au, ptr %i.ao, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.av = phi ptr [ %i.at, %bb.b ], [ %i.ao, %bb.a ] ; 2 uses
  switch i64 %i.ar, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aw = load i8, ptr %i.ap, align 1
  store i8 %i.aw, ptr %i.av, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ax = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.am, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.al, align 8            ; 9 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bi
  br i1 %i.bq, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread: ; preds = %bb.g
  %i.br = lshr exact i64 %i.bi, 3
  br label %.lr.ph

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bo
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #25 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bm, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %2 = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %2, %i.bo
  %3 = add i64 %i.bx, -8                          ; 2 uses
  %i.by = lshr i64 %3, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ca = add i64 %i.bu, -8
  %i.cb = sub i64 %i.ca, %i.bo
  %i.cc = and i64 %i.cb, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.cd
  %scevgep50 = getelementptr i8, ptr %i.bm, i64 %i.cd
  %bound0 = icmp ult ptr %i.bw, %scevgep50
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bm, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bm, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.ci = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 8, !alias.scope !9, !noalias !4
  %wide.load52 = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !9, !noalias !4
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !12, !noalias !9
  store <2 x i64> %wide.load52, ptr %i.cj, align 8, !alias.scope !12, !noalias !9
  %i.ck = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !alias.scope !9, !noalias !4
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !alias.scope !9, !noalias !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader79

.lr.ph.i.i.i.i.preheader79:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader79, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !7, !noalias !4
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !alias.scope !4, !noalias !7
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !7, !noalias !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.al, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.cp = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i ], [ %i.bm, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.cp, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.cq = load ptr, ptr %i.bk, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, %bb.h
  store ptr %i.bw, ptr %i.al, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store ptr %i.cu, ptr %i.bs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bi
  store ptr %i.cv, ptr %i.bk, align 8
  %.pre = load ptr, ptr %i.bb, align 8, !noalias !19 ; 3 uses
  %.pre31 = load ptr, ptr %i.bd, align 8, !noalias !22 ; 2 uses
  %.pre32 = ptrtoint ptr %.pre31 to i64
  %.pre33 = ptrtoint ptr %.pre to i64
  %.pre35 = sub i64 %.pre32, %.pre33
  %i.cw = icmp eq ptr %.pre31, %.pre
  %i.cx = ashr exact i64 %.pre35, 3
  br i1 %i.cw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.cy = phi i64 [ %i.br, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread ], [ %i.cx, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ]
  %i.cz = phi ptr [ %i.bc, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit
  %.sroa.8.030 = phi i64 [ 0, %.lr.ph ], [ %i.es, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ]
  %.sroa.423.029 = phi ptr [ %i.cz, %.lr.ph ], [ %i.er, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.423.029, align 8
  %i.dc = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25 ; 3 uses
  call void @_ZN4LIEF2PE11ExportEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.dc, ptr noundef nonnull align 8 dereferenceable(136) %i.db)
  %i.dd = load ptr, ptr %i.da, align 8            ; 5 uses
  %i.de = load ptr, ptr %i.bk, align 8
  %.not.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.dc, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.da, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.da, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.dh = load ptr, ptr %i.al, align 8            ; 10 uses
  %i.di = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.dm = ashr exact i64 %i.dk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #25 ; 10 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  store ptr %i.dc, ptr %i.dt, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dh, %i.dd
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.du = sub i64 %i.di, %i.dj
  %i.dv = add i64 %i.du, -8                       ; 2 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check63 = icmp ult i64 %i.dv, 56
  br i1 %min.iters.check63, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep55 = getelementptr i8, ptr %i.ds, i64 8
  %i.dy = add i64 %i.di, -8
  %i.dz = sub i64 %i.dy, %i.dj
  %i.ea = and i64 %i.dz, -8                       ; 2 uses
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.ea
  %scevgep57 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.ea
  %bound059 = icmp ult ptr %i.ds, %scevgep58
  %bound160 = icmp ult ptr %i.dh, %scevgep56
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck54
  %n.vec66 = and i64 %i.dx, 4611686018427387900   ; 3 uses
  %i.eb = shl i64 %n.vec66, 3                     ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ds, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph64
  %index68 = phi i64 [ 0, %vector.ph64 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.ee = shl i64 %index68, 3                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.ds, i64 %i.ee ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ef = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load71 = load <2 x i64>, ptr %next.gep70, align 8, !alias.scope !30, !noalias !25
  %wide.load72 = load <2 x i64>, ptr %i.ef, align 8, !alias.scope !30, !noalias !25
  %i.eg = getelementptr i8, ptr %next.gep69, i64 16
  store <2 x i64> %wide.load71, ptr %next.gep69, align 8, !alias.scope !33, !noalias !30
  store <2 x i64> %wide.load72, ptr %i.eg, align 8, !alias.scope !33, !noalias !30
  %i.eh = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep70, align 8, !alias.scope !30, !noalias !25
  store <2 x ptr> splat (ptr null), ptr %i.eh, align 8, !alias.scope !30, !noalias !25
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.ei, label %middle.block74, label %vector.body67, !llvm.loop !35

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.dx, %n.vec66
  br i1 %cmp.n75, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.preheader78:                     ; preds = %vector.memcheck54, %.lr.ph.i.i.i.i.i.preheader, %middle.block74
end_hunk_0
begin_hunk_1_@_ZN4LIEF2PE11ExportEntryC2ERKS1_:bb.a
_ZN4LIEF6SymbolC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.c, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF2PE11ExportEntryE, i64 16), ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.u, ptr noundef nonnull align 8 dereferenceable(13) %i.v, i64 13, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8
  %i.z = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.ab, ptr %i.b, align 8
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.e, label %._crit_edge.i.i.i4

bb.e:                                             ; preds = %_ZN4LIEF6SymbolC2ERKS0_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8
  %i.ae = load i64, ptr %i.b, align 8
  store i64 %i.ae, ptr %i.y, align 8
  br label %._crit_edge.i.i.i4

._crit_edge.i.i.i4:                               ; preds = %bb.e, %_ZN4LIEF6SymbolC2ERKS0_.exit
  %i.af = phi ptr [ %i.ad, %bb.e ], [ %i.y, %_ZN4LIEF6SymbolC2ERKS0_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i4
  %i.ag = load i8, ptr %i.z, align 1
  store i8 %i.ag, ptr %i.af, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i4
  %i.ah = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8
  %i.ao = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %bb.h, label %._crit_edge.i.i3.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.as, ptr %i.al, align 8
  %i.at = load i64, ptr %i.a, align 8
  store i64 %i.at, ptr %i.an, align 8
  br label %._crit_edge.i.i3.i

._crit_edge.i.i3.i:                               ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.au = phi ptr [ %i.as, %bb.h ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.aq, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4LIEF2PE11ExportEntry21forward_information_tC2ERKS2_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i3.i
  %i.av = load i8, ptr %i.ao, align 1
  store i8 %i.av, ptr %i.au, align 1
  br label %_ZN4LIEF2PE11ExportEntry21forward_information_tC2ERKS2_.exit

bb.j:                                             ; preds = %._crit_edge.i.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZN4LIEF2PE11ExportEntry21forward_information_tC2ERKS2_.exit

_ZN4LIEF2PE11ExportEntry21forward_information_tC2ERKS2_.exit: ; preds = %._crit_edge.i.i3.i, %bb.i, %bb.j
  %i.aw = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.al, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN4LIEF2PE6ExportaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i16, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.o = load i16, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #23
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp ugt i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.as, align 8            ; 9 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.av
  br i1 %i.bd, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread: ; preds = %bb.e
  %i.be = lshr exact i64 %i.av, 3
  br label %.lr.ph

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = sub i64 %i.bh, %i.bb
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.az, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %2 = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %2, %i.bb
  %3 = add i64 %i.bk, -8                          ; 2 uses
  %i.bl = lshr i64 %3, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bn = add i64 %i.bh, -8
  %i.bo = sub i64 %i.bn, %i.bb
  %i.bp = and i64 %i.bo, -8
  %i.bq = add i64 %i.bp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.bq
  %scevgep54 = getelementptr i8, ptr %i.az, i64 %i.bq
  %bound0 = icmp ult ptr %i.bj, %scevgep54
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.az, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.bu ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.az, i64 %i.bu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.bv = getelementptr i8, ptr %next.gep55, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !alias.scope !42, !noalias !37
  %wide.load56 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !42, !noalias !37
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !45, !noalias !42
  store <2 x i64> %wide.load56, ptr %i.bw, align 8, !alias.scope !45, !noalias !42
  %i.bx = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !alias.scope !42, !noalias !37
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !alias.scope !42, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader83

.lr.ph.i.i.i.i.preheader83:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader83, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader83 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.bz = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !40, !noalias !37
  store i64 %i.bz, ptr %.012.i.i.i.i, align 8, !alias.scope !37, !noalias !40
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !40, !noalias !37
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.as, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.cc = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i ], [ %i.az, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.cc, null
  br i1 %.not.i8.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.cd = load ptr, ptr %i.ax, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, %bb.f
  store ptr %i.bj, ptr %i.as, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store ptr %i.ch, ptr %i.bf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.av
  store ptr %i.ci, ptr %i.ax, align 8
  %.pre = load ptr, ptr %i.an, align 8, !noalias !49 ; 3 uses
  %.pre33 = load ptr, ptr %i.ap, align 8, !noalias !52 ; 2 uses
  %.pre34 = ptrtoint ptr %.pre33 to i64
  %.pre35 = ptrtoint ptr %.pre to i64
  %.pre37 = sub i64 %.pre34, %.pre35
  %i.cj = icmp eq ptr %.pre33, %.pre
  %i.ck = ashr exact i64 %.pre37, 3
  br i1 %i.cj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.cl = phi i64 [ %i.be, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread ], [ %i.ck, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ]
  %i.cm = phi ptr [ %i.ao, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit
  %.sroa.8.032 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ]
  %.sroa.425.031 = phi ptr [ %i.cm, %.lr.ph ], [ %i.ee, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.425.031, align 8
  %i.cp = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25 ; 3 uses
  tail call void @_ZN4LIEF2PE11ExportEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.co)
  %i.cq = load ptr, ptr %i.cn, align 8            ; 5 uses
  %i.cr = load ptr, ptr %i.ax, align 8
  %.not.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.ct, ptr %i.cn, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.cu = load ptr, ptr %i.as, align 8            ; 10 uses
  %i.cv = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 4 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #25 ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx
  store ptr %i.cp, ptr %i.dg, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.cu, %i.cq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.dh = sub i64 %i.cv, %i.cw
  %i.di = add i64 %i.dh, -8                       ; 2 uses
  %i.dj = lshr i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check67 = icmp ult i64 %i.di, 56
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep59 = getelementptr i8, ptr %i.df, i64 8
  %i.dl = add i64 %i.cv, -8
  %i.dm = sub i64 %i.dl, %i.cw
  %i.dn = and i64 %i.dm, -8                       ; 2 uses
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.dn
  %scevgep61 = getelementptr i8, ptr %i.cu, i64 8
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.dn
  %bound063 = icmp ult ptr %i.df, %scevgep62
  %bound164 = icmp ult ptr %i.cu, %scevgep60
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck58
  %n.vec70 = and i64 %i.dk, 4611686018427387900   ; 3 uses
  %i.do = shl i64 %n.vec70, 3                     ; 2 uses
  %i.dp = getelementptr i8, ptr %i.df, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.cu, i64 %i.do
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.dr = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.df, i64 %i.dr ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.cu, i64 %i.dr ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ds = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !alias.scope !60, !noalias !55
  %wide.load76 = load <2 x i64>, ptr %i.ds, align 8, !alias.scope !60, !noalias !55
  %i.dt = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !alias.scope !63, !noalias !60
  store <2 x i64> %wide.load76, ptr %i.dt, align 8, !alias.scope !63, !noalias !60
  %i.du = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !alias.scope !60, !noalias !55
  store <2 x ptr> splat (ptr null), ptr %i.du, align 8, !alias.scope !60, !noalias !55
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.dv = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.dv, label %middle.block78, label %vector.body71, !llvm.loop !65

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.dk, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE11ExportEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %vector.memcheck58, %.lr.ph.i.i.i.i.i.preheader, %middle.block78
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #23, !inline_history !311
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond488 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond488, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #23, !inline_history !310
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.074 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t725 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter977 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader976, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter981 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %._crit_edge.i132, label %.epil.preheader976

.epil.preheader976:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod980)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader976
  %.lcssa936 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader976 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa936, 0
  %extract.t726 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter982 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter982.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter982.next.1 = add i64 %niter982, 2         ; 2 uses
  %niter982.ncmp.1 = icmp eq i64 %niter982.next.1, %unroll_iter981
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !309

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #23, !inline_history !310
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa936, ptr %i.ep, align 4
  %extract.t723 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #23, !inline_history !312
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 5 uses
  %10 = load ptr, ptr %8, align 8                 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %11 = ptrtoint ptr %i.fd to i64
  %12 = sub i64 %i.fe, %11
  %13 = add i64 %12, -4                           ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %10 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %10, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %10, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %10, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.057.i.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fs, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fr, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !314

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fu = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fu, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fv = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.fy = load ptr, ptr %i.q, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #23, !inline_history !312
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %.pre.i.i.i149)
  store i64 %i.fz, ptr %i.r, align 8
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fv, ptr %i.r, align 8
  %i.gc = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fv, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fv, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fu, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.ge = phi ptr [ %i.gb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gf = phi ptr [ %i.ga, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 5 uses
  %14 = load ptr, ptr %9, align 8                 ; 4 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %15 = ptrtoint ptr %i.gf to i64
  %16 = sub i64 %i.gg, %15
  %17 = add i64 %16, -4                           ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %14 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %14, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %14, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !315

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %14, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
  %.057.i.i146.ph = phi ptr [ %i.gf, %.lr.ph.i.preheader.i143 ], [ %i.go, %middle.block878 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.gv, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gt, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.gu = load i32, ptr %.057.i.i146, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.gu, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gt, %i.ge
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !316

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block878
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.gw = load i32, ptr %i.e, align 8
  store i32 %i.gw, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter955 = and i64 %.pr, 1
  %i.gx = icmp eq i64 %.pr, 1
  br i1 %i.gx, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter960 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hp, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.hn, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod959 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.gy = load ptr, ptr %9, align 8
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01418.i154.epil.init ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 3 uses
  %i.hb = lshr i32 %i.ha, 31
  %i.hc = shl i32 %i.ha, 1
  %i.hd = or disjoint i32 %i.hc, %.017.i155.epil.init
  store i32 %i.hd, ptr %i.gz, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa942 = phi i32 [ %i.hm, %._crit_edge.i157.unr-lcssa ], [ %i.ha, %.lr.ph.i153.epil.preheader ]
  %.lcssa941 = phi i32 [ %i.hn, %._crit_edge.i157.unr-lcssa ], [ %i.hb, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa942, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hp, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hn, %.lr.ph.i153 ]
  %niter961 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter961.next.1, %.lr.ph.i153 ]
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = shl i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, %.017.i155
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %9, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 3 uses
  %i.ho = call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hg, i32 1)
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !309

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #23, !inline_history !310
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hr, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.hv = phi i64 [ %i.hq, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.hw = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store i32 %.lcssa941, ptr %i.hx, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.hy = load i128, ptr %0, align 16             ; 5 uses
  %i.hz = and i128 %i.hy, 18446744073709551615
  %i.ia = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ib = lshr i128 %i.hy, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.io, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.io, %bb.y ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iq, %bb.y ] ; 2 uses
  %i.id = load ptr, ptr %6, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.01718.i.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i128                  ; 2 uses
  %i.ih = mul nuw nsw i128 %i.hz, %i.ig
  %i.ii = and i128 %.019.i.i, 4294967295
  %i.ij = add nuw nsw i128 %i.ih, %i.ii           ; 2 uses
  %i.ik = mul nuw i128 %i.ic, %i.ig
  %i.il = lshr i128 %i.ij, 32
  %i.im = lshr i128 %.019.i.i, 32
  %i.in = add nuw i128 %i.ik, %i.im
  %i.io = add nuw i128 %i.in, %i.il               ; 3 uses
  %i.ip = trunc i128 %i.ij to i32
  store i32 %i.ip, ptr %i.ie, align 4
  %i.iq = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iq, %i.ia
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !317

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.ja, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.io, %.preheader.i.i ] ; 2 uses
  %i.ir = trunc i128 %.121.i.i to i32
  %i.is = load i64, ptr %i.c, align 8             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.iw = load ptr, ptr %i.b, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #23, !inline_history !318
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.it, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.ix = phi i64 [ %i.is, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.iy = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  store i32 %i.ir, ptr %i.iz, align 4
  %i.ja = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.ja, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !319

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr731 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr731, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.jb = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter963 = and i64 %.pr731, 1
  %i.jc = icmp eq i64 %.pr731, 1
  br i1 %i.jc, label %.epil.preheader962, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter967 = and i64 %.pr731, -2
  br label %bb.aa

._crit_edge.i172.unr-lcssa:                       ; preds = %bb.aa
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %._crit_edge.i172, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge.i172.unr-lcssa, %.lr.ph.i168
  %.01418.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %i.jw, %._crit_edge.i172.unr-lcssa ]
  %.017.i170.epil.init = phi i32 [ 0, %.lr.ph.i168 ], [ %i.jt, %._crit_edge.i172.unr-lcssa ]
  %lcmp.mod966 = trunc i64 %.pr731 to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.jd = load ptr, ptr %6, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.01418.i169.epil.init ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = lshr i32 %i.jf, %i.jb
  %i.jh = shl i32 %i.jf, %i.v
  %i.ji = add i32 %i.jh, %.017.i170.epil.init
  store i32 %i.ji, ptr %i.je, align 4
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %._crit_edge.i172.unr-lcssa, %.epil.preheader962
  %.lcssa939 = phi i32 [ %i.jt, %._crit_edge.i172.unr-lcssa ], [ %i.jg, %.epil.preheader962 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa939, 0
  br i1 %.not.i173, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %bb.ab
end_hunk_2
