Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ContiguousBlobAccumulator?download=true
begin_hunk_0_@_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm:bb.a
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.n, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %.not = icmp ugt i64 %i.r, %i.t
  %i.u = sub nuw i64 %i.t, %i.r
  %.not6 = icmp ugt i64 %1, %i.u
  %or.cond = select i1 %.not, i1 true, i1 %.not6
  br i1 %or.cond, label %._crit_edge.i.i.i, label %.thread

._crit_edge.i.i.i:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7, !noalias !35
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !38, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7, !noalias !35
  store i64 29, ptr %i.a, align 8, !tbaa !40, !noalias !35
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #7, !noalias !35 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !41, !noalias !35
  %i.y = load i64, ptr %i.a, align 8, !tbaa !40, !noalias !35 ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !43, !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.x, ptr noundef nonnull align 1 dereferenceable(29) @.str, i64 29, i1 false), !noalias !35
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !44, !noalias !35
  %i.aa = load ptr, ptr %2, align 8, !tbaa !41, !noalias !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !43, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7, !noalias !35
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 22, ptr nonnull %i.v) #7
  %i.ac = load ptr, ptr %2, align 8, !tbaa !41, !noalias !35 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.w
  br i1 %i.ad, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !43, !noalias !35
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #9
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7, !noalias !35
  %i.ag = load ptr, ptr %3, align 8, !tbaa !31
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %_ZN4llvm5ErrorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm4yaml25ContiguousBlobAccumulator14padToAlignmentEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #7, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = add i64 %i.f, %i.a
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.n, %i.l                       ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.b, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.s = icmp ne i64 %i.o, 0
  %i.t = zext i1 %i.s to i64                      ; 2 uses
  %i.u = sub i64 %i.o, %i.t
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = udiv i64 %i.u, %i.v
  %i.x = add i64 %i.w, %i.t
  %i.y = mul i64 %i.x, %i.v                       ; 3 uses
  %i.z = sub i64 %i.y, %i.o                       ; 3 uses
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %i.z)
  br i1 %i.aa, label %bb.c, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %i.z)
  br i1 %i.ab, label %bb.d, label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = trunc i64 %i.z to i32
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.ac) #7 ; 0 uses
  br label %_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit

_ZN4llvm4yaml25ContiguousBlobAccumulator10writeZerosEm.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i64 [ %i.o, %bb.a ], [ %i.o, %bb.b ], [ %i.y, %bb.c ], [ %i.y, %bb.d ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4yaml25ContiguousBlobAccumulator13writeAsBinaryERKNS0_9BinaryRefEm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !48, !noundef !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = zext nneg i8 %i.b to i64
  %.0.i = lshr i64 %i.d, %i.e
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %.0.i)
  %i.f = tail call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %.sroa.speculated)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNK4llvm4yaml9BinaryRef13writeAsBinaryERNS_11raw_ostreamEm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZNK4llvm4yaml9BinaryRef13writeAsBinaryERNS_11raw_ostreamEm(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeULEB128Em(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef 8)
  br i1 %i.a, label %bb.b, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.b
  %.019.i = phi i64 [ %1, %bb.b ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %.018.i = phi i32 [ 0, %bb.b ], [ %i.f, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.e = lshr i64 %.019.i, 7                      ; 2 uses
  %i.f = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %.not.i.not = icmp eq i64 %i.e, 0               ; 2 uses
  %i.g = trunc i64 %.019.i to i8                  ; 2 uses
  %i.h = or i8 %i.g, -128
  %.0.i = select i1 %.not.i.not, i8 %i.g, i8 %i.h ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !50
  %.not.i.i = icmp ult ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef zeroext %.0.i) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.l, ptr %i.c, align 8, !tbaa !32
  store i8 %.0.i, ptr %i.i, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d
  br i1 %.not.i.not, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, label %bb.c, !llvm.loop !51

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm4yaml25ContiguousBlobAccumulator12writeSLEB128El(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvm4yaml25ContiguousBlobAccumulator10checkLimitEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef 10)
  br i1 %i.a, label %bb.b, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.b
  %.024.i = phi i32 [ 0, %bb.b ], [ %i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.0.i = phi i64 [ %1, %bb.b ], [ %i.g, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.e = trunc i64 %.0.i to i8
  %i.f = and i8 %i.e, 127                         ; 2 uses
  %i.g = ashr i64 %.0.i, 7                        ; 2 uses
  %.not.i = icmp samesign ugt i8 %i.f, 63
  %i.h = sext i1 %.not.i to i64
  %.not30.i.not = icmp eq i64 %i.g, %i.h          ; 2 uses
  %i.i = add i32 %.024.i, 1                       ; 2 uses
  %masksel.i = select i1 %.not30.i.not, i8 0, i8 -128
  %.023.i.a = or disjoint i8 %masksel.i, %i.f     ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !50
  %.not.i.i = icmp ult ptr %i.j, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef zeroext %.023.i.a) #7 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.m, ptr %i.c, align 8, !tbaa !32
  store i8 %.023.i.a, ptr %i.j, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d
  br i1 %.not30.i.not, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit, label %bb.c, !llvm.loop !53

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm4yaml25ContiguousBlobAccumulator12updateDataAtEmPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %0, align 8, !tbaa !8
  %i.c = sub i64 %1, %i.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %2, i64 %3, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm4yaml25ContiguousBlobAccumulatorE", !10, i64 0, !10, i64 8, !11, i64 16, !18, i64 168, !26, i64 224}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_ZTSN4llvm11SmallVectorIcLj128EEE", !12, i64 0, !17, i64 24}
!12 = !{!"_ZTSN4llvm15SmallVectorImplIcEE", !13, i64 0}
!13 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !14, i64 0}
!14 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !15, i64 0}
!15 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !16, i64 0, !10, i64 8, !10, i64 16}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj128EEE", !6, i64 0}
!18 = !{!"_ZTSN4llvm19raw_svector_ostreamE", !19, i64 0, !25, i64 48}
!19 = !{!"_ZTSN4llvm17raw_pwrite_streamE", !20, i64 0}
!20 = !{!"_ZTSN4llvm11raw_ostreamE", !21, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !23, i64 40, !24, i64 44}
!21 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!22 = !{!"p1 omnipotent char", !16, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!25 = !{!"p1 _ZTSN4llvm15SmallVectorImplIcEE", !16, i64 0}
!26 = !{!"_ZTSN4llvm5ErrorE", !27, i64 0}
!27 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !16, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !7, i64 0}
!30 = distinct !{null, null}
!31 = !{!26, !27, i64 0}
!32 = !{!20, !22, i64 32}
!33 = !{!20, !22, i64 16}
!34 = !{!9, !10, i64 8}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4llvm17createStringErrorESt10error_codePKc: argument 0"}
!37 = distinct !{!37, !"_ZN4llvm17createStringErrorESt10error_codePKc"}
!38 = !{!39, !22, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!40 = !{!10, !10, i64 0}
!41 = !{!42, !22, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !10, i64 8, !6, i64 16}
!43 = !{!6, !6, i64 0}
!44 = !{!42, !10, i64 8}
!45 = !{!46, !23, i64 16}
!46 = !{!"_ZTSN4llvm4yaml9BinaryRefE", !47, i64 0, !23, i64 16}
!47 = !{!"_ZTSN4llvm8ArrayRefIhEE", !22, i64 0, !10, i64 8}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!20, !22, i64 24}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!15, !16, i64 0}
end_hunk_0
