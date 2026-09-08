Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/LJpegDecompressor?download=true
inline.NumInlined: 939
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz:bb.a
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #20 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !177
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !call_target !137, !inline_history !174
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !call_target !139, !inline_history !174
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !141

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor6decodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108  ; 6 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false)
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !178  ; 3 uses
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.f, i1 false)
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, %i.d
  switch i64 %i.i, label %bb.h [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.b, 1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call fastcc noundef i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.b, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = tail call fastcc noundef i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call fastcc noundef i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.f, 1
  %i.q = icmp eq i32 %i.b, 4
  %i.r = and i1 %i.q, %i.p
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call fastcc noundef i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %i.b, 2
  %i.u = icmp eq i32 %i.f, 2
  tail call void @llvm.assume(i1 %i.t)
  tail call void @llvm.assume(i1 %i.u)
  %i.v = tail call fastcc noundef i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.f ], [ %i.v, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed19roundUpDivisionSafeEmm.exit:
  %1 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %.sroa.0.i.i70 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %3 = alloca %"struct.std::array.82", align 2    ; 8 uses
  %.sroa.0 = alloca i16, align 2                  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !188
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143, !noalias !188
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !144, !noalias !188
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !145, !noalias !188
  %i.n = ashr i32 %i.m, 1                         ; 6 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109
  %i.s = mul i32 %i.r, %i.c                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = mul i32 %i.w, %i.c                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147  ; 5 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ult i32 %i.u, %i.k
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = mul nuw nsw i32 %i.u, %i.n
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ae
  %i.ag = zext nneg i32 %i.s to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ag
  %i.ai = icmp sge i32 %i.n, %i.x
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !111 ; 8 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !115, !nonnull !116, !align !117 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !36 ; 3 uses
  %4 = sext i32 %i.z to i64                       ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add nsw i64 %4, -1
  %i.ar = udiv i64 %i.aq, %i.ap                   ; 2 uses
  %5 = trunc i64 %i.ar to i32
  %6 = add nsw i32 %5, 1                          ; 2 uses
  %i.as = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.021.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !21 ; 3 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.au = icmp sgt i32 %.sroa.222.0.copyload, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24 ; 3 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = icmp eq ptr %i.ak, %i.aw
  %invariant.op = add nsw i32 %i.z, -1
  %.not35689 = icmp eq i32 %i.ao, 0
  %i.az = icmp sgt i32 %i.z, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bb = icmp sgt i32 %i.n, 0                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = zext nneg i32 %.sroa.222.0.copyload to i64
  %i.bl = zext i32 %i.x to i64
  %i.bm = zext nneg i32 %i.n to i64
  %i.bn = zext i32 %i.ao to i64
  %i.bo = and i64 %i.ar, 4294967295
  %7 = zext nneg i32 %6 to i64
  %i.bp = add i64 %i.ax, -16
  %i.bq = sub i64 %i.bp, %i.al                    ; 3 uses
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bq, 64
  %min.iters.check795 = icmp ult i64 %i.bq, 256
  %i.bt = and i64 %i.bs, 15                       ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 16, i64 %i.bt      ; 2 uses
  %n.vec = sub nsw i64 %i.bs, %i.bv               ; 4 uses
  %i.bw = shl nsw i64 %n.vec, 1
  %i.bx = getelementptr i8, ptr %3, i64 %i.bw
  %i.by = shl i64 %n.vec, 4
  %i.bz = getelementptr i8, ptr %i.ak, i64 %i.by
  %min.epilog.iters.check = icmp samesign ult i64 %i.bv, 5
  %i.ca = and i64 %i.bs, 3                        ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.ca
  %n.vec798 = sub nsw i64 %i.bs, %i.cc            ; 3 uses
  %i.cd = shl nsw i64 %n.vec798, 1
  %i.ce = getelementptr i8, ptr %3, i64 %i.cd
  %i.cf = shl i64 %n.vec798, 4
  %i.cg = getelementptr i8, ptr %i.ak, i64 %i.cf
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit120
  ret i32 %i.qj

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120
  %indvars.iv732 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next733, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120 ] ; 5 uses
  %.sroa.10322.0701 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.qj, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.ay, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check795, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ch = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %3, i64 %i.ch
  %i.ci = shl i64 %index, 4
  %next.gep796.a = getelementptr i8, ptr %i.ak, i64 %i.ci
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep796.a, i64 8
  %wide.vec = load <128 x i16>, ptr %i.cj, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 2, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !181

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index799 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next804, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = shl i64 %index799, 1
  %next.gep800 = getelementptr i8, ptr %3, i64 %i.cl
  %i.cm = shl i64 %index799, 4
  %next.gep801 = getelementptr i8, ptr %i.ak, i64 %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %next.gep801, i64 8
  %wide.vec802 = load <32 x i16>, ptr %i.cn, align 8, !tbaa !148
  %strided.vec803 = shufflevector <32 x i16> %wide.vec802, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec803, ptr %next.gep800, align 2, !tbaa !149
  %index.next804 = add nuw i64 %index799, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next804, %n.vec798
  br i1 %i.co, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !182

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !148
  store i16 %i.cq, ptr %.07.i.i, align 2, !tbaa !149
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.ct = icmp eq ptr %i.cr, %i.aw
  br i1 %i.ct, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !183

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i16, ptr %3, align 2
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cu = phi i16 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i16 %i.cu, ptr %.sroa.0, align 2
  %.not33 = icmp eq i64 %indvars.iv732, 0
  br i1 %.not33, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10322.0701, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cv = add nuw nsw i32 %.sroa.10322.0701, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cv, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cw = zext nneg i32 %.sroa.10322.0701 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.cw
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.cx, align 1
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.cy
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.cz, align 1 ; 3 uses
  %i.da = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.db = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dc = icmp ult i8 %i.db, 2
  %or.cond5.i.not = or i1 %i.da, %i.dc
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.dd = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.dd, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.de = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.df = add nsw i32 %i.de, -208
  %i.dg = trunc i64 %indvars.iv732 to i32
  %i.dh = add i32 %i.dg, -1
  %i.di = srem i32 %i.dh, 8
  %.not34 = icmp eq i32 %i.df, %i.di
  br i1 %.not34, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dj = add nuw nsw i32 %.sroa.10322.0701, 2    ; 2 uses
  %i.dk = icmp samesign ule i32 %i.dj, %.sroa.222.0.copyload
  tail call void @llvm.assume(i1 %i.dk)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.sroa.10322.1 = phi i32 [ %.sroa.10322.0701, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit ], [ %i.dj, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dl = zext nneg i32 %.sroa.10322.1 to i64     ; 2 uses
  %i.dm = sub nuw nsw i32 %.sroa.222.0.copyload, %.sroa.10322.1 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.dl ; 4 uses
  %i.do = icmp samesign ult i32 %i.dm, 8
  br i1 %i.do, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not35689, label %.loopexit580.thread, label %.lr.ph696

.lr.ph696:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dp = mul nsw i64 %indvars.iv732, %i.ap
  %i.dq = add nuw nsw i32 %i.dm, 16               ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph696, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv729 = phi i64 [ 0, %.lr.ph696 ], [ %indvars.iv.next730, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0217.0694 = phi i64 [ 0, %.lr.ph696 ], [ %.sroa.0217.3.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.33.0693 = phi i32 [ 0, %.lr.ph696 ], [ %.sroa.33.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.94268.0692 = phi i32 [ 0, %.lr.ph696 ], [ %.sroa.94268.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.116287.0691 = phi i32 [ -1, %.lr.ph696 ], [ %.sroa.116287.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0297.0690 = phi ptr [ %.sroa.0, %.lr.ph696 ], [ %i.dy, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.dr = add nsw i64 %indvars.iv729, %i.dp       ; 4 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp sle i64 %i.dr, %4
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc nuw nsw i64 %i.dr to i32          ; 2 uses
  %.not36 = icmp eq i32 %i.z, %i.du
  br i1 %.not36, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dv = icmp eq i64 %indvars.iv732, %i.bo
  tail call void @llvm.assume(i1 %i.dv)
  br label %.loopexit580

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.az)
  %i.dw = icmp uge i32 %invariant.op, %i.du
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = mul nuw nsw i64 %i.dr, %i.bm
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.ba, align 4, !tbaa !37 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bb)
  %wide.trip.count = zext nneg i32 %i.dz to i64
  %.pre = load i16, ptr %.sroa.0297.0690, align 2, !tbaa !149
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46
  %i.eb = phi i16 [ %.pre, %.lr.ph ], [ %i.kg, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %.sroa.0217.2666 = phi i64 [ %.sroa.0217.0694, %.lr.ph ], [ %.sroa.0217.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %.sroa.33.3665 = phi i32 [ %.sroa.33.0693, %.lr.ph ], [ %.sroa.33.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 7 uses
  %.sroa.94268.3664 = phi i32 [ %.sroa.94268.0692, %.lr.ph ], [ %.sroa.94268.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 8 uses
  %.sroa.116287.3663 = phi i32 [ %.sroa.116287.0691, %.lr.ph ], [ %.sroa.116287.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.np = load i32, ptr %i.no, align 4, !tbaa !22 ; 4 uses
  %i.nq = lshr i32 %i.np, 9
  %i.nr = and i32 %i.np, 255                      ; 4 uses
  %i.ns = icmp samesign ult i32 %i.nr, 33
  tail call void @llvm.assume(i1 %i.ns)
  %i.nt = sub nuw nsw i32 %.sroa.33.16, %i.nr     ; 3 uses
  %i.nu = zext nneg i32 %i.nr to i64
  %i.nv = shl i64 %.sroa.0217.15, %i.nu           ; 3 uses
  %i.nw = and i32 %i.np, 256
  %.not.i40 = icmp eq i32 %i.nw, 0
  br i1 %.not.i40, label %bb.bc, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.bc:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80
  %.not17.i = icmp eq i32 %i.np, 0
  br i1 %.not17.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nx = trunc i32 %i.nq to i8                   ; 2 uses
  %i.ny = icmp ne i8 %i.nx, 0
  tail call void @llvm.assume(i1 %i.ny)
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.nz = icmp eq i32 %i.nr, 0
  tail call void @llvm.assume(i1 %i.nz)
  %i.oa = add nsw i32 %i.nt, -11                  ; 2 uses
  %i.ob = shl i64 %i.nv, 11                       ; 2 uses
  %i.oc = load ptr, ptr %i.be, align 8, !tbaa !156
  %i.od = load ptr, ptr %i.bd, align 8, !tbaa !157
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = ashr exact i64 %i.og, 2
  %i.oi = add nsw i64 %i.oh, -1                   ; 3 uses
  %.sroa.0.018.i83 = trunc nuw nsw i64 %i.nl to i16 ; 2 uses
  %i.oj = icmp ugt i64 %i.oi, 11
  br i1 %i.oj, label %.lr.ph.i102, label %.critedge.i85

.lr.ph.i102:                                      ; preds = %bb.be
  %i.ok = load ptr, ptr %i.bf, align 8, !tbaa !160
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge2.i109, %.lr.ph.i102
  %.sroa.33.18 = phi i32 [ %i.oa, %.lr.ph.i102 ], [ %i.ou, %.critedge2.i109 ] ; 4 uses
  %.sroa.0217.17 = phi i64 [ %i.ob, %.lr.ph.i102 ], [ %i.ov, %.critedge2.i109 ] ; 3 uses
  %i.ol = phi i64 [ 11, %.lr.ph.i102 ], [ %i.pa, %.critedge2.i109 ] ; 2 uses
  %.sroa.0.021.i105 = phi i16 [ %.sroa.0.018.i83, %.lr.ph.i102 ], [ %.sroa.0.0.i110, %.critedge2.i109 ] ; 2 uses
  %.sroa.8.020.i106 = phi i8 [ 11, %.lr.ph.i102 ], [ %i.oz, %.critedge2.i109 ] ; 2 uses
  %.sroa.0.0.in19.i107 = phi i32 [ %i.nm, %.lr.ph.i102 ], [ %i.oy, %.critedge2.i109 ] ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !149 ; 2 uses
  %i.oo = icmp eq i16 %i.on, -1
  %i.op = icmp ult i16 %i.on, %.sroa.0.021.i105
  %or.cond.i108 = select i1 %i.oo, i1 true, i1 %i.op
  br i1 %or.cond.i108, label %.critedge2.i109, label %.critedge.i85.loopexit

.critedge2.i109:                                  ; preds = %bb.bf
  %i.oq = icmp samesign ult i32 %.sroa.33.18, 65
  tail call void @llvm.assume(i1 %i.oq)
  %i.or = icmp ne i32 %.sroa.33.18, 0
  tail call void @llvm.assume(i1 %i.or)
  %i.os = lshr i64 %.sroa.0217.17, 63
  %i.ot = trunc nuw nsw i64 %i.os to i32
  %i.ou = add nsw i32 %.sroa.33.18, -1            ; 2 uses
  %i.ov = shl i64 %.sroa.0217.17, 1               ; 2 uses
  %i.ow = shl nsw i32 %.sroa.0.0.in19.i107, 1
  %i.ox = and i32 %i.ow, 131070
  %i.oy = or disjoint i32 %i.ox, %i.ot            ; 3 uses
  %i.oz = add i8 %.sroa.8.020.i106, 1             ; 3 uses
  %.sroa.0.0.i110 = trunc i32 %i.oy to i16        ; 2 uses
  %i.pa = zext i8 %i.oz to i64                    ; 3 uses
  %i.pb = icmp ugt i64 %i.oi, %i.pa
  br i1 %i.pb, label %bb.bf, label %.critedge.i85.loopexit, !llvm.loop !1

.critedge.i85.loopexit:                           ; preds = %bb.bf, %.critedge2.i109
  %.sroa.33.17.ph = phi i32 [ %i.ou, %.critedge2.i109 ], [ %.sroa.33.18, %bb.bf ]
  %.sroa.0217.16.ph = phi i64 [ %i.ov, %.critedge2.i109 ], [ %.sroa.0217.17, %bb.bf ]
  %.sroa.0.0.in.lcssa.i86.ph = phi i32 [ %i.oy, %.critedge2.i109 ], [ %.sroa.0.0.in19.i107, %bb.bf ]
  %.sroa.8.0.lcssa.i87.ph = phi i8 [ %i.oz, %.critedge2.i109 ], [ %.sroa.8.020.i106, %bb.bf ]
  %.sroa.0.0.lcssa.i88.ph = phi i16 [ %.sroa.0.0.i110, %.critedge2.i109 ], [ %.sroa.0.021.i105, %bb.bf ]
  %.lcssa17.i89.ph = phi i64 [ %i.pa, %.critedge2.i109 ], [ %i.ol, %bb.bf ]
  %i.pc = zext i8 %.sroa.8.0.lcssa.i87.ph to i32
  br label %.critedge.i85

.critedge.i85:                                    ; preds = %.critedge.i85.loopexit, %bb.be
  %.sroa.33.17 = phi i32 [ %i.oa, %bb.be ], [ %.sroa.33.17.ph, %.critedge.i85.loopexit ]
  %.sroa.0217.16 = phi i64 [ %i.ob, %bb.be ], [ %.sroa.0217.16.ph, %.critedge.i85.loopexit ]
  %.sroa.0.0.in.lcssa.i86 = phi i32 [ %i.nm, %bb.be ], [ %.sroa.0.0.in.lcssa.i86.ph, %.critedge.i85.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i87 = phi i32 [ 11, %bb.be ], [ %i.pc, %.critedge.i85.loopexit ]
  %.sroa.0.0.lcssa.i88 = phi i16 [ %.sroa.0.018.i83, %bb.be ], [ %.sroa.0.0.lcssa.i88.ph, %.critedge.i85.loopexit ]
  %.lcssa17.i89 = phi i64 [ 11, %bb.be ], [ %.lcssa17.i89.ph, %.critedge.i85.loopexit ] ; 3 uses
  %i.pd = icmp ult i64 %i.oi, %.lcssa17.i89
  br i1 %i.pd, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i85
  %i.pe = load ptr, ptr %i.bf, align 8, !tbaa !160
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %.lcssa17.i89
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !149
  %i.ph = icmp ult i16 %i.pg, %.sroa.0.0.lcssa.i88
  br i1 %i.ph, label %bb.bh, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111

bb.bh:                                            ; preds = %bb.bg, %.critedge.i85
  %i.pi = and i32 %.sroa.0.0.in.lcssa.i86, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.pi, i32 noundef %.sroa.8.0.lcssa.i87) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111: ; preds = %bb.bg
  %.sroa.0.0.mask.i91 = and i32 %.sroa.0.0.in.lcssa.i86, 65535
  %i.pj = load ptr, ptr %i.bg, align 8, !tbaa !160
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %.lcssa17.i89
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !149
  %.tr.i92 = zext i16 %i.pl to i32
  %.narrow.i93 = sub nsw i32 %.sroa.0.0.mask.i91, %.tr.i92
  %i.pm = zext i32 %.narrow.i93 to i64
  %i.pn = load ptr, ptr %i.bh, align 8, !tbaa !161
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pm
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !140
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111, %bb.bd
  %.0561 = phi i8 [ %i.pp, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111 ], [ %i.nx, %bb.bd ] ; 5 uses
  %.sroa.33.8 = phi i32 [ %.sroa.33.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111 ], [ %i.nt, %bb.bd ] ; 8 uses
  %.sroa.0217.7 = phi i64 [ %.sroa.0217.16, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit111 ], [ %i.nv, %bb.bd ] ; 4 uses
  %i.pq = icmp ult i8 %.0561, 17
  tail call void @llvm.assume(i1 %i.pq)
  switch i8 %.0561, label %bb.bl [
    i8 16, label %bb.bj
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.pr = load i8, ptr %i.bi, align 1, !tbaa !162, !range !130, !noundef !116
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.bk, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.pt = icmp samesign ult i32 %.sroa.33.8, 65
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = icmp samesign ugt i32 %.sroa.33.8, 15
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = add nsw i32 %.sroa.33.8, -16
  %i.pw = shl i64 %.sroa.0217.7, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.bl:                                            ; preds = %bb.bi
  %i.px = zext nneg i8 %.0561 to i32              ; 2 uses
  %i.py = icmp samesign ult i32 %.sroa.33.8, 65
  tail call void @llvm.assume(i1 %i.py)
  %i.pz = icmp ne i8 %.0561, 0
  tail call void @llvm.assume(i1 %i.pz)
  %i.qa = icmp samesign uge i32 %.sroa.33.8, %i.px
  tail call void @llvm.assume(i1 %i.qa)
  %i.qb = sub nuw nsw i32 %.sroa.33.8, %i.px
  %i.qc = zext nneg i8 %.0561 to i64
  %i.qd = shl i64 %.sroa.0217.7, %i.qc
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80
  %.sroa.33.9 = phi i32 [ %i.nt, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80 ], [ %i.qb, %bb.bl ], [ %i.pv, %bb.bk ], [ %.sroa.33.8, %bb.bj ], [ %.sroa.33.8, %bb.bi ] ; 2 uses
  %.sroa.0217.8 = phi i64 [ %i.nv, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80 ], [ %i.qd, %bb.bl ], [ %i.pw, %bb.bk ], [ %.sroa.0217.7, %bb.bj ], [ %.sroa.0217.7, %bb.bi ] ; 2 uses
  %i.qe = add nuw i32 %.1.i683, 1                 ; 2 uses
  %exitcond728.not = icmp eq i32 %i.qe, %i.kh
  br i1 %exitcond728.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader578, !llvm.loop !185

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit, %._crit_edge
  %.sroa.116287.4.lcssa = phi i32 [ %.sroa.116287.3.lcssa, %._crit_edge ], [ %.sroa.116287.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %.sroa.94268.4.lcssa = phi i32 [ %.sroa.94268.3.lcssa, %._crit_edge ], [ %.sroa.94268.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %.sroa.33.4.lcssa = phi i32 [ %.sroa.33.3.lcssa, %._crit_edge ], [ %.sroa.33.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %.sroa.0217.3.lcssa = phi i64 [ %.sroa.0217.2.lcssa, %._crit_edge ], [ %.sroa.0217.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  tail call void @llvm.assume(i1 %i.bb)
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %.not35 = icmp eq i64 %indvars.iv.next730, %i.bn
  br i1 %.not35, label %.loopexit580, label %bb.m, !llvm.loop !186

.loopexit580:                                     ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.thread
  %.sroa.116287.0640 = phi i32 [ %.sroa.116287.0691, %.thread ], [ %.sroa.116287.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.94268.0634 = phi i32 [ %.sroa.94268.0692, %.thread ], [ %.sroa.94268.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.116287.0640.fr = freeze i32 %.sroa.116287.0640 ; 2 uses
  %i.qf = icmp slt i32 %.sroa.116287.0640.fr, 0
  %spec.select = select i1 %i.qf, i32 %.sroa.94268.0634, i32 %.sroa.116287.0640.fr
  br label %.loopexit580.thread

.loopexit580.thread:                              ; preds = %.loopexit580, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.qg = phi i32 [ %spec.select, %.loopexit580 ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader ] ; 3 uses
  %i.qh = zext i32 %i.qg to i64
  %i.qi = add nuw nsw i64 %i.qh, %i.dl
  %.not.i.i119 = icmp samesign ugt i64 %i.qi, %i.bk
  br i1 %.not.i.i119, label %bb.bm, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit120

bb.bm:                                            ; preds = %.loopexit580.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit120:     ; preds = %.loopexit580.thread
  %i.qj = add nuw nsw i32 %i.qg, %.sroa.10322.1   ; 3 uses
  %i.qk = icmp samesign ule i32 %i.qj, %.sroa.222.0.copyload
  tail call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp sgt i32 %i.qg, -1
  tail call void @llvm.assume(i1 %i.ql)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next733, %7
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !187
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed19roundUpDivisionSafeEmm.exit:
  %1 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %.sroa.0.i.i118 = alloca i64, align 8           ; 5 uses
  %.sroa.0.i.i68 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %4 = alloca %"struct.std::array.111", align 4   ; 8 uses
  %5 = alloca %"struct.std::array.111", align 4   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143, !noalias !201
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !144, !noalias !201
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !145, !noalias !201
  %i.n = ashr i32 %i.m, 1                         ; 6 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109
  %i.s = mul i32 %i.r, %i.c                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = mul i32 %i.w, %i.c                       ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147  ; 4 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ne i32 %i.x, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.u, %i.k
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.u, %i.n
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp sge i32 %i.n, %i.x
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111 ; 8 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr align 8 %i.al, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !36 ; 3 uses
  %6 = sext i32 %i.z to i64                       ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add nsw i64 %6, -1
  %i.as = udiv i64 %i.ar, %i.aq                   ; 2 uses
  %7 = trunc i64 %i.as to i32
  %8 = add nsw i32 %7, 1                          ; 2 uses
  %i.at = icmp ne i32 %8, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.022.0.copyload = load ptr, ptr %i.au, align 8, !tbaa !21 ; 3 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.av = icmp sgt i32 %.sroa.223.0.copyload, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 3 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = icmp eq ptr %i.al, %i.ax
  %.not36905 = icmp eq i32 %i.ap, 0
  %i.ba = icmp sgt i32 %i.x, -1
  %i.bb = icmp sgt i32 %i.z, -1
  %i.bc = icmp samesign ugt i32 %i.x, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -2
  %i.be = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = zext nneg i32 %.sroa.223.0.copyload to i64
  %i.bi = zext i32 %invariant.op to i64
  %i.bj = zext i32 %i.x to i64
  %i.bk = zext nneg i32 %i.n to i64
  %i.bl = zext i32 %i.ap to i64
  %i.bm = and i64 %i.as, 4294967295
  %9 = zext nneg i32 %8 to i64
  %i.bn = add i64 %i.ay, -16
  %i.bo = sub i64 %i.bn, %i.am                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 4
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bo, 64
  %min.iters.check1056 = icmp ult i64 %i.bo, 256
  %i.br = and i64 %i.bq, 15                       ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = select i1 %i.bs, i64 16, i64 %i.br      ; 2 uses
  %n.vec = sub nsw i64 %i.bq, %i.bt               ; 4 uses
  %i.bu = shl nsw i64 %n.vec, 1
  %i.bv = getelementptr i8, ptr %4, i64 %i.bu
  %i.bw = shl i64 %n.vec, 4
  %i.bx = getelementptr i8, ptr %i.al, i64 %i.bw
  %min.epilog.iters.check = icmp samesign ult i64 %i.bt, 5
  %i.by = and i64 %i.bq, 3                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %i.by
  %n.vec1059 = sub nsw i64 %i.bq, %i.ca           ; 3 uses
  %i.cb = shl nsw i64 %n.vec1059, 1
  %i.cc = getelementptr i8, ptr %4, i64 %i.cb
  %i.cd = shl i64 %n.vec1059, 4
  %i.ce = getelementptr i8, ptr %i.al, i64 %i.cd
  %.sroa.0.0.vec.extract1096 = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract = extractelement <3 x ptr> %i.an, i64 2
  %.sroa.0.0.vec.extract1094 = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract1098 = extractelement <3 x ptr> %i.an, i64 2
  %.sroa.0.0.vec.extract = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract1100 = extractelement <3 x ptr> %i.an, i64 2
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit168
  ret i32 %i.xv

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168
  %indvars.iv967 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
  %.sroa.10429.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.xv, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.az, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1056, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.cf
  %i.cg = shl i64 %index, 4
  %next.gep1057 = getelementptr i8, ptr %i.al, i64 %i.cg
  %i.ch = getelementptr inbounds nuw i8, ptr %next.gep1057, i64 8
  %wide.vec = load <128 x i16>, ptr %i.ch, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 4, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !191

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1060 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1065, %vec.epilog.vector.body ] ; 3 uses
  %i.cj = shl i64 %index1060, 1
  %next.gep1061 = getelementptr i8, ptr %4, i64 %i.cj
  %i.ck = shl i64 %index1060, 4
  %next.gep1062 = getelementptr i8, ptr %i.al, i64 %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep1062, i64 8
  %wide.vec1063 = load <32 x i16>, ptr %i.cl, align 8, !tbaa !148
  %strided.vec1064 = shufflevector <32 x i16> %wide.vec1063, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1064, ptr %next.gep1061, align 2, !tbaa !149
  %index.next1065 = add nuw i64 %index1060, 4     ; 2 uses
  %i.cm = icmp eq i64 %index.next1065, %n.vec1059
  br i1 %i.cm, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !192

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !148
  store i16 %i.co, ptr %.07.i.i, align 2, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cr = icmp eq ptr %i.cp, %i.ax
  br i1 %i.cr, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !193

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %4, align 4
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cs = phi i32 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %i.cs, ptr %5, align 4
  %.not34 = icmp eq i64 %indvars.iv967, 0
  br i1 %.not34, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10429.0917, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.ct = add nuw nsw i32 %.sroa.10429.0917, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.ct, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cu = zext nneg i32 %.sroa.10429.0917 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.cu
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.cv, align 1
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.cw
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.cx, align 1 ; 3 uses
  %i.cy = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.cz = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.da = icmp ult i8 %i.cz, 2
  %or.cond5.i.not = or i1 %i.cy, %i.da
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.db = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.db, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dc = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dd = add nsw i32 %i.dc, -208
  %i.de = trunc i64 %indvars.iv967 to i32
  %i.df = add i32 %i.de, -1
  %i.dg = srem i32 %i.df, 8
  %.not35 = icmp eq i32 %i.dd, %i.dg
  br i1 %.not35, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dh = add nuw nsw i32 %.sroa.10429.0917, 2    ; 2 uses
  %i.di = icmp samesign ule i32 %i.dh, %.sroa.223.0.copyload
  tail call void @llvm.assume(i1 %i.di)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.sroa.10429.1 = phi i32 [ %.sroa.10429.0917, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit ], [ %i.dh, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dj = zext i32 %.sroa.10429.1 to i64          ; 2 uses
  %i.dk = sub nuw i32 %.sroa.223.0.copyload, %.sroa.10429.1 ; 14 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.dj ; 6 uses
  %i.dm = icmp samesign ult i32 %i.dk, 8
  br i1 %i.dm, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not36905, label %.loopexit756.thread, label %.lr.ph912

.lr.ph912:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dn = mul nsw i64 %indvars.iv967, %i.aq
  %i.do = add nuw nsw i32 %i.dk, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph912, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv964 = phi i64 [ 0, %.lr.ph912 ], [ %indvars.iv.next965, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0289.0910 = phi i64 [ 0, %.lr.ph912 ], [ %.sroa.0289.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0909 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137365.0908 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.137365.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169393.0907 = phi i32 [ -1, %.lr.ph912 ], [ %.sroa.169393.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0404.0906 = phi ptr [ %5, %.lr.ph912 ], [ %i.dw, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dp = add nsw i64 %indvars.iv964, %i.dn       ; 5 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp sle i64 %i.dp, %6
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = trunc nuw nsw i64 %i.dp to i32
  %.not37 = icmp eq i32 %i.z, %i.ds
  br i1 %.not37, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dt = icmp eq i64 %indvars.iv967, %i.bm
  tail call void @llvm.assume(i1 %i.dt)
  br label %.loopexit756

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.ba)
  tail call void @llvm.assume(i1 %i.bb)
  %i.du = icmp samesign ult i64 %i.dp, %6
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = mul nuw nsw i64 %i.dp, %i.bk
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dv ; 3 uses
  tail call void @llvm.assume(i1 %i.bc)
  %i.dx = load i32, ptr %i.bd, align 4, !tbaa !37 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.be)
  %wide.trip.count = zext nneg i32 %i.dx to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv954 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next955, %.loopexit ] ; 2 uses
  %.sroa.0508.0870 = phi ptr [ %.sroa.0404.0906, %.lr.ph ], [ %i.eb, %.loopexit ]
  %.sroa.0289.2869 = phi i64 [ %.sroa.0289.0910, %.lr.ph ], [ %.sroa.0289.14, %.loopexit ]
  %.sroa.48.3868 = phi i32 [ %.sroa.48.0909, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.137365.3867 = phi i32 [ %.sroa.137365.0908, %.lr.ph ], [ %.sroa.137365.11, %.loopexit ]
  %.sroa.169393.3866 = phi i32 [ %.sroa.169393.0907, %.lr.ph ], [ %.sroa.169393.11, %.loopexit ]
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.uz = sub nuw nsw i32 %.sroa.48.25, %i.ux     ; 3 uses
  %i.va = zext nneg i32 %i.ux to i64
  %i.vb = shl i64 %.sroa.0289.24, %i.va           ; 3 uses
  %i.vc = and i32 %i.uv, 256
  %.not.i71.i = icmp eq i32 %i.vc, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128
  %.not17.i73.i = icmp eq i32 %i.uv, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vd = trunc i32 %i.uw to i8                   ; 2 uses
  %i.ve = icmp ne i8 %i.vd, 0
  tail call void @llvm.assume(i1 %i.ve)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vf = icmp eq i32 %i.ux, 0
  tail call void @llvm.assume(i1 %i.vf)
  %i.vg = add nsw i32 %i.uz, -11                  ; 2 uses
  %i.vh = shl i64 %i.vb, 11                       ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 40
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !156
  %i.vl = load ptr, ptr %i.vi, align 8, !tbaa !157
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = ashr exact i64 %i.vo, 2
  %i.vq = add nsw i64 %i.vp, -1                   ; 3 uses
  %.sroa.0.018.i131 = trunc nuw nsw i64 %i.uq to i16 ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 11
  br i1 %i.vr, label %.lr.ph.i150, label %.critedge.i133

.lr.ph.i150:                                      ; preds = %bb.ck
  %i.vs = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 80
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !160
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge2.i157, %.lr.ph.i150
  %.sroa.48.27 = phi i32 [ %i.vg, %.lr.ph.i150 ], [ %i.wd, %.critedge2.i157 ] ; 4 uses
  %.sroa.0289.26 = phi i64 [ %i.vh, %.lr.ph.i150 ], [ %i.we, %.critedge2.i157 ] ; 3 uses
  %i.vu = phi i64 [ 11, %.lr.ph.i150 ], [ %i.wj, %.critedge2.i157 ] ; 2 uses
  %.sroa.0.021.i153 = phi i16 [ %.sroa.0.018.i131, %.lr.ph.i150 ], [ %.sroa.0.0.i158, %.critedge2.i157 ] ; 2 uses
  %.sroa.8.020.i154 = phi i8 [ 11, %.lr.ph.i150 ], [ %i.wi, %.critedge2.i157 ] ; 2 uses
  %.sroa.0.0.in19.i155 = phi i32 [ %i.ur, %.lr.ph.i150 ], [ %i.wh, %.critedge2.i157 ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.vt, i64 %i.vu
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !149 ; 2 uses
  %i.vx = icmp eq i16 %i.vw, -1
  %i.vy = icmp ult i16 %i.vw, %.sroa.0.021.i153
  %or.cond.i156 = select i1 %i.vx, i1 true, i1 %i.vy
  br i1 %or.cond.i156, label %.critedge2.i157, label %.critedge.i133.loopexit

.critedge2.i157:                                  ; preds = %bb.cl
  %i.vz = icmp samesign ult i32 %.sroa.48.27, 65
  tail call void @llvm.assume(i1 %i.vz)
  %i.wa = icmp ne i32 %.sroa.48.27, 0
  tail call void @llvm.assume(i1 %i.wa)
  %i.wb = lshr i64 %.sroa.0289.26, 63
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = add nsw i32 %.sroa.48.27, -1            ; 2 uses
  %i.we = shl i64 %.sroa.0289.26, 1               ; 2 uses
  %i.wf = shl nsw i32 %.sroa.0.0.in19.i155, 1
  %i.wg = and i32 %i.wf, 131070
  %i.wh = or disjoint i32 %i.wg, %i.wc            ; 3 uses
  %i.wi = add i8 %.sroa.8.020.i154, 1             ; 3 uses
  %.sroa.0.0.i158 = trunc i32 %i.wh to i16        ; 2 uses
  %i.wj = zext i8 %i.wi to i64                    ; 3 uses
  %i.wk = icmp ugt i64 %i.vq, %i.wj
  br i1 %i.wk, label %bb.cl, label %.critedge.i133.loopexit, !llvm.loop !1

.critedge.i133.loopexit:                          ; preds = %bb.cl, %.critedge2.i157
  %.sroa.48.26.ph = phi i32 [ %i.wd, %.critedge2.i157 ], [ %.sroa.48.27, %bb.cl ]
  %.sroa.0289.25.ph = phi i64 [ %i.we, %.critedge2.i157 ], [ %.sroa.0289.26, %bb.cl ]
  %.sroa.0.0.in.lcssa.i134.ph = phi i32 [ %i.wh, %.critedge2.i157 ], [ %.sroa.0.0.in19.i155, %bb.cl ]
  %.sroa.8.0.lcssa.i135.ph = phi i8 [ %i.wi, %.critedge2.i157 ], [ %.sroa.8.020.i154, %bb.cl ]
  %.sroa.0.0.lcssa.i136.ph = phi i16 [ %.sroa.0.0.i158, %.critedge2.i157 ], [ %.sroa.0.021.i153, %bb.cl ]
  %.lcssa17.i137.ph = phi i64 [ %i.wj, %.critedge2.i157 ], [ %i.vu, %bb.cl ]
  %i.wl = zext i8 %.sroa.8.0.lcssa.i135.ph to i32
  br label %.critedge.i133

.critedge.i133:                                   ; preds = %.critedge.i133.loopexit, %bb.ck
  %.sroa.48.26 = phi i32 [ %i.vg, %bb.ck ], [ %.sroa.48.26.ph, %.critedge.i133.loopexit ]
  %.sroa.0289.25 = phi i64 [ %i.vh, %bb.ck ], [ %.sroa.0289.25.ph, %.critedge.i133.loopexit ]
  %.sroa.0.0.in.lcssa.i134 = phi i32 [ %i.ur, %bb.ck ], [ %.sroa.0.0.in.lcssa.i134.ph, %.critedge.i133.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i135 = phi i32 [ 11, %bb.ck ], [ %i.wl, %.critedge.i133.loopexit ]
  %.sroa.0.0.lcssa.i136 = phi i16 [ %.sroa.0.018.i131, %bb.ck ], [ %.sroa.0.0.lcssa.i136.ph, %.critedge.i133.loopexit ]
  %.lcssa17.i137 = phi i64 [ 11, %bb.ck ], [ %.lcssa17.i137.ph, %.critedge.i133.loopexit ] ; 3 uses
  %i.wm = icmp ult i64 %i.vq, %.lcssa17.i137
  br i1 %i.wm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.critedge.i133
  %i.wn = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 80
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !160
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.wo, i64 %.lcssa17.i137
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !149
  %i.wr = icmp ult i16 %i.wq, %.sroa.0.0.lcssa.i136
  br i1 %i.wr, label %bb.cn, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159

bb.cn:                                            ; preds = %bb.cm, %.critedge.i133
  %i.ws = and i32 %.sroa.0.0.in.lcssa.i134, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.ws, i32 noundef %.sroa.8.0.lcssa.i135) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159: ; preds = %bb.cm
  %.sroa.0.0.mask.i139 = and i32 %.sroa.0.0.in.lcssa.i134, 65535
  %i.wt = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 104
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !160
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.wu, i64 %.lcssa17.i137
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !149
  %i.wx = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 8
  %.tr.i140 = zext i16 %i.ww to i32
  %.narrow.i141 = sub nsw i32 %.sroa.0.0.mask.i139, %.tr.i140
  %i.wy = zext i32 %.narrow.i141 to i64
  %i.wz = load ptr, ptr %i.wx, align 8, !tbaa !161
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.wy
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !140
  br label %bb.co

bb.co:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159, %bb.cj
  %.0735 = phi i8 [ %i.xb, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159 ], [ %i.vd, %bb.cj ] ; 5 uses
  %.sroa.48.12 = phi i32 [ %.sroa.48.26, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159 ], [ %i.uz, %bb.cj ] ; 8 uses
  %.sroa.0289.11 = phi i64 [ %.sroa.0289.25, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit159 ], [ %i.vb, %bb.cj ] ; 4 uses
  %i.xc = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.xc)
  switch i8 %.0735, label %bb.cr [
    i8 16, label %bb.cp
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  ]

bb.cp:                                            ; preds = %bb.co
  %i.xd = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !162, !range !130, !noundef !116
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.cq, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cq:                                            ; preds = %bb.cp
  %i.xg = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xg)
  %i.xh = icmp samesign ugt i32 %.sroa.48.12, 15
  tail call void @llvm.assume(i1 %i.xh)
  %i.xi = add nsw i32 %.sroa.48.12, -16
  %i.xj = shl i64 %.sroa.0289.11, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cr:                                            ; preds = %bb.co
  %i.xk = zext nneg i8 %.0735 to i32              ; 2 uses
  %i.xl = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xl)
  %i.xm = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.xm)
  %i.xn = icmp samesign uge i32 %.sroa.48.12, %i.xk
  tail call void @llvm.assume(i1 %i.xn)
  %i.xo = sub nuw nsw i32 %.sroa.48.12, %i.xk
  %i.xp = zext nneg i8 %.0735 to i64
  %i.xq = shl i64 %.sroa.0289.11, %i.xp
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128
  %.sroa.48.11 = phi i32 [ %i.uz, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128 ], [ %i.xo, %bb.cr ], [ %i.xi, %bb.cq ], [ %.sroa.48.12, %bb.cp ], [ %.sroa.48.12, %bb.co ] ; 3 uses
  %.sroa.0289.10 = phi i64 [ %i.vb, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128 ], [ %i.xq, %bb.cr ], [ %i.xj, %bb.cq ], [ %.sroa.0289.11, %bb.cp ], [ %.sroa.0289.11, %bb.co ] ; 3 uses
  br i1 %.not52.i, label %bb.br, label %bb.bs, !llvm.loop !198

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.br, %bb.bq
  %.sroa.169393.7.lcssa = phi i32 [ %.sroa.169393.6, %bb.bq ], [ %.sroa.169393.13, %bb.br ] ; 2 uses
  %.sroa.137365.7.lcssa = phi i32 [ %.sroa.137365.6, %bb.bq ], [ %.sroa.137365.13, %bb.br ] ; 2 uses
  %.sroa.48.9.lcssa = phi i32 [ %.sroa.48.8, %bb.bq ], [ %.sroa.48.11, %bb.br ]
  %.sroa.0289.8.lcssa = phi i64 [ %.sroa.0289.7, %bb.bq ], [ %.sroa.0289.10, %bb.br ]
  tail call void @llvm.assume(i1 %i.be)
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 2 uses
  %.not36 = icmp eq i64 %indvars.iv.next965, %i.bl
  br i1 %.not36, label %.loopexit756, label %bb.m, !llvm.loop !199

.loopexit756:                                     ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.thread
  %.sroa.169393.0840 = phi i32 [ %.sroa.169393.0907, %.thread ], [ %.sroa.169393.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.137365.0832 = phi i32 [ %.sroa.137365.0908, %.thread ], [ %.sroa.137365.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.169393.0840.fr = freeze i32 %.sroa.169393.0840 ; 2 uses
  %i.xr = icmp slt i32 %.sroa.169393.0840.fr, 0
  %spec.select = select i1 %i.xr, i32 %.sroa.137365.0832, i32 %.sroa.169393.0840.fr
  br label %.loopexit756.thread

.loopexit756.thread:                              ; preds = %.loopexit756, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.xs = phi i32 [ %spec.select, %.loopexit756 ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader ] ; 3 uses
  %i.xt = zext i32 %i.xs to i64
  %i.xu = add nuw nsw i64 %i.xt, %i.dj
  %.not.i.i167 = icmp samesign ugt i64 %i.xu, %i.bh
  br i1 %.not.i.i167, label %bb.cs, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit168

bb.cs:                                            ; preds = %.loopexit756.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit168:     ; preds = %.loopexit756.thread
  %i.xv = add nuw nsw i32 %i.xs, %.sroa.10429.1   ; 3 uses
  %i.xw = icmp samesign ule i32 %i.xv, %.sroa.223.0.copyload
  tail call void @llvm.assume(i1 %i.xw)
  %i.xx = icmp sgt i32 %i.xs, -1
  tail call void @llvm.assume(i1 %i.xx)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next968, %9
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !200
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed19roundUpDivisionSafeEmm.exit:
  %1 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %.sroa.0.i.i113 = alloca i64, align 8           ; 5 uses
  %.sroa.0.i.i63 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %4 = alloca %"struct.std::array.116", align 8   ; 8 uses
  %5 = alloca %"struct.std::array.115", align 16  ; 7 uses
  %6 = alloca %"struct.std::array.116", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !218
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143, !noalias !218
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !144, !noalias !218
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !145, !noalias !218
  %i.n = ashr i32 %i.m, 1                         ; 6 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109
  %i.s = mul i32 %i.r, %i.c                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = mul i32 %i.w, %i.c                       ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147  ; 4 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ne i32 %i.x, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.u, %i.k
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.u, %i.n
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp sge i32 %i.n, %i.x
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111, !noalias !219 ; 9 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr align 8 %i.al, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115, !noalias !219
  %i.ao = shufflevector <3 x ptr> %i.an, <3 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !115, !noalias !219, !nonnull !116, !align !117
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !36 ; 3 uses
  %7 = sext i32 %i.z to i64                       ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = add nsw i64 %7, -1
  %i.av = udiv i64 %i.au, %i.at                   ; 2 uses
  %8 = trunc i64 %i.av to i32
  %9 = add nsw i32 %8, 1                          ; 2 uses
  %i.aw = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.ay = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = icmp eq ptr %i.al, %i.ba
  %.not33904 = icmp eq i32 %i.as, 0
  %i.bd = icmp sgt i32 %i.x, -1
  %i.be = icmp sgt i32 %i.z, -1
  %.sroa.0226.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = icmp samesign ugt i32 %i.x, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -3
  %i.bh = icmp sgt i32 %i.n, 2                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bl = zext i32 %invariant.op to i64
  %i.bm = zext i32 %i.x to i64
  %i.bn = zext nneg i32 %i.n to i64
  %i.bo = zext i32 %i.as to i64
  %i.bp = and i64 %i.av, 4294967295
  %10 = zext nneg i32 %9 to i64
  %i.bq = add i64 %i.bb, -16
  %i.br = sub i64 %i.bq, %i.am                    ; 3 uses
  %i.bs = lshr i64 %i.br, 4
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.br, 64
  %min.iters.check1055 = icmp ult i64 %i.br, 256
  %i.bu = and i64 %i.bt, 15                       ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 16, i64 %i.bu      ; 2 uses
  %n.vec = sub nsw i64 %i.bt, %i.bw               ; 4 uses
  %i.bx = shl nsw i64 %n.vec, 1
  %i.by = getelementptr i8, ptr %4, i64 %i.bx
  %i.bz = shl i64 %n.vec, 4
  %i.ca = getelementptr i8, ptr %i.al, i64 %i.bz
  %min.epilog.iters.check = icmp samesign ult i64 %i.bw, 5
  %i.cb = and i64 %i.bt, 3                        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 4, i64 %i.cb
  %n.vec1058 = sub nsw i64 %i.bt, %i.cd           ; 3 uses
  %i.ce = shl nsw i64 %n.vec1058, 1
  %i.cf = getelementptr i8, ptr %4, i64 %i.ce
  %i.cg = shl i64 %n.vec1058, 4
  %i.ch = getelementptr i8, ptr %i.al, i64 %i.cg
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.yd

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv966 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next967, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0916 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yd, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bc, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1055, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ci = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ci
  %i.cj = shl i64 %index, 4
  %next.gep1056 = getelementptr i8, ptr %i.al, i64 %i.cj
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep1056, i64 8
  %wide.vec = load <128 x i16>, ptr %i.ck, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !208

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1059 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1064, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = shl i64 %index1059, 1
  %next.gep1060 = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = shl i64 %index1059, 4
  %next.gep1061 = getelementptr i8, ptr %i.al, i64 %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep1061, i64 8
  %wide.vec1062 = load <32 x i16>, ptr %i.co, align 8, !tbaa !148
  %strided.vec1063 = shufflevector <32 x i16> %wide.vec1062, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1063, ptr %next.gep1060, align 2, !tbaa !149
  %index.next1064 = add nuw i64 %index1059, 4     ; 2 uses
  %i.cp = icmp eq i64 %index.next1064, %n.vec1058
  br i1 %i.cp, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !209

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !148
  store i16 %i.cr, ptr %.07.i.i, align 2, !tbaa !149
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cu = icmp eq ptr %i.cs, %i.ba
  br i1 %i.cu, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !210

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.0.copyload.pre.i = load i48, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %.0.copyload.i = phi i48 [ %.0.copyload.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i48 %.0.copyload.i, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv966, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0916, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cv = add nuw nsw i32 %.sroa.10425.0916, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cv, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cw = zext nneg i32 %.sroa.10425.0916 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.cw
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.cx, align 1
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.cy
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.cz, align 1 ; 3 uses
  %i.da = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.db = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dc = icmp ult i8 %i.db, 2
  %or.cond5.i.not = or i1 %i.da, %i.dc
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.dd = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.dd, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.de = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.df = add nsw i32 %i.de, -208
  %i.dg = trunc i64 %indvars.iv966 to i32
  %i.dh = add i32 %i.dg, -1
  %i.di = srem i32 %i.dh, 8
  %.not32 = icmp eq i32 %i.df, %i.di
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dj = add nuw nsw i32 %.sroa.10425.0916, 2    ; 2 uses
  %i.dk = icmp samesign ule i32 %i.dj, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dk)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0916, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit ], [ %i.dj, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dl = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dm = sub nuw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dl ; 6 uses
  %i.do = icmp samesign ult i32 %i.dm, 8
  br i1 %i.do, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33904, label %.loopexit755.thread, label %.lr.ph911

.lr.ph911:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dp = mul nsw i64 %indvars.iv966, %i.at
  %i.dq = add nuw nsw i32 %i.dm, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph911, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv963 = phi i64 [ 0, %.lr.ph911 ], [ %indvars.iv.next964, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0909 = phi i64 [ 0, %.lr.ph911 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0908 = phi i32 [ 0, %.lr.ph911 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0907 = phi i32 [ 0, %.lr.ph911 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0906 = phi i32 [ -1, %.lr.ph911 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0905 = phi ptr [ %6, %.lr.ph911 ], [ %i.dy, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dr = add nsw i64 %indvars.iv963, %i.dp       ; 5 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp sle i64 %i.dr, %7
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc nuw nsw i64 %i.dr to i32
  %.not34 = icmp eq i32 %i.z, %i.du
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dv = icmp eq i64 %indvars.iv966, %i.bp
  tail call void @llvm.assume(i1 %i.dv)
  br label %.loopexit755

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.assume(i1 %i.be)
  %i.dw = icmp samesign ult i64 %i.dr, %7
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = mul nuw nsw i64 %i.dr, %i.bn
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.ao, ptr %5, align 16
  store ptr %i.aq, ptr %.sroa.0226.sroa.3.0..sroa_idx, align 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.dz = load i32, ptr %i.bg, align 4, !tbaa !37 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bh)
  %wide.trip.count = zext nneg i32 %i.dz to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv953 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next954, %.loopexit ] ; 2 uses
  %.sroa.0507.0869 = phi ptr [ %.sroa.0400.0905, %.lr.ph ], [ %i.ed, %.loopexit ]
  %.sroa.0285.2868 = phi i64 [ %.sroa.0285.0909, %.lr.ph ], [ %.sroa.0285.14, %.loopexit ]
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.vk = and i32 %i.vd, 256
  %.not.i71.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vd, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vl = trunc i32 %i.ve to i8                   ; 2 uses
  %i.vm = icmp ne i8 %i.vl, 0
  tail call void @llvm.assume(i1 %i.vm)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vn = icmp eq i32 %i.vf, 0
  tail call void @llvm.assume(i1 %i.vn)
  %i.vo = add nsw i32 %i.vh, -11                  ; 2 uses
  %i.vp = shl i64 %i.vj, 11                       ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.vr = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !156
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !157
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = ashr exact i64 %i.vw, 2
  %i.vy = add nsw i64 %i.vx, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.uy to i16 ; 2 uses
  %i.vz = icmp ugt i64 %i.vy, 11
  br i1 %i.vz, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.ck
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rv, i64 80
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !160
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge2.i152, %.lr.ph.i145
  %.sroa.48.27 = phi i32 [ %i.vo, %.lr.ph.i145 ], [ %i.wl, %.critedge2.i152 ] ; 4 uses
  %.sroa.0285.26 = phi i64 [ %i.vp, %.lr.ph.i145 ], [ %i.wm, %.critedge2.i152 ] ; 3 uses
  %i.wc = phi i64 [ 11, %.lr.ph.i145 ], [ %i.wr, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.021.i148 = phi i16 [ %.sroa.0.018.i126, %.lr.ph.i145 ], [ %.sroa.0.0.i153, %.critedge2.i152 ] ; 2 uses
  %.sroa.8.020.i149 = phi i8 [ 11, %.lr.ph.i145 ], [ %i.wq, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.0.in19.i150 = phi i32 [ %i.uz, %.lr.ph.i145 ], [ %i.wp, %.critedge2.i152 ] ; 2 uses
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.wb, i64 %i.wc
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !149 ; 2 uses
  %i.wf = icmp eq i16 %i.we, -1
  %i.wg = icmp ult i16 %i.we, %.sroa.0.021.i148
  %or.cond.i151 = select i1 %i.wf, i1 true, i1 %i.wg
  br i1 %or.cond.i151, label %.critedge2.i152, label %.critedge.i128.loopexit

.critedge2.i152:                                  ; preds = %bb.cl
  %i.wh = icmp samesign ult i32 %.sroa.48.27, 65
  tail call void @llvm.assume(i1 %i.wh)
  %i.wi = icmp ne i32 %.sroa.48.27, 0
  tail call void @llvm.assume(i1 %i.wi)
  %i.wj = lshr i64 %.sroa.0285.26, 63
  %i.wk = trunc nuw nsw i64 %i.wj to i32
  %i.wl = add nsw i32 %.sroa.48.27, -1            ; 2 uses
  %i.wm = shl i64 %.sroa.0285.26, 1               ; 2 uses
  %i.wn = shl nsw i32 %.sroa.0.0.in19.i150, 1
  %i.wo = and i32 %i.wn, 131070
  %i.wp = or disjoint i32 %i.wo, %i.wk            ; 3 uses
  %i.wq = add i8 %.sroa.8.020.i149, 1             ; 3 uses
  %.sroa.0.0.i153 = trunc i32 %i.wp to i16        ; 2 uses
  %i.wr = zext i8 %i.wq to i64                    ; 3 uses
  %i.ws = icmp ugt i64 %i.vy, %i.wr
  br i1 %i.ws, label %bb.cl, label %.critedge.i128.loopexit, !llvm.loop !1

.critedge.i128.loopexit:                          ; preds = %bb.cl, %.critedge2.i152
  %.sroa.48.26.ph = phi i32 [ %i.wl, %.critedge2.i152 ], [ %.sroa.48.27, %bb.cl ]
  %.sroa.0285.25.ph = phi i64 [ %i.wm, %.critedge2.i152 ], [ %.sroa.0285.26, %bb.cl ]
  %.sroa.0.0.in.lcssa.i129.ph = phi i32 [ %i.wp, %.critedge2.i152 ], [ %.sroa.0.0.in19.i150, %bb.cl ]
  %.sroa.8.0.lcssa.i130.ph = phi i8 [ %i.wq, %.critedge2.i152 ], [ %.sroa.8.020.i149, %bb.cl ]
  %.sroa.0.0.lcssa.i131.ph = phi i16 [ %.sroa.0.0.i153, %.critedge2.i152 ], [ %.sroa.0.021.i148, %bb.cl ]
  %.lcssa17.i132.ph = phi i64 [ %i.wr, %.critedge2.i152 ], [ %i.wc, %bb.cl ]
  %i.wt = zext i8 %.sroa.8.0.lcssa.i130.ph to i32
  br label %.critedge.i128

.critedge.i128:                                   ; preds = %.critedge.i128.loopexit, %bb.ck
  %.sroa.48.26 = phi i32 [ %i.vo, %bb.ck ], [ %.sroa.48.26.ph, %.critedge.i128.loopexit ]
  %.sroa.0285.25 = phi i64 [ %i.vp, %bb.ck ], [ %.sroa.0285.25.ph, %.critedge.i128.loopexit ]
  %.sroa.0.0.in.lcssa.i129 = phi i32 [ %i.uz, %bb.ck ], [ %.sroa.0.0.in.lcssa.i129.ph, %.critedge.i128.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i130 = phi i32 [ 11, %bb.ck ], [ %i.wt, %.critedge.i128.loopexit ]
  %.sroa.0.0.lcssa.i131 = phi i16 [ %.sroa.0.018.i126, %bb.ck ], [ %.sroa.0.0.lcssa.i131.ph, %.critedge.i128.loopexit ]
  %.lcssa17.i132 = phi i64 [ 11, %bb.ck ], [ %.lcssa17.i132.ph, %.critedge.i128.loopexit ] ; 3 uses
  %i.wu = icmp ult i64 %i.vy, %.lcssa17.i132
  br i1 %i.wu, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.critedge.i128
  %i.wv = getelementptr inbounds nuw i8, ptr %i.rv, i64 80
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !160
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.ww, i64 %.lcssa17.i132
  %i.wy = load i16, ptr %i.wx, align 2, !tbaa !149
  %i.wz = icmp ult i16 %i.wy, %.sroa.0.0.lcssa.i131
  br i1 %i.wz, label %bb.cn, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154

bb.cn:                                            ; preds = %bb.cm, %.critedge.i128
  %i.xa = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.xa, i32 noundef %.sroa.8.0.lcssa.i130) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154: ; preds = %bb.cm
  %.sroa.0.0.mask.i134 = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  %i.xb = getelementptr inbounds nuw i8, ptr %i.rv, i64 104
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !160
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.xc, i64 %.lcssa17.i132
  %i.xe = load i16, ptr %i.xd, align 2, !tbaa !149
  %i.xf = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %.tr.i135 = zext i16 %i.xe to i32
  %.narrow.i136 = sub nsw i32 %.sroa.0.0.mask.i134, %.tr.i135
  %i.xg = zext i32 %.narrow.i136 to i64
  %i.xh = load ptr, ptr %i.xf, align 8, !tbaa !161
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xg
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !140
  br label %bb.co

bb.co:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154, %bb.cj
  %.0734 = phi i8 [ %i.xj, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vl, %bb.cj ] ; 5 uses
  %.sroa.48.12 = phi i32 [ %.sroa.48.26, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vh, %bb.cj ] ; 8 uses
  %.sroa.0285.11 = phi i64 [ %.sroa.0285.25, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vj, %bb.cj ] ; 4 uses
  %i.xk = icmp ult i8 %.0734, 17
  tail call void @llvm.assume(i1 %i.xk)
  switch i8 %.0734, label %bb.cr [
    i8 16, label %bb.cp
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  ]

bb.cp:                                            ; preds = %bb.co
  %i.xl = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !162, !range !130, !noundef !116
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.cq, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cq:                                            ; preds = %bb.cp
  %i.xo = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xo)
  %i.xp = icmp samesign ugt i32 %.sroa.48.12, 15
  tail call void @llvm.assume(i1 %i.xp)
  %i.xq = add nsw i32 %.sroa.48.12, -16
  %i.xr = shl i64 %.sroa.0285.11, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cr:                                            ; preds = %bb.co
  %i.xs = zext nneg i8 %.0734 to i32              ; 2 uses
  %i.xt = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xt)
  %i.xu = icmp ne i8 %.0734, 0
  tail call void @llvm.assume(i1 %i.xu)
  %i.xv = icmp samesign uge i32 %.sroa.48.12, %i.xs
  tail call void @llvm.assume(i1 %i.xv)
  %i.xw = sub nuw nsw i32 %.sroa.48.12, %i.xs
  %i.xx = zext nneg i8 %.0734 to i64
  %i.xy = shl i64 %.sroa.0285.11, %i.xx
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.sroa.48.11 = phi i32 [ %i.vh, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.xw, %bb.cr ], [ %i.xq, %bb.cq ], [ %.sroa.48.12, %bb.cp ], [ %.sroa.48.12, %bb.co ] ; 3 uses
  %.sroa.0285.10 = phi i64 [ %i.vj, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.xy, %bb.cr ], [ %i.xr, %bb.cq ], [ %.sroa.0285.11, %bb.cp ], [ %.sroa.0285.11, %bb.co ] ; 3 uses
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 2 uses
  %.not52.i = icmp eq i64 %indvars.iv.next960, 3
  br i1 %.not52.i, label %bb.br, label %bb.bs, !llvm.loop !215

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.br, %bb.bq
  %.sroa.169389.7.lcssa = phi i32 [ %.sroa.169389.6, %bb.bq ], [ %.sroa.169389.13, %bb.br ] ; 2 uses
  %.sroa.137361.7.lcssa = phi i32 [ %.sroa.137361.6, %bb.bq ], [ %.sroa.137361.13, %bb.br ] ; 2 uses
  %.sroa.48.9.lcssa = phi i32 [ %.sroa.48.8, %bb.bq ], [ %.sroa.48.11, %bb.br ]
  %.sroa.0285.8.lcssa = phi i64 [ %.sroa.0285.7, %bb.bq ], [ %.sroa.0285.10, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @llvm.assume(i1 %i.bh)
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %.not33 = icmp eq i64 %indvars.iv.next964, %i.bo
  br i1 %.not33, label %.loopexit755, label %bb.m, !llvm.loop !216

.loopexit755:                                     ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.thread
  %.sroa.169389.0839 = phi i32 [ %.sroa.169389.0906, %.thread ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.137361.0831 = phi i32 [ %.sroa.137361.0907, %.thread ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.169389.0839.fr = freeze i32 %.sroa.169389.0839 ; 2 uses
  %i.xz = icmp slt i32 %.sroa.169389.0839.fr, 0
  %spec.select = select i1 %i.xz, i32 %.sroa.137361.0831, i32 %.sroa.169389.0839.fr
  br label %.loopexit755.thread

.loopexit755.thread:                              ; preds = %.loopexit755, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.ya = phi i32 [ %spec.select, %.loopexit755 ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader ] ; 3 uses
  %i.yb = zext i32 %i.ya to i64
  %i.yc = add nuw nsw i64 %i.yb, %i.dl
  %.not.i.i162 = icmp samesign ugt i64 %i.yc, %i.bk
  br i1 %.not.i.i162, label %bb.cs, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit163

bb.cs:                                            ; preds = %.loopexit755.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit163:     ; preds = %.loopexit755.thread
  %i.yd = add nuw nsw i32 %i.ya, %.sroa.10425.1   ; 3 uses
  %i.ye = icmp samesign ule i32 %i.yd, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.ye)
  %i.yf = icmp sgt i32 %i.ya, -1
  tail call void @llvm.assume(i1 %i.yf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next967 = add nuw nsw i64 %indvars.iv966, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next967, %10
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !217
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed19roundUpDivisionSafeEmm.exit:
  %1 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %.sroa.0.i.i113 = alloca i64, align 8           ; 5 uses
  %.sroa.0.i.i63 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %4 = alloca %"struct.std::array.121", align 8   ; 8 uses
  %5 = alloca %"struct.std::array.120", align 8   ; 6 uses
  %6 = alloca %"struct.std::array.121", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !236
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143, !noalias !236
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !144, !noalias !236
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !145, !noalias !236
  %i.n = ashr i32 %i.m, 1                         ; 6 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109
  %i.s = mul i32 %i.r, %i.c                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = mul i32 %i.w, %i.c                       ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147  ; 4 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ne i32 %i.x, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.u, %i.k
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.u, %i.n
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp sge i32 %i.n, %i.x
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111, !noalias !237 ; 9 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr align 8 %i.al, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115, !noalias !237
  %i.ap = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.an, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115, !noalias !237
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36 ; 3 uses
  %7 = sext i32 %i.z to i64                       ; 3 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add nsw i64 %7, -1
  %i.au = udiv i64 %i.at, %i.as                   ; 2 uses
  %8 = trunc i64 %i.au to i32
  %9 = add nsw i32 %8, 1                          ; 2 uses
  %i.av = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.ax = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 3 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = icmp eq ptr %i.al, %i.az
  %.not33905 = icmp eq i32 %i.ar, 0
  %i.bc = icmp sgt i32 %i.x, -1
  %i.bd = icmp sgt i32 %i.z, -1
  %i.be = icmp samesign ugt i32 %i.x, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -4
  %i.bg = icmp sgt i32 %i.n, 3                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bk = zext i32 %invariant.op to i64
  %i.bl = zext i32 %i.x to i64
  %i.bm = zext nneg i32 %i.n to i64
  %i.bn = zext i32 %i.ar to i64
  %i.bo = and i64 %i.au, 4294967295
  %10 = zext nneg i32 %9 to i64
  %i.bp = add i64 %i.ba, -16
  %i.bq = sub i64 %i.bp, %i.am                    ; 3 uses
  %i.br = lshr i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bq, 64
  %min.iters.check1056 = icmp ult i64 %i.bq, 256
  %i.bt = and i64 %i.bs, 15                       ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 16, i64 %i.bt      ; 2 uses
  %n.vec = sub nsw i64 %i.bs, %i.bv               ; 4 uses
  %i.bw = shl nsw i64 %n.vec, 1
  %i.bx = getelementptr i8, ptr %4, i64 %i.bw
  %i.by = shl i64 %n.vec, 4
  %i.bz = getelementptr i8, ptr %i.al, i64 %i.by
  %min.epilog.iters.check = icmp samesign ult i64 %i.bv, 5
  %i.ca = and i64 %i.bs, 3                        ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.ca
  %n.vec1059 = sub nsw i64 %i.bs, %i.cc           ; 3 uses
  %i.cd = shl nsw i64 %n.vec1059, 1
  %i.ce = getelementptr i8, ptr %4, i64 %i.cd
  %i.cf = shl i64 %n.vec1059, 4
  %i.cg = getelementptr i8, ptr %i.al, i64 %i.cf
  %i.ch = shufflevector <3 x ptr> %i.ao, <3 x ptr> %i.ap, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.ye

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv967 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.ye, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bb, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1056, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ci = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ci
  %i.cj = shl i64 %index, 4
  %next.gep1057 = getelementptr i8, ptr %i.al, i64 %i.cj
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep1057, i64 8
  %wide.vec = load <128 x i16>, ptr %i.ck, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !226

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1060 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1065, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = shl i64 %index1060, 1
  %next.gep1061 = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = shl i64 %index1060, 4
  %next.gep1062 = getelementptr i8, ptr %i.al, i64 %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep1062, i64 8
  %wide.vec1063 = load <32 x i16>, ptr %i.co, align 8, !tbaa !148
  %strided.vec1064 = shufflevector <32 x i16> %wide.vec1063, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1064, ptr %next.gep1061, align 2, !tbaa !149
  %index.next1065 = add nuw i64 %index1060, 4     ; 2 uses
  %i.cp = icmp eq i64 %index.next1065, %n.vec1059
  br i1 %i.cp, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !227

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !148
  store i16 %i.cr, ptr %.07.i.i, align 2, !tbaa !149
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cu = icmp eq ptr %i.cs, %i.az
  br i1 %i.cu, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !228

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cv = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.cv, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv967, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0917, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cw = add nuw nsw i32 %.sroa.10425.0917, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cw, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cx = zext nneg i32 %.sroa.10425.0917 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.cx
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.cy, align 1
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.cz
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.da, align 1 ; 3 uses
  %i.db = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.dc = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dd = icmp ult i8 %i.dc, 2
  %or.cond5.i.not = or i1 %i.db, %i.dd
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.de = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.de, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.df = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dg = add nsw i32 %i.df, -208
  %i.dh = trunc i64 %indvars.iv967 to i32
  %i.di = add i32 %i.dh, -1
  %i.dj = srem i32 %i.di, 8
  %.not32 = icmp eq i32 %i.dg, %i.dj
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dk = add nuw nsw i32 %.sroa.10425.0917, 2    ; 2 uses
  %i.dl = icmp samesign ule i32 %i.dk, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dl)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0917, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.dk, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dm = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dn = sub nuw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dm ; 6 uses
  %i.dp = icmp samesign ult i32 %i.dn, 8
  br i1 %i.dp, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33905, label %.loopexit756.thread, label %.lr.ph912

.lr.ph912:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dq = mul nsw i64 %indvars.iv967, %i.as
  %i.dr = add nuw nsw i32 %i.dn, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph912, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv964 = phi i64 [ 0, %.lr.ph912 ], [ %indvars.iv.next965, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0910 = phi i64 [ 0, %.lr.ph912 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0909 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0908 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0907 = phi i32 [ -1, %.lr.ph912 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0906 = phi ptr [ %6, %.lr.ph912 ], [ %i.dz, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.ds = add nsw i64 %indvars.iv964, %i.dq       ; 5 uses
  %i.dt = icmp sgt i64 %i.ds, -1
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = icmp sle i64 %i.ds, %7
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = trunc nuw nsw i64 %i.ds to i32
  %.not34 = icmp eq i32 %i.z, %i.dv
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dw = icmp eq i64 %indvars.iv967, %i.bo
  tail call void @llvm.assume(i1 %i.dw)
  br label %.loopexit756

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bc)
  tail call void @llvm.assume(i1 %i.bd)
  %i.dx = icmp samesign ult i64 %i.ds, %7
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = mul nuw nsw i64 %i.ds, %i.bm
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dy ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.ch, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.be)
  %i.ea = load i32, ptr %i.bf, align 4, !tbaa !37 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bg)
  %wide.trip.count = zext nneg i32 %i.ea to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv954 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next955, %.loopexit ] ; 2 uses
  %.sroa.0508.0870 = phi ptr [ %.sroa.0400.0906, %.lr.ph ], [ %i.ee, %.loopexit ]
  %.sroa.0285.2869 = phi i64 [ %.sroa.0285.0910, %.lr.ph ], [ %.sroa.0285.14, %.loopexit ]
  %.sroa.48.3868 = phi i32 [ %.sroa.48.0909, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
end_hunk_3
begin_hunk_4_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.vl = and i32 %i.ve, 256
  %.not.i71.i = icmp eq i32 %i.vl, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.ve, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vm = trunc i32 %i.vf to i8                   ; 2 uses
  %i.vn = icmp ne i8 %i.vm, 0
  tail call void @llvm.assume(i1 %i.vn)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vo = icmp eq i32 %i.vg, 0
  tail call void @llvm.assume(i1 %i.vo)
  %i.vp = add nsw i32 %i.vi, -11                  ; 2 uses
  %i.vq = shl i64 %i.vk, 11                       ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !156
  %i.vu = load ptr, ptr %i.vr, align 8, !tbaa !157
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 2
  %i.vz = add nsw i64 %i.vy, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.uz to i16 ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, 11
  br i1 %i.wa, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.ck
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rw, i64 80
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !160
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge2.i152, %.lr.ph.i145
  %.sroa.48.27 = phi i32 [ %i.vp, %.lr.ph.i145 ], [ %i.wm, %.critedge2.i152 ] ; 4 uses
  %.sroa.0285.26 = phi i64 [ %i.vq, %.lr.ph.i145 ], [ %i.wn, %.critedge2.i152 ] ; 3 uses
  %i.wd = phi i64 [ 11, %.lr.ph.i145 ], [ %i.ws, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.021.i148 = phi i16 [ %.sroa.0.018.i126, %.lr.ph.i145 ], [ %.sroa.0.0.i153, %.critedge2.i152 ] ; 2 uses
  %.sroa.8.020.i149 = phi i8 [ 11, %.lr.ph.i145 ], [ %i.wr, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.0.in19.i150 = phi i32 [ %i.va, %.lr.ph.i145 ], [ %i.wq, %.critedge2.i152 ] ; 2 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !149 ; 2 uses
  %i.wg = icmp eq i16 %i.wf, -1
  %i.wh = icmp ult i16 %i.wf, %.sroa.0.021.i148
  %or.cond.i151 = select i1 %i.wg, i1 true, i1 %i.wh
  br i1 %or.cond.i151, label %.critedge2.i152, label %.critedge.i128.loopexit

.critedge2.i152:                                  ; preds = %bb.cl
  %i.wi = icmp samesign ult i32 %.sroa.48.27, 65
  tail call void @llvm.assume(i1 %i.wi)
  %i.wj = icmp ne i32 %.sroa.48.27, 0
  tail call void @llvm.assume(i1 %i.wj)
  %i.wk = lshr i64 %.sroa.0285.26, 63
  %i.wl = trunc nuw nsw i64 %i.wk to i32
  %i.wm = add nsw i32 %.sroa.48.27, -1            ; 2 uses
  %i.wn = shl i64 %.sroa.0285.26, 1               ; 2 uses
  %i.wo = shl nsw i32 %.sroa.0.0.in19.i150, 1
  %i.wp = and i32 %i.wo, 131070
  %i.wq = or disjoint i32 %i.wp, %i.wl            ; 3 uses
  %i.wr = add i8 %.sroa.8.020.i149, 1             ; 3 uses
  %.sroa.0.0.i153 = trunc i32 %i.wq to i16        ; 2 uses
  %i.ws = zext i8 %i.wr to i64                    ; 3 uses
  %i.wt = icmp ugt i64 %i.vz, %i.ws
  br i1 %i.wt, label %bb.cl, label %.critedge.i128.loopexit, !llvm.loop !1

.critedge.i128.loopexit:                          ; preds = %bb.cl, %.critedge2.i152
  %.sroa.48.26.ph = phi i32 [ %i.wm, %.critedge2.i152 ], [ %.sroa.48.27, %bb.cl ]
  %.sroa.0285.25.ph = phi i64 [ %i.wn, %.critedge2.i152 ], [ %.sroa.0285.26, %bb.cl ]
  %.sroa.0.0.in.lcssa.i129.ph = phi i32 [ %i.wq, %.critedge2.i152 ], [ %.sroa.0.0.in19.i150, %bb.cl ]
  %.sroa.8.0.lcssa.i130.ph = phi i8 [ %i.wr, %.critedge2.i152 ], [ %.sroa.8.020.i149, %bb.cl ]
  %.sroa.0.0.lcssa.i131.ph = phi i16 [ %.sroa.0.0.i153, %.critedge2.i152 ], [ %.sroa.0.021.i148, %bb.cl ]
  %.lcssa17.i132.ph = phi i64 [ %i.ws, %.critedge2.i152 ], [ %i.wd, %bb.cl ]
  %i.wu = zext i8 %.sroa.8.0.lcssa.i130.ph to i32
  br label %.critedge.i128

.critedge.i128:                                   ; preds = %.critedge.i128.loopexit, %bb.ck
  %.sroa.48.26 = phi i32 [ %i.vp, %bb.ck ], [ %.sroa.48.26.ph, %.critedge.i128.loopexit ]
  %.sroa.0285.25 = phi i64 [ %i.vq, %bb.ck ], [ %.sroa.0285.25.ph, %.critedge.i128.loopexit ]
  %.sroa.0.0.in.lcssa.i129 = phi i32 [ %i.va, %bb.ck ], [ %.sroa.0.0.in.lcssa.i129.ph, %.critedge.i128.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i130 = phi i32 [ 11, %bb.ck ], [ %i.wu, %.critedge.i128.loopexit ]
  %.sroa.0.0.lcssa.i131 = phi i16 [ %.sroa.0.018.i126, %bb.ck ], [ %.sroa.0.0.lcssa.i131.ph, %.critedge.i128.loopexit ]
  %.lcssa17.i132 = phi i64 [ 11, %bb.ck ], [ %.lcssa17.i132.ph, %.critedge.i128.loopexit ] ; 3 uses
  %i.wv = icmp ult i64 %i.vz, %.lcssa17.i132
  br i1 %i.wv, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.critedge.i128
  %i.ww = getelementptr inbounds nuw i8, ptr %i.rw, i64 80
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !160
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.wx, i64 %.lcssa17.i132
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !149
  %i.xa = icmp ult i16 %i.wz, %.sroa.0.0.lcssa.i131
  br i1 %i.xa, label %bb.cn, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154

bb.cn:                                            ; preds = %bb.cm, %.critedge.i128
  %i.xb = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.xb, i32 noundef %.sroa.8.0.lcssa.i130) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154: ; preds = %bb.cm
  %.sroa.0.0.mask.i134 = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  %i.xc = getelementptr inbounds nuw i8, ptr %i.rw, i64 104
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !160
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.xd, i64 %.lcssa17.i132
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !149
  %i.xg = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %.tr.i135 = zext i16 %i.xf to i32
  %.narrow.i136 = sub nsw i32 %.sroa.0.0.mask.i134, %.tr.i135
  %i.xh = zext i32 %.narrow.i136 to i64
  %i.xi = load ptr, ptr %i.xg, align 8, !tbaa !161
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xh
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !140
  br label %bb.co

bb.co:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154, %bb.cj
  %.0735 = phi i8 [ %i.xk, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vm, %bb.cj ] ; 5 uses
  %.sroa.48.12 = phi i32 [ %.sroa.48.26, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vi, %bb.cj ] ; 8 uses
  %.sroa.0285.11 = phi i64 [ %.sroa.0285.25, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vk, %bb.cj ] ; 4 uses
  %i.xl = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.xl)
  switch i8 %.0735, label %bb.cr [
    i8 16, label %bb.cp
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  ]

bb.cp:                                            ; preds = %bb.co
  %i.xm = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !162, !range !130, !noundef !116
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.cq, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cq:                                            ; preds = %bb.cp
  %i.xp = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xp)
  %i.xq = icmp samesign ugt i32 %.sroa.48.12, 15
  tail call void @llvm.assume(i1 %i.xq)
  %i.xr = add nsw i32 %.sroa.48.12, -16
  %i.xs = shl i64 %.sroa.0285.11, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cr:                                            ; preds = %bb.co
  %i.xt = zext nneg i8 %.0735 to i32              ; 2 uses
  %i.xu = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.xu)
  %i.xv = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.xv)
  %i.xw = icmp samesign uge i32 %.sroa.48.12, %i.xt
  tail call void @llvm.assume(i1 %i.xw)
  %i.xx = sub nuw nsw i32 %.sroa.48.12, %i.xt
  %i.xy = zext nneg i8 %.0735 to i64
  %i.xz = shl i64 %.sroa.0285.11, %i.xy
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.sroa.48.11 = phi i32 [ %i.vi, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.xx, %bb.cr ], [ %i.xr, %bb.cq ], [ %.sroa.48.12, %bb.cp ], [ %.sroa.48.12, %bb.co ] ; 3 uses
  %.sroa.0285.10 = phi i64 [ %i.vk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.xz, %bb.cr ], [ %i.xs, %bb.cq ], [ %.sroa.0285.11, %bb.cp ], [ %.sroa.0285.11, %bb.co ] ; 3 uses
  %indvars.iv.next961 = add nuw nsw i64 %indvars.iv960, 1 ; 2 uses
  %.not52.i = icmp eq i64 %indvars.iv.next961, 4
  br i1 %.not52.i, label %bb.br, label %bb.bs, !llvm.loop !233

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.br, %bb.bq
  %.sroa.169389.7.lcssa = phi i32 [ %.sroa.169389.6, %bb.bq ], [ %.sroa.169389.13, %bb.br ] ; 2 uses
  %.sroa.137361.7.lcssa = phi i32 [ %.sroa.137361.6, %bb.bq ], [ %.sroa.137361.13, %bb.br ] ; 2 uses
  %.sroa.48.9.lcssa = phi i32 [ %.sroa.48.8, %bb.bq ], [ %.sroa.48.11, %bb.br ]
  %.sroa.0285.8.lcssa = phi i64 [ %.sroa.0285.7, %bb.bq ], [ %.sroa.0285.10, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @llvm.assume(i1 %i.bg)
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 2 uses
  %.not33 = icmp eq i64 %indvars.iv.next965, %i.bn
  br i1 %.not33, label %.loopexit756, label %bb.m, !llvm.loop !234

.loopexit756:                                     ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.thread
  %.sroa.169389.0840 = phi i32 [ %.sroa.169389.0907, %.thread ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.137361.0832 = phi i32 [ %.sroa.137361.0908, %.thread ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.169389.0840.fr = freeze i32 %.sroa.169389.0840 ; 2 uses
  %i.ya = icmp slt i32 %.sroa.169389.0840.fr, 0
  %spec.select = select i1 %i.ya, i32 %.sroa.137361.0832, i32 %.sroa.169389.0840.fr
  br label %.loopexit756.thread

.loopexit756.thread:                              ; preds = %.loopexit756, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.yb = phi i32 [ %spec.select, %.loopexit756 ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader ] ; 3 uses
  %i.yc = zext i32 %i.yb to i64
  %i.yd = add nuw nsw i64 %i.yc, %i.dm
  %.not.i.i162 = icmp samesign ugt i64 %i.yd, %i.bj
  br i1 %.not.i.i162, label %bb.cs, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit163

bb.cs:                                            ; preds = %.loopexit756.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit163:     ; preds = %.loopexit756.thread
  %i.ye = add nuw nsw i32 %i.yb, %.sroa.10425.1   ; 3 uses
  %i.yf = icmp samesign ule i32 %i.ye, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.yf)
  %i.yg = icmp sgt i32 %i.yb, -1
  tail call void @llvm.assume(i1 %i.yg)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next968, %10
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !235
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed19roundUpDivisionSafeEmm.exit:
  %1 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %2 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.103", align 8   ; 6 uses
  %.sroa.0.i.i113 = alloca i64, align 8           ; 5 uses
  %.sroa.0.i.i63 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %4 = alloca %"struct.std::array.121", align 8   ; 8 uses
  %5 = alloca %"struct.std::array.120", align 8   ; 6 uses
  %6 = alloca %"struct.std::array.121", align 8   ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107  ; 4 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !256
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143, !noalias !256
  %i.i = mul nsw i32 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !144, !noalias !256
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !145, !noalias !256 ; 2 uses
  %i.n = ashr i32 %i.m, 1                         ; 10 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !109
  %i.s = mul i32 %i.r, %i.c                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !110  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !146
  %i.x = mul i32 %i.w, %i.c                       ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147  ; 6 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ne i32 %i.x, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i32 %i.u, %i.k
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.u, %i.n
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp sge i32 %i.n, %i.x
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111, !noalias !257 ; 9 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr align 8 %i.al, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115, !noalias !257
  %i.ap = tail call <3 x ptr> @llvm.masked.load.v3p0.p0(ptr nonnull align 8 %i.an, <3 x i1> <i1 true, i1 false, i1 true>, <3 x ptr> poison), !tbaa !115, !noalias !257
  %i.aq = and i32 %i.z, 1
  %i.ar = icmp eq i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load i32, ptr %i.as, align 8, !tbaa !36 ; 3 uses
  %7 = ashr exact i32 %i.z, 1
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %narrow = add nsw i32 %7, -1
  %i.av = sext i32 %narrow to i64
  %i.aw = udiv i64 %i.av, %i.au                   ; 2 uses
  %8 = trunc i64 %i.aw to i32
  %9 = add i32 %8, 1                              ; 3 uses
  %10 = icmp sgt i32 %9, -1
  tail call void @llvm.assume(i1 %10)
  %i.ax = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.az = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !24 ; 3 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = icmp eq ptr %i.al, %i.bb
  %.not33913 = icmp eq i32 %i.at, 0
  %i.be = icmp sgt i32 %i.x, -1
  %i.bf = icmp sgt i32 %i.z, -1
  %i.bg = and i32 %i.m, -2
  %i.bh = icmp samesign ugt i32 %i.x, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -2
  %i.bj = icmp samesign ule i32 %i.x, %i.bg       ; 2 uses
  %i.bk = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bo = zext nneg i32 %i.n to i64               ; 2 uses
  %i.bp = zext i32 %invariant.op to i64
  %i.bq = zext i32 %i.x to i64
  %i.br = sext i32 %i.z to i64                    ; 2 uses
  %i.bs = zext nneg i32 %i.n to i64
  %i.bt = zext i32 %i.at to i64
  %i.bu = and i64 %i.aw, 4294967295
  %11 = zext nneg i32 %9 to i64
  %i.bv = add i64 %i.bc, -16
  %i.bw = sub i64 %i.bv, %i.am                    ; 3 uses
  %i.bx = lshr i64 %i.bw, 4
  %i.by = add nuw nsw i64 %i.bx, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bw, 64
  %min.iters.check1074 = icmp ult i64 %i.bw, 256
  %i.bz = and i64 %i.by, 15                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 16, i64 %i.bz      ; 2 uses
  %n.vec = sub nsw i64 %i.by, %i.cb               ; 4 uses
  %i.cc = shl nsw i64 %n.vec, 1
  %i.cd = getelementptr i8, ptr %4, i64 %i.cc
  %i.ce = shl i64 %n.vec, 4
  %i.cf = getelementptr i8, ptr %i.al, i64 %i.ce
  %min.epilog.iters.check = icmp samesign ult i64 %i.cb, 5
  %i.cg = and i64 %i.by, 3                        ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = select i1 %i.ch, i64 4, i64 %i.cg
  %n.vec1077 = sub nsw i64 %i.by, %i.ci           ; 3 uses
  %i.cj = shl nsw i64 %n.vec1077, 1
  %i.ck = getelementptr i8, ptr %4, i64 %i.cj
  %i.cl = shl i64 %n.vec1077, 4
  %i.cm = getelementptr i8, ptr %i.al, i64 %i.cl
  %i.cn = shufflevector <3 x ptr> %i.ao, <3 x ptr> %i.ap, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.yt

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv983 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next984, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0927 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yt, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bd, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1074, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.co = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.co
  %i.cp = shl i64 %index, 4
  %next.gep1075 = getelementptr i8, ptr %i.al, i64 %i.cp
  %i.cq = getelementptr inbounds nuw i8, ptr %next.gep1075, i64 8
  %wide.vec = load <128 x i16>, ptr %i.cq, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !244

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1078 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1083, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = shl i64 %index1078, 1
  %next.gep1079 = getelementptr i8, ptr %4, i64 %i.cs
  %i.ct = shl i64 %index1078, 4
  %next.gep1080 = getelementptr i8, ptr %i.al, i64 %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep1080, i64 8
  %wide.vec1081 = load <32 x i16>, ptr %i.cu, align 8, !tbaa !148
  %strided.vec1082 = shufflevector <32 x i16> %wide.vec1081, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1082, ptr %next.gep1079, align 2, !tbaa !149
  %index.next1083 = add nuw i64 %index1078, 4     ; 2 uses
  %i.cv = icmp eq i64 %index.next1083, %n.vec1077
  br i1 %i.cv, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !245

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !148
  store i16 %i.cx, ptr %.07.i.i, align 2, !tbaa !149
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.da = icmp eq ptr %i.cy, %i.bb
  br i1 %i.da, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !246

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.db = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.db, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv983, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0927, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.dc = add nuw nsw i32 %.sroa.10425.0927, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.dc, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.dd = zext nneg i32 %.sroa.10425.0927 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dd
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.de, align 1
  %i.df = zext nneg i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.df
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.dg, align 1 ; 3 uses
  %i.dh = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.di = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dj = icmp ult i8 %i.di, 2
  %or.cond5.i.not = or i1 %i.dh, %i.dj
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.dk = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.dk, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dl = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dm = add nsw i32 %i.dl, -208
  %i.dn = trunc i64 %indvars.iv983 to i32
  %i.do = add i32 %i.dn, -1
  %i.dp = srem i32 %i.do, 8
  %.not32 = icmp eq i32 %i.dm, %i.dp
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dq = add nuw nsw i32 %.sroa.10425.0927, 2    ; 2 uses
  %i.dr = icmp samesign ule i32 %i.dq, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dr)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0927, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.dq, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.ds = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dt = sub nuw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.ds ; 6 uses
  %i.dv = icmp samesign ult i32 %i.dt, 8
  br i1 %i.dv, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33913, label %.loopexit.thread, label %.lr.ph922

.lr.ph922:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dw = mul nsw i64 %indvars.iv983, %i.au
  %i.dx = add nuw nsw i32 %i.dt, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph922, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv980 = phi i64 [ 0, %.lr.ph922 ], [ %indvars.iv.next981, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0920 = phi i64 [ 0, %.lr.ph922 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0919 = phi i32 [ 0, %.lr.ph922 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0918 = phi i32 [ 0, %.lr.ph922 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0917 = phi i32 [ -1, %.lr.ph922 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0916 = phi ptr [ %6, %.lr.ph922 ], [ %i.eg, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.8403.0914 = phi i32 [ 2, %.lr.ph922 ], [ %i.n, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dy = add nsw i64 %indvars.iv980, %i.dw       ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 1                ; 4 uses
  %i.ea = icmp sgt i64 %i.dy, -1
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp sle i64 %i.dz, %i.br
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = trunc nuw nsw i64 %i.dz to i32
  %.not34 = icmp eq i32 %i.z, %i.ec
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ed = icmp eq i64 %indvars.iv983, %i.bu
  tail call void @llvm.assume(i1 %i.ed)
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.be)
  tail call void @llvm.assume(i1 %i.bf)
  %i.ee = icmp samesign ult i64 %i.dz, %i.br
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = mul nuw nsw i64 %i.dz, %i.bs
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ef ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.cn, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.bh)
  %i.eh = load i32, ptr %i.bi, align 4, !tbaa !37 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bj)
  tail call void @llvm.assume(i1 %i.bk)
  %wide.trip.count = zext nneg i32 %i.eh to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv967 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next968, %bb.p ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %.not.i71.i = icmp eq i32 %i.wa, 0
  br i1 %.not.i71.i, label %bb.co, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.co:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vt, 0
  br i1 %.not17.i73.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wb = trunc i32 %i.vu to i8                   ; 2 uses
  %i.wc = icmp ne i8 %i.wb, 0
  tail call void @llvm.assume(i1 %i.wc)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  %i.wd = icmp eq i32 %i.vv, 0
  tail call void @llvm.assume(i1 %i.wd)
  %i.we = add nsw i32 %i.vx, -11                  ; 2 uses
  %i.wf = shl i64 %i.vz, 11                       ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.sl, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !156
  %i.wj = load ptr, ptr %i.wg, align 8, !tbaa !157
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = ashr exact i64 %i.wm, 2
  %i.wo = add nsw i64 %i.wn, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.vo to i16 ; 2 uses
  %i.wp = icmp ugt i64 %i.wo, 11
  br i1 %i.wp, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.cq
  %i.wq = getelementptr inbounds nuw i8, ptr %i.sl, i64 80
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !160
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge2.i152, %.lr.ph.i145
  %.sroa.48.27 = phi i32 [ %i.we, %.lr.ph.i145 ], [ %i.xb, %.critedge2.i152 ] ; 4 uses
  %.sroa.0285.26 = phi i64 [ %i.wf, %.lr.ph.i145 ], [ %i.xc, %.critedge2.i152 ] ; 3 uses
  %i.ws = phi i64 [ 11, %.lr.ph.i145 ], [ %i.xh, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.021.i148 = phi i16 [ %.sroa.0.018.i126, %.lr.ph.i145 ], [ %.sroa.0.0.i153, %.critedge2.i152 ] ; 2 uses
  %.sroa.8.020.i149 = phi i8 [ 11, %.lr.ph.i145 ], [ %i.xg, %.critedge2.i152 ] ; 2 uses
  %.sroa.0.0.in19.i150 = phi i32 [ %i.vp, %.lr.ph.i145 ], [ %i.xf, %.critedge2.i152 ] ; 2 uses
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !149 ; 2 uses
  %i.wv = icmp eq i16 %i.wu, -1
  %i.ww = icmp ult i16 %i.wu, %.sroa.0.021.i148
  %or.cond.i151 = select i1 %i.wv, i1 true, i1 %i.ww
  br i1 %or.cond.i151, label %.critedge2.i152, label %.critedge.i128.loopexit

.critedge2.i152:                                  ; preds = %bb.cr
  %i.wx = icmp samesign ult i32 %.sroa.48.27, 65
  tail call void @llvm.assume(i1 %i.wx)
  %i.wy = icmp ne i32 %.sroa.48.27, 0
  tail call void @llvm.assume(i1 %i.wy)
  %i.wz = lshr i64 %.sroa.0285.26, 63
  %i.xa = trunc nuw nsw i64 %i.wz to i32
  %i.xb = add nsw i32 %.sroa.48.27, -1            ; 2 uses
  %i.xc = shl i64 %.sroa.0285.26, 1               ; 2 uses
  %i.xd = shl nsw i32 %.sroa.0.0.in19.i150, 1
  %i.xe = and i32 %i.xd, 131070
  %i.xf = or disjoint i32 %i.xe, %i.xa            ; 3 uses
  %i.xg = add i8 %.sroa.8.020.i149, 1             ; 3 uses
  %.sroa.0.0.i153 = trunc i32 %i.xf to i16        ; 2 uses
  %i.xh = zext i8 %i.xg to i64                    ; 3 uses
  %i.xi = icmp ugt i64 %i.wo, %i.xh
  br i1 %i.xi, label %bb.cr, label %.critedge.i128.loopexit, !llvm.loop !1

.critedge.i128.loopexit:                          ; preds = %bb.cr, %.critedge2.i152
  %.sroa.48.26.ph = phi i32 [ %i.xb, %.critedge2.i152 ], [ %.sroa.48.27, %bb.cr ]
  %.sroa.0285.25.ph = phi i64 [ %i.xc, %.critedge2.i152 ], [ %.sroa.0285.26, %bb.cr ]
  %.sroa.0.0.in.lcssa.i129.ph = phi i32 [ %i.xf, %.critedge2.i152 ], [ %.sroa.0.0.in19.i150, %bb.cr ]
  %.sroa.8.0.lcssa.i130.ph = phi i8 [ %i.xg, %.critedge2.i152 ], [ %.sroa.8.020.i149, %bb.cr ]
  %.sroa.0.0.lcssa.i131.ph = phi i16 [ %.sroa.0.0.i153, %.critedge2.i152 ], [ %.sroa.0.021.i148, %bb.cr ]
  %.lcssa17.i132.ph = phi i64 [ %i.xh, %.critedge2.i152 ], [ %i.ws, %bb.cr ]
  %i.xj = zext i8 %.sroa.8.0.lcssa.i130.ph to i32
  br label %.critedge.i128

.critedge.i128:                                   ; preds = %.critedge.i128.loopexit, %bb.cq
  %.sroa.48.26 = phi i32 [ %i.we, %bb.cq ], [ %.sroa.48.26.ph, %.critedge.i128.loopexit ]
  %.sroa.0285.25 = phi i64 [ %i.wf, %bb.cq ], [ %.sroa.0285.25.ph, %.critedge.i128.loopexit ]
  %.sroa.0.0.in.lcssa.i129 = phi i32 [ %i.vp, %bb.cq ], [ %.sroa.0.0.in.lcssa.i129.ph, %.critedge.i128.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i130 = phi i32 [ 11, %bb.cq ], [ %i.xj, %.critedge.i128.loopexit ]
  %.sroa.0.0.lcssa.i131 = phi i16 [ %.sroa.0.018.i126, %bb.cq ], [ %.sroa.0.0.lcssa.i131.ph, %.critedge.i128.loopexit ]
  %.lcssa17.i132 = phi i64 [ 11, %bb.cq ], [ %.lcssa17.i132.ph, %.critedge.i128.loopexit ] ; 3 uses
  %i.xk = icmp ult i64 %i.wo, %.lcssa17.i132
  br i1 %i.xk, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.critedge.i128
  %i.xl = getelementptr inbounds nuw i8, ptr %i.sl, i64 80
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !160
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %.lcssa17.i132
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !149
  %i.xp = icmp ult i16 %i.xo, %.sroa.0.0.lcssa.i131
  br i1 %i.xp, label %bb.ct, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154

bb.ct:                                            ; preds = %bb.cs, %.critedge.i128
  %i.xq = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.xq, i32 noundef %.sroa.8.0.lcssa.i130) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154: ; preds = %bb.cs
  %.sroa.0.0.mask.i134 = and i32 %.sroa.0.0.in.lcssa.i129, 65535
  %i.xr = getelementptr inbounds nuw i8, ptr %i.sl, i64 104
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !160
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xs, i64 %.lcssa17.i132
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !149
  %i.xv = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %.tr.i135 = zext i16 %i.xu to i32
  %.narrow.i136 = sub nsw i32 %.sroa.0.0.mask.i134, %.tr.i135
  %i.xw = zext i32 %.narrow.i136 to i64
  %i.xx = load ptr, ptr %i.xv, align 8, !tbaa !161
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.xw
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !140
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154, %bb.cp
  %.0735 = phi i8 [ %i.xz, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.wb, %bb.cp ] ; 5 uses
  %.sroa.48.12 = phi i32 [ %.sroa.48.26, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vx, %bb.cp ] ; 8 uses
  %.sroa.0285.11 = phi i64 [ %.sroa.0285.25, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit154 ], [ %i.vz, %bb.cp ] ; 4 uses
  %i.ya = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.ya)
  switch i8 %.0735, label %bb.cx [
    i8 16, label %bb.cv
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.yb = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !162, !range !130, !noundef !116
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.cw, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cw:                                            ; preds = %bb.cv
  %i.ye = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.ye)
  %i.yf = icmp samesign ugt i32 %.sroa.48.12, 15
  tail call void @llvm.assume(i1 %i.yf)
  %i.yg = add nsw i32 %.sroa.48.12, -16
  %i.yh = shl i64 %.sroa.0285.11, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.cx:                                            ; preds = %bb.cu
  %i.yi = zext nneg i8 %.0735 to i32              ; 2 uses
  %i.yj = icmp samesign ult i32 %.sroa.48.12, 65
  tail call void @llvm.assume(i1 %i.yj)
  %i.yk = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.yk)
  %i.yl = icmp samesign uge i32 %.sroa.48.12, %i.yi
  tail call void @llvm.assume(i1 %i.yl)
  %i.ym = sub nuw nsw i32 %.sroa.48.12, %i.yi
  %i.yn = zext nneg i8 %.0735 to i64
  %i.yo = shl i64 %.sroa.0285.11, %i.yn
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.sroa.48.11 = phi i32 [ %i.vx, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.ym, %bb.cx ], [ %i.yg, %bb.cw ], [ %.sroa.48.12, %bb.cv ], [ %.sroa.48.12, %bb.cu ] ; 3 uses
  %.sroa.0285.10 = phi i64 [ %i.vz, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123 ], [ %i.yo, %bb.cx ], [ %i.yh, %bb.cw ], [ %.sroa.0285.11, %bb.cv ], [ %.sroa.0285.11, %bb.cu ] ; 3 uses
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1 ; 2 uses
  %.not52.i = icmp eq i64 %indvars.iv.next977, 4
  br i1 %.not52.i, label %bb.bx, label %bb.by, !llvm.loop !253

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.bx, %bb.bw
  %.sroa.169389.7.lcssa = phi i32 [ %.sroa.169389.6, %bb.bw ], [ %.sroa.169389.13, %bb.bx ] ; 2 uses
  %.sroa.137361.7.lcssa = phi i32 [ %.sroa.137361.6, %bb.bw ], [ %.sroa.137361.13, %bb.bx ] ; 2 uses
  %.sroa.48.9.lcssa = phi i32 [ %.sroa.48.8, %bb.bw ], [ %.sroa.48.11, %bb.bx ]
  %.sroa.0285.8.lcssa = phi i64 [ %.sroa.0285.7, %bb.bw ], [ %.sroa.0285.10, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @llvm.assume(i1 %i.bj)
  tail call void @llvm.assume(i1 %i.bk)
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 2 uses
  %.not33 = icmp eq i64 %indvars.iv.next981, %i.bt
  br i1 %.not33, label %.loopexit, label %bb.m, !llvm.loop !254

.loopexit:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.thread
  %.sroa.169389.0842 = phi i32 [ %.sroa.169389.0917, %.thread ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.137361.0834 = phi i32 [ %.sroa.137361.0918, %.thread ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.169389.0842.fr = freeze i32 %.sroa.169389.0842 ; 2 uses
  %i.yp = icmp slt i32 %.sroa.169389.0842.fr, 0
  %spec.select = select i1 %i.yp, i32 %.sroa.137361.0834, i32 %.sroa.169389.0842.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.yq = phi i32 [ %spec.select, %.loopexit ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader ] ; 3 uses
  %i.yr = zext i32 %i.yq to i64
  %i.ys = add nuw nsw i64 %i.yr, %i.ds
  %.not.i.i162 = icmp samesign ugt i64 %i.ys, %i.bn
  br i1 %.not.i.i162, label %bb.cy, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit163

bb.cy:                                            ; preds = %.loopexit.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit163:     ; preds = %.loopexit.thread
  %i.yt = add nuw nsw i32 %i.yq, %.sroa.10425.1   ; 3 uses
  %i.yu = icmp samesign ule i32 %i.yt, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.yu)
  %i.yv = icmp sgt i32 %i.yq, -1
  tail call void @llvm.assume(i1 %i.yv)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next984, %11
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !255
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !call_target !137, !inline_history !258
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !140
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !call_target !139, !inline_history !258
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !132
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !132
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #22
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.20, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #20 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x ptr> @llvm.masked.load.v3p0.p0(ptr captures(none), <3 x i1>, <3 x ptr>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { cold noreturn }
attributes #13 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !138, file: !133, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !{!1, !150}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!15, !14, i64 0}
end_hunk_5
