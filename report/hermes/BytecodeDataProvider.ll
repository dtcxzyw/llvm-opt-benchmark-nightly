inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0_@_ZNK6hermes3hbc20BCProviderFromBuffer17getExceptionTableEj:bb.a
  unreachable

_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.d ], [ %i.ab, %bb.f ]
  %.sroa.6.0.i = phi i64 [ 0, %bb.d ], [ %i.ag, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6hermes3hbc20BCProviderFromBuffer15getDebugOffsetsEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187, !noalias !248
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181, !noalias !248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.h = load i8, ptr %i.g, align 1, !noalias !248 ; 3 uses
  %i.i = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 1, !noalias !248 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.d, align 1, !noalias !248
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 33554431
  %i.p = or i32 %i.o, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %i.k, 33554431
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi ptr [ %i.v, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = and i8 %i.h, 8
  %.not7.i = icmp eq i8 %i.w, 0
  br i1 %.not7.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %storemerge.i to i64
  %i.y = add i64 %i.x, 3
  %i.z = and i64 %i.y, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !235, !noalias !248
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183, !noalias !248 ; 2 uses
  %i.ag = icmp ugt ptr %i.ab, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %bb.f, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = udiv i64 %i.aj, 12
  %i.al = icmp samesign ult i64 %i.ak, %i.ad
  br i1 %i.al, label %.critedge.i.i, label %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit.i, !prof !53

.critedge.i.i:                                    ; preds = %bb.f, %bb.e
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21, !noalias !248
  unreachable

_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit.i: ; preds = %bb.f
  %i.am = mul nuw nsw i64 %i.ad, 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit

_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit: ; preds = %bb.d, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit.i
  %.015.i = phi ptr [ %storemerge.i, %bb.d ], [ %i.an, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit.i ]
  %i.ao = and i8 %i.h, 16
  %.not8.i = icmp eq i8 %i.ao, 0
  %i.ap = ptrtoint ptr %.015.i to i64
  %i.aq = add i64 %i.ap, 3
  %i.ar = and i64 %i.aq, -4
  %i.as = inttoptr i64 %i.ar to ptr
  %.0.i = select i1 %.not8.i, ptr null, ptr %i.as
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !133, !range !116, !noundef !55
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  store atomic i8 1, ptr %i.e release, align 8
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.f = load i8, ptr %i.b, align 8, !tbaa !138, !range !116, !noundef !55
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !58
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6threadD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZNSt6threadD2Ev.exit.i.i.i:                      ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !138
  br label %_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit

_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit: ; preds = %bb.a, %bb.b, %_ZNSt6threadD2Ev.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i

_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i:       ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !202  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  tail call void @free(ptr noundef %i.s) #20
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i: ; preds = %bb.g, %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.h, %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc9DebugInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #22
  br label %_ZN6hermes3hbc9DebugInfoD2Ev.exit

_ZN6hermes3hbc9DebugInfoD2Ev.exit:                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 136) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes3hbc9DebugInfoD2Ev.exit, %_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !251 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i

_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i: ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 1) #22
  br label %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIVN6hermes17PageAccessTrackerEEclEPS2_.exit.i
  %i.ak = load i8, ptr %i.b, align 8, !tbaa !138, !range !116, !noundef !55
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %1, label %_ZN4llvh8OptionalISt6threadED2Ev.exit

1:                                                ; preds = %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit
  %.sroa.0.0.copyload.i.i.i.i.i2 = load i64, ptr %i.a, align 8, !tbaa !58
  %.not.i.i.i.i3 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i2, 0
  br i1 %.not.i.i.i.i3, label %_ZN4llvh8OptionalISt6threadED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %1
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN4llvh8OptionalISt6threadED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EED2Ev.exit, %1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !139 ; 3 uses
  %.not.i4 = icmp eq ptr %i.an, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i: ; preds = %_ZN4llvh8OptionalISt6threadED2Ev.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #20, !inline_history !252
  br label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvh8OptionalISt6threadED2Ev.exit, %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !118
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #22, !inline_history !253
  br label %_ZN6hermes3hbc14BCProviderBaseD2Ev.exit

_ZN6hermes3hbc14BCProviderBaseD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes3hbc20BCProviderFromBuffer14isFunctionLazyEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes3hbc20BCProviderFromBuffer6isLazyEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes3hbc20BCProviderFromBuffer20getPageAccessTrackerEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc20BCProviderFromBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !141
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a) #20
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !44
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN6hermes8oscompat9page_sizeEv() local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv(ptr dead_on_unwind noalias writable sret(%"struct.std::array") align 1 %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !118
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase11startWarmupEh(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
