Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_edit?download=true
inline.NumInlined: 2265
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb11VersionEdit20EncodeFileBoundariesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12FileMetaDataEm:bb.a
  store i64 %i.aa, ptr %i.ab, align 8
  invoke void @_ZN7rocksdb29StripTimestampFromInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ac = load ptr, ptr %5, align 8, !tbaa !24
  store ptr %i.ac, ptr %9, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !67
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !64
  invoke void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.af = load ptr, ptr %6, align 8, !tbaa !24
  store ptr %i.af, ptr %10, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !67
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !64
  invoke void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ai = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !25
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.am = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.o
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.b
  ret void

bb.i:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.as, %bb.k ], [ %i.ar, %bb.j ], [ %i.aq, %bb.i ]
  %i.au = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.m
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ay = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.o
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN7rocksdb19EncodeUniqueIdBytesB5cxx11ENS_11UniqueIdPtrE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb11VersionEdit8GetLevelEPNS_5SliceEPiRi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !207
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !25    ; 2 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.h = zext nneg i8 %i.f to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.j = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.b, ptr noundef %i.e, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pre = load i32, ptr %i.a, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.k = phi i32 [ %i.h, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ], [ %.pre, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge ] ; 3 uses
  %.1.i14.i = phi ptr [ %i.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ], [ %i.j, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge ] ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %.1.i14.i to i64
  %i.n = sub i64 %i.l, %i.m
  store ptr %.1.i14.i, ptr %0, align 8, !tbaa !40
  store i64 %i.n, ptr %i.c, align 8, !tbaa !41
  store i32 %i.k, ptr %1, align 4, !tbaa !207
  %i.o = load i32, ptr %2, align 4, !tbaa !207
  %i.p = icmp slt i32 %i.o, %i.k
  br i1 %i.p, label %bb.d, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.d:                                             ; preds = %bb.c
  store i32 %i.k, ptr %2, align 4, !tbaa !207
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, %bb.c, %bb.d
  %i.q = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb11VersionEdit18DecodeNewFile4FromEPNS_5SliceERiRmRbRSt6vectorISt4pairIiNS_12FileMetaDataEESaIS9_EERS8_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(417) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 0, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 0, ptr %i.e, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 0, ptr %i.f, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !207
  %i.i = load ptr, ptr %0, align 8, !tbaa !39     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.i, align 1, !tbaa !25    ; 2 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.b
  %i.o = zext nneg i8 %i.m to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.b, %bb.a
  %i.q = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.i, ptr noundef %i.l, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i.i = icmp eq ptr %i.q, null
  br i1 %.not15.i.i, label %_ZN7rocksdb11VersionEdit8GetLevelEPNS_5SliceEPiRi.exit, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.r = phi i32 [ %i.o, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %.pre.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 3 uses
  %i.s = phi ptr [ %i.p, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %i.q, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 4 uses
  %i.t = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !40
  store i64 %i.v, ptr %i.j, align 8, !tbaa !41
  store i32 %i.r, ptr %i.c, align 4, !tbaa !207
  %i.w = load i32, ptr %1, align 4, !tbaa !207
  %i.x = icmp slt i32 %i.w, %i.r
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.r, ptr %1, align 4, !tbaa !207
  br label %bb.e

_ZN7rocksdb11VersionEdit8GetLevelEPNS_5SliceEPiRi.exit: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.z = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.s, ptr noundef nonnull %i.y, ptr noundef nonnull %i.d) ; 5 uses
  %.not104 = icmp eq ptr %i.z, null
  br i1 %.not104, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.t, %i.aa                     ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !40
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.e) ; 3 uses
  %.not105 = icmp eq ptr %i.ad, null
  br i1 %.not105, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.t, %i.ae
  store ptr %i.ad, ptr %0, align 8, !tbaa !40
  store i64 %i.af, ptr %i.j, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ah = call fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %0, ptr noundef %i.ag)
  br i1 %i.ah, label %bb.h, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.aj = call fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %0, ptr noundef %i.ai)
  br i1 %i.aj, label %bb.i, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.al = load i64, ptr %i.j, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef nonnull %i.f) ; 5 uses
  %.not106 = icmp eq ptr %i.an, null
  br i1 %.not106, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !40
  store i64 %i.aq, ptr %i.j, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.g) ; 4 uses
  %.not107 = icmp eq ptr %i.as, null
  br i1 %.not107, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56:    ; preds = %bb.j
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ao, %i.at                    ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !40
  store i64 %i.au, ptr %i.j, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 191
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 190
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 200
  br label %bb.k

bb.k:                                             ; preds = %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56
  %i.bs = phi i64 [ %i.au, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56 ], [ %.pre123, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit ] ; 2 uses
  %i.bt = phi ptr [ %i.as, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56 ], [ %.pre, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit ] ; 4 uses
  %.042 = phi i32 [ 0, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit56 ], [ %.1, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i32 0, ptr %i.h, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @.str, ptr %6, align 8, !tbaa !39
  store i64 0, ptr %i.av, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs ; 3 uses
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !25  ; 2 uses
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.l
  %i.bx = zext nneg i8 %i.bv to i32               ; 2 uses
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !207
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  br label %bb.m

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.l, %bb.k
  %i.bz = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %i.h) ; 2 uses
  %.not15.i = icmp eq ptr %i.bz, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.h, align 4, !tbaa !207
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ca = phi i32 [ %.pr, %thread-pre-split ], [ %i.bx, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ]
  %i.cb = phi ptr [ %i.bz, %thread-pre-split ], [ %i.by, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  %i.cc = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !40
  store i64 %i.ce, ptr %i.j, align 8, !tbaa !41
  %i.cf = icmp eq i32 %i.ca, 1
  br i1 %i.cf, label %_ZN7rocksdb14FileDescriptoraSERKS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !207
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %.not.i.i57 = icmp eq ptr %i.bu, %i.cb
  br i1 %.not.i.i57, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !25  ; 2 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i63, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i58

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i63: ; preds = %bb.o
  %i.cj = zext nneg i8 %i.ch to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  br label %bb.p

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i58:  ; preds = %bb.o, %bb.n
  %i.cl = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i.i59 = icmp eq ptr %i.cl, null
  br i1 %.not15.i.i59, label %_ZN7rocksdb22GetLengthPrefixedSliceEPNS_5SliceES1_.exit.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i60

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i60: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i58
  %.pre.i61 = load i32, ptr %i.a, align 4, !tbaa !207
  br label %bb.p

bb.p:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i60, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i63
  %i.cm = phi i32 [ %i.cj, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i63 ], [ %.pre.i61, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i60 ] ; 6 uses
  %i.cn = phi ptr [ %i.ck, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i63 ], [ %i.cl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i60 ] ; 16 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.cc, %i.co                    ; 3 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !40
  store i64 %i.cp, ptr %i.j, align 8, !tbaa !41
  %i.cq = zext i32 %i.cm to i64                   ; 5 uses
  %.not.i62 = icmp ult i64 %i.cp, %i.cq
  br i1 %.not.i62, label %_ZN7rocksdb22GetLengthPrefixedSliceEPNS_5SliceES1_.exit.thread, label %bb.q

_ZN7rocksdb22GetLengthPrefixedSliceEPNS_5SliceES1_.exit.thread: ; preds = %bb.p, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95

bb.q:                                             ; preds = %bb.p
  store ptr %i.cn, ptr %6, align 8, !tbaa !40
  store i64 %i.cq, ptr %i.av, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq ; 10 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !39
  %i.cs = sub nuw i64 %i.cp, %i.cq
  store i64 %i.cs, ptr %i.j, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ct = load i32, ptr %i.h, align 4, !tbaa !207 ; 2 uses
  switch i32 %i.ct, label %bb.ar [
    i32 65, label %bb.r
    i32 5, label %bb.t
    i32 6, label %bb.u
    i32 13, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.aa
    i32 4, label %bb.ac
    i32 9, label %bb.ad
    i32 12, label %bb.ag
    i32 14, label %bb.ak
    i32 15, label %bb.al
    i32 16, label %bb.am
    i32 10, label %bb.ao
    i32 11, label %bb.ap
    i32 17, label %bb.aq
  ]

bb.r:                                             ; preds = %bb.q
  %.not52 = icmp eq i32 %i.cm, 1
  br i1 %.not52, label %bb.s, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95

bb.s:                                             ; preds = %bb.r
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !25  ; 2 uses
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = icmp ugt i8 %i.cu, 3
  br i1 %i.cw, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.t:                                             ; preds = %bb.q
  %i.cx = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.br) ; 2 uses
  %.not113 = icmp eq ptr %i.cx, null
  br i1 %.not113, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit64.thread

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit64.thread: ; preds = %bb.t
  store ptr %i.cx, ptr %6, align 8, !tbaa !40
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.u:                                             ; preds = %bb.q
  %i.cy = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.bq) ; 2 uses
  %.not112 = icmp eq ptr %i.cy, null
  br i1 %.not112, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit65.thread

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit65.thread: ; preds = %bb.u
  store ptr %i.cy, ptr %6, align 8, !tbaa !40
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.v:                                             ; preds = %bb.q
  %i.cz = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.bp) ; 2 uses
  %.not111 = icmp eq ptr %i.cz, null
  br i1 %.not111, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit66.thread

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit66.thread: ; preds = %bb.v
  store ptr %i.cz, ptr %6, align 8, !tbaa !40
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
  %i.da = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %7) #30 ; 0 uses
  %i.db = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bo
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.dd = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
  %i.df = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %8) #30 ; 0 uses
  %i.dg = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bm
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.x
  %i.di = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.y:                                             ; preds = %bb.q
  %.not51 = icmp eq i32 %i.cm, 1
  br i1 %.not51, label %bb.z, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95

bb.z:                                             ; preds = %bb.y
  %i.dk = load i8, ptr %i.cn, align 1, !tbaa !25
  %i.dl = icmp eq i8 %i.dk, 1
  %i.dm = zext i1 %i.dl to i8
  store i8 %i.dm, ptr %i.bk, align 2, !tbaa !199
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.aa:                                            ; preds = %bb.q
  %i.dn = icmp ugt i32 %i.cm, 7
  br i1 %i.dn, label %bb.ab, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95

bb.ab:                                            ; preds = %bb.aa
  %.0.copyload.i.i = load i64, ptr %i.cn, align 1
  store i64 %.0.copyload.i.i, ptr %2, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.do, ptr %6, align 8, !tbaa !39
  %i.dp = add nsw i64 %i.cq, -8
  store i64 %i.dp, ptr %i.av, align 8, !tbaa !64
  store i8 1, ptr %3, align 1, !tbaa !181
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.ac:                                            ; preds = %bb.q
  %i.dq = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.bj) ; 3 uses
  %.not110 = icmp eq ptr %i.dq, null
  br i1 %.not110, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit70.thread

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit70.thread: ; preds = %bb.ac
  %i.dr = ptrtoint ptr %i.cr to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  store ptr %i.dq, ptr %6, align 8, !tbaa !40
  store i64 %i.dt, ptr %i.av, align 8, !tbaa !41
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.ad:                                            ; preds = %bb.q
  %.not50 = icmp eq i32 %i.cm, 1
  br i1 %.not50, label %bb.ae, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i8, ptr %i.cn, align 1, !tbaa !25  ; 2 uses
  %i.dv = icmp ult i8 %i.du, 17
  br i1 %i.dv, label %bb.af, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.af:                                            ; preds = %bb.ae
  store i8 %i.du, ptr %i.bi, align 1, !tbaa !198
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit

bb.ag:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
  invoke void @_ZN7rocksdb19DecodeUniqueIdBytesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11UniqueIdPtrE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull %i.bf, i8 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load i8, ptr %9, align 8, !tbaa !53
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = load ptr, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i71, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.dy) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.ah, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.dz = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bh
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.eb = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %i.dx, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit.thread95
end_hunk_0
begin_hunk_1_@_ZN7rocksdb11VersionEdit10DecodeFromERKNS_5SliceE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(417) %5, i8 0, i64 32, i1 false)
  store i64 72057594037927935, ptr %i.bi, align 8, !tbaa !208
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !209
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bm, align 8, !tbaa !67
  store i8 0, ptr %i.bl, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.bp, align 8, !tbaa !67
  store i8 0, ptr %i.bo, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i8 0, i64 112, i1 false)
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 0, ptr %i.bt, align 8, !tbaa !67
  store i8 0, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bv, ptr noundef nonnull align 1 dereferenceable(7) @_ZN7rocksdbL28kUnknownFileChecksumFuncNameE, i64 7, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i64 7, ptr %i.bw, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 279
  store i8 0, ptr %i.bx, align 1, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.bz, align 8, !tbaa !202
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 320
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 336 ; 2 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !70
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i64 0, ptr %i.cc, align 8, !tbaa !67
  store i8 0, ptr %i.cb, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 368 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 360
  store i64 0, ptr %i.cf, align 8, !tbaa !67
  store i8 0, ptr %i.ce, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 400 ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !70
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 392
  store i64 0, ptr %i.ci, align 8, !tbaa !67
  store i8 0, ptr %i.ch, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 416
  store i8 0, ptr %i.cj, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @.str, ptr %6, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cl, ptr %7, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !67
  store i8 0, ptr %i.cl, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 50 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 7344
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7336
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %27, i64 3448
  %i.cv = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %27, i64 3456
  %i.cx = getelementptr inbounds nuw i8, ptr %27, i64 6896
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 3504
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 6904
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 393
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %27, i64 3480
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 3880
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 3896
  %i.di = getelementptr inbounds nuw i8, ptr %27, i64 3496
  %i.dj = getelementptr inbounds nuw i8, ptr %27, i64 6928
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 7328
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 317
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 11 uses
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 11 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 224
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 240 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 232
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 272 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 264
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 279
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 288
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 312
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 320
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 336 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 328
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 352
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 368 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 360
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 384
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 400 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 392
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 416
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 11 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb11VersionEdit5ClearEv.exit, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  %i.hm = load ptr, ptr %4, align 8, !tbaa !39    ; 4 uses
  %i.hn = load i64, ptr %i.cn, align 8, !tbaa !64 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn ; 21 uses
  %.not.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hp = load i8, ptr %i.hm, align 1, !tbaa !25  ; 2 uses
  %i.hq = icmp sgt i8 %i.hp, -1
  br i1 %i.hq, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.d
  %i.hr = zext nneg i8 %i.hp to i32               ; 2 uses
  store i32 %i.hr, ptr %i.o, align 4, !tbaa !207
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  br label %bb.e

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.d, %bb.c
  %i.ht = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.hm, ptr noundef %i.ho, ptr noundef nonnull %i.o)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.not15.i = icmp eq ptr %i.ht, null
  br i1 %.not15.i, label %.critedge, label %thread-pre-split

thread-pre-split:                                 ; preds = %.noexc
  %.pr = load i32, ptr %i.o, align 4, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.hu = phi i32 [ %.pr, %thread-pre-split ], [ %i.hr, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 2 uses
  %i.hv = phi ptr [ %i.ht, %thread-pre-split ], [ %i.hs, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 102 uses
  %i.hw = ptrtoint ptr %i.ho to i64               ; 32 uses
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx                    ; 24 uses
  store ptr %i.hv, ptr %4, align 8, !tbaa !40
  store i64 %i.hy, ptr %i.cn, align 8, !tbaa !41
  switch i32 %i.hu, label %bb.hu [
    i32 8193, label %bb.g
    i32 1, label %bb.r
    i32 2, label %bb.ac
    i32 9, label %bb.ae
    i32 3, label %bb.ag
    i32 203, label %bb.ai
    i32 10, label %bb.al
    i32 4, label %bb.an
    i32 5, label %bb.ap
    i32 6, label %bb.bg
    i32 7, label %bb.bq
    i32 100, label %bb.ch
    i32 102, label %bb.da
    i32 103, label %bb.dv
    i32 400, label %bb.dy
    i32 8194, label %bb.dy
    i32 401, label %bb.eg
    i32 8195, label %bb.eg
    i32 8196, label %bb.ep
    i32 8199, label %bb.ey
    i32 8197, label %bb.fn
    i32 8200, label %bb.fq
    i32 200, label %bb.ga
    i32 201, label %bb.gd
    i32 202, label %bb.go
    i32 300, label %bb.gp
    i32 8198, label %bb.gs
    i32 8201, label %bb.gx
    i32 8202, label %bb.hc
    i32 8203, label %bb.ho
  ]

bb.f:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i425, %bb.gw, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i413, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i406, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i384, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i377, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i197, %bb.an, %bb.al, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i186, %bb.ag, %bb.ae, %bb.ac, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i159, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, %bb.au
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i32 0, ptr %i.n, align 4, !tbaa !207
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.ic = icmp sgt i8 %i.ib, -1
  br i1 %i.ic, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.h
  %i.id = zext nneg i8 %i.ib to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.h, %bb.g
  %i.if = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.n)
          to label %.noexc155 unwind label %bb.f  ; 2 uses

.noexc155:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.not15.i.i = icmp eq ptr %i.if, null
  br i1 %.not15.i.i, label %.thread, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i: ; preds = %.noexc155
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !207
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.ig = phi i32 [ %i.id, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %.pre.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ]
  %i.ih = phi ptr [ %i.ie, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %i.if, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 4 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %i.hw, %i.ii                    ; 3 uses
  store ptr %i.ih, ptr %4, align 8, !tbaa !40
  store i64 %i.ij, ptr %i.cn, align 8, !tbaa !41
  %i.ik = zext i32 %i.ig to i64                   ; 4 uses
  %.not.i154 = icmp ult i64 %i.ij, %i.ik
  br i1 %.not.i154, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i, %.noexc155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.ih, ptr %6, align 8, !tbaa !40
  store i64 %i.ik, ptr %i.ck, align 8, !tbaa !41
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik
  store ptr %i.il, ptr %4, align 8, !tbaa !39
  %i.im = sub nuw i64 %i.ij, %i.ik
  store i64 %i.im, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.in = load ptr, ptr %i.hg, align 8, !tbaa !24 ; 6 uses
  %i.io = icmp eq ptr %i.in, %i.hh
  %i.ip = load ptr, ptr %8, align 8, !tbaa !24    ; 5 uses
  %i.iq = icmp eq ptr %i.ip, %i.hi                ; 2 uses
  br i1 %i.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.k
  br i1 %i.iq, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.k
  br i1 %i.iq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ir = load i64, ptr %i.hj, align 8, !tbaa !67 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  switch i64 %i.ir, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !25
  store i8 %i.it, ptr %i.in, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.in, ptr align 1 %i.ip, i64 %i.ir, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.iu = load i64, ptr %i.hj, align 8, !tbaa !67 ; 2 uses
  store i64 %i.iu, ptr %i.hk, align 8, !tbaa !67
  %i.iv = load ptr, ptr %i.hg, align 8, !tbaa !24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu
  store i8 0, ptr %i.iw, align 1, !tbaa !25
  %.pre.i157 = load ptr, ptr %8, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ip, ptr %i.hg, align 8, !tbaa !24
  %i.ix = load <2 x i64>, ptr %i.hj, align 8, !tbaa !25
  store <2 x i64> %i.ix, ptr %i.hk, align 8, !tbaa !25
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.iy = load i64, ptr %i.hh, align 8, !tbaa !25
  store ptr %i.ip, ptr %i.hg, align 8, !tbaa !24
  %i.iz = load <2 x i64>, ptr %i.hj, align 8, !tbaa !25
  store <2 x i64> %i.iz, ptr %i.hk, align 8, !tbaa !25
  %.not.i156 = icmp eq ptr %i.in, null
  br i1 %.not.i156, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.in, ptr %8, align 8, !tbaa !24
  store i64 %i.iy, ptr %i.hi, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hi, ptr %8, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.ja = phi ptr [ %.pre.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.in, %bb.o ], [ %i.hi, %bb.p ]
  store i64 0, ptr %i.hj, align 8, !tbaa !67
  store i8 0, ptr %i.ja, align 1, !tbaa !25
  %i.jb = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.hi
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jd = load i64, ptr %i.hi, align 8, !tbaa !25
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  store i8 1, ptr %i.hl, align 8, !tbaa !162
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.q:                                             ; preds = %bb.j
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  store i32 0, ptr %i.m, align 4, !tbaa !207
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i158 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i158, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i159, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jh = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.ji = icmp sgt i8 %i.jh, -1
  br i1 %i.ji, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i166, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i159

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i166: ; preds = %bb.s
  %i.jj = zext nneg i8 %i.jh to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.t

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i159: ; preds = %bb.s, %bb.r
  %i.jl = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.m)
          to label %.noexc167 unwind label %bb.f  ; 2 uses

.noexc167:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i159
  %.not15.i.i160 = icmp eq ptr %i.jl, null
  br i1 %.not15.i.i160, label %.thread517, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i161

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i161: ; preds = %.noexc167
  %.pre.i162 = load i32, ptr %i.m, align 4, !tbaa !207
  br label %bb.t

bb.t:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i161, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i166
  %i.jm = phi i32 [ %i.jj, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i166 ], [ %.pre.i162, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i161 ]
  %i.jn = phi ptr [ %i.jk, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i166 ], [ %i.jl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i161 ] ; 4 uses
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.hw, %i.jo                    ; 3 uses
  store ptr %i.jn, ptr %4, align 8, !tbaa !40
  store i64 %i.jp, ptr %i.cn, align 8, !tbaa !41
  %i.jq = zext i32 %i.jm to i64                   ; 4 uses
  %.not.i163 = icmp ult i64 %i.jp, %i.jq
  br i1 %.not.i163, label %.thread517, label %bb.u

.thread517:                                       ; preds = %bb.t, %.noexc167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.jn, ptr %6, align 8, !tbaa !40
  store i64 %i.jq, ptr %i.ck, align 8, !tbaa !41
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq
  store ptr %i.jr, ptr %4, align 8, !tbaa !39
  %i.js = sub nuw i64 %i.jp, %i.jq
  store i64 %i.js, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.jt = load ptr, ptr %i.ha, align 8, !tbaa !24 ; 6 uses
  %i.ju = icmp eq ptr %i.jt, %i.hb
  %i.jv = load ptr, ptr %9, align 8, !tbaa !24    ; 5 uses
  %i.jw = icmp eq ptr %i.jv, %i.hc                ; 2 uses
  br i1 %i.ju, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i174: ; preds = %bb.v
  br i1 %i.jw, label %bb.w, label %.thread.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i169: ; preds = %bb.v
  br i1 %i.jw, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i170

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i174
  %i.jx = load i64, ptr %i.hd, align 8, !tbaa !67 ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  switch i64 %i.jx, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !25
  store i8 %i.jz, ptr %i.jt, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.jv, i64 %i.jx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172: ; preds = %bb.y, %bb.x, %bb.w
  %i.ka = load i64, ptr %i.hd, align 8, !tbaa !67 ; 2 uses
  store i64 %i.ka, ptr %i.he, align 8, !tbaa !67
  %i.kb = load ptr, ptr %i.ha, align 8, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka
  store i8 0, ptr %i.kc, align 1, !tbaa !25
  %.pre.i173 = load ptr, ptr %9, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176

.thread.i175:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i174
  store ptr %i.jv, ptr %i.ha, align 8, !tbaa !24
  %i.kd = load <2 x i64>, ptr %i.hd, align 8, !tbaa !25
  store <2 x i64> %i.kd, ptr %i.he, align 8, !tbaa !25
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i170: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i169
  %i.ke = load i64, ptr %i.hb, align 8, !tbaa !25
  store ptr %i.jv, ptr %i.ha, align 8, !tbaa !24
  %i.kf = load <2 x i64>, ptr %i.hd, align 8, !tbaa !25
  store <2 x i64> %i.kf, ptr %i.he, align 8, !tbaa !25
  %.not.i171 = icmp eq ptr %i.jt, null
  br i1 %.not.i171, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i170
  store ptr %i.jt, ptr %9, align 8, !tbaa !24
  store i64 %i.ke, ptr %i.hc, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i170, %.thread.i175
  store ptr %i.hc, ptr %9, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172, %bb.z, %bb.aa
  %i.kg = phi ptr [ %.pre.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i172 ], [ %i.jt, %bb.z ], [ %i.hc, %bb.aa ]
  store i64 0, ptr %i.hd, align 8, !tbaa !67
  store i8 0, ptr %i.kg, align 1, !tbaa !25
  %i.kh = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.hc
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176
  %i.kj = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  store i8 1, ptr %i.hf, align 1, !tbaa !163
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ab:                                            ; preds = %bb.u
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ac:                                            ; preds = %bb.e
  %i.km = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.kn = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.km, ptr noundef nonnull %i.gy)
          to label %.noexc180 unwind label %bb.f  ; 3 uses

.noexc180:                                        ; preds = %bb.ac
  %.not599 = icmp eq ptr %i.kn, null
  br i1 %.not599, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.ad

bb.ad:                                            ; preds = %.noexc180
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = sub i64 %i.hw, %i.ko
  store ptr %i.kn, ptr %4, align 8, !tbaa !40
  store i64 %i.kp, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.gz, align 2, !tbaa !154
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ae:                                            ; preds = %bb.e
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.kr = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.gw)
          to label %.noexc181 unwind label %bb.f  ; 3 uses

.noexc181:                                        ; preds = %bb.ae
  %.not598 = icmp eq ptr %i.kr, null
  br i1 %.not598, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.af

bb.af:                                            ; preds = %.noexc181
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = sub i64 %i.hw, %i.ks
  store ptr %i.kr, ptr %4, align 8, !tbaa !40
  store i64 %i.kt, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.gx, align 1, !tbaa !165
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ag:                                            ; preds = %bb.e
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.kv = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.gu)
          to label %.noexc183 unwind label %bb.f  ; 3 uses

.noexc183:                                        ; preds = %bb.ag
  %.not597 = icmp eq ptr %i.kv, null
  br i1 %.not597, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc183
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.hw, %i.kw
  store ptr %i.kv, ptr %4, align 8, !tbaa !40
  store i64 %i.kx, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.gv, align 4, !tbaa !167
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ai:                                            ; preds = %bb.e
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i185 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i185, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i186, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kz = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.la = icmp sgt i8 %i.kz, -1
  br i1 %i.la, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i189, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i186

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i189: ; preds = %bb.aj
  %i.lb = zext nneg i8 %i.kz to i32
  store i32 %i.lb, ptr %i.gs, align 8, !tbaa !207
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.ak

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i186:   ; preds = %bb.aj, %bb.ai
  %i.ld = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.ky, ptr noundef nonnull %i.gs)
          to label %.noexc190 unwind label %bb.f  ; 2 uses

.noexc190:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i186
  %.not15.i187 = icmp eq ptr %i.ld, null
  br i1 %.not15.i187, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i189, %.noexc190
  %.1.i14.i188 = phi ptr [ %i.lc, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i189 ], [ %i.ld, %.noexc190 ] ; 2 uses
  %i.le = ptrtoint ptr %.1.i14.i188 to i64
  %i.lf = sub i64 %i.hw, %i.le
  store ptr %.1.i14.i188, ptr %4, align 8, !tbaa !40
  store i64 %i.lf, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.gt, align 1, !tbaa !169
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.al:                                            ; preds = %bb.e
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.lh = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.fz)
          to label %.noexc192 unwind label %bb.f  ; 3 uses

.noexc192:                                        ; preds = %bb.al
  %.not596 = icmp eq ptr %i.lh, null
  br i1 %.not596, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.am

bb.am:                                            ; preds = %.noexc192
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = sub i64 %i.hw, %i.li
  store ptr %i.lh, ptr %4, align 8, !tbaa !40
  store i64 %i.lj, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.ga, align 2, !tbaa !171
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.an:                                            ; preds = %bb.e
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.ll = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.gq)
          to label %.noexc194 unwind label %bb.f  ; 3 uses

.noexc194:                                        ; preds = %bb.an
  %.not595 = icmp eq ptr %i.ll, null
  br i1 %.not595, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.ao

bb.ao:                                            ; preds = %.noexc194
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.hw, %i.lm
  store ptr %i.ll, ptr %4, align 8, !tbaa !40
  store i64 %i.ln, ptr %i.cn, align 8, !tbaa !41
  store i8 1, ptr %i.gr, align 1, !tbaa !173
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ap:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i32 0, ptr %i.l, align 4, !tbaa !207
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i196 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i196, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i197, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lp = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.lq = icmp sgt i8 %i.lp, -1
  br i1 %i.lq, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i201, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i197

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i201: ; preds = %bb.aq
  %i.lr = zext nneg i8 %i.lp to i32
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.ar

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i197: ; preds = %bb.aq, %bb.ap
  %i.lt = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.l)
          to label %.noexc202 unwind label %bb.f  ; 2 uses

.noexc202:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i197
  %.not15.i.i198 = icmp eq ptr %i.lt, null
  br i1 %.not15.i.i198, label %bb.at, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i199

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i199: ; preds = %.noexc202
  %.pre.i200 = load i32, ptr %i.l, align 4, !tbaa !207
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i199, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i201
  %i.lu = phi i32 [ %i.lr, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i201 ], [ %.pre.i200, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i199 ] ; 3 uses
  %.1.i14.i.i = phi ptr [ %i.ls, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i201 ], [ %i.lt, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i199 ] ; 2 uses
  %i.lv = ptrtoint ptr %.1.i14.i.i to i64
  %i.lw = sub i64 %i.hw, %i.lv
  store ptr %.1.i14.i.i, ptr %4, align 8, !tbaa !40
  store i64 %i.lw, ptr %i.cn, align 8, !tbaa !41
  %i.lx = load i32, ptr %1, align 8, !tbaa !207
  %i.ly = icmp slt i32 %i.lx, %i.lu
  br i1 %i.ly, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  store i32 %i.lu, ptr %1, align 8, !tbaa !207
  br label %bb.au

bb.at:                                            ; preds = %.noexc202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %i.lz = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %7)
          to label %bb.av unwind label %bb.f

bb.av:                                            ; preds = %bb.au
  br i1 %i.lz, label %bb.aw, label %_ZN7rocksdb5SliceC2EPKc.exit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  store i32 %i.lu, ptr %10, align 8, !tbaa !180, !alias.scope !293
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !70, !alias.scope !293
  %i.ma = load ptr, ptr %7, align 8, !tbaa !24, !noalias !293 ; 2 uses
  %i.mb = load i64, ptr %i.cm, align 8, !tbaa !67, !noalias !293 ; 8 uses
  %i.mc = icmp ugt i64 %i.mb, 15
  br i1 %i.mc, label %bb.ax, label %._crit_edge.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.md = icmp slt i64 %i.mb, 0
  br i1 %i.md, label %.noexc.i.i.i.i, label %bb.ay

.noexc.i.i.i.i:                                   ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.176) #32
          to label %.noexc203 unwind label %.loopexit.split-lp611

.noexc203:                                        ; preds = %.noexc.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.me = add nuw i64 %i.mb, 1                    ; 2 uses
  %i.mf = icmp slt i64 %i.me, 0
  br i1 %i.mf, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !127

.noexc6.i.i.i.i:                                  ; preds = %bb.ay
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc204 unwind label %.loopexit.split-lp611

.noexc204:                                        ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.me) #34
          to label %.noexc205 unwind label %.loopexit610 ; 2 uses

.noexc205:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.mg, ptr %i.gk, align 8, !tbaa !24, !alias.scope !293
  store i64 %i.mb, ptr %i.gl, align 8, !tbaa !25, !alias.scope !293
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc205, %bb.aw
  %i.mh = phi ptr [ %i.mg, %.noexc205 ], [ %i.gl, %bb.aw ] ; 3 uses
  switch i64 %i.mb, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mi = load i8, ptr %i.ma, align 1, !tbaa !25
  store i8 %i.mi, ptr %i.mh, align 1, !tbaa !25
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr align 1 %i.ma, i64 %i.mb, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i.i.i
  store i64 %i.mb, ptr %i.gm, align 8, !tbaa !67, !alias.scope !293
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mb
  store i8 0, ptr %i.mj, align 1, !tbaa !25
  %i.mk = load ptr, ptr %i.gn, align 8, !tbaa !129 ; 6 uses
  %i.ml = load ptr, ptr %i.go, align 8, !tbaa !130
  %.not.i.i206 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not.i.i206, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mm = load i32, ptr %10, align 8, !tbaa !180
  store i32 %i.mm, ptr %i.mk, align 8, !tbaa !180
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 24 ; 3 uses
  store ptr %i.mo, ptr %i.mn, align 8, !tbaa !70
  %i.mp = load ptr, ptr %i.gk, align 8, !tbaa !24 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.gl
  br i1 %i.mq, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.mr = load i64, ptr %i.gm, align 8, !tbaa !67 ; 3 uses
  %i.ms = icmp ult i64 %i.mr, 16
  call void @llvm.assume(i1 %i.ms)
  %i.mt = add nuw nsw i64 %i.mr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mo, ptr noundef nonnull align 8 dereferenceable(1) %i.gl, i64 %i.mt, i1 false)
  br label %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bc
  store ptr %i.mp, ptr %i.mn, align 8, !tbaa !24
  %i.mu = load i64, ptr %i.gl, align 8, !tbaa !25
  store i64 %i.mu, ptr %i.mo, align 8, !tbaa !25
  %.pre749 = load i64, ptr %i.gm, align 8, !tbaa !67
  br label %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.mv = phi i64 [ %.pre749, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.mr, %bb.bd ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !67
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !24
  store i64 0, ptr %i.gm, align 8, !tbaa !67
  %i.mx = load ptr, ptr %i.gn, align 8, !tbaa !129
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  store ptr %i.my, ptr %i.gn, align 8, !tbaa !129
  br label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit

bb.be:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr %i.mk, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit unwind label %bb.bf

_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.be
  %.pre750 = load ptr, ptr %i.gk, align 8, !tbaa !24 ; 2 uses
  %i.mz = icmp eq ptr %.pre750, %i.gl
  br i1 %i.mz, label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit
  %i.na = load i64, ptr %i.gl, align 8, !tbaa !25
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %.pre750, i64 noundef %i.nb) #29
  br label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit

_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit:    ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE9push_backEOS3_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

.loopexit610:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %lpad.loopexit612 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210

.loopexit.split-lp611:                            ; preds = %.noexc.i.i.i.i, %.noexc6.i.i.i.i
  %lpad.loopexit.split-lp613 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210

bb.bf:                                            ; preds = %bb.be
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = load ptr, ptr %i.gk, align 8, !tbaa !24 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.gl
  br i1 %i.ne, label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208: ; preds = %bb.bf
  %i.nf = load i64, ptr %i.gl, align 8, !tbaa !25
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #29
  br label %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210

_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210: ; preds = %bb.bf, %.loopexit610, %.loopexit.split-lp611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208
  %.pn128 = phi { ptr, i32 } [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i208 ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp611 ], [ %lpad.loopexit612, %.loopexit610 ], [ %i.nc, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.bg:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  store i64 0, ptr %i.p, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i32 0, ptr %i.k, align 4, !tbaa !207
  %i.nh = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i211 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i211, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i212, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ni = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.nj = icmp sgt i8 %i.ni, -1
  br i1 %i.nj, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i217, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i212

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i217: ; preds = %bb.bh
  %i.nk = zext nneg i8 %i.ni to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.bi

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i212: ; preds = %bb.bh, %bb.bg
  %i.nm = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.nh, ptr noundef nonnull %i.k)
          to label %.noexc218 unwind label %bb.bn ; 2 uses

.noexc218:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i212
  %.not15.i.i213 = icmp eq ptr %i.nm, null
  br i1 %.not15.i.i213, label %bb.bk, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i214

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i214: ; preds = %.noexc218
  %.pre.i215 = load i32, ptr %i.k, align 4, !tbaa !207
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i214, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i217
  %i.nn = phi i32 [ %i.nk, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i217 ], [ %.pre.i215, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i214 ] ; 3 uses
  %i.no = phi ptr [ %i.nl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i217 ], [ %i.nm, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i214 ] ; 4 uses
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.hw, %i.np                    ; 2 uses
  store ptr %i.no, ptr %4, align 8, !tbaa !40
  store i64 %i.nq, ptr %i.cn, align 8, !tbaa !41
  %i.nr = load i32, ptr %1, align 8, !tbaa !207
  %i.ns = icmp slt i32 %i.nr, %i.nn
  br i1 %i.ns, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.nn, ptr %1, align 8, !tbaa !207
  br label %bb.bl

bb.bk:                                            ; preds = %.noexc218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq
  %i.nu = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.no, ptr noundef nonnull %i.nt, ptr noundef nonnull %i.p)
          to label %.noexc220 unwind label %bb.bn ; 3 uses

.noexc220:                                        ; preds = %bb.bl
  %.not594 = icmp eq ptr %i.nu, null
  br i1 %.not594, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221, label %bb.bm

bb.bm:                                            ; preds = %.noexc220
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = sub i64 %i.hw, %i.nv
  store ptr %i.nu, ptr %4, align 8, !tbaa !40
  store i64 %i.nw, ptr %i.cn, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.nx = load i64, ptr %i.p, align 8, !tbaa !41
  store i32 %i.nn, ptr %11, align 8
  store i64 %i.nx, ptr %i.gj, align 8
  %i.ny = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EE6insertEOS1_.exit unwind label %bb.bo ; 0 uses

_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EE6insertEOS1_.exit: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221

bb.bn:                                            ; preds = %bb.bl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i212
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bp

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221:   ; preds = %.noexc220, %bb.bk, %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EE6insertEOS1_.exit
  %.153 = phi ptr [ null, %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EE6insertEOS1_.exit ], [ @.str.65, %bb.bk ], [ @.str.65, %.noexc220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn126 = phi { ptr, i32 } [ %i.oa, %bb.bo ], [ %i.nz, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.bq:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  store i64 0, ptr %i.q, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  store i64 0, ptr %i.r, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i32 0, ptr %i.j, align 4, !tbaa !207
  %i.ob = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i223 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i223, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i224, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oc = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.od = icmp sgt i8 %i.oc, -1
  br i1 %i.od, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i229, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i224

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i229: ; preds = %bb.br
  %i.oe = zext nneg i8 %i.oc to i32
  %i.of = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.bs

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i224: ; preds = %bb.br, %bb.bq
  %i.og = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.ob, ptr noundef nonnull %i.j)
          to label %.noexc230 unwind label %bb.cc ; 2 uses

.noexc230:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i224
  %.not15.i.i225 = icmp eq ptr %i.og, null
  br i1 %.not15.i.i225, label %bb.bu, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i226

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i226: ; preds = %.noexc230
  %.pre.i227 = load i32, ptr %i.j, align 4, !tbaa !207
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i226, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i229
  %i.oh = phi i32 [ %i.oe, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i229 ], [ %.pre.i227, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i226 ] ; 3 uses
  %i.oi = phi ptr [ %i.of, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i229 ], [ %i.og, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i226 ] ; 4 uses
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = sub i64 %i.hw, %i.oj                    ; 2 uses
  store ptr %i.oi, ptr %4, align 8, !tbaa !40
  store i64 %i.ok, ptr %i.cn, align 8, !tbaa !41
  %i.ol = load i32, ptr %1, align 8, !tbaa !207
  %i.om = icmp slt i32 %i.ol, %i.oh
  br i1 %i.om, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.oh, ptr %1, align 8, !tbaa !207
  br label %bb.bv

bb.bu:                                            ; preds = %.noexc230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ok
  %i.oo = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.oi, ptr noundef nonnull %i.on, ptr noundef nonnull %i.q)
          to label %.noexc232 unwind label %bb.cc ; 5 uses

.noexc232:                                        ; preds = %bb.bv
  %.not592 = icmp eq ptr %i.oo, null
  br i1 %.not592, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233, label %bb.bw

bb.bw:                                            ; preds = %.noexc232
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = sub i64 %i.hw, %i.op                    ; 2 uses
  store ptr %i.oo, ptr %4, align 8, !tbaa !40
  store i64 %i.oq, ptr %i.cn, align 8, !tbaa !41
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.oq
  %i.os = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.or, ptr noundef nonnull %i.r)
          to label %.noexc234 unwind label %bb.cc ; 3 uses

.noexc234:                                        ; preds = %bb.bw
  %.not593 = icmp eq ptr %i.os, null
  br i1 %.not593, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233, label %bb.bx

bb.bx:                                            ; preds = %.noexc234
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = sub i64 %i.hw, %i.ot
  store ptr %i.os, ptr %4, align 8, !tbaa !40
  store i64 %i.ou, ptr %i.cn, align 8, !tbaa !41
  %i.ov = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bk)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  br i1 %i.ov, label %bb.bz, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233

bb.bz:                                            ; preds = %bb.by
  %i.ow = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bn)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ow, label %_ZN7rocksdb14FileDescriptoraSERKS0_.exit, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233

_ZN7rocksdb14FileDescriptoraSERKS0_.exit:         ; preds = %bb.ca
  %i.ox = load i64, ptr %i.q, align 8, !tbaa !41
  %i.oy = load i64, ptr %i.r, align 8, !tbaa !41
  store ptr null, ptr %i.gc, align 8, !tbaa !31
  store atomic ptr null, ptr %5 release, align 8
  %i.oz = insertelement <4 x i64> <i64 poison, i64 poison, i64 72057594037927935, i64 0>, i64 %i.ox, i64 0
  %i.pa = insertelement <4 x i64> %i.oz, i64 %i.oy, i64 1
  store <4 x i64> %i.pa, ptr %i.gd, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i32 %i.oh, ptr %12, align 8, !tbaa !184, !alias.scope !294
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.gh, ptr noundef nonnull align 8 dereferenceable(417) %5)
          to label %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit unwind label %bb.cd

_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit: ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit
  invoke void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(432) %12)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gh) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233

bb.cc:                                            ; preds = %bb.bw, %bb.bv, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i224, %bb.bz, %bb.bx
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cd:                                            ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gh) #30
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn123 = phi { ptr, i32 } [ %i.pd, %bb.ce ], [ %i.pc, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cg

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233:   ; preds = %.noexc234, %.noexc232, %bb.bu, %bb.by, %bb.ca, %bb.cb
  %.254 = phi ptr [ null, %bb.cb ], [ @.str.66, %bb.ca ], [ @.str.66, %bb.by ], [ @.str.66, %.noexc232 ], [ @.str.66, %bb.bu ], [ @.str.66, %.noexc234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %bb.cf ], [ %i.pb, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ch:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  store i64 0, ptr %i.s, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  store i64 0, ptr %i.t, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #30
  store i64 0, ptr %i.u, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  store i64 72057594037927935, ptr %i.v, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  store i32 0, ptr %i.i, align 4, !tbaa !207
  %i.pe = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i238 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i238, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i239, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pf = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.pg = icmp sgt i8 %i.pf, -1
  br i1 %i.pg, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i244, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i239

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i244: ; preds = %bb.ci
  %i.ph = zext nneg i8 %i.pf to i32
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.cj

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i239: ; preds = %bb.ci, %bb.ch
  %i.pj = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.i)
          to label %.noexc245 unwind label %bb.cv ; 2 uses

.noexc245:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i239
  %.not15.i.i240 = icmp eq ptr %i.pj, null
  br i1 %.not15.i.i240, label %bb.cl, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i241

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i241: ; preds = %.noexc245
  %.pre.i242 = load i32, ptr %i.i, align 4, !tbaa !207
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i241, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i244
  %i.pk = phi i32 [ %i.ph, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i244 ], [ %.pre.i242, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i241 ] ; 3 uses
  %i.pl = phi ptr [ %i.pi, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i244 ], [ %i.pj, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i241 ] ; 4 uses
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = sub i64 %i.hw, %i.pm                    ; 2 uses
  store ptr %i.pl, ptr %4, align 8, !tbaa !40
  store i64 %i.pn, ptr %i.cn, align 8, !tbaa !41
  %i.po = load i32, ptr %1, align 8, !tbaa !207
  %i.pp = icmp slt i32 %i.po, %i.pk
  br i1 %i.pp, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  store i32 %i.pk, ptr %1, align 8, !tbaa !207
  br label %bb.cm

bb.cl:                                            ; preds = %.noexc245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pn
  %i.pr = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.pl, ptr noundef nonnull %i.pq, ptr noundef nonnull %i.s)
          to label %.noexc247 unwind label %bb.cv ; 5 uses

.noexc247:                                        ; preds = %bb.cm
  %.not588 = icmp eq ptr %i.pr, null
  br i1 %.not588, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248, label %bb.cn

bb.cn:                                            ; preds = %.noexc247
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.hw, %i.ps                    ; 2 uses
  store ptr %i.pr, ptr %4, align 8, !tbaa !40
  store i64 %i.pt, ptr %i.cn, align 8, !tbaa !41
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pt
  %i.pv = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.pr, ptr noundef nonnull %i.pu, ptr noundef nonnull %i.t)
          to label %.noexc249 unwind label %bb.cv ; 3 uses

.noexc249:                                        ; preds = %bb.cn
  %.not589 = icmp eq ptr %i.pv, null
  br i1 %.not589, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248, label %bb.co

bb.co:                                            ; preds = %.noexc249
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = sub i64 %i.hw, %i.pw
  store ptr %i.pv, ptr %4, align 8, !tbaa !40
  store i64 %i.px, ptr %i.cn, align 8, !tbaa !41
  %i.py = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bk)
          to label %bb.cp unwind label %bb.cv

bb.cp:                                            ; preds = %bb.co
  br i1 %i.py, label %bb.cq, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248

bb.cq:                                            ; preds = %bb.cp
  %i.pz = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bn)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.pz, label %bb.cs, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248

bb.cs:                                            ; preds = %bb.cr
  %i.qa = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.qb = load i64, ptr %i.cn, align 8, !tbaa !64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qb ; 2 uses
  %i.qd = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.qa, ptr noundef %i.qc, ptr noundef nonnull %i.u)
          to label %.noexc251 unwind label %bb.cv ; 5 uses

.noexc251:                                        ; preds = %bb.cs
  %.not590 = icmp eq ptr %i.qd, null
  br i1 %.not590, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248, label %bb.ct

bb.ct:                                            ; preds = %.noexc251
  %i.qe = ptrtoint ptr %i.qc to i64               ; 2 uses
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf                    ; 2 uses
  store ptr %i.qd, ptr %4, align 8, !tbaa !40
  store i64 %i.qg, ptr %i.cn, align 8, !tbaa !41
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qg
  %i.qi = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.qd, ptr noundef nonnull %i.qh, ptr noundef nonnull %i.v)
          to label %.noexc253 unwind label %bb.cv ; 3 uses

.noexc253:                                        ; preds = %bb.ct
  %.not591 = icmp eq ptr %i.qi, null
  br i1 %.not591, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248, label %_ZN7rocksdb14FileDescriptoraSERKS0_.exit258

_ZN7rocksdb14FileDescriptoraSERKS0_.exit258:      ; preds = %.noexc253
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = sub i64 %i.qe, %i.qj
  store ptr %i.qi, ptr %4, align 8, !tbaa !40
  store i64 %i.qk, ptr %i.cn, align 8, !tbaa !41
  %i.ql = load i64, ptr %i.s, align 8, !tbaa !41
  %i.qm = load i64, ptr %i.t, align 8, !tbaa !41
  %i.qn = load i64, ptr %i.u, align 8, !tbaa !41
  %i.qo = load i64, ptr %i.v, align 8, !tbaa !41
  store ptr null, ptr %i.gc, align 8, !tbaa !31
  store atomic ptr null, ptr %5 release, align 8
  store i64 %i.ql, ptr %i.gd, align 8, !tbaa !194
  store i64 %i.qm, ptr %i.ge, align 8, !tbaa !195
  store i64 %i.qn, ptr %i.bi, align 8, !tbaa !208
  store i64 %i.qo, ptr %i.bj, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store i32 %i.pk, ptr %13, align 8, !tbaa !184, !alias.scope !295
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.gg, ptr noundef nonnull align 8 dereferenceable(417) %5)
          to label %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit260 unwind label %bb.cw

_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit260: ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit258
  invoke void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(432) %13)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit260
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %bb.cn, %bb.cm, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i239, %bb.cq, %bb.co
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cw:                                            ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit258
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit260
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gg) #30
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn120 = phi { ptr, i32 } [ %i.qr, %bb.cx ], [ %i.qq, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.cz

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248:   ; preds = %.noexc253, %.noexc251, %.noexc249, %.noexc247, %bb.cl, %bb.cp, %bb.cr, %bb.cu
  %.355 = phi ptr [ null, %bb.cu ], [ @.str.67, %.noexc251 ], [ @.str.67, %.noexc249 ], [ @.str.67, %bb.cr ], [ @.str.67, %bb.cp ], [ @.str.67, %.noexc247 ], [ @.str.67, %bb.cl ], [ @.str.67, %.noexc253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %bb.cy ], [ %i.qp, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.da:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  store i64 0, ptr %i.w, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  store i32 0, ptr %i.x, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  store i64 0, ptr %i.y, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #30
  store i64 0, ptr %i.z, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #30
  store i64 72057594037927935, ptr %i.aa, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  store i32 0, ptr %i.h, align 4, !tbaa !207
  %i.qs = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i261 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i261, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i262, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qt = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.qu = icmp sgt i8 %i.qt, -1
  br i1 %i.qu, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i267, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i262

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i267: ; preds = %bb.db
  %i.qv = zext nneg i8 %i.qt to i32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.dc

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i262: ; preds = %bb.db, %bb.da
  %i.qx = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.qs, ptr noundef nonnull %i.h)
          to label %.noexc268 unwind label %bb.dq ; 2 uses

.noexc268:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i262
  %.not15.i.i263 = icmp eq ptr %i.qx, null
  br i1 %.not15.i.i263, label %bb.de, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i264

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i264: ; preds = %.noexc268
  %.pre.i265 = load i32, ptr %i.h, align 4, !tbaa !207
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i264, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i267
  %i.qy = phi i32 [ %i.qv, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i267 ], [ %.pre.i265, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i264 ] ; 3 uses
  %i.qz = phi ptr [ %i.qw, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i267 ], [ %i.qx, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i264 ] ; 4 uses
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = sub i64 %i.hw, %i.ra                    ; 2 uses
  store ptr %i.qz, ptr %4, align 8, !tbaa !40
  store i64 %i.rb, ptr %i.cn, align 8, !tbaa !41
  %i.rc = load i32, ptr %1, align 8, !tbaa !207
  %i.rd = icmp slt i32 %i.rc, %i.qy
  br i1 %i.rd, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  store i32 %i.qy, ptr %1, align 8, !tbaa !207
  br label %bb.df

bb.de:                                            ; preds = %.noexc268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271

bb.df:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rb
  %i.rf = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.qz, ptr noundef nonnull %i.re, ptr noundef nonnull %i.w)
          to label %.noexc270 unwind label %bb.dq ; 8 uses

.noexc270:                                        ; preds = %bb.df
  %.not584 = icmp eq ptr %i.rf, null
  br i1 %.not584, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, label %bb.dg

bb.dg:                                            ; preds = %.noexc270
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = sub i64 %i.hw, %i.rg                    ; 2 uses
  store ptr %i.rf, ptr %4, align 8, !tbaa !40
  store i64 %i.rh, ptr %i.cn, align 8, !tbaa !41
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rh
  %.not.i272 = icmp eq ptr %i.ho, %i.rf
  br i1 %.not.i272, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i273, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rj = load i8, ptr %i.rf, align 1, !tbaa !25  ; 2 uses
  %i.rk = icmp sgt i8 %i.rj, -1
  br i1 %i.rk, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i276, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i273

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i276: ; preds = %bb.dh
  %i.rl = zext nneg i8 %i.rj to i32
  store i32 %i.rl, ptr %i.x, align 4, !tbaa !207
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 1
  br label %bb.di

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i273:   ; preds = %bb.dh, %bb.dg
  %i.rn = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.rf, ptr noundef nonnull %i.ri, ptr noundef nonnull %i.x)
          to label %.noexc277 unwind label %bb.dq ; 2 uses

.noexc277:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i273
  %.not15.i274 = icmp eq ptr %i.rn, null
  br i1 %.not15.i274, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, label %bb.di

bb.di:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i276, %.noexc277
  %.1.i14.i275 = phi ptr [ %i.rm, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i276 ], [ %i.rn, %.noexc277 ] ; 4 uses
  %i.ro = ptrtoint ptr %.1.i14.i275 to i64
  %i.rp = sub i64 %i.hw, %i.ro                    ; 2 uses
  store ptr %.1.i14.i275, ptr %4, align 8, !tbaa !40
  store i64 %i.rp, ptr %i.cn, align 8, !tbaa !41
  %i.rq = getelementptr inbounds nuw i8, ptr %.1.i14.i275, i64 %i.rp
  %i.rr = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %.1.i14.i275, ptr noundef nonnull %i.rq, ptr noundef nonnull %i.y)
          to label %.noexc279 unwind label %bb.dq ; 3 uses

.noexc279:                                        ; preds = %bb.di
  %.not585 = icmp eq ptr %i.rr, null
  br i1 %.not585, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, label %bb.dj

bb.dj:                                            ; preds = %.noexc279
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = sub i64 %i.hw, %i.rs
  store ptr %i.rr, ptr %4, align 8, !tbaa !40
  store i64 %i.rt, ptr %i.cn, align 8, !tbaa !41
  %i.ru = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bk)
          to label %bb.dk unwind label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.ru, label %bb.dl, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271

bb.dl:                                            ; preds = %bb.dk
  %i.rv = invoke fastcc noundef zeroext i1 @_ZN7rocksdbL14GetInternalKeyEPNS_5SliceEPNS_11InternalKeyE(ptr noundef nonnull %4, ptr noundef %i.bn)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.rv, label %bb.dn, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271

bb.dn:                                            ; preds = %bb.dm
  %i.rw = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.rx = load i64, ptr %i.cn, align 8, !tbaa !64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx ; 2 uses
  %i.rz = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.rw, ptr noundef %i.ry, ptr noundef nonnull %i.z)
          to label %.noexc281 unwind label %bb.dq ; 5 uses

.noexc281:                                        ; preds = %bb.dn
  %.not586 = icmp eq ptr %i.rz, null
  br i1 %.not586, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, label %bb.do

bb.do:                                            ; preds = %.noexc281
  %i.sa = ptrtoint ptr %i.ry to i64               ; 2 uses
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb                    ; 2 uses
  store ptr %i.rz, ptr %4, align 8, !tbaa !40
  store i64 %i.sc, ptr %i.cn, align 8, !tbaa !41
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sc
  %i.se = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.rz, ptr noundef nonnull %i.sd, ptr noundef nonnull %i.aa)
          to label %.noexc283 unwind label %bb.dq ; 3 uses

.noexc283:                                        ; preds = %bb.do
  %.not587 = icmp eq ptr %i.se, null
  br i1 %.not587, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, label %_ZN7rocksdb14FileDescriptoraSERKS0_.exit288

_ZN7rocksdb14FileDescriptoraSERKS0_.exit288:      ; preds = %.noexc283
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = sub i64 %i.sa, %i.sf
  store ptr %i.se, ptr %4, align 8, !tbaa !40
  store i64 %i.sg, ptr %i.cn, align 8, !tbaa !41
  %i.sh = load i64, ptr %i.w, align 8, !tbaa !41
  %i.si = load i32, ptr %i.x, align 4, !tbaa !207
  %i.sj = load i64, ptr %i.y, align 8, !tbaa !41
  %i.sk = load i64, ptr %i.z, align 8, !tbaa !41
  %i.sl = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.sm = zext i32 %i.si to i64
  %i.sn = shl i64 %i.sm, 62
  %i.so = or i64 %i.sn, %i.sh
  store ptr null, ptr %i.gc, align 8, !tbaa !31
  store atomic ptr null, ptr %5 release, align 8
  store i64 %i.so, ptr %i.gd, align 8, !tbaa !194
  store i64 %i.sj, ptr %i.ge, align 8, !tbaa !195
  store i64 %i.sk, ptr %i.bi, align 8, !tbaa !208
  store i64 %i.sl, ptr %i.bj, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store i32 %i.qy, ptr %14, align 8, !tbaa !184, !alias.scope !296
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.gf, ptr noundef nonnull align 8 dereferenceable(417) %5)
          to label %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit290 unwind label %bb.dr

_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit290: ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit288
  invoke void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(432) %14)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit290
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271

bb.dq:                                            ; preds = %bb.do, %bb.dn, %bb.di, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i273, %bb.df, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i262, %bb.dl, %bb.dj
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dr:                                            ; preds = %_ZN7rocksdb14FileDescriptoraSERKS0_.exit288
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %_ZSt9make_pairIRiRN7rocksdb12FileMetaDataEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit290
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.gf) #30
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn117 = phi { ptr, i32 } [ %i.sr, %bb.ds ], [ %i.sq, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.du

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271:   ; preds = %.noexc283, %.noexc281, %.noexc279, %.noexc277, %.noexc270, %bb.de, %bb.dk, %bb.dm, %bb.dp
  %.456 = phi ptr [ null, %bb.dp ], [ @.str.68, %.noexc281 ], [ @.str.68, %.noexc279 ], [ @.str.68, %bb.dm ], [ @.str.68, %bb.dk ], [ @.str.68, %.noexc277 ], [ @.str.68, %.noexc270 ], [ @.str.68, %bb.de ], [ @.str.68, %.noexc283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.du:                                            ; preds = %bb.dt, %bb.dq
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %bb.dt ], [ %i.sp, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.dv:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(417) %15, i8 0, i64 32, i1 false)
  store i64 72057594037927935, ptr %i.ex, align 8, !tbaa !208
  store i64 0, ptr %i.ey, align 8, !tbaa !209
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !70
  store i64 0, ptr %i.fb, align 8, !tbaa !67
  store i8 0, ptr %i.fa, align 8, !tbaa !25
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !70
  store i64 0, ptr %i.fe, align 8, !tbaa !67
  store i8 0, ptr %i.fd, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ff, i8 0, i64 112, i1 false)
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !70
  store i64 0, ptr %i.fi, align 8, !tbaa !67
  store i8 0, ptr %i.fh, align 8, !tbaa !25
  store ptr %i.fk, ptr %i.fj, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fk, ptr noundef nonnull align 1 dereferenceable(7) @_ZN7rocksdbL28kUnknownFileChecksumFuncNameE, i64 7, i1 false)
  store i64 7, ptr %i.fl, align 8, !tbaa !67
  store i8 0, ptr %i.fm, align 1, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.fo, align 8, !tbaa !202
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !70
  store i64 0, ptr %i.fr, align 8, !tbaa !67
  store i8 0, ptr %i.fq, align 8, !tbaa !25
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !70
  store i64 0, ptr %i.fu, align 8, !tbaa !67
  store i8 0, ptr %i.ft, align 8, !tbaa !25
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !70
  store i64 0, ptr %i.fx, align 8, !tbaa !67
  store i8 0, ptr %i.fw, align 8, !tbaa !25
  store i8 0, ptr %i.fy, align 8, !tbaa !210
  %i.ss = invoke noundef ptr @_ZN7rocksdb11VersionEdit18DecodeNewFile4FromEPNS_5SliceERiRmRbRSt6vectorISt4pairIiNS_12FileMetaDataEESaIS9_EERS8_(ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(417) %15)
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.dx:                                            ; preds = %bb.dv
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.dy:                                            ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %16, i8 0, i64 24, i1 false)
  store ptr %i.em, ptr %i.el, align 8, !tbaa !70
  store i64 0, ptr %i.en, align 8, !tbaa !67
  store i8 0, ptr %i.em, align 8, !tbaa !25
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !70
  store i64 0, ptr %i.eq, align 8, !tbaa !67
  store i8 0, ptr %i.ep, align 8, !tbaa !25
  invoke void @_ZN7rocksdb16BlobFileAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull %4)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.su = load i8, ptr %0, align 8, !tbaa !53
  %i.sv = icmp eq i8 %i.su, 0
  br i1 %i.sv, label %bb.eb, label %.critedge135

bb.ea:                                            ; preds = %bb.dy
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit301

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %17, ptr noundef nonnull align 8 dereferenceable(88) %16, i64 24, i1 false)
  store ptr %i.es, ptr %i.er, align 8, !tbaa !70
  %i.sx = load ptr, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.em
  br i1 %i.sy, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

bb.ec:                                            ; preds = %bb.eb
  %i.sz = load i64, ptr %i.en, align 8, !tbaa !67 ; 3 uses
  %i.ta = icmp ult i64 %i.sz, 16
  call void @llvm.assume(i1 %i.ta)
  %i.tb = add nuw nsw i64 %i.sz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %i.em, i64 %i.tb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.eb
  store ptr %i.sx, ptr %i.er, align 8, !tbaa !24
  %i.tc = load i64, ptr %i.em, align 8, !tbaa !25
  store i64 %i.tc, ptr %i.es, align 8, !tbaa !25
  %.pre = load i64, ptr %i.en, align 8, !tbaa !67
end_hunk_1
begin_hunk_2_@_ZN7rocksdb11VersionEdit10DecodeFromERKNS_5SliceE:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.vc = load ptr, ptr %i.ek, align 8, !tbaa !144
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = sub i64 %i.vd, %i.uo
  call void @_ZdlPvm(ptr noundef nonnull %i.um, i64 noundef %i.ve) #29
  br label %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eo, %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ux, ptr %i.ei, align 8, !tbaa !143
  store ptr %i.vb, ptr %i.ej, align 8, !tbaa !157
  %i.vf = getelementptr inbounds nuw [24 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.vf, ptr %i.ek, align 8, !tbaa !144
  br label %.critedge137

.critedge137:                                     ; preds = %bb.el, %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.vg = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i308 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i308, label %_ZN7rocksdb6StatusD2Ev.exit310, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i309

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i309: ; preds = %.critedge137
  call void @_ZdaPv(ptr noundef nonnull %i.vg) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit310

_ZN7rocksdb6StatusD2Ev.exit310:                   ; preds = %.critedge137, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

_ZN7rocksdb6StatusD2Ev.exit304:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i303, %bb.ej, %bb.ei
  %.pn110 = phi { ptr, i32 } [ %i.ug, %bb.ei ], [ %lpad.phi609, %bb.ej ], [ %lpad.phi609, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i303 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ep:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store i64 0, ptr %19, align 8, !tbaa !301
  store i64 -1, ptr %i.eh, align 8, !tbaa !302
  invoke void @_ZN7rocksdb11WalAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %4)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.vh = load i8, ptr %0, align 8, !tbaa !53
  %i.vi = icmp eq i8 %i.vh, 0
  br i1 %i.vi, label %bb.et, label %.critedge141

bb.er:                                            ; preds = %bb.ep
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit313

.loopexit600:                                     ; preds = %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit602 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp601:                            ; preds = %bb.ew
  %lpad.loopexit.split-lp603 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %.loopexit.split-lp601, %.loopexit600
  %lpad.phi604 = phi { ptr, i32 } [ %lpad.loopexit602, %.loopexit600 ], [ %lpad.loopexit.split-lp603, %.loopexit.split-lp601 ] ; 2 uses
  %i.vk = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i311 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i311, label %_ZN7rocksdb6StatusD2Ev.exit313, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i312

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i312: ; preds = %bb.es
  call void @_ZdaPv(ptr noundef nonnull %i.vk) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit313

bb.et:                                            ; preds = %bb.eq
  %i.vl = load ptr, ptr %i.ef, align 8, !tbaa !158 ; 5 uses
  %i.vm = load ptr, ptr %i.eg, align 8, !tbaa !147
  %.not.i314 = icmp eq ptr %i.vl, %i.vm
  br i1 %.not.i314, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !303
  %i.vn = load ptr, ptr %i.ef, align 8, !tbaa !158
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store ptr %i.vo, ptr %i.ef, align 8, !tbaa !158
  br label %.critedge140

bb.ev:                                            ; preds = %bb.et
  %i.vp = load ptr, ptr %i.ee, align 8, !tbaa !146 ; 5 uses
  %i.vq = ptrtoint ptr %i.vl to i64
  %i.vr = ptrtoint ptr %i.vp to i64               ; 2 uses
  %i.vs = sub i64 %i.vq, %i.vr                    ; 3 uses
  %i.vt = icmp eq i64 %i.vs, 9223372036854775792
  br i1 %i.vt, label %bb.ew, label %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #32
          to label %.noexc315 unwind label %.loopexit.split-lp601

.noexc315:                                        ; preds = %bb.ew
  unreachable

_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ev
  %i.vu = ashr exact i64 %i.vs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.vu, i64 1)
  %i.vv = add nsw i64 %.sroa.speculated.i.i.i, %i.vu ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.vu
  %i.vx = call i64 @llvm.umin.i64(i64 %i.vv, i64 576460752303423487)
  %i.vy = select i1 %i.vw, i64 576460752303423487, i64 %i.vx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.vy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.vz = shl nuw nsw i64 %i.vy, 4
  %i.wa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vz) #34
          to label %.noexc316 unwind label %.loopexit600 ; 5 uses

.noexc316:                                        ; preds = %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wb, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i = icmp eq ptr %i.vp, %i.vl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc316, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.wd, %.lr.ph.i.i.i.i.i ], [ %i.wa, %.noexc316 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i ], [ %i.vp, %.noexc316 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !303, !alias.scope !304
  %i.wc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.wc, %i.vl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !287

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc316
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.wa, %.noexc316 ], [ %i.wd, %.lr.ph.i.i.i.i.i ]
  %i.we = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.vp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.wf = load ptr, ptr %i.eg, align 8, !tbaa !147
  %i.wg = ptrtoint ptr %i.wf to i64
  %i.wh = sub i64 %i.wg, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.wh) #29
  br label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ex, %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.wa, ptr %i.ee, align 8, !tbaa !146
  store ptr %i.we, ptr %i.ef, align 8, !tbaa !158
  %i.wi = getelementptr inbounds nuw [16 x i8], ptr %i.wa, i64 %i.vy
  store ptr %i.wi, ptr %i.eg, align 8, !tbaa !147
  br label %.critedge140

.critedge140:                                     ; preds = %bb.eu, %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.wj = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i317 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i317, label %_ZN7rocksdb6StatusD2Ev.exit319, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i318

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i318: ; preds = %.critedge140
  call void @_ZdaPv(ptr noundef nonnull %i.wj) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit319

_ZN7rocksdb6StatusD2Ev.exit319:                   ; preds = %.critedge140, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

_ZN7rocksdb6StatusD2Ev.exit313:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i312, %bb.es, %bb.er
  %.pn108 = phi { ptr, i32 } [ %i.vj, %bb.er ], [ %lpad.phi604, %bb.es ], [ %lpad.phi604, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i312 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ey:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store ptr @.str, ptr %20, align 8, !tbaa !39
  store i64 0, ptr %i.ec, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store i32 0, ptr %i.g, align 4, !tbaa !207
  %i.wk = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i320 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i320, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i321, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wl = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.wm = icmp sgt i8 %i.wl, -1
  br i1 %i.wm, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i328, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i321

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i328: ; preds = %bb.ez
  %i.wn = zext nneg i8 %i.wl to i32
  %i.wo = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.fa

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i321: ; preds = %bb.ez, %bb.ey
  %i.wp = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.wk, ptr noundef nonnull %i.g)
          to label %.noexc329 unwind label %bb.fb ; 2 uses

.noexc329:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i321
  %.not15.i.i322 = icmp eq ptr %i.wp, null
  br i1 %.not15.i.i322, label %.thread546, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i323

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i323: ; preds = %.noexc329
  %.pre.i324 = load i32, ptr %i.g, align 4, !tbaa !207
  br label %bb.fa

bb.fa:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i323, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i328
  %i.wq = phi i32 [ %i.wn, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i328 ], [ %.pre.i324, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i323 ]
  %i.wr = phi ptr [ %i.wo, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i328 ], [ %i.wp, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i323 ] ; 4 uses
  %i.ws = ptrtoint ptr %i.wr to i64
  %i.wt = sub i64 %i.hw, %i.ws                    ; 3 uses
  store ptr %i.wr, ptr %4, align 8, !tbaa !40
  store i64 %i.wt, ptr %i.cn, align 8, !tbaa !41
  %i.wu = zext i32 %i.wq to i64                   ; 4 uses
  %.not.i325 = icmp ult i64 %i.wt, %i.wu
  br i1 %.not.i325, label %.thread546, label %bb.fc

.thread546:                                       ; preds = %.noexc329, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.fb:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i321
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fc:                                            ; preds = %bb.fa
  store ptr %i.wr, ptr %20, align 8, !tbaa !40
  store i64 %i.wu, ptr %i.ec, align 8, !tbaa !41
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wu
  store ptr %i.ww, ptr %4, align 8, !tbaa !39
  %i.wx = sub nuw i64 %i.wt, %i.wu
  store i64 %i.wx, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store i64 0, ptr %21, align 8, !tbaa !301
  store i64 -1, ptr %i.ed, align 8, !tbaa !302
  invoke void @_ZN7rocksdb11WalAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %20)
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.wy = load i8, ptr %0, align 8, !tbaa !53
  %i.wz = icmp eq i8 %i.wy, 0
  br i1 %i.wz, label %bb.fg, label %bb.fl

bb.fe:                                            ; preds = %bb.fc
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit333

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i335
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp:                               ; preds = %bb.fj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.xb = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i331 = icmp eq ptr %i.xb, null
  br i1 %.not.i.i331, label %_ZN7rocksdb6StatusD2Ev.exit333, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i332

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i332: ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.xb) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit333

bb.fg:                                            ; preds = %bb.fd
  %i.xc = load ptr, ptr %i.ef, align 8, !tbaa !158 ; 5 uses
  %i.xd = load ptr, ptr %i.eg, align 8, !tbaa !147
  %.not.i334 = icmp eq ptr %i.xc, %i.xd
  br i1 %.not.i334, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !303
  %i.xe = load ptr, ptr %i.ef, align 8, !tbaa !158
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  store ptr %i.xf, ptr %i.ef, align 8, !tbaa !158
  br label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit349

bb.fi:                                            ; preds = %bb.fg
  %i.xg = load ptr, ptr %i.ee, align 8, !tbaa !146 ; 5 uses
  %i.xh = ptrtoint ptr %i.xc to i64
  %i.xi = ptrtoint ptr %i.xg to i64               ; 2 uses
  %i.xj = sub i64 %i.xh, %i.xi                    ; 3 uses
  %i.xk = icmp eq i64 %i.xj, 9223372036854775792
  br i1 %i.xk, label %bb.fj, label %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i335

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #32
          to label %.noexc347 unwind label %.loopexit.split-lp

.noexc347:                                        ; preds = %bb.fj
  unreachable

_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i335: ; preds = %bb.fi
  %i.xl = ashr exact i64 %i.xj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i336 = call i64 @llvm.umax.i64(i64 %i.xl, i64 1)
  %i.xm = add nsw i64 %.sroa.speculated.i.i.i336, %i.xl ; 2 uses
  %i.xn = icmp ult i64 %i.xm, %i.xl
  %i.xo = call i64 @llvm.umin.i64(i64 %i.xm, i64 576460752303423487)
  %i.xp = select i1 %i.xn, i64 576460752303423487, i64 %i.xo ; 3 uses
  %.not.i.i.i337 = icmp ne i64 %i.xp, 0
  call void @llvm.assume(i1 %.not.i.i.i337)
  %i.xq = shl nuw nsw i64 %i.xp, 4
  %i.xr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xq) #34
          to label %.noexc348 unwind label %.loopexit ; 5 uses

.noexc348:                                        ; preds = %_ZNKSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12_M_check_lenEmPKc.exit.i.i335
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !303
  %.not10.i.i.i.i.i338 = icmp eq ptr %i.xg, %i.xc
  br i1 %.not10.i.i.i.i.i338, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i343, label %.lr.ph.i.i.i.i.i339

.lr.ph.i.i.i.i.i339:                              ; preds = %.noexc348, %.lr.ph.i.i.i.i.i339
  %.012.i.i.i.i.i340 = phi ptr [ %i.xu, %.lr.ph.i.i.i.i.i339 ], [ %i.xr, %.noexc348 ] ; 2 uses
  %.0911.i.i.i.i.i341 = phi ptr [ %i.xt, %.lr.ph.i.i.i.i.i339 ], [ %i.xg, %.noexc348 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i340, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i341, i64 16, i1 false), !tbaa.struct !303, !alias.scope !305
  %i.xt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i341, i64 16 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i340, i64 16 ; 2 uses
  %.not.i.i.i.i.i342 = icmp eq ptr %i.xt, %i.xc
  br i1 %.not.i.i.i.i.i342, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i343, label %.lr.ph.i.i.i.i.i339, !llvm.loop !287

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i343: ; preds = %.lr.ph.i.i.i.i.i339, %.noexc348
  %.0.lcssa.i.i.i.i.i344 = phi ptr [ %i.xr, %.noexc348 ], [ %i.xu, %.lr.ph.i.i.i.i.i339 ]
  %i.xv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i344, i64 16
  %.not.i23.i.i345 = icmp eq ptr %i.xg, null
  br i1 %.not.i23.i.i345, label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i346, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i343
  %i.xw = load ptr, ptr %i.eg, align 8, !tbaa !147
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = sub i64 %i.xx, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %i.xg, i64 noundef %i.xy) #29
  br label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i346

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i346: ; preds = %bb.fk, %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i343
  store ptr %i.xr, ptr %i.ee, align 8, !tbaa !146
  store ptr %i.xv, ptr %i.ef, align 8, !tbaa !158
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.xp
  store ptr %i.xz, ptr %i.eg, align 8, !tbaa !147
  br label %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit349

_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit349: ; preds = %bb.fh, %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i346
  %i.ya = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i350 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i350, label %.thread550, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i351

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i351: ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit349
  call void @_ZdaPv(ptr noundef nonnull %i.ya) #29
  br label %.thread550

_ZN7rocksdb6StatusD2Ev.exit333:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i332, %bb.ff, %bb.fe
  %.pn105 = phi { ptr, i32 } [ %i.xa, %bb.fe ], [ %lpad.phi, %bb.ff ], [ %lpad.phi, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.fm

.thread550:                                       ; preds = %_ZNSt6vectorIN7rocksdb11WalAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit349, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.fl:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.ic

bb.fm:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit333, %bb.fb
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZN7rocksdb6StatusD2Ev.exit333 ], [ %i.wv, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.fn:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  store i64 0, ptr %22, align 8, !tbaa !159
  invoke void @_ZN7rocksdb11WalDeletion10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull %4)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.yb = load i8, ptr %0, align 8, !tbaa !53
  %i.yc = icmp eq i8 %i.yb, 0
  br i1 %i.yc, label %.critedge145, label %.critedge146

bb.fp:                                            ; preds = %bb.fn
  %i.yd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

.critedge145:                                     ; preds = %bb.fo
  %i.ye = load i64, ptr %22, align 8, !tbaa !41
  store i64 %i.ye, ptr %i.eb, align 8, !tbaa !41
  %i.yf = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i356 = icmp eq ptr %i.yf, null
  br i1 %.not.i.i356, label %_ZN7rocksdb6StatusD2Ev.exit358, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i357

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i357: ; preds = %.critedge145
  call void @_ZdaPv(ptr noundef nonnull %i.yf) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit358

_ZN7rocksdb6StatusD2Ev.exit358:                   ; preds = %.critedge145, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.fq:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr @.str, ptr %23, align 8, !tbaa !39
  store i64 0, ptr %i.ea, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i32 0, ptr %i.f, align 4, !tbaa !207
  %i.yg = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i359 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i359, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i360, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yh = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.yi = icmp sgt i8 %i.yh, -1
  br i1 %i.yi, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i367, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i360

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i367: ; preds = %bb.fr
  %i.yj = zext nneg i8 %i.yh to i32
  %i.yk = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.fs

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i360: ; preds = %bb.fr, %bb.fq
  %i.yl = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.yg, ptr noundef nonnull %i.f)
          to label %.noexc368 unwind label %bb.ft ; 2 uses

.noexc368:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i360
  %.not15.i.i361 = icmp eq ptr %i.yl, null
  br i1 %.not15.i.i361, label %.thread554, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i362

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i362: ; preds = %.noexc368
  %.pre.i363 = load i32, ptr %i.f, align 4, !tbaa !207
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i362, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i367
  %i.ym = phi i32 [ %i.yj, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i367 ], [ %.pre.i363, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i362 ]
  %i.yn = phi ptr [ %i.yk, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i367 ], [ %i.yl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i362 ] ; 4 uses
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = sub i64 %i.hw, %i.yo                    ; 3 uses
  store ptr %i.yn, ptr %4, align 8, !tbaa !40
  store i64 %i.yp, ptr %i.cn, align 8, !tbaa !41
  %i.yq = zext i32 %i.ym to i64                   ; 4 uses
  %.not.i364 = icmp ult i64 %i.yp, %i.yq
  br i1 %.not.i364, label %.thread554, label %bb.fu

.thread554:                                       ; preds = %.noexc368, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.ft:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i360
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fu:                                            ; preds = %bb.fs
  store ptr %i.yn, ptr %23, align 8, !tbaa !40
  store i64 %i.yq, ptr %i.ea, align 8, !tbaa !41
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yq
  store ptr %i.ys, ptr %4, align 8, !tbaa !39
  %i.yt = sub nuw i64 %i.yp, %i.yq
  store i64 %i.yt, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store i64 0, ptr %24, align 8, !tbaa !159
  invoke void @_ZN7rocksdb11WalDeletion10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %23)
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.yu = load i8, ptr %0, align 8, !tbaa !53
  %i.yv = icmp eq i8 %i.yu, 0
  br i1 %i.yv, label %bb.fx, label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.fz

bb.fx:                                            ; preds = %bb.fv
  %i.yx = load i64, ptr %24, align 8, !tbaa !41
  store i64 %i.yx, ptr %i.eb, align 8, !tbaa !41
  %i.yy = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i373 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i373, label %.thread558, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i374

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i374: ; preds = %bb.fx
  call void @_ZdaPv(ptr noundef nonnull %i.yy) #29
  br label %.thread558

.thread558:                                       ; preds = %bb.fx, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.fy:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.ic

bb.fz:                                            ; preds = %bb.fw, %bb.ft
  %.pn100.pn = phi { ptr, i32 } [ %i.yw, %bb.fw ], [ %i.yr, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ga:                                            ; preds = %bb.e
  %i.yz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i376 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i376, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i377, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.za = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.zb = icmp sgt i8 %i.za, -1
  br i1 %i.zb, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i380, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i377

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i380: ; preds = %bb.gb
  %i.zc = zext nneg i8 %i.za to i32
  store i32 %i.zc, ptr %i.dz, align 8, !tbaa !207
  %i.zd = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.gc

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i377:   ; preds = %bb.gb, %bb.ga
  %i.ze = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.yz, ptr noundef nonnull %i.dz)
          to label %.noexc381 unwind label %bb.f  ; 2 uses

.noexc381:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i377
  %.not15.i378 = icmp eq ptr %i.ze, null
  br i1 %.not15.i378, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.gc

bb.gc:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i380, %.noexc381
  %.1.i14.i379 = phi ptr [ %i.zd, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i380 ], [ %i.ze, %.noexc381 ] ; 2 uses
  %i.zf = ptrtoint ptr %.1.i14.i379 to i64
  %i.zg = sub i64 %i.hw, %i.zf
  store ptr %.1.i14.i379, ptr %4, align 8, !tbaa !40
  store i64 %i.zg, ptr %i.cn, align 8, !tbaa !41
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.gd:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 0, ptr %i.e, align 4, !tbaa !207
  %i.zh = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i383 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i383, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i384, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zi = load i8, ptr %i.hv, align 1, !tbaa !25  ; 2 uses
  %i.zj = icmp sgt i8 %i.zi, -1
  br i1 %i.zj, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i391, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i384

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i391: ; preds = %bb.ge
  %i.zk = zext nneg i8 %i.zi to i32
  %i.zl = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.gf

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i384: ; preds = %bb.ge, %bb.gd
  %i.zm = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.zh, ptr noundef nonnull %i.e)
          to label %.noexc392 unwind label %bb.f  ; 2 uses

.noexc392:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i384
  %.not15.i.i385 = icmp eq ptr %i.zm, null
  br i1 %.not15.i.i385, label %.thread560, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i386

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i386: ; preds = %.noexc392
  %.pre.i387 = load i32, ptr %i.e, align 4, !tbaa !207
  br label %bb.gf

bb.gf:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i386, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i391
  %i.zn = phi i32 [ %i.zk, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i391 ], [ %.pre.i387, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i386 ]
  %i.zo = phi ptr [ %i.zl, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i391 ], [ %i.zm, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i386 ] ; 4 uses
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = sub i64 %i.hw, %i.zp                    ; 3 uses
  store ptr %i.zo, ptr %4, align 8, !tbaa !40
  store i64 %i.zq, ptr %i.cn, align 8, !tbaa !41
  %i.zr = zext i32 %i.zn to i64                   ; 4 uses
  %.not.i388 = icmp ult i64 %i.zq, %i.zr
  br i1 %.not.i388, label %.thread560, label %bb.gg

.thread560:                                       ; preds = %bb.gf, %.noexc392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.gg:                                            ; preds = %bb.gf
  store ptr %i.zo, ptr %6, align 8, !tbaa !40
  store i64 %i.zr, ptr %i.ck, align 8, !tbaa !41
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zr
  store ptr %i.zs, ptr %4, align 8, !tbaa !39
  %i.zt = sub nuw i64 %i.zq, %i.zr
  store i64 %i.zt, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  store i8 1, ptr %i.dt, align 1, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false)
          to label %bb.gh unwind label %bb.gn

bb.gh:                                            ; preds = %bb.gg
  %i.zu = load ptr, ptr %i.du, align 8, !tbaa !24 ; 6 uses
  %i.zv = icmp eq ptr %i.zu, %i.dv
  %i.zw = load ptr, ptr %25, align 8, !tbaa !24   ; 5 uses
  %i.zx = icmp eq ptr %i.zw, %i.dw                ; 2 uses
  br i1 %i.zv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i399: ; preds = %bb.gh
  br i1 %i.zx, label %bb.gi, label %.thread.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i394: ; preds = %bb.gh
  br i1 %i.zx, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i395

bb.gi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i399
  %i.zy = load i64, ptr %i.dx, align 8, !tbaa !67 ; 3 uses
  %i.zz = icmp ult i64 %i.zy, 16
  call void @llvm.assume(i1 %i.zz)
  switch i64 %i.zy, label %bb.gk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397
    i64 1, label %bb.gj
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.aaa = load i8, ptr %i.zw, align 1, !tbaa !25
  store i8 %i.aaa, ptr %i.zu, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zu, ptr align 1 %i.zw, i64 %i.zy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397: ; preds = %bb.gk, %bb.gj, %bb.gi
  %i.aab = load i64, ptr %i.dx, align 8, !tbaa !67 ; 2 uses
  store i64 %i.aab, ptr %i.dy, align 8, !tbaa !67
  %i.aac = load ptr, ptr %i.du, align 8, !tbaa !24
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aab
  store i8 0, ptr %i.aad, align 1, !tbaa !25
  %.pre.i398 = load ptr, ptr %25, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401

.thread.i400:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i399
  store ptr %i.zw, ptr %i.du, align 8, !tbaa !24
  %i.aae = load <2 x i64>, ptr %i.dx, align 8, !tbaa !25
  store <2 x i64> %i.aae, ptr %i.dy, align 8, !tbaa !25
  br label %bb.gm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i395: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i394
  %i.aaf = load i64, ptr %i.dv, align 8, !tbaa !25
  store ptr %i.zw, ptr %i.du, align 8, !tbaa !24
  %i.aag = load <2 x i64>, ptr %i.dx, align 8, !tbaa !25
  store <2 x i64> %i.aag, ptr %i.dy, align 8, !tbaa !25
  %.not.i396 = icmp eq ptr %i.zu, null
  br i1 %.not.i396, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i395
  store ptr %i.zu, ptr %25, align 8, !tbaa !24
  store i64 %i.aaf, ptr %i.dw, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i395, %.thread.i400
  store ptr %i.dw, ptr %25, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397, %bb.gl, %bb.gm
  %i.aah = phi ptr [ %.pre.i398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i397 ], [ %i.zu, %bb.gl ], [ %i.dw, %bb.gm ]
  store i64 0, ptr %i.dx, align 8, !tbaa !67
  store i8 0, ptr %i.aah, align 1, !tbaa !25
  %i.aai = load ptr, ptr %25, align 8, !tbaa !24  ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.dw
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401
  %i.aak = load i64, ptr %i.dw, align 8, !tbaa !25
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.gn:                                            ; preds = %bb.gg
  %i.aam = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.go:                                            ; preds = %bb.e
  store i8 1, ptr %i.ds, align 4, !tbaa !189
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.gp:                                            ; preds = %bb.e
  store i8 1, ptr %i.dq, align 4, !tbaa !123
  %i.aan = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i405 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i405, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i406, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aao = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.aap = icmp sgt i8 %i.aao, -1
  br i1 %i.aap, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i409, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i406

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i409: ; preds = %bb.gq
  %i.aaq = zext nneg i8 %i.aao to i32
  store i32 %i.aaq, ptr %i.dr, align 8, !tbaa !207
  %i.aar = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.gr

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i406:   ; preds = %bb.gq, %bb.gp
  %i.aas = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.aan, ptr noundef nonnull %i.dr)
          to label %.noexc410 unwind label %bb.f  ; 2 uses

.noexc410:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i406
  %.not15.i407 = icmp eq ptr %i.aas, null
  br i1 %.not15.i407, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.gr

bb.gr:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i409, %.noexc410
  %.1.i14.i408 = phi ptr [ %i.aar, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i409 ], [ %i.aas, %.noexc410 ] ; 2 uses
  %i.aat = ptrtoint ptr %.1.i14.i408 to i64
  %i.aau = sub i64 %i.hw, %i.aat
  store ptr %.1.i14.i408, ptr %4, align 8, !tbaa !40
  store i64 %i.aau, ptr %i.cn, align 8, !tbaa !41
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.gs:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 0, ptr %i.d, align 4, !tbaa !207
  %i.aav = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i412 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i412, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i413, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aaw = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.aax = icmp sgt i8 %i.aaw, -1
  br i1 %i.aax, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i420, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i413

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i420: ; preds = %bb.gt
  %i.aay = zext nneg i8 %i.aaw to i32
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.gu

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i413: ; preds = %bb.gt, %bb.gs
  %i.aba = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.aav, ptr noundef nonnull %i.d)
          to label %.noexc421 unwind label %bb.f  ; 2 uses

.noexc421:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i413
  %.not15.i.i414 = icmp eq ptr %i.aba, null
  br i1 %.not15.i.i414, label %.thread563, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i415

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i415: ; preds = %.noexc421
  %.pre.i416 = load i32, ptr %i.d, align 4, !tbaa !207
  br label %bb.gu

bb.gu:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i415, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i420
  %i.abb = phi i32 [ %i.aay, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i420 ], [ %.pre.i416, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i415 ] ; 2 uses
  %i.abc = phi ptr [ %i.aaz, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i420 ], [ %i.aba, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i415 ] ; 5 uses
  %i.abd = ptrtoint ptr %i.abc to i64
  %i.abe = sub i64 %i.hw, %i.abd                  ; 3 uses
  store ptr %i.abc, ptr %4, align 8, !tbaa !40
  store i64 %i.abe, ptr %i.cn, align 8, !tbaa !41
  %i.abf = zext i32 %i.abb to i64                 ; 5 uses
  %.not.i417 = icmp ult i64 %i.abe, %i.abf
  br i1 %.not.i417, label %.thread563, label %bb.gv

.thread563:                                       ; preds = %bb.gu, %.noexc421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.gv:                                            ; preds = %bb.gu
  store ptr %i.abc, ptr %6, align 8, !tbaa !40
  store i64 %i.abf, ptr %i.ck, align 8, !tbaa !41
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.abf
  store ptr %i.abg, ptr %4, align 8, !tbaa !39
  %i.abh = sub nuw i64 %i.abe, %i.abf
  store i64 %i.abh, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.abi = icmp eq i32 %i.abb, 0
  br i1 %i.abi, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.abj = load i64, ptr %i.dp, align 8, !tbaa !67
  %i.abk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 noundef 0, i64 noundef %i.abj, ptr noundef nonnull %i.abc, i64 noundef %i.abf)
          to label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit unwind label %bb.f ; 0 uses

bb.gx:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 0, ptr %i.c, align 4, !tbaa !207
  %i.abl = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i424 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i424, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i425, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.abm = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.abn = icmp sgt i8 %i.abm, -1
  br i1 %i.abn, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i432, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i425

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i432: ; preds = %bb.gy
  %i.abo = zext nneg i8 %i.abm to i32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.gz

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i425: ; preds = %bb.gy, %bb.gx
  %i.abq = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.abl, ptr noundef nonnull %i.c)
          to label %.noexc433 unwind label %bb.f  ; 2 uses

.noexc433:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i425
  %.not15.i.i426 = icmp eq ptr %i.abq, null
  br i1 %.not15.i.i426, label %.thread566, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i427

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i427: ; preds = %.noexc433
  %.pre.i428 = load i32, ptr %i.c, align 4, !tbaa !207
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i427, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i432
  %i.abr = phi i32 [ %i.abo, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i432 ], [ %.pre.i428, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i427 ] ; 2 uses
  %i.abs = phi ptr [ %i.abp, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i432 ], [ %i.abq, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i427 ] ; 5 uses
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = sub i64 %i.hw, %i.abt                  ; 3 uses
  store ptr %i.abs, ptr %4, align 8, !tbaa !40
  store i64 %i.abu, ptr %i.cn, align 8, !tbaa !41
  %i.abv = zext i32 %i.abr to i64                 ; 4 uses
  %.not.i429 = icmp ult i64 %i.abu, %i.abv
  br i1 %.not.i429, label %.thread566, label %bb.ha

.thread566:                                       ; preds = %bb.gz, %.noexc433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.ha:                                            ; preds = %bb.gz
  store ptr %i.abs, ptr %6, align 8, !tbaa !40
  store i64 %i.abv, ptr %i.ck, align 8, !tbaa !41
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abv
  store ptr %i.abw, ptr %4, align 8, !tbaa !39
  %i.abx = sub nuw i64 %i.abu, %i.abv
  store i64 %i.abx, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %.not99 = icmp eq i32 %i.abr, 1
  br i1 %.not99, label %bb.hb, label %_ZN7rocksdb5SliceC2EPKc.exit

bb.hb:                                            ; preds = %bb.ha
  %i.aby = load i8, ptr %i.abs, align 1, !tbaa !25
  %i.abz = icmp eq i8 %i.aby, 1
  %i.aca = zext i1 %i.abz to i8
  store i8 %i.aca, ptr %i.dm, align 8, !tbaa !124
  store i8 1, ptr %i.dn, align 8, !tbaa !191
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.hc:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !207
  %i.acb = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i435 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i435, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i436, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.acc = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.acd = icmp sgt i8 %i.acc, -1
  br i1 %i.acd, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i443, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i436

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i443: ; preds = %bb.hd
  %i.ace = zext nneg i8 %i.acc to i32
  %i.acf = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.he

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i436: ; preds = %bb.hd, %bb.hc
  %i.acg = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.acb, ptr noundef nonnull %i.b)
          to label %.noexc444 unwind label %bb.hf ; 2 uses

.noexc444:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i436
  %.not15.i.i437 = icmp eq ptr %i.acg, null
  br i1 %.not15.i.i437, label %.thread571, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i438

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i438: ; preds = %.noexc444
  %.pre.i439 = load i32, ptr %i.b, align 4, !tbaa !207
  br label %bb.he

bb.he:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i438, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i443
  %i.ach = phi i32 [ %i.ace, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i443 ], [ %.pre.i439, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i438 ]
  %i.aci = phi ptr [ %i.acf, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i443 ], [ %i.acg, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i438 ] ; 4 uses
  %i.acj = ptrtoint ptr %i.aci to i64
  %i.ack = sub i64 %i.hw, %i.acj                  ; 3 uses
  store ptr %i.aci, ptr %4, align 8, !tbaa !40
  store i64 %i.ack, ptr %i.cn, align 8, !tbaa !41
  %i.acl = zext i32 %i.ach to i64                 ; 4 uses
  %.not.i440 = icmp ult i64 %i.ack, %i.acl
  br i1 %.not.i440, label %.thread571, label %bb.hg

.thread571:                                       ; preds = %.noexc444, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.hf:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i436
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hg:                                            ; preds = %bb.he
  store ptr %i.aci, ptr %26, align 8, !tbaa !40
  store i64 %i.acl, ptr %i.cq, align 8, !tbaa !41
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.acl
  store ptr %i.acn, ptr %4, align 8, !tbaa !39
  %i.aco = sub nuw i64 %i.ack, %i.acl
  store i64 %i.aco, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  store ptr %i.cr, ptr %27, align 8, !tbaa !70
  store i64 0, ptr %i.cs, align 8, !tbaa !67
  store i8 0, ptr %i.cr, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i8 0, i64 48, i1 false)
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  invoke void @_ZN7rocksdb21SubcompactionProgress10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(6936) %27, ptr noundef nonnull %26)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.acp = load i8, ptr %0, align 8, !tbaa !53
  %i.acq = icmp eq i8 %i.acp, 0
  br i1 %i.acq, label %bb.hk, label %bb.hm

bb.hi:                                            ; preds = %bb.hg
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit448

bb.hj:                                            ; preds = %.noexc450, %.noexc449, %bb.hk
  %i.acs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.act = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i446 = icmp eq ptr %i.act, null
  br i1 %.not.i.i446, label %_ZN7rocksdb6StatusD2Ev.exit448, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i447

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i447: ; preds = %bb.hj
  call void @_ZdaPv(ptr noundef nonnull %i.act) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit448

bb.hk:                                            ; preds = %bb.hh
  store i8 1, ptr %i.da, align 1, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(6936) %i.db, ptr noundef nonnull align 8 dereferenceable(6936) %27)
          to label %.noexc449 unwind label %bb.hj

.noexc449:                                        ; preds = %bb.hk
  %i.acu = load <2 x i64>, ptr %i.ct, align 8, !tbaa !41
  store <2 x i64> %i.acu, ptr %i.dc, align 8, !tbaa !41
  %i.acv = invoke noundef nonnull align 8 dereferenceable(3432) ptr @_ZN7rocksdb10autovectorINS_12FileMetaDataELm8EE6assignERKS2_(ptr noundef nonnull align 8 dereferenceable(3432) %i.dd, ptr noundef nonnull align 8 dereferenceable(3432) %i.de)
          to label %.noexc450 unwind label %bb.hj ; 0 uses

.noexc450:                                        ; preds = %.noexc449
  %i.acw = load <2 x i64>, ptr %i.df, align 8, !tbaa !41
  store <2 x i64> %i.acw, ptr %i.dg, align 8, !tbaa !41
  %i.acx = invoke noundef nonnull align 8 dereferenceable(3432) ptr @_ZN7rocksdb10autovectorINS_12FileMetaDataELm8EE6assignERKS2_(ptr noundef nonnull align 8 dereferenceable(3432) %i.dh, ptr noundef nonnull align 8 dereferenceable(3432) %i.di)
          to label %bb.hl unwind label %bb.hj     ; 0 uses

bb.hl:                                            ; preds = %.noexc450
  %i.acy = load i64, ptr %i.dj, align 8, !tbaa !149
  store i64 %i.acy, ptr %i.dk, align 8, !tbaa !149
  %i.acz = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i452 = icmp eq ptr %i.acz, null
  br i1 %.not.i.i452, label %.thread575, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i453

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i453: ; preds = %bb.hl
  call void @_ZdaPv(ptr noundef nonnull %i.acz) #29
  br label %.thread575

_ZN7rocksdb6StatusD2Ev.exit448:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i447, %bb.hj, %bb.hi
  %.pn = phi { ptr, i32 } [ %i.acr, %bb.hi ], [ %i.acs, %bb.hj ], [ %i.acs, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i447 ]
  call void @_ZN7rocksdb21SubcompactionProgressD2Ev(ptr noundef nonnull align 8 dead_on_return(6936) dereferenceable(6936) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.hn

.thread575:                                       ; preds = %bb.hl, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i453
  call void @_ZN7rocksdb21SubcompactionProgressD2Ev(ptr noundef nonnull align 8 dead_on_return(6936) dereferenceable(6936) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.hm:                                            ; preds = %bb.hh
  call void @_ZN7rocksdb21SubcompactionProgressD2Ev(ptr noundef nonnull align 8 dead_on_return(6936) dereferenceable(6936) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.ic

bb.hn:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit448, %bb.hf
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit448 ], [ %i.acm, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.ho:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !207
  %i.ada = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i.i455 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i.i455, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i456, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.adb = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.adc = icmp sgt i8 %i.adb, -1
  br i1 %i.adc, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i463, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i456

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i463: ; preds = %bb.hp
  %i.add = zext nneg i8 %i.adb to i32
  %i.ade = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.hq

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i456: ; preds = %bb.hp, %bb.ho
  %i.adf = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.ada, ptr noundef nonnull %i.a)
          to label %.noexc464 unwind label %bb.ht ; 2 uses

.noexc464:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i456
  %.not15.i.i457 = icmp eq ptr %i.adf, null
  br i1 %.not15.i.i457, label %.thread577, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i458

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i458: ; preds = %.noexc464
  %.pre.i459 = load i32, ptr %i.a, align 4, !tbaa !207
  br label %bb.hq

bb.hq:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i458, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i463
  %i.adg = phi i32 [ %i.add, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i463 ], [ %.pre.i459, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i458 ]
  %i.adh = phi ptr [ %i.ade, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i463 ], [ %i.adf, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i458 ] ; 4 uses
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = sub i64 %i.hw, %i.adi                  ; 3 uses
  store ptr %i.adh, ptr %4, align 8, !tbaa !40
  store i64 %i.adj, ptr %i.cn, align 8, !tbaa !41
  %i.adk = zext i32 %i.adg to i64                 ; 3 uses
  %.not.i460 = icmp ult i64 %i.adj, %i.adk
  br i1 %.not.i460, label %.thread577, label %bb.hr

.thread577:                                       ; preds = %bb.hq, %.noexc464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN7rocksdb5SliceC2EPKc.exit

bb.hr:                                            ; preds = %bb.hq
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adk ; 2 uses
  store ptr %i.adl, ptr %4, align 8, !tbaa !39
  %i.adm = sub nuw i64 %i.adj, %i.adk
  store i64 %i.adm, ptr %i.cn, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.adn = invoke noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.adh, ptr noundef nonnull %i.adl, ptr noundef nonnull %i.co)
          to label %.noexc466 unwind label %bb.ht

.noexc466:                                        ; preds = %bb.hr
  %.not = icmp eq ptr %i.adn, null
  br i1 %.not, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.hs

bb.hs:                                            ; preds = %.noexc466
  store i8 1, ptr %i.cp, align 8, !tbaa !192
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

bb.ht:                                            ; preds = %bb.hr, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i456
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.hu:                                            ; preds = %bb.e
  %i.adp = and i32 %i.hu, 8192
  %.not130 = icmp eq i32 %i.adp, 0
  br i1 %.not130, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #30
  %i.adq = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %.not.i468 = icmp eq ptr %i.ho, %i.hv
  br i1 %.not.i468, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i469, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.adr = load i8, ptr %i.hv, align 1, !tbaa !25 ; 2 uses
  %i.ads = icmp sgt i8 %i.adr, -1
  br i1 %i.ads, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i472, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i469

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i472: ; preds = %bb.hw
  %i.adt = zext nneg i8 %i.adr to i32
  %i.adu = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  br label %bb.hx

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i469:   ; preds = %bb.hw, %bb.hv
  %i.adv = invoke noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.hv, ptr noundef nonnull %i.adq, ptr noundef nonnull %i.ab)
          to label %.noexc473 unwind label %bb.hy ; 2 uses

.noexc473:                                        ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i469
  %.not15.i470 = icmp eq ptr %i.adv, null
  br i1 %.not15.i470, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474, label %.noexc473._crit_edge

.noexc473._crit_edge:                             ; preds = %.noexc473
  %.pre751 = load i32, ptr %i.ab, align 4, !tbaa !207
  br label %bb.hx

bb.hx:                                            ; preds = %.noexc473._crit_edge, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i472
  %i.adw = phi i32 [ %i.adt, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i472 ], [ %.pre751, %.noexc473._crit_edge ]
  %i.adx = phi ptr [ %i.adu, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i472 ], [ %i.adv, %.noexc473._crit_edge ] ; 3 uses
  %i.ady = ptrtoint ptr %i.adx to i64
  %i.adz = sub i64 %i.hw, %i.ady                  ; 3 uses
  store ptr %i.adx, ptr %4, align 8, !tbaa !40
  store i64 %i.adz, ptr %i.cn, align 8, !tbaa !41
  %i.aea = zext i32 %i.adw to i64                 ; 3 uses
  %i.aeb = icmp ult i64 %i.adz, %i.aea
  br i1 %i.aeb, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474, label %bb.hz

bb.hy:                                            ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i469
  %i.aec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit483

bb.hz:                                            ; preds = %bb.hx
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aea
  store ptr %i.aed, ptr %4, align 8, !tbaa !39
  %i.aee = sub nuw i64 %i.adz, %i.aea
  store i64 %i.aee, ptr %i.cn, align 8, !tbaa !64
  br label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474:   ; preds = %.noexc473, %bb.hx, %bb.hz
  %.961 = phi ptr [ null, %bb.hz ], [ @.str.80, %bb.hx ], [ @.str.80, %.noexc473 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #30
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.hs, %.thread575, %bb.gw, %bb.gr, %bb.gc, %.thread558, %.thread550, %_ZN7rocksdb6StatusD2Ev.exit358, %_ZN7rocksdb6StatusD2Ev.exit319, %_ZN7rocksdb6StatusD2Ev.exit310, %_ZN7rocksdb16BlobFileAdditionD2Ev.exit298, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474, %bb.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit, %bb.ao, %bb.am, %bb.ak, %bb.ah, %bb.af, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.go, %bb.dw, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221
  %.10 = phi ptr [ %.961, %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit474 ], [ null, %_ZN7rocksdb6StatusD2Ev.exit358 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %.thread558 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ null, %bb.gr ], [ null, %bb.ad ], [ null, %bb.gw ], [ null, %bb.af ], [ null, %.thread575 ], [ null, %bb.ah ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404 ], [ null, %bb.ak ], [ null, %bb.hs ], [ null, %bb.am ], [ null, %bb.go ], [ null, %bb.ao ], [ null, %bb.gc ], [ null, %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit ], [ null, %bb.hb ], [ %.153, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit221 ], [ %.254, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit233 ], [ %.355, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit248 ], [ %.456, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit271 ], [ %i.ss, %bb.dw ], [ null, %_ZN7rocksdb16BlobFileAdditionD2Ev.exit298 ], [ null, %_ZN7rocksdb6StatusD2Ev.exit310 ], [ null, %_ZN7rocksdb6StatusD2Ev.exit319 ], [ null, %.thread550 ] ; 2 uses
  %i.aef = icmp eq ptr %.10, null
  br i1 %i.aef, label %bb.c, label %_ZN7rocksdb5SliceC2EPKc.exit, !llvm.loop !291

.critedge:                                        ; preds = %.noexc
  %i.aeg = load i64, ptr %i.cn, align 8, !tbaa !64
  %i.aeh = icmp eq i64 %i.aeg, 0
  br i1 %i.aeh, label %.critedge152, label %_ZN7rocksdb5SliceC2EPKc.exit

.critedge152:                                     ; preds = %.critedge
  store ptr null, ptr %i.dl, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  br label %bb.ic

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %.noexc466, %.noexc194, %bb.gv, %.noexc381, %.noexc410, %bb.av, %bb.hu, %.noexc192, %.noexc190, %.noexc183, %.noexc181, %.noexc180, %bb.ha, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, %.thread577, %.thread546, %.thread566, %.thread563, %.thread560, %.thread554, %bb.at, %.thread517, %.thread, %.thread571, %.critedge
  %.11.ph = phi ptr [ @.str.82, %.critedge ], [ @.str.72, %.thread560 ], [ @.str.78, %.thread571 ], [ @.str.79, %.thread577 ], [ @.str.69, %.thread546 ], [ @.str.70, %.thread554 ], [ @.str.64, %bb.at ], [ @.str.76, %.thread566 ], [ @.str.57, %.thread517 ], [ @.str.56, %.thread ], [ @.str.74, %.thread563 ], [ @.str.77, %bb.ha ], [ @.str.58, %.noexc180 ], [ @.str.59, %.noexc181 ], [ @.str.60, %.noexc183 ], [ @.str.61, %.noexc190 ], [ @.str.62, %.noexc192 ], [ @.str.81, %bb.hu ], [ @.str.64, %bb.av ], [ @.str.73, %.noexc410 ], [ @.str.71, %.noexc381 ], [ @.str.75, %bb.gv ], [ @.str.63, %.noexc194 ], [ @.str.79, %.noexc466 ], [ %.10, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit ] ; 2 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  store ptr @.str.83, ptr %29, align 8, !tbaa !39
  %i.aei = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 11, ptr %i.aei, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  store ptr %.11.ph, ptr %30, align 8, !tbaa !39
  %i.aej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.11.ph) #33
  %i.aek = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.aej, ptr %i.aek, align 8, !tbaa !64
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.ib

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %.not.i476 = icmp eq ptr %0, %28
  br i1 %.not.i476, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.ia

bb.ia:                                            ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit
  %i.ael = load <4 x i8>, ptr %28, align 8, !tbaa !25
  store <4 x i8> %i.ael, ptr %0, align 8, !tbaa !25
  store <4 x i8> zeroinitializer, ptr %28, align 8, !tbaa !25
  %i.aem = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 2 uses
  %i.aen = load i8, ptr %i.aem, align 4, !tbaa !181, !range !155, !noundef !156
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.aen, ptr %i.aeo, align 4, !tbaa !306
  store i8 0, ptr %i.aem, align 4, !tbaa !306
  %i.aep = getelementptr inbounds nuw i8, ptr %28, i64 5 ; 2 uses
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !25
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aeq, ptr %i.aer, align 1, !tbaa !307
  store i8 0, ptr %i.aep, align 1, !tbaa !307
  %i.aes = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !40
  store ptr null, ptr %i.aes, align 8, !tbaa !40
  %i.aeu = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  store ptr %i.aet, ptr %i.dl, align 8, !tbaa !40
  %.not.i.i.i.i.i477 = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i.i.i477, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.ia
  call void @_ZdaPv(ptr noundef nonnull %i.aeu) #29
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %bb.ia, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.aev = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !40 ; 2 uses
  %.not.i.i478 = icmp eq ptr %i.aew, null
  br i1 %.not.i.i478, label %_ZN7rocksdb6StatusD2Ev.exit480, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i479

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i479: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aew) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit480

_ZN7rocksdb6StatusD2Ev.exit480:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i479
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.ic

bb.ib:                                            ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %i.aex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.aey = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %.not.i.i481 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i481, label %_ZN7rocksdb6StatusD2Ev.exit483, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i482

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i482: ; preds = %bb.ib
  call void @_ZdaPv(ptr noundef nonnull %i.aey) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit483

.critedge135:                                     ; preds = %bb.dz
  %i.aez = load ptr, ptr %i.eo, align 8, !tbaa !24 ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.ep
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i484: ; preds = %.critedge135
  %i.afb = load i64, ptr %i.ep, align 8, !tbaa !25
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i485: ; preds = %.critedge135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i484
  %i.afd = load ptr, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %i.afe = icmp eq ptr %i.afd, %i.em
  br i1 %i.afe, label %_ZN7rocksdb16BlobFileAdditionD2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i485
  %i.aff = load i64, ptr %i.em, align 8, !tbaa !25
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afg) #29
  br label %_ZN7rocksdb16BlobFileAdditionD2Ev.exit489

_ZN7rocksdb16BlobFileAdditionD2Ev.exit489:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i486
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ic

.critedge138:                                     ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ic

.critedge141:                                     ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.ic

.critedge146:                                     ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.ic

bb.ic:                                            ; preds = %.critedge152, %bb.hm, %bb.fy, %bb.fl, %_ZN7rocksdb6StatusD2Ev.exit480, %.critedge146, %.critedge141, %.critedge138, %_ZN7rocksdb16BlobFileAdditionD2Ev.exit489
  %i.afh = load ptr, ptr %7, align 8, !tbaa !24   ; 2 uses
  %i.afi = icmp eq ptr %i.afh, %i.cl
  br i1 %i.afi, label %_ZN7rocksdb11InternalKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490: ; preds = %bb.ic
  %i.afj = load i64, ptr %i.cl, align 8, !tbaa !25
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afk) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

_ZN7rocksdb6StatusD2Ev.exit483:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i482, %bb.ib, %bb.hy, %bb.ht, %bb.hn, %bb.gn, %bb.fz, %bb.fp, %bb.fm, %_ZN7rocksdb6StatusD2Ev.exit313, %_ZN7rocksdb6StatusD2Ev.exit304, %_ZN7rocksdb6StatusD2Ev.exit301, %bb.dx, %bb.du, %bb.cz, %bb.cg, %bb.bp, %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210, %bb.ab, %bb.q, %bb.f
  %.pn131 = phi { ptr, i32 } [ %i.aec, %bb.hy ], [ %i.jf, %bb.q ], [ %i.hz, %bb.f ], [ %i.kl, %bb.ab ], [ %.pn128, %_ZNSt4pairIiN7rocksdb11InternalKeyEED2Ev.exit210 ], [ %.pn126, %bb.bp ], [ %.pn123.pn, %bb.cg ], [ %.pn120.pn, %bb.cz ], [ %.pn117.pn, %bb.du ], [ %i.st, %bb.dx ], [ %.pn112.pn, %_ZN7rocksdb6StatusD2Ev.exit301 ], [ %.pn110, %_ZN7rocksdb6StatusD2Ev.exit304 ], [ %.pn108, %_ZN7rocksdb6StatusD2Ev.exit313 ], [ %.pn105.pn, %bb.fm ], [ %i.yd, %bb.fp ], [ %.pn100.pn, %bb.fz ], [ %i.aam, %bb.gn ], [ %.pn.pn.pn, %bb.hn ], [ %i.ado, %bb.ht ], [ %i.aex, %bb.ib ], [ %i.aex, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i482 ]
  %i.afl = load ptr, ptr %7, align 8, !tbaa !24   ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.cl
  br i1 %i.afm, label %_ZN7rocksdb11InternalKeyD2Ev.exit496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493: ; preds = %_ZN7rocksdb6StatusD2Ev.exit483
  %i.afn = load i64, ptr %i.cl, align 8, !tbaa !25
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit496

_ZN7rocksdb11InternalKeyD2Ev.exit496:             ; preds = %_ZN7rocksdb6StatusD2Ev.exit483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(432) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN7rocksdb12FileMetaDataD2Ev:bb.a
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !25
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN7rocksdb11InternalKeyD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit15

_ZN7rocksdb11InternalKeyD2Ev.exit15:              ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  ret void
}

declare void @_ZN7rocksdb16BlobFileAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11VersionEdit11AddBlobFileENS_16BlobFileAdditionE(ptr noundef nonnull align 8 dereferenceable(7456) %0, ptr noundef align 8 %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !70
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !24
  %i.p = load i64, ptr %i.j, align 8, !tbaa !25
  store i64 %i.p, ptr %i.h, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !67
  store ptr %i.j, ptr %i.g, align 8, !tbaa !24
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.j, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZSt12construct_atIN7rocksdb16BlobFileAdditionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !24
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !25
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !25
  br label %_ZSt12construct_atIN7rocksdb16BlobFileAdditionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZSt12construct_atIN7rocksdb16BlobFileAdditionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !67
  store ptr %i.x, ptr %i.u, align 8, !tbaa !24
  store i64 0, ptr %i.ae, align 8, !tbaa !67
  store i8 0, ptr %i.x, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !140
  br label %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !142
  br label %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZSt12construct_atIN7rocksdb16BlobFileAdditionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i, %bb.e
  %i.ak = phi ptr [ %i.ai, %_ZSt12construct_atIN7rocksdb16BlobFileAdditionEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i ], [ %.pre, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !309
  store i64 %i.an, ptr %i.a, align 8, !tbaa !41
  call void @_ZN7rocksdb10autovectorImLm8EE9push_backEOm(ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16BlobFileAdditionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare void @_ZN7rocksdb15BlobFileGarbage10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb11WalAddition10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

declare void @_ZN7rocksdb11WalDeletion10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb21SubcompactionProgress10DecodeFromEPNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(6936) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 11 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  tail call void @_ZN7rocksdb21SubcompactionProgress5ClearEv(ptr noundef nonnull align 8 dereferenceable(6936) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3488
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

.critedge:                                        ; preds = %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.thread, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !207
  %i.m = load ptr, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 3 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.m, align 1, !tbaa !25    ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.c
  %i.r = zext nneg i8 %i.p to i32                 ; 2 uses
  store i32 %i.r, ptr %i.b, align 4, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  br label %bb.d

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.c, %bb.b
  %i.t = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %.thread, label %thread-pre-split

.thread:                                          ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr @.str.162, ptr %3, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 21, ptr %i.u, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @.str.172, ptr %4, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 22, ptr %i.v, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.x

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.b, align 4, !tbaa !207
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.r, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ]
  %i.x = phi ptr [ %i.t, %thread-pre-split ], [ %i.s, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  %i.y = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !40
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !41
  %i.ab = icmp eq i32 %i.w, 1
  br i1 %i.ab, label %.thread33, label %bb.e

.thread33:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store ptr null, ptr %i.f, align 8, !tbaa !63, !alias.scope !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !312
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr @.str, ptr %5, align 8, !tbaa !39
  store i64 0, ptr %i.d, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !25   ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.f
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %bb.g

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.f, %bb.e
  %i.ah = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ah, null
  br i1 %.not15.i.i, label %bb.h, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !207
  br label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.ai = phi i32 [ %i.af, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %.pre.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ]
  %i.aj = phi ptr [ %i.ag, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %i.ah, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 5 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.y, %i.ak                     ; 3 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !40
  store i64 %i.al, ptr %i.c, align 8, !tbaa !41
  %i.am = zext i32 %i.ai to i64                   ; 4 uses
  %.not.i18 = icmp ult i64 %i.al, %i.am
  br i1 %.not.i18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @.str.162, ptr %6, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 21, ptr %i.an, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr @.str.173, ptr %7, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 40, ptr %i.ao, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread35

bb.i:                                             ; preds = %bb.g
  store ptr %i.aj, ptr %5, align 8, !tbaa !40
  store i64 %i.am, ptr %i.d, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !39
  %i.aq = sub nuw i64 %i.al, %i.am
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !207 ; 2 uses
  switch i32 %i.ar, label %bb.u [
    i32 2, label %bb.j
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.s
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false)
  %i.as = load ptr, ptr %1, align 8, !tbaa !24    ; 6 uses
  %i.at = icmp eq ptr %i.as, %i.i
  %i.au = load ptr, ptr %8, align 8, !tbaa !24    ; 5 uses
  %i.av = icmp eq ptr %i.au, %i.j                 ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.av, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.av, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !67  ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  switch i64 %i.aw, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !25
  store i8 %i.ay, ptr %i.as, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.az = load i64, ptr %i.k, align 8, !tbaa !67  ; 2 uses
  store i64 %i.az, ptr %i.l, align 8, !tbaa !67
  %i.ba = load ptr, ptr %1, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !25
  %.pre.i20 = load ptr, ptr %8, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.au, ptr %1, align 8, !tbaa !24
  %i.bc = load <2 x i64>, ptr %i.k, align 8, !tbaa !25
  store <2 x i64> %i.bc, ptr %i.l, align 8, !tbaa !25
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !25
  store ptr %i.au, ptr %1, align 8, !tbaa !24
  %i.be = load <2 x i64>, ptr %i.k, align 8, !tbaa !25
  store <2 x i64> %i.be, ptr %i.l, align 8, !tbaa !25
  %.not.i19 = icmp eq ptr %i.as, null
  br i1 %.not.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.as, ptr %8, align 8, !tbaa !24
  store i64 %i.bd, ptr %i.j, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %8, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bf = phi ptr [ %.pre.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.as, %bb.n ], [ %i.j, %bb.o ]
  store i64 0, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.bf, align 1, !tbaa !25
  %i.bg = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.j
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge

bb.p:                                             ; preds = %bb.i
  %i.bk = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.h) ; 2 uses
  %.not37 = icmp eq ptr %i.bk, null
  br i1 %.not37, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.thread

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.thread: ; preds = %bb.p
  store ptr %i.bk, ptr %5, align 8, !tbaa !40
  br label %.critedge

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr @.str.162, ptr %9, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 21, ptr %i.bl, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr @.str.174, ptr %10, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 35, ptr %i.bm, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.thread35

bb.q:                                             ; preds = %bb.i
  call void @_ZN7rocksdb29SubcompactionProgressPerLevel10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3448) %i.g, ptr noundef nonnull %5)
  %i.bn = load i8, ptr %0, align 8, !tbaa !53
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !40  ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i22, label %.critedge, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #29
  br label %.critedge

bb.s:                                             ; preds = %bb.i
  call void @_ZN7rocksdb29SubcompactionProgressPerLevel10DecodeFromEPNS_5SliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3448) %i.e, ptr noundef nonnull %5)
  %i.bq = load i8, ptr %0, align 8, !tbaa !53
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !40  ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i28, label %.critedge, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i29: ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #29
  br label %.critedge

bb.u:                                             ; preds = %bb.i
  %i.bt = and i32 %i.ar, 65536
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr @.str.162, ptr %11, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 21, ptr %i.bu, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr @.str.168, ptr %12, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 33, ptr %i.bv, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.thread35

.thread35:                                        ; preds = %bb.h, %bb.v, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
end_hunk_3
begin_hunk_4_@_ZNK7rocksdb29SubcompactionProgressPerLevel17EncodeOutputFilesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.w, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !25
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !25
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.a, i64 %i.w, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.w)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !67
  %i.ak = load ptr, ptr %1, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  store i8 0, ptr %i.al, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.am = load i64, ptr %i.n, align 8, !tbaa !149 ; 2 uses
  %i.an = load i64, ptr %i.c, align 8, !tbaa !204
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !205
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !206 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 424
  %i.au = add i64 %i.at, %i.an
  %i.av = icmp ult i64 %i.am, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3408
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = phi ptr [ %i.ap, %.lr.ph ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0917 = phi i64 [ %i.am, %.lr.ph ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.aw, ptr %2, align 8, !tbaa !70
  store i64 0, ptr %i.ax, align 8, !tbaa !67
  store i8 0, ptr %i.aw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i8 0, ptr %i.b, align 1, !tbaa !181
  %i.bb = icmp ult i64 %.0917, 8
  %i.bc = load ptr, ptr %i.ay, align 8
  %i.bd = getelementptr inbounds nuw [424 x i8], ptr %i.bc, i64 %.0917
  %i.be = getelementptr [424 x i8], ptr %i.ba, i64 %.0917
  %i.bf = getelementptr i8, ptr %i.be, i64 -3392
  %.0.i = select i1 %i.bb, ptr %i.bd, ptr %i.bf
  invoke void @_ZN7rocksdb11VersionEdit16EncodeToNewFile4ERKNS_12FileMetaDataEimbmRbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(417) %.0.i, i32 noundef -1, i64 noundef 0, i1 noundef zeroext false, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bg = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.bg, ptr %3, align 8, !tbaa !39
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !67
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !64
  invoke void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bi = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aw
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bm = add nuw i64 %.0917, 1                   ; 2 uses
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !204
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !205
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !206 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 424
  %i.bu = add i64 %i.bt, %i.bn
  %i.bv = icmp ult i64 %i.bm, %i.bu
  br i1 %i.bv, label %bb.h, label %._crit_edge, !llvm.loop !345

bb.k:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %i.bw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.by = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aw
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.m
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29SubcompactionProgressPerLevel10DecodeFromEPNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3448) initializes((0, 8)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  store i64 0, ptr %1, align 8, !tbaa !225
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %.not1.i.i = icmp eq i64 %i.d, 0
  br i1 %.not1.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3408
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.f = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.j, %bb.b ]
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !204
  %i.i = getelementptr inbounds nuw [424 x i8], ptr %i.g, i64 %i.h
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.i) #30
  %i.j = load i64, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3416
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !206  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3424 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !205  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i.i, label %_ZN7rocksdb29SubcompactionProgressPerLevel5ClearEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %.05.i.i.i.i.i.i) #30
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !205
  br label %_ZN7rocksdb29SubcompactionProgressPerLevel5ClearEv.exit

_ZN7rocksdb29SubcompactionProgressPerLevel5ClearEv.exit: ; preds = %._crit_edge.i.i, %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3440
  store i64 0, ptr %i.p, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.k, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %_ZN7rocksdb29SubcompactionProgressPerLevel5ClearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !207
  %i.t = load ptr, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.u = load i64, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 3 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.t, align 1, !tbaa !25    ; 2 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.d
  %i.y = zext nneg i8 %i.w to i32                 ; 2 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  br label %bb.e

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.d, %bb.c
  %i.aa = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i = icmp eq ptr %i.aa, null
  br i1 %.not15.i, label %.thread, label %thread-pre-split

.thread:                                          ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr @.str.164, ptr %3, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 29, ptr %i.ab, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @.str.165, ptr %4, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.ac, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.q

thread-pre-split:                                 ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pr = load i32, ptr %i.b, align 4, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.ad = phi i32 [ %.pr, %thread-pre-split ], [ %i.y, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ]
  %i.ae = phi ptr [ %i.aa, %thread-pre-split ], [ %i.z, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ] ; 7 uses
  %i.af = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !40
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !41
  %i.ai = icmp eq i32 %i.ad, 1
  br i1 %i.ai, label %.thread16, label %bb.f

.thread16:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store ptr null, ptr %i.s, align 8, !tbaa !63, !alias.scope !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !348
  br label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %.not.i.i8 = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i8, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !25  ; 2 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i: ; preds = %bb.g
  %i.am = zext nneg i8 %i.ak to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  br label %bb.h

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i:    ; preds = %bb.g, %bb.f
  %i.ao = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a) ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ao, null
  br i1 %.not15.i.i, label %bb.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i
  %i.ap = phi i32 [ %i.am, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %.pre.i, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ]
  %i.aq = phi ptr [ %i.an, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i.i ], [ %i.ao, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge.i ] ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.af, %i.ar                    ; 3 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !40
  store i64 %i.as, ptr %i.q, align 8, !tbaa !41
  %i.at = zext i32 %i.ap to i64                   ; 4 uses
  %.not.i9 = icmp ult i64 %i.as, %i.at
  br i1 %.not.i9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @.str.164, ptr %6, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 29, ptr %i.au, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr @.str.166, ptr %7, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 33, ptr %i.av, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread18

bb.j:                                             ; preds = %bb.h
  store ptr %i.aq, ptr %5, align 8, !tbaa !40
  store i64 %i.at, ptr %i.r, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !39
  %i.ax = sub nuw i64 %i.as, %i.at
  store i64 %i.ax, ptr %i.q, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !207 ; 2 uses
  switch i32 %i.ay, label %bb.n [
    i32 3, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.az = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.aw, ptr noundef nonnull %1)
  %.not20 = icmp eq ptr %i.az, null
  br i1 %.not20, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, label %.critedge

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr @.str.164, ptr %8, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 29, ptr %i.ba, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr @.str.167, ptr %9, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 37, ptr %i.bb, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.thread18

bb.l:                                             ; preds = %bb.j
  call void @_ZN7rocksdb29SubcompactionProgressPerLevel17DecodeOutputFilesEPNS_5SliceERNS_10autovectorINS_12FileMetaDataELm8EEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(3432) %i.c)
  %i.bc = load i8, ptr %0, align 8, !tbaa !53
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i11, label %.critedge, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.be) #29
  br label %.critedge

bb.n:                                             ; preds = %bb.j
  %i.bf = and i32 %i.ay, 65536
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr @.str.162, ptr %10, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 21, ptr %i.bg, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr @.str.168, ptr %11, align 8, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 33, ptr %i.bh, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.thread18

.thread18:                                        ; preds = %bb.i, %bb.o, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread18, %.thread, %.thread16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29SubcompactionProgressPerLevel17DecodeOutputFilesEPNS_5SliceERNS_10autovectorINS_12FileMetaDataELm8EEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(3432) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 8 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.std::vector.17", align 8   ; 10 uses
  %12 = alloca %"struct.rocksdb::FileMetaData", align 8 ; 36 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !207
  %i.g = load ptr, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !25    ; 2 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i: ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32                 ; 2 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.c

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i:      ; preds = %bb.b, %bb.a
  %i.o = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef %i.g, ptr noundef %i.j, ptr noundef nonnull %i.b) ; 2 uses
  %.not15.i = icmp eq ptr %i.o, null
  br i1 %.not15.i, label %_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit, label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge: ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  %.pre = load i32, ptr %i.b, align 4, !tbaa !207
  br label %bb.c

_ZN7rocksdb11GetVarint32EPNS_5SliceEPj.exit:      ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @.str.164, ptr %4, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 29, ptr %i.p, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr @.str.169, ptr %5, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 21, ptr %i.q, align 8, !tbaa !64
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.loopexit

bb.c:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i
  %i.r = phi i32 [ %i.m, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ], [ %.pre, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge ]
  %.1.i14.i = phi ptr [ %i.n, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.thread.i ], [ %i.o, %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit.i._crit_edge ] ; 2 uses
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = ptrtoint ptr %.1.i14.i to i64
  %i.u = sub i64 %i.s, %i.t
  store ptr %.1.i14.i, ptr %2, align 8, !tbaa !40
  store i64 %i.u, ptr %i.h, align 8, !tbaa !41
  %i.v = zext i32 %i.r to i64
  call void @_ZN7rocksdb10autovectorINS_12FileMetaDataELm8EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(3432) %3, i64 noundef %i.v)
  %i.w = load i32, ptr %i.b, align 4, !tbaa !207
  %.not2236.not = icmp eq i32 %i.w, 0
  br i1 %.not2236.not, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 279
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 288
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 312
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 320
end_hunk_4
