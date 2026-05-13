inline.NumInlined: 98
inline.NumDeleted: 46
begin_hunk_0_@_ZN9NCompress5NBcj28CEncoderD2Ev:bb.a
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN9NCompress11NRangeCoder8CEncoderD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #13
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #13
  unreachable

_ZN9NCompress11NRangeCoder8CEncoderD2Ev.exit:     ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.n)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN9NCompress11NRangeCoder8CEncoderD2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN10COutBufferD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN10COutBufferD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

bb.j:                                             ; preds = %_ZN9NCompress11NRangeCoder8CEncoderD2Ev.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #13
  unreachable

_ZN10COutBufferD2Ev.exit:                         ; preds = %bb.g, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.y)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN10COutBufferD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZN10COutBufferD2Ev.exit2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZN10COutBufferD2Ev.exit2 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #13
  unreachable

bb.n:                                             ; preds = %_ZN10COutBufferD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #13
  unreachable

_ZN10COutBufferD2Ev.exit2:                        ; preds = %bb.k, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.aj)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZN10COutBufferD2Ev.exit2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.al, null
  br i1 %.not.i.i3, label %_ZN10COutBufferD2Ev.exit4, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN10COutBufferD2Ev.exit4 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #13
  unreachable

bb.r:                                             ; preds = %_ZN10COutBufferD2Ev.exit2
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #13
  unreachable

_ZN10COutBufferD2Ev.exit4:                        ; preds = %bb.o, %bb.p
  ret void

bb.s:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #13
  unreachable
}

declare void @MidFree(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress5NBcj28CEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(1304) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN9NCompress5NBcj28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(1304) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1304) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NBcj28CEncoder5FlushEv(ptr noundef nonnull align 8 dereferenceable(1304) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a) ; 2 uses
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = tail call noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.c) ; 2 uses
  %.not14.not = icmp eq i32 %i.d, 0
  br i1 %.not14.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = tail call noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.e) ; 2 uses
  %.not15.not = icmp eq i32 %i.f, 0
  br i1 %.not15.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  tail call void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  tail call void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  tail call void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  tail call void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  tail call void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = tail call noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.3 = phi i32 [ %i.i, %bb.d ], [ %i.f, %bb.c ], [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr readnone captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.NCompress::NBcj2::CEncoder::CCoderReleaser", align 8 ; 5 uses
  %9 = alloca %class.CMyComPtr.0, align 8         ; 12 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = icmp ne i32 %3, 1
  %i.e = icmp ne i32 %6, 4
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.g = tail call noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef 262144)
  br i1 %i.g, label %bb.c, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.i = tail call noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef 262144)
  br i1 %i.i, label %bb.d, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.k = tail call noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, i32 noundef 262144)
  br i1 %i.k, label %bb.e, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i32 noundef 1048576)
  br i1 %i.m, label %bb.f, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @MidAlloc(i64 noundef 131072) ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread, label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit

_ZN9NCompress5NBcj28CEncoder6CreateEv.exit:       ; preds = %bb.g, %bb.f
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %.not251 = icmp eq ptr %i.s, null
  br i1 %.not251, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16777217
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit
  %.0134 = phi i64 [ 0, %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit ], [ %i.t, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.0133 = phi i1 [ false, %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit ], [ %i.u, %bb.i ], [ false, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %0, ptr %8, align 8, !tbaa !27
  %i.v = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !32
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef %i.w)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.h, ptr noundef %i.y)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef %i.aa)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.j)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %i.l, ptr noundef %i.ad)
          to label %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit unwind label %bb.q

_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit: ; preds = %bb.p
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %i.l)
          to label %_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit unwind label %bb.q

_ZN9NCompress11NRangeCoder8CEncoder4InitEv.exit:  ; preds = %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  store i32 -1, ptr %i.af, align 8, !tbaa !34
  store i32 1, ptr %i.ab, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 0, ptr %i.ag, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x i32> splat (i32 1024), ptr %i.ah, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <4 x i32> splat (i32 1024), ptr %i.aj, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ak, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x i32> splat (i32 1024), ptr %i.al, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <4 x i32> splat (i32 1024), ptr %i.an, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <4 x i32> splat (i32 1024), ptr %i.ap, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <4 x i32> splat (i32 1024), ptr %i.ar, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.as, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <4 x i32> splat (i32 1024), ptr %i.at, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <4 x i32> splat (i32 1024), ptr %i.av, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544
  store <4 x i32> splat (i32 1024), ptr %i.ax, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ay, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 576
  store <4 x i32> splat (i32 1024), ptr %i.az, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ba, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  store <4 x i32> splat (i32 1024), ptr %i.bb, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bc, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <4 x i32> splat (i32 1024), ptr %i.bd, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.be, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 672
  store <4 x i32> splat (i32 1024), ptr %i.bf, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bg, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <4 x i32> splat (i32 1024), ptr %i.bh, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bi, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x i32> splat (i32 1024), ptr %i.bj, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bk, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <4 x i32> splat (i32 1024), ptr %i.bl, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <4 x i32> splat (i32 1024), ptr %i.bn, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <4 x i32> splat (i32 1024), ptr %i.bp, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bq, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <4 x i32> splat (i32 1024), ptr %i.br, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bs, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <4 x i32> splat (i32 1024), ptr %i.bt, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bu, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 928
  store <4 x i32> splat (i32 1024), ptr %i.bv, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.bw, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <4 x i32> splat (i32 1024), ptr %i.bx, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.by, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <4 x i32> splat (i32 1024), ptr %i.bz, align 8, !tbaa !37
  store <4 x i32> splat (i32 1024), ptr %i.ca, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  %i.kp = zext i32 %i.kk to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kp
  store i8 %i.km, ptr %i.kq, align 1, !tbaa !42
  %i.kr = load i32, ptr %i.jx, align 8, !tbaa !48 ; 2 uses
  %i.ks = load i32, ptr %i.jy, align 4, !tbaa !49
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.bd, label %_ZN10COutBuffer9WriteByteEh.exit277.1

bb.bd:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit277
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jw)
          to label %._ZN10COutBuffer9WriteByteEh.exit277.1_crit_edge unwind label %bb.bg

._ZN10COutBuffer9WriteByteEh.exit277.1_crit_edge: ; preds = %bb.bd
  %.pre437 = load i32, ptr %i.jx, align 8, !tbaa !48
  br label %_ZN10COutBuffer9WriteByteEh.exit277.1

_ZN10COutBuffer9WriteByteEh.exit277.1:            ; preds = %._ZN10COutBuffer9WriteByteEh.exit277.1_crit_edge, %_ZN10COutBuffer9WriteByteEh.exit277
  %i.ku = phi i32 [ %.pre437, %._ZN10COutBuffer9WriteByteEh.exit277.1_crit_edge ], [ %i.kr, %_ZN10COutBuffer9WriteByteEh.exit277 ] ; 2 uses
  %i.kv = lshr i32 %i.hb, 8
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.ky = add i32 %i.ku, 1
  store i32 %i.ky, ptr %i.jx, align 8, !tbaa !48
  %i.kz = zext i32 %i.ku to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  store i8 %i.kw, ptr %i.la, align 1, !tbaa !42
  %i.lb = load i32, ptr %i.jx, align 8, !tbaa !48 ; 2 uses
  %i.lc = load i32, ptr %i.jy, align 4, !tbaa !49
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.be, label %_ZN10COutBuffer9WriteByteEh.exit277.2

bb.be:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit277.1
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jw)
          to label %._ZN10COutBuffer9WriteByteEh.exit277.2_crit_edge unwind label %bb.bg

._ZN10COutBuffer9WriteByteEh.exit277.2_crit_edge: ; preds = %bb.be
  %.pre438 = load i32, ptr %i.jx, align 8, !tbaa !48
  br label %_ZN10COutBuffer9WriteByteEh.exit277.2

_ZN10COutBuffer9WriteByteEh.exit277.2:            ; preds = %._ZN10COutBuffer9WriteByteEh.exit277.2_crit_edge, %_ZN10COutBuffer9WriteByteEh.exit277.1
  %i.le = phi i32 [ %.pre438, %._ZN10COutBuffer9WriteByteEh.exit277.2_crit_edge ], [ %i.lb, %_ZN10COutBuffer9WriteByteEh.exit277.1 ] ; 2 uses
  %i.lf = trunc i32 %i.hb to i8
  %i.lg = load ptr, ptr %i.jw, align 8, !tbaa !47
  %i.lh = add i32 %i.le, 1
  store i32 %i.lh, ptr %i.jx, align 8, !tbaa !48
  %i.li = zext i32 %i.le to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.li
  store i8 %i.lf, ptr %i.lj, align 1, !tbaa !42
  %i.lk = load i32, ptr %i.jx, align 8, !tbaa !48
  %i.ll = load i32, ptr %i.jy, align 4, !tbaa !49
  %i.lm = icmp eq i32 %i.lk, %i.ll
  br i1 %i.lm, label %bb.bf, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279

bb.bf:                                            ; preds = %_ZN10COutBuffer9WriteByteEh.exit277.2
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jw)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bh:                                            ; preds = %bb.at, %bb.as, %bb.av, %bb.au, %bb.ax, %bb.ay
  %i.lo = phi i32 [ %i.ja, %bb.ax ], [ %i.ja, %bb.ay ], [ %i.ik, %bb.au ], [ %i.iv, %bb.av ], [ %i.hx, %bb.as ], [ %i.hx, %bb.at ]
  %.6194476 = phi i64 [ %.1189387, %bb.ax ], [ %.1189387, %bb.ay ], [ %.2190.lcssa471, %bb.au ], [ %.2190.lcssa471, %bb.av ], [ %.4192465, %bb.as ], [ %.4192465, %bb.at ] ; 2 uses
  %.6206474 = phi i64 [ %.1201386, %bb.ax ], [ %.1201386, %bb.ay ], [ %.2202.lcssa470, %bb.au ], [ %.2202.lcssa470, %bb.av ], [ %.4204464, %bb.as ], [ %.4204464, %bb.at ] ; 2 uses
  %.6219472 = phi i64 [ %.1214385, %bb.ax ], [ %.1214385, %bb.ay ], [ %.2215.lcssa469, %bb.au ], [ %.2215.lcssa469, %bb.av ], [ %.4217463, %bb.as ], [ %.4217463, %bb.at ] ; 2 uses
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.af, align 8, !tbaa !34
  %i.ls = lshr i32 %i.lr, 11
  %i.lt = load i32, ptr %i.lq, align 4, !tbaa !37 ; 3 uses
  %i.lu = mul i32 %i.ls, %i.lt                    ; 3 uses
  %i.lv = sub i32 2048, %i.lt
  %i.lw = lshr i32 %i.lv, 5
  %i.lx = add i32 %i.lw, %i.lt
  store i32 %i.lu, ptr %i.af, align 8, !tbaa !34
  store i32 %i.lx, ptr %i.lq, align 4, !tbaa !37
  %i.ly = icmp ult i32 %i.lu, 16777216
  br i1 %i.ly, label %bb.bi, label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279

bb.bi:                                            ; preds = %bb.bh
  %i.lz = shl nuw i32 %i.lu, 8
  store i32 %i.lz, ptr %i.af, align 8, !tbaa !34
  invoke void @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab)
          to label %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279 unwind label %bb.bb

_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279: ; preds = %_ZN10COutBuffer9WriteByteEh.exit277.2, %bb.bf, %bb.bh, %bb.bi, %bb.ak
  %.8221 = phi i64 [ %.1214385, %bb.ak ], [ %.6219472, %bb.bh ], [ %.6219472, %bb.bi ], [ %.6219473, %bb.bf ], [ %.6219473, %_ZN10COutBuffer9WriteByteEh.exit277.2 ] ; 2 uses
  %.8208 = phi i64 [ %.1201386, %bb.ak ], [ %.6206474, %bb.bh ], [ %.6206474, %bb.bi ], [ %.6206475, %bb.bf ], [ %.6206475, %_ZN10COutBuffer9WriteByteEh.exit277.2 ] ; 2 uses
  %.8196 = phi i64 [ %.1189387, %bb.ak ], [ %.6194476, %bb.bh ], [ %.6194476, %bb.bi ], [ %.6194477, %bb.bf ], [ %.6194477, %_ZN10COutBuffer9WriteByteEh.exit277.2 ] ; 2 uses
  %.6184 = phi i8 [ %i.fj, %bb.ak ], [ %i.fj, %bb.bh ], [ %i.fj, %bb.bi ], [ %i.gd, %bb.bf ], [ %i.gd, %_ZN10COutBuffer9WriteByteEh.exit277.2 ] ; 2 uses
  %.5173 = phi i32 [ %i.fx, %bb.ak ], [ %i.gu, %bb.bh ], [ %i.gu, %bb.bi ], [ %i.jv, %bb.bf ], [ %i.jv, %_ZN10COutBuffer9WriteByteEh.exit277.2 ] ; 7 uses
  %.not253 = icmp ugt i32 %.5173, %i.fe
  br i1 %.not253, label %bb.bj, label %bb.ai

bb.bj:                                            ; preds = %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279
  %i.ma = add i32 %.5173, %.0164
  %i.mb = zext i32 %.5173 to i64                  ; 3 uses
  %i.mc = load i64, ptr %i.a, align 8, !tbaa !26
  %i.md = add i64 %i.mc, %i.mb
  store i64 %i.md, ptr %i.a, align 8, !tbaa !26
  br i1 %.not254, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.me = load ptr, ptr %7, align 8, !tbaa !21
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef i32 %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.a, ptr noundef null)
          to label %bb.bl unwind label %bb.bm     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %.not255 = icmp eq i32 %i.mh, 0
  br i1 %.not255, label %bb.bn, label %.loopexit322

bb.bm:                                            ; preds = %bb.bk
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.mj = icmp ult i32 %.5173, %i.dz
  br i1 %i.mj, label %.lr.ph393.preheader, label %.loopexit.backedge

.lr.ph393.preheader:                              ; preds = %bb.bn
  %narrow = sub nuw i32 %i.dz, %.5173             ; 2 uses
  %i.mk = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.mk, 3                    ; 3 uses
  %i.ml = add i32 %narrow, -1
  %i.mm = icmp ult i32 %i.ml, 3
  br i1 %i.mm, label %.lr.ph393.epil.preheader, label %.lr.ph393.preheader.new

.lr.ph393.preheader.new:                          ; preds = %.lr.ph393.preheader
  %unroll_iter = and i64 %i.mk, 4294967292
  br label %.lr.ph393

.lr.ph393:                                        ; preds = %.lr.ph393, %.lr.ph393.preheader.new
  %indvars.iv427 = phi i64 [ %i.mb, %.lr.ph393.preheader.new ], [ %indvars.iv.next428.3, %.lr.ph393 ] ; 5 uses
  %indvars.iv424 = phi i64 [ 0, %.lr.ph393.preheader.new ], [ %indvars.iv.next425.3, %.lr.ph393 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph393.preheader.new ], [ %niter.next.3, %.lr.ph393 ]
  %i.mn = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv427
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !42
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv424
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !42
  %i.mr = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv427
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !42
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %indvars.iv424
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !42
  %i.mx = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv427
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !42
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv424
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store i8 %i.na, ptr %i.nc, align 1, !tbaa !42
  %i.nd = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %indvars.iv.next428.3 = add nuw nsw i64 %indvars.iv427, 4 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %indvars.iv427
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 3
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !42
  %indvars.iv.next425.3 = add nuw nsw i64 %indvars.iv424, 4 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 %indvars.iv424
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 3
  store i8 %i.ng, ptr %i.ni, align 1, !tbaa !42
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph393, !llvm.loop !54

bb.bo:                                            ; preds = %bb.ag, %bb.ad, %bb.ab, %bb.al, %bb.bb, %bb.bg, %bb.ao, %bb.bm, %bb.v
  %.pn262.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.v ], [ %i.en, %bb.ab ], [ %i.fd, %bb.ag ], [ %i.er, %bb.ad ], [ %i.mi, %bb.bm ], [ %i.fy, %bb.al ], [ %lpad.phi, %bb.ao ], [ %i.ln, %bb.bg ], [ %i.kj, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.bw

.loopexit322:                                     ; preds = %bb.bl, %.thread289, %._crit_edge398, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279.thread
  %.15.ph = phi i32 [ %i.ds, %.thread289 ], [ %i.hj, %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit279.thread ], [ %i.fc, %._crit_edge398 ], [ %i.mh, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.nj = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i280 = icmp eq ptr %i.nj, null
  br i1 %.not.i280, label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %.loopexit322
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !21
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef i32 %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %i.nj)
          to label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #13
  unreachable

_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit: ; preds = %.loopexit322, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !21
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef i32 %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.nr)
          to label %.noexc.i unwind label %bb.bv, !inline_history !55 ; 0 uses

.noexc.i:                                         ; preds = %bb.br
  store ptr null, ptr %i.nq, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i.i:        ; preds = %.noexc.i, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !23 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i1.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !21
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = invoke noundef i32 %i.oa(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %.noexc1.i unwind label %bb.bv, !inline_history !55 ; 0 uses

.noexc1.i:                                        ; preds = %bb.bs
  store ptr null, ptr %i.nw, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i:       ; preds = %.noexc1.i, %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !23 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i3.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !21
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = invoke noundef i32 %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.od)
          to label %.noexc2.i unwind label %bb.bv, !inline_history !55 ; 0 uses

.noexc2.i:                                        ; preds = %bb.bt
  store ptr null, ptr %i.oc, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i:       ; preds = %.noexc2.i, %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !21
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = invoke noundef i32 %i.om(ptr noundef nonnull align 8 dereferenceable(8) %i.oj)
          to label %.noexc3.i unwind label %bb.bv, !inline_history !55 ; 0 uses

.noexc3.i:                                        ; preds = %bb.bu
  store ptr null, ptr %i.oi, align 8, !tbaa !23
  br label %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #13
  unreachable

_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread

bb.bw:                                            ; preds = %bb.bo, %bb.s
  %.pn262.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn, %bb.bo ], [ %i.di, %bb.s ]
  %i.oq = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i281 = icmp eq ptr %i.oq, null
  br i1 %.not.i281, label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit282, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !21
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = invoke noundef i32 %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit282 unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #13
  unreachable

_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit282: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit282, %bb.q
  %.pn262.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn.pn, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit282 ], [ %i.cy, %bb.q ]
  call void @_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn262.pn.pn.pn.pn

_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread: ; preds = %bb.g, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit
  %.16 = phi i32 [ -2147024809, %bb.a ], [ %.15.ph, %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit ], [ -2147024882, %bb.e ], [ -2147024882, %bb.d ], [ -2147024882, %bb.c ], [ -2147024882, %bb.b ], [ -2147024882, %bb.g ]
  ret i32 %.16
}

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.f, !inline_history !55 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i:          ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.f, !inline_history !55 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i

_ZN10COutBuffer13ReleaseStreamEv.exit2.i:         ; preds = %.noexc1, %_ZN10COutBuffer13ReleaseStreamEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i3.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i, label %bb.d

bb.d:                                             ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit2.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc2 unwind label %bb.f, !inline_history !55 ; 0 uses

.noexc2:                                          ; preds = %bb.d
  store ptr null, ptr %i.n, align 8, !tbaa !23
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i

_ZN10COutBuffer13ReleaseStreamEv.exit4.i:         ; preds = %.noexc2, %_ZN10COutBuffer13ReleaseStreamEv.exit2.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress5NBcj28CEncoder14ReleaseStreamsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit4.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc3 unwind label %bb.f, !inline_history !55 ; 0 uses

.noexc3:                                          ; preds = %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !23
  br label %_ZN9NCompress5NBcj28CEncoder14ReleaseStreamsEv.exit

_ZN9NCompress5NBcj28CEncoder14ReleaseStreamsEv.exit: ; preds = %.noexc3, %_ZN10COutBuffer13ReleaseStreamEv.exit4.i
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #13
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr readnone captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr poison, i32 noundef %6, ptr noundef %7)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #14
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #14
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.h, %bb.c ], [ 1, %bb.b ]
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(1332) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store i32 %2, ptr %i.c, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj(ptr noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store i32 %2, ptr %i.c, align 4, !tbaa !4
end_hunk_1
