Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetRegistry?download=true
inline.NumInlined: 455
inline.NumDeleted: 255
begin_hunk_0_@_ZN4llvm14TargetRegistry12lookupTargetENS_9StringRefERNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.bm, ptr %8, align 8, !tbaa !31, !alias.scope !83
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !29 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !30 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bn, ptr %8, align 8, !tbaa !29, !alias.scope !83
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !28
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !28, !alias.scope !83
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.bv = phi ptr [ %i.bm, %bb.n ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ] ; 5 uses
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !30, !alias.scope !83
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !29
  store i64 0, ptr %i.bx, align 8, !tbaa !30
  store i8 0, ptr %i.bo, align 8, !tbaa !28
  %i.bz = load ptr, ptr %3, align 8, !tbaa !29    ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %i.cc = icmp eq ptr %i.bv, %i.bm                ; 2 uses
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.cc, label %bb.o, label %.thread.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.cc, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  %i.cd = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.cd)
  switch i64 %i.bw, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ce = load i8, ptr %i.bv, align 1, !tbaa !28
  store i8 %i.ce, ptr %i.bz, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30: ; preds = %bb.q, %bb.p, %bb.o
  %i.cf = load i64, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = load ptr, ptr %3, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !28
  %.pre.i31 = load ptr, ptr %8, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

.thread.i33:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i32
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bv, ptr %3, align 8, !tbaa !29
  store i64 %i.bw, ptr %i.cj, align 8, !tbaa !30
  %i.ck = load i64, ptr %i.bm, align 8, !tbaa !28
  store i64 %i.ck, ptr %i.ca, align 8, !tbaa !28
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !28
  store ptr %i.bv, ptr %3, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bw, ptr %i.cm, align 8, !tbaa !30
  %i.cn = load i64, ptr %i.bm, align 8, !tbaa !28
  store i64 %i.cn, ptr %i.ca, align 8, !tbaa !28
  %.not.i29 = icmp eq ptr %i.bz, null
  br i1 %.not.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
  store ptr %i.bz, ptr %8, align 8, !tbaa !29
  store i64 %i.cl, ptr %i.bm, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28, %.thread.i33
  store ptr %i.bm, ptr %8, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30, %bb.r, %bb.s
  %i.co = phi ptr [ %i.bz, %bb.r ], [ %i.bm, %bb.s ], [ %.pre.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i30 ]
  store i64 0, ptr %i.by, align 8, !tbaa !30
  store i8 0, ptr %i.co, align 1, !tbaa !28
  %i.cp = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bm
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34
  %i.cr = load i64, ptr %i.bm, align 8, !tbaa !28
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.ct = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ax
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cv = load i64, ptr %i.ax, align 8, !tbaa !28
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cx = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ar
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cz = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.thread

.critedge:                                        ; preds = %bb.i
  %i.db = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ar
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.critedge
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.thread

.thread:                                          ; preds = %"_ZN4llvm7find_ifINS_14iterator_rangeINS_14TargetRegistry8iteratorEEEZNS2_12lookupTargetENS_9StringRefERNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEDaOT_T0_.exit", %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.2 = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.04.010.i.i.i.i, %bb.h ], [ %.sroa.04.010.i.i.i.i, %"_ZN4llvm7find_ifINS_14iterator_rangeINS_14TargetRegistry8iteratorEEEZNS2_12lookupTargetENS_9StringRefERNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEDaOT_T0_.exit" ]
  ret ptr %.2
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm6Triple22getArchTypeForLLVMNameENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm6Triple7setArchENS0_8ArchTypeENS0_11SubArchTypeE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm14TargetRegistry12lookupTargetERKNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr @_ZL11FirstTarget, align 8, !tbaa !24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.5, i64 noundef 65) #17 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr i8, ptr %.sroa.03.06.i.i.i.i, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = tail call noundef zeroext i1 %.val1.i.i.i.i.i(i32 noundef %i.h) #17, !inline_history !84
  %i.k = load ptr, ptr %.sroa.03.06.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.k, null           ; 2 uses
  br i1 %i.j, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i
  br i1 %.not5.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  br i1 %.not5.i.i.i, label %bb.e, label %.lr.ph.i.i.i.i, !llvm.loop !85

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.l = load ptr, ptr %0, align 8, !tbaa !29, !noalias !101
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !101 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !31, !alias.scope !102
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.p, align 8, !tbaa !30, !alias.scope !102
  store i8 0, ptr %i.o, align 8, !tbaa !28, !alias.scope !102
  %i.q = add i64 %i.n, 49
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.q) #17
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30, !alias.scope !102
  %i.s = add i64 %i.r, -4611686018427387855
  %i.t = icmp ult i64 %i.s, 49
  br i1 %i.t, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.e
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, i64 noundef 49) #17 ; 0 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !30, !alias.scope !102
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.n
  br i1 %i.x, label %bb.g, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.l, i64 noundef %i.n) #17 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.z = load i64, ptr %i.p, align 8, !tbaa !30, !noalias !103
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19, !noalias !103
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, i64 noundef 1) #17, !noalias !103 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !31, !alias.scope !103
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ad, ptr %2, align 8, !tbaa !29, !alias.scope !103
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !28
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !28, !alias.scope !103
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = phi ptr [ %i.ac, %bb.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.am = phi i64 [ %i.ah, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !30, !alias.scope !103
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !29
  store i64 0, ptr %i.an, align 8, !tbaa !30
  store i8 0, ptr %i.ae, align 8, !tbaa !28
  %i.ap = load ptr, ptr %1, align 8, !tbaa !29    ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = icmp eq ptr %i.al, %i.ac                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.as, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.at = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.am, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.al, align 1, !tbaa !28
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.al, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !30
  %i.ax = load ptr, ptr %1, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !28
  %.pre.i22 = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.al, ptr %1, align 8, !tbaa !29
  store i64 %i.am, ptr %i.az, align 8, !tbaa !30
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !28
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !28
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !28
  store ptr %i.al, ptr %1, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.am, ptr %i.bc, align 8, !tbaa !30
  %i.bd = load i64, ptr %i.ac, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %2, align 8, !tbaa !29
  store i64 %i.bb, ptr %i.ac, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.be = phi ptr [ %i.ap, %bb.m ], [ %i.ac, %bb.n ], [ %.pre.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ao, align 8, !tbaa !30
  store i8 0, ptr %i.be, align 1, !tbaa !28
  %i.bf = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ac
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.bj = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.o
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.o, align 8, !tbaa !28
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader, %bb.o
  %.sroa.03.06.i.i.i = phi ptr [ %i.bp, %bb.o ], [ %i.k, %.lr.ph.i.preheader ] ; 3 uses
  %i.bn = getelementptr i8, ptr %.sroa.03.06.i.i.i, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bo = tail call noundef zeroext i1 %.val1.i.i.i.i(i32 noundef %i.h) #17, !inline_history !92
  br i1 %i.bo, label %._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bq, ptr %8, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 31, ptr %i.a, align 8, !tbaa !33
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.br, ptr %8, align 8, !tbaa !29
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.br, ptr noundef nonnull align 1 dereferenceable(31) @.str.8, i64 31, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !30
  %i.bu = load ptr, ptr %8, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #17, !noalias !104 ; 2 uses
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !30, !noalias !104
  %i.ca = sub i64 4611686018427387903, %i.bz
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19, !noalias !104
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34: ; preds = %._crit_edge.i.i
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.bx, i64 noundef %i.by) #17, !noalias !104 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.cd, ptr %7, align 8, !tbaa !31, !alias.scope !104
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34
  store ptr %i.ce, ptr %7, align 8, !tbaa !29, !alias.scope !104
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !28
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !28, !alias.scope !104
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.pre.i37 = load i64, ptr %.phi.trans.insert.i36, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit38

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit38: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.cm = phi i64 [ %i.ci, %bb.q ], [ %.pre.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !30, !alias.scope !104
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !29
  store i64 0, ptr %i.cn, align 8, !tbaa !30
  store i8 0, ptr %i.cf, align 8, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30, !noalias !105
  %i.cq = add i64 %i.cp, -4611686018427387897
  %i.cr = icmp ult i64 %i.cq, 7
  br i1 %i.cr, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

bb.r:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit38
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19, !noalias !105
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit38
  %i.cs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, i64 noundef 7) #17, !noalias !105 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ct, ptr %6, align 8, !tbaa !31, !alias.scope !105
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !29 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !30 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.da, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  store ptr %i.cu, ptr %6, align 8, !tbaa !29, !alias.scope !105
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !28
  store i64 %i.db, ptr %i.ct, align 8, !tbaa !28, !alias.scope !105
  %.phi.trans.insert.i41 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre.i42 = load i64, ptr %.phi.trans.insert.i41, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit43

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit43: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.dc = phi i64 [ %i.cy, %bb.s ], [ %.pre.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.dc, ptr %i.de, align 8, !tbaa !30, !alias.scope !105
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !29
  store i64 0, ptr %i.dd, align 8, !tbaa !30
  store i8 0, ptr %i.cv, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.dh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dg) #17, !noalias !106 ; 2 uses
  %i.di = load i64, ptr %i.de, align 8, !tbaa !30, !noalias !106
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dh
  br i1 %i.dk, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

bb.t:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit43
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19, !noalias !106
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit43
  %i.dl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.dg, i64 noundef %i.dh) #17, !noalias !106 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.dm, ptr %5, align 8, !tbaa !31, !alias.scope !106
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !29 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 5 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !30 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add nuw nsw i64 %i.dr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 8 dereferenceable(1) %i.do, i64 %i.dt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  store ptr %i.dn, ptr %5, align 8, !tbaa !29, !alias.scope !106
  %i.du = load i64, ptr %i.do, align 8, !tbaa !28
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !28, !alias.scope !106
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i46, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit48

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit48: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  %i.dv = phi i64 [ %i.dr, %bb.u ], [ %.pre.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !30, !alias.scope !106
  store ptr %i.do, ptr %i.dl, align 8, !tbaa !29
  store i64 0, ptr %i.dw, align 8, !tbaa !30
  store i8 0, ptr %i.do, align 8, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !30, !noalias !107
  %i.dz = icmp eq i64 %i.dy, 4611686018427387903
  br i1 %i.dz, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit48
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19, !noalias !107
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit48
  %i.ea = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, i64 noundef 1) #17, !noalias !107 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !31, !alias.scope !107
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !29 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 5 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !30 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.ed, i64 %i.ei, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  store ptr %i.ec, ptr %4, align 8, !tbaa !29, !alias.scope !107
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !28
  store i64 %i.ej, ptr %i.eb, align 8, !tbaa !28, !alias.scope !107
  %.phi.trans.insert.i51 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.pre.i52 = load i64, ptr %.phi.trans.insert.i51, align 8, !tbaa !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit53

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit53: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.ek = phi ptr [ %i.eb, %bb.w ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ] ; 5 uses
  %i.el = phi i64 [ %i.eg, %bb.w ], [ %.pre.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ] ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.el, ptr %i.en, align 8, !tbaa !30, !alias.scope !107
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !29
  store i64 0, ptr %i.em, align 8, !tbaa !30
  store i8 0, ptr %i.ed, align 8, !tbaa !28
  %i.eo = load ptr, ptr %1, align 8, !tbaa !29    ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  %i.er = icmp eq ptr %i.ek, %i.eb                ; 2 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit53
  br i1 %i.er, label %bb.x, label %.thread.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit53
  br i1 %i.er, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59
  %i.es = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.es)
  switch i64 %i.el, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.et = load i8, ptr %i.ek, align 1, !tbaa !28
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.ek, i64 %i.el, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57: ; preds = %bb.z, %bb.y, %bb.x
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !30 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !30
  %i.ew = load ptr, ptr %1, align 8, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !28
  %.pre.i58 = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

.thread.i60:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ek, ptr %1, align 8, !tbaa !29
  store i64 %i.el, ptr %i.ey, align 8, !tbaa !30
  %i.ez = load i64, ptr %i.eb, align 8, !tbaa !28
  store i64 %i.ez, ptr %i.ep, align 8, !tbaa !28
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54
  %i.fa = load i64, ptr %i.ep, align 8, !tbaa !28
  store ptr %i.ek, ptr %1, align 8, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.el, ptr %i.fb, align 8, !tbaa !30
  %i.fc = load i64, ptr %i.eb, align 8, !tbaa !28
  store i64 %i.fc, ptr %i.ep, align 8, !tbaa !28
  %.not.i56 = icmp eq ptr %i.eo, null
  br i1 %.not.i56, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55
  store ptr %i.eo, ptr %4, align 8, !tbaa !29
  store i64 %i.fa, ptr %i.eb, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55, %.thread.i60
  store ptr %i.eb, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57, %bb.aa, %bb.ab
  %i.fd = phi ptr [ %i.eo, %bb.aa ], [ %i.eb, %bb.ab ], [ %.pre.i58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57 ]
  store i64 0, ptr %i.en, align 8, !tbaa !30
  store i8 0, ptr %i.fd, align 1, !tbaa !28
  %i.fe = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.eb
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61
  %i.fg = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.fi = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dm
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.fk = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.fm = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ct
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.fo = load i64, ptr %i.ct, align 8, !tbaa !28
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.fq = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cd
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.fs = load i64, ptr %i.cd, align 8, !tbaa !28
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.fu = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bq
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.fw = load i64, ptr %i.bq, align 8, !tbaa !28
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %.lr.ph.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.sroa.03.06.i.i.i.i, %.lr.ph.i.preheader ], [ %.sroa.03.06.i.i.i.i, %bb.o ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm14TargetRegistry14RegisterTargetERNS_6TargetEPKcS4_S4_PFbNS_6Triple8ArchTypeEEb(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i1 %5 to i8
  %i.d = load ptr, ptr @_ZL11FirstTarget, align 8, !tbaa !24
  store ptr %i.d, ptr %0, align 8, !tbaa !26
  store ptr %0, ptr @_ZL11FirstTarget, align 8, !tbaa !24
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.c, ptr %i.h, align 8, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14TargetRegistry32printRegisteredTargetsForVersionERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.050.075 = load ptr, ptr @_ZL11FirstTarget, align 8, !tbaa !24 ; 2 uses
  %.not76 = icmp eq ptr %.sroa.050.075, null
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit
  %i.a = ptrtoint ptr %.sroa.17.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.9.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.17.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.speculated, %._crit_edge.loopexit ]
  %.sroa.058.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.058.1, %._crit_edge.loopexit ] ; 6 uses
  %i.b = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.c = ptrtoint ptr %.sroa.058.0.lcssa to i64   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp slt i64 %i.d, 48
  br i1 %i.e, label %_ZN4llvm14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_9StringRefEPKNS_6TargetEESt6vectorIS8_SaIS8_EEEEEEvT_SE_PFiPKNSt15iterator_traitsISE_E10value_typeESJ_E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = udiv exact i64 %i.d, 24
  tail call void @qsort(ptr noundef nonnull %.sroa.058.0.lcssa, i64 noundef %i.f, i64 noundef 24, ptr noundef nonnull @_ZL17TargetArraySortFnPKSt4pairIN4llvm9StringRefEPKNS0_6TargetEES7_) #17
  br label %_ZN4llvm14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_9StringRefEPKNS_6TargetEESt6vectorIS8_SaIS8_EEEEEEvT_SE_PFiPKNSt15iterator_traitsISE_E10value_typeESJ_E.exit

_ZN4llvm14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_9StringRefEPKNS_6TargetEESt6vectorIS8_SaIS8_EEEEEEvT_SE_PFiPKNSt15iterator_traitsISE_E10value_typeESJ_E.exit: ; preds = %._crit_edge, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_9StringRefEPKNS_6TargetEESt6vectorIS8_SaIS8_EEEEEEvT_SE_PFiPKNSt15iterator_traitsISE_E10value_typeESJ_E.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.10, i64 noundef 1) #17 ; 0 uses
  %.pre89 = load ptr, ptr %i.i, align 8, !tbaa !118
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %_ZN4llvm14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINS_9StringRefEPKNS_6TargetEESt6vectorIS8_SaIS8_EEEEEEvT_SE_PFiPKNSt15iterator_traitsISE_E10value_typeESJ_E.exit
  store i8 10, ptr %i.j, align 1
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !118
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %.pre89, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 22
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.11, i64 noundef 22) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.o, ptr noundef nonnull align 1 dereferenceable(22) @.str.11, i64 22, i1 false)
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  store ptr %i.w, ptr %i.i, align 8, !tbaa !118
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19

_ZN4llvm11raw_ostreamlsEPKc.exit19:               ; preds = %bb.e, %bb.f
  %.not7085 = icmp eq ptr %.sroa.058.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not7085, label %._crit_edge88.thread, label %.lr.ph87

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit
  %.sroa.050.081 = phi ptr [ %.sroa.050.0, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit ], [ %.sroa.050.075, %bb.a ] ; 4 uses
  %.sroa.058.080 = phi ptr [ %.sroa.058.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit ], [ null, %bb.a ] ; 6 uses
  %.079 = phi i64 [ %.sroa.speculated, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit ], [ 0, %bb.a ]
  %.sroa.17.078 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.9.077 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit ], [ null, %bb.a ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.050.081, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt4pairIN4llvm9StringRefEPKNS0_6TargetEEC2IPKcS4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.z = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #17
  br label %_ZNSt4pairIN4llvm9StringRefEPKNS0_6TargetEEC2IPKcS4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E.exit

_ZNSt4pairIN4llvm9StringRefEPKNS0_6TargetEEC2IPKcS4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E.exit: ; preds = %.lr.ph, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %i.z, %bb.g ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i.i20 = icmp eq ptr %.sroa.9.077, %.sroa.17.078
  br i1 %.not.i.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefEPKNS0_6TargetEEC2IPKcS4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E.exit
  store ptr %i.y, ptr %.sroa.9.077, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.077, i64 8
  store i64 %.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.077, i64 16
  store ptr %.sroa.050.081, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit

bb.i:                                             ; preds = %_ZNSt4pairIN4llvm9StringRefEPKNS0_6TargetEEC2IPKcS4_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E.exit
  %i.aa = ptrtoint ptr %.sroa.17.078 to i64
  %i.ab = ptrtoint ptr %.sroa.058.080 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.j, label %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
  unreachable

_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ae = sdiv exact i64 %i.ac, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 384307168202282325)
  %i.ai = select i1 %i.ag, i64 384307168202282325, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #20 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac ; 3 uses
  store ptr %i.y, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx45, align 8
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.050.081, ptr %.sroa.6.0..sroa_idx47, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.058.080, %.sroa.17.078
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.058.080, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !119
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, %.sroa.17.078
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %.sroa.058.080, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.080, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.h, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.ap = phi i64 [ %.pre, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.9.077, %bb.h ]
  %.sroa.17.1 = phi ptr [ %i.ao, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.17.078, %bb.h ] ; 2 uses
  %.sroa.058.1 = phi ptr [ %i.ak, %_ZNSt6vectorISt4pairIN4llvm9StringRefEPKNS1_6TargetEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.058.080, %bb.h ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.079, i64 %i.ap) ; 2 uses
  %.sroa.050.0 = load ptr, ptr %.sroa.050.081, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %.sroa.050.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph87:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19, %_ZN4llvm11raw_ostreamlsEc.exit
  %.sroa.037.086 = phi ptr [ %i.cv, %_ZN4llvm11raw_ostreamlsEc.exit ], [ %.sroa.058.0.lcssa, %_ZN4llvm11raw_ostreamlsEPKc.exit19 ] ; 4 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !118 ; 2 uses
end_hunk_0
