Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressorC2ENS_6BufferENS_8RawImageEii:bb.a
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #17
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i32 [ 4, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink, ptr %i.g, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !97
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
  %scevgep = getelementptr i8, ptr %i.bi, i64 %wide.trip.count.i81
  %i.bj = getelementptr i8, ptr %i.q, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.az
  %scevgep216 = getelementptr i8, ptr %i.bk, i64 %wide.trip.count.i81
  %scevgep217 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bl = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, -4
  %i.bo = mul i64 %i.bn, %i.bf
  %i.bp = shl nuw nsw i64 %i.ba, 2
  %i.bq = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.br = getelementptr i8, ptr %i.ag, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %scevgep218 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %i.bt = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bu = add i64 %i.bt, %i.ba
  %i.bv = shl i64 %i.bu, 2
  %scevgep219 = getelementptr i8, ptr %i.ag, i64 %i.bv ; 2 uses
  %i.bw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bx = mul nsw i64 %i.bw, %i.av                ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bx
  %scevgep253 = getelementptr i8, ptr %i.by, i64 %wide.trip.count.i81
  %i.bz = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.az
  %scevgep254 = getelementptr i8, ptr %i.ca, i64 %wide.trip.count.i81
  %scevgep255 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cb = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bc
  %scevgep256 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count.i81
  %scevgep257 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cd = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, -4
  %i.cg = mul i64 %i.cf, %i.bf
  %i.ch = shl nuw nsw i64 %i.ba, 2
  %i.ci = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.cj = getelementptr i8, ptr %i.ag, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %scevgep258 = getelementptr i8, ptr %i.ck, i64 %i.ci ; 3 uses
  %i.cl = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cm = add i64 %i.cl, %i.ba
  %i.cn = shl i64 %i.cm, 2
  %scevgep259 = getelementptr i8, ptr %i.ag, i64 %i.cn ; 3 uses
  %i.co = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cp = mul nsw i64 %i.co, %i.av                ; 4 uses
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.cp
  %scevgep327 = getelementptr i8, ptr %i.cq, i64 %wide.trip.count.i81
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.az
  %scevgep328 = getelementptr i8, ptr %i.cs, i64 %wide.trip.count.i81
  %scevgep329 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bc
  %scevgep330 = getelementptr i8, ptr %i.cu, i64 %wide.trip.count.i81
  %scevgep331 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bd
  %scevgep332 = getelementptr i8, ptr %i.cw, i64 %wide.trip.count.i81
  %scevgep333 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cx = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = add nsw i64 %i.cy, -4
  %i.da = mul i64 %i.cz, %i.bf
  %i.db = shl nuw nsw i64 %i.ba, 2
  %i.dc = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.dd = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep334 = getelementptr i8, ptr %i.de, i64 %i.dc ; 4 uses
  %i.df = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.dg = add i64 %i.df, %i.ba
  %i.dh = shl i64 %i.dg, 2
  %scevgep335 = getelementptr i8, ptr %i.ag, i64 %i.dh ; 4 uses
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check337 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0339 = icmp ult ptr %scevgep335, %scevgep332
  %bound1340 = icmp ult ptr %scevgep333, %scevgep334
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0342 = icmp ult ptr %scevgep335, %scevgep330
  %bound1343 = icmp ult ptr %scevgep331, %scevgep334
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %found.conflict341, %found.conflict344
  %bound0346 = icmp ult ptr %scevgep335, %scevgep328
  %bound1347 = icmp ult ptr %scevgep329, %scevgep334
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %scevgep335, %scevgep327
  %bound1351 = icmp ult ptr %i.q, %scevgep334
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %n.vec355 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n378 = icmp eq i64 %wide.trip.count.i81, %n.vec355
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check261 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0263 = icmp ult ptr %scevgep259, %scevgep256
  %bound1264 = icmp ult ptr %scevgep257, %scevgep258
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0266 = icmp ult ptr %scevgep259, %scevgep254
  %bound1267 = icmp ult ptr %scevgep255, %scevgep258
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %found.conflict265, %found.conflict268
  %bound0270 = icmp ult ptr %scevgep259, %scevgep253
  %bound1271 = icmp ult ptr %i.q, %scevgep258
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %n.vec275 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n300 = icmp eq i64 %wide.trip.count.i81, %n.vec275
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep219, %scevgep216
  %bound1 = icmp ult ptr %scevgep217, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  %bound0220 = icmp ult ptr %scevgep219, %scevgep
  %bound1221 = icmp ult ptr %i.q, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx = or i1 %found.conflict, %found.conflict222
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %5 = phi i32 [ %.pre200, %.lr.ph ], [ %6, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 4 uses
  %i.di = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.di)
  %i.dj = mul nuw i64 %indvars.iv, %i.av          ; 3 uses
  %i.dk = getelementptr i8, ptr %i.q, i64 %i.dj   ; 33 uses
  %i.dl = icmp slt i32 %5, %i.r
  br i1 %i.dl, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dm = zext nneg i32 %5 to i64                 ; 12 uses
  %i.dn = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %i.dn)
  %i.do = xor i32 %5, -1
  %i.dp = add nsw i32 %i.r, %i.do                 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check389 = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check389, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %iter.check
  %i.ds = getelementptr i8, ptr %i.q, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.dm
  %i.du = add i64 %i.dj, 1                        ; 2 uses
  %i.dv = xor i32 %5, -1
  %i.dw = add nsw i32 %i.r, %i.dv
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.q, i64 %i.du
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dm
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dx
  %i.eb = getelementptr i8, ptr %i.q, i64 %i.du
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dx
  %bound0391 = icmp ult ptr %i.dt, %i.ec
  %bound1392 = icmp ult ptr %i.dk, %i.ea
  %found.conflict393 = and i1 %bound0391, %bound1392
  br i1 %found.conflict393, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck390
  %min.iters.check394 = icmp ult i32 %i.dp, 31
  br i1 %min.iters.check394, label %vec.epilog.ph, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.dr, 24
  %n.vec396 = and i64 %i.dr, 8589934560           ; 4 uses
  %i.ee = add nuw nsw i64 %n.vec396, %i.dm        ; 2 uses
  %broadcast.splatinsert397 = insertelement <32 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat398 = shufflevector <32 x i64> %broadcast.splatinsert397, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat398, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dk, i64 %i.dm
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph395, %vector.body406
  %index407 = phi i64 [ 0, %vector.ph395 ], [ %index.next412, %vector.body406 ] ; 2 uses
  %vec.ind408 = phi <32 x i64> [ %induction, %vector.ph395 ], [ %vec.ind.next413, %vector.body406 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index407 ; 2 uses
  %wide.load410 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ef = sub nuw nsw <32 x i64> %vec.ind408, %broadcast.splat398
  %i.eg = extractelement <32 x i64> %i.ef, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eg
  %wide.load411 = load <32 x i8>, ptr %i.eh, align 1, !tbaa !107, !alias.scope !153
  %i.ei = add <32 x i8> %wide.load411, %wide.load410
  store <32 x i8> %i.ei, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next412 = add nuw i64 %index407, 32      ; 2 uses
  %vec.ind.next413 = add nuw nsw <32 x i64> %vec.ind408, splat (i64 32)
  %i.ej = icmp eq i64 %index.next412, %n.vec396
  br i1 %i.ej, label %middle.block415, label %vector.body406, !llvm.loop !119

middle.block415:                                  ; preds = %vector.body406
  %cmp.n416 = icmp eq i64 %i.dr, %n.vec396
  br i1 %cmp.n416, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block415
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec396, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val417 = phi i64 [ %i.ee, %vec.epilog.iter.check ], [ %i.dm, %vector.main.loop.iter.check ]
  %n.vec418 = and i64 %i.dr, 8589934584           ; 3 uses
  %i.ek = add nuw nsw i64 %n.vec418, %i.dm
  %invariant.gep446 = getelementptr i8, ptr %i.dk, i64 %i.dm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index431 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next436, %vec.epilog.vector.body ] ; 2 uses
  %i.el = phi i64 [ %bc.resume.val417, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ] ; 2 uses
  %gep447 = getelementptr i8, ptr %invariant.gep446, i64 %index431 ; 2 uses
  %wide.load434 = load <8 x i8>, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.em = sub nuw nsw i64 %i.el, %i.dm
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.em
  %wide.load435 = load <8 x i8>, ptr %i.en, align 1, !tbaa !107, !alias.scope !153
  %i.eo = add <8 x i8> %wide.load435, %wide.load434
  store <8 x i8> %i.eo, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.ep = add nuw nsw i64 %i.el, 8
  %i.eq = icmp eq i64 %index.next436, %n.vec418
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n439 = icmp eq i64 %i.dr, %n.vec418
  br i1 %cmp.n439, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck390, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck390 ], [ %i.ee, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.er = trunc nuw i64 %indvars.iv.i to i32
  %i.es = icmp sgt i32 %i.r, %i.er
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !107
  %i.ev = sub nuw nsw i64 %indvars.iv.i, %i.dm    ; 2 uses
  %i.ew = icmp samesign ult i64 %i.ev, %i.av
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !107
  %i.ez = add i8 %i.ey, %i.eu
  store i8 %i.ez, ptr %i.et, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fa = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fb = icmp sgt i32 %i.r, %i.fa
  br i1 %i.fb, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block415
  %.pre199 = load i32, ptr %i.au, align 8, !tbaa !27
  br label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, %bb.e
  %6 = phi i32 [ %.pre199, %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit ], [ %5, %bb.e ]
  %i.fc = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.fd = icmp samesign ult i64 %i.fc, %i.be
  call void @llvm.assume(i1 %i.fd)
  %i.fe = mul nuw nsw i64 %i.fc, %i.bf
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fe ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader441, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep462.a = getelementptr i8, ptr %i.dk, i64 %i.az
  %invariant.gep464 = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = phi i64 [ 0, %vector.ph ], [ %i.gk, %vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fh, align 1, !tbaa !107, !alias.scope !158
  %gep463.a = getelementptr i8, ptr %invariant.gep462.a, i64 %i.fg
  %wide.load229 = load <8 x i8>, ptr %gep463.a, align 1, !tbaa !107, !alias.scope !159
  %i.fi = zext <8 x i8> %wide.load229 to <8 x i16>
  %i.fj = shl nuw <8 x i16> %i.fi, splat (i16 8)
  %i.fk = zext <8 x i8> %wide.load to <8 x i16>
  %i.fl = or disjoint <8 x i16> %i.fj, %i.fk
  %i.fm = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fl) ; 2 uses
  %i.fn = zext <8 x i16> %i.fm to <8 x i32>       ; 2 uses
  %i.fo = lshr <8 x i32> %i.fn, splat (i32 10)
  %i.fp = and <8 x i32> %i.fo, splat (i32 31)     ; 3 uses
  %i.fq = and <8 x i32> %i.fn, splat (i32 1023)   ; 2 uses
  %i.fr = shl nuw nsw <8 x i32> %i.fq, splat (i32 13) ; 3 uses
  %i.fs = icmp eq <8 x i32> %i.fp, splat (i32 31) ; 2 uses
  %i.ft = add nuw nsw <8 x i32> %i.fp, splat (i32 112)
  %i.fu = icmp eq <8 x i32> %i.fp, zeroinitializer ; 3 uses
  %i.fv = icmp eq <8 x i32> %i.fq, zeroinitializer
  %i.fw = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fr, i1 true) ; 2 uses
  %i.fx = sub nuw nsw <8 x i32> splat (i32 121), %i.fw
  %i.fy = xor <8 x i32> %i.fw, splat (i32 31)
  %i.fz = sub nuw nsw <8 x i32> splat (i32 23), %i.fy
  %i.ga = shl <8 x i32> %i.fr, %i.fz
  %i.gb = and <8 x i32> %i.ga, splat (i32 8380416)
  %i.gc = xor <8 x i1> %i.fu, %i.fs
  %i.gd = select <8 x i1> %i.fu, <8 x i1> %i.fv, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.gd, <8 x i32> zeroinitializer, <8 x i32> %i.fx
  %predphi230 = select <8 x i1> %i.gc, <8 x i32> %predphi, <8 x i32> %i.ft
  %predphi232 = select <8 x i1> %i.gd, <8 x i32> zeroinitializer, <8 x i32> %i.gb
  %predphi233 = select <8 x i1> %i.fu, <8 x i32> %predphi232, <8 x i32> %i.fr
  %i.ge = sext <8 x i16> %i.fm to <8 x i32>
  %i.gf = and <8 x i32> %i.ge, splat (i32 -2147483648)
  %i.gg = shl nuw nsw <8 x i32> %predphi230, splat (i32 23)
  %i.gh = select <8 x i1> %i.fs, <8 x i32> splat (i32 2139095040), <8 x i32> %i.gg
  %i.gi = or disjoint <8 x i32> %i.gh, %i.gf
  %i.gj = or disjoint <8 x i32> %i.gi, %predphi233
  %gep465 = getelementptr inbounds [4 x i8], ptr %invariant.gep464, i64 %i.fg
  store <8 x i32> %i.gj, ptr %gep465, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gk = add nuw nsw i64 %i.fg, 8
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader441

.lr.ph.i52.preheader441:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader441, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader441 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i53
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !107
  %i.go = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gp = icmp samesign ult i64 %i.go, %i.av
  call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gr to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gn to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gs = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gt = zext i16 %i.gs to i32                   ; 2 uses
  %i.gu = lshr i32 %i.gt, 10
  %i.gv = and i32 %i.gu, 31                       ; 3 uses
  %i.gw = and i32 %i.gt, 1023                     ; 2 uses
  %i.gx = shl nuw nsw i32 %i.gw, 13               ; 4 uses
  %i.gy = icmp eq i32 %i.gv, 31
  br i1 %i.gy, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gz = add nuw nsw i32 %i.gv, 112
  %i.ha = icmp eq i32 %i.gv, 0
  br i1 %i.ha, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.hb = icmp eq i32 %i.gw, 0
  br i1 %i.hb, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gx, i1 true) ; 2 uses
  %i.hc = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.hd = shl i32 %i.gx, %.lr.ph.tripcount.i.i
  %i.he = and i32 %i.hd, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gz, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.hc, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gx, %bb.g ], [ %i.gx, %.lr.ph.i52 ], [ %i.he, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gs to i32
  %i.hf = and i32 %.signext.i, -2147483648
  %i.hg = shl nuw nsw i32 %.116.i.i, 23
  %i.hh = or disjoint i32 %i.hg, %i.hf
  %i.hi = or i32 %i.hh, %.1.i.i
  %i.hj = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hk = icmp samesign ule i64 %i.hj, %i.bb
  call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hj
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge466 = select i1 %min.iters.check261, i1 true, i1 %conflict.rdx273
  br i1 %brmerge466, label %.lr.ph.i60.preheader442, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep456.a = getelementptr i8, ptr %i.dk, i64 %i.az
  %invariant.gep458 = getelementptr i8, ptr %i.dk, i64 %i.bc
  %invariant.gep460 = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ba
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph274
  %index287 = phi i64 [ 0, %vector.ph274 ], [ %index.next297, %vector.body286 ] ; 2 uses
  %i.hm = phi i64 [ 0, %vector.ph274 ], [ %i.is, %vector.body286 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index287
  %wide.load289 = load <8 x i8>, ptr %i.hn, align 1, !tbaa !107, !alias.scope !164
  %gep457.a = getelementptr i8, ptr %invariant.gep456.a, i64 %i.hm
  %wide.load290 = load <8 x i8>, ptr %gep457.a, align 1, !tbaa !107, !alias.scope !165
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.hm
  %wide.load291 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !166
  %i.ho = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.hp = shl nuw nsw <8 x i32> %i.ho, splat (i32 16)
  %i.hq = zext <8 x i8> %wide.load290 to <8 x i32>
  %i.hr = shl nuw nsw <8 x i32> %i.hq, splat (i32 8)
  %i.hs = zext <8 x i8> %wide.load289 to <8 x i32>
  %i.ht = or disjoint <8 x i32> %i.hr, %i.hs
  %i.hu = or disjoint <8 x i32> %i.ht, %i.hp
  %i.hv = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hu) ; 3 uses
  %i.hw = lshr exact <8 x i32> %i.hv, splat (i32 8)
  %i.hx = lshr <8 x i32> %i.hv, splat (i32 24)
  %i.hy = and <8 x i32> %i.hx, splat (i32 127)    ; 3 uses
  %i.hz = and <8 x i32> %i.hw, splat (i32 65535)  ; 2 uses
  %i.ia = shl nuw nsw <8 x i32> %i.hz, splat (i32 7) ; 3 uses
  %i.ib = icmp eq <8 x i32> %i.hy, splat (i32 127) ; 2 uses
  %i.ic = add nuw nsw <8 x i32> %i.hy, splat (i32 64)
  %i.id = icmp eq <8 x i32> %i.hy, zeroinitializer ; 3 uses
  %i.ie = icmp eq <8 x i32> %i.hz, zeroinitializer
  %i.if = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ia, i1 true) ; 2 uses
  %i.ig = sub nuw nsw <8 x i32> splat (i32 73), %i.if
  %i.ih = xor <8 x i32> %i.if, splat (i32 31)
  %i.ii = sub nuw nsw <8 x i32> splat (i32 23), %i.ih
  %i.ij = shl <8 x i32> %i.ia, %i.ii
  %i.ik = and <8 x i32> %i.ij, splat (i32 8388480)
  %i.il = xor <8 x i1> %i.id, %i.ib
  %i.im = select <8 x i1> %i.id, <8 x i1> %i.ie, <8 x i1> zeroinitializer ; 2 uses
  %predphi292 = select <8 x i1> %i.im, <8 x i32> zeroinitializer, <8 x i32> %i.ig
  %predphi293 = select <8 x i1> %i.il, <8 x i32> %predphi292, <8 x i32> %i.ic
  %predphi295 = select <8 x i1> %i.im, <8 x i32> zeroinitializer, <8 x i32> %i.ik
  %predphi296 = select <8 x i1> %i.id, <8 x i32> %predphi295, <8 x i32> %i.ia
  %i.in = and <8 x i32> %i.hv, splat (i32 -2147483648)
  %i.io = shl nuw nsw <8 x i32> %predphi293, splat (i32 23)
  %i.ip = select <8 x i1> %i.ib, <8 x i32> splat (i32 2139095040), <8 x i32> %i.io
  %i.iq = or disjoint <8 x i32> %i.ip, %i.in
  %i.ir = or disjoint <8 x i32> %i.iq, %predphi296
  %gep461 = getelementptr inbounds [4 x i8], ptr %invariant.gep460, i64 %i.hm
  store <8 x i32> %i.ir, ptr %gep461, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next297 = add nuw i64 %index287, 8       ; 2 uses
  %i.is = add nuw nsw i64 %i.hm, 8
  %i.it = icmp eq i64 %index.next297, %n.vec275
  br i1 %i.it, label %middle.block299, label %vector.body286, !llvm.loop !133

middle.block299:                                  ; preds = %vector.body286
  br i1 %cmp.n300, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader442

.lr.ph.i60.preheader442:                          ; preds = %.lr.ph.i60.preheader, %middle.block299
end_hunk_0
