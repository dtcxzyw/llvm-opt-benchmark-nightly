Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/date?download=true
inline.NumInlined: 1001
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal12ToDateStringEdPNS0_9DateCacheENS0_16ToDateStringModeE:bb.a
  store i32 %i.ar, ptr %i.ht, align 16, !noalias !35
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.at, ptr %i.hu, align 8, !noalias !35
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %i.au, ptr %i.hv, align 16, !noalias !35
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.9, i64 35, ptr nonnull %7, i64 7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !35
  %i.hw = load i32, ptr %i.hn, align 8, !noalias !35
  %i.hx = sext i32 %i.hw to i64                   ; 3 uses
  %i.hy = load ptr, ptr %i.hi, align 8, !alias.scope !35
  %i.hz = load ptr, ptr %0, align 8, !alias.scope !35 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = icmp ult i64 %i.ic, %i.hx
  br i1 %i.id, label %bb.t, label %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %i.hx)
  %.pre.i.i30 = load ptr, ptr %0, align 8, !alias.scope !35
  br label %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit

_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit: ; preds = %bb.s, %bb.t
  %i.ie = phi ptr [ %.pre.i.i30, %bb.t ], [ %i.hz, %bb.s ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hx
  store ptr %i.if, ptr %i.hh, align 8, !alias.scope !35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !35
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.ig = icmp slt i32 %i.hc, 0
  br i1 %i.ig, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ih = sub nsw i32 0, %i.hc
  %i.ii = load i32, ptr %i.b, align 4
  %i.ij = add nsw i32 %i.ii, 1
  %i.ik = load i32, ptr %i.c, align 4
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.10, i32 noundef %i.ih, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef %i.au)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.il = load i32, ptr %i.b, align 4
  %i.im = add nsw i32 %i.il, 1
  %i.in = load i32, ptr %i.c, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.io, ptr %0, align 8, !alias.scope !36
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ir, ptr %i.iq, align 8, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal29SmallStringOptimizedAllocatorILm128EEE, i64 16), ptr %5, align 8, !noalias !36
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.is, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !36
  store ptr %5, ptr %6, align 8, !noalias !36
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %i.it, align 8, !noalias !36
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 16, ptr %i.iu, align 4, !noalias !36
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 0, ptr %i.iv, align 8, !noalias !36
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ix, ptr %i.ip, align 8, !alias.scope !36
  store ptr %i.io, ptr %i.iw, align 8, !noalias !36
  store i8 0, ptr %i.io, align 8, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !36
  store i32 %i.hc, ptr %4, align 16, !noalias !36
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.im, ptr %i.iy, align 8, !noalias !36
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.in, ptr %i.iz, align 16, !noalias !36
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.ap, ptr %i.ja, align 8, !noalias !36
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.ar, ptr %i.jb, align 16, !noalias !36
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.at, ptr %i.jc, align 8, !noalias !36
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.au, ptr %i.jd, align 16, !noalias !36
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.11, i64 36, ptr nonnull %4, i64 7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !36
  %i.je = load i32, ptr %i.iv, align 8, !noalias !36
  %i.jf = sext i32 %i.je to i64                   ; 3 uses
  %i.jg = load ptr, ptr %i.iq, align 8, !alias.scope !36
  %i.jh = load ptr, ptr %0, align 8, !alias.scope !36 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = icmp ult i64 %i.jk, %i.jf
  br i1 %i.jl, label %bb.x, label %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit32

bb.x:                                             ; preds = %bb.w
  call preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %i.jf)
  %.pre.i.i31 = load ptr, ptr %0, align 8, !alias.scope !36
  br label %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit32

_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit32: ; preds = %bb.w, %bb.x
  %i.jm = phi ptr [ %.pre.i.i31, %bb.x ], [ %i.jh, %bb.w ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jf
  store ptr %i.jn, ptr %i.ip, align 8, !alias.scope !36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !36
  br label %bb.z

bb.y:                                             ; preds = %_ZN2v88internal9DateCache13LocalTimezoneEl.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #17
  unreachable

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit32, %bb.v, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKciS4_iiiiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_.exit, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiiiiciiS4_EEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_.exit, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiciiPKcEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_.exit, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN2v88internal12_GLOBAL__N_110FormatDateIJEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
_ZN2v88internal29SmallStringOptimizedAllocatorILm128EE8allocateEj.exit:
  %9 = alloca [7 x %"class.v8::internal::StringStream::FmtElm"], align 16 ; 10 uses
  %10 = alloca %"class.v8::internal::SmallStringOptimizedAllocator", align 8 ; 5 uses
  %11 = alloca %"class.v8::internal::StringStream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal29SmallStringOptimizedAllocatorILm128EEE, i64 16), ptr %10, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %10, ptr %11, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 16, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.a, ptr %i.i, align 8
  store i8 0, ptr %i.a, align 8
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 %2, ptr %9, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %4, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %5, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %6, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %7, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 %8, ptr %i.q, align 16
  call void @_ZN2v88internal12StringStream3AddENS_4base6VectorIKcEENS3_INS1_6FmtElmEEE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull %1, i64 %i.k, ptr nonnull %9, i64 7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.r = load i32, ptr %i.h, align 8
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %bb.a, label %_ZN2v84base11SmallVectorIcLm128ESaIcEE6resizeEm.exit

bb.a:                                             ; preds = %_ZN2v88internal29SmallStringOptimizedAllocatorILm128EE8allocateEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIcLm128ESaIcEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %i.s)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN2v84base11SmallVectorIcLm128ESaIcEE6resizeEm.exit

_ZN2v84base11SmallVectorIcLm128ESaIcEE6resizeEm.exit: ; preds = %_ZN2v88internal29SmallStringOptimizedAllocatorILm128EE8allocateEj.exit, %bb.a
  %i.z = phi ptr [ %.pre.i, %bb.a ], [ %i.u, %_ZN2v88internal29SmallStringOptimizedAllocatorILm128EE8allocateEj.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  store ptr %i.aa, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN2v88internal19ParseDateTimeStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %i.a = alloca [8 x double], align 16            ; 11 uses
  %3 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %4 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 10 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2 ; 3 uses
  %i.i = and i16 %i.h, -127
  %.not = icmp eq i16 %i.i, 1
  br i1 %.not, label %bb.b, label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = and i16 %i.h, 7
  %i.k = icmp eq i16 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v acquire, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call ptr @_ZN2v88internal6String11SlowFlattenINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE(ptr noundef %0, ptr nonnull %1, i8 noundef zeroext 0)
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

bb.e:                                             ; preds = %.thread, %bb.b
  %.sroa.039.0 = phi i16 [ %i.z, %.thread ], [ %i.h, %bb.b ]
  %.sroa.012.1.i = phi i64 [ %i.t, %.thread ], [ %i.b, %bb.b ] ; 2 uses
  %i.ab = and i16 %.sroa.039.0, -121
  %i.ac = icmp eq i16 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %.sroa.012.1.i, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.012.2.i = phi i64 [ %i.ag, %bb.f ], [ %.sroa.012.1.i, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.am = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.am, %bb.h ], [ %i.ai, %bb.g ] ; 3 uses
  %i.an = ptrtoint ptr %.0.i to i64
  %i.ao = add i64 %i.an, 8
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.ah, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.a, %bb.d, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.044.1 = phi ptr [ %i.aa, %bb.d ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aq = load i64, ptr %.sroa.044.1, align 8
  %i.ar = add i64 %i.aq, -1
  %i.as = inttoptr i64 %i.ar to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !55, !noalias !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4, !noalias !56
  %i.av = load atomic volatile i64, ptr %i.as acquire, align 8, !noalias !57
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2, !noalias !57
  %i.az = and i16 %i.ay, 15
  switch i16 %i.az, label %bb.s [
    i16 8, label %bb.i
    i16 0, label %bb.j
    i16 9, label %bb.t
    i16 1, label %bb.t
    i16 10, label %bb.k
    i16 2, label %bb.o
    i16 11, label %bb.t
    i16 3, label %bb.t
    i16 13, label %bb.t
    i16 5, label %bb.t
  ]

bb.i:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.j:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !58
  %i.be = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bf = load atomic volatile i64, ptr %i.as monotonic, align 8, !noalias !58
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2, !noalias !58
  %i.bj = and i16 %i.bi, 16
  %.not.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.be, align 8, !noalias !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !58
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #16, !noalias !58, !inline_history !49
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #16, !noalias !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !58
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bq = load ptr, ptr %i.be, align 8, !noalias !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !58
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #16, !noalias !58, !inline_history !49
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.o:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !59
  %i.bw = inttoptr i64 %i.bv to ptr               ; 6 uses
  %i.bx = load atomic volatile i64, ptr %i.as monotonic, align 8, !noalias !59
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2, !noalias !59
  %i.cb = and i16 %i.ca, 16
  %.not.i14 = icmp eq i16 %i.cb, 0
  br i1 %.not.i14, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bw, align 8, !noalias !59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !59
  %i.cf = tail call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #16, !noalias !59, !inline_history !52
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #16, !noalias !59
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !59
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ci = load ptr, ptr %i.bw, align 8, !noalias !59
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !59
  %i.cl = tail call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #16, !noalias !59, !inline_history !52
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.s:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #17, !noalias !60
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.q, %bb.m, %bb.r, %bb.n, %bb.j, %bb.i
  %.sroa.046.sroa.8.0.ph = phi i32 [ 2, %bb.q ], [ 1, %bb.m ], [ 2, %bb.r ], [ 1, %bb.n ], [ 2, %bb.j ], [ 1, %bb.i ]
  %.sroa.046.sroa.0.0.ph = phi ptr [ %i.ch, %bb.q ], [ %i.bp, %bb.m ], [ %i.cl, %bb.r ], [ %i.bt, %bb.n ], [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  store ptr %.sroa.046.sroa.0.0.ph, ptr %4, align 8
  %.sroa.046.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.au, ptr %.sroa.046.sroa.7.0..sroa_idx86, align 8
  %.sroa.046.sroa.8.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.046.sroa.8.0.ph, ptr %.sroa.046.sroa.8.0..sroa_idx92, align 4
  %.sroa.046.sroa.9.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.046.sroa.9.0..sroa_idx98, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.t:                                             ; preds = %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %4, ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !range !7, !noundef !8
  %i.co = trunc nuw i8 %i.cn to i1
  store i8 0, ptr %i.cm, align 8
  br i1 %i.co, label %bb.u, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.u:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cp = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #16
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !54
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, 1
  %i.ct = load ptr, ptr %4, align 8               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  br i1 %i.cs, label %.split, label %bb.w

.split:                                           ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.cx = call noundef zeroext i1 @_ZN2v88internal10DateParser5ParseIKhEEbPNS0_7IsolateENS_4base6VectorIT_EEPd(ptr noundef %0, ptr %i.ct, i64 %i.cw, ptr noundef nonnull %i.a)
  br i1 %i.cx, label %bb.x, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit

bb.w:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.cy = call noundef zeroext i1 @_ZN2v88internal10DateParser5ParseIKtEEbPNS0_7IsolateENS_4base6VectorIT_EEPd(ptr noundef %0, ptr %i.ct, i64 %i.cw, ptr noundef nonnull %i.a)
  br i1 %i.cy, label %bb.x, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit

bb.x:                                             ; preds = %.split, %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load double, ptr %i.cz, align 16        ; 5 uses
  %5 = load <2 x double>, ptr %i.a, align 16      ; 3 uses
  %6 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %5)
  %7 = fcmp ugt <2 x double> %6, <double 1.000000e+06, double 1.000000e+07>
  %8 = bitcast <2 x i1> %7 to i2
  %9 = icmp ne i2 %8, 0
  %i.db = call double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ueq double %i.db, +inf
  %or.cond40.i = or i1 %9, %i.dc
  br i1 %or.cond40.i, label %_ZN2v88internal7MakeDayEddd.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %10 = extractelement <2 x double> %5, i64 0
  %i.dd = fptosi double %10 to i32
  %11 = extractelement <2 x double> %5, i64 1
  %i.de = fptosi double %11 to i32                ; 2 uses
  %i.df = sdiv i32 %i.de, 12
  %i.dg = add nsw i32 %i.df, %i.dd
  %i.dh = srem i32 %i.de, 12                      ; 4 uses
  %i.di = icmp slt i32 %i.dh, 0
  %i.dj = add nsw i32 %i.dh, 12
  %.lobit.i = ashr i32 %i.dh, 31
  %.032.i = add nsw i32 %i.dg, %.lobit.i          ; 4 uses
  %.031.i = select i1 %i.di, i32 %i.dj, i32 %i.dh
  %i.dk = add nsw i32 %.032.i, 399999             ; 4 uses
  %i.dl = mul nsw i32 %i.dk, 365
  %i.dm = sdiv i32 %i.dk, 4
  %.neg.i = sdiv i32 %i.dk, -100
  %i.dn = sdiv i32 %i.dk, 400
  %i.do = and i32 %.032.i, 3
  %.not.i18 = icmp eq i32 %i.do, 0
  br i1 %.not.i18, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dp = srem i32 %.032.i, 100
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = srem i32 %.032.i, 400
  %.not37.i = icmp eq i32 %i.dr, 0
  %or.cond38.i = or i1 %i.dq, %.not37.i
  %spec.select.i = select i1 %or.cond38.i, ptr @_ZZN2v88internal7MakeDayEdddE13kDayFromMonth_0, ptr @_ZZN2v88internal7MakeDayEdddE13kDayFromMonth
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %_ZZN2v88internal7MakeDayEdddE13kDayFromMonth_0.sink.i = phi ptr [ @_ZZN2v88internal7MakeDayEdddE13kDayFromMonth, %bb.y ], [ %spec.select.i, %bb.z ]
  %i.ds = zext nneg i32 %.031.i to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %_ZZN2v88internal7MakeDayEdddE13kDayFromMonth_0.sink.i, i64 %i.ds
  %.pn.i = load i32, ptr %i.dt, align 4
  %i.du = add nsw i32 %i.dm, -146816163
  %i.dv = add i32 %i.du, %i.dl
  %i.dw = add i32 %i.dv, %.neg.i
  %.0.i19 = add i32 %i.dw, %i.dn
  %i.dx = add i32 %.0.i19, %.pn.i
  %i.dy = sitofp i32 %i.dx to double
  %or.cond.i.i = fcmp ueq double %i.da, 0.000000e+00
  br i1 %or.cond.i.i, label %_ZN2v88internal15DoubleToIntegerEd.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = fcmp ogt double %i.da, 0.000000e+00
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ea = call double @llvm.floor.f64(double %i.da)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.eb = call double @llvm.ceil.f64(double %i.da)
  %i.ec = fadd double %i.eb, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i

_ZN2v88internal15DoubleToIntegerEd.exit.i:        ; preds = %bb.ad, %bb.ac, %bb.aa
  %.0.i.i = phi double [ 0.000000e+00, %bb.aa ], [ %i.ec, %bb.ad ], [ %i.ea, %bb.ac ]
  %i.ed = fadd double %.0.i.i, %i.dy
  br label %_ZN2v88internal7MakeDayEddd.exit

_ZN2v88internal7MakeDayEddd.exit:                 ; preds = %bb.x, %_ZN2v88internal15DoubleToIntegerEd.exit.i
  %.033.i = phi double [ %i.ed, %_ZN2v88internal15DoubleToIntegerEd.exit.i ], [ +qnan, %bb.x ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ef = load double, ptr %i.ee, align 8         ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eh = load double, ptr %i.eg, align 16        ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ej = load double, ptr %i.ei, align 8         ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.el = load double, ptr %i.ek, align 16        ; 5 uses
  %i.em = call double @llvm.fabs.f64(double %i.ef)
  %i.en = fcmp ueq double %i.em, +inf
  %i.eo = call double @llvm.fabs.f64(double %i.eh)
  %i.ep = fcmp ueq double %i.eo, +inf
  %or.cond.i20 = or i1 %i.en, %i.ep
  %i.eq = call double @llvm.fabs.f64(double %i.ej)
  %i.er = fcmp ueq double %i.eq, +inf
  %or.cond24.i = or i1 %or.cond.i20, %i.er
  %i.es = call double @llvm.fabs.f64(double %i.el)
  %i.et = fcmp ueq double %i.es, +inf
  %or.cond26.i = or i1 %or.cond24.i, %i.et
  br i1 %or.cond26.i, label %_ZN2v88internal8MakeTimeEdddd.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal7MakeDayEddd.exit
  %or.cond.i.i21 = fcmp ueq double %i.ef, 0.000000e+00
  br i1 %or.cond.i.i21, label %_ZN2v88internal15DoubleToIntegerEd.exit.i22, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = fcmp ogt double %i.ef, 0.000000e+00
  br i1 %i.eu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ev = call double @llvm.floor.f64(double %i.ef)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i22

bb.ah:                                            ; preds = %bb.af
  %i.ew = call double @llvm.ceil.f64(double %i.ef)
  %i.ex = fadd double %i.ew, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit.i22

_ZN2v88internal15DoubleToIntegerEd.exit.i22:      ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i23 = phi double [ 0.000000e+00, %bb.ae ], [ %i.ex, %bb.ah ], [ %i.ev, %bb.ag ]
  %or.cond.i13.i = fcmp ueq double %i.eh, 0.000000e+00
  br i1 %or.cond.i13.i, label %_ZN2v88internal15DoubleToIntegerEd.exit15.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit.i22
  %i.ey = fcmp ogt double %i.eh, 0.000000e+00
  br i1 %i.ey, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ez = call nnan ninf double @llvm.floor.f64(double %i.eh)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit15.i

bb.ak:                                            ; preds = %bb.ai
  %i.fa = call nnan ninf double @llvm.ceil.f64(double %i.eh)
  %i.fb = fadd nnan double %i.fa, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit15.i

_ZN2v88internal15DoubleToIntegerEd.exit15.i:      ; preds = %bb.ak, %bb.aj, %_ZN2v88internal15DoubleToIntegerEd.exit.i22
  %.0.i14.i = phi double [ 0.000000e+00, %_ZN2v88internal15DoubleToIntegerEd.exit.i22 ], [ %i.fb, %bb.ak ], [ %i.ez, %bb.aj ]
  %or.cond.i16.i = fcmp ueq double %i.ej, 0.000000e+00
  br i1 %or.cond.i16.i, label %_ZN2v88internal15DoubleToIntegerEd.exit18.i, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit15.i
  %i.fc = fcmp ogt double %i.ej, 0.000000e+00
  br i1 %i.fc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fd = call double @llvm.floor.f64(double %i.ej)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit18.i

bb.an:                                            ; preds = %bb.al
  %i.fe = call double @llvm.ceil.f64(double %i.ej)
  %i.ff = fadd double %i.fe, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit18.i

_ZN2v88internal15DoubleToIntegerEd.exit18.i:      ; preds = %bb.an, %bb.am, %_ZN2v88internal15DoubleToIntegerEd.exit15.i
  %.0.i17.i = phi double [ 0.000000e+00, %_ZN2v88internal15DoubleToIntegerEd.exit15.i ], [ %i.ff, %bb.an ], [ %i.fd, %bb.am ]
  %or.cond.i19.i = fcmp ueq double %i.el, 0.000000e+00
  br i1 %or.cond.i19.i, label %_ZN2v88internal15DoubleToIntegerEd.exit21.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit18.i
  %i.fg = fcmp ogt double %i.el, 0.000000e+00
  br i1 %i.fg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fh = call double @llvm.floor.f64(double %i.el)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit21.i

bb.aq:                                            ; preds = %bb.ao
  %i.fi = call double @llvm.ceil.f64(double %i.el)
  %i.fj = fadd double %i.fi, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit21.i

_ZN2v88internal15DoubleToIntegerEd.exit21.i:      ; preds = %bb.aq, %bb.ap, %_ZN2v88internal15DoubleToIntegerEd.exit18.i
  %.0.i20.i = phi double [ 0.000000e+00, %_ZN2v88internal15DoubleToIntegerEd.exit18.i ], [ %i.fj, %bb.aq ], [ %i.fh, %bb.ap ]
  %i.fk = fmul nnan double %.0.i14.i, 6.000000e+04
  %i.fl = call double @llvm.fmuladd.f64(double %.0.i.i23, double 3.600000e+06, double %i.fk)
  %i.fm = call double @llvm.fmuladd.f64(double %.0.i17.i, double 1.000000e+03, double %i.fl)
  %i.fn = fadd double %i.fm, %.0.i20.i
  br label %_ZN2v88internal8MakeTimeEdddd.exit

_ZN2v88internal8MakeTimeEdddd.exit:               ; preds = %_ZN2v88internal7MakeDayEddd.exit, %_ZN2v88internal15DoubleToIntegerEd.exit21.i
  %.0.i24 = phi double [ %i.fn, %_ZN2v88internal15DoubleToIntegerEd.exit21.i ], [ +qnan, %_ZN2v88internal7MakeDayEddd.exit ] ; 2 uses
  %i.fo = call double @llvm.fabs.f64(double %.033.i)
  %i.fp = fcmp one double %i.fo, +inf
  %i.fq = call double @llvm.fabs.f64(double %.0.i24)
  %i.fr = fcmp one double %i.fq, +inf
  %or.cond.i25 = and i1 %i.fp, %i.fr
  %i.fs = call double @llvm.fmuladd.f64(double %.033.i, double 8.640000e+07, double %.0.i24)
  %.0.i26 = select i1 %or.cond.i25, double %i.fs, double +qnan ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fu = load double, ptr %i.ft, align 8         ; 2 uses
  %i.fv = fcmp uno double %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN2v88internal8MakeTimeEdddd.exit
  %i.fw = call double @llvm.fabs.f64(double %.0.i26)
  %or.cond = fcmp ugt double %i.fw, f0x433EB2095D5AC800
  br i1 %or.cond, label %_ZN2v88internal9DateCache11TryTimeClipEPd.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 59120
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.fz = fptosi double %.0.i26 to i64            ; 2 uses
  %i.ga = load ptr, ptr %i.fy, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(848) %i.fy, i64 noundef %i.fz, i1 noundef zeroext false) #16, !inline_history !53
  %i.ge = sext i32 %i.gd to i64
  %i.gf = sub nsw i64 %i.fz, %i.ge
  %i.gg = sitofp i64 %i.gf to double
  br label %bb.au

bb.at:                                            ; preds = %_ZN2v88internal8MakeTimeEdddd.exit
  %i.gh = fneg double %i.fu
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double 1.000000e+03, double %.0.i26)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge = phi double [ %i.gi, %bb.at ], [ %i.gg, %bb.as ] ; 4 uses
  %i.gj = call double @llvm.fabs.f64(double %storemerge)
end_hunk_0
begin_hunk_1_@_ZN2v88internal10DateParser11InputReaderIKtE8ReadWordEPji:bb.a

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = icmp slt i32 %i.r, %i.u
  br i1 %i.v, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  store i32 0, ptr %i.a, align 8
  %i.w = add nuw nsw i32 %i.r, 1
  store i32 %i.w, ptr %0, align 8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge.loopexit

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.x = sext i32 %i.r to i64
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = add nsw i32 %i.r, 1
  store i32 %i.ac, ptr %0, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = icmp ugt i16 %i.aa, 64
  br i1 %i.ad, label %bb.b, label %.critedge.loopexit, !llvm.loop !76

.critedge.loopexit:                               ; preds = %.split, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread
  %.012.lcssa.ph.in = phi i64 [ %indvars.iv.next29, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread ], [ %indvars.iv, %.split ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ], [ %indvars.iv, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit ]
  %.012.lcssa.ph = trunc i64 %.012.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.012.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %i.ae = icmp slt i32 %.012.lcssa, %2
  br i1 %i.ae, label %.lr.ph18.preheader, label %._crit_edge

.lr.ph18.preheader:                               ; preds = %.critedge
  %i.af = zext i32 %.012.lcssa to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag
  %i.ah = xor i32 %.012.lcssa, -1
  %i.ai = add i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph18.preheader, %.critedge
  ret i32 %.012.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE14SkipWhiteSpaceEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i32 %i.b, 256
  br i1 %i.c, label %.split, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit

.split:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit: ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.b) #16
  %i.i = and i32 %i.b, -2
  %switch.i = icmp eq i32 %i.i, 8232
  %or.cond.i = or i1 %switch.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.split, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit
  %i.j = load i32, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 2147483648
  br i1 %i.n, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.q = sext i32 %i.j to i64
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  br label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, %bb.d
  %i.v = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ]
  store i32 %i.v, ptr %i.a, align 8
  %i.w = add nsw i32 %i.j, 1
  store i32 %i.w, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.split, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit
  %.0.i2 = phi i1 [ false, %.split ], [ false, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit ], [ true, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ]
  ret i1 %.0.i2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE15SkipParenthesesEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 40                    ; 2 uses
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, 2147483648
  %i.g = load ptr, ptr %i.c, align 8
  br i1 %i.f, label %.preheader.split.us.preheader, label %.preheader.split, !prof !11

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.promoted = load i32, ptr %0, align 8          ; 2 uses
  %i.i = sext i32 %.promoted to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 %i.h) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us
  %indvars.iv = phi i64 [ %i.i, %.preheader.split.us.preheader ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us ] ; 3 uses
  %trunc = phi i16 [ 40, %.preheader.split.us.preheader ], [ %i.m, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us ]
  %.0.us = phi i32 [ 0, %.preheader.split.us.preheader ], [ %.1.us, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us ] ; 3 uses
  switch i16 %trunc, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us [
    i16 41, label %bb.c
    i16 40, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader.split.us
  %i.j = add nuw nsw i32 %.0.us, 1
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us

bb.c:                                             ; preds = %.preheader.split.us
  %i.k = add nsw i32 %.0.us, -1
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us:       ; preds = %bb.c, %bb.b, %.preheader.split.us
  %.1.us = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ], [ %.0.us, %.preheader.split.us ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2              ; 3 uses
  %i.n = zext i16 %i.m to i32
  store i32 %i.n, ptr %i.a, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.o, ptr %0, align 8
  %i.p = icmp slt i32 %.1.us, 1
  %.not6.us = icmp eq i16 %i.m, 0
  %or.cond.us = select i1 %i.p, i1 true, i1 %.not6.us
  br i1 %or.cond.us, label %.critedge, label %.preheader.split.us, !llvm.loop !77

.preheader.split:                                 ; preds = %.preheader
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.us
  store i32 0, ptr %i.a, align 8
  %i.q = add nuw nsw i32 %smax, 1
  store i32 %i.q, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.us, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread, %bb.a
  ret i1 %.not
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{null}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_"}
!15 = distinct !{!15, !14, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_: argument 0"}
!16 = distinct !{null, null}
!17 = distinct !{null}
!18 = distinct !{!18, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_"}
!19 = distinct !{!19, !18, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_: argument 0"}
!20 = distinct !{!20, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiciiPKcEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_"}
!21 = distinct !{!21, !20, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiciiPKcEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_: argument 0"}
!22 = distinct !{!22, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiiiiciiS4_EEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_"}
!23 = distinct !{!23, !22, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKcS4_iiiiiciiS4_EEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_: argument 0"}
!24 = distinct !{!24, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKciS4_iiiiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_"}
!25 = distinct !{!25, !24, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJPKciS4_iiiiEEENS_4base11SmallVectorIcLm128ESaIcEEES4_DpT_: argument 0"}
!26 = distinct !{!26, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_"}
!27 = distinct !{!27, !26, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_: argument 0"}
!28 = distinct !{!28, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_"}
!29 = distinct !{!29, !28, !"_ZN2v88internal12_GLOBAL__N_110FormatDateIJiiiiiiiEEENS_4base11SmallVectorIcLm128ESaIcEEEPKcDpT_: argument 0"}
!30 = !{!15}
!31 = !{!19}
!32 = !{!21}
!33 = !{!23}
!34 = !{!25}
!35 = !{!27}
!36 = !{!29}
!37 = distinct !{!37, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!38 = distinct !{!38, !37, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!39 = distinct !{!39, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!40 = distinct !{!40, !39, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!41 = distinct !{!41, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!42 = distinct !{!42, !41, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!43 = distinct !{!43, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!44 = distinct !{!44, !43, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!45 = distinct !{!45, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!46 = distinct !{!46, !45, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!47 = distinct !{!47, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!48 = distinct !{!48, !47, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!49 = distinct !{null}
!50 = distinct !{!50, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!51 = distinct !{!51, !50, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!52 = distinct !{null}
!53 = distinct !{null, ptr @_ZN2v88internal9DateCache15LocalOffsetInMsElb}
!54 = !{!38}
!55 = !{!40}
!56 = !{!42}
!57 = !{!44, !42}
!58 = !{!48, !46, !42}
!59 = !{!51, !46, !42}
!60 = !{!46, !42}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = !{ptr @_ZN2v88internal9DateCacheD2Ev}
!64 = distinct !{!64, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!65 = distinct !{!65, !64, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!67 = distinct !{!67, !66, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!68 = !{!65}
!69 = !{!67}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
end_hunk_1
