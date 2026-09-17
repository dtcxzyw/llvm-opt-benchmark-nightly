Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/CorePrPsInfo?download=true
inline.NumInlined: 3039
inline.NumDeleted: 899
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4LIEF3ELF13get_info_implINS0_7details5ELF64EEENS_6resultINS0_12CorePrPsInfo6info_tEEERKSt6vectorIhSaIhEE:bb.a
  %i.au = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 80, ptr %i.a, align 8, !tbaa !71
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 3 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !72
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !71  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.17, i64 80, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !72  ; 6 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  %i.bf = load ptr, ptr %4, align 8, !tbaa !72    ; 5 uses
  %i.bg = icmp eq ptr %i.bf, %i.ay                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.bg, label %bb.h, label %.thread.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.bg, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !62 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !60
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4: ; preds = %bb.j, %bb.i, %bb.h
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  store i64 %i.bk, ptr %i.i, align 8, !tbaa !62
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !60
  %.pre.i5 = load ptr, ptr %4, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8

.thread.i7:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6
  store ptr %i.bf, ptr %i.g, align 8, !tbaa !72
  %i.bn = load <2 x i64>, ptr %i.bb, align 8, !tbaa !60
  store <2 x i64> %i.bn, ptr %i.i, align 8, !tbaa !60
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i1
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !60
  store ptr %i.bf, ptr %i.g, align 8, !tbaa !72
  %i.bp = load <2 x i64>, ptr %i.bb, align 8, !tbaa !60
  store <2 x i64> %i.bp, ptr %i.i, align 8, !tbaa !60
  %.not.i3 = icmp eq ptr %i.bd, null
  br i1 %.not.i3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2
  store ptr %i.bd, ptr %4, align 8, !tbaa !72
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2, %.thread.i7
  store ptr %i.ay, ptr %4, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4, %bb.k, %bb.l
  %i.bq = phi ptr [ %i.bd, %bb.k ], [ %i.ay, %bb.l ], [ %.pre.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i4 ]
  store i64 0, ptr %i.bb, align 8, !tbaa !62
  store i8 0, ptr %i.bq, align 1, !tbaa !60
  %i.br = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ay
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !60
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 40, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !61
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.e
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !62  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !72
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !60
  store i64 %i.cc, ptr %i.bw, align 8, !tbaa !60
  %.pre = load i64, ptr %i.f, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.cd = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !61
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !72  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.h
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !62  ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.cl, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !72
  %i.cm = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !60
  %.pre42 = load i64, ptr %i.i, align 8, !tbaa !62
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.cn = phi i64 [ %i.cj, %bb.n ], [ %.pre42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !62
  br label %_ZN4LIEF3ELF12CorePrPsInfo6info_tD2Ev.exit

._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i_crit_edge: ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !75
  br label %_ZN4LIEF3ELF12CorePrPsInfo6info_tD2Ev.exit

_ZN4LIEF3ELF12CorePrPsInfo6info_tD2Ev.exit:       ; preds = %.thread, %._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i_crit_edge
  %.sink = phi i8 [ 1, %.thread ], [ 0, %._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i_crit_edge ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sink, ptr %i.cp, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF12CorePrPsInfo4infoERKNS1_6info_tE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN4LIEF3ELF15write_info_implINS0_7details5ELF32EEENS_10ok_error_tERSt6vectorIhSaIhEERKNS0_12CorePrPsInfo6info_tE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @_ZN4LIEF3ELF15write_info_implINS0_7details5ELF64EEENS_10ok_error_tERSt6vectorIhSaIhEERKNS0_12CorePrPsInfo6info_tE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF3ELF15write_info_implINS0_7details5ELF32EEENS_10ok_error_tERSt6vectorIhSaIhEERKNS0_12CorePrPsInfo6info_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.sroa.16 = alloca { [16 x i8], [80 x i8] }, align 4 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.LIEF::vector_iostream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %.sroa.16, i8 0, i64 96, i1 false)
  %i.c = load <4 x i8>, ptr %1, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <2 x i32>, ptr %i.g, align 8, !tbaa !70
  %i.i = trunc <2 x i32> %i.h to <2 x i16>
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load <4 x i32>, ptr %i.j, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !61
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.p, ptr %i.b, align 8, !tbaa !71
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !72
  %i.s = load i64, ptr %i.b, align 8, !tbaa !71
  store i64 %i.s, ptr %i.m, align 8, !tbaa !60
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.r, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !60
  store i8 %i.u, ptr %i.t, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.v = load i64, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !62
  %i.x = load ptr, ptr %2, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 16, i8 noundef signext 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !61
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !71
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %bb.e, label %._crit_edge.i.i17

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !72
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !60
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ah = phi ptr [ %i.af, %bb.e ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18
  ]

bb.f:                                             ; preds = %._crit_edge.i.i17
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !60
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18

bb.g:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18: ; preds = %._crit_edge.i.i17, %bb.f, %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !62
  %i.al = load ptr, ptr %3, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 80, i8 noundef signext 0) #23
  %i.an = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !62  ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !78

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.16, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !60
  store i8 %i.ar, ptr %.sroa.16, align 4, !tbaa !60
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.as = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !62 ; 3 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.k, label %bb.l, !prof !78

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.16.16..sroa_idx, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19

bb.m:                                             ; preds = %bb.l
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !60
  %.sroa.16.16..sroa_idx77 = getelementptr inbounds nuw i8, ptr %.sroa.16, i64 16
  store i8 %i.aw, ptr %.sroa.16.16..sroa_idx77, align 4, !tbaa !60
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %4, i8 0, i64 64, i1 false)
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i8 0, ptr %i.az, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 124)
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 5 uses
  store <4 x i8> %i.c, ptr %i.bc, align 1
  %.sroa.9.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.f, ptr %.sroa.9.0..sroa_idx31, align 1
  %.sroa.10.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x i16> %i.i, ptr %.sroa.10.0..sroa_idx33, align 1
  %.sroa.12.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store <4 x i32> %i.k, ptr %.sroa.12.0..sroa_idx37, align 1
  %.sroa.16.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %.sroa.16.0..sroa_idx45, ptr noundef nonnull align 4 dereferenceable(96) %.sroa.16, i64 96, i1 false)
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !90
  %i.be = add nsw i64 %i.bd, 124
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !90
  %i.bf = load ptr, ptr %0, align 8, !tbaa !63    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91
  %i.bi = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !92
  store <2 x ptr> %i.bi, ptr %0, align 8, !tbaa !92
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !91
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit

_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #24
  %.pr = load ptr, ptr %i.ax, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.pr to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.br) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES2_ET0_T_SB_SA_.exit19, %bb.n, %_ZN4LIEF15vector_iostream4moveERSt6vectorIhSaIhEE.exit
  %i.bs = load ptr, ptr %4, align 8, !tbaa !93    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i ], [ %i.bs, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #24
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cb, %i.bu
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.cc = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exitthread-pre-split.i.i ], [ %i.bs, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF15vector_iostreamD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !100
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #24
  br label %_ZN4LIEF15vector_iostreamD2Ev.exit

_ZN4LIEF15vector_iostreamD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ci = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aa
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4LIEF15vector_iostreamD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cm = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.m
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %i.m, align 8, !tbaa !60
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  ret i64 4294967296
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF3ELF15write_info_implINS0_7details5ELF64EEENS_10ok_error_tERSt6vectorIhSaIhEERKNS0_12CorePrPsInfo6info_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.sroa.16 = alloca { [16 x i8], [80 x i8] }, align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.LIEF::vector_iostream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.16, i8 0, i64 96, i1 false)
  %i.c = load <4 x i8>, ptr %1, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <4 x i32>, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !61
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.n, ptr %i.b, align 8, !tbaa !71
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #23 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !72
  %i.q = load i64, ptr %i.b, align 8, !tbaa !71
  store i64 %i.q, ptr %i.k, align 8, !tbaa !60
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %i.p, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !60
  store i8 %i.s, ptr %i.r, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !62
  %i.v = load ptr, ptr %2, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 16, i8 noundef signext 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !61
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !71
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.e, label %._crit_edge.i.i17

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !72
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !60
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = phi ptr [ %i.ad, %bb.e ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18
  ]

bb.f:                                             ; preds = %._crit_edge.i.i17
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !60
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit18

end_hunk_0
