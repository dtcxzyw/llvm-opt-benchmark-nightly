inline.NumInlined: 587
inline.NumDeleted: 219
begin_hunk_0_@_ZN6hermes2vm19numberIsSafeIntegerEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, double } @_ZNK6hermes2vm15BigIntPrimitive8toDoubleERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #4

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23numberToStringWithRadixERNS0_7RuntimeEdj(ptr noundef nonnull align 8 dereferenceable(9816), double noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare ptr @dtoa_fixedpoint(ptr noundef, double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.c, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i64 noundef %i.l, i64 noundef 1) #12
  %.pre7.pre.i = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %1, %2
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !67
  %i.o = zext i32 %.pre7.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %i.c, i1 false)
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !68
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %.pre7.i, %bb.c ], [ %.pre.i, %bb.d ]
  %i.r = trunc i64 %i.c to i32
  %i.s = add i32 %i.q, %i.r
  store i32 %i.s, ptr %i.g, align 8, !tbaa !68
  ret void
}

declare void @g_freedtoa(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.j, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i64 noundef %i.m, i64 noundef 1) #12
  %.pre7.pre.i = load i32, ptr %i.h, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !67
  %i.p = zext i32 %.pre7.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.a, i64 %i.d, i1 false)
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !68
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %.pre7.i, %bb.c ], [ %.pre.i, %bb.d ]
  %i.s = add i32 %i.r, %i.c
  store i32 %i.s, ptr %i.h, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = icmp eq ptr %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %.not.i = icmp ult i32 %i.c, %i.h               ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #12
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !68
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !67
  %.pre20 = zext i32 %.pre.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre20, %bb.c ]
  %i.j = phi ptr [ %i.a, %bb.b ], [ %.pre19, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pre-phi
  %i.l = load i8, ptr %2, align 1
  store i8 %i.l, ptr %i.k, align 1
  %i.m = load i32, ptr %i.b, align 8, !tbaa !68
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.b, align 8, !tbaa !68
  %i.o = load ptr, ptr %0, align 8, !tbaa !67
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = ptrtoint ptr %i.a to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #12
  %i.w = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %.pre = load i32, ptr %i.b, align 8, !tbaa !68
  %.pre21 = zext i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi22 = phi i64 [ %.pre21, %bb.e ], [ %i.d, %bb.d ]
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.a, %bb.d ]
  %.015 = phi ptr [ %i.x, %bb.e ], [ %1, %bb.d ]  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pre-phi22 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !56
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !56
  %i.ac = load ptr, ptr %0, align 8, !tbaa !67
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !68
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.015 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %.015, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a

bb.h:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %i.aj, 1
  br i1 %i.an, label %bb.i, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %.015, align 1, !tbaa !56
  store i8 %i.ao, ptr %i.ag, align 1, !tbaa !56
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a:     ; preds = %bb.g, %bb.h, %bb.i
  %3 = load i32, ptr %i.b, align 8, !tbaa !68
  %4 = add i32 %3, 1                              ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !68
  %.not18 = icmp ule ptr %.015, %2
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = zext i32 %4 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = icmp ult ptr %2, %i.ar
  %narrow = select i1 %.not18, i1 %i.as, i1 false
  %.0.idx = zext i1 %narrow to i64
  %.0.a = getelementptr inbounds nuw i8, ptr %2, i64 %.0.idx
  %5 = load i8, ptr %.0.a, align 1, !tbaa !56
  store i8 %5, ptr %.015, align 1, !tbaa !56
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %.014 = phi ptr [ %i.r, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %.015, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit.a ]
  ret ptr %.014
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = and i64 %2, 4294901760
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %2) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %1, i64 %2)
  %i.c = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.d = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.e, align 8, !tbaa !56
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.pn = phi { i32, i64 } [ %i.b, %bb.b ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret { i32, i64 } %.pn
}

declare ptr @g_dtoa(ptr noundef, double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = add i64 %2, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 1) #12
  %.pre7.pre.i = load i32, ptr %i.d, align 8, !tbaa !68
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pre7.i4 = phi i32 [ %.pre7.pre.i, %.thread ], [ %i.e, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !67
  %i.l = zext i32 %.pre7.i4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !68
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.e, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = trunc i64 %2 to i32
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %i.d, align 8, !tbaa !68
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !69
  %i.d = icmp ugt i64 %2, 32
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 1) #12
  %.pre7.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !68
  %i.e = zext i32 %.pre7.pre.i.i to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallVectorIcLj32EEC2IPKcvEET_S5_.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.pre7.i.i4 = phi i64 [ %i.e, %.thread ], [ 0, %bb.b ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre7.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !68
  br label %_ZN4llvh11SmallVectorIcLj32EEC2IPKcvEET_S5_.exit

_ZN4llvh11SmallVectorIcLj32EEC2IPKcvEET_S5_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ 0, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.i = trunc i64 %2 to i32
  %i.j = add i32 %i.h, %i.i
  store i32 %i.j, ptr %i.b, align 8, !tbaa !68
  ret void
}

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %2, ptr %i.a, align 8, !tbaa !23
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !78
  %i.f = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !56
  store i8 %i.h, ptr %i.g, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !129
  %i.j = load ptr, ptr %0, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #10

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr noundef, ptr, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0
