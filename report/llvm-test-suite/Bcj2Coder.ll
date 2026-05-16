inline.NumInlined: 98
inline.NumDeleted: 46
begin_hunk_0_@_ZN9NCompress5NBcj28CDecoderD2Ev:bb.a
  invoke void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN10COutBufferD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #13
  unreachable

bb.i:                                             ; preds = %_ZN10COutBufferD2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit:     ; preds = %bb.f, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45) %i.x)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZN9CInBufferD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN9CInBufferD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #13
  unreachable

bb.m:                                             ; preds = %_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #13
  unreachable

_ZN9CInBufferD2Ev.exit:                           ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45) %i.ai)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZN9CInBufferD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i2, label %_ZN9CInBufferD2Ev.exit3, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZN9CInBufferD2Ev.exit3 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #13
  unreachable

bb.q:                                             ; preds = %_ZN9CInBufferD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #13
  unreachable

_ZN9CInBufferD2Ev.exit3:                          ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45) %i.at)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZN9CInBufferD2Ev.exit3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.av, null
  br i1 %.not.i.i4, label %_ZN9CInBufferD2Ev.exit5, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %_ZN9CInBufferD2Ev.exit5 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #13
  unreachable

bb.u:                                             ; preds = %_ZN9CInBufferD2Ev.exit3
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #13
  unreachable

_ZN9CInBufferD2Ev.exit5:                          ; preds = %bb.r, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress5NBcj28CDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(1332) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN9NCompress5NBcj28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(1332) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1336) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(1332) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !64
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress5NBcj28CDecoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(1332) %i.d) #14, !inline_history !78
  br label %_ZN9NCompress5NBcj28CDecoder7ReleaseEv.exit

_ZN9NCompress5NBcj28CDecoder7ReleaseEv.exit:      ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress5NBcj28CDecoderD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9NCompress5NBcj28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(1332) %i.a) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N9NCompress5NBcj28CDecoderD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress5NBcj28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(1332) %i.a) #14, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1332) %i.a, i64 noundef 1336) #15, !inline_history !79
  ret void
}

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, -16777216
  %or.cond = icmp eq i64 %i.c, 4278190080
  br i1 %or.cond, label %._crit_edge, label %.peel.begin

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %0, align 8, !tbaa !35
  %i.d = add i32 %.pre, 1
  br label %bb.d

.peel.begin:                                      ; preds = %bb.a
  %1 = lshr i64 %i.b, 32
  %2 = trunc i64 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = add i8 %i.f, %2
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.l = load i32, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.i, align 8, !tbaa !48
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store i8 %i.j, ptr %i.o, align 1, !tbaa !42
  %i.p = load i32, ptr %i.i, align 8, !tbaa !48
  %i.q = load i32, ptr %3, align 4, !tbaa !49
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZN10COutBuffer9WriteByteEh.exit.peel

bb.b:                                             ; preds = %.peel.begin
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.g)
  br label %_ZN10COutBuffer9WriteByteEh.exit.peel

_ZN10COutBuffer9WriteByteEh.exit.peel:            ; preds = %bb.b, %.peel.begin
  %i.s = load i32, ptr %0, align 8, !tbaa !35
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %0, align 8, !tbaa !35
  %.not2.peel = icmp eq i32 %i.t, 0
  br i1 %.not2.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %_ZN10COutBuffer9WriteByteEh.exit.peel, %_ZN10COutBuffer9WriteByteEh.exit
  %4 = load i32, ptr %i.h, align 4, !tbaa !33
  %i.u = trunc i32 %4 to i8
  %i.v = add i8 %i.u, -1
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.x = load i32, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.i, align 8, !tbaa !48
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  store i8 %i.v, ptr %i.aa, align 1, !tbaa !42
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !48
  %i.ac = load i32, ptr %3, align 4, !tbaa !49
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN10COutBuffer9WriteByteEh.exit

bb.c:                                             ; preds = %.peel.next
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.g)
  br label %_ZN10COutBuffer9WriteByteEh.exit

_ZN10COutBuffer9WriteByteEh.exit:                 ; preds = %.peel.next, %bb.c
  %i.ae = load i32, ptr %0, align 8, !tbaa !35
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !35
  %.not2 = icmp eq i32 %i.af, 0
  br i1 %.not2, label %.loopexit, label %.peel.next, !llvm.loop !80

.loopexit:                                        ; preds = %_ZN10COutBuffer9WriteByteEh.exit, %_ZN10COutBuffer9WriteByteEh.exit.peel
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.ah = lshr i64 %i.ag, 24
  %i.ai = trunc i64 %i.ah to i8
  store i8 %i.ai, ptr %i.e, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.loopexit
  %i.aj = phi i64 [ %i.b, %._crit_edge ], [ %i.ag, %.loopexit ]
  %i.ak = phi i32 [ %i.d, %._crit_edge ], [ 1, %.loopexit ]
  store i32 %i.ak, ptr %0, align 8, !tbaa !35
  %i.al = shl i64 %i.aj, 8
  %i.am = and i64 %i.al, 4294967040
  store i64 %i.am, ptr %i.a, align 8, !tbaa !33
  ret void
}

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 16}
!9 = !{!"_ZTSN9NCompress5NBcj28CEncoderE", !10, i64 0, !12, i64 8, !13, i64 16, !15, i64 24, !15, i64 80, !15, i64 136, !20, i64 192, !6, i64 272}
!10 = !{!"_ZTS15ICompressCoder2", !11, i64 0}
!11 = !{!"_ZTS8IUnknown"}
!12 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"_ZTS10COutBuffer", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !16, i64 24, !18, i64 32, !13, i64 40, !19, i64 48}
!16 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !17, i64 0}
!17 = !{!"p1 _ZTS20ISequentialOutStream", !14, i64 0}
!18 = !{!"long long", !6, i64 0}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN9NCompress11NRangeCoder8CEncoderE", !5, i64 0, !6, i64 4, !18, i64 8, !5, i64 16, !15, i64 24}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !7, i64 0}
!23 = !{!16, !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 long long", !14, i64 0}
!26 = !{!18, !18, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN9NCompress5NBcj28CEncoder14CCoderReleaserE", !29, i64 0}
!29 = !{!"p1 _ZTSN9NCompress5NBcj28CEncoderE", !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS19ISequentialInStream", !14, i64 0}
!32 = !{!17, !17, i64 0}
!33 = !{!20, !18, i64 8}
!34 = !{!20, !5, i64 16}
!35 = !{!20, !5, i64 0}
!36 = !{!20, !6, i64 4}
!37 = !{!38, !5, i64 0}
!38 = !{!"_ZTSN9NCompress11NRangeCoder9CBitModelILi5EEE", !5, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTS9CMyComPtrI25ICompressGetSubStreamSizeE", !41, i64 0}
!41 = !{!"p1 _ZTS25ICompressGetSubStreamSize", !14, i64 0}
!42 = !{!6, !6, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!15, !13, i64 0}
!48 = !{!15, !5, i64 8}
!49 = !{!15, !5, i64 12}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = distinct !{null}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
!55 = distinct !{null}
!56 = !{!57, !5, i64 0}
!57 = !{!"_ZTS16CSystemException", !5, i64 0}
!58 = !{!59, !5, i64 1328}
!59 = !{!"_ZTSN9NCompress5NBcj28CDecoderE", !10, i64 0, !60, i64 8, !12, i64 16, !61, i64 24, !61, i64 72, !61, i64 120, !63, i64 168, !6, i64 224, !15, i64 1256, !6, i64 1312, !5, i64 1328}
!60 = !{!"_ZTS19ICompressSetBufSize", !11, i64 0}
!61 = !{!"_ZTS9CInBuffer", !13, i64 0, !13, i64 8, !13, i64 16, !62, i64 24, !18, i64 32, !5, i64 40, !19, i64 44}
!62 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !31, i64 0}
!63 = !{!"_ZTSN9NCompress11NRangeCoder8CDecoderE", !61, i64 0, !5, i64 48, !5, i64 52}
!64 = !{!12, !5, i64 0}
!65 = !{!15, !13, i64 40}
!66 = !{!62, !31, i64 0}
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZTSN9NCompress5NBcj28CDecoder14CCoderReleaserE", !69, i64 0}
!69 = !{!"p1 _ZTSN9NCompress5NBcj28CDecoderE", !14, i64 0}
!70 = !{!61, !13, i64 0}
!71 = !{!61, !13, i64 8}
!72 = distinct !{!72, !46}
!73 = !{!63, !5, i64 48}
!74 = !{!63, !5, i64 52}
!75 = distinct !{!75, !46}
!76 = distinct !{null}
!77 = !{!14, !14, i64 0}
!78 = !{ptr @_ZN9NCompress5NBcj28CDecoder7ReleaseEv}
!79 = !{ptr @_ZN9NCompress5NBcj28CDecoderD0Ev}
!80 = distinct !{!80, !46, !81}
!81 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
