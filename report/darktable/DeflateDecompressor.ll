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
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.n, %bb.a ] ; 21 uses
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
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = zext nneg i32 %i.r to i64               ; 18 uses
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
  %i.bg = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bh = add i64 %i.bg, %i.ba
  %i.bi = shl i64 %i.bh, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = mul i64 %i.bl, %i.bf
  %i.bn = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %i.ag, i64 %i.bo
  %scevgep209 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bq = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.br = mul nsw i64 %i.bq, %i.av                ; 2 uses
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %scevgep211 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count.i81
  %i.bu = getelementptr i8, ptr %i.q, i64 %i.br
  %scevgep212 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bw = add i64 %i.bv, %i.ba
  %i.bx = shl i64 %i.bw, 2
  %scevgep228 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 3 uses
  %i.by = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, -4
  %i.cb = mul i64 %i.ca, %i.bf
  %i.cc = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.ag, i64 %i.cd
  %scevgep229 = getelementptr i8, ptr %i.ce, i64 %i.cb ; 3 uses
  %scevgep230 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cf = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cg = mul nsw i64 %i.cf, %i.av                ; 3 uses
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bc
  %scevgep231 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count.i81
  %scevgep232 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.az
  %scevgep233 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i81
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.cg
  %scevgep234 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cn = add i64 %i.cm, %i.ba
  %i.co = shl i64 %i.cn, 2
  %scevgep277 = getelementptr i8, ptr %i.ag, i64 %i.co ; 4 uses
  %i.cp = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = mul i64 %i.cr, %i.bf
  %i.ct = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr i8, ptr %i.ag, i64 %i.cu
  %scevgep278 = getelementptr i8, ptr %i.cv, i64 %i.cs ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cx = mul nsw i64 %i.cw, %i.av                ; 4 uses
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bd
  %scevgep280 = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i81
  %scevgep281 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.da, i64 %i.bc
  %scevgep282 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i81
  %scevgep283 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.dc = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.az
  %scevgep284 = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i81
  %i.de = getelementptr i8, ptr %i.q, i64 %i.cx
  %scevgep285 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check302 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0286 = icmp ult ptr %scevgep277, %scevgep280
  %bound1287 = icmp ult ptr %scevgep279, %scevgep278
  %found.conflict288 = and i1 %bound0286, %bound1287
  %bound0289 = icmp ult ptr %scevgep277, %scevgep282
  %bound1290 = icmp ult ptr %scevgep281, %scevgep278
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %found.conflict288, %found.conflict291
  %bound0293 = icmp ult ptr %scevgep277, %scevgep284
  %bound1294 = icmp ult ptr %scevgep283, %scevgep278
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %scevgep277, %scevgep285
  %bound1298 = icmp ult ptr %i.q, %scevgep278
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %n.vec304 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n327 = icmp eq i64 %wide.trip.count.i81, %n.vec304
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check247 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0235 = icmp ult ptr %scevgep228, %scevgep231
  %bound1236 = icmp ult ptr %scevgep230, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0238 = icmp ult ptr %scevgep228, %scevgep233
  %bound1239 = icmp ult ptr %scevgep232, %scevgep229
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %found.conflict237, %found.conflict240
  %bound0242 = icmp ult ptr %scevgep228, %scevgep234
  %bound1243 = icmp ult ptr %i.q, %scevgep229
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %n.vec249 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n274 = icmp eq i64 %wide.trip.count.i81, %n.vec249
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep211
  %bound1 = icmp ult ptr %scevgep210, %scevgep209
  %found.conflict = and i1 %bound0, %bound1
  %bound0213 = icmp ult ptr %scevgep, %scevgep212
  %bound1214 = icmp ult ptr %i.q, %scevgep209
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx = or i1 %found.conflict, %found.conflict215
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.df = mul nuw i64 %indvars.iv, %i.av
  %i.dg = getelementptr i8, ptr %i.q, i64 %i.df
  %scevgep331 = getelementptr i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dh)
  %i.di = mul nuw i64 %indvars.iv, %i.av
  %i.dj = getelementptr i8, ptr %i.q, i64 %i.di   ; 34 uses
  %5 = load i32, ptr %i.au, align 8, !tbaa !27    ; 5 uses
  %i.dk = icmp slt i32 %5, %i.r
  br i1 %i.dk, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dl = zext nneg i32 %5 to i64                 ; 12 uses
  %i.dm = icmp sgt i32 %5, -1
  call void @llvm.assume(i1 %i.dm)
  %i.dn = xor i32 %5, -1
  %i.do = add nsw i32 %i.r, %i.dn                 ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %min.iters.check338 = icmp ult i32 %i.do, 7
  br i1 %min.iters.check338, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %iter.check
  %scevgep330 = getelementptr i8, ptr %i.dj, i64 %i.dl
  %i.dr = xor i32 %5, -1
  %i.ds = add nsw i32 %i.r, %i.dr
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr i8, ptr %scevgep331, i64 %i.dl
  %scevgep332 = getelementptr i8, ptr %i.du, i64 %i.dt
  %scevgep333 = getelementptr i8, ptr %scevgep331, i64 %i.dt
  %bound0334 = icmp ult ptr %scevgep330, %scevgep333
  %bound1335 = icmp ult ptr %i.dj, %scevgep332
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck329
  %min.iters.check339 = icmp ult i32 %i.do, 31
  br i1 %min.iters.check339, label %vec.epilog.ph, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.dq, 24
  %n.vec341 = and i64 %i.dq, 8589934560           ; 4 uses
  %i.dw = add nuw nsw i64 %n.vec341, %i.dl        ; 2 uses
  %broadcast.splatinsert342 = insertelement <32 x i64> poison, i64 %i.dl, i64 0
  %broadcast.splat343 = shufflevector <32 x i64> %broadcast.splatinsert342, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat343, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dj, i64 %i.dl
  br label %vector.body351

vector.body351:                                   ; preds = %vector.ph340, %vector.body351
  %index352 = phi i64 [ 0, %vector.ph340 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %vec.ind353 = phi <32 x i64> [ %induction, %vector.ph340 ], [ %vec.ind.next358, %vector.body351 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index352 ; 2 uses
  %wide.load355 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.dx = sub nuw nsw <32 x i64> %vec.ind353, %broadcast.splat343
  %i.dy = extractelement <32 x i64> %i.dx, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dy
  %wide.load356 = load <32 x i8>, ptr %i.dz, align 1, !tbaa !107, !alias.scope !153
  %i.ea = add <32 x i8> %wide.load356, %wide.load355
  store <32 x i8> %i.ea, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next357 = add nuw i64 %index352, 32      ; 2 uses
  %vec.ind.next358 = add nuw nsw <32 x i64> %vec.ind353, splat (i64 32)
  %i.eb = icmp eq i64 %index.next357, %n.vec341
  br i1 %i.eb, label %middle.block360, label %vector.body351, !llvm.loop !119

middle.block360:                                  ; preds = %vector.body351
  %cmp.n361 = icmp eq i64 %i.dq, %n.vec341
  br i1 %cmp.n361, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block360
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec341, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val362 = phi i64 [ %i.dw, %vec.epilog.iter.check ], [ %i.dl, %vector.main.loop.iter.check ]
  %n.vec363 = and i64 %i.dq, 8589934584           ; 3 uses
  %i.ec = add nuw nsw i64 %n.vec363, %i.dl
  %invariant.gep391 = getelementptr i8, ptr %i.dj, i64 %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next381, %vec.epilog.vector.body ] ; 2 uses
  %i.ed = phi i64 [ %bc.resume.val362, %vec.epilog.ph ], [ %i.eh, %vec.epilog.vector.body ] ; 2 uses
  %gep392 = getelementptr i8, ptr %invariant.gep391, i64 %index376 ; 2 uses
  %wide.load379 = load <8 x i8>, ptr %gep392, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ee = sub nuw nsw i64 %i.ed, %i.dl
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ee
  %wide.load380 = load <8 x i8>, ptr %i.ef, align 1, !tbaa !107, !alias.scope !153
  %i.eg = add <8 x i8> %wide.load380, %wide.load379
  store <8 x i8> %i.eg, ptr %gep392, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next381 = add nuw i64 %index376, 8       ; 2 uses
  %i.eh = add nuw nsw i64 %i.ed, 8
  %i.ei = icmp eq i64 %index.next381, %n.vec363
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n384 = icmp eq i64 %i.dq, %n.vec363
  br i1 %cmp.n384, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck329, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dl, %iter.check ], [ %i.dl, %vector.memcheck329 ], [ %i.dw, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ej = trunc nuw i64 %indvars.iv.i to i32
  %i.ek = icmp sgt i32 %i.r, %i.ej
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !107
  %i.en = sub nuw nsw i64 %indvars.iv.i, %i.dl    ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, %i.av
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !107
  %i.er = add i8 %i.eq, %i.em
  store i8 %i.er, ptr %i.el, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next.i to i32
  %i.et = icmp sgt i32 %i.r, %i.es
  br i1 %i.et, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block360, %vec.epilog.middle.block, %bb.e
  %i.eu = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.be
  call void @llvm.assume(i1 %i.ev)
  %i.ew = mul nuw nsw i64 %i.eu, %i.bf
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ew ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader386, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep407.a = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep409 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = phi i64 [ 0, %vector.ph ], [ %i.gc, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ez, align 1, !tbaa !107, !alias.scope !158
  %gep408.a = getelementptr i8, ptr %invariant.gep407.a, i64 %i.ey
  %wide.load222 = load <8 x i8>, ptr %gep408.a, align 1, !tbaa !107, !alias.scope !159
  %i.fa = zext <8 x i8> %wide.load222 to <8 x i16>
  %i.fb = shl nuw <8 x i16> %i.fa, splat (i16 8)
  %i.fc = zext <8 x i8> %wide.load to <8 x i16>
  %i.fd = or disjoint <8 x i16> %i.fb, %i.fc
  %i.fe = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fd) ; 2 uses
  %i.ff = zext <8 x i16> %i.fe to <8 x i32>       ; 2 uses
  %i.fg = lshr <8 x i32> %i.ff, splat (i32 10)
  %i.fh = and <8 x i32> %i.fg, splat (i32 31)     ; 3 uses
  %i.fi = and <8 x i32> %i.ff, splat (i32 1023)   ; 2 uses
  %i.fj = shl nuw nsw <8 x i32> %i.fi, splat (i32 13) ; 3 uses
  %i.fk = icmp eq <8 x i32> %i.fh, splat (i32 31) ; 2 uses
  %i.fl = add nuw nsw <8 x i32> %i.fh, splat (i32 112)
  %i.fm = icmp eq <8 x i32> %i.fh, zeroinitializer ; 3 uses
  %i.fn = icmp eq <8 x i32> %i.fi, zeroinitializer
  %i.fo = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fj, i1 true) ; 2 uses
  %i.fp = sub nuw nsw <8 x i32> splat (i32 121), %i.fo
  %i.fq = xor <8 x i32> %i.fo, splat (i32 31)
  %i.fr = sub nuw nsw <8 x i32> splat (i32 23), %i.fq
  %i.fs = shl <8 x i32> %i.fj, %i.fr
  %i.ft = and <8 x i32> %i.fs, splat (i32 8380416)
  %i.fu = xor <8 x i1> %i.fm, %i.fk
  %i.fv = select <8 x i1> %i.fm, <8 x i1> %i.fn, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.fv, <8 x i32> zeroinitializer, <8 x i32> %i.fp
  %predphi223 = select <8 x i1> %i.fu, <8 x i32> %predphi, <8 x i32> %i.fl
  %predphi225 = select <8 x i1> %i.fv, <8 x i32> zeroinitializer, <8 x i32> %i.ft
  %predphi226 = select <8 x i1> %i.fm, <8 x i32> %predphi225, <8 x i32> %i.fj
  %i.fw = sext <8 x i16> %i.fe to <8 x i32>
  %i.fx = and <8 x i32> %i.fw, splat (i32 -2147483648)
  %i.fy = shl nuw nsw <8 x i32> %predphi223, splat (i32 23)
  %i.fz = select <8 x i1> %i.fk, <8 x i32> splat (i32 2139095040), <8 x i32> %i.fy
  %i.ga = or disjoint <8 x i32> %i.fz, %i.fx
  %i.gb = or disjoint <8 x i32> %i.ga, %predphi226
  %gep410 = getelementptr inbounds [4 x i8], ptr %invariant.gep409, i64 %i.ey
  store <8 x i32> %i.gb, ptr %gep410, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = add nuw nsw i64 %i.ey, 8
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader386

.lr.ph.i52.preheader386:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader386, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader386 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i53
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !107
  %i.gg = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gh = icmp samesign ult i64 %i.gg, %i.av
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gj to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gf to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gk = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = lshr i32 %i.gl, 10
  %i.gn = and i32 %i.gm, 31                       ; 3 uses
  %i.go = and i32 %i.gl, 1023                     ; 2 uses
  %i.gp = shl nuw nsw i32 %i.go, 13               ; 4 uses
  %i.gq = icmp eq i32 %i.gn, 31
  br i1 %i.gq, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gr = add nuw nsw i32 %i.gn, 112
  %i.gs = icmp eq i32 %i.gn, 0
  br i1 %i.gs, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true) ; 2 uses
  %i.gu = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.gv = shl i32 %i.gp, %.lr.ph.tripcount.i.i
  %i.gw = and i32 %i.gv, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gr, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.gu, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gp, %bb.g ], [ %i.gp, %.lr.ph.i52 ], [ %i.gw, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gk to i32
  %i.gx = and i32 %.signext.i, -2147483648
  %i.gy = shl nuw nsw i32 %.116.i.i, 23
  %i.gz = or disjoint i32 %i.gy, %i.gx
  %i.ha = or i32 %i.gz, %.1.i.i
  %i.hb = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hc = icmp samesign ule i64 %i.hb, %i.bb
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.hb
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge411 = select i1 %min.iters.check247, i1 true, i1 %conflict.rdx245
  br i1 %brmerge411, label %.lr.ph.i60.preheader387, label %vector.ph248

vector.ph248:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep401.a = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep403 = getelementptr i8, ptr %i.dj, i64 %i.bc
  %invariant.gep405 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ba
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph248
  %index261 = phi i64 [ 0, %vector.ph248 ], [ %index.next271, %vector.body260 ] ; 2 uses
  %i.he = phi i64 [ 0, %vector.ph248 ], [ %i.ik, %vector.body260 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index261
  %wide.load263 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !107, !alias.scope !164
  %gep402.a = getelementptr i8, ptr %invariant.gep401.a, i64 %i.he
  %wide.load264 = load <8 x i8>, ptr %gep402.a, align 1, !tbaa !107, !alias.scope !165
  %gep404 = getelementptr i8, ptr %invariant.gep403, i64 %i.he
  %wide.load265 = load <8 x i8>, ptr %gep404, align 1, !tbaa !107, !alias.scope !166
  %i.hg = zext <8 x i8> %wide.load265 to <8 x i32>
  %i.hh = shl nuw nsw <8 x i32> %i.hg, splat (i32 16)
  %i.hi = zext <8 x i8> %wide.load264 to <8 x i32>
  %i.hj = shl nuw nsw <8 x i32> %i.hi, splat (i32 8)
  %i.hk = zext <8 x i8> %wide.load263 to <8 x i32>
  %i.hl = or disjoint <8 x i32> %i.hj, %i.hk
  %i.hm = or disjoint <8 x i32> %i.hl, %i.hh
  %i.hn = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hm) ; 3 uses
  %i.ho = lshr exact <8 x i32> %i.hn, splat (i32 8)
  %i.hp = lshr <8 x i32> %i.hn, splat (i32 24)
  %i.hq = and <8 x i32> %i.hp, splat (i32 127)    ; 3 uses
  %i.hr = and <8 x i32> %i.ho, splat (i32 65535)  ; 2 uses
  %i.hs = shl nuw nsw <8 x i32> %i.hr, splat (i32 7) ; 3 uses
  %i.ht = icmp eq <8 x i32> %i.hq, splat (i32 127) ; 2 uses
  %i.hu = add nuw nsw <8 x i32> %i.hq, splat (i32 64)
  %i.hv = icmp eq <8 x i32> %i.hq, zeroinitializer ; 3 uses
  %i.hw = icmp eq <8 x i32> %i.hr, zeroinitializer
  %i.hx = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.hs, i1 true) ; 2 uses
  %i.hy = sub nuw nsw <8 x i32> splat (i32 73), %i.hx
  %i.hz = xor <8 x i32> %i.hx, splat (i32 31)
  %i.ia = sub nuw nsw <8 x i32> splat (i32 23), %i.hz
  %i.ib = shl <8 x i32> %i.hs, %i.ia
  %i.ic = and <8 x i32> %i.ib, splat (i32 8388480)
  %i.id = xor <8 x i1> %i.hv, %i.ht
  %i.ie = select <8 x i1> %i.hv, <8 x i1> %i.hw, <8 x i1> zeroinitializer ; 2 uses
  %predphi266 = select <8 x i1> %i.ie, <8 x i32> zeroinitializer, <8 x i32> %i.hy
  %predphi267 = select <8 x i1> %i.id, <8 x i32> %predphi266, <8 x i32> %i.hu
  %predphi269 = select <8 x i1> %i.ie, <8 x i32> zeroinitializer, <8 x i32> %i.ic
  %predphi270 = select <8 x i1> %i.hv, <8 x i32> %predphi269, <8 x i32> %i.hs
  %i.if = and <8 x i32> %i.hn, splat (i32 -2147483648)
  %i.ig = shl nuw nsw <8 x i32> %predphi267, splat (i32 23)
  %i.ih = select <8 x i1> %i.ht, <8 x i32> splat (i32 2139095040), <8 x i32> %i.ig
  %i.ii = or disjoint <8 x i32> %i.ih, %i.if
  %i.ij = or disjoint <8 x i32> %i.ii, %predphi270
  %gep406 = getelementptr inbounds [4 x i8], ptr %invariant.gep405, i64 %i.he
  store <8 x i32> %i.ij, ptr %gep406, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next271 = add nuw i64 %index261, 8       ; 2 uses
  %i.ik = add nuw nsw i64 %i.he, 8
  %i.il = icmp eq i64 %index.next271, %n.vec249
  br i1 %i.il, label %middle.block273, label %vector.body260, !llvm.loop !133

middle.block273:                                  ; preds = %vector.body260
  br i1 %cmp.n274, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader387

.lr.ph.i60.preheader387:                          ; preds = %.lr.ph.i60.preheader, %middle.block273
end_hunk_0
