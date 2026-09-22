Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OCIOZArchive?download=true
inline.NumInlined: 726
inline.NumDeleted: 256
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_516CIOPOciozArchive13getConfigDataB5cxx11Ev:._crit_edge.i.i
  store i64 %i.v, ptr %i.b, align 8, !tbaa !13
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i21, label %._crit_edge.i.i20

.noexc.i21:                                       ; preds = %bb.g
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc23 unwind label %bb.y   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i21
  store ptr %i.x, ptr %4, align 8, !tbaa !15
  %i.y = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.y, ptr %i.t, align 8, !tbaa !16
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %.noexc23, %bb.g
  %i.z = phi ptr [ %i.x, %.noexc23 ], [ %i.t, %bb.g ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i20
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !16
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.s, i64 %i.v, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i20
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !17
  %i.ad = load ptr, ptr %4, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.af = load i64, ptr %i.p, align 8, !tbaa !17, !noalias !119 ; 4 uses
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !17, !noalias !119 ; 4 uses
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !15, !noalias !119 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  %i.ak = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.al = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !119
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = phi i64 [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.an = icmp ugt i64 %i.ah, %i.am
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ao = load ptr, ptr %4, align 8, !tbaa !15, !noalias !119
  %i.ap = icmp eq ptr %i.ao, %i.t
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.k
  %i.aq = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !119
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ah, %i.as
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.af)
          to label %.noexc25 unwind label %bb.z   ; 5 uses

.noexc25:                                         ; preds = %.critedge.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !11, !alias.scope !119
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.l:                                             ; preds = %.noexc25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc25
  store ptr %i.av, ptr %2, align 8, !tbaa !15, !alias.scope !119
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !16
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !16, !alias.scope !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !17, !alias.scope !119
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !15
  store i64 0, ptr %i.bd, align 8, !tbaa !17
  store i8 0, ptr %i.aw, align 8, !tbaa !16
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bg = sub i64 4611686018427387903, %i.af
  %i.bh = icmp ult i64 %i.bg, %i.ag
  br i1 %i.bh, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
          to label %.noexc26 unwind label %bb.z

.noexc26:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.bi = load ptr, ptr %4, align 8, !tbaa !15, !noalias !119
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bi, i64 noundef %i.ag)
          to label %.noexc27 unwind label %bb.z   ; 5 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !11, !alias.scope !119
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.o:                                             ; preds = %.noexc27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc27
  store ptr %i.bl, ptr %2, align 8, !tbaa !15, !alias.scope !119
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !16
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !16, !alias.scope !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !17, !alias.scope !119
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !15
  store i64 0, ptr %i.bt, align 8, !tbaa !17
  store i8 0, ptr %i.bm, align 8, !tbaa !16
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bw = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.t
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.by = load i64, ptr %i.t, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ca = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.g
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !16
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN16OpenColorIO_v2_528getFileStringFromArchiveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PFSt6vectorIhSaIhEEPvR13mz_zip_file_sS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.17") align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ce, ptr noundef nonnull @_ZN16OpenColorIO_v2_519getFileBufferByPathEPvR13mz_zip_file_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
          to label %_ZN16OpenColorIO_v2_524getFileBufferFromArchiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %bb.aa

_ZN16OpenColorIO_v2_524getFileBufferFromArchiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44 ; 3 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !42    ; 10 uses
  %7 = ptrtoint ptr %i.cg to i64                  ; 3 uses
  %i.ci = ptrtoint ptr %i.ch to i64               ; 3 uses
  %8 = sub i64 %7, %i.ci                          ; 11 uses
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %_ZN16OpenColorIO_v2_524getFileBufferFromArchiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.cj, ptr %6, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %8, ptr %i.a, align 8, !tbaa !13
  %i.cl = icmp ugt i64 %8, 15
  br i1 %i.cl, label %.noexc.i35, label %._crit_edge.i.i34

.noexc.i35:                                       ; preds = %bb.p
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.ab  ; 2 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.cm, ptr %6, align 8, !tbaa !15
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !16
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %.noexc36, %bb.p
  %9 = phi i64 [ %i.cn, %.noexc36 ], [ %8, %bb.p ]
  %10 = phi ptr [ %i.cm, %.noexc36 ], [ %i.cj, %bb.p ] ; 7 uses
  %.not5.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not5.i.i.i, label %bb.q, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i34
  %11 = ptrtoaddr ptr %10 to i64
  %min.iters.check = icmp ult i64 %8, 8
  %i.co = sub i64 %i.ci, %11
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %8, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %8, 24
  %n.vec = and i64 %8, -32                        ; 5 uses
  %i.cq = getelementptr i8, ptr %10, i64 %n.vec
  %i.cr = getelementptr i8, ptr %i.ch, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.ch, i64 %index ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep104, align 1, !tbaa !16
  %wide.load105 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !16
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !16
  store <16 x i8> %wide.load105, ptr %i.ct, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %8, -8                      ; 4 uses
  %i.cv = getelementptr i8, ptr %10, i64 %n.vec107
  %i.cw = getelementptr i8, ptr %i.ch, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %next.gep109.a = getelementptr i8, ptr %10, i64 %index108
  %next.gep110 = getelementptr i8, ptr %i.ch, i64 %index108
  %wide.load111 = load <8 x i8>, ptr %next.gep110, align 1, !tbaa !16
  store <8 x i8> %wide.load111, ptr %next.gep109.a, align 1, !tbaa !16
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %8, %n.vec107
  br i1 %cmp.n113, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %10, %iter.check ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.ch, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cw, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.06.i.i.i.ph116 = ptrtoaddr ptr %.sroa.02.06.i.i.i.ph to i64 ; 2 uses
  %i.cy = sub i64 %7, %.sroa.02.06.i.i.i.ph116
  %xtraiter = and i64 %i.cy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.07.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cz = load i8, ptr %.sroa.02.06.i.i.i.prol, align 1, !tbaa !16
  store i8 %i.cz, ptr %.07.i.i.i.prol, align 1, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.prol, i64 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !117

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.07.i.i.i.unr = phi ptr [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.prol ]
  %.sroa.02.06.i.i.i.unr = phi ptr [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %i.dc = sub i64 %.sroa.02.06.i.i.i.ph116, %7
  %i.dd = icmp ugt i64 %i.dc, -8
  br i1 %i.dd, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.de = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !16
  store i8 %i.de, ptr %.07.i.i.i, align 1, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !16
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 2
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !16
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 3
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !16
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !16
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 5
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 5
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !16
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 6
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !16
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.dy = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 7
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !16
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.ea, %i.cg
  br i1 %.not.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !118

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre10.i.i = load i64, ptr %i.a, align 8, !tbaa !13
  %.pre11.i.i = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i34
  %12 = phi ptr [ %.pre11.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %10, %._crit_edge.i.i34 ]
  %13 = phi i64 [ %.pre10.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %9, %._crit_edge.i.i34 ] ; 2 uses
  store i64 %13, ptr %i.ck, align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 %13
  store i8 0, ptr %i.ec, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ed = load ptr, ptr %0, align 8, !tbaa !15    ; 6 uses
  %i.ee = icmp eq ptr %i.ed, %i.d
  %i.ef = load ptr, ptr %6, align 8, !tbaa !15    ; 6 uses
  %i.eg = icmp eq ptr %i.ef, %i.cj                ; 2 uses
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.q
  br i1 %i.eg, label %bb.r, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.q
  br i1 %i.eg, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eh = load i64, ptr %i.ck, align 8, !tbaa !17 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %.not21.i = icmp eq ptr %6, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.s, !prof !53

bb.s:                                             ; preds = %bb.r
  switch i64 %i.eh, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !16
  store i8 %i.ej, ptr %i.ed, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.ek = load i64, ptr %i.ck, align 8, !tbaa !17 ; 2 uses
  store i64 %i.ek, ptr %i.e, align 8, !tbaa !17
  %i.el = load ptr, ptr %0, align 8, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ef, ptr %0, align 8, !tbaa !15
  %i.en = load <2 x i64>, ptr %i.ck, align 8, !tbaa !16
  store <2 x i64> %i.en, ptr %i.e, align 8, !tbaa !16
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !16
  store ptr %i.ef, ptr %0, align 8, !tbaa !15
  %i.ep = load <2 x i64>, ptr %i.ck, align 8, !tbaa !16
  store <2 x i64> %i.ep, ptr %i.e, align 8, !tbaa !16
  %.not.i37 = icmp eq ptr %i.ed, null
  br i1 %.not.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ed, ptr %6, align 8, !tbaa !15
  store i64 %i.eo, ptr %i.cj, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cj, ptr %6, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.v, %bb.w
  %i.eq = phi ptr [ %i.ed, %bb.v ], [ %i.cj, %bb.w ], [ %i.ef, %bb.r ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ck, align 8, !tbaa !17
  store i8 0, ptr %i.eq, align 1, !tbaa !16
  %i.er = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.cj
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.et = load i64, ptr %i.cj, align 8, !tbaa !16
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr = load ptr, ptr %5, align 8, !tbaa !42
  br label %bb.ad

bb.x:                                             ; preds = %.noexc.i16, %bb.a
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.y:                                             ; preds = %.noexc.i21, %bb.f
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.n, %.critedge.i
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.t
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.z
  %i.fa = load i64, ptr %i.t, align 8, !tbaa !16
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.y ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.ex, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fc = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.g
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !16
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.x ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ab:                                            ; preds = %.noexc.i35
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i47 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.fk, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.fl) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZN16OpenColorIO_v2_524getFileBufferFromArchiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.fm = phi ptr [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.ch, %_ZN16OpenColorIO_v2_524getFileBufferFromArchiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit ] ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIhSaIhEED2Ev.exit49, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !43
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit49

_ZNSt6vectorIhSaIhEED2Ev.exit49:                  ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.fs = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit49
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !16
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn11 = phi { ptr, i32 } [ %i.fg, %bb.aa ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.fx = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn11.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn11, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gc = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.d
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

end_hunk_0
