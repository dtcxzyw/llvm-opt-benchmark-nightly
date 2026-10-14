Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/float_conversion?download=true
inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE:bb.a
._crit_edge.i56:                                  ; preds = %.peel.next.i63, %bb.t, %bb.r
  %.0.lcssa.i57 = phi i64 [ %i.dp, %bb.r ], [ %i.ee, %bb.t ], [ %i.el, %.peel.next.i63 ] ; 2 uses
  %.lcssa.i58 = phi ptr [ %i.dx, %bb.r ], [ %i.eb, %bb.t ], [ %i.eb, %.peel.next.i63 ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i58, i8 48, i64 %.0.lcssa.i57, i1 false)
  %i.ep = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.0.lcssa.i57
  store ptr %i.eq, ptr %i.dv, align 8, !tbaa !58
  %.pre92 = load ptr, ptr %i.az, align 8, !tbaa !41
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit, %._crit_edge.i56
  %i.er = phi ptr [ %i.do, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE.exit ], [ %.pre92, %._crit_edge.i56 ] ; 7 uses
  %i.es = icmp eq i64 %.sroa.12.082, 0
  br i1 %i.es, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit75, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !57
  %i.ev = add i64 %i.eu, %.sroa.12.082
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 1056 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 8 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 4 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.ey, %i.fa                    ; 4 uses
  %i.fc = icmp ugt i64 %.sroa.12.082, %i.fb
  br i1 %i.fc, label %.lr.ph.i69, label %._crit_edge.i66

.lr.ph.i69:                                       ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 8 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fg = sub nuw nsw i64 %.sroa.12.082, %i.fb    ; 3 uses
  %.not.peel.i70 = icmp eq ptr %i.ew, %i.ez
  br i1 %.not.peel.i70, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i69
  call void @llvm.memset.p0.i64(ptr align 1 %i.ez, i8 32, i64 %i.fb, i1 false)
  %i.fh = load ptr, ptr %i.ex, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fb ; 2 uses
  store ptr %i.fi, ptr %i.ex, align 8, !tbaa !58
  %.pre.i71 = ptrtoint ptr %i.fi to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i69
  %.pre-phi.i72 = phi i64 [ %.pre.i71, %bb.v ], [ %i.ey, %.lr.ph.i69 ]
  %i.fj = sub i64 %.pre-phi.i72, %i.fe
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !59
  %i.fl = load ptr, ptr %i.er, align 8, !tbaa !60
  call void %i.fk(ptr noundef %i.fl, i64 %i.fj, ptr nonnull %i.fd), !inline_history !7
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !58
  %i.fm = icmp samesign ugt i64 %i.fg, 1024
  br i1 %i.fm, label %.peel.next.i73, label %._crit_edge.i66

.peel.next.i73:                                   ; preds = %bb.w, %.peel.next.i73
  %.010.i74 = phi i64 [ %i.fn, %.peel.next.i73 ], [ %i.fg, %bb.w ]
  %i.fn = add i64 %.010.i74, -1024                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fd, i8 32, i64 1024, i1 false)
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !58
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !59
  %i.fp = load ptr, ptr %i.er, align 8, !tbaa !60
  call void %i.fo(ptr noundef %i.fp, i64 1024, ptr nonnull %i.fd), !inline_history !7
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !58
  %i.fq = icmp ugt i64 %i.fn, 1024
  br i1 %i.fq, label %.peel.next.i73, label %._crit_edge.i66, !llvm.loop !8

._crit_edge.i66:                                  ; preds = %.peel.next.i73, %bb.w, %bb.u
  %.0.lcssa.i67 = phi i64 [ %.sroa.12.082, %bb.u ], [ %i.fg, %bb.w ], [ %i.fn, %.peel.next.i73 ] ; 2 uses
  %.lcssa.i68 = phi ptr [ %i.ez, %bb.u ], [ %i.fd, %bb.w ], [ %i.fd, %.peel.next.i73 ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i68, i8 32, i64 %.0.lcssa.i67, i1 false)
  %i.fr = load ptr, ptr %i.ex, align 8, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.0.lcssa.i67
  store ptr %i.fs, ptr %i.ex, align 8, !tbaa !58
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit75

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit75: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65, %._crit_edge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [128 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 128), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 256), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [384 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %i.a, i8 0, i64 1536, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 384), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 512), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [640 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2560) %i.a, i8 0, i64 2560, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 640), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !33
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16, !tbaa !67  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %2, ptr %i.f, align 8, !tbaa !118
  %i.g = sdiv i32 %i.c, 32
  %i.h = add nsw i32 %i.g, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = add nsw i32 %i.c, 159
  %i.k = sdiv i32 %i.j, 32
  %i.l = mul nsw i32 %i.k, 11
  %i.m = sdiv i32 %i.l, 10
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !78
  %i.p = srem i32 %i.c, 32                        ; 2 uses
  %i.q = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.r = shl nuw i128 %i.q, 64
  %i.s = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.t = or disjoint i128 %i.r, %i.s
  %i.u = zext nneg i32 %i.p to i128
  %i.v = shl i128 %i.s, %i.u
  %i.w = trunc i128 %i.v to i32
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  store i32 %i.w, ptr %i.y, align 4, !tbaa !19
  %i.z = sub nsw i32 32, %i.p
  %i.aa = zext nneg i32 %i.z to i128
  %i.ab = lshr i128 %i.t, %i.aa                   ; 2 uses
  %i.ac = trunc i128 %i.ab to i64                 ; 2 uses
  %i.ad = lshr i128 %i.ab, 64                     ; 2 uses
  %.not.i40.i.i.i.i.i = icmp ne i64 %i.ac, 0
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = or i1 %.not.i40.i.i.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader39.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.ag = trunc nuw nsw i128 %i.ad to i64
  br label %.lr.ph.i.i.i.i.i

.preheader39.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.022.lcssa.i.i.i.i.i = phi i64 [ %i.i, %bb.a ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i64 %.022.lcssa.i.i.i.i.i, 0
  br i1 %.not46.i.i.i.i.i, label %.preheader39._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader39._crit_edge.i.i.i.i.i:                ; preds = %.preheader39.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !19
  %i.ah = add nsw i64 %i.n, 1
  br label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.02243.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.8.042.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.030.041.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ai = trunc i64 %.sroa.030.041.i.i.i.i.i to i32
  %i.aj = add i64 %.02243.i.i.i.i.i, 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02243.i.i.i.i.i
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !19
  %i.al = zext nneg i64 %.sroa.8.042.i.i.i.i.i to i128
  %i.am = shl nuw nsw i128 %i.al, 64
  %i.an = zext i64 %.sroa.030.041.i.i.i.i.i to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = lshr i128 %i.ao, 32
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i64 %.sroa.8.042.i.i.i.i.i, 32     ; 2 uses
  %i.as = or i64 %i.ar, %i.aq
  %.not53.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not53.i.i.i.i.i, label %.preheader39.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !113

.preheader.i.i.i.i.i:                             ; preds = %.preheader39.i.i.i.i.i, %bb.b
  %5 = phi i64 [ %i.az, %bb.b ], [ %i.n, %.preheader39.i.i.i.i.i ] ; 2 uses
  %.147.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.b ], [ %.022.lcssa.i.i.i.i.i, %.preheader39.i.i.i.i.i ] ; 8 uses
  %xtraiter = and i64 %.147.i.i.i.i.i, 1
  %6 = icmp eq i64 %.147.i.i.i.i.i, 1
  br i1 %6, label %.preheader.i.i.i.i.i.a, label %.preheader.i.i.i.i.i.new

.preheader.i.i.i.i.i.new:                         ; preds = %.preheader.i.i.i.i.i
  %unroll_iter = and i64 %.147.i.i.i.i.i, -2
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.b, label %.preheader.i.i.i.i.i.a

.preheader.i.i.i.i.i.a:                           ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i
  %i.at = phi i64 [ %.147.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bb, %.unr-lcssa ]
  %.147.i.i.i.i.i.a = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bj, %.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %.147.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %7 = getelementptr [4 x i8], ptr %1, i64 %i.at
  %8 = getelementptr i8, ptr %7, i64 -4           ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %.147.i.i.i.i.i.a, 32
  %12 = or disjoint i64 %11, %10                  ; 2 uses
  %13 = udiv i64 %12, 1000000000
  %14 = trunc nuw i64 %13 to i32
  store i32 %14, ptr %8, align 4, !tbaa !19
  %15 = urem i64 %12, 1000000000
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.a
  %.lcssa = phi i64 [ %i.bj, %.unr-lcssa ], [ %15, %.preheader.i.i.i.i.i.a ]
  %i.au = trunc nuw nsw i64 %.lcssa to i32        ; 2 uses
  %i.av = add i64 %.147.i.i.i.i.i, -1             ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select.i.i.i.i.i = select i1 %i.ay, i64 %i.av, i64 %.147.i.i.i.i.i ; 2 uses
  %i.az = add i64 %5, -1                          ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !114

bb.c:                                             ; preds = %bb.c, %.preheader.i.i.i.i.i.new
  %.02345.i.i.i.i.i = phi i64 [ %.147.i.i.i.i.i, %.preheader.i.i.i.i.i.new ], [ %i.bb, %bb.c ] ; 2 uses
  %.02345.i.i.i.i.i.a = phi i64 [ 0, %.preheader.i.i.i.i.i.new ], [ %i.bj, %bb.c ]
  %.02444.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.new ], [ %niter.next.1, %bb.c ]
  %16 = getelementptr [4 x i8], ptr %1, i64 %.02345.i.i.i.i.i
  %17 = getelementptr i8, ptr %16, i64 -4         ; 2 uses
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %.02345.i.i.i.i.i.a, 32
  %21 = or disjoint i64 %20, %19                  ; 2 uses
  %22 = udiv i64 %21, 1000000000
  %23 = trunc nuw i64 %22 to i32
  store i32 %23, ptr %17, align 4, !tbaa !19
  %24 = urem i64 %21, 1000000000
  %i.bb = add i64 %.02345.i.i.i.i.i, -2           ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %24, 32
  %i.bg = or disjoint i64 %i.bf, %i.be            ; 2 uses
  %i.bh = udiv i64 %i.bg, 1000000000
  %i.bi = trunc nuw i64 %i.bh to i32
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !19
  %i.bj = urem i64 %i.bg, 1000000000              ; 3 uses
  %niter.next.1 = add i64 %.02444.i.i.i.i.i, 2    ; 2 uses
  %.not26.i.i.i.i.i = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %.not26.i.i.i.i.i, label %.unr-lcssa, label %bb.c, !llvm.loop !115

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %.preheader39._crit_edge.i.i.i.i.i
  %i.bk = phi i32 [ %.pre.i.i.i.i.i, %.preheader39._crit_edge.i.i.i.i.i ], [ %i.au, %bb.b ] ; 2 uses
  %i.bl = phi i64 [ %i.ah, %.preheader39._crit_edge.i.i.i.i.i ], [ %5, %bb.b ]
  store i64 %i.bl, ptr %4, align 8, !tbaa !79
  %.not2548.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not2548.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit, label %.lr.ph51.i.i.i.i.i

.lr.ph51.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph51.i.i.i.i.i
  %.049.i.i.i.i.i = phi i32 [ %i.bk, %.lr.ph51.i.i.i.i.i ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bn = urem i32 %.049.i.i.i.i.i, 10
  %i.bo = trunc nuw nsw i32 %i.bn to i8
  %i.bp = or disjoint i8 %i.bo, 48
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.d, align 8, !tbaa !76
  %i.bs = sub i64 8, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  store i8 %i.bp, ptr %i.bt, align 1, !tbaa !25
  %i.bu = udiv i32 %.049.i.i.i.i.i, 10
  %.not25.i.i.i.i.i = icmp ult i32 %.049.i.i.i.i.i, 10
  br i1 %.not25.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit, label %bb.d, !llvm.loop !116

_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 16, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !117
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %i.c = load i64, ptr %2, align 8, !tbaa !79
  %i.d = sub i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !76   ; 8 uses
  %i.h = add i64 %i.e, %i.g
  %i.i = load ptr, ptr %0, align 8, !tbaa !127, !nonnull !80, !align !81 ; 8 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !39 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24
  %i.n = and i8 %i.m, 8
  %.not66.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not66.i.i.i.i, label %bb.b, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, %bb.a
  %i.o = add i64 %.val3.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i ], [ 0, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i ]
  %i.q = add i64 %i.h, %i.p
  %i.r = load i8, ptr %i.i, align 8, !tbaa !38    ; 5 uses
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i to i64
  %i.t = add i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27, !noalias !128 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %.not.i6.i.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i6.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw nsw i64 %i.x, %i.t               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24, !noalias !128 ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i8 %i.aa, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ah = add i64 %i.ag, %i.y
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = sub nuw nsw i64 %i.y, %i.an             ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.peel.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 32, i64 %i.an, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !58
  %.pre.i.i.i.i.i = ptrtoint ptr %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.av = sub i64 %.pre-phi.i.i.i.i.i, %i.aq
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !60
  tail call void %i.aw(ptr noundef %i.ax, i64 %i.av, ptr nonnull %i.ap), !inline_history !122
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !58
  %i.ay = icmp samesign ugt i64 %i.as, 1024
  br i1 %i.ay, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %.peel.next.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.az = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 32, i64 1024, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !58
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !59
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !60
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap), !inline_history !122
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !58
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !8

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !58
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !127 ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !38
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !60
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !122
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !58
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  store i8 %i.bf, ptr %.lcssa.i9.i.i.i.i, align 1
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !58
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !127
  br label %bb.i
end_hunk_0
