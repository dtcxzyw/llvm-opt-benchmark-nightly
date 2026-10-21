Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_open?download=true
inline.NumInlined: 7164
inline.NumDeleted: 3287
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7rocksdb16BlobFileAdditionD2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !66
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !66
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare { ptr, i64 } @_ZNK7rocksdb8MemTable12GetNewestUDTEv(ptr noundef nonnull align 16 dereferenceable(10624)) unnamed_addr #4

declare void @_ZN7rocksdb34GetFullHistoryTsLowFromU64CutoffTsEPNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !658  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !66
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28
  br label %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !22

_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !657
  br label %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !659
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !66
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !66
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !66
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !66
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !66
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN7rocksdb11InternalKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #28
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN7rocksdb11InternalKeyD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #28
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit15

_ZN7rocksdb11InternalKeyD2Ev.exit15:              ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb2DB4OpenERKNS_7OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(1736) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.rocksdb::DBOptions", align 8 ; 8 uses
  %5 = alloca %"struct.rocksdb::ColumnFamilyOptions", align 8 ; 9 uses
  %6 = alloca %"class.std::vector.108", align 8   ; 13 uses
  %7 = alloca %"class.std::vector.998", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN7rocksdb9DBOptionsC1ERKNS_7OptionsE(ptr noundef nonnull align 8 dereferenceable(753) %4, ptr noundef nonnull align 8 dereferenceable(1736) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC1ERKNS_7OptionsE(ptr noundef nonnull align 8 dereferenceable(976) %5, ptr noundef nonnull align 8 dereferenceable(1736) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7rocksdb24kDefaultColumnFamilyNameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(976) %5)
          to label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit unwind label %bb.g

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit: ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !198 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 344 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1696, !range !136, !noundef !137
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load ptr, ptr %8, align 8, !tbaa !1086
  %.not.i15 = icmp eq ptr %.pre.i, %i.e
  br i1 %.not.i15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7rocksdb32kPersistentStatsColumnFamilyNameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(976) %5)
          to label %.noexc17 unwind label %bb.g

.noexc17:                                         ; preds = %bb.d
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1087
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1008
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1087
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.pre.i, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7rocksdb32kPersistentStatsColumnFamilyNameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(976) %5)
          to label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19 unwind label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19: ; preds = %bb.e, %.noexc17, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN7rocksdb2DB4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(753) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7, ptr noundef %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19
  %i.j = load i8, ptr %0, align 8, !tbaa !127
  %i.k = icmp eq i8 %i.j, 0
  %.pr.pre = load ptr, ptr %7, align 8, !tbaa !1090 ; 5 uses
  br i1 %i.k, label %bb.j, label %thread-pre-split

bb.i:                                             ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit19
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %7, align 8, !tbaa !1090   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit22, label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.n = load i8, ptr %i.b, align 8, !tbaa !1696, !range !136, !noundef !137
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.pre, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !946  ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.u = load ptr, ptr %.pr.pre, align 8, !tbaa !946 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %thread-pre-split.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #29
  br label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.m, %bb.n, %thread-pre-split
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1091
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pr.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pr.pre, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit: ; preds = %thread-pre-split, %thread-pre-split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ae = load ptr, ptr %6, align 8, !tbaa !1092  ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ag) #29
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !66
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #28
  br label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 1008 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.am, %i.af
  br i1 %.not.i.i.i20, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !1092
  br label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load ptr, ptr %9, align 8, !tbaa !1086
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.p:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1091
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.m to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aw) #28
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit22

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit22: ; preds = %bb.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.l, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EED2Ev.exit22 ], [ %i.i, %bb.g ]
  call void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %5) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb2DB4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 21 uses
  %.fr45 = freeze ptr %0                          ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1698, !range !136, !noundef !137
  %i.d = trunc nuw i8 %i.c to i1
  tail call void @_ZN7rocksdb16ThreadStatusUtil17SetEnableTrackingEb(i1 noundef zeroext %i.d)
  tail call void @_ZN7rocksdb16ThreadStatusUtil18SetThreadOperationENS_12ThreadStatus13OperationTypeE(i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %.fr45, i64 8 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr45, i8 0, i64 6, i1 false)
  %.not.i = icmp eq ptr %.fr45, %6
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr45, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.fr45, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.fr45, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.fr45, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.fr45, i64 5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  br i1 %.not.i, label %.split.us.split.us, label %.split.peel

.split.peel:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7rocksdb6DBImpl4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrINS_2DBESt14default_deleteISO_EEbbbPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.a)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel unwind label %.split18.loopexit.split-lp

_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel:       ; preds = %.split.peel
  %i.q = load i8, ptr %6, align 8, !tbaa !199     ; 3 uses
  %i.r = load i8, ptr %i.l, align 4, !tbaa !196, !range !136, !noundef !137
  %i.s = load <4 x i8>, ptr %i.f, align 1, !tbaa !66
  %i.t = load i8, ptr %i.j, align 1, !tbaa !196, !range !136, !noundef !137
  %i.u = load i8, ptr %i.h, align 2, !tbaa !1067
  %i.v = load i8, ptr %i.f, align 1, !tbaa !667
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !66
  store i8 0, ptr %i.l, align 4, !tbaa !135
  %i.w = load i8, ptr %i.n, align 1, !tbaa !66    ; 2 uses
  store i8 0, ptr %i.n, align 1, !tbaa !138
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !139  ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.y = icmp ne i8 %i.q, 0
  %i.z = load i8, ptr %i.a, align 1, !range !136
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %.split, label %.split22

.split.us.split.us:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7rocksdb6DBImpl4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrINS_2DBESt14default_deleteISO_EEbbbPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.a)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit.us.us unwind label %.split18.us.split.us

_ZN7rocksdb6StatusaSEOS0_.exit.us.us:             ; preds = %.split.us.split.us
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !139 ; 2 uses
  %.not.i.i.us.us = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.us.us, label %.split22.us.split.us, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.us.us
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #28
  br label %.split22.us.split.us

.split22.us.split.us:                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us, %_ZN7rocksdb6StatusaSEOS0_.exit.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.split22.us

.split18.us.split.us:                             ; preds = %.split.us.split.us
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.split18.us

.split:                                           ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel, %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.ae = phi i8 [ %i.ar, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.w, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  %i.af = phi i8 [ %i.am, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.r, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  %i.ag = phi i8 [ %i.ao, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.t, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  %i.ah = phi i8 [ %i.ap, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.u, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  %i.ai = phi i8 [ %i.aq, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.v, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  %i.aj = phi ptr [ %i.as, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.x, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ] ; 3 uses
  %i.ak = phi i8 [ %i.al, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.q, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7rocksdb6DBImpl4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrINS_2DBESt14default_deleteISO_EEbbbPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %.split18.loopexit

bb.b:                                             ; preds = %.split
  %i.al = load i8, ptr %6, align 8, !tbaa !199    ; 3 uses
  %i.am = load i8, ptr %i.l, align 4, !tbaa !196, !range !136, !noundef !137
  %i.an = load <4 x i8>, ptr %i.f, align 1, !tbaa !66
  %i.ao = load i8, ptr %i.j, align 1, !tbaa !196, !range !136, !noundef !137
  %i.ap = load i8, ptr %i.h, align 2, !tbaa !1067
  %i.aq = load i8, ptr %i.f, align 1, !tbaa !667
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !66
  store i8 0, ptr %i.l, align 4, !tbaa !135
  %i.ar = load i8, ptr %i.n, align 1, !tbaa !66   ; 2 uses
  store i8 0, ptr %i.n, align 1, !tbaa !138
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !139 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !139
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #28
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !139 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #28
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.b, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.at = icmp ne i8 %i.al, 0
  %i.au = load i8, ptr %i.a, align 1, !range !136
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.at, i1 %i.av, i1 false
  br i1 %i.aw, label %.split, label %.split22, !llvm.loop !1697

.split22:                                         ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel
  %.lcssa128 = phi i8 [ %i.q, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ], [ %i.al, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %.lcssa127 = phi <4 x i8> [ %i.s, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ], [ %i.an, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %.lcssa126 = phi i8 [ %i.w, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ], [ %i.ar, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %.lcssa125 = phi ptr [ %i.x, %_ZN7rocksdb6StatusaSEOS0_.exit.thread.peel ], [ %i.as, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  store <4 x i8> %.lcssa127, ptr %i.g, align 1
  store i8 %.lcssa126, ptr %i.o, align 1
  br label %.split22.us

.split22.us:                                      ; preds = %.split22.us.split.us, %.split22
  %.us-phi23 = phi ptr [ %.lcssa125, %.split22 ], [ null, %.split22.us.split.us ]
  %.us-phi24 = phi i8 [ %.lcssa128, %.split22 ], [ 0, %.split22.us.split.us ]
  store i8 %.us-phi24, ptr %.fr45, align 8
  store ptr %.us-phi23, ptr %i.e, align 8
  invoke void @_ZN7rocksdb16ThreadStatusUtil17ResetThreadStatusEv()
          to label %bb.d unwind label %bb.c

.split18.loopexit:                                ; preds = %.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.split18

.split18.loopexit.split-lp:                       ; preds = %.split.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split18

.split18:                                         ; preds = %.split18.loopexit.split-lp, %.split18.loopexit
  %.lcssa123 = phi i8 [ %i.ae, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %.lcssa121 = phi i8 [ %i.af, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %.lcssa119 = phi i8 [ %i.ag, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %.lcssa117 = phi i8 [ %i.ah, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %.lcssa115 = phi i8 [ %i.ai, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %.lcssa113 = phi ptr [ %i.aj, %.split18.loopexit ], [ null, %.split18.loopexit.split-lp ]
  %.lcssa = phi i8 [ %i.ak, %.split18.loopexit ], [ 0, %.split18.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.split18.loopexit ], [ %lpad.loopexit.split-lp, %.split18.loopexit.split-lp ]
  store i8 %.lcssa115, ptr %i.g, align 1
  store i8 %.lcssa117, ptr %i.i, align 2
  store i8 %.lcssa119, ptr %i.k, align 1
  store i8 %.lcssa121, ptr %i.m, align 4
  store i8 %.lcssa123, ptr %i.o, align 1
  br label %.split18.us

.split18.us:                                      ; preds = %.split18.us.split.us, %.split18
  %.us-phi = phi ptr [ %.lcssa113, %.split18 ], [ null, %.split18.us.split.us ]
  %.us-phi19 = phi i8 [ %.lcssa, %.split18 ], [ 0, %.split18.us.split.us ]
  %.us-phi20 = phi { ptr, i32 } [ %lpad.phi, %.split18 ], [ %i.ad, %.split18.us.split.us ]
  store i8 %.us-phi19, ptr %.fr45, align 8
  store ptr %.us-phi, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.e

bb.c:                                             ; preds = %.split22.us
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.split22.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.e:                                             ; preds = %bb.c, %.split18.us
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.c ], [ %.us-phi20, %.split18.us ]
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !139 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit12, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit12

_ZN7rocksdb6StatusD2Ev.exit12:                    ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1087 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.d) #29
  %i.e = load ptr, ptr %.05.i.i, align 8, !tbaa !65 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 1008 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !36

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb22ColumnFamilyDescriptorEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1092
  br label %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1086
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN7rocksdb16ThreadStatusUtil17SetEnableTrackingEb(i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN7rocksdb16ThreadStatusUtil18SetThreadOperationENS_12ThreadStatus13OperationTypeE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrINS_2DBESt14default_deleteISO_EEbbbPb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef %9) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %13 = alloca %"struct.rocksdb::WriteOptions", align 8 ; 12 uses
  %14 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 9 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %16 = alloca %"struct.rocksdb::MinAndMaxPreserveSeconds", align 8 ; 8 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %18 = alloca %"class.std::vector.98", align 8   ; 14 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %21 = alloca %"class.rocksdb::DBImpl::RecoveryContext", align 8 ; 21 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %22 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %23 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %24 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %25 = alloca %"class.rocksdb::PredecessorWALInfo", align 8 ; 5 uses
  %26 = alloca %"class.rocksdb::WriteBatch", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %27 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %28 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %29 = alloca %"struct.rocksdb::IOOptions", align 8 ; 16 uses
  %30 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %31 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %32 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %33 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %36 = alloca %"struct.rocksdb::SuperVersionContext", align 8 ; 14 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %37 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %38 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %39 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %40 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %41 = alloca %"struct.rocksdb::SuperVersionContext", align 8 ; 8 uses
  %42 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %43 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %44 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %45 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %46 = alloca %"class.rocksdb::Status", align 8  ; 19 uses
  %47 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %48 = alloca %"class.std::set.1086", align 8    ; 9 uses
  %49 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %50 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %51 = alloca %"struct.rocksdb::IOOptions", align 8 ; 16 uses
  %52 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %53 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %54 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %55 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %56 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %60 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %61 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @_ZN7rocksdb12WriteOptionsC1ENS_3Env10IOActivityE(ptr noundef nonnull align 8 dereferenceable(25) %13, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @_ZN7rocksdb11ReadOptionsC1ENS_3Env10IOActivityE(ptr noundef nonnull align 8 dereferenceable(192) %14, i8 noundef zeroext 2)
  %.val = load ptr, ptr %3, align 8, !tbaa !198   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.val201 = load ptr, ptr %i.g, align 8, !tbaa !198 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.h = icmp eq ptr %.val, %.val201
  br i1 %i.h, label %.critedge17.thread.i, label %.lr.ph.i

.critedge17.thread.i:                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !195, !alias.scope !1718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1718
  br label %.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.025.i, i64 1008 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.val201
  br i1 %i.n, label %.critedge17.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.025.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = phi ptr [ null, %.lr.ph.i ], [ %i.u, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !1717
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.025.i, i64 32
  invoke void @_ZN7rocksdb15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(976) %i.p)
          to label %bb.d unwind label %bb.e, !noalias !1717

bb.d:                                             ; preds = %bb.c
  %i.q = load <4 x i8>, ptr %12, align 8, !tbaa !66, !noalias !1717
  %i.r = load i8, ptr %12, align 8, !tbaa !199, !noalias !1717
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !66, !noalias !1717
  %i.s = load i8, ptr %i.j, align 4, !tbaa !196, !range !136, !noalias !1717, !noundef !137
  store i8 0, ptr %i.j, align 4, !tbaa !135, !noalias !1717
  %i.t = load i8, ptr %i.k, align 1, !tbaa !66, !noalias !1717
  store i8 0, ptr %i.k, align 1, !tbaa !138, !noalias !1717
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !139, !noalias !1717 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !139, !noalias !1717
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.i

_ZN7rocksdb6StatusaSEOS0_.exit.i:                 ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.o) #28, !noalias !1717
  %.pr.i = load ptr, ptr %i.l, align 8, !tbaa !139, !noalias !1717 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #28, !noalias !1717
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread.i

_ZN7rocksdb6StatusaSEOS0_.exit.thread.i:          ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !1717
  %i.v = icmp eq i8 %i.r, 0
  br i1 %i.v, label %bb.b, label %.thread979

.thread979:                                       ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> %i.q, ptr %0, align 8, !tbaa !66, !alias.scope !1717
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.x, align 4, !tbaa !135, !alias.scope !1717
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.t, ptr %i.y, align 1, !tbaa !138, !alias.scope !1717
  store ptr %i.u, ptr %i.w, align 8, !tbaa !139, !alias.scope !1717
  br label %bb.ja

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !1717
  %.not.i.i22.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i22.i, label %.body, label %.body.sink.split

.critedge17.i:                                    ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !195, !alias.scope !1718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1718
  %.not.i.i19.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i19.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %.critedge17.i
  call void @_ZdaPv(ptr noundef nonnull %i.u) #28, !noalias !1717
  %.pr.pre = load i8, ptr %0, align 8, !tbaa !127
  %i.ab = icmp eq i8 %.pr.pre, 0
  br i1 %i.ab, label %.thread, label %bb.ja

.thread:                                          ; preds = %.critedge17.i, %.critedge17.thread.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZN7rocksdb6DBImpl15ValidateOptionsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.thread
  %.not.i = icmp eq ptr %0, %15
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load <4 x i8>, ptr %15, align 8, !tbaa !66
  store <4 x i8> %i.ac, ptr %0, align 8, !tbaa !66
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !196, !range !136, !noundef !137
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !135
  store i8 0, ptr %i.ad, align 4, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !138
  store i8 0, ptr %i.ag, align 1, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !139
  store ptr null, ptr %i.aj, align 8, !tbaa !139
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !139 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !139
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrINS_2DBESt14default_deleteISO_EEbbbPb:bb.a
  br i1 %.not.i.i.i.i.i325, label %_ZN7rocksdb6StatusD2Ev.exit332, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i326

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i326: ; preds = %bb.eo
  call void @_ZdaPv(ptr noundef nonnull %i.ra) #28
  %.pre820 = load ptr, ptr %i.ph, align 8, !tbaa !139
  br label %_ZN7rocksdb6StatusaSEOS0_.exit328

_ZN7rocksdb6StatusaSEOS0_.exit328:                ; preds = %bb.en, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i326
  %i.rb = phi ptr [ %.pre821, %bb.en ], [ %.pre820, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i326 ] ; 2 uses
  %.not.i.i329 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i329, label %_ZN7rocksdb6StatusD2Ev.exit332, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i330

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i330: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit328
  call void @_ZdaPv(ptr noundef nonnull %i.rb) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit332

_ZN7rocksdb6StatusD2Ev.exit332:                   ; preds = %bb.eo, %_ZN7rocksdb6StatusaSEOS0_.exit328, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.hq)
          to label %bb.ep unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ep:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit332
  %i.rc = load i8, ptr %0, align 8, !tbaa !127
  %i.rd = icmp eq i8 %i.rc, 0
  br i1 %i.rd, label %bb.eq, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit

bb.eq:                                            ; preds = %bb.ep
  %i.re = load ptr, ptr %i.ax, align 8, !tbaa !1096 ; 4 uses
  %i.rf = load ptr, ptr %i.ow, align 8, !tbaa !1091
  %.not.i333 = icmp eq ptr %i.re, %i.rf
  br i1 %.not.i333, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rg = load ptr, ptr %i.f, align 8, !tbaa !946
  store ptr %i.rg, ptr %i.re, align 8, !tbaa !946
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rh, ptr %i.ax, align 8, !tbaa !1096
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit.thread

bb.es:                                            ; preds = %bb.eq
  %i.ri = load ptr, ptr %4, align 8, !tbaa !1090  ; 4 uses
  %i.rj = ptrtoint ptr %i.re to i64
  %i.rk = ptrtoint ptr %i.ri to i64               ; 2 uses
  %i.rl = sub i64 %i.rj, %i.rk                    ; 5 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %bb.et, label %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #31
          to label %.noexc335 unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc335:                                        ; preds = %bb.et
  unreachable

_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.es
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i334 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i334)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #30
          to label %.noexc336 unwind label %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc336:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  %i.rv = load ptr, ptr %i.f, align 8, !tbaa !946
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !946
  %i.rw = icmp sgt i64 %i.rl, 0
  br i1 %i.rw, label %bb.eu, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.eu:                                            ; preds = %.noexc336
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr align 8 %i.ri, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.eu, %.noexc336
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ri, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ry = load ptr, ptr %i.ow, align 8, !tbaa !1091
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = sub i64 %i.rz, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.sa) #28
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ev, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.rt, ptr %4, align 8, !tbaa !1090
  store ptr %i.rx, ptr %i.ax, align 8, !tbaa !1096
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.sb, ptr %i.ow, align 8, !tbaa !1091
  br label %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit.thread

.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.em, %_ZN7rocksdb6StatusD2Ev.exit332, %bb.et
  %lpad.loopexit.split-lp1078 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp688

bb.ew:                                            ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %.loopexit.split-lp688

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit.thread: ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %bb.fa

_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %.thread645.thread675

.loopexit.split-lp688:                            ; preds = %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ew
  %.pn161 = phi { ptr, i32 } [ %i.sc, %bb.ew ], [ %lpad.loopexit.split-lp1078, %.loopexit.split-lp688.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %.loopexit.split-lp

bb.ex:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  store ptr @.str.118, ptr %39, align 8, !tbaa !239
  %i.sd = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 23, ptr %i.sd, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  %i.se = load ptr, ptr %.sroa.0485.0753, align 8, !tbaa !65
  store ptr %i.se, ptr %40, align 8, !tbaa !239
  %i.sf = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0485.0753, i64 8
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !145
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !240
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.ez

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.ex
  %.not.i338 = icmp eq ptr %0, %38
  br i1 %.not.i338, label %_ZN7rocksdb6StatusaSEOS0_.exit342, label %bb.ey

bb.ey:                                            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.si = load <4 x i8>, ptr %38, align 8, !tbaa !66
  store <4 x i8> %i.si, ptr %0, align 8, !tbaa !66
  store <4 x i8> zeroinitializer, ptr %38, align 8, !tbaa !66
  %i.sj = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 4, !tbaa !196, !range !136, !noundef !137
  store i8 %i.sk, ptr %i.pe, align 4, !tbaa !135
  store i8 0, ptr %i.sj, align 4, !tbaa !135
  %i.sl = getelementptr inbounds nuw i8, ptr %38, i64 5 ; 2 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !66
  store i8 %i.sm, ptr %i.pg, align 1, !tbaa !138
  store i8 0, ptr %i.sl, align 1, !tbaa !138
  %i.sn = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !139
  store ptr null, ptr %i.sn, align 8, !tbaa !139
  %i.sp = load ptr, ptr %i.pi, align 8, !tbaa !139 ; 2 uses
  store ptr %i.so, ptr %i.pi, align 8, !tbaa !139
  %.not.i.i.i.i.i339 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i.i.i.i339, label %_ZN7rocksdb6StatusaSEOS0_.exit342, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i340

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i340: ; preds = %bb.ey
  call void @_ZdaPv(ptr noundef nonnull %i.sp) #28
  br label %_ZN7rocksdb6StatusaSEOS0_.exit342

_ZN7rocksdb6StatusaSEOS0_.exit342:                ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %bb.ey, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i340
  %i.sq = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !139 ; 2 uses
  %.not.i.i343 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i343, label %_ZN7rocksdb6StatusD2Ev.exit346, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i344

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i344: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit342
  call void @_ZdaPv(ptr noundef nonnull %i.sr) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit346

_ZN7rocksdb6StatusD2Ev.exit346:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit342, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %.loopexit684

bb.ez:                                            ; preds = %bb.ex
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %.loopexit.split-lp

bb.fa:                                            ; preds = %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backERKS2_.exit.thread, %_ZN7rocksdb19SuperVersionContextD2Ev.exit
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0485.0753, i64 1008 ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.ot
  br i1 %i.su, label %.loopexit684, label %bb.dr

.loopexit684:                                     ; preds = %bb.fa, %bb.dq, %_ZN7rocksdb6StatusD2Ev.exit346
  %.pr636 = load i8, ptr %0, align 8, !tbaa !127
  %i.sv = icmp eq i8 %.pr636, 0
  br i1 %i.sv, label %.preheader, label %.thread645.thread

.preheader:                                       ; preds = %.loopexit684
  %i.sw = load ptr, ptr %i.g, align 8, !tbaa !1087
  %i.sx = load ptr, ptr %3, align 8, !tbaa !1092  ; 2 uses
  %.not766 = icmp eq ptr %i.sw, %i.sx
  br i1 %.not766, label %.thread638.thread, label %.lr.ph757

.lr.ph757:                                        ; preds = %.preheader, %bb.fc
  %i.sy = phi ptr [ %i.tk, %bb.fc ], [ %i.sx, %.preheader ]
  %.094756 = phi i64 [ %i.ti, %bb.fc ], [ 0, %.preheader ] ; 3 uses
  %i.sz = load ptr, ptr %4, align 8, !tbaa !1090
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %.094756
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !946 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !133
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = invoke noundef ptr %i.te(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fb:                                            ; preds = %.lr.ph757
  %i.tg = getelementptr inbounds nuw [1008 x i8], ptr %i.sy, i64 %.094756 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  invoke void @_ZN7rocksdb6DBImpl36MaybeInitBlobDirectWriteColumnFamilyEPNS_16ColumnFamilyDataERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(7336) %i.bd, ptr noundef %i.tf, ptr noundef nonnull align 8 dereferenceable(976) %i.th, ptr noundef nonnull align 8 dereferenceable(32) %i.tg)
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %bb.fb
  %i.ti = add nuw i64 %.094756, 1                 ; 2 uses
  %i.tj = load ptr, ptr %i.g, align 8, !tbaa !1087
  %i.tk = load ptr, ptr %3, align 8, !tbaa !1092  ; 2 uses
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = sdiv exact i64 %i.tn, 1008
  %i.tp = icmp ult i64 %i.ti, %i.to
  br i1 %i.tp, label %.lr.ph757, label %.thread638, !llvm.loop !1710

.thread638:                                       ; preds = %bb.fc
  %.pr640.pr.pre = load i8, ptr %0, align 8, !tbaa !127
  %i.tq = icmp eq i8 %.pr640.pr.pre, 0
  br i1 %i.tq, label %.thread638.thread, label %.thread645.thread

.thread638.thread:                                ; preds = %.preheader, %.thread638
  %i.tr = getelementptr inbounds nuw i8, ptr %i.bd, i64 1323
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !1730, !range !136, !noundef !137
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.fd, label %.thread989

bb.fd:                                            ; preds = %.thread638.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  invoke void @_ZN7rocksdb19SuperVersionContextC2Eb(ptr noundef nonnull align 8 dereferenceable(536) %41, i1 noundef zeroext true)
          to label %bb.fe unwind label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  %i.tu = getelementptr inbounds nuw i8, ptr %i.bd, i64 3192
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !944 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !133
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 48
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef ptr %i.ty(ptr noundef nonnull align 8 dereferenceable(32) %i.tv)
          to label %bb.ff unwind label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN7rocksdb6DBImpl34InstallSuperVersionForConfigChangeEPNS_16ColumnFamilyDataEPNS_19SuperVersionContextE(ptr noundef nonnull align 64 dereferenceable(7336) %i.bd, ptr noundef %i.tz, ptr noundef nonnull %41)
          to label %bb.fg unwind label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN7rocksdb19SuperVersionContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(536) %41)
          to label %bb.fh unwind label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  invoke void @_ZN7rocksdb6DBImpl35PersistentStatsProcessFormatVersionEv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %42, ptr noundef nonnull align 64 dereferenceable(7336) %i.bd)
          to label %bb.fi unwind label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.ua = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %42) #29 ; 0 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !139 ; 2 uses
  %.not.i.i347 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i347, label %bb.fo, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i348

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i348: ; preds = %bb.fi
  call void @_ZdaPv(ptr noundef nonnull %i.uc) #28
  br label %bb.fo

bb.fj:                                            ; preds = %bb.fd
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fh
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn168 = phi { ptr, i32 } [ %i.uf, %bb.fl ], [ %i.ue, %bb.fk ]
  call void @_ZN7rocksdb19SuperVersionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %41) #29
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fj
  %.pn168.pn = phi { ptr, i32 } [ %.pn168, %bb.fm ], [ %i.ud, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %.loopexit.split-lp

bb.fo:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i348, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @_ZN7rocksdb19SuperVersionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  %.pr643.pre = load i8, ptr %0, align 8, !tbaa !127
  %i.ug = icmp eq i8 %.pr643.pre, 0
  br i1 %i.ug, label %.thread989, label %.thread649

.thread989:                                       ; preds = %.thread638.thread, %bb.fo
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.ui = load ptr, ptr %i.uh, align 16, !tbaa !674
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 64
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !677
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 448
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !691 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.bd, i64 3832
  %i.uo = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.not.i356 = icmp eq ptr %0, %43
  %i.uq = getelementptr inbounds nuw i8, ptr %43, i64 4 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %43, i64 5 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.uu = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fx, %.thread989
  %.pn = phi ptr [ %i.um, %.thread989 ], [ %.sroa.0480.0, %bb.fx ]
  %.sroa.0480.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 2856
  %.sroa.0480.0 = load ptr, ptr %.sroa.0480.0.in, align 8, !tbaa !783 ; 5 uses
  %.not680 = icmp eq ptr %.sroa.0480.0, %i.um
  br i1 %.not680, label %bb.fy, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0480.0, i64 2760 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !991 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 10192
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !1733 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !133
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 192
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = invoke noundef zeroext i1 %i.vc(ptr noundef nonnull align 8 dereferenceable(16) %i.uz)
          to label %.noexc351 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1711

.noexc351:                                        ; preds = %bb.fq
  br i1 %i.vd, label %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit, label %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit.thread

_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit: ; preds = %.noexc351
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ux, i64 7609
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !1800, !range !136, !noundef !137
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit.thread, label %bb.fr

_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit.thread: ; preds = %.noexc351, %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit
  store i8 0, ptr %i.un, align 8, !tbaa !1801
  br label %bb.fr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fb, %.lr.ph757, %bb.fq, %bb.fs, %bb.dt, %_ZNKSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.dr, %_ZNSt6vectorIPN7rocksdb18ColumnFamilyHandleESaIS2_EE9push_backEOS2_.exit, %bb.do, %bb.dl, %bb.dy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fr:                                            ; preds = %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit.thread, %_ZNK7rocksdb8MemTable19IsSnapshotSupportedEv.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0480.0, i64 1712
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !1126
  %.not.i352 = icmp eq ptr %i.vi, null
  br i1 %.not.i352, label %bb.fx, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.vj = load ptr, ptr %i.uw, align 8, !tbaa !991
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 10192
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1733 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !133
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 184
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = invoke noundef zeroext i1 %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vl)
          to label %_ZNK7rocksdb8MemTable24IsMergeOperatorSupportedEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1712

_ZNK7rocksdb8MemTable24IsMergeOperatorSupportedEv.exit: ; preds = %bb.fs
  br i1 %i.vp, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %_ZNK7rocksdb8MemTable24IsMergeOperatorSupportedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  store ptr @.str.119, ptr %44, align 8, !tbaa !239
  store i64 103, ptr %i.uo, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0480.0, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !65 ; 3 uses
  store ptr %i.vr, ptr %45, align 8, !tbaa !239
  %i.vs = icmp eq ptr %i.vr, null
  br i1 %i.vs, label %_ZN7rocksdb5SliceC2EPKc.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vr) #33
  br label %_ZN7rocksdb5SliceC2EPKc.exit

_ZN7rocksdb5SliceC2EPKc.exit:                     ; preds = %bb.ft, %bb.fu
  %i.vu = phi i64 [ %i.vt, %bb.fu ], [ 0, %bb.ft ]
  store i64 %i.vu, ptr %i.up, align 8, !tbaa !240
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit355 unwind label %bb.fw

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit355: ; preds = %_ZN7rocksdb5SliceC2EPKc.exit
  %.pre825 = load ptr, ptr %i.uu, align 8, !tbaa !139 ; 2 uses
  br i1 %.not.i356, label %_ZN7rocksdb6StatusaSEOS0_.exit360, label %bb.fv

bb.fv:                                            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit355
  %i.vv = load <4 x i8>, ptr %43, align 8, !tbaa !66
  store <4 x i8> %i.vv, ptr %0, align 8, !tbaa !66
  store <4 x i8> zeroinitializer, ptr %43, align 8, !tbaa !66
  %i.vw = load i8, ptr %i.uq, align 4, !tbaa !196, !range !136, !noundef !137
  store i8 %i.vw, ptr %i.ur, align 4, !tbaa !135
  store i8 0, ptr %i.uq, align 4, !tbaa !135
  %i.vx = load i8, ptr %i.us, align 1, !tbaa !66
  store i8 %i.vx, ptr %i.ut, align 1, !tbaa !138
end_hunk_1
begin_hunk_2_@_ZN7rocksdb13InternalStats15CompactionStats3AddERKS1_:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !2119
  %i.dk = add i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !2119
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !2127
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !2127
  %i.dp = add nsw i32 %i.do, %i.dm
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !2127
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !2128
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !2128
  %i.du = add nsw i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !2128
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !2129
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !2129
  %i.dz = add nsw i32 %i.dy, %i.dw
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !2129
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !2130
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !2130
  %i.ee = add nsw i32 %i.ed, %i.eb
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !2130
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1057
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1057
  %i.ej = add nsw i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !1057
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !1060
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1060
  %i.eo = add nsw i32 %i.en, %i.el
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !1060
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !1051
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !1051
  %i.et = add i64 %i.es, %i.eq
  store i64 %i.et, ptr %i.er, align 8, !tbaa !1051
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !2131
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !2131
  %i.ey = add i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !2131
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !1053
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !1053
  %i.fd = add i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !1053
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !1041
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !1041
  %i.fi = add nsw i32 %i.fh, %i.ff
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !1041
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !115
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !115
  %i.fn = add nsw i32 %i.fm, %i.fl
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !115
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !115
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !115
  %i.fs = add nsw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !115
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !115
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !115
  %i.fx = add nsw i32 %i.fw, %i.fu
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !115
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !115
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !115
  %i.gc = add nsw i32 %i.gb, %i.fz
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !115
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !115
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !115
  %i.gh = add nsw i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !115
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !115
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !115
  %i.gm = add nsw i32 %i.gl, %i.gj
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !115
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !115
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !115
  %i.gr = add nsw i32 %i.gq, %i.go
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !115
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !115
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !115
  %i.gw = add nsw i32 %i.gv, %i.gt
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !115
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !115
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !115
  %i.hb = add nsw i32 %i.ha, %i.gy
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !115
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !115
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !115
  %i.hg = add nsw i32 %i.hf, %i.hd
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !115
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !115
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !115
  %i.hl = add nsw i32 %i.hk, %i.hi
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !115
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !115
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !115
  %i.hq = add nsw i32 %i.hp, %i.hn
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !115
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !115
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !115
  %i.hv = add nsw i32 %i.hu, %i.hs
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !115
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !115
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !115
  %i.ia = add nsw i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !115
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !115
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !115
  %i.if = add nsw i32 %i.ie, %i.ic
  store i32 %i.if, ptr %i.id, align 4, !tbaa !115
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !115
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !115
  %i.ik = add nsw i32 %i.ij, %i.ih
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !115
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.im = load i32, ptr %i.il, align 4, !tbaa !115
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !115
  %i.ip = add nsw i32 %i.io, %i.im
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !115
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !115
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !115
  %i.iu = add nsw i32 %i.it, %i.ir
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !115
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !115
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !115
  %i.iz = add nsw i32 %i.iy, %i.iw
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !115
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !115
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !115
  %i.je = add nsw i32 %i.jd, %i.jb
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !115
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !115
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !115
  %i.jj = add nsw i32 %i.ji, %i.jg
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !115
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(976) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1092   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775296
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #31
  unreachable

_ZNKSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 1008                ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9150170671482912)
  %i.l = select i1 %i.j, i64 9150170671482912, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 1008               ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(976) %3)
          to label %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !146, !alias.scope !2139
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !65, !alias.scope !2140 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !145, !alias.scope !2140 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !2141
  br label %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !65, !alias.scope !2139
  %i.z = load i64, ptr %i.t, align 8, !tbaa !66, !alias.scope !2140
  store i64 %i.z, ptr %i.r, align 8, !tbaa !66, !alias.scope !2139
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !145, !alias.scope !2140
  br label %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !145, !alias.scope !2139
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !65, !alias.scope !2140
  store i64 0, ptr %i.ab, align 8, !tbaa !145, !alias.scope !2140
  store i8 0, ptr %i.t, align 8, !tbaa !66, !alias.scope !2140
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  tail call void @_ZN7rocksdb19ColumnFamilyOptionsC2EOS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.ad, ptr noundef nonnull align 8 dereferenceable(976) %i.ae) #29
  tail call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ae) #29
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !65, !alias.scope !2140 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !66, !alias.scope !2140
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 1008 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1008 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2135

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb22ColumnFamilyDescriptorEEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_19ColumnFamilyOptionsEEEEvRS2_PT_DpOT0_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1008 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.al, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i30 = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.am, ptr %.012.i.i.i29, align 8, !tbaa !146, !alias.scope !2142
  %i.an = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !65, !alias.scope !2143 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 7 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.d:                                             ; preds = %.lr.ph.i.i.i28
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !145, !alias.scope !2143 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !2144
  br label %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.an, ptr %.012.i.i.i29, align 8, !tbaa !65, !alias.scope !2142
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !66, !alias.scope !2143
  store i64 %i.au, ptr %i.am, align 8, !tbaa !66, !alias.scope !2142
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !145, !alias.scope !2143
  br label %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i34

_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.d
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !145, !alias.scope !2142
  store ptr %i.ao, ptr %.0911.i.i.i30, align 8, !tbaa !65, !alias.scope !2143
  store i64 0, ptr %i.aw, align 8, !tbaa !145, !alias.scope !2143
  store i8 0, ptr %i.ao, align 8, !tbaa !66, !alias.scope !2143
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  tail call void @_ZN7rocksdb19ColumnFamilyOptionsC2EOS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.ay, ptr noundef nonnull align 8 dereferenceable(976) %i.az) #29
  tail call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.az) #29
  %i.ba = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !65, !alias.scope !2143 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35: ; preds = %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i34
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !66, !alias.scope !2143
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZSt12construct_atIN7rocksdb22ColumnFamilyDescriptorEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 1008 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 1008 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i28, !llvm.loop !2135

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40: ; preds = %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.al, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bf, %_ZSt19__relocate_object_aIN7rocksdb22ColumnFamilyDescriptorES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1086
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #28
  br label %_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !1092
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !1087
  %i.bk = getelementptr inbounds nuw [1008 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !1086
  ret void

bb.f:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #29 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bl

bb.i:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #32
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(976) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  %i.b = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145  ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !134

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !65
  store i64 %i.d, ptr %i.a, align 8, !tbaa !66
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !66
  store i8 %i.k, ptr %i.j, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.n, ptr noundef nonnull align 8 dereferenceable(976) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.a, align 8, !tbaa !66
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull align 8 dereferenceable(976) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7rocksdb27AdvancedColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(662) %0, ptr noundef nonnull align 8 dereferenceable(662) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !183
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !128
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !115
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !115
  br label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !183
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !183
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !128
  %.not.i.i.i17 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i17, label %_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i18 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.r, align 4, !tbaa !115
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !115
  br label %_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(121) %i.w, ptr noundef nonnull align 8 dereferenceable(121) %i.x, i64 121, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !183
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !183
  %.not.i.i.i19 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i19, label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i20 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !115
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !115
  br label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb18CompressionManagerEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEEC2ERKS2_.exit, %bb.i, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 856
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v4i64
!886 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEEEEE", !60, i64 0}
!887 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !60, i64 0}
!888 = !{!"_ZTSNSt10_HashtableImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !886, i64 0, !887, i64 8}
!889 = !{!888, !887, i64 8}
!890 = !{!622, !67, i64 936}
!891 = !{!622, !67, i64 935}
!892 = !{!882, !63, i64 24}
!893 = !{!882, !154, i64 16}
!894 = !{!284, !284, i64 0}
!895 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN7rocksdb11WalMetadataEESt10_Select1stIS4_ESt4lessImESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !441, i64 0, !251, i64 8}
!896 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN7rocksdb11WalMetadataEESt10_Select1stIS4_ESt4lessImESaIS4_EE", !895, i64 0}
!897 = !{!"_ZTSSt3mapImN7rocksdb11WalMetadataESt4lessImESaISt4pairIKmS1_EEE", !896, i64 0}
!898 = !{!"_ZTSN7rocksdb6WalSetE", !897, i64 0, !63, i64 48}
!899 = !{!69, !69, i64 0}
!900 = !{i64 0, i64 1, !196, i64 1, i64 1, !196, i64 2, i64 1, !196, i64 3, i64 1, !196, i64 4, i64 1, !196, i64 5, i64 1, !196, i64 8, i64 8, !144, i64 16, i64 1, !196, i64 17, i64 1, !196, i64 24, i64 8, !144, i64 32, i64 8, !144, i64 40, i64 8, !899}
!901 = !{!158, !63, i64 24}
!902 = !{!156, !156, i64 0}
!903 = !{i64 0, i64 4, !902, i64 8, i64 8, !144}
!904 = !{!158, !154, i64 48}
!905 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !60, i64 0}
!906 = !{!905, !905, i64 0}
!907 = !{!381, !378, i64 137}
!908 = !{!381, !379, i64 138}
!909 = !{!381, !380, i64 140}
!910 = !{!381, !173, i64 208}
!911 = !{!"_ZTSSt4pairIiN7rocksdb12FileMetaDataEE", !57, i64 0, !867, i64 8}
!912 = !{!911, !57, i64 0}
!913 = !{!255, !255, i64 0}
!914 = !{!"_ZTSSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !153, i64 0, !63, i64 8, !155, i64 16, !63, i64 24, !157, i64 32, !154, i64 48}
!915 = !{!914, !63, i64 24}
!916 = !{!914, !63, i64 8}
!917 = !{!914, !153, i64 0}
!918 = !{!494, !63, i64 0}
!919 = !{!494, !489, i64 72}
!920 = !{!490, !489, i64 8}
!921 = !{!490, !489, i64 16}
!922 = !{!490, !489, i64 0}
!923 = !{!"p2 _ZTSN7rocksdb11VersionEditE", !152, i64 0}
!924 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb11VersionEditESaIS2_EE17_Vector_impl_dataE", !923, i64 0, !923, i64 8, !923, i64 16}
!925 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb11VersionEditESaIS2_EE12_Vector_implE", !924, i64 0}
!926 = !{!"_ZTSSt12_Vector_baseIPN7rocksdb11VersionEditESaIS2_EE", !925, i64 0}
!927 = !{!"_ZTSSt6vectorIPN7rocksdb11VersionEditESaIS2_EE", !926, i64 0}
!928 = !{!"_ZTSN7rocksdb10autovectorIPNS_11VersionEditELm8EEE", !63, i64 0, !56, i64 8, !923, i64 72, !927, i64 80}
!929 = !{!928, !63, i64 0}
!930 = !{!928, !923, i64 72}
!931 = !{!924, !923, i64 0}
!932 = !{!924, !923, i64 8}
!933 = !{!924, !923, i64 16}
!934 = !{!"_ZTSSt4pairIKjjE", !57, i64 0, !57, i64 4}
!935 = !{!934, !57, i64 0}
!936 = !{!934, !57, i64 4}
!937 = !{!"p1 _ZTSN7rocksdb11VersionEditE", !60, i64 0}
!938 = !{!937, !937, i64 0}
!939 = !{!"_ZTSSt10_HashtableIiSt4pairIKiN7rocksdb11VersionEditEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !153, i64 0, !63, i64 8, !155, i64 16, !63, i64 24, !157, i64 32, !154, i64 48}
!940 = !{!939, !153, i64 0}
!941 = !{!939, !63, i64 8}
!942 = !{!939, !154, i64 16}
!943 = !{!622, !67, i64 3200}
!944 = !{!622, !357, i64 3192}
!945 = !{!"p1 _ZTSN7rocksdb18ColumnFamilyHandleE", !60, i64 0}
!946 = !{!945, !945, i64 0}
!947 = !{!631, !60, i64 16}
!948 = !{!"p1 _ZTSSt8functionIFvRKN7rocksdb6StatusEEE", !60, i64 0}
!949 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvRKN7rocksdb6StatusEEESaIS6_EE17_Vector_impl_dataE", !948, i64 0, !948, i64 8, !948, i64 16}
!950 = !{!949, !948, i64 0}
!951 = !{!949, !948, i64 8}
!952 = !{!949, !948, i64 16}
!953 = !{!622, !101, i64 1304}
!954 = !{!782, !63, i64 2872}
!955 = !{!622, !97, i64 1281}
!956 = !{!"_ZTSN7rocksdb3log6Reader8ReporterE"}
!957 = !{!"p1 _ZTSN7rocksdb6StatusE", !60, i64 0}
!958 = !{!"p1 bool", !60, i64 0}
!959 = !{!"_ZTSN7rocksdb27DBOpenLogRecordReadReporterE", !956, i64 0, !68, i64 8, !77, i64 16, !61, i64 24, !957, i64 32, !958, i64 40, !63, i64 48}
!960 = !{!959, !77, i64 16}
!961 = !{!959, !957, i64 32}
!962 = !{!959, !61, i64 24}
!963 = !{!959, !63, i64 48}
!964 = !{!959, !958, i64 40}
!965 = !{!376, !77, i64 0}
!966 = !{!"p1 _ZTSN7rocksdb9LogBufferE", !60, i64 0}
!967 = !{!"p1 _ZTSN7rocksdb10JSONWriterE", !60, i64 0}
!968 = !{!"_ZTSN7rocksdb17EventLoggerStreamE", !77, i64 0, !966, i64 8, !63, i64 16, !967, i64 24}
!969 = !{!968, !967, i64 24}
!970 = !{!"_ZTSSt4pairIKiN7rocksdb11VersionEditEE", !57, i64 0, !290, i64 8}
!971 = !{!970, !57, i64 0}
!972 = !{!"_ZTSN7rocksdb10JSONWriter15JSONWriterStateE", !56, i64 0}
!973 = !{!"_ZTSSo"}
!974 = !{!"p1 _ZTSNSt6locale5_ImplE", !60, i64 0}
!975 = !{!"_ZTSSt6locale", !974, i64 0}
!976 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !975, i64 56}
!977 = !{!"_ZTSSt13_Ios_Openmode", !56, i64 0}
!978 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !976, i64 0, !977, i64 64, !64, i64 72}
!979 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !973, i64 0, !978, i64 8}
!980 = !{!"_ZTSN7rocksdb10JSONWriterE", !972, i64 0, !67, i64 4, !67, i64 5, !979, i64 8}
!981 = !{!980, !972, i64 0}
!982 = !{!980, !67, i64 4}
!983 = !{!980, !67, i64 5}
!984 = !{!622, !67, i64 1282}
!985 = !{!"p1 _ZTSN7rocksdb3log6ReaderE", !60, i64 0}
!986 = !{!985, !985, i64 0}
!987 = !{!359, !359, i64 0}
!988 = !{!"_ZTSSt8functionIFvvEE", !631, i64 0, !60, i64 24}
!989 = !{!988, !60, i64 24}
!990 = !{!939, !63, i64 24}
!991 = !{!782, !755, i64 2760}
!992 = !{!"p1 _ZTSN7rocksdb16FSSequentialFileE", !60, i64 0}
!993 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb16FSSequentialFileELb0EE", !992, i64 0}
!994 = !{!992, !992, i64 0}
!995 = !{!466, !466, i64 0}
!996 = !{!"_ZTSN7rocksdb16FSSequentialFileE"}
!997 = !{!"_ZTSN7rocksdb23FSSequentialFileWrapperE", !996, i64 0, !992, i64 8}
!998 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb16FSSequentialFileESt14default_deleteIS1_EEE", !993, i64 0}
!999 = !{!"_ZTSSt5tupleIJPN7rocksdb16FSSequentialFileESt14default_deleteIS1_EEE", !998, i64 0}
!1000 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EE", !999, i64 0}
!1001 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb16FSSequentialFileESt14default_deleteIS1_ELb1ELb1EE", !1000, i64 0}
!1002 = !{!"_ZTSSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EE", !1001, i64 0}
!1003 = !{!"_ZTSN7rocksdb28FSSequentialFileOwnerWrapperE", !997, i64 0, !1002, i64 16}
!1004 = !{!"_ZTSN7rocksdb30FSSequentialFileTracingWrapperE", !1003, i64 0, !330, i64 24, !312, i64 40, !64, i64 48}
!1005 = !{!622, !67, i64 2888}
!1006 = !{!622, !67, i64 2889}
!1007 = !{!861, !63, i64 32}
!1008 = !{!861, !63, i64 40}
!1009 = !{!867, !67, i64 416}
!1010 = !{!"p1 _ZTSN7rocksdb8SnapshotE", !60, i64 0}
!1011 = !{!"p1 _ZTSN7rocksdb5SliceE", !60, i64 0}
!1012 = !{!"_ZTSN7rocksdb8ReadTierE", !56, i64 0}
!1013 = !{!"_ZTSSt22_Optional_payload_baseImE", !56, i64 0, !67, i64 8}
!1014 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !1013, i64 0}
!1015 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !1014, i64 0}
!1016 = !{!"_ZTSSt8optionalImE", !1015, i64 0}
!1017 = !{!"_ZTSSt8functionIFbRKN7rocksdb15TablePropertiesEEE", !631, i64 0, !60, i64 24}
!1018 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !60, i64 0}
!1019 = !{!"p1 _ZTSN7rocksdb29ReadScopedBlockBufferProviderE", !60, i64 0}
!1020 = !{!"_ZTSN7rocksdb11ReadOptionsE", !1010, i64 0, !1011, i64 8, !1011, i64 16, !148, i64 24, !148, i64 32, !1012, i64 40, !150, i64 44, !63, i64 48, !1016, i64 56, !67, i64 72, !67, i64 73, !67, i64 74, !67, i64 75, !67, i64 76, !63, i64 80, !63, i64 88, !1011, i64 96, !1011, i64 104, !67, i64 112, !67, i64 113, !67, i64 114, !67, i64 115, !67, i64 116, !67, i64 117, !67, i64 118, !1017, i64 120, !67, i64 152, !67, i64 153, !67, i64 154, !1018, i64 160, !1019, i64 168, !160, i64 176, !173, i64 184}
!1021 = !{!1020, !150, i64 44}
!1022 = !{!1020, !63, i64 48}
!1023 = !{!1013, !67, i64 8}
!1024 = !{!1020, !67, i64 76}
!1025 = !{!1020, !67, i64 152}
!1026 = !{!1020, !67, i64 153}
!1027 = !{!1020, !67, i64 154}
!1028 = !{!1020, !173, i64 184}
!1029 = !{!1020, !160, i64 176}
!1030 = !{!695, !694, i64 0}
!1031 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !60, i64 0}
!1032 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !1031, i64 0, !1031, i64 8, !1031, i64 16}
!1033 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !1032, i64 0}
!1034 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !1033, i64 0}
!1035 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !1034, i64 0}
!1036 = !{!"_ZTSN7rocksdb12ConfigurableE", !1035, i64 8}
!1037 = !{!"_ZTSN7rocksdb12CustomizableE", !1036, i64 0}
!1038 = !{!"_ZTSN7rocksdb10ComparatorE", !1037, i64 0, !693, i64 32, !63, i64 40}
!1039 = !{!1038, !63, i64 40}
!1040 = !{!"_ZTSN7rocksdb13InternalStats15CompactionStatsE", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !57, i64 88, !57, i64 92, !57, i64 96, !57, i64 100, !57, i64 104, !57, i64 108, !63, i64 112, !63, i64 120, !63, i64 128, !57, i64 136, !56, i64 140}
!1041 = !{!1040, !57, i64 136}
!1042 = !{!"p1 _ZTSN7rocksdb32FragmentedRangeTombstoneIteratorE", !60, i64 0}
!1043 = !{!1042, !1042, i64 0}
!1044 = !{!"p1 _ZTSSt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS1_EE", !60, i64 0}
!1045 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN7rocksdb32FragmentedRangeTombstoneIteratorESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !1044, i64 0, !1044, i64 8, !1044, i64 16}
!1046 = !{!1045, !1044, i64 0}
!1047 = !{!1045, !1044, i64 8}
!1048 = !{!1045, !1044, i64 16}
!1049 = !{!725, !725, i64 0}
!1050 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1051 = !{!1040, !63, i64 112}
!1052 = !{!713, !712, i64 0}
!1053 = !{!1040, !63, i64 128}
!1054 = !{!260, !260, i64 0}
!1055 = !{!1040, !63, i64 0}
!1056 = !{!1040, !63, i64 56}
!1057 = !{!1040, !57, i64 104}
!1058 = !{!1040, !63, i64 72}
!1059 = !{!"_ZTSN7rocksdb16BlobFileAdditionE", !63, i64 0, !63, i64 8, !63, i64 16, !64, i64 24, !64, i64 56}
!1060 = !{!1040, !57, i64 108}
!1061 = !{!"_ZTSN7rocksdb6DBImpl17WalFileNumberSizeE", !63, i64 0, !63, i64 8, !67, i64 16}
!1062 = !{!1061, !63, i64 8}
!1063 = !{!1061, !67, i64 16}
!1064 = !{!401, !399, i64 48}
!1065 = !{!401, !399, i64 64}
!1066 = !{i64 0, i64 8, !144, i64 8, i64 8, !144, i64 16, i64 1, !196}
!1067 = !{!119, !119, i64 0}
!1068 = !{!126, !119, i64 2}
!1069 = !{!1061, !63, i64 0}
!1070 = !{!209, !208, i64 8}
!1071 = !{!209, !208, i64 0}
!1072 = !{!209, !208, i64 16}
!1073 = !{!208, !208, i64 0}
!1074 = !{!218, !217, i64 8}
!1075 = !{!218, !217, i64 0}
!1076 = !{!218, !217, i64 16}
!1077 = !{!217, !217, i64 0}
!1078 = !{!112, !112, i64 0}
!1079 = !{i64 0, i64 1, !1078, i64 8, i64 8, !144}
!1080 = !{!204, !60, i64 8}
!1081 = !{!204, !60, i64 0}
!1082 = !{!204, !60, i64 16}
!1083 = !{!102, !102, i64 0}
!1084 = !{!"p1 _ZTSN7rocksdb16ImmutableOptionsE", !60, i64 0}
!1085 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_Vector_impl_dataE", !197, i64 0, !197, i64 8, !197, i64 16}
!1086 = !{!1085, !197, i64 16}
!1087 = !{!1085, !197, i64 8}
!1088 = !{!"p2 _ZTSN7rocksdb18ColumnFamilyHandleE", !152, i64 0}
!1089 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb18ColumnFamilyHandleESaIS2_EE17_Vector_impl_dataE", !1088, i64 0, !1088, i64 8, !1088, i64 16}
!1090 = !{!1089, !1088, i64 0}
!1091 = !{!1089, !1088, i64 16}
!1092 = !{!1085, !197, i64 0}
!1093 = !{!"llvm.loop.peeled.count", i32 1}
!1094 = !{!"p1 _ZTSN7rocksdb2DBE", !60, i64 0}
!1095 = !{!1094, !1094, i64 0}
!1096 = !{!1089, !1088, i64 8}
!1097 = !{!375, !67, i64 152}
!1098 = !{!"p1 _ZTSN7rocksdb10autovectorIPNS_11VersionEditELm8EEE", !60, i64 0}
!1099 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EE17_Vector_impl_dataE", !1098, i64 0, !1098, i64 8, !1098, i64 16}
!1100 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EE12_Vector_implE", !1099, i64 0}
!1101 = !{!"_ZTSSt12_Vector_baseIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EE", !1100, i64 0}
!1102 = !{!"_ZTSSt6vectorIN7rocksdb10autovectorIPNS0_11VersionEditELm8EEESaIS4_EE", !1101, i64 0}
!1103 = !{!"_ZTSN7rocksdb10autovectorINS0_IPNS_11VersionEditELm8EEELm8EEE", !63, i64 0, !56, i64 8, !1098, i64 840, !1102, i64 848}
!1104 = !{!1103, !1098, i64 840}
!1105 = !{!546, !546, i64 0}
!1106 = !{!408, !407, i64 0}
!1107 = !{!408, !407, i64 8}
!1108 = !{!408, !406, i64 24}
!1109 = !{!407, !407, i64 0}
!1110 = !{!"_ZTSN7rocksdb6DBImpl15LogWriterNumberE", !63, i64 0, !546, i64 8, !67, i64 16, !63, i64 24, !63, i64 32}
!1111 = !{!1110, !546, i64 8}
!1112 = !{!400, !399, i64 0}
!1113 = !{!400, !399, i64 8}
!1114 = !{!400, !398, i64 24}
!1115 = !{!399, !399, i64 0}
!1116 = !{!758, !758, i64 0}
!1117 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb12SuperVersionESaIS2_EE17_Vector_impl_dataE", !538, i64 0, !538, i64 8, !538, i64 16}
!1118 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb12SuperVersionESaIS2_EE12_Vector_implE", !1117, i64 0}
!1119 = !{!"_ZTSSt12_Vector_baseIPN7rocksdb12SuperVersionESaIS2_EE", !1118, i64 0}
!1120 = !{!"_ZTSSt6vectorIPN7rocksdb12SuperVersionESaIS2_EE", !1119, i64 0}
!1121 = !{!"_ZTSN7rocksdb10autovectorIPNS_12SuperVersionELm8EEE", !63, i64 0, !56, i64 8, !538, i64 72, !1120, i64 80}
!1122 = !{!1121, !63, i64 0}
!1123 = !{!1117, !538, i64 0}
!1124 = !{!1117, !538, i64 8}
!1125 = !{!1117, !538, i64 16}
!1126 = !{!703, !702, i64 0}
!1127 = !{!1088, !1088, i64 0}
!1128 = !{!553, !63, i64 0}
!1129 = !{!622, !67, i64 1160}
!1130 = !{!622, !545, i64 5905}
!1131 = !{!622, !63, i64 5912}
!1132 = !{!"_ZTSN7rocksdb24AsyncWALPrecreateContextE", !359, i64 0, !114, i64 8, !63, i64 768, !63, i64 776}
!1133 = !{!1132, !359, i64 0}
!1134 = !{!1132, !63, i64 768}
!1135 = !{!1132, !63, i64 776}
!1136 = !{!"p1 _ZTSN7rocksdb24AsyncWALPrecreateContextE", !60, i64 0}
!1137 = !{!1136, !1136, i64 0}
!1138 = !{!409, !407, i64 48}
!1139 = !{!1110, !63, i64 0}
!1140 = !{!1110, !67, i64 16}
!1141 = !{!1110, !63, i64 24}
!1142 = !{!1110, !63, i64 32}
!1143 = !{!"p1 _ZTSN7rocksdb19SuperVersionContext22WriteStallNotificationE", !60, i64 0}
!1144 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EE17_Vector_impl_dataE", !1143, i64 0, !1143, i64 8, !1143, i64 16}
!1145 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EE12_Vector_implE", !1144, i64 0}
!1146 = !{!"_ZTSSt12_Vector_baseIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EE", !1145, i64 0}
!1147 = !{!"_ZTSSt6vectorIN7rocksdb19SuperVersionContext22WriteStallNotificationESaIS2_EE", !1146, i64 0}
!1148 = !{!"_ZTSN7rocksdb10autovectorINS_19SuperVersionContext22WriteStallNotificationELm8EEE", !63, i64 0, !56, i64 8, !1143, i64 392, !1147, i64 400}
!1149 = !{!1148, !1143, i64 392}
!1150 = !{!222, !63, i64 0}
!1151 = !{!222, !63, i64 56}
!1152 = !{!222, !67, i64 72}
!1153 = !{!216, !57, i64 16}
!1154 = !{!216, !57, i64 20}
!1155 = !{!216, !215, i64 24}
!1156 = !{!216, !67, i64 29}
!1157 = !{!216, !67, i64 30}
!1158 = !{!232, !57, i64 20}
!1159 = !{!232, !67, i64 40}
!1160 = !{!232, !57, i64 44}
!1161 = !{!724, !63, i64 496}
!1162 = !{!232, !63, i64 32}
!1163 = !{!1148, !63, i64 0}
!1164 = !{!1144, !1143, i64 8}
!1165 = !{!1144, !1143, i64 0}
!1166 = !{!"p2 _ZTSN7rocksdb7VersionE", !152, i64 0}
!1167 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb7VersionESaIS2_EE17_Vector_impl_dataE", !1166, i64 0, !1166, i64 8, !1166, i64 16}
!1168 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb7VersionESaIS2_EE12_Vector_implE", !1167, i64 0}
!1169 = !{!"_ZTSSt12_Vector_baseIPN7rocksdb7VersionESaIS2_EE", !1168, i64 0}
!1170 = !{!"_ZTSSt6vectorIPN7rocksdb7VersionESaIS2_EE", !1169, i64 0}
!1171 = !{!"_ZTSN7rocksdb20AsyncFileOpenContextE", !359, i64 0, !381, i64 8, !1170, i64 224}
!1172 = !{!1171, !359, i64 0}
!1173 = !{!622, !544, i64 5904}
!1174 = !{!848, !57, i64 16}
!1175 = !{!1167, !1166, i64 8}
!1176 = !{!1167, !1166, i64 16}
!1177 = !{!692, !692, i64 0}
!1178 = !{!1167, !1166, i64 0}
!1179 = !{!1103, !63, i64 0}
!1180 = !{!1099, !1098, i64 8}
!1181 = !{!1099, !1098, i64 0}
!1182 = !{!1099, !1098, i64 16}
!1183 = !{!914, !154, i64 16}
!1184 = !{!"p1 _ZTSN7rocksdb20AsyncFileOpenContextE", !60, i64 0}
!1185 = !{!"_ZTSN7rocksdb7VersionE", !68, i64 0, !312, i64 8, !678, i64 16, !77, i64 24, !81, i64 32, !725, i64 40, !739, i64 48, !702, i64 56, !848, i64 64, !323, i64 4352, !692, i64 4360, !692, i64 4368, !57, i64 4376, !381, i64 4384, !724, i64 4600, !63, i64 5336, !63, i64 5344, !330, i64 5352, !67, i64 5368}
!1186 = !{!1185, !678, i64 16}
!1187 = !{!202, !201, i64 0}
!1188 = !{!710, !709, i64 0}
!1189 = !{!227, !226, i64 0}
!1190 = !{!227, !226, i64 8}
!1191 = !{!227, !226, i64 16}
!1192 = !{!237, !63, i64 336}
!1193 = !{!281, !63, i64 0}
!1194 = !{!277, !276, i64 0}
!1195 = !{!277, !276, i64 8}
!1196 = !{!277, !276, i64 16}
!1197 = !{!250, !249, i64 24}
!1198 = !{!250, !249, i64 16}
!1199 = !{!632, !60, i64 24}
!1200 = !{i64 0, i64 16, !66}
!1201 = !{!"_ZTSN7rocksdb14FSWritableFileE", !63, i64 8, !63, i64 16, !150, i64 24, !380, i64 28, !67, i64 32}
!1202 = !{!1201, !150, i64 24}
!1203 = !{!"_ZTSN7rocksdb21FSWritableFileWrapperE", !1201, i64 0, !319, i64 40}
!1204 = !{!1203, !319, i64 40}
!1205 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EE", !312, i64 0, !71, i64 8}
!1206 = !{!1205, !312, i64 0}
!1207 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !63, i64 0}
!1208 = !{!1207, !63, i64 0}
!1209 = !{!923, !923, i64 0}
!1210 = !{!"llvm.loop.unroll.disable"}
!1211 = !{!241, !241, i64 0}
!1212 = !{!265, !265, i64 0}
!1213 = !{!270, !270, i64 0}
!1214 = !{!157, !63, i64 8}
!1215 = !{!282, !63, i64 3440}
!1216 = !{!250, !249, i64 8}
!1217 = !{!997, !992, i64 8}
!1218 = !{!721, !57, i64 856}
!1219 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !60, i64 0}
!1220 = !{!"_ZTSNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !1219, i64 0, !905, i64 8}
!1221 = !{!1220, !1219, i64 0}
!1222 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !60, i64 0}
!1223 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE", !60, i64 0}
!1224 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !1222, i64 0, !1223, i64 8}
!1225 = !{!1224, !1223, i64 8}
!1226 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN7rocksdb11VersionEditEELb0EEEEEE", !60, i64 0}
!1227 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKiN7rocksdb11VersionEditEELb0EEE", !60, i64 0}
!1228 = !{!"_ZTSNSt10_HashtableIiSt4pairIKiN7rocksdb11VersionEditEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !1226, i64 0, !1227, i64 8}
!1229 = !{!1228, !1227, i64 8}
!1230 = !{!400, !399, i64 16}
!1231 = !{!401, !63, i64 8}
!1232 = !{!401, !398, i64 0}
!1233 = !{!401, !398, i64 72}
!1234 = !{!408, !407, i64 16}
!1235 = !{!409, !63, i64 8}
!1236 = !{!409, !406, i64 0}
!1237 = !{!409, !406, i64 72}
!1238 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7rocksdb18WriteBufferManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1239 = distinct !{!1239, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!1240 = distinct !{!1240, !1239, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!1241 = distinct !{!1241, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!1242 = distinct !{!1242, !1241, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!1243 = distinct !{!1243, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!1244 = distinct !{!1244, !1243, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!1245 = distinct !{!1245, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!1246 = distinct !{!1246, !1245, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!1247 = distinct !{!1247, !177}
!1248 = distinct !{!1248, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!1249 = distinct !{!1249, !1248, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!1250 = distinct !{!1250, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!1251 = distinct !{!1251, !1250, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!1252 = distinct !{null, null, null, null}
!1253 = distinct !{null, null, null, null}
!1254 = !{!114, !68, i64 16}
!1255 = !{!114, !57, i64 76}
!1256 = !{!77, !77, i64 0}
!1257 = !{!90, !89, i64 0}
!1258 = !{!114, !63, i64 368}
!1259 = !{!89, !89, i64 0}
!1260 = !{!114, !57, i64 236}
!1261 = !{!114, !57, i64 228}
!1262 = !{!114, !57, i64 224}
!1263 = !{!72, !69, i64 0}
!1264 = !{!114, !63, i64 416}
!1265 = !{!114, !63, i64 472}
!1266 = !{!114, !63, i64 304}
!1267 = !{!114, !63, i64 264}
!1268 = !{!114, !67, i64 272}
!1269 = !{!1240}
!1270 = !{!1242}
!1271 = !{!1244}
!1272 = !{!1246}
!1273 = !{!114, !67, i64 514}
!1274 = !{!1249}
!1275 = !{!1251}
!1276 = !{!114, !102, i64 551}
!1277 = distinct !{null, null, null}
!1278 = distinct !{null, null, null}
!1279 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1280 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1281 = distinct !{!1281, !177}
!1282 = !{!237, !67, i64 402}
!1283 = distinct !{!1283, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!1284 = distinct !{!1284, !1283, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!1285 = !{!114, !57, i64 84}
!1286 = !{!114, !67, i64 328}
!1287 = !{!114, !67, i64 330}
end_hunk_3
