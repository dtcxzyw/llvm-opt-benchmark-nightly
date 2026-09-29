Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV7Decompressor?download=true
inline.NumInlined: 197
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE:bb.a

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE) #13
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.am = trunc nuw nsw i64 %i.aa to i32
  %i.an = shl nuw nsw i32 %i.am, 4                ; 2 uses
  %i.ao = zext i32 %i.ae to i64                   ; 2 uses
  %i.ap = zext nneg i32 %i.an to i64              ; 2 uses
  %i.aq = add nuw nsw i64 %i.ao, %i.ap
  %i.ar = zext nneg i32 %i.ac to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %2, align 8, !tbaa !21, !noalias !120
  %i.at = add nuw nsw i32 %i.ae, %i.an
  %i.au = icmp samesign ule i32 %i.at, %i.ac
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !114, !noalias !120
  %.sroa.4.8.insert.ext.i.i.i = zext i16 %i.ax to i64
  %.sroa.4.8.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i, %i.ap
  store ptr %i.av, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.f
  %.pn12 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.al, %bb.m ], [ %i.ay, %bb.q ]
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %.pn12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !123
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !124
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !99, !inline_history !121
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !101, !inline_history !121
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135, !noalias !136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !92, !noalias !136
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137, !noalias !136
  %i.h = mul nsw i32 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !138, !noalias !136
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !139, !noalias !136
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i32 %1, %i.j
  tail call void @llvm.assume(i1 %i.q)
  %i.r = mul i32 %i.m, %1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr [2 x i8], ptr %i.c, i64 %i.s ; 18 uses
  %i.u = udiv i32 %i.h, 9                         ; 3 uses
  %i.v = shl nuw nsw i32 %i.u, 4                  ; 3 uses
  %i.w = mul nuw nsw i32 %i.v, %1                 ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = zext nneg i32 %i.v to i64
  %i.z = add nuw nsw i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22, !noalias !140 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i = icmp samesign ugt i64 %i.z, %i.ac
  br i1 %.not.i.i, label %.invoke, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21, !noalias !140 ; 2 uses
  %i.af = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i32 %i.w, %i.v
  %i.ah = icmp samesign ule i32 %i.ag, %i.ab
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.x   ; 3 uses
  %.not = icmp samesign ult i32 %i.h, 9
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.aj = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 5 uses
  %wide.trip.count69 = zext nneg i32 %i.u to i64
  %i.ak = add nsw i64 %wide.trip.count, -1
  %i.al = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %i.ak) ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.memcheck

.lr.ph.preheader86:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ax, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %2 = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %2) ; 2 uses
  %i.an = mul nuw nsw i64 %umin, 18
  %i.ao = shl nuw nsw i64 %i.s, 1
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.aq, i64 18
  %i.ar = shl nuw nsw i64 %umin, 4
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.x
  %scevgep75 = getelementptr i8, ptr %i.at, i64 16
  %bound0 = icmp ult ptr %i.t, %scevgep75
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.au = and i64 %i.am, 7                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 8, i64 %i.au
  %n.vec = sub nsw i64 %i.am, %i.aw               ; 3 uses
  %i.ax = shl nsw i64 %n.vec, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = shl nuw i64 %index, 4
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.ba = mul nuw nsw <8 x i64> %vec.ind, splat (i64 9) ; 8 uses
  %wide.vec = load <32 x i32>, ptr %i.az, align 1, !alias.scope !141 ; 4 uses
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec76 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec77 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec78 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.bb = trunc <8 x i32> %strided.vec to <8 x i16>
  %i.bc = and <8 x i16> %i.bb, splat (i16 16383)  ; 8 uses
  %i.bd = extractelement <8 x i64> %i.ba, i64 0
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bd ; 9 uses
  %i.bf = extractelement <8 x i64> %i.ba, i64 1
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bf ; 9 uses
  %i.bh = extractelement <8 x i64> %i.ba, i64 2
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bh ; 9 uses
  %i.bj = extractelement <8 x i64> %i.ba, i64 3
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bj ; 9 uses
  %i.bl = extractelement <8 x i64> %i.ba, i64 4
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bl ; 9 uses
  %i.bn = extractelement <8 x i64> %i.ba, i64 5
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bn ; 9 uses
  %i.bp = extractelement <8 x i64> %i.ba, i64 6
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bp ; 9 uses
  %i.br = extractelement <8 x i64> %i.ba, i64 7
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.br ; 9 uses
  %i.bt = extractelement <8 x i16> %i.bc, i64 0
  store i16 %i.bt, ptr %i.be, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bu = extractelement <8 x i16> %i.bc, i64 1
  store i16 %i.bu, ptr %i.bg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bv = extractelement <8 x i16> %i.bc, i64 2
  store i16 %i.bv, ptr %i.bi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bw = extractelement <8 x i16> %i.bc, i64 3
  store i16 %i.bw, ptr %i.bk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bx = extractelement <8 x i16> %i.bc, i64 4
  store i16 %i.bx, ptr %i.bm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.by = extractelement <8 x i16> %i.bc, i64 5
  store i16 %i.by, ptr %i.bo, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bz = extractelement <8 x i16> %i.bc, i64 6
  store i16 %i.bz, ptr %i.bq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ca = extractelement <8 x i16> %i.bc, i64 7
  store i16 %i.ca, ptr %i.bs, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cb = lshr <8 x i32> %strided.vec, splat (i32 14)
  %i.cc = trunc <8 x i32> %i.cb to <8 x i16>
  %i.cd = and <8 x i16> %i.cc, splat (i16 16383)  ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.cm = extractelement <8 x i16> %i.cd, i64 0
  store i16 %i.cm, ptr %i.ce, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cn = extractelement <8 x i16> %i.cd, i64 1
  store i16 %i.cn, ptr %i.cf, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.co = extractelement <8 x i16> %i.cd, i64 2
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cp = extractelement <8 x i16> %i.cd, i64 3
  store i16 %i.cp, ptr %i.ch, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cq = extractelement <8 x i16> %i.cd, i64 4
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cr = extractelement <8 x i16> %i.cd, i64 5
  store i16 %i.cr, ptr %i.cj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cs = extractelement <8 x i16> %i.cd, i64 6
  store i16 %i.cs, ptr %i.ck, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ct = extractelement <8 x i16> %i.cd, i64 7
  store i16 %i.ct, ptr %i.cl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cu = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec76, <8 x i32> %strided.vec, <8 x i32> splat (i32 4))
  %i.cv = trunc <8 x i32> %i.cu to <8 x i16>
  %i.cw = and <8 x i16> %i.cv, splat (i16 16383)  ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.df = extractelement <8 x i16> %i.cw, i64 0
  store i16 %i.df, ptr %i.cx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dg = extractelement <8 x i16> %i.cw, i64 1
  store i16 %i.dg, ptr %i.cy, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dh = extractelement <8 x i16> %i.cw, i64 2
  store i16 %i.dh, ptr %i.cz, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.di = extractelement <8 x i16> %i.cw, i64 3
  store i16 %i.di, ptr %i.da, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dj = extractelement <8 x i16> %i.cw, i64 4
  store i16 %i.dj, ptr %i.db, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dk = extractelement <8 x i16> %i.cw, i64 5
  store i16 %i.dk, ptr %i.dc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dl = extractelement <8 x i16> %i.cw, i64 6
  store i16 %i.dl, ptr %i.dd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dm = extractelement <8 x i16> %i.cw, i64 7
  store i16 %i.dm, ptr %i.de, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dn = lshr <8 x i32> %strided.vec76, splat (i32 10)
  %i.do = trunc <8 x i32> %i.dn to <8 x i16>
  %i.dp = and <8 x i16> %i.do, splat (i16 16383)  ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.dy = extractelement <8 x i16> %i.dp, i64 0
  store i16 %i.dy, ptr %i.dq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dz = extractelement <8 x i16> %i.dp, i64 1
  store i16 %i.dz, ptr %i.dr, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ea = extractelement <8 x i16> %i.dp, i64 2
  store i16 %i.ea, ptr %i.ds, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eb = extractelement <8 x i16> %i.dp, i64 3
  store i16 %i.eb, ptr %i.dt, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ec = extractelement <8 x i16> %i.dp, i64 4
  store i16 %i.ec, ptr %i.du, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ed = extractelement <8 x i16> %i.dp, i64 5
  store i16 %i.ed, ptr %i.dv, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ee = extractelement <8 x i16> %i.dp, i64 6
  store i16 %i.ee, ptr %i.dw, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ef = extractelement <8 x i16> %i.dp, i64 7
  store i16 %i.ef, ptr %i.dx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eg = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec77, <8 x i32> %strided.vec76, <8 x i32> splat (i32 8))
  %i.eh = trunc <8 x i32> %i.eg to <8 x i16>
  %i.ei = and <8 x i16> %i.eh, splat (i16 16383)  ; 8 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.er = extractelement <8 x i16> %i.ei, i64 0
  store i16 %i.er, ptr %i.ej, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.es = extractelement <8 x i16> %i.ei, i64 1
  store i16 %i.es, ptr %i.ek, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.et = extractelement <8 x i16> %i.ei, i64 2
  store i16 %i.et, ptr %i.el, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eu = extractelement <8 x i16> %i.ei, i64 3
  store i16 %i.eu, ptr %i.em, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ev = extractelement <8 x i16> %i.ei, i64 4
  store i16 %i.ev, ptr %i.en, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ew = extractelement <8 x i16> %i.ei, i64 5
  store i16 %i.ew, ptr %i.eo, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ex = extractelement <8 x i16> %i.ei, i64 6
  store i16 %i.ex, ptr %i.ep, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ey = extractelement <8 x i16> %i.ei, i64 7
  store i16 %i.ey, ptr %i.eq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ez = lshr <8 x i32> %strided.vec77, splat (i32 6)
  %i.fa = trunc <8 x i32> %i.ez to <8 x i16>
  %i.fb = and <8 x i16> %i.fa, splat (i16 16383)  ; 8 uses
  %i.fc = lshr <8 x i32> %strided.vec77, splat (i32 20)
  %i.fd = trunc nuw nsw <8 x i32> %i.fc to <8 x i16>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.fm = extractelement <8 x i16> %i.fb, i64 0
  store i16 %i.fm, ptr %i.fe, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fn = extractelement <8 x i16> %i.fb, i64 1
  store i16 %i.fn, ptr %i.ff, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fo = extractelement <8 x i16> %i.fb, i64 2
  store i16 %i.fo, ptr %i.fg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fp = extractelement <8 x i16> %i.fb, i64 3
  store i16 %i.fp, ptr %i.fh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fq = extractelement <8 x i16> %i.fb, i64 4
  store i16 %i.fq, ptr %i.fi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fr = extractelement <8 x i16> %i.fb, i64 5
  store i16 %i.fr, ptr %i.fj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fs = extractelement <8 x i16> %i.fb, i64 6
  store i16 %i.fs, ptr %i.fk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ft = extractelement <8 x i16> %i.fb, i64 7
  store i16 %i.ft, ptr %i.fl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fu = trunc <8 x i32> %strided.vec78 to <8 x i16> ; 2 uses
  %i.fv = shl <8 x i16> %i.fu, splat (i16 12)
end_hunk_0
