Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV7Decompressor?download=true
inline.NumInlined: 197
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE:bb.a
bb.f:                                             ; preds = %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119  ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  %i.w = urem i32 %i.q, 9
  %.not10 = icmp eq i32 %i.w, 0
  %or.cond = and i1 %.not10, %i.v
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE, i32 noundef %i.q, i32 noundef %i.t) #13
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.q to i64
  %i.y = zext nneg i32 %i.t to i64
  %i.z = mul nuw nsw i64 %i.y, %i.x
  %i.aa = udiv i64 %i.z, 9                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116 ; 4 uses
  %i.af = icmp uge i32 %i.ac, %i.ae
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp sgt i32 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub nuw i32 %i.ac, %i.ae
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = icmp samesign ugt i64 %i.aa, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.n

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
  %i.h = mul nsw i32 %i.g, %i.e                   ; 5 uses
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
  %i.u = udiv exact i32 %i.h, 9                   ; 3 uses
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
  %2 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 5 uses
  %wide.trip.count69 = zext nneg i32 %i.u to i64
  %3 = add nsw i64 %wide.trip.count, -1
  %4 = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %3) ; 2 uses
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %.not = icmp samesign ult i64 %4, 8
  br i1 %.not, label %.lr.ph.preheader86, label %vector.memcheck

.lr.ph.preheader86:                               ; preds = %vector.body, %vector.memcheck, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %i.au, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.aj = add nsw i64 %wide.trip.count, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %i.aj) ; 2 uses
  %i.ak = mul nuw nsw i64 %umin, 18
  %i.al = shl nuw nsw i64 %i.s, 1
  %i.am = getelementptr i8, ptr %i.c, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 18
  %i.ao = shl nuw nsw i64 %umin, 4
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.x
  %scevgep75 = getelementptr i8, ptr %i.aq, i64 16
  %bound0 = icmp ult ptr %i.t, %scevgep75
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ar = and i64 %5, 7                           ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 8, i64 %i.ar
  %n.vec = sub nsw i64 %5, %i.at                  ; 3 uses
  %i.au = shl nsw i64 %n.vec, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.av = shl nuw i64 %index, 4
  %i.aw = getelementptr i8, ptr %i.ai, i64 %i.av
  %i.ax = mul nuw nsw <8 x i64> %vec.ind, splat (i64 9) ; 8 uses
  %wide.vec = load <32 x i32>, ptr %i.aw, align 1, !alias.scope !141 ; 4 uses
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec76.a = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec77.a = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec78 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.ay = trunc <8 x i32> %strided.vec to <8 x i16>
  %i.az = and <8 x i16> %i.ay, splat (i16 16383)  ; 8 uses
  %i.ba = extractelement <8 x i64> %i.ax, i64 0
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ba ; 9 uses
  %i.bc = extractelement <8 x i64> %i.ax, i64 1
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bc ; 9 uses
  %i.be = extractelement <8 x i64> %i.ax, i64 2
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.be ; 9 uses
  %i.bg = extractelement <8 x i64> %i.ax, i64 3
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bg ; 9 uses
  %i.bi = extractelement <8 x i64> %i.ax, i64 4
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bi ; 9 uses
  %i.bk = extractelement <8 x i64> %i.ax, i64 5
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bk ; 9 uses
  %i.bm = extractelement <8 x i64> %i.ax, i64 6
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bm ; 9 uses
  %i.bo = extractelement <8 x i64> %i.ax, i64 7
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bo ; 9 uses
  %i.bq = extractelement <8 x i16> %i.az, i64 0
  store i16 %i.bq, ptr %i.bb, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.br = extractelement <8 x i16> %i.az, i64 1
  store i16 %i.br, ptr %i.bd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bs = extractelement <8 x i16> %i.az, i64 2
  store i16 %i.bs, ptr %i.bf, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bt = extractelement <8 x i16> %i.az, i64 3
  store i16 %i.bt, ptr %i.bh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bu = extractelement <8 x i16> %i.az, i64 4
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bv = extractelement <8 x i16> %i.az, i64 5
  store i16 %i.bv, ptr %i.bl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bw = extractelement <8 x i16> %i.az, i64 6
  store i16 %i.bw, ptr %i.bn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bx = extractelement <8 x i16> %i.az, i64 7
  store i16 %i.bx, ptr %i.bp, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.by = lshr <8 x i32> %strided.vec, splat (i32 14)
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  %i.ca = and <8 x i16> %i.bz, splat (i16 16383)  ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cj = extractelement <8 x i16> %i.ca, i64 0
  store i16 %i.cj, ptr %i.cb, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ck = extractelement <8 x i16> %i.ca, i64 1
  store i16 %i.ck, ptr %i.cc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cl = extractelement <8 x i16> %i.ca, i64 2
  store i16 %i.cl, ptr %i.cd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cm = extractelement <8 x i16> %i.ca, i64 3
  store i16 %i.cm, ptr %i.ce, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cn = extractelement <8 x i16> %i.ca, i64 4
  store i16 %i.cn, ptr %i.cf, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.co = extractelement <8 x i16> %i.ca, i64 5
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cp = extractelement <8 x i16> %i.ca, i64 6
  store i16 %i.cp, ptr %i.ch, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cq = extractelement <8 x i16> %i.ca, i64 7
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cr = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec76.a, <8 x i32> %strided.vec, <8 x i32> splat (i32 4))
  %i.cs = trunc <8 x i32> %i.cr to <8 x i16>
  %i.ct = and <8 x i16> %i.cs, splat (i16 16383)  ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.dc = extractelement <8 x i16> %i.ct, i64 0
  store i16 %i.dc, ptr %i.cu, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dd = extractelement <8 x i16> %i.ct, i64 1
  store i16 %i.dd, ptr %i.cv, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.de = extractelement <8 x i16> %i.ct, i64 2
  store i16 %i.de, ptr %i.cw, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.df = extractelement <8 x i16> %i.ct, i64 3
  store i16 %i.df, ptr %i.cx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dg = extractelement <8 x i16> %i.ct, i64 4
  store i16 %i.dg, ptr %i.cy, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dh = extractelement <8 x i16> %i.ct, i64 5
  store i16 %i.dh, ptr %i.cz, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.di = extractelement <8 x i16> %i.ct, i64 6
  store i16 %i.di, ptr %i.da, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dj = extractelement <8 x i16> %i.ct, i64 7
  store i16 %i.dj, ptr %i.db, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dk = lshr <8 x i32> %strided.vec76.a, splat (i32 10)
  %i.dl = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dm = and <8 x i16> %i.dl, splat (i16 16383)  ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.do = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.dv = extractelement <8 x i16> %i.dm, i64 0
  store i16 %i.dv, ptr %i.dn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dw = extractelement <8 x i16> %i.dm, i64 1
  store i16 %i.dw, ptr %i.do, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dx = extractelement <8 x i16> %i.dm, i64 2
  store i16 %i.dx, ptr %i.dp, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dy = extractelement <8 x i16> %i.dm, i64 3
  store i16 %i.dy, ptr %i.dq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dz = extractelement <8 x i16> %i.dm, i64 4
  store i16 %i.dz, ptr %i.dr, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ea = extractelement <8 x i16> %i.dm, i64 5
  store i16 %i.ea, ptr %i.ds, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eb = extractelement <8 x i16> %i.dm, i64 6
  store i16 %i.eb, ptr %i.dt, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ec = extractelement <8 x i16> %i.dm, i64 7
  store i16 %i.ec, ptr %i.du, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ed = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec77.a, <8 x i32> %strided.vec76.a, <8 x i32> splat (i32 8))
  %i.ee = trunc <8 x i32> %i.ed to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 16383)  ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.eo = extractelement <8 x i16> %i.ef, i64 0
  store i16 %i.eo, ptr %i.eg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ep = extractelement <8 x i16> %i.ef, i64 1
  store i16 %i.ep, ptr %i.eh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eq = extractelement <8 x i16> %i.ef, i64 2
  store i16 %i.eq, ptr %i.ei, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.er = extractelement <8 x i16> %i.ef, i64 3
  store i16 %i.er, ptr %i.ej, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.es = extractelement <8 x i16> %i.ef, i64 4
  store i16 %i.es, ptr %i.ek, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.et = extractelement <8 x i16> %i.ef, i64 5
  store i16 %i.et, ptr %i.el, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eu = extractelement <8 x i16> %i.ef, i64 6
  store i16 %i.eu, ptr %i.em, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ev = extractelement <8 x i16> %i.ef, i64 7
  store i16 %i.ev, ptr %i.en, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ew = lshr <8 x i32> %strided.vec77.a, splat (i32 6)
  %i.ex = trunc <8 x i32> %i.ew to <8 x i16>
  %i.ey = and <8 x i16> %i.ex, splat (i16 16383)  ; 8 uses
  %i.ez = lshr <8 x i32> %strided.vec77.a, splat (i32 20)
  %i.fa = trunc nuw nsw <8 x i32> %i.ez to <8 x i16>
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.fj = extractelement <8 x i16> %i.ey, i64 0
  store i16 %i.fj, ptr %i.fb, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fk = extractelement <8 x i16> %i.ey, i64 1
  store i16 %i.fk, ptr %i.fc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fl = extractelement <8 x i16> %i.ey, i64 2
  store i16 %i.fl, ptr %i.fd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fm = extractelement <8 x i16> %i.ey, i64 3
  store i16 %i.fm, ptr %i.fe, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fn = extractelement <8 x i16> %i.ey, i64 4
  store i16 %i.fn, ptr %i.ff, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fo = extractelement <8 x i16> %i.ey, i64 5
  store i16 %i.fo, ptr %i.fg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fp = extractelement <8 x i16> %i.ey, i64 6
  store i16 %i.fp, ptr %i.fh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fq = extractelement <8 x i16> %i.ey, i64 7
  store i16 %i.fq, ptr %i.fi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fr = trunc <8 x i32> %strided.vec78 to <8 x i16> ; 2 uses
  %i.fs = shl <8 x i16> %i.fr, splat (i16 12)
  %i.ft = and <8 x i16> %i.fs, splat (i16 12288)
  %i.fu = or disjoint <8 x i16> %i.ft, %i.fa      ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.gd = extractelement <8 x i16> %i.fu, i64 0
  store i16 %i.gd, ptr %i.fv, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ge = extractelement <8 x i16> %i.fu, i64 1
  store i16 %i.ge, ptr %i.fw, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gf = extractelement <8 x i16> %i.fu, i64 2
  store i16 %i.gf, ptr %i.fx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gg = extractelement <8 x i16> %i.fu, i64 3
  store i16 %i.gg, ptr %i.fy, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gh = extractelement <8 x i16> %i.fu, i64 4
  store i16 %i.gh, ptr %i.fz, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gi = extractelement <8 x i16> %i.fu, i64 5
  store i16 %i.gi, ptr %i.ga, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gj = extractelement <8 x i16> %i.fu, i64 6
  store i16 %i.gj, ptr %i.gb, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gk = extractelement <8 x i16> %i.fu, i64 7
  store i16 %i.gk, ptr %i.gc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gl = lshr <8 x i16> %i.fr, splat (i16 2)     ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.go = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %i.gu = extractelement <8 x i16> %i.gl, i64 0
  store i16 %i.gu, ptr %i.gm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gv = extractelement <8 x i16> %i.gl, i64 1
  store i16 %i.gv, ptr %i.gn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gw = extractelement <8 x i16> %i.gl, i64 2
  store i16 %i.gw, ptr %i.go, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gx = extractelement <8 x i16> %i.gl, i64 3
  store i16 %i.gx, ptr %i.gp, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gy = extractelement <8 x i16> %i.gl, i64 4
  store i16 %i.gy, ptr %i.gq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gz = extractelement <8 x i16> %i.gl, i64 5
  store i16 %i.gz, ptr %i.gr, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ha = extractelement <8 x i16> %i.gl, i64 6
  store i16 %i.ha, ptr %i.gs, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hb = extractelement <8 x i16> %i.gl, i64 7
  store i16 %i.hb, ptr %i.gt, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hc = lshr <8 x i32> %strided.vec78, splat (i32 16)
  %i.hd = trunc nuw <8 x i32> %i.hc to <8 x i16>
  %i.he = and <8 x i16> %i.hd, splat (i16 16383)  ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.hn = extractelement <8 x i16> %i.he, i64 0
  store i16 %i.hn, ptr %i.hf, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ho = extractelement <8 x i16> %i.he, i64 1
  store i16 %i.ho, ptr %i.hg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hp = extractelement <8 x i16> %i.he, i64 2
  store i16 %i.hp, ptr %i.hh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hq = extractelement <8 x i16> %i.he, i64 3
  store i16 %i.hq, ptr %i.hi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hr = extractelement <8 x i16> %i.he, i64 4
  store i16 %i.hr, ptr %i.hj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hs = extractelement <8 x i16> %i.he, i64 5
  store i16 %i.hs, ptr %i.hk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ht = extractelement <8 x i16> %i.he, i64 6
  store i16 %i.ht, ptr %i.hl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hu = extractelement <8 x i16> %i.he, i64 7
  store i16 %i.hu, ptr %i.hm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %.lr.ph.preheader86, label %vector.body, !llvm.loop !133

._crit_edge:                                      ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader86, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8 ], [ %indvars.iv64.ph, %.lr.ph.preheader86 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8 ], [ %indvars.iv.ph, %.lr.ph.preheader86 ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.invoke, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8

.invoke:                                          ; preds = %.lr.ph, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8: ; preds = %.lr.ph
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 16
  %i.hw = getelementptr i8, ptr %i.ai, i64 %indvars.iv64 ; 4 uses
  %i.hx = icmp samesign ule i64 %indvars.iv, %2
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = mul nuw nsw i64 %indvars.iv, 9          ; 9 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre = load i32, ptr %i.hw, align 1 ; 3 uses
  %i.hz = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre to i16
  %i.ia = and i16 %i.hz, 16383
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !143
  %i.ic = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre, 14
  %i.id = trunc i32 %i.ic to i16
  %i.ie = and i16 %i.id, 16383
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i16 %i.ie, ptr %i.ig, align 2, !tbaa !143
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2 = load i32, ptr %i.ih, align 1 ; 3 uses
  %i.ii = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre, i32 4)
  %i.ij = trunc i32 %i.ii to i16
  %i.ik = and i16 %i.ij, 16383
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store i16 %i.ik, ptr %i.im, align 2, !tbaa !143
  %i.in = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, 10
  %i.io = trunc i32 %i.in to i16
  %i.ip = and i16 %i.io, 16383
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 6
  store i16 %i.ip, ptr %i.ir, align 2, !tbaa !143
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4 = load i32, ptr %i.is, align 1 ; 3 uses
  %i.it = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, i32 8)
  %i.iu = trunc i32 %i.it to i16
  %i.iv = and i16 %i.iu, 16383
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i16 %i.iv, ptr %i.ix, align 2, !tbaa !143
  %i.iy = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, 6
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = and i16 %i.iz, 16383
  %i.jb = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, 20
  %i.jc = trunc nuw nsw i32 %i.jb to i16
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 10
  store i16 %i.ja, ptr %i.je, align 2, !tbaa !143
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 = load i32, ptr %i.jf, align 1 ; 3 uses
  %i.jg = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 to i16
  %i.jh = shl i16 %i.jg, 12
  %.masked = and i16 %i.jh, 12288
  %i.ji = or disjoint i16 %.masked, %i.jc
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i16 %i.ji, ptr %i.jk, align 2, !tbaa !143
  %i.jl = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 to i16
  %i.jm = lshr i16 %i.jl, 2
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 14
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !143
  %i.jp = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6, 16
  %i.jq = trunc nuw i32 %i.jp to i16
  %i.jr = and i16 %i.jq, 16383
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.hy
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134

bb.b:                                             ; preds = %.invoke
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  tail call void @__clang_call_terminate(ptr %i.jv) #20
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.03) #18
  %i.e = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !148
  %i.i = icmp slt i32 %i.e, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !147
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !94
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !94
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #21
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_0
