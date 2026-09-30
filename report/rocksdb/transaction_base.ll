Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/transaction_base?download=true
inline.NumInlined: 2567
inline.NumDeleted: 1109
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7rocksdb19TransactionBaseImpl13GetWriteBatchEv:bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 18446744073709552) i64 @_ZNK7rocksdb19TransactionBaseImpl14GetElapsedTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.c = tail call noundef ptr @_ZNK7rocksdb6DBImpl14GetSystemClockEv(ptr noundef nonnull align 64 dereferenceable(7336) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !149
  %i.j = sub i64 %i.g, %i.i
  %i.k = udiv i64 %i.j, 1000
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb19TransactionBaseImpl10GetNumPutsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !660
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb19TransactionBaseImpl17GetNumPutEntitiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !659
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb19TransactionBaseImpl13GetNumDeletesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !662
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb19TransactionBaseImpl12GetNumMergesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !661
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7rocksdb19TransactionBaseImpl10GetNumKeysEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19TransactionBaseImpl8TrackKeyEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::PointLockRequest", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !78
  store i8 0, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !664
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !665
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 49 ; 2 uses
  store i8 1, ptr %i.f, align 1, !tbaa !666
  store i32 %1, ptr %6, align 8, !tbaa !667
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.g = zext i1 %5 to i8
  %i.h = zext i1 %4 to i8
  store i64 %3, ptr %i.d, align 8, !tbaa !664
  store i8 %i.h, ptr %i.e, align 8, !tbaa !665
  store i8 %i.g, ptr %i.f, align 1, !tbaa !666
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(50) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !506  ; 5 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !tbaa !543  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 720
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 728
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !545
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !546  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 88                  ; 2 uses
  %i.y = sub i64 0, %i.p
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.p, -1
  %i.ab = add i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 712
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr [88 x i8], ptr %i.t, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.ag, i64 -704
  %.0.i.i.i.i = select i1 %i.ac, ptr %i.af, ptr %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !551 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(50) %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.b
  br i1 %i.ap, label %_ZN7rocksdb16PointLockRequestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZN7rocksdb16PointLockRequestD2Ev.exit

_ZN7rocksdb16PointLockRequestD2Ev.exit:           ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.an

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.b
  br i1 %i.at, label %_ZN7rocksdb16PointLockRequestD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.f
  %i.au = load i64, ptr %i.b, align 8, !tbaa !38
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #29
  br label %_ZN7rocksdb16PointLockRequestD2Ev.exit9

_ZN7rocksdb16PointLockRequestD2Ev.exit9:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19TransactionBaseImpl16UndoGetForUpdateEPNS_18ColumnFamilyHandleERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::PointLockRequest", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i32 0, ptr %3, align 8, !tbaa !667
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !78
  store i8 0, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !664
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !665
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 49
  store i8 1, ptr %i.f, align 1, !tbaa !666
  %i.g = invoke noundef i32 @_ZN7rocksdb17GetColumnFamilyIDEPNS_18ColumnFamilyHandleE(ptr noundef %1)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %3, align 8, !tbaa !667
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !37     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  %5 = icmp eq ptr %i.h, %i.b
  br i1 %5, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  switch i64 %i.m, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.i, align 1, !tbaa !38
  store i8 %i.o, ptr %i.h, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.i, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.p = load i64, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  store i64 %i.p, ptr %i.c, align 8, !tbaa !78
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !38
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.i, ptr %i.a, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !38
  store <2 x i64> %i.t, ptr %i.c, align 8, !tbaa !38
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !38
  store ptr %i.i, ptr %i.a, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !38
  store <2 x i64> %i.w, ptr %i.c, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %4, align 8, !tbaa !37
  store i64 %i.u, ptr %i.j, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %4, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.g ], [ %i.j, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !78
  store i8 0, ptr %i.x, align 1, !tbaa !38
  %i.z = load ptr, ptr %4, align 8, !tbaa !37     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  store i8 1, ptr %i.e, align 8, !tbaa !665
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !506 ; 5 uses
  %.not.i17 = icmp eq ptr %i.af, null
  br i1 %.not.i17, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !543 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 720
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 728
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !545
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !546 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 88                ; 2 uses
  %i.ap = sub i64 0, %i.ag
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i64 %i.ag, -1
  %i.as = add i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = icmp ult i64 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 712
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr [88 x i8], ptr %i.ak, i64 %i.as
  %i.ay = getelementptr i8, ptr %i.ax, i64 -704
  %.0.i.i.i.i = select i1 %i.at, ptr %i.aw, ptr %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !551 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(50) %3)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.s, label %.critedge

bb.l:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.m:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.critedge:                                        ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !153 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(50) %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.critedge
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %0, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 776
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %.critedge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.k
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.b
  br i1 %i.bv, label %_ZN7rocksdb16PointLockRequestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !38
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #29
  br label %_ZN7rocksdb16PointLockRequestD2Ev.exit

_ZN7rocksdb16PointLockRequestD2Ev.exit:           ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.t:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %i.bg, %bb.m ], [ %i.bs, %bb.q ], [ %i.bh, %bb.n ], [ %i.bt, %bb.r ]
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.b
  br i1 %i.bz, label %_ZN7rocksdb16PointLockRequestD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.t
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !38
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %_ZN7rocksdb16PointLockRequestD2Ev.exit20

_ZN7rocksdb16PointLockRequestD2Ev.exit20:         ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef i32 @_ZN7rocksdb17GetColumnFamilyIDEPNS_18ColumnFamilyHandleE(ptr noundef) local_unnamed_addr #4

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19TransactionBaseImpl21RebuildFromWriteBatchEPNS_10WriteBatchE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.IndexedWriteBatchBuilder, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVZN7rocksdb19TransactionBaseImpl21RebuildFromWriteBatchEPNS_10WriteBatchEE24IndexedWriteBatchBuilder, i64 16), ptr %3, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !671
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !672
  invoke void @_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.e
}

declare void @_ZNK7rocksdb10WriteBatch7IterateEPNS0_7HandlerE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_0
