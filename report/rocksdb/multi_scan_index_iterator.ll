Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/multi_scan_index_iterator?download=true
inline.NumInlined: 499
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7rocksdb22MultiScanIndexIterator4SeekERKNS_5SliceE:bb.a
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 3 uses
  %.not.i45 = icmp eq ptr %i.fk, null
  br i1 %.not.i45, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit46, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 176
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(33) %i.fk, i32 noundef 244, i64 noundef 1), !inline_history !1
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit46

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.fo, align 8, !tbaa !126
  br label %bb.an

bb.ae:                                            ; preds = %bb.ab
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.af:                                            ; preds = %bb.ac
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.fr = load ptr, ptr %11, align 8, !tbaa !99   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.af
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !87
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.fp, %bb.ae ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.fq, %bb.af ]
  %i.fw = load ptr, ptr %12, align 8, !tbaa !99   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !87
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %.pn

bb.ag:                                            ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit35
  call void @_ZN7rocksdb22MultiScanIndexIterator11SeekToBlockEPKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull %8)
  br label %bb.an

bb.ah:                                            ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  %.not = icmp eq i32 %i.dx, 0
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7rocksdb22MultiScanIndexIterator11SeekToBlockEPKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull %8)
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.gb = load i64, ptr %i.cz, align 8, !tbaa !131 ; 2 uses
  %i.gc = load ptr, ptr %i.da, align 8, !tbaa !90
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gb ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.gd, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.ge = add i64 %i.gb, 1
  store i64 %i.ge, ptr %i.cz, align 8, !tbaa !131
  %.not24 = icmp ult i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload
  br i1 %.not24, label %bb.ak, label %.critedge28

.critedge28:                                      ; preds = %bb.aj
  call void @_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !106 ; 2 uses
  %.not25 = icmp ult i64 %i.gg, %.sroa.0.0.copyload
  br i1 %.not25, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv(ptr noundef nonnull align 8 dereferenceable(368) %0)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.sroa.6.0.copyload, i64 %i.gg)
  call void @_ZN7rocksdb22MultiScanIndexIterator14SeekToBlockIdxEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %.sroa.speculated)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit46, %bb.ag, %bb.ai, %.critedge28, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit.thread: ; preds = %bb.l, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit, %bb.a, %bb.an, %bb.f, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <4 x i8>, ptr %1, align 8, !tbaa !87
  store <4 x i8> %i.a, ptr %0, align 8, !tbaa !87
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !123, !range !105, !noundef !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.c, ptr %i.d, align 4, !tbaa !124
  store i8 0, ptr %i.b, align 4, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !125
  store i8 0, ptr %i.e, align 1, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !104
  store ptr null, ptr %i.h, align 8, !tbaa !104
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !104
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #26
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !85
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !86   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !99
  %i.k = load i64, ptr %i.e, align 8, !tbaa !87
  store i64 %i.k, ptr %i.c, align 8, !tbaa !87
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !86
  store ptr %i.e, ptr %i.b, align 8, !tbaa !99
  store i64 0, ptr %i.m, align 8, !tbaa !86
  store i8 0, ptr %i.e, align 8, !tbaa !87
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !85
  br label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %2 = icmp ult i64 %1, 100
  br i1 %2, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %3

3:                                                ; preds = %.lr.ph.i
  %4 = icmp ult i64 %1, 1000
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %5

5:                                                ; preds = %3
  %6 = icmp ult i64 %1, 10000
  br i1 %6, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %7

7:                                                ; preds = %5
  %8 = icmp ult i64 %1, 100000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %7
  %9 = icmp ult i64 %1, 1000000
  br i1 %9, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %10

10:                                               ; preds = %.lr.ph.i.1
  %11 = icmp ult i64 %1, 10000000
  br i1 %11, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %12

12:                                               ; preds = %10
  %13 = icmp ult i64 %1, 100000000
  br i1 %13, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %14

14:                                               ; preds = %12
  %15 = icmp ult i64 %1, 1000000000
  br i1 %15, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %14
  %16 = icmp ult i64 %1, 10000000000
  br i1 %16, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %17

17:                                               ; preds = %.lr.ph.i.2
  %18 = icmp ult i64 %1, 100000000000
  br i1 %18, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %19

19:                                               ; preds = %17
  %20 = icmp ult i64 %1, 1000000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %19
  %i.c = icmp ult i64 %1, 10000000000000
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.a
  %21 = icmp ult i64 %1, 100000000000000
  br i1 %21, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %1, 1000000000000000
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %22 = icmp ult i64 %1, 10000000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %1, 100000000000000000
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %23 = icmp ult i64 %1, 1000000000000000000
  br i1 %23, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %24 = icmp ult i64 %1, -8446744073709551616
  %spec.select = select i1 %24, i32 19, i32 20
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %7, %14, %.lr.ph.i.a, %bb.e, %5, %12, %19, %bb.d, %3, %10, %17, %bb.c, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.b, %bb.f
  %.022.i = phi i32 [ 17, %bb.e ], [ %spec.select, %bb.g ], [ 18, %bb.f ], [ 2, %.lr.ph.i ], [ 6, %.lr.ph.i.1 ], [ 10, %.lr.ph.i.2 ], [ 14, %bb.b ], [ 3, %3 ], [ 7, %10 ], [ 11, %17 ], [ 15, %bb.c ], [ 4, %5 ], [ 8, %12 ], [ 12, %19 ], [ 16, %bb.d ], [ 5, %7 ], [ 9, %14 ], [ 13, %.lr.ph.i.a ] ; 3 uses
  %i.f = zext i32 %.022.i to i64                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !85
  %i.h = icmp ugt i32 %.022.i, 15
  br i1 %i.h, label %.noexc, label %bb.h

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.i = add nuw nsw i64 %i.f, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !99
  store i64 %i.f, ptr %i.g, align 8, !tbaa !87
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  switch i32 %.022.i, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %.thread, %bb.h
  %i.k = phi ptr [ %i.b, %.thread ], [ %i.g, %bb.h ] ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !87
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.noexc
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.g, %bb.h ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i8 0, i64 %i.f, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.m = phi i64 [ 0, %bb.h ], [ %i.f, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.h ], [ %i.l, %bb.j ], [ %i.k, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !87
  %i.q = load ptr, ptr %0, align 8, !tbaa !99     ; 4 uses
  %i.r = icmp ugt i64 %1, 99
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.s = load i64, ptr %i.o, align 8, !tbaa !86
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.x, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ah, %.lr.ph.i4 ], [ %i.u, %.lr.ph.preheader.i ] ; 3 uses
  %i.v = urem i64 %.020.i, 100
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = udiv i64 %.020.i, 100                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !87
  %i.ab = zext i32 %.01819.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !87
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !87
  %i.ae = add i32 %.01819.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !87
  %i.ah = add i32 %.01819.i, -2
  %i.ai = icmp ugt i64 %.020.i, 9999
  br i1 %i.ai, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !155

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %bb.k
  %.0.lcssa.i = phi i64 [ %1, %bb.k ], [ %i.x, %.lr.ph.i4 ] ; 3 uses
  %i.aj = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.ak = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !87
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !87
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.aq = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.l, %bb.m
  %storemerge.i = phi i8 [ %i.ar, %bb.m ], [ %i.ap, %bb.l ]
  store i8 %storemerge.i, ptr %i.q, align 1, !tbaa !87
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator11SeekToBlockEPKNS_5SliceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !131  ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.p = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i4.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.us, label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i.us:             ; preds = %.lr.ph, %bb.d
  %i.r = phi i64 [ %i.af, %bb.d ], [ %i.g, %.lr.ph ]
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.s, i64 %i.r
  %i.u = load i8, ptr %i.p, align 1, !tbaa !102
  %i.v = icmp ugt i8 %i.u, 1
  br i1 %i.v, label %bb.b, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us

bb.b:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.us
  br i1 %.not.i4.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.us

_ZTWN7rocksdb12perf_contextE.exit.i.us:           ; preds = %bb.c, %bb.b
  %i.w = load i64, ptr %i.q, align 8, !tbaa !129
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.q, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.us, %_ZTWN7rocksdb10perf_levelE.exit.i.us
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !83   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i1 noundef zeroext false), !inline_history !5
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !131
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr %i.d, align 8, !tbaa !131
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %_ZTWN7rocksdb10perf_levelE.exit.i.us, label %.critedge, !llvm.loop !156

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %.lr.ph, %bb.g
  %i.an = phi i64 [ %i.bb, %bb.g ], [ %i.g, %.lr.ph ]
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.an
  tail call void @_ZTHN7rocksdb10perf_levelE()
  %i.aq = load i8, ptr %i.p, align 1, !tbaa !102
  %i.ar = icmp ugt i8 %i.aq, 1
  br i1 %i.ar, label %bb.e, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

bb.e:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  br i1 %.not.i4.i, label %_ZTWN7rocksdb12perf_contextE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i

_ZTWN7rocksdb12perf_contextE.exit.i:              ; preds = %bb.f, %bb.e
  %i.as = load i64, ptr %i.q, align 8, !tbaa !129
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.q, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %_ZTWN7rocksdb12perf_contextE.exit.i
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !83  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i1 noundef zeroext false), !inline_history !5
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !131
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !131
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %.critedge, !llvm.loop !156

.critedge:                                        ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit, %bb.g, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us, %bb.d, %bb.a
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !90  ; 2 uses
  %i.bl = getelementptr [16 x i8], ptr %i.bk, i64 %i.bj ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.bl, i64 -8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.not = icmp ult i64 %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.bn, align 8, !tbaa !89
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bk to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4
  %i.bt = icmp ult i64 %i.bj, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  br i1 %i.bt, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bu, align 8, !tbaa !126
  %.sroa.0.0.copyload.i = load i64, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.4.0.copyload.i, ptr %i.bw, align 8, !tbaa !107
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %i.bu, align 8, !tbaa !126
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

bb.l:                                             ; preds = %bb.h
  store i8 0, ptr %i.bu, align 8, !tbaa !126
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

bb.m:                                             ; preds = %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !107 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !106
  %.sroa.speculated12.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.ca) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !106
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %.sroa.4.0.copyload) ; 2 uses
  %.not.i = icmp uge i64 %.sroa.speculated12.i, %.sroa.speculated.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.ce, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.cf
  br i1 %or.cond.i, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.i
  %.017.i = phi i64 [ %.sroa.speculated12.i, %.preheader.i ], [ %i.ck, %bb.p ] ; 2 uses
  %i.ch = tail call noundef zeroext i1 @_ZN7rocksdb22MultiScanIndexIterator22ReleasePrefetchedBlockEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %.017.i)
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !88
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !88
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ck = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ck, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit.loopexit, label %bb.n, !llvm.loop !4

_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit.loopexit: ; preds = %bb.p
  %.pre = load i64, ptr %i.bx, align 8, !tbaa !106
  br label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit

_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit: ; preds = %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit.loopexit, %bb.m
  %i.cl = phi i64 [ %.pre, %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit.loopexit ], [ %i.by, %bb.m ]
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.sroa.4.0.copyload, i64 %i.cl) ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !98 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !97 ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 5
  %i.cu = icmp ult i64 %.sroa.speculated, %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  br i1 %i.cu, label %.lr.ph44, label %.critedge2

.lr.ph44:                                         ; preds = %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i20 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.cx = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i4.i22 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.cy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph44, %bb.w
  %i.da = phi ptr [ %i.cp, %.lr.ph44 ], [ %i.dy, %bb.w ]
  %.043 = phi i64 [ %.sroa.speculated, %.lr.ph44 ], [ %i.dw, %bb.w ] ; 6 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.043 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !99
  store ptr %i.dc, ptr %2, align 8, !tbaa !121
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !86
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !122
  br i1 %.not.i.i20, label %_ZTWN7rocksdb10perf_levelE.exit.i21, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i21

_ZTWN7rocksdb10perf_levelE.exit.i21:              ; preds = %bb.r, %bb.q
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !102
  %i.dg = icmp ugt i8 %i.df, 1
  br i1 %i.dg, label %bb.s, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit24

bb.s:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i21
  br i1 %.not.i4.i22, label %_ZTWN7rocksdb12perf_contextE.exit.i23, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i23

_ZTWN7rocksdb12perf_contextE.exit.i23:            ; preds = %bb.t, %bb.s
  %i.dh = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit24

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit24: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i21, %_ZTWN7rocksdb12perf_contextE.exit.i23
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !83 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 232
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false), !inline_history !5
  %i.do = icmp sgt i32 %i.dn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.do, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit24
  %i.dp = load i64, ptr %i.bz, align 8, !tbaa !77
  %.not.i25 = icmp uge i64 %.043, %i.dp
  %i.dq = load i64, ptr %i.cb, align 8
  %i.dr = icmp ult i64 %.043, %i.dq
  %i.ds = select i1 %.not.i25, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = load i64, ptr %i.cz, align 8, !tbaa !88
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.cz, align 8, !tbaa !88
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dv = call noundef zeroext i1 @_ZN7rocksdb22MultiScanIndexIterator22ReleasePrefetchedBlockEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %.043) ; 0 uses
  %i.dw = add nuw i64 %.043, 1                    ; 3 uses
  %i.dx = load ptr, ptr %i.cn, align 8, !tbaa !98 ; 2 uses
  %i.dy = load ptr, ptr %i.cm, align 8, !tbaa !97 ; 3 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 5
  %i.ed = icmp ult i64 %i.dw, %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  br i1 %i.ed, label %bb.q, label %.critedge2, !llvm.loop !157

.critedge2:                                       ; preds = %bb.w, %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit
  %i.ee = phi ptr [ %i.cp, %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit ], [ %i.dy, %bb.w ]
  %i.ef = phi ptr [ %i.co, %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit ], [ %i.dx, %bb.w ]
  %.0.lcssa = phi i64 [ %.sroa.speculated, %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit ], [ %i.dw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.x

.loopexit:                                        ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit24
  %.pre48 = load ptr, ptr %i.cn, align 8, !tbaa !98
  %.pre49 = load ptr, ptr %i.cm, align 8, !tbaa !97
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %.critedge2
  %i.eg = phi ptr [ %.pre49, %.loopexit ], [ %i.ee, %.critedge2 ]
  %i.eh = phi ptr [ %.pre48, %.loopexit ], [ %i.ef, %.critedge2 ]
  %.038 = phi i64 [ %.043, %.loopexit ], [ %.0.lcssa, %.critedge2 ] ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 5
  %.not19 = icmp ult i64 %.038, %i.el
  br i1 %.not19, label %_ZN7rocksdb22MultiScanIndexIterator14SeekToBlockIdxEm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !132
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !91
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 4
  store i64 %i.et, ptr %i.bx, align 8, !tbaa !107
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.eu, align 8, !tbaa !89
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %i.ew = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.ex = load ptr, ptr %i.e, align 8, !tbaa !90  ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 4
  %i.fc = icmp ult i64 %i.ev, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  br i1 %i.fc, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.fd, align 8, !tbaa !126
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ev ; 2 uses
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.fe, align 8
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.4.0.copyload.i28 = load i64, ptr %.sroa.4.0..sroa_idx.i27, align 8 ; 2 uses
  %i.ff = icmp ult i64 %.sroa.4.0.copyload.i28, %.sroa.0.0.copyload.i26
  br i1 %i.ff, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %.sroa.4.0.copyload.i28, ptr %i.bx, align 8, !tbaa !107
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

bb.ab:                                            ; preds = %bb.z
  store i8 0, ptr %i.fd, align 8, !tbaa !126
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

bb.ac:                                            ; preds = %bb.y
  store i8 0, ptr %i.fd, align 8, !tbaa !126
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

_ZN7rocksdb22MultiScanIndexIterator14SeekToBlockIdxEm.exit: ; preds = %bb.x
  store i64 %.038, ptr %i.bx, align 8, !tbaa !107
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.fg, align 8, !tbaa !126
  br label %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit

_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.l, %bb.k, %bb.j, %_ZN7rocksdb22MultiScanIndexIterator14SeekToBlockIdxEm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) initializes((264, 265), (328, 329)) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = icmp ult i64 %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.m, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.o = icmp ult i64 %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.4.0.copyload, ptr %i.p, align 8, !tbaa !107
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 8, !tbaa !126
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i8 0, ptr %i.m, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator14SeekToBlockIdxEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106
  %.sroa.speculated12.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !106
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %1) ; 2 uses
  %.not.i = icmp uge i64 %.sroa.speculated12.i, %.sroa.speculated.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %or.cond.i, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.017.i = phi i64 [ %.sroa.speculated12.i, %.preheader.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN7rocksdb22MultiScanIndexIterator22ReleasePrefetchedBlockEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %.017.i)
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.j, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = add nuw i64 %.017.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit, label %bb.b, !llvm.loop !4

_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit: ; preds = %bb.d, %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.o, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator21SeekToBlockIdxReverseEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = icmp ult i64 %i.b, %i.k
  br i1 %i.l, label %bb.c, label %_ZN7rocksdb22MultiScanIndexIterator13ReleaseBlocksEmm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %1, 1
  %i.n = add nuw i64 %i.b, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !106
  %.sroa.speculated12.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.p) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !106
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.n) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb22MultiScanIndexIterator4NextEv:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ult i64 %i.e, %i.z
  %i.ab = select i1 %.not.i, i1 %i.aa, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit
  store i8 0, ptr %i.ac, align 8, !tbaa !126
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !133
  %.not4 = icmp eq i64 %i.ag, 0
  br i1 %.not4, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 7, ptr %i.ah, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 273
  store i8 17, ptr %i.ai, align 1, !tbaa !134
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store i32 0, ptr %i.aj, align 2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.j:                                             ; preds = %_ZN7rocksdb22MultiScanIndexIterator12SetExhaustedEv.exit
  store i8 1, ptr %i.ac, align 8, !tbaa !126
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator11SeekToFirstEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) initializes((264, 265)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.i, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !99
  store i8 0, ptr %i.j, align 1, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.k, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.l, i8 0, i64 6, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp ult i64 %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  store i64 %.sroa.4.0.copyload, ptr %i.f, align 8, !tbaa !107
  store i64 1, ptr %i.g, align 8, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.a, %bb.c
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %_ZN7rocksdb6StatusD2Ev.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %.sink, ptr %i.p, align 8, !tbaa !126
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator11SeekForPrevERKNS_5SliceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 8 uses
  %3 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !118, !range !105, !noundef !119
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !108
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.i, align 8, !tbaa !126
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !127  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !126
  br label %bb.w

.lr.ph:                                           ; preds = %bb.d
  %i.q = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.r = load ptr, ptr %1, align 8, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !122
  %i.u = add i64 %i.t, -8
  store ptr %i.r, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.w, %i.q
  %i.y = sdiv exact i64 %i.x, 96                  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.aa = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 3 uses
  %.not.i4.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 6 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.02648.us = phi i64 [ %i.ac, %bb.i ], [ %i.y, %.lr.ph ]
  %i.ac = add i64 %.02648.us, -1                  ; 4 uses
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.ac ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !122
  %.not43.us = icmp eq i64 %i.ag, -1
  br i1 %.not43.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !122
  %.not44.us = icmp eq i64 %i.ai, -1
  br i1 %.not44.us, label %bb.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.us

_ZTWN7rocksdb10perf_levelE.exit.i.us:             ; preds = %bb.f
  %i.aj = load i8, ptr %i.aa, align 1, !tbaa !102
  %i.ak = icmp ugt i8 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us

bb.g:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.us
  br i1 %.not.i4.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.us

_ZTWN7rocksdb12perf_contextE.exit.i.us:           ; preds = %bb.h, %bb.g
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !129
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.us, %_ZTWN7rocksdb10perf_levelE.exit.i.us
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i1 noundef zeroext false), !inline_history !5
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us, %bb.f, %.lr.ph.split.us
  %.not.us = icmp eq i64 %i.ac, 0
  br i1 %.not.us, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %.lr.ph.split.us, !llvm.loop !158

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i4.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.k
  %.02648.us51 = phi i64 [ %i.at, %bb.k ], [ %i.y, %.lr.ph.split ]
  %i.at = add i64 %.02648.us51, -1                ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %i.at ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !122
  %.not43.us52 = icmp eq i64 %i.ax, -1
  br i1 %.not43.us52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !122
  %.not44.us53 = icmp eq i64 %i.az, -1
  br i1 %.not44.us53, label %bb.k, label %_ZTWN7rocksdb10perf_levelE.exit.i.us54

_ZTWN7rocksdb10perf_levelE.exit.i.us54:           ; preds = %bb.j
  call void @_ZTHN7rocksdb10perf_levelE()
  %i.ba = load i8, ptr %i.aa, align 1, !tbaa !102
  %i.bb = icmp ugt i8 %i.ba, 1
  br i1 %i.bb, label %_ZTWN7rocksdb12perf_contextE.exit.i.us55, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56

_ZTWN7rocksdb12perf_contextE.exit.i.us55:         ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.us54
  %i.bc = load i64, ptr %i.ab, align 8, !tbaa !129
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.ab, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.us55, %_ZTWN7rocksdb10perf_levelE.exit.i.us54
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 232
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i1 noundef zeroext false), !inline_history !5
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56, %bb.j, %.lr.ph.split.split.us
  %.not.us57 = icmp eq i64 %i.at, 0
  br i1 %.not.us57, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !158

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.m
  %.02648 = phi i64 [ %i.bk, %bb.m ], [ %i.y, %.lr.ph.split ]
  %i.bk = add i64 %.02648, -1                     ; 4 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.bl, i64 %i.bk ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !122
  %.not43 = icmp eq i64 %i.bo, -1
  br i1 %.not43, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !122
  %.not44 = icmp eq i64 %i.bq, -1
  br i1 %.not44, label %bb.m, label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.l
  call void @_ZTHN7rocksdb10perf_levelE()
  %i.br = load i8, ptr %i.aa, align 1, !tbaa !102
  %i.bs = icmp ugt i8 %i.br, 1
  br i1 %i.bs, label %_ZTWN7rocksdb12perf_contextE.exit.i, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

_ZTWN7rocksdb12perf_contextE.exit.i:              ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !129
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.ab, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i, %_ZTWN7rocksdb12perf_contextE.exit.i
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 232
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i1 noundef zeroext false), !inline_history !5
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %bb.m

bb.m:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit, %bb.l, %.lr.ph.split.split
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge, label %.lr.ph.split.split, !llvm.loop !158

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge: ; preds = %bb.m, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit, %bb.k, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56, %bb.i, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us
  %.3 = phi i64 [ %i.ac, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us ], [ %i.y, %bb.k ], [ %i.y, %bb.i ], [ %i.at, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.us56 ], [ %i.bk, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit ], [ %i.y, %bb.m ] ; 3 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 96
  %i.ch = icmp eq i64 %.3, %i.cg
  br i1 %i.ch, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @.str.2, ptr %4, align 8, !tbaa !121
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 45, ptr %i.ci, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr @.str.3, ptr %5, align 8, !tbaa !121
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !122
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  %i.ck = load <4 x i8>, ptr %3, align 8, !tbaa !87
  store <4 x i8> %i.ck, ptr %i.f, align 8, !tbaa !87
  store <4 x i8> zeroinitializer, ptr %3, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !123, !range !105, !noundef !119
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 %i.cm, ptr %i.cn, align 4, !tbaa !124
  store i8 0, ptr %i.cl, align 4, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !125
  store i8 0, ptr %i.co, align 1, !tbaa !125
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !104
  store ptr null, ptr %i.cr, align 8, !tbaa !104
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !104 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #26
  %.pr = load ptr, ptr %i.cr, align 8, !tbaa !104 ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.n, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84 ; 3 uses
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(33) %i.cw, i32 noundef 244, i64 noundef 1), !inline_history !1
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.da, align 8, !tbaa !126
  br label %bb.v

bb.p:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.3, ptr %i.db, align 8, !tbaa !135
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.3 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.de, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.not31 = icmp ult i64 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  br i1 %.not31, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i33 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.di = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i4.i35 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.dj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.dk = add i64 %.sroa.0.0.copyload, -1         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %exitcond.not86 = icmp eq i64 %.sroa.5.0.copyload, %i.dk
  br i1 %exitcond.not86, label %.critedge, label %.lr.ph88

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.dl, align 8, !tbaa !126
  br label %bb.v

bb.r:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %exitcond.not = icmp eq i64 %i.dm, %i.dk
  br i1 %exitcond.not, label %.critedge, label %.lr.ph88, !llvm.loop !159

.lr.ph88:                                         ; preds = %.preheader, %bb.r
  %.087 = phi i64 [ %i.dm, %bb.r ], [ %.sroa.5.0.copyload, %.preheader ] ; 3 uses
  %i.dm = add nuw i64 %.087, 1                    ; 2 uses
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %.087 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !99
  store ptr %i.dp, ptr %6, align 8, !tbaa !121
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !86
  store i64 %i.dr, ptr %i.dh, align 8, !tbaa !122
  br i1 %.not.i.i33, label %_ZTWN7rocksdb10perf_levelE.exit.i34, label %bb.s

bb.s:                                             ; preds = %.lr.ph88
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i34

_ZTWN7rocksdb10perf_levelE.exit.i34:              ; preds = %bb.s, %.lr.ph88
  %i.ds = load i8, ptr %i.di, align 1, !tbaa !102
  %i.dt = icmp ugt i8 %i.ds, 1
  br i1 %i.dt, label %bb.t, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37

bb.t:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i34
  br i1 %.not.i4.i35, label %_ZTWN7rocksdb12perf_contextE.exit.i36, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i36

_ZTWN7rocksdb12perf_contextE.exit.i36:            ; preds = %bb.u, %bb.t
  %i.du = load i64, ptr %i.dj, align 8, !tbaa !129
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dj, align 8, !tbaa !129
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i34, %_ZTWN7rocksdb12perf_contextE.exit.i36
  %i.dw = load ptr, ptr %i.df, align 8, !tbaa !83 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 232
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef i32 %i.dz(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false), !inline_history !5
  %i.eb = icmp sgt i32 %i.ea, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %i.eb, label %bb.r, label %.loopexit, !llvm.loop !159

.critedge:                                        ; preds = %bb.r, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37, %.critedge
  %.067 = phi i64 [ %i.dk, %.critedge ], [ %.087, %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit37 ]
  call void @_ZN7rocksdb22MultiScanIndexIterator21SeekToBlockIdxReverseEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %.067)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %.loopexit, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator10SeekToLastEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !118, !range !105, !noundef !119
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.f, align 8, !tbaa !126
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !130  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !90   ; 3 uses
  %.not14 = icmp eq ptr %i.i, %i.j
  br i1 %.not14, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.k
  %i.n = ashr exact i64 %i.m, 4
  br label %bb.d

.critedge:                                        ; preds = %bb.d
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge._crit_edge, label %bb.d, !llvm.loop !160

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.01015 = phi i64 [ %i.n, %.lr.ph ], [ %i.o, %.critedge ]
  %i.o = add i64 %.01015, -1                      ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.not11 = icmp ult i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload
  br i1 %.not11, label %bb.e, label %.critedge, !llvm.loop !160

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.o, ptr %i.q, align 8, !tbaa !135
  %i.r = add i64 %.sroa.0.0.copyload, -1
  tail call void @_ZN7rocksdb22MultiScanIndexIterator21SeekToBlockIdxReverseEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %i.r)
  br label %bb.f

.critedge._crit_edge:                             ; preds = %.critedge, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.s, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22MultiScanIndexIterator4PrevEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !118, !range !105, !noundef !119
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.f, align 8, !tbaa !126
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !107
  %i.i = tail call noundef zeroext i1 @_ZN7rocksdb22MultiScanIndexIterator22ReleasePrefetchedBlockEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load i64, ptr %i.k, align 8, !tbaa !135
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.o = load i64, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %.not = icmp ugt i64 %i.o, %.sroa.3.0.copyload
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.p, align 8, !tbaa !126
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = add i64 %i.o, -1                         ; 3 uses
  store i64 %i.q, ptr %i.g, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %.not.i = icmp uge i64 %i.q, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ult i64 %i.q, %i.u
  %i.w = select i1 %.not.i, i1 %i.v, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.x, align 8, !tbaa !126
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !133
  %.not2 = icmp eq i64 %i.aa, 0
  br i1 %.not2, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 7, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 273
  store i8 17, ptr %i.ac, align 1, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store i32 0, ptr %i.ad, align 2
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.h:                                             ; preds = %bb.e
  store i8 1, ptr %i.x, align 8, !tbaa !126
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.d, %bb.h, %bb.f, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZNK7rocksdb22MultiScanIndexIterator3keyEv(ptr noundef nonnull align 8 dereferenceable(368) initializes((344, 352)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !86
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !99
  store i8 0, ptr %i.c, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !86
  %i.l = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !162
  store ptr %i.i, ptr %1, align 8, !tbaa !104
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 72057594037927935, ptr %i.m, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.l, ptr %i.n, align 8, !tbaa !165
  call void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(25) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.p = load i64, ptr %i.b, align 8, !tbaa !86
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.p, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZNK7rocksdb22MultiScanIndexIterator8user_keyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !86
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK7rocksdb22MultiScanIndexIterator5valueEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.rocksdb::IndexValue") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !106
  store <2 x i64> %i.f, ptr %0, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.3, ptr %i.g, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb22MultiScanIndexIterator18GetMaxPrefetchSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !133
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE20SetRangeDelReadSeqnoEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb22MultiScanIndexIterator5ValidEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 8, !tbaa !126, !range !105, !noundef !119
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE16NextAndGetResultEPNS_13IterateResultE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { ptr, i64 } %i.j(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  store ptr %i.l, ptr %1, align 8, !tbaa !104
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !169
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb20InternalIteratorBaseINS_10IndexValueEE15write_unix_timeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb22MultiScanIndexIterator6statusEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load <4 x i8>, ptr %i.a, align 8, !tbaa !87
  store <4 x i8> %i.b, ptr %0, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.e = load i8, ptr %i.d, align 4, !tbaa !124, !range !105, !noundef !119
  store i8 %i.e, ptr %i.c, align 4, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.h = load i8, ptr %i.g, align 1, !tbaa !125
  store i8 %i.h, ptr %i.f, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull %i.j)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !104
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %.pre.i, %bb.b ], [ null, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %storemerge, ptr %i.k, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE12PrepareValueEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE20MayBeOutOfLowerBoundEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE21UpperBoundCheckResultEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE17SetPinnedItersMgrEPNS_22PinnedIteratorsManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb20InternalIteratorBaseINS_10IndexValueEE11IsKeyPinnedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb20InternalIteratorBaseINS_10IndexValueEE13IsValuePinnedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE11GetPropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @.str.3, ptr %4, align 8, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr @.str.3, ptr %5, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !122
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE17GetReadaheadStateEPNS_17ReadaheadFileInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE17SetReadaheadStateEPNS_17ReadaheadFileInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb20InternalIteratorBaseINS_10IndexValueEE24IsDeleteRangeSentinelKeyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20InternalIteratorBaseINS_10IndexValueEE7PrepareEPKNS_13MultiScanArgsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !170
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !95   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !170
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !87
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !171

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87
  store i8 %i.v, ptr %i.t, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !87
  store i8 %i.w, ptr %i.m, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !86
  %i.x = load ptr, ptr %0, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !87
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !87
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #29
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !96

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87
  store i8 %i.u, ptr %i.s, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !87
  store i8 %i.y, ptr %i.x, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !99    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !87
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !99
  store i64 %.0, ptr %i.h, align 8, !tbaa !87
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #9

declare void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #21
end_hunk_1
begin_hunk_2_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { cold }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !100}
!1 = distinct !{null}
!2 = distinct !{!2, !100}
!3 = distinct !{!3, !100}
!4 = distinct !{!4, !100}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 4}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTSN7rocksdb11BlockHandleE", !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!19, !18, i64 16}
!21 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{!"p1 _ZTSSt5tupleIJmmEE", !17, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJmmEESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!27 = !{!26, !24, i64 16}
!28 = !{!"p1 _ZTSN7rocksdb9Cleanable7CleanupE", !17, i64 0}
!29 = !{!"_ZTSN7rocksdb9Cleanable7CleanupE", !17, i64 0, !17, i64 8, !17, i64 16, !28, i64 24}
!30 = !{!"_ZTSN7rocksdb9CleanableE", !29, i64 0}
!31 = !{!"_ZTSN7rocksdb20InternalIteratorBaseINS_10IndexValueEEE", !30, i64 8}
!32 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE12_Vector_implE", !19, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIN7rocksdb11BlockHandleESaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !22, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !36, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJmmEESaIS1_EE12_Vector_implE", !26, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseISt5tupleIJmmEESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorISt5tupleIJmmEESaIS1_EE", !39, i64 0}
!41 = !{!"p1 _ZTSN7rocksdb13MultiScanArgsE", !17, i64 0}
!42 = !{!"p1 _ZTSN7rocksdb7ReadSetE", !17, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN7rocksdb7ReadSetELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !44, i64 8}
!46 = !{!"_ZTSSt10shared_ptrIN7rocksdb7ReadSetEE", !45, i64 0}
!47 = !{!"long", !11, i64 0}
!48 = !{!"p1 long", !17, i64 0}
!49 = !{!"_ZTSSt18_Bit_iterator_base", !48, i64 0, !12, i64 8}
!50 = !{!"_ZTSSt13_Bit_iterator", !49, i64 0}
!51 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !50, i64 0, !50, i64 16, !48, i64 32}
!52 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !51, i64 0}
!53 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIbSaIbEE", !53, i64 0}
!55 = !{!"p1 _ZTSN7rocksdb21InternalKeyComparatorE", !17, i64 0}
!56 = !{!"p1 _ZTSN7rocksdb10ComparatorE", !17, i64 0}
!57 = !{!"_ZTSN7rocksdb21UserComparatorWrapperE", !56, i64 0}
!58 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !17, i64 0}
!59 = !{!"bool", !11, i64 0}
!60 = !{!"_ZTSN7rocksdb6Status4CodeE", !11, i64 0}
!61 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !11, i64 0}
!62 = !{!"_ZTSN7rocksdb6Status8SeverityE", !11, i64 0}
!63 = !{!"p1 omnipotent char", !17, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !63, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !68, i64 0}
!70 = !{!"_ZTSN7rocksdb6StatusE", !60, i64 0, !61, i64 1, !62, i64 2, !59, i64 3, !59, i64 4, !11, i64 5, !69, i64 8}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !63, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !47, i64 8, !11, i64 16}
!73 = !{!"_ZTSN7rocksdb22MultiScanIndexIteratorE", !31, i64 0, !34, i64 40, !37, i64 64, !40, i64 88, !41, i64 112, !46, i64 120, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !54, i64 168, !47, i64 208, !55, i64 216, !57, i64 224, !58, i64 232, !47, i64 240, !47, i64 248, !47, i64 256, !59, i64 264, !70, i64 272, !72, i64 288, !47, i64 320, !59, i64 328, !72, i64 336}
!74 = !{!73, !41, i64 112}
!75 = !{!44, !43, i64 0}
!76 = !{!45, !42, i64 0}
!77 = !{!73, !47, i64 136}
!78 = !{!73, !47, i64 152}
!79 = !{!73, !47, i64 160}
!80 = !{!49, !48, i64 0}
!81 = !{!51, !48, i64 32}
!82 = !{!73, !47, i64 208}
!83 = !{!57, !56, i64 0}
!84 = !{!73, !58, i64 232}
!85 = !{!71, !63, i64 0}
!86 = !{!72, !47, i64 8}
!87 = !{!11, !11, i64 0}
!88 = !{!73, !47, i64 320}
!89 = !{!73, !59, i64 328}
!90 = !{!26, !24, i64 0}
!91 = !{!19, !18, i64 0}
!92 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 8, !12, i64 12}
!93 = !{!92, !12, i64 8}
!94 = !{!92, !12, i64 12}
!95 = !{!12, !12, i64 0}
!96 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!97 = !{!22, !21, i64 0}
!98 = !{!22, !21, i64 8}
!99 = !{!72, !63, i64 0}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"_ZTSN7rocksdb9PerfLevelE", !11, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSN7rocksdb15PerfContextBaseE", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !47, i64 200, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !47, i64 240, !47, i64 248, !47, i64 256, !47, i64 264, !47, i64 272, !47, i64 280, !47, i64 288, !47, i64 296, !47, i64 304, !47, i64 312, !47, i64 320, !47, i64 328, !47, i64 336, !47, i64 344, !47, i64 352, !47, i64 360, !47, i64 368, !47, i64 376, !47, i64 384, !47, i64 392, !47, i64 400, !47, i64 408, !47, i64 416, !47, i64 424, !47, i64 432, !47, i64 440, !47, i64 448, !47, i64 456, !47, i64 464, !47, i64 472, !47, i64 480, !47, i64 488, !47, i64 496, !47, i64 504, !47, i64 512, !47, i64 520, !47, i64 528, !47, i64 536, !47, i64 544, !47, i64 552, !47, i64 560, !47, i64 568, !47, i64 576, !47, i64 584, !47, i64 592, !47, i64 600, !47, i64 608, !47, i64 616, !47, i64 624, !47, i64 632, !47, i64 640, !47, i64 648, !47, i64 656, !47, i64 664, !47, i64 672, !47, i64 680, !47, i64 688, !47, i64 696, !47, i64 704, !47, i64 712, !47, i64 720, !47, i64 728, !47, i64 736, !47, i64 744, !47, i64 752, !47, i64 760, !47, i64 768, !47, i64 776, !47, i64 784, !47, i64 792, !47, i64 800, !47, i64 808, !47, i64 816, !47, i64 824, !47, i64 832, !47, i64 840, !47, i64 848, !47, i64 856, !47, i64 864, !47, i64 872, !47, i64 880, !47, i64 888, !47, i64 896, !47, i64 904, !47, i64 912, !47, i64 920, !47, i64 928, !47, i64 936, !47, i64 944, !47, i64 952}
!104 = !{!63, !63, i64 0}
!105 = !{i8 0, i8 2}
!106 = !{!47, !47, i64 0}
!107 = !{!73, !47, i64 240}
!108 = !{!70, !60, i64 0}
!109 = !{!"p1 _ZTSN7rocksdb12IODispatcherE", !17, i64 0}
!110 = !{!"_ZTSSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0, !44, i64 8}
!111 = !{!"_ZTSSt10shared_ptrIN7rocksdb12IODispatcherEE", !110, i64 0}
!112 = !{!"p1 _ZTSN7rocksdb11ScanOptionsE", !17, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE12_Vector_implE", !113, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIN7rocksdb11ScanOptionsESaIS1_EE", !114, i64 0}
!116 = !{!"_ZTSSt6vectorIN7rocksdb11ScanOptionsESaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSN7rocksdb13MultiScanArgsE", !47, i64 0, !47, i64 8, !59, i64 16, !59, i64 17, !111, i64 24, !56, i64 40, !116, i64 48}
!118 = !{!117, !59, i64 17}
!119 = !{}
!120 = !{!"_ZTSN7rocksdb5SliceE", !63, i64 0, !47, i64 8}
!121 = !{!120, !63, i64 0}
!122 = !{!120, !47, i64 8}
!123 = !{!59, !59, i64 0}
!124 = !{!70, !59, i64 4}
!125 = !{!70, !11, i64 5}
!126 = !{!73, !59, i64 264}
!127 = !{!113, !112, i64 8}
!128 = !{!113, !112, i64 0}
!129 = !{!103, !47, i64 0}
!130 = !{!26, !24, i64 8}
!131 = !{!73, !47, i64 248}
!132 = !{!19, !18, i64 8}
!133 = !{!117, !47, i64 8}
!134 = !{!70, !61, i64 1}
!135 = !{!73, !47, i64 256}
!136 = !{!18, !18, i64 0}
!137 = !{!21, !21, i64 0}
!138 = !{!17, !17, i64 0}
!139 = !{!73, !47, i64 144}
!140 = !{!49, !12, i64 8}
!141 = !{!55, !55, i64 0}
!142 = !{!64, !63, i64 0}
!143 = distinct !{null, null}
!144 = distinct !{!144, !100}
!145 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb7ReadSetELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!146 = !{!103, !47, i64 928}
!147 = !{!103, !47, i64 920}
!148 = !{!103, !47, i64 936}
!149 = !{!103, !47, i64 944}
!150 = !{!103, !47, i64 952}
!151 = distinct !{!151, !100}
!152 = distinct !{null, null}
!153 = !{!73, !55, i64 216}
!154 = !{i64 8}
!155 = distinct !{!155, !100}
!156 = distinct !{!156, !100}
!157 = distinct !{!157, !100}
!158 = distinct !{!158, !100}
!159 = distinct !{!159, !100}
!160 = distinct !{!160, !100}
!161 = !{!"_ZTSN7rocksdb9ValueTypeE", !11, i64 0}
!162 = !{!161, !161, i64 0}
!163 = !{!"_ZTSN7rocksdb17ParsedInternalKeyE", !120, i64 0, !47, i64 16, !161, i64 24}
!164 = !{!163, !47, i64 16}
!165 = !{!163, !161, i64 24}
!166 = !{!"_ZTSN7rocksdb14IterBoundCheckE", !11, i64 0}
!167 = !{!"_ZTSN7rocksdb13IterateResultE", !120, i64 0, !166, i64 16, !59, i64 17}
!168 = !{!167, !166, i64 16}
!169 = !{!167, !59, i64 17}
!170 = distinct !{null}
!171 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
