Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = mul i32 %.sink, %i.j
  store i32 %i.l, ptr %i.k, align 8, !tbaa !27
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.d
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !112
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !104, !inline_history !109
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !106, !inline_history !109
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.sroa.0156.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.7162.0.extract.shift = lshr i64 %2, 32   ; 3 uses
  %.sroa.7162.0.extract.trunc = trunc nuw i64 %.sroa.7162.0.extract.shift to i32
  %.sroa.044.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.245.0.extract.shift = lshr i64 %3, 32    ; 8 uses
  %.sroa.245.0.extract.trunc = trunc nuw i64 %.sroa.245.0.extract.shift to i32
  %.sroa.243.0.extract.shift = lshr i64 %4, 32    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26   ; 3 uses
  %i.d = lshr i32 %i.c, 3                         ; 3 uses
  %i.e = icmp samesign ugt i32 %i.c, 15
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %i.c, 40
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.g = zext nneg i32 %i.d to i64
  %i.h = tail call i32 @llvm.abs.i32(i32 %.sroa.0156.0.extract.trunc, i1 false)
  %i.i = zext i32 %i.h to i64
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.7162.0.extract.trunc, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, %i.i
  %i.m = mul i64 %i.l, %i.g                       ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !144
  %i.n = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.not184 = icmp eq ptr %i.n, null
  br i1 %.not184, label %bb.b, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #19 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.a
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.n, %bb.a ] ; 23 uses
  %i.r = mul nsw i32 %i.d, %.sroa.0156.0.extract.trunc ; 8 uses
  %i.s = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %2, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ne i64 %.sroa.7162.0.extract.shift, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !146  ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = call i32 @uncompress(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %i.aa) ; 3 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ac = call ptr @zError(i32 noundef %i.ab)
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_, i32 noundef %i.ab, ptr noundef %i.ac) #14
  unreachable

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !147, !noalias !148 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !97, !noalias !148
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !149, !noalias !148
  %i.al = mul nsw i32 %i.ak, %i.ai                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !150, !noalias !148
  %i.ao = ashr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %i.ao, %i.al
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 612
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151, !noalias !148
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = zext nneg i32 %i.r to i64               ; 17 uses
  %i.aw = and i64 %4, 2147483648
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = and i64 %4, 2147483647                  ; 14 uses
  %i.bb = zext nneg i32 %i.al to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bc = ashr exact i64 %sext, 31                ; 10 uses
  %i.bd = mul nsw i64 %i.az, 3                    ; 6 uses
  %i.be = zext nneg i32 %i.at to i64
  %i.bf = zext i32 %i.ao to i64                   ; 7 uses
  %.pre200 = load i32, ptr %i.au, align 8, !tbaa !27
  %i.bg = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bh = mul nsw i64 %i.bg, %i.av                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.q, i64 %i.bh
  %scevgep.a = getelementptr i8, ptr %i.bi, i64 %wide.trip.count.i81
  %i.bj = getelementptr i8, ptr %i.q, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.az
  %scevgep218 = getelementptr i8, ptr %i.bk, i64 %wide.trip.count.i81
  %scevgep219 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bl = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, -4
  %i.bo = mul i64 %i.bn, %i.bf
  %i.bp = shl nuw nsw i64 %i.ba, 2
  %i.bq = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.br = getelementptr i8, ptr %i.ag, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %scevgep220 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %i.bt = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bu = add i64 %i.bt, %i.ba
  %i.bv = shl i64 %i.bu, 2
  %scevgep221 = getelementptr i8, ptr %i.ag, i64 %i.bv ; 2 uses
  %i.bw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bx = mul nsw i64 %i.bw, %i.av                ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bx
  %scevgep255.a = getelementptr i8, ptr %i.by, i64 %wide.trip.count.i81
  %i.bz = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.az
  %scevgep256 = getelementptr i8, ptr %i.ca, i64 %wide.trip.count.i81
  %scevgep257.a = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cb = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bc
  %scevgep258 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count.i81
  %scevgep259 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cd = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, -4
  %i.cg = mul i64 %i.cf, %i.bf
  %i.ch = shl nuw nsw i64 %i.ba, 2
  %i.ci = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.cj = getelementptr i8, ptr %i.ag, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %scevgep260 = getelementptr i8, ptr %i.ck, i64 %i.ci ; 3 uses
  %i.cl = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cm = add i64 %i.cl, %i.ba
  %i.cn = shl i64 %i.cm, 2
  %scevgep261 = getelementptr i8, ptr %i.ag, i64 %i.cn ; 3 uses
  %i.co = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cp = mul nsw i64 %i.co, %i.av                ; 4 uses
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.cp
  %scevgep329.a = getelementptr i8, ptr %i.cq, i64 %wide.trip.count.i81
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.az
  %scevgep330 = getelementptr i8, ptr %i.cs, i64 %wide.trip.count.i81
  %scevgep331.a = getelementptr i8, ptr %i.q, i64 %i.az
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bc
  %scevgep332 = getelementptr i8, ptr %i.cu, i64 %wide.trip.count.i81
  %scevgep333.a = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bd
  %scevgep334 = getelementptr i8, ptr %i.cw, i64 %wide.trip.count.i81
  %scevgep335 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cx = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = add nsw i64 %i.cy, -4
  %i.da = mul i64 %i.cz, %i.bf
  %i.db = shl nuw nsw i64 %i.ba, 2
  %i.dc = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.dd = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep336 = getelementptr i8, ptr %i.de, i64 %i.dc ; 4 uses
  %i.df = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.dg = add i64 %i.df, %i.ba
  %i.dh = shl i64 %i.dg, 2
  %scevgep337 = getelementptr i8, ptr %i.ag, i64 %i.dh ; 4 uses
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check339 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0341 = icmp ult ptr %scevgep337, %scevgep334
  %bound1342 = icmp ult ptr %scevgep335, %scevgep336
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %scevgep337, %scevgep332
  %bound1345 = icmp ult ptr %scevgep333.a, %scevgep336
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %scevgep337, %scevgep330
  %bound1349 = icmp ult ptr %scevgep331.a, %scevgep336
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %scevgep337, %scevgep329.a
  %bound1353 = icmp ult ptr %i.q, %scevgep336
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %n.vec357 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n380 = icmp eq i64 %wide.trip.count.i81, %n.vec357
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check263 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0265 = icmp ult ptr %scevgep261, %scevgep258
  %bound1266 = icmp ult ptr %scevgep259, %scevgep260
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0268 = icmp ult ptr %scevgep261, %scevgep256
  %bound1269 = icmp ult ptr %scevgep257.a, %scevgep260
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %found.conflict267, %found.conflict270
  %bound0272 = icmp ult ptr %scevgep261, %scevgep255.a
  %bound1273 = icmp ult ptr %i.q, %scevgep260
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %n.vec277 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n302 = icmp eq i64 %wide.trip.count.i81, %n.vec277
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep221, %scevgep218
  %bound1 = icmp ult ptr %scevgep219, %scevgep220
  %found.conflict = and i1 %bound0, %bound1
  %bound0222 = icmp ult ptr %scevgep221, %scevgep.a
  %bound1223 = icmp ult ptr %i.q, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx = or i1 %found.conflict, %found.conflict224
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %i.di = phi i32 [ %.pre200, %.lr.ph ], [ %i.fd, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 4 uses
  %i.dj = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dj)
  %i.dk = mul nuw i64 %indvars.iv, %i.av          ; 3 uses
  %i.dl = getelementptr i8, ptr %i.q, i64 %i.dk   ; 33 uses
  %i.dm = icmp slt i32 %i.di, %i.r
  br i1 %i.dm, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dn = icmp sgt i32 %i.di, -1
  %i.do = zext nneg i32 %i.di to i64              ; 12 uses
  call void @llvm.assume(i1 %i.dn)
  %i.dp = xor i32 %i.di, -1
  %i.dq = add nsw i32 %i.r, %i.dp                 ; 3 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 5 uses
  %min.iters.check391 = icmp ult i32 %i.dq, 7
  br i1 %min.iters.check391, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck392

vector.memcheck392:                               ; preds = %iter.check
  %i.dt = getelementptr i8, ptr %i.q, i64 %i.dk
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.do
  %i.dv = add i64 %i.dk, 1                        ; 2 uses
  %i.dw = xor i32 %i.di, -1
  %i.dx = add nsw i32 %i.r, %i.dw
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.do
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dy
  %bound0393 = icmp ult ptr %i.du, %i.ed
  %bound1394 = icmp ult ptr %i.dl, %i.eb
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck392
  %min.iters.check396 = icmp ult i32 %i.dq, 31
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph397

vector.ph397:                                     ; preds = %vector.main.loop.iter.check
  %i.ee = and i64 %i.ds, 24
  %n.vec398 = and i64 %i.ds, 8589934560           ; 4 uses
  %i.ef = add nuw nsw i64 %n.vec398, %i.do        ; 2 uses
  %broadcast.splatinsert399 = insertelement <32 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat400 = shufflevector <32 x i64> %broadcast.splatinsert399, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat400, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dl, i64 %i.do
  br label %vector.body408

vector.body408:                                   ; preds = %vector.ph397, %vector.body408
  %index409 = phi i64 [ 0, %vector.ph397 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %vec.ind410 = phi <32 x i64> [ %induction, %vector.ph397 ], [ %vec.ind.next415, %vector.body408 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index409 ; 2 uses
  %wide.load412 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.eg = sub nuw nsw <32 x i64> %vec.ind410, %broadcast.splat400
  %i.eh = extractelement <32 x i64> %i.eg, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.eh
  %wide.load413 = load <32 x i8>, ptr %i.ei, align 1, !tbaa !107, !alias.scope !153
  %i.ej = add <32 x i8> %wide.load413, %wide.load412
  store <32 x i8> %i.ej, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next414 = add nuw i64 %index409, 32      ; 2 uses
  %vec.ind.next415 = add nuw nsw <32 x i64> %vec.ind410, splat (i64 32)
  %i.ek = icmp eq i64 %index.next414, %n.vec398
  br i1 %i.ek, label %middle.block417, label %vector.body408, !llvm.loop !119

middle.block417:                                  ; preds = %vector.body408
  %cmp.n418 = icmp eq i64 %i.ds, %n.vec398
  br i1 %cmp.n418, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block417
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec398, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val419 = phi i64 [ %i.ef, %vec.epilog.iter.check ], [ %i.do, %vector.main.loop.iter.check ]
  %n.vec420 = and i64 %i.ds, 8589934584           ; 3 uses
  %i.el = add nuw nsw i64 %n.vec420, %i.do
  %invariant.gep448 = getelementptr i8, ptr %i.dl, i64 %i.do
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index433 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next438, %vec.epilog.vector.body ] ; 2 uses
  %i.em = phi i64 [ %bc.resume.val419, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ] ; 2 uses
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %index433 ; 2 uses
  %wide.load436 = load <8 x i8>, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.en = sub nuw nsw i64 %i.em, %i.do
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  %wide.load437 = load <8 x i8>, ptr %i.eo, align 1, !tbaa !107, !alias.scope !153
  %i.ep = add <8 x i8> %wide.load437, %wide.load436
  store <8 x i8> %i.ep, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.eq = add nuw nsw i64 %i.em, 8
  %i.er = icmp eq i64 %index.next438, %n.vec420
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n441 = icmp eq i64 %i.ds, %n.vec420
  br i1 %cmp.n441, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck392, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.do, %iter.check ], [ %i.do, %vector.memcheck392 ], [ %i.ef, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.es = trunc nuw i64 %indvars.iv.i to i32
  %i.et = icmp sgt i32 %i.r, %i.es
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !107
  %i.ew = sub nuw nsw i64 %indvars.iv.i, %i.do    ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.av
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !107
  %i.fa = add i8 %i.ez, %i.ev
  store i8 %i.fa, ptr %i.eu, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fb = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fc = icmp sgt i32 %i.r, %i.fb
  br i1 %i.fc, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block417
  %.pre199 = load i32, ptr %i.au, align 8, !tbaa !27
  br label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, %bb.e
  %i.fd = phi i32 [ %.pre199, %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit ], [ %i.di, %bb.e ]
  %i.fe = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fe, %i.be
  call void @llvm.assume(i1 %i.ff)
  %i.fg = mul nuw nsw i64 %i.fe, %i.bf
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fg ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader443, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep464 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep466 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = phi i64 [ 0, %vector.ph ], [ %i.gm, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fj, align 1, !tbaa !107, !alias.scope !158
  %gep465 = getelementptr i8, ptr %invariant.gep464, i64 %i.fi
  %wide.load231 = load <8 x i8>, ptr %gep465, align 1, !tbaa !107, !alias.scope !159
  %i.fk = zext <8 x i8> %wide.load231 to <8 x i16>
  %i.fl = shl nuw <8 x i16> %i.fk, splat (i16 8)
  %i.fm = zext <8 x i8> %wide.load to <8 x i16>
  %i.fn = or disjoint <8 x i16> %i.fl, %i.fm
  %i.fo = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fn) ; 2 uses
  %i.fp = zext <8 x i16> %i.fo to <8 x i32>       ; 2 uses
  %i.fq = lshr <8 x i32> %i.fp, splat (i32 10)
  %i.fr = and <8 x i32> %i.fq, splat (i32 31)     ; 3 uses
  %i.fs = and <8 x i32> %i.fp, splat (i32 1023)   ; 2 uses
  %i.ft = shl nuw nsw <8 x i32> %i.fs, splat (i32 13) ; 3 uses
  %i.fu = icmp eq <8 x i32> %i.fr, splat (i32 31) ; 2 uses
  %i.fv = add nuw nsw <8 x i32> %i.fr, splat (i32 112)
  %i.fw = icmp eq <8 x i32> %i.fr, zeroinitializer ; 3 uses
  %i.fx = icmp eq <8 x i32> %i.fs, zeroinitializer
  %i.fy = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ft, i1 true) ; 2 uses
  %i.fz = sub nuw nsw <8 x i32> splat (i32 121), %i.fy
  %i.ga = xor <8 x i32> %i.fy, splat (i32 31)
  %i.gb = sub nuw nsw <8 x i32> splat (i32 23), %i.ga
  %i.gc = shl <8 x i32> %i.ft, %i.gb
  %i.gd = and <8 x i32> %i.gc, splat (i32 8380416)
  %i.ge = xor <8 x i1> %i.fw, %i.fu
  %i.gf = select <8 x i1> %i.fw, <8 x i1> %i.fx, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.gf, <8 x i32> zeroinitializer, <8 x i32> %i.fz
  %predphi232 = select <8 x i1> %i.ge, <8 x i32> %predphi, <8 x i32> %i.fv
  %predphi234 = select <8 x i1> %i.gf, <8 x i32> zeroinitializer, <8 x i32> %i.gd
  %predphi235 = select <8 x i1> %i.fw, <8 x i32> %predphi234, <8 x i32> %i.ft
  %i.gg = sext <8 x i16> %i.fo to <8 x i32>
  %i.gh = and <8 x i32> %i.gg, splat (i32 -2147483648)
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a

.lr.ph.i52.preheader443:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader443, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader443 ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i53
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !107
  %i.gq = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gr = icmp samesign ult i64 %i.gq, %i.av
  call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gt to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gp to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gu = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gv = zext i16 %i.gu to i32                   ; 2 uses
  %i.gw = lshr i32 %i.gv, 10
  %i.gx = and i32 %i.gw, 31                       ; 3 uses
  %i.gy = and i32 %i.gv, 1023                     ; 2 uses
  %i.gz = shl nuw nsw i32 %i.gy, 13               ; 4 uses
  %i.ha = icmp eq i32 %i.gx, 31
  br i1 %i.ha, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.hb = add nuw nsw i32 %i.gx, 112
  %i.hc = icmp eq i32 %i.gx, 0
  br i1 %i.hc, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.hd = icmp eq i32 %i.gy, 0
  br i1 %i.hd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true) ; 2 uses
  %i.he = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.hf = shl i32 %i.gz, %.lr.ph.tripcount.i.i
  %i.hg = and i32 %i.hf, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.hb, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.he, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gz, %bb.g ], [ %i.gz, %.lr.ph.i52 ], [ %i.hg, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gu to i32
  %i.hh = and i32 %.signext.i, -2147483648
  %i.hi = shl nuw nsw i32 %.116.i.i, 23
  %i.hj = or disjoint i32 %i.hi, %i.hh
  %i.hk = or i32 %i.hj, %.1.i.i
  %i.hl = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hm = icmp samesign ule i64 %i.hl, %i.bb
  call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.hl
  store i32 %i.hk, ptr %i.hn, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge468 = select i1 %min.iters.check263, i1 true, i1 %conflict.rdx275
  br i1 %brmerge468, label %.lr.ph.i60.preheader444, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep458 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep460 = getelementptr i8, ptr %i.dl, i64 %i.bc
  %invariant.gep462 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph276
  %index289 = phi i64 [ 0, %vector.ph276 ], [ %index.next299, %vector.body288 ] ; 2 uses
  %i.ho = phi i64 [ 0, %vector.ph276 ], [ %i.iu, %vector.body288 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index289
  %wide.load291 = load <8 x i8>, ptr %i.hp, align 1, !tbaa !107, !alias.scope !164
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.ho
  %wide.load292 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !165
  %gep461 = getelementptr i8, ptr %invariant.gep460, i64 %i.ho
  %wide.load293 = load <8 x i8>, ptr %gep461, align 1, !tbaa !107, !alias.scope !166
  %i.hq = zext <8 x i8> %wide.load293 to <8 x i32>
  %i.hr = shl nuw nsw <8 x i32> %i.hq, splat (i32 16)
  %i.hs = zext <8 x i8> %wide.load292 to <8 x i32>
  %i.ht = shl nuw nsw <8 x i32> %i.hs, splat (i32 8)
  %i.hu = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.hv = or disjoint <8 x i32> %i.ht, %i.hu
  %i.hw = or disjoint <8 x i32> %i.hv, %i.hr
  %i.hx = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hw) ; 3 uses
  %i.hy = lshr exact <8 x i32> %i.hx, splat (i32 8)
  %i.hz = lshr <8 x i32> %i.hx, splat (i32 24)
  %i.ia = and <8 x i32> %i.hz, splat (i32 127)    ; 3 uses
  %i.ib = and <8 x i32> %i.hy, splat (i32 65535)  ; 2 uses
  %i.ic = shl nuw nsw <8 x i32> %i.ib, splat (i32 7) ; 3 uses
  %i.id = icmp eq <8 x i32> %i.ia, splat (i32 127) ; 2 uses
  %i.ie = add nuw nsw <8 x i32> %i.ia, splat (i32 64)
  %i.if = icmp eq <8 x i32> %i.ia, zeroinitializer ; 3 uses
  %i.ig = icmp eq <8 x i32> %i.ib, zeroinitializer
  %i.ih = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ic, i1 true) ; 2 uses
  %i.ii = sub nuw nsw <8 x i32> splat (i32 73), %i.ih
  %i.ij = xor <8 x i32> %i.ih, splat (i32 31)
  %i.ik = sub nuw nsw <8 x i32> splat (i32 23), %i.ij
  %i.il = shl <8 x i32> %i.ic, %i.ik
  %i.im = and <8 x i32> %i.il, splat (i32 8388480)
  %i.in = xor <8 x i1> %i.if, %i.id
  %i.io = select <8 x i1> %i.if, <8 x i1> %i.ig, <8 x i1> zeroinitializer ; 2 uses
  %predphi294 = select <8 x i1> %i.io, <8 x i32> zeroinitializer, <8 x i32> %i.ii
  %predphi295 = select <8 x i1> %i.in, <8 x i32> %predphi294, <8 x i32> %i.ie
  %predphi297 = select <8 x i1> %i.io, <8 x i32> zeroinitializer, <8 x i32> %i.im
  %predphi298 = select <8 x i1> %i.if, <8 x i32> %predphi297, <8 x i32> %i.ic
  %i.ip = and <8 x i32> %i.hx, splat (i32 -2147483648)
  %i.iq = shl nuw nsw <8 x i32> %predphi295, splat (i32 23)
  %i.ir = select <8 x i1> %i.id, <8 x i32> splat (i32 2139095040), <8 x i32> %i.iq
  %i.is = or disjoint <8 x i32> %i.ir, %i.ip
  %i.it = or disjoint <8 x i32> %i.is, %predphi298
  %gep463 = getelementptr inbounds [4 x i8], ptr %invariant.gep462, i64 %i.ho
  store <8 x i32> %i.it, ptr %gep463, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next299 = add nuw i64 %index289, 8       ; 2 uses
  %i.iu = add nuw nsw i64 %i.ho, 8
  %i.iv = icmp eq i64 %index.next299, %n.vec277
  br i1 %i.iv, label %middle.block301, label %vector.body288, !llvm.loop !133

middle.block301:                                  ; preds = %vector.body288
  br i1 %cmp.n302, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader444

.lr.ph.i60.preheader444:                          ; preds = %.lr.ph.i60.preheader, %middle.block301
  %indvars.iv.i62.ph = phi i64 [ %n.vec277, %middle.block301 ], [ 0, %.lr.ph.i60.preheader ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader444, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i69, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i62.ph, %.lr.ph.i60.preheader444 ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i62
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !107
  %i.iy = add nuw nsw i64 %indvars.iv.i62, %i.az  ; 2 uses
  %i.iz = icmp samesign ult i64 %i.iy, %i.av
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.iy
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !107
  %i.jc = add nuw nsw i64 %indvars.iv.i62, %i.bc  ; 2 uses
  %i.jd = icmp samesign ult i64 %i.jc, %i.av
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !107
  %.sroa.5.0.insert.ext.i = zext i8 %i.jf to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i63 = zext i8 %i.jb to i32
  %.sroa.4.0.insert.shift.i64 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i63, 8
  %.sroa.0.0.insert.ext.i65 = zext i8 %i.ix to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i64, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %i.jg = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i66) ; 3 uses
  %i.jh = lshr exact i32 %i.jg, 8
  %i.ji = lshr i32 %i.jg, 24
  %i.jj = and i32 %i.ji, 127                      ; 3 uses
  %i.jk = and i32 %i.jh, 65535                    ; 2 uses
  %i.jl = shl nuw nsw i32 %i.jk, 7                ; 4 uses
  %i.jm = icmp eq i32 %i.jj, 127
  br i1 %i.jm, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i60
  %i.jn = add nuw nsw i32 %i.jj, 64
  %i.jo = icmp eq i32 %i.jj, 0
  br i1 %i.jo, label %bb.k, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

bb.k:                                             ; preds = %bb.j
  %i.jp = icmp eq i32 %i.jk, 0
  br i1 %i.jp, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %bb.k
  %.masked.numleadingzeros.i.i72 = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jl, i1 true) ; 2 uses
  %i.jq = sub nuw nsw i32 73, %.masked.numleadingzeros.i.i72
  %.masked.leadingonepos.i.i73 = xor i32 %.masked.numleadingzeros.i.i72, 31
  %.lr.ph.tripcount.i.i74 = sub nuw nsw i32 23, %.masked.leadingonepos.i.i73
  %i.jr = shl i32 %i.jl, %.lr.ph.tripcount.i.i74
  %i.js = and i32 %i.jr, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i71, %bb.k, %bb.j, %.lr.ph.i60
  %.116.i.i67 = phi i32 [ %i.jn, %bb.j ], [ 255, %.lr.ph.i60 ], [ %i.jq, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %.1.i.i68 = phi i32 [ %i.jl, %bb.j ], [ %i.jl, %.lr.ph.i60 ], [ %i.js, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %i.jt = and i32 %i.jg, -2147483648
  %i.ju = shl nuw nsw i32 %.116.i.i67, 23
  %i.jv = or disjoint i32 %i.ju, %i.jt
  %i.jw = or i32 %i.jv, %.1.i.i68
  %i.jx = add nuw nsw i64 %indvars.iv.i62, %i.ba  ; 2 uses
  %i.jy = icmp samesign ule i64 %i.jx, %i.bb
  call void @llvm.assume(i1 %i.jy)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.jx
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !161
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i81
  br i1 %exitcond.not.i70, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60, !llvm.loop !134

bb.l:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i80.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i80.preheader:                             ; preds = %bb.l
  %brmerge469 = select i1 %min.iters.check339, i1 true, i1 %conflict.rdx355
  br i1 %brmerge469, label %.lr.ph.i80.preheader446, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.i80.preheader
  %invariant.gep450 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep452 = getelementptr i8, ptr %i.dl, i64 %i.bc
  %invariant.gep454 = getelementptr i8, ptr %i.dl, i64 %i.bd
  %invariant.gep456 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph356
  %index371 = phi i64 [ 0, %vector.ph356 ], [ %index.next377, %vector.body370 ] ; 2 uses
  %i.ka = phi i64 [ 0, %vector.ph356 ], [ %i.kn, %vector.body370 ] ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index371
  %wide.load373 = load <8 x i8>, ptr %i.kb, align 1, !tbaa !107, !alias.scope !169
  %gep451 = getelementptr i8, ptr %invariant.gep450, i64 %i.ka
  %wide.load374 = load <8 x i8>, ptr %gep451, align 1, !tbaa !107, !alias.scope !170
  %gep453 = getelementptr i8, ptr %invariant.gep452, i64 %i.ka
  %wide.load375 = load <8 x i8>, ptr %gep453, align 1, !tbaa !107, !alias.scope !171
  %gep455 = getelementptr i8, ptr %invariant.gep454, i64 %i.ka
  %wide.load376 = load <8 x i8>, ptr %gep455, align 1, !tbaa !107, !alias.scope !172
  %i.kc = zext <8 x i8> %wide.load376 to <8 x i32>
  %i.kd = shl nuw <8 x i32> %i.kc, splat (i32 24)
  %i.ke = zext <8 x i8> %wide.load375 to <8 x i32>
  %i.kf = shl nuw nsw <8 x i32> %i.ke, splat (i32 16)
  %i.kg = zext <8 x i8> %wide.load374 to <8 x i32>
  %i.kh = shl nuw nsw <8 x i32> %i.kg, splat (i32 8)
  %i.ki = zext <8 x i8> %wide.load373 to <8 x i32>
  %i.kj = or disjoint <8 x i32> %i.kh, %i.ki
  %i.kk = or disjoint <8 x i32> %i.kj, %i.kf
  %i.kl = or disjoint <8 x i32> %i.kk, %i.kd
  %i.km = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.kl)
  %gep457 = getelementptr inbounds [4 x i8], ptr %invariant.gep456, i64 %i.ka
  store <8 x i32> %i.km, ptr %gep457, align 4, !tbaa !161, !alias.scope !173, !noalias !174
  %index.next377 = add nuw i64 %index371, 8       ; 2 uses
  %i.kn = add nuw nsw i64 %i.ka, 8
  %i.ko = icmp eq i64 %index.next377, %n.vec357
  br i1 %i.ko, label %middle.block379, label %vector.body370, !llvm.loop !141

middle.block379:                                  ; preds = %vector.body370
  br i1 %cmp.n380, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80.preheader446

.lr.ph.i80.preheader446:                          ; preds = %.lr.ph.i80.preheader, %middle.block379
  %indvars.iv.i82.ph = phi i64 [ %n.vec357, %middle.block379 ], [ 0, %.lr.ph.i80.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i82.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader446
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i82.ph
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !107
  %i.kr = add nuw nsw i64 %indvars.iv.i82.ph, %i.az ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, %i.av
  call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !107
  %i.kv = add nuw nsw i64 %indvars.iv.i82.ph, %i.bc ; 2 uses
  %i.kw = icmp samesign ult i64 %i.kv, %i.av
  call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kv
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !107
  %i.kz = add nuw nsw i64 %indvars.iv.i82.ph, %i.bd ; 2 uses
  %i.la = icmp samesign ult i64 %i.kz, %i.av
  call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i.prol = zext i8 %i.lc to i32
  %.sroa.6.0.insert.shift.i.prol = shl nuw i32 %.sroa.6.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i83.prol = zext i8 %i.ky to i32
  %.sroa.5.0.insert.shift.i84.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83.prol, 16
  %.sroa.4.0.insert.ext.i85.prol = zext i8 %i.ku to i32
  %.sroa.4.0.insert.shift.i86.prol = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85.prol, 8
  %.sroa.0.0.insert.ext.i88.prol = zext i8 %i.kq to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.4.0.insert.shift.i86.prol, %.sroa.0.0.insert.ext.i88.prol
  %.sroa.4.0.insert.insert.i87.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i84.prol
  %.sroa.0.0.insert.insert.i89.prol = or disjoint i32 %.sroa.4.0.insert.insert.i87.prol, %.sroa.6.0.insert.shift.i.prol
  %i.ld = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89.prol)
  %i.le = add nuw nsw i64 %indvars.iv.i82.ph, %i.ba ; 2 uses
  %i.lf = icmp samesign ule i64 %i.le, %i.bb
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.le
  store i32 %i.ld, ptr %i.lg, align 4, !tbaa !161
  %indvars.iv.next.i90.prol = or disjoint i64 %indvars.iv.i82.ph, 1
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader446
  %indvars.iv.i82.unr = phi i64 [ %indvars.iv.i82.ph, %.lr.ph.i80.preheader446 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i80.prol ]
  %i.lh = icmp eq i64 %wide.trip.count.i81, %.neg
  br i1 %i.lh, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i90.1, %.lr.ph.i80 ], [ %indvars.iv.i82.unr, %.lr.ph.i80.prol.loopexit ] ; 7 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i82
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !107
  %i.lk = add nuw nsw i64 %indvars.iv.i82, %i.az  ; 2 uses
  %i.ll = icmp samesign ult i64 %i.lk, %i.av
  call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.lk
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !107
  %i.lo = add nuw nsw i64 %indvars.iv.i82, %i.bc  ; 2 uses
  %i.lp = icmp samesign ult i64 %i.lo, %i.av
  call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !107
  %i.ls = add nuw nsw i64 %indvars.iv.i82, %i.bd  ; 2 uses
  %i.lt = icmp samesign ult i64 %i.ls, %i.av
  call void @llvm.assume(i1 %i.lt)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ls
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i = zext i8 %i.lv to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i83 = zext i8 %i.lr to i32
  %.sroa.5.0.insert.shift.i84 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83, 16
  %.sroa.4.0.insert.ext.i85 = zext i8 %i.ln to i32
  %.sroa.4.0.insert.shift.i86 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85, 8
  %.sroa.0.0.insert.ext.i88 = zext i8 %i.lj to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i86, %.sroa.0.0.insert.ext.i88
  %.sroa.4.0.insert.insert.i87 = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i84
  %.sroa.0.0.insert.insert.i89 = or disjoint i32 %.sroa.4.0.insert.insert.i87, %.sroa.6.0.insert.shift.i
  %i.lw = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89)
  %i.lx = add nuw nsw i64 %indvars.iv.i82, %i.ba  ; 2 uses
  %i.ly = icmp samesign ule i64 %i.lx, %i.bb
  call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.lx
  store i32 %i.lw, ptr %i.lz, align 4, !tbaa !161
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i82, 1 ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next.i90
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !107
  %i.mc = add nuw nsw i64 %indvars.iv.next.i90, %i.az ; 2 uses
  %i.md = icmp samesign ult i64 %i.mc, %i.av
  call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.mc
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !107
  %i.mg = add nuw nsw i64 %indvars.iv.next.i90, %i.bc ; 2 uses
  %i.mh = icmp samesign ult i64 %i.mg, %i.av
  call void @llvm.assume(i1 %i.mh)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.mg
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !107
  %i.mk = add nuw nsw i64 %indvars.iv.next.i90, %i.bd ; 2 uses
  %i.ml = icmp samesign ult i64 %i.mk, %i.av
  call void @llvm.assume(i1 %i.ml)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.mk
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i.1 = zext i8 %i.mn to i32
  %.sroa.6.0.insert.shift.i.1 = shl nuw i32 %.sroa.6.0.insert.ext.i.1, 24
  %.sroa.5.0.insert.ext.i83.1 = zext i8 %i.mj to i32
  %.sroa.5.0.insert.shift.i84.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83.1, 16
  %.sroa.4.0.insert.ext.i85.1 = zext i8 %i.mf to i32
  %.sroa.4.0.insert.shift.i86.1 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85.1, 8
  %.sroa.0.0.insert.ext.i88.1 = zext i8 %i.mb to i32
  %.sroa.5.0.insert.insert.i.1 = or disjoint i32 %.sroa.4.0.insert.shift.i86.1, %.sroa.0.0.insert.ext.i88.1
  %.sroa.4.0.insert.insert.i87.1 = or disjoint i32 %.sroa.5.0.insert.insert.i.1, %.sroa.5.0.insert.shift.i84.1
  %.sroa.0.0.insert.insert.i89.1 = or disjoint i32 %.sroa.4.0.insert.insert.i87.1, %.sroa.6.0.insert.shift.i.1
  %i.mo = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89.1)
  %i.mp = add nuw nsw i64 %indvars.iv.next.i90, %i.ba ; 2 uses
  %i.mq = icmp samesign ule i64 %i.mp, %i.bb
  call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.mp
  store i32 %i.mo, ptr %i.mr, align 4, !tbaa !161
  %indvars.iv.next.i90.1 = add nuw nsw i64 %indvars.iv.i82, 2 ; 2 uses
  %exitcond.not.i91.1 = icmp eq i64 %indvars.iv.next.i90.1, %wide.trip.count.i81
  br i1 %exitcond.not.i91.1, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80, !llvm.loop !142

default.unreachable:                              ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  unreachable

_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit: ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, %middle.block379, %middle.block301, %middle.block, %bb.l, %bb.i, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.245.0.extract.shift
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !143
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @zError(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !104, !inline_history !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !107
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.ctlz.i32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.ctlz.v8i32(<8 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold noreturn }
attributes #15 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { cold }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !105, file: !100, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!17 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !12, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !17, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!"_ZTSN8rawspeed6BufferE", !13, i64 0, !9, i64 8}
!23 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !20, i64 0}
!24 = !{!"_ZTSN8rawspeed8RawImageE", !23, i64 0}
!25 = !{!"_ZTSN8rawspeed19DeflateDecompressorE", !22, i64 0, !24, i64 16, !9, i64 32, !9, i64 36}
!26 = !{!25, !9, i64 36}
!27 = !{!25, !9, i64 32}
!28 = !{!"_ZTSN8rawspeed5MutexE"}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !32, i64 0}
!34 = !{!"_ZTSN8rawspeed8ErrorLogE", !28, i64 0, !33, i64 8}
!35 = !{!"_ZTSN8rawspeed8iPoint2DE", !9, i64 0, !9, i64 4}
!36 = !{!"bool", !8, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !39, i64 0}
!41 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !40, i64 0, !35, i64 24}
!42 = !{!"_ZTSSt5arrayIiLm4EE", !8, i64 0}
!43 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !8, i64 0, !36, i64 32}
!44 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !43, i64 0}
!45 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !44, i64 0}
!46 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !45, i64 0}
!47 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !46, i64 0}
!48 = !{!"_ZTSSt22_Optional_payload_baseIiE", !8, i64 0, !36, i64 4}
!49 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !49, i64 0}
!51 = !{!"_ZTSSt8optionalIiE", !50, i64 0}
!52 = !{!"_ZTSN8rawspeed8OptionalIiEE", !51, i64 0}
!53 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !12, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !56, i64 0}
!58 = !{!"p1 int", !12, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIjSaIjEE", !61, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !65, i64 0}
!67 = !{!"double", !8, i64 0}
!68 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !8, i64 0, !36, i64 16}
!69 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !68, i64 0}
!70 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !70, i64 0}
!72 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !71, i64 0}
!73 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !12, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !76, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!79 = !{!"long", !8, i64 0}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !78, i64 0, !79, i64 8, !8, i64 16}
!81 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !67, i64 0, !72, i64 8, !77, i64 32, !9, i64 56, !35, i64 60, !80, i64 72, !80, i64 104, !80, i64 136, !80, i64 168, !80, i64 200, !80, i64 232, !80, i64 264, !9, i64 296}
!82 = !{!"_ZTSN8rawspeed12RawImageTypeE", !8, i64 0}
!83 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!84 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !83, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!86 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !84, i64 0, !85, i64 8}
!87 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !87, i64 0}
!89 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !12, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !94, i64 0}
!96 = !{!"_ZTSN8rawspeed12RawImageDataE", !34, i64 8, !35, i64 40, !9, i64 48, !9, i64 52, !36, i64 56, !41, i64 64, !9, i64 96, !42, i64 100, !47, i64 120, !52, i64 160, !57, i64 168, !62, i64 192, !66, i64 216, !9, i64 240, !36, i64 244, !81, i64 248, !28, i64 552, !82, i64 553, !88, i64 560, !9, i64 592, !9, i64 596, !35, i64 600, !35, i64 608, !95, i64 616}
!97 = !{!96, !9, i64 592}
!98 = !{!"vtable pointer", !7, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !{null, !101}
!103 = !DISubroutineType(types: !102)
!104 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !100, line: 139, type: !103, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!105 = !DINamespace(name: "std", scope: null)
!106 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !100, line: 143, type: !103, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!107 = !{!8, !8, i64 0}
!108 = !{!12, !12, i64 0}
!109 = distinct !{null, null, null}
!110 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!111 = !{!110, !9, i64 8}
!112 = !{!110, !9, i64 12}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, i1 true, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!115 = distinct !{!115, !114, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !154, !155, !156}
!120 = distinct !{!120, !154, !155, !156}
!121 = distinct !{!121, !154, !155}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !122}
!126 = distinct !{!126, !154, !155, !156}
!127 = distinct !{!127, !154, !155}
!128 = distinct !{!128, i1 false, !"LVerDomain"}
!129 = distinct !{!129, !128}
!130 = distinct !{!130, !128}
!131 = distinct !{!131, !128}
!132 = distinct !{!132, !128}
!133 = distinct !{!133, !154, !155, !156}
!134 = distinct !{!134, !154, !155}
!135 = distinct !{!135, i1 false, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !135}
!139 = distinct !{!139, !135}
!140 = distinct !{!140, !135}
!141 = distinct !{!141, !154, !155, !156}
!142 = distinct !{!142, !154, !155}
!143 = distinct !{!143, !154}
!144 = !{!79, !79, i64 0}
!145 = !{!22, !13, i64 0}
!146 = !{!22, !9, i64 8}
!147 = !{!85, !13, i64 0}
!148 = !{!115}
!149 = !{!96, !9, i64 608}
!150 = !{!96, !9, i64 48}
!151 = !{!96, !9, i64 612}
!152 = !{!117}
!153 = !{!118}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = !{!"branch_weights", i32 8, i32 24}
!158 = !{!123}
!159 = !{!124}
!160 = !{!"float", !8, i64 0}
!161 = !{!160, !160, i64 0}
!162 = !{!125}
!163 = !{!124, !123}
!164 = !{!129}
!165 = !{!130}
!166 = !{!131}
!167 = !{!132}
!168 = !{!131, !130, !129}
!169 = !{!136}
!170 = !{!137}
!171 = !{!138}
!172 = !{!139}
!173 = !{!140}
!174 = !{!139, !138, !137, !136}
!175 = distinct !{null}
end_hunk_2
