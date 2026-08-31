Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/fmt-c?download=true
inline.NumInlined: 42
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.fmt::v12::detail::iterator_buffer" = type { %"class.fmt::v12::detail::fixed_buffer_traits", %"class.fmt::v12::detail::buffer", ptr, [256 x i8] }
%"class.fmt::v12::detail::fixed_buffer_traits" = type { i64, i64 }
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.fmt::v12::detail::value" = type { %union.anon }
%union.anon = type { i128 }

$_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm = comdat any

; Function Attrs: mustprogress uwtable
define hidden i32 @fmt_vformat(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 11 uses
  %6 = alloca [16 x %"class.fmt::v12::basic_format_arg"], align 16 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 0, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 0, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 0, ptr %i.e, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 0, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 240
  store i32 0, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 272
  store i32 0, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 304
  store i32 0, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 336
  store i32 0, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 368
  store i32 0, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 400
  store i32 0, ptr %i.m, align 16, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 432
  store i32 0, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 464
  store i32 0, ptr %i.o, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 496
  store i32 0, ptr %i.p, align 16, !tbaa !10
  %i.q = icmp ugt i64 %4, 16
  br i1 %i.q, label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.04380.i = phi i64 [ %i.at, %bb.k ], [ 0, %.preheader.i ] ; 12 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.04380.i ; 10 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !14
  switch i32 %i.s, label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 10, label %bb.g
    i32 11, label %bb.h
    i32 12, label %bb.i
    i32 14, label %bb.j
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !17
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i64 %i.u, ptr %i.v, align 16
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 16, !tbaa !17
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i64 %i.x, ptr %i.y, align 16
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i8, ptr %i.z, align 16, !tbaa !19, !range !21, !noundef !22
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i8 %i.aa, ptr %i.ab, align 16
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ad = load i8, ptr %i.ac, align 16, !tbaa !23
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i8 %i.ad, ptr %i.ae, align 16
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %7 = load i32, ptr %i.af, align 16, !tbaa !24
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i32 %7, ptr %i.ag, align 16
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %8 = load i64, ptr %i.ah, align 16, !tbaa !26
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i64 %8, ptr %i.ai, align 16
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ak = load x86_fp80, ptr %i.aj, align 16, !tbaa !28
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store x86_fp80 %i.ak, ptr %i.al, align 16
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !30
  %9 = ptrtoint ptr %i.an to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i64 %9, ptr %i.ao, align 16
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !33
  %10 = ptrtoint ptr %i.aq to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  store i64 %10, ptr %i.ar, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i32 [ 3, %bb.b ], [ 4, %bb.c ], [ 7, %bb.d ], [ 8, %bb.e ], [ 9, %bb.f ], [ 10, %bb.g ], [ 11, %bb.h ], [ 12, %bb.i ], [ 14, %bb.j ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %.04380.i
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %.sink.i, ptr %.sroa.477.0..sroa_idx.i, align 16, !tbaa !34
  %i.at = add nuw nsw i64 %.04380.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %4
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !35

.loopexit:                                        ; preds = %bb.k, %.preheader.i
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #5
  %i.av = or disjoint i64 %4, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i64 0, ptr %5, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %0, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %1, ptr %i.az, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %0, ptr %i.bb, align 8, !tbaa !46
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr nonnull %2, i64 %i.au, i64 %i.av, ptr nonnull %6, ptr null)
          to label %bb.l unwind label %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEED2Ev.exit13.i

bb.l:                                             ; preds = %.loopexit
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.bd = load i64, ptr %5, align 8, !tbaa !37
  %i.be = add i64 %i.bd, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.bf = trunc i64 %i.be to i32
  br label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit

_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEED2Ev.exit13.i: ; preds = %.loopexit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.bh) #5 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit

_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit: ; preds = %.lr.ph.i, %bb.a, %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEED2Ev.exit13.i, %bb.l
  %.0 = phi i32 [ -1, %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEED2Ev.exit13.i ], [ %i.bf, %bb.l ], [ -2, %bb.a ], [ -2, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2, 1) i32 @fmt_vprint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [16 x %"class.fmt::v12::basic_format_arg"], align 16 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.b, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 0, ptr %i.e, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i32 0, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i32 0, ptr %i.h, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i32 0, ptr %i.i, align 16, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i32 0, ptr %i.j, align 16, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 336
  store i32 0, ptr %i.k, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 368
  store i32 0, ptr %i.l, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 400
  store i32 0, ptr %i.m, align 16, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 432
  store i32 0, ptr %i.n, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 464
  store i32 0, ptr %i.o, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 496
  store i32 0, ptr %i.p, align 16, !tbaa !10
  %i.q = icmp ugt i64 %3, 16
  br i1 %i.q, label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.04380.i = phi i64 [ %i.at, %bb.k ], [ 0, %.preheader.i ] ; 12 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.04380.i ; 10 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !14
  switch i32 %i.s, label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 7, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 10, label %bb.g
    i32 11, label %bb.h
    i32 12, label %bb.i
    i32 14, label %bb.j
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !17
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i64 %i.u, ptr %i.v, align 16
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 16, !tbaa !17
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i64 %i.x, ptr %i.y, align 16
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i8, ptr %i.z, align 16, !tbaa !19, !range !21, !noundef !22
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i8 %i.aa, ptr %i.ab, align 16
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ad = load i8, ptr %i.ac, align 16, !tbaa !23
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i8 %i.ad, ptr %i.ae, align 16
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %5 = load i32, ptr %i.af, align 16, !tbaa !24
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i32 %5, ptr %i.ag, align 16
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %6 = load i64, ptr %i.ah, align 16, !tbaa !26
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i64 %6, ptr %i.ai, align 16
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ak = load x86_fp80, ptr %i.aj, align 16, !tbaa !28
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store x86_fp80 %i.ak, ptr %i.al, align 16
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !30
  %7 = ptrtoint ptr %i.an to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i64 %7, ptr %i.ao, align 16
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !33
  %8 = ptrtoint ptr %i.aq to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  store i64 %8, ptr %i.ar, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i32 [ 3, %bb.b ], [ 4, %bb.c ], [ 7, %bb.d ], [ 8, %bb.e ], [ 9, %bb.f ], [ 10, %bb.g ], [ 11, %bb.h ], [ 12, %bb.i ], [ 14, %bb.j ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.04380.i
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %.sink.i, ptr %.sroa.477.0..sroa_idx.i, align 16, !tbaa !34
  %i.at = add nuw nsw i64 %.04380.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %3
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !35

.loopexit:                                        ; preds = %bb.k, %.preheader.i
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %i.av = or disjoint i64 %3, -9223372036854775808
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %0, ptr nonnull %1, i64 %i.au, i64 %i.av, ptr nonnull %4)
          to label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit unwind label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #5 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit

_ZL21convert_c_format_argsPN3fmt3v1216basic_format_argINS0_7contextEEEPK7fmt_argm.exit: ; preds = %.lr.ph.i, %bb.a, %.loopexit, %bb.l
  %.0 = phi i32 [ -1, %bb.l ], [ 0, %.loopexit ], [ -2, %bb.a ], [ -2, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.0
}

declare void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.j = add i64 %i.i, %i.b
  store i64 %i.j, ptr %i.f, align 8, !tbaa !37
  %i.k = load ptr, ptr %0, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE5flushEv.exit

bb.c:                                             ; preds = %bb.b
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.i)
  %i.o = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %spec.select.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  store ptr %i.p, ptr %i.l, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %0, align 8, !tbaa !41
  store i64 256, ptr %i.c, align 8, !tbaa !44
  br label %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE5flushEv.exit

_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE5flushEv.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.a, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE5flushEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !13, i64 16}
!11 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !12, i64 0, !13, i64 16}
!12 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !8, i64 0}
!13 = !{!"_ZTSN3fmt3v126detail4typeE", !8, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTS7fmt_arg", !16, i64 0, !8, i64 16}
!16 = !{!"_ZTS8fmt_type", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long long", !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"bool", !8, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !8, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !8, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long double", !8, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 omnipotent char", !32, i64 0}
!32 = !{!"any pointer", !8, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!13, !13, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN3fmt3v126detail19fixed_buffer_traitsE", !39, i64 0, !39, i64 8}
!39 = !{!"long", !8, i64 0}
!40 = !{!38, !39, i64 8}
!41 = !{!42, !31, i64 0}
!42 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !31, i64 0, !39, i64 8, !39, i64 16, !32, i64 24}
!43 = !{!42, !39, i64 8}
!44 = !{!42, !39, i64 16}
!45 = !{!42, !32, i64 24}
!46 = !{!47, !31, i64 48}
!47 = !{!"_ZTSN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE", !38, i64 0, !42, i64 16, !31, i64 48, !8, i64 56}
end_hunk_0
