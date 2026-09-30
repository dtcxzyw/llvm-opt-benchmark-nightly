Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ImplodeDecoder?download=true
inline.NumInlined: 54
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9NCompress8NImplode8NDecoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo:bb.a
bb.as:                                            ; preds = %bb.an, %.loopexit147
  %.1.in = phi i32 [ %i.jf, %bb.an ], [ %i.kh, %.loopexit147 ]
  %.1 = trunc i32 %.1.in to i8
  %i.kk = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.kl = load i32, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.km = add i32 %i.kl, 1
  store i32 %i.km, ptr %i.ae, align 8, !tbaa !21
  %i.kn = zext i32 %i.kl to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn
  store i8 %.1, ptr %i.ko, align 1, !tbaa !33
  %i.kp = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.kq = load i32, ptr %i.af, align 4, !tbaa !71
  %i.kr = icmp eq i32 %i.kp, %i.kq
  br i1 %i.kr, label %bb.at, label %.thread131

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %.thread131 unwind label %.loopexit.split-lp144

.thread131:                                       ; preds = %bb.as, %bb.at, %.loopexit
  %.sink227 = phi i64 [ %i.jc, %.loopexit ], [ 1, %bb.at ], [ 1, %bb.as ]
  %i.ks = load i64, ptr %i.d, align 8, !tbaa !68
  %i.kt = add i64 %i.ks, %.sink227                ; 4 uses
  store i64 %i.kt, ptr %i.d, align 8, !tbaa !68
  %i.ku = icmp ult i64 %i.kt, %i.l
  br i1 %i.ku, label %bb.h, label %._crit_edge180, !llvm.loop !67

._crit_edge180:                                   ; preds = %.thread131, %.preheader
  %.lcssa164 = phi i64 [ %i.y, %.preheader ], [ %i.kt, %.thread131 ]
  %i.kv = icmp ugt i64 %.lcssa164, %i.l
  br i1 %i.kv, label %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread, label %bb.au

bb.au:                                            ; preds = %._crit_edge180
  %i.kw = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49) %i.i)
          to label %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread unwind label %.loopexit.split-lp149

_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread: ; preds = %bb.v, %bb.r, %bb.an, %bb.j, %.noexc, %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread127, %bb.au, %._crit_edge180, %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit
  %.9 = phi i32 [ 1, %.noexc ], [ 1, %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread127 ], [ %i.kw, %bb.au ], [ 1, %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit ], [ 1, %._crit_edge180 ], [ 1, %bb.v ], [ 1, %bb.r ], [ 1, %bb.an ], [ %i.bd, %bb.j ]
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef i32 %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.ky)
          to label %.noexc.i unwind label %bb.ax, !inline_history !52 ; 0 uses

.noexc.i:                                         ; preds = %bb.av
  store ptr null, ptr %i.kx, align 8, !tbaa !22
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i.i:        ; preds = %.noexc.i, %_ZN9NCompress8NImplode8NDecoder6CCoder10ReadTablesEv.exit.thread
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !25 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef i32 %i.lh(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
          to label %.noexc1.i unwind label %bb.ax, !inline_history !52 ; 0 uses

.noexc1.i:                                        ; preds = %bb.aw
  store ptr null, ptr %i.ld, align 8, !tbaa !25
  br label %_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev.exit

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #16
  unreachable

_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev.exit: ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %.loopexit143, %.loopexit.split-lp144, %.loopexit136, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit148, %.loopexit.split-lp149, %bb.ao, %bb.s, %bb.w, %bb.t, %bb.k
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.dx, %bb.w ], [ %i.jh, %bb.ao ], [ %i.dq, %bb.s ], [ %i.dr, %bb.t ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit, %.loopexit136 ], [ %lpad.loopexit138, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp144 ]
  call void @_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  resume { ptr, i32 } %.pn73.pn.pn.pn

bb.ay:                                            ; preds = %bb.c, %bb.b, %bb.a, %_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev.exit
  %.10 = phi i32 [ -2147024882, %bb.b ], [ %.9, %_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev.exit ], [ -2147024882, %bb.a ], [ -2147024809, %bb.c ]
  ret i32 %.10
}

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN12CLzOutWindow4InitEb(ptr noundef nonnull align 8 dereferenceable(49), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN9NCompress8NImplode8NHuffman8CDecoder12DecodeSymbolEPN5NBitl8CDecoderI9CInBufferEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress8NImplode8NDecoder14CCoderReleaserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d, !inline_history !52 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !22
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i:          ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress8NImplode8NDecoder6CCoder14ReleaseStreamsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10COutBuffer13ReleaseStreamEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d, !inline_history !52 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !25
  br label %_ZN9NCompress8NImplode8NDecoder6CCoder14ReleaseStreamsEv.exit

_ZN9NCompress8NImplode8NDecoder6CCoder14ReleaseStreamsEv.exit: ; preds = %.noexc1, %_ZN10COutBuffer13ReleaseStreamEv.exit.i
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress8NImplode8NDecoder6CCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(636) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress8NImplode8NDecoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(636) %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr noundef %4, ptr noundef %5)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #15
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #15
  br i1 %i.f, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79
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

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(636) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !33
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %3 = and i32 %i.c, 2                            ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.lobit.a = lshr exact i32 %3, 1
  %i.e = trunc nuw nsw i32 %.lobit.a to i8
  store i8 %i.e, ptr %i.d, align 8, !tbaa !53
  %4 = select i1 %.not, i32 6, i32 7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 %4, ptr %i.f, align 4, !tbaa !50
  %5 = and i32 %i.c, 4                            ; 2 uses
  %.not6 = icmp eq i32 %5, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 625
  %.lobit5.a = lshr exact i32 %5, 2
  %i.h = trunc nuw nsw i32 %.lobit5.a to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !44
  %6 = select i1 %.not6, i32 2, i32 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %6, ptr %i.i, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2147024809, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZThn8_N9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !33
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %3 = and i32 %i.c, 2                            ; 2 uses
  %.not.i = icmp eq i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.lobit.i.a = lshr exact i32 %3, 1
  %i.e = trunc nuw nsw i32 %.lobit.i.a to i8
  store i8 %i.e, ptr %i.d, align 8, !tbaa !53
  %4 = select i1 %.not.i, i32 6, i32 7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 %4, ptr %i.f, align 4, !tbaa !50
  %5 = and i32 %i.c, 4                            ; 2 uses
  %.not6.i = icmp eq i32 %5, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 617
  %.lobit5.i.a = lshr exact i32 %5, 2
  %i.h = trunc nuw nsw i32 %.lobit5.i.a to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !44
  %6 = select i1 %.not6.i, i32 2, i32 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 %6, ptr %i.i, align 8, !tbaa !51
  br label %_ZN9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj.exit

_ZN9NCompress8NImplode8NDecoder6CCoder21SetDecoderProperties2EPKhj.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -2147024809, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NImplode8NDecoder6CCoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(636) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !33      ; 2 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !33
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !33
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !33
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !33
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !33
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !33
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !33
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !33
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !33
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !33
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !33
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !33
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !33
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !33
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !33
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !33
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !33
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !33
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !33
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !33
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !33
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !33
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !33
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !33
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !33
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !33
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !33
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !33
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit23.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetDecoderProperties2, align 4, !tbaa !33
  %.not.i6 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i6, label %bb.p, label %_ZeqRK4GUIDS1_.exit23.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 1), align 1, !tbaa !33
  %.not.1.i7 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i7, label %bb.q, label %_ZeqRK4GUIDS1_.exit23.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !33
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 2), align 2, !tbaa !33
  %.not.2.i8 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i8, label %bb.r, label %_ZeqRK4GUIDS1_.exit23.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !33
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 3), align 1, !tbaa !33
  %.not.3.i9 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i9, label %bb.s, label %_ZeqRK4GUIDS1_.exit23.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !33
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 4), align 4, !tbaa !33
  %.not.4.i10 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i10, label %bb.t, label %_ZeqRK4GUIDS1_.exit23.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 5), align 1, !tbaa !33
  %.not.5.i11 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i11, label %bb.u, label %_ZeqRK4GUIDS1_.exit23.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !33
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 6), align 2, !tbaa !33
  %.not.6.i12 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i12, label %bb.v, label %_ZeqRK4GUIDS1_.exit23.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !33
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 7), align 1, !tbaa !33
  %.not.7.i13 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i13, label %bb.w, label %_ZeqRK4GUIDS1_.exit23.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !33
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 8), align 4, !tbaa !33
  %.not.8.i14 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i14, label %bb.x, label %_ZeqRK4GUIDS1_.exit23.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 9), align 1, !tbaa !33
  %.not.9.i15 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i15, label %bb.y, label %_ZeqRK4GUIDS1_.exit23.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !33
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 10), align 2, !tbaa !33
  %.not.10.i16 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i16, label %bb.z, label %_ZeqRK4GUIDS1_.exit23.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !33
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetDecoderProperties2, i64 11), align 1, !tbaa !33
  %.not.11.i17 = icmp eq i8 %i.cb, %i.cc
end_hunk_0
