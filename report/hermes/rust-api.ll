inline.NumInlined: 1768
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt5dequeIN4llvh12SMDiagnosticESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_:bb.a
  %i.ah = sub i64 %i.g, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ae, %i.ai
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.d, label %_ZNSt5dequeIN4llvh12SMDiagnosticESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4llvh12SMDiagnosticESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN4llvh12SMDiagnosticESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4llvh12SMDiagnosticESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.al = tail call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #17
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !889
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.an, align 8, !tbaa !829
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !834
  tail call void @_ZN4llvh12SMDiagnosticC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.ao, ptr noundef nonnull align 8 dereferenceable(360) %1)
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !889
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !830
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !829 ; 3 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !831
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 360
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !832
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !834
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12SMDiagnosticC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !837
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !876  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !838  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.i, ptr %i.c, align 8, !tbaa !727
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #19 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !876
  %i.l = load i64, ptr %i.c, align 8, !tbaa !727
  store i64 %i.l, ptr %i.f, align 8, !tbaa !839
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !839
  store i8 %i.n, ptr %i.m, align 1, !tbaa !839
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !727  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !838
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !876
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !837
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !876  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !838  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.z, ptr %i.b, align 8, !tbaa !727
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %bb.e, label %._crit_edge.i.i8

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !876
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !727
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !839
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = phi ptr [ %i.ab, %bb.e ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9
  ]

bb.f:                                             ; preds = %._crit_edge.i.i8
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !839
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !839
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9

bb.g:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9: ; preds = %._crit_edge.i.i8, %bb.f, %bb.g
  %i.af = load i64, ptr %i.b, align 8, !tbaa !727 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !838
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !876
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !837
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !876 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !838 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !727
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.h, label %._crit_edge.i.i10

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !876
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !727
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !839
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9
  %i.as = phi ptr [ %i.aq, %bb.h ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit9 ] ; 2 uses
  switch i64 %i.ao, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11
  ]

bb.i:                                             ; preds = %._crit_edge.i.i10
  %i.at = load i8, ptr %i.am, align 1, !tbaa !839
  store i8 %i.at, ptr %i.as, align 1, !tbaa !839
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11

bb.j:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11: ; preds = %._crit_edge.i.i10, %bb.i, %bb.j
  %i.au = load i64, ptr %i.a, align 8, !tbaa !727 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.au, ptr %i.av, align 8, !tbaa !838
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !876
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !987 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !988 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.l, label %_ZNSt15__new_allocatorISt4pairIjjEE8allocateEmPKv.exit.i.i.i.i, !prof !989

bb.l:                                             ; preds = %bb.k
  call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorISt4pairIjjEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #17
  br label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIjjEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11
  %i.bi = phi ptr [ %i.bh, %_ZNSt15__new_allocatorISt4pairIjjEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit11 ] ; 8 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !988
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !987
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !990
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !991 ; 5 uses
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !991 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i
  %i.bo = ptrtoaddr ptr %i.bm to i64              ; 2 uses
  %i.bp = ptrtoaddr ptr %i.bi to i64
  %2 = ptrtoaddr ptr %i.bn to i64
  %i.bq = add i64 %2, -8
  %i.br = sub i64 %i.bq, %i.bo                    ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 72
  %i.bu = sub i64 %i.bo, %i.bp
  %diff.check = icmp ugt i64 %i.bu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bt, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bi, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.by ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.bm, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.ca, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %i.cc = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.cc, ptr %.09.i.i.i.i.i, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.bn
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !995

_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit:    ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bi, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ], [ %i.bw, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !987
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !930
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.ch, align 8, !tbaa !996
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 4, ptr %i.ci, align 4, !tbaa !997
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !996
  %.not.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i, label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2ERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplINS_7SMFixItEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull align 8 dereferenceable(208) %i.cl) ; 0 uses
  br label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2ERKS2_.exit

_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2ERKS2_.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEC2ERKS3_.exit, %bb.m
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplINS_7SMFixItEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !996  ; 5 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !996  ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %.not = icmp ult i32 %i.g, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i32 %i.d, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !930    ; 3 uses
  br i1 %.not29, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !930
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !998
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #19
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !999

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !930
  %.pre45 = load i32, ptr %i.f, align 8, !tbaa !996
  %.pre46 = zext i32 %.pre45 to i64
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit: ; preds = %bb.c, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre46, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.h, %bb.c ]
  %i.q = phi ptr [ %.pre, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ]
  %.0 = phi ptr [ %i.n, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.pre-phi ; 2 uses
  %.not4.i = icmp eq ptr %.0, %i.r
  br i1 %.not4.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.s, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.r, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !876  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !839
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #18
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.0, %i.s
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !1000

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !997
  %i.ab = icmp ult i32 %i.aa, %i.d
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !930   ; 2 uses
  %.not4.i30 = icmp eq i32 %i.g, 0
  br i1 %.not4.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.e
  %.idx = mul nuw nsw i64 %i.h, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i34
  %.05.i32 = phi ptr [ %i.ae, %_ZN4llvh7SMFixItD2Ev.exit.i34 ], [ %i.ad, %.lr.ph.i31.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i32, i64 -48 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i32, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !876 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i32, i64 -16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvh7SMFixItD2Ev.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %.lr.ph.i31
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !839
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZN4llvh7SMFixItD2Ev.exit.i34

_ZN4llvh7SMFixItD2Ev.exit.i34:                    ; preds = %.lr.ph.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %.not.i35 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31, !llvm.loop !1000

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i34, %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !996
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44

bb.f:                                             ; preds = %bb.d
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, label %.lr.ph.preheader.i.i.i.i.i39

.lr.ph.preheader.i.i.i.i.i39:                     ; preds = %bb.f
  %i.al = load ptr, ptr %1, align 8, !tbaa !930
  %i.am = load ptr, ptr %0, align 8, !tbaa !930
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i39
  %.012.i.i.i.i.i41 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i40 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i39 ] ; 2 uses
  %.0811.i.i.i.i.i42 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i40 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
end_hunk_0
