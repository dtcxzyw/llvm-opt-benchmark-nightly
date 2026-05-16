inline.NumInlined: 642
inline.NumDeleted: 360
begin_hunk_0_@_ZN12v8_inspector8protocol6Binary10fromBase64ERKNS_8String16EPb:bb.a
bb.bd:                                            ; preds = %_ZN12v8_inspector8protocol6BinaryC2ESt10shared_ptrISt6vectorIhSaIhEEE.exit
  %i.em = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = add nsw i32 %i.ef, -1
  store i32 %i.en, ptr %i.dv, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.eo = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i = phi i32 [ %i.ef, %bb.be ], [ %i.eo, %bb.bf ]
  %i.ep = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ep, label %bb.bg, label %_ZNSt6vectorIhSaIhEED2Ev.exit, !prof !29

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.critedge:                                        ; preds = %_ZNK2v85MaybeIhE2ToEPh.exit, %_ZNK2v85MaybeIhE2ToEPh.exit47, %bb.z, %_ZN12v8_inspector8protocol12_GLOBAL__N_110DecodeByteEc.exit67, %_ZN12v8_inspector8protocol12_GLOBAL__N_110DecodeByteEc.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18, !noalias !30 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 1, ptr %i.es, align 8, !noalias !30
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 1, ptr %i.et, align 4, !noalias !30
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIhSaIhEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.er, align 8, !noalias !30
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false), !noalias !30
  store ptr %i.er, ptr %i.eq, align 8
  store ptr %i.eu, ptr %0, align 8
  %.not.i.i.i124 = icmp eq ptr %.sroa.0148.0210, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %.critedge
  %i.ev = ptrtoint ptr %.sroa.29.0208 to i64
  %i.ew = ptrtoint ptr %.sroa.0148.0210 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0148.0210, i64 noundef %i.ex) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc, %bb.bh, %.critedge, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN12v8_inspector10toV8StringEPN2v87IsolateERKNS_8String16E(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = add i64 %i.c, 688
  %i.e = inttoptr i64 %i.d to ptr
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = trunc i64 %i.b to i32
  %i.h = tail call ptr @_ZN2v86String14NewFromTwoByteEPNS_7IsolateEPKtNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.g) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #16
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.d ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v86String14NewFromTwoByteEPNS_7IsolateEPKtNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN12v8_inspector22toV8StringInternalizedEPN2v87IsolateERKNS_8String16E(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = add i64 %i.c, 688
  %i.e = inttoptr i64 %i.d to ptr
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = trunc i64 %i.b to i32
  %i.h = tail call ptr @_ZN2v86String14NewFromTwoByteEPNS_7IsolateEPKtNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 1, i32 noundef %i.g) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #16
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN12v8_inspector22toV8StringInternalizedEPN2v87IsolateEPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef -1) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #16
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN12v8_inspector10toV8StringEPN2v87IsolateERKNS_10StringViewE(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = add i64 %i.c, 688
  %i.e = inttoptr i64 %i.d to ptr
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 8, !range !31, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.i, i32 noundef 0, i32 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10, !prof !29

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #16
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10

bb.f:                                             ; preds = %bb.c
  %i.m = tail call ptr @_ZN2v86String14NewFromTwoByteEPNS_7IsolateEPKtNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.i, i32 noundef 0, i32 noundef %i.j) #16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10, !prof !29

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #16
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit10: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.e ], [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8                ; 3 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2
  %.not.i = icmp eq i16 %i.j, 131
  br i1 %.not.i, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit, label %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit:     ; preds = %bb.c
  %i.k = add i64 %i.b, 39
  %i.l = inttoptr i64 %i.k to ptr
  %.shift = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %3 = load i32, ptr %.shift, align 4
  %i.m = add i32 %3, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %bb.d, label %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit

bb.d:                                             ; preds = %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8
  br label %bb.e

_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit
  %i.s = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #16 ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #18 ; 3 uses
  tail call void @_ZNK2v86String7WriteV2EPNS_7IsolateEjjPti(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %1, i32 noundef 0, i32 noundef %i.s, ptr noundef nonnull %i.v, i32 noundef 0) #16
  tail call void @_ZN12v8_inspector8String16C1EPKDsm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.v, i64 noundef %i.t) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_DsSt14default_deleteIS0_EED2Ev.exit, %bb.d
  ret void
}

declare noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare void @_ZNK2v86String7WriteV2EPNS_7IsolateEjjPti(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN12v8_inspector8String16C1EPKDsm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector29toProtocolStringWithTypeCheckEPN2v87IsolateENS0_5LocalINS0_5ValueEEE(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %bb.b
  %i.e = add nsw i64 %i.b, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp ult i16 %i.j, 128
  br i1 %i.k, label %bb.c, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %bb.b, %_ZNK2v85Value13QuickIsStringEv.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.o, align 8
  br label %bb.d

bb.c:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  tail call void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef %1, ptr nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v85Value13QuickIsStringEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector10toString16ERKNS_10StringViewE(ptr dead_on_unwind noalias writable sret(%"class.v8_inspector::String16") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 8, !range !31, !noundef !30
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN12v8_inspector8String16C1EPKcm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.j, i64 noundef %i.b) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN12v8_inspector8String16C1EPKtm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.j, i64 noundef %i.b) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

declare void @_ZN12v8_inspector8String16C1EPKcm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN12v8_inspector8String16C1EPKtm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN12v8_inspector12toStringViewERKNS_8String16E(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8_inspector::StringView") align 8 captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN12v8_inspector20stringViewStartsWithERKNS_10StringViewEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %.not33 = icmp eq i8 %i.c, 0
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !range !31, !noundef !30
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr %1, align 1                 ; 3 uses
  %.not3649.not = icmp eq i8 %i.f, 0              ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.c
  br i1 %.not3649.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.f

.preheader:                                       ; preds = %bb.c
  br i1 %.not3649.not, label %.critedge, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph52, %bb.e
  %i.k = phi i8 [ %i.f, %.lr.ph52 ], [ %i.r, %bb.e ]
  %.02951 = phi i64 [ 0, %.lr.ph52 ], [ %i.p, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.02951
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = sext i8 %i.k to i32
  %.not37 = icmp eq i32 %i.n, %i.o                ; 3 uses
  br i1 %.not37, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw i64 %.02951, 1                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not36 = icmp ne i8 %i.r, 0
  %i.s = icmp ult i64 %i.p, %i.b
  %or.cond = and i1 %.not36, %i.s
end_hunk_0
