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
  %i.as = load ptr, ptr %2, align 8, !tbaa !19, !noalias !101
  %i.at = add nuw nsw i32 %i.ae, %i.an
  %i.au = icmp samesign ule i32 %i.at, %i.ac
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !23, !noalias !101
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !110
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !113, !inline_history !120
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !121, !inline_history !120
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !122
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !124

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125, !noalias !126 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28, !noalias !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !129, !noalias !126
  %i.h = mul nsw i32 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130, !noalias !126
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !131, !noalias !126
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
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22, !noalias !132 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i = icmp samesign ugt i64 %i.z, %i.ac
  br i1 %.not.i.i, label %.invoke, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19, !noalias !132 ; 2 uses
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
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ay, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %2 = add nsw i64 %wide.trip.count, -1
  %i.an = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %2) ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 18
  %i.ap = shl nuw nsw i64 %i.s, 1
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.ar, i64 18
  %i.as = shl nuw nsw i64 %i.an, 4
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %i.x
  %scevgep75 = getelementptr i8, ptr %i.au, i64 16
  %bound0 = icmp ult ptr %i.t, %scevgep75
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.av = and i64 %i.am, 7                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 8, i64 %i.av
  %n.vec = sub nsw i64 %i.am, %i.ax               ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.az = shl nuw i64 %index, 4
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = mul nuw nsw <8 x i64> %vec.ind, splat (i64 9) ; 8 uses
  %wide.vec = load <32 x i32>, ptr %i.ba, align 1, !alias.scope !135 ; 4 uses
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec76 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec77 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec78 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.bc = trunc <8 x i32> %strided.vec to <8 x i16>
  %i.bd = and <8 x i16> %i.bc, splat (i16 16383)  ; 8 uses
  %i.be = extractelement <8 x i64> %i.bb, i64 0
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.be ; 9 uses
  %i.bg = extractelement <8 x i64> %i.bb, i64 1
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bg ; 9 uses
  %i.bi = extractelement <8 x i64> %i.bb, i64 2
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bi ; 9 uses
  %i.bk = extractelement <8 x i64> %i.bb, i64 3
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bk ; 9 uses
  %i.bm = extractelement <8 x i64> %i.bb, i64 4
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bm ; 9 uses
  %i.bo = extractelement <8 x i64> %i.bb, i64 5
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bo ; 9 uses
  %i.bq = extractelement <8 x i64> %i.bb, i64 6
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bq ; 9 uses
  %i.bs = extractelement <8 x i64> %i.bb, i64 7
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = extractelement <8 x i16> %i.bd, i64 0
  store i16 %i.bu, ptr %i.bf, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.bv = extractelement <8 x i16> %i.bd, i64 1
  store i16 %i.bv, ptr %i.bh, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.bw = extractelement <8 x i16> %i.bd, i64 2
  store i16 %i.bw, ptr %i.bj, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.bx = extractelement <8 x i16> %i.bd, i64 3
  store i16 %i.bx, ptr %i.bl, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.by = extractelement <8 x i16> %i.bd, i64 4
  store i16 %i.by, ptr %i.bn, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.bz = extractelement <8 x i16> %i.bd, i64 5
  store i16 %i.bz, ptr %i.bp, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ca = extractelement <8 x i16> %i.bd, i64 6
  store i16 %i.ca, ptr %i.br, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cb = extractelement <8 x i16> %i.bd, i64 7
  store i16 %i.cb, ptr %i.bt, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cc = lshr <8 x i32> %strided.vec, splat (i32 14)
  %i.cd = trunc <8 x i32> %i.cc to <8 x i16>
  %i.ce = and <8 x i16> %i.cd, splat (i16 16383)  ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cn = extractelement <8 x i16> %i.ce, i64 0
  store i16 %i.cn, ptr %i.cf, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.co = extractelement <8 x i16> %i.ce, i64 1
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cp = extractelement <8 x i16> %i.ce, i64 2
  store i16 %i.cp, ptr %i.ch, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cq = extractelement <8 x i16> %i.ce, i64 3
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cr = extractelement <8 x i16> %i.ce, i64 4
  store i16 %i.cr, ptr %i.cj, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cs = extractelement <8 x i16> %i.ce, i64 5
  store i16 %i.cs, ptr %i.ck, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ct = extractelement <8 x i16> %i.ce, i64 6
  store i16 %i.ct, ptr %i.cl, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cu = extractelement <8 x i16> %i.ce, i64 7
  store i16 %i.cu, ptr %i.cm, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.cv = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec76, <8 x i32> %strided.vec, <8 x i32> splat (i32 4))
  %i.cw = trunc <8 x i32> %i.cv to <8 x i16>
  %i.cx = and <8 x i16> %i.cw, splat (i16 16383)  ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.dg = extractelement <8 x i16> %i.cx, i64 0
  store i16 %i.dg, ptr %i.cy, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dh = extractelement <8 x i16> %i.cx, i64 1
  store i16 %i.dh, ptr %i.cz, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.di = extractelement <8 x i16> %i.cx, i64 2
  store i16 %i.di, ptr %i.da, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dj = extractelement <8 x i16> %i.cx, i64 3
  store i16 %i.dj, ptr %i.db, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dk = extractelement <8 x i16> %i.cx, i64 4
  store i16 %i.dk, ptr %i.dc, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dl = extractelement <8 x i16> %i.cx, i64 5
  store i16 %i.dl, ptr %i.dd, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dm = extractelement <8 x i16> %i.cx, i64 6
  store i16 %i.dm, ptr %i.de, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.dn = extractelement <8 x i16> %i.cx, i64 7
  store i16 %i.dn, ptr %i.df, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.do = lshr <8 x i32> %strided.vec76, splat (i32 10)
  %i.dp = trunc <8 x i32> %i.do to <8 x i16>
  %i.dq = and <8 x i16> %i.dp, splat (i16 16383)  ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.dz = extractelement <8 x i16> %i.dq, i64 0
  store i16 %i.dz, ptr %i.dr, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ea = extractelement <8 x i16> %i.dq, i64 1
  store i16 %i.ea, ptr %i.ds, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.eb = extractelement <8 x i16> %i.dq, i64 2
  store i16 %i.eb, ptr %i.dt, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ec = extractelement <8 x i16> %i.dq, i64 3
  store i16 %i.ec, ptr %i.du, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ed = extractelement <8 x i16> %i.dq, i64 4
  store i16 %i.ed, ptr %i.dv, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ee = extractelement <8 x i16> %i.dq, i64 5
  store i16 %i.ee, ptr %i.dw, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ef = extractelement <8 x i16> %i.dq, i64 6
  store i16 %i.ef, ptr %i.dx, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.eg = extractelement <8 x i16> %i.dq, i64 7
  store i16 %i.eg, ptr %i.dy, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.eh = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec77, <8 x i32> %strided.vec76, <8 x i32> splat (i32 8))
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  %i.ej = and <8 x i16> %i.ei, splat (i16 16383)  ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.es = extractelement <8 x i16> %i.ej, i64 0
  store i16 %i.es, ptr %i.ek, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.et = extractelement <8 x i16> %i.ej, i64 1
  store i16 %i.et, ptr %i.el, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.eu = extractelement <8 x i16> %i.ej, i64 2
  store i16 %i.eu, ptr %i.em, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ev = extractelement <8 x i16> %i.ej, i64 3
  store i16 %i.ev, ptr %i.en, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ew = extractelement <8 x i16> %i.ej, i64 4
  store i16 %i.ew, ptr %i.eo, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ex = extractelement <8 x i16> %i.ej, i64 5
  store i16 %i.ex, ptr %i.ep, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ey = extractelement <8 x i16> %i.ej, i64 6
  store i16 %i.ey, ptr %i.eq, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.ez = extractelement <8 x i16> %i.ej, i64 7
  store i16 %i.ez, ptr %i.er, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fa = lshr <8 x i32> %strided.vec77, splat (i32 6)
  %i.fb = trunc <8 x i32> %i.fa to <8 x i16>
  %i.fc = and <8 x i16> %i.fb, splat (i16 16383)  ; 8 uses
  %i.fd = lshr <8 x i32> %strided.vec77, splat (i32 20)
  %i.fe = trunc nuw nsw <8 x i32> %i.fd to <8 x i16>
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  %i.fn = extractelement <8 x i16> %i.fc, i64 0
  store i16 %i.fn, ptr %i.ff, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fo = extractelement <8 x i16> %i.fc, i64 1
  store i16 %i.fo, ptr %i.fg, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fp = extractelement <8 x i16> %i.fc, i64 2
  store i16 %i.fp, ptr %i.fh, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fq = extractelement <8 x i16> %i.fc, i64 3
  store i16 %i.fq, ptr %i.fi, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fr = extractelement <8 x i16> %i.fc, i64 4
  store i16 %i.fr, ptr %i.fj, align 2, !tbaa !138, !alias.scope !140, !noalias !135
  %i.fs = extractelement <8 x i16> %i.fc, i64 5
  store i16 %i.fs, ptr %i.fk, align 2, !tbaa !138, !alias.scope !140, !noalias !135
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi:bb.a
  %i.jl = shl i16 %i.jk, 12
  %.masked = and i16 %i.jl, 12288
  %i.jm = or disjoint i16 %.masked, %i.jg
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ic
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !138
  %i.jp = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 to i16
  %i.jq = lshr i16 %i.jp, 2
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ic
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 14
  store i16 %i.jq, ptr %i.js, align 2, !tbaa !138
  %i.jt = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6, 16
  %i.ju = trunc nuw i32 %i.jt to i16
  %i.jv = and i16 %i.ju, 16383
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ic
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i16 %i.jv, ptr %i.jx, align 2, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

bb.b:                                             ; preds = %.invoke
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  tail call void @__clang_call_terminate(ptr %i.jz) #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV7Decompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !147
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.03) #18
  %i.e = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !148
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !111
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !111
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #21
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.4, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !113, !inline_history !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !122
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !123  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !121, !inline_history !149
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold noreturn }
attributes #14 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !14, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN8rawspeed6BufferE", !21, i64 0, !8, i64 8}
!21 = !{!"p1 omnipotent char", !14, i64 0}
!22 = !{!20, !8, i64 8}
!23 = !{!24, !25, i64 12}
!24 = !{!"_ZTSN8rawspeed10DataBufferE", !20, i64 0, !25, i64 12}
!25 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!26 = !{!27, !8, i64 16}
!27 = !{!"_ZTSN8rawspeed10ByteStreamE", !24, i64 0, !8, i64 16}
!28 = !{!29, !8, i64 592}
!29 = !{!"_ZTSN8rawspeed12RawImageDataE", !30, i64 8, !37, i64 40, !8, i64 48, !8, i64 52, !38, i64 56, !39, i64 64, !8, i64 96, !44, i64 100, !45, i64 120, !50, i64 160, !55, i64 168, !60, i64 192, !65, i64 216, !8, i64 240, !38, i64 244, !69, i64 248, !31, i64 552, !84, i64 553, !85, i64 560, !8, i64 592, !8, i64 596, !37, i64 600, !37, i64 608, !91, i64 616}
!30 = !{!"_ZTSN8rawspeed8ErrorLogE", !31, i64 0, !32, i64 8}
!31 = !{!"_ZTSN8rawspeed5MutexE"}
!32 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!37 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!38 = !{!"bool", !9, i64 0}
!39 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !40, i64 0, !37, i64 24}
!40 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!44 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!45 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !46, i64 0}
!46 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !47, i64 0}
!47 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !48, i64 0}
!48 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !38, i64 32}
!50 = !{!"_ZTSN8rawspeed8OptionalIiEE", !51, i64 0}
!51 = !{!"_ZTSSt8optionalIiE", !52, i64 0}
!52 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !53, i64 0}
!53 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !54, i64 0}
!54 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !38, i64 4}
!55 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !14, i64 0}
!60 = !{!"_ZTSSt6vectorIjSaIjEE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 int", !14, i64 0}
!65 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!69 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !70, i64 0, !71, i64 8, !76, i64 32, !8, i64 56, !37, i64 60, !81, i64 72, !81, i64 104, !81, i64 136, !81, i64 168, !81, i64 200, !81, i64 232, !81, i64 264, !8, i64 296}
!70 = !{!"double", !9, i64 0}
!71 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !72, i64 0}
!72 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !73, i64 0}
!73 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !75, i64 0}
!75 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !38, i64 16}
!76 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !14, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !83, i64 8, !9, i64 16}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!83 = !{!"long", !9, i64 0}
!84 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!85 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !88, i64 0, !90, i64 8}
!88 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !89, i64 0}
!89 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!90 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!91 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !92, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !94, i64 0}
!94 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !95, i64 0}
!95 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !96, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !97, i64 0}
!97 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !14, i64 0}
!98 = !{!29, !84, i64 553}
!99 = !{!29, !8, i64 596}
!100 = !{!37, !8, i64 0}
!101 = !{!102, !104, !106}
!102 = distinct !{!102, !103, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj: argument 0"}
!103 = distinct !{!103, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj"}
!104 = distinct !{!104, !105, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
!105 = distinct !{!105, !"_ZNK8rawspeed10ByteStream10peekStreamEj"}
!106 = distinct !{!106, !107, !"_ZNK8rawspeed10ByteStream10peekStreamEjj: argument 0"}
!107 = distinct !{!107, !"_ZNK8rawspeed10ByteStream10peekStreamEjj"}
!108 = !{!109, !8, i64 8}
!109 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!110 = !{!109, !8, i64 12}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !10, i64 0}
!113 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !115, file: !114, line: 139, type: !117, scopeLine: 139, containingType: !115, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!114 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!115 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !116, file: !114, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!116 = !DINamespace(name: "std", scope: null)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = distinct !{null, null, null}
!121 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !115, file: !114, line: 143, type: !117, scopeLine: 143, containingType: !115, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!122 = !{!9, !9, i64 0}
!123 = !{!8, !8, i64 0}
!124 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!125 = !{!90, !21, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!128 = distinct !{!128, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!129 = !{!29, !8, i64 608}
!130 = !{!29, !8, i64 612}
!131 = !{!29, !8, i64 48}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj: argument 0"}
!134 = distinct !{!134, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj"}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139, !139, i64 0}
!139 = !{!"short", !9, i64 0}
!140 = !{!141}
!141 = distinct !{!141, !137}
!142 = distinct !{!142, !143, !144, !145}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"llvm.loop.isvectorized", i32 1}
!145 = !{!"llvm.loop.unroll.runtime.disable"}
!146 = distinct !{!146, !143, !144}
!147 = !{!29, !8, i64 44}
!148 = distinct !{!148, !143}
!149 = distinct !{null}
end_hunk_1
