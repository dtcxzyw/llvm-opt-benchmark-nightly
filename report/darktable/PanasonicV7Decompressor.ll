Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV7Decompressor?download=true
inline.NumInlined: 197
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE:bb.a
  %i.v = urem i32 %i.p, 9
  %.not10 = icmp eq i32 %i.v, 0
  %or.cond = and i1 %.not10, %i.u
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE, i32 noundef %i.p, i32 noundef %i.s) #13
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.w = zext nneg i32 %i.p to i64
  %i.x = zext nneg i32 %i.s to i64
  %i.y = mul nuw nsw i64 %i.x, %i.w
  %i.z = udiv i64 %i.y, 9                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !116 ; 4 uses
  %i.ae = icmp uge i32 %i.ab, %i.ad
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = sub nuw nsw i32 %i.ab, %i.ad
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %i.z, %i.ai
  br i1 %i.aj, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.a, %bb.b, %bb.c
  %i.ak = phi ptr [ @.str, %bb.a ], [ @.str, %bb.c ], [ @.str, %bb.b ], [ @.str.2, %bb.g ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ak, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE) #13
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %i.z to i32
  %i.am = shl nuw nsw i32 %i.al, 4                ; 2 uses
  %i.an = zext i32 %i.ad to i64                   ; 2 uses
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ap = add nuw nsw i64 %i.an, %i.ao
  %i.aq = zext nneg i32 %i.ab to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ap, %i.aq
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %2, align 8, !tbaa !21, !noalias !120
  %i.as = add nuw nsw i32 %i.ad, %i.am
  %i.at = icmp samesign ule i32 %i.as, %i.ab
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !114, !noalias !120
  %.sroa.4.8.insert.ext.i.i.i = zext i16 %i.aw to i64
  %.sroa.4.8.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i, %i.ao
  store ptr %i.au, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  ret void

bb.k:                                             ; preds = %.invoke, %bb.e, %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %i.ax
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
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %wide.trip.count69 = zext nneg i32 %i.u to i64
  %i.ak = add nsw i64 %wide.trip.count, -1
  %i.al = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %i.ak) ; 4 uses
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.memcheck

.lr.ph.preheader86:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.az, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = mul nuw nsw i64 %i.al, 18
  %i.ao = shl nuw nsw i64 %i.s, 1
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 18
  %i.as = shl nuw nsw i64 %i.al, 4
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %i.x
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %bound0 = icmp ult ptr %i.t, %i.av
  %bound1 = icmp ult ptr %i.ai, %i.ar
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = and i64 %i.am, 7                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub nsw i64 %i.am, %i.ay               ; 3 uses
  %i.az = shl nsw i64 %n.vec, 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ba = shl nuw i64 %index, 4
  %i.bb = getelementptr i8, ptr %i.ai, i64 %i.ba
  %i.bc = mul nuw nsw <8 x i64> %vec.ind, splat (i64 9) ; 8 uses
  %wide.vec = load <32 x i32>, ptr %i.bb, align 1, !alias.scope !141 ; 4 uses
  %strided.vec = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec76 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec77 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec78 = shufflevector <32 x i32> %wide.vec, <32 x i32> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.bd = trunc <8 x i32> %strided.vec to <8 x i16>
  %i.be = and <8 x i16> %i.bd, splat (i16 16383)  ; 8 uses
  %i.bf = extractelement <8 x i64> %i.bc, i64 0
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bf ; 9 uses
  %i.bh = extractelement <8 x i64> %i.bc, i64 1
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bh ; 9 uses
  %i.bj = extractelement <8 x i64> %i.bc, i64 2
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bj ; 9 uses
  %i.bl = extractelement <8 x i64> %i.bc, i64 3
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bl ; 9 uses
  %i.bn = extractelement <8 x i64> %i.bc, i64 4
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bn ; 9 uses
  %i.bp = extractelement <8 x i64> %i.bc, i64 5
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bp ; 9 uses
  %i.br = extractelement <8 x i64> %i.bc, i64 6
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.br ; 9 uses
  %i.bt = extractelement <8 x i64> %i.bc, i64 7
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bt ; 9 uses
  %i.bv = extractelement <8 x i16> %i.be, i64 0
  store i16 %i.bv, ptr %i.bg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bw = extractelement <8 x i16> %i.be, i64 1
  store i16 %i.bw, ptr %i.bi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bx = extractelement <8 x i16> %i.be, i64 2
  store i16 %i.bx, ptr %i.bk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.by = extractelement <8 x i16> %i.be, i64 3
  store i16 %i.by, ptr %i.bm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.bz = extractelement <8 x i16> %i.be, i64 4
  store i16 %i.bz, ptr %i.bo, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ca = extractelement <8 x i16> %i.be, i64 5
  store i16 %i.ca, ptr %i.bq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cb = extractelement <8 x i16> %i.be, i64 6
  store i16 %i.cb, ptr %i.bs, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cc = extractelement <8 x i16> %i.be, i64 7
  store i16 %i.cc, ptr %i.bu, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cd = lshr <8 x i32> %strided.vec, splat (i32 14)
  %i.ce = trunc <8 x i32> %i.cd to <8 x i16>
  %i.cf = and <8 x i16> %i.ce, splat (i16 16383)  ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.co = extractelement <8 x i16> %i.cf, i64 0
  store i16 %i.co, ptr %i.cg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cp = extractelement <8 x i16> %i.cf, i64 1
  store i16 %i.cp, ptr %i.ch, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cq = extractelement <8 x i16> %i.cf, i64 2
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cr = extractelement <8 x i16> %i.cf, i64 3
  store i16 %i.cr, ptr %i.cj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cs = extractelement <8 x i16> %i.cf, i64 4
  store i16 %i.cs, ptr %i.ck, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ct = extractelement <8 x i16> %i.cf, i64 5
  store i16 %i.ct, ptr %i.cl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cu = extractelement <8 x i16> %i.cf, i64 6
  store i16 %i.cu, ptr %i.cm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cv = extractelement <8 x i16> %i.cf, i64 7
  store i16 %i.cv, ptr %i.cn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.cw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec76, <8 x i32> %strided.vec, <8 x i32> splat (i32 4))
  %i.cx = trunc <8 x i32> %i.cw to <8 x i16>
  %i.cy = and <8 x i16> %i.cx, splat (i16 16383)  ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.dh = extractelement <8 x i16> %i.cy, i64 0
  store i16 %i.dh, ptr %i.cz, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.di = extractelement <8 x i16> %i.cy, i64 1
  store i16 %i.di, ptr %i.da, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dj = extractelement <8 x i16> %i.cy, i64 2
  store i16 %i.dj, ptr %i.db, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dk = extractelement <8 x i16> %i.cy, i64 3
  store i16 %i.dk, ptr %i.dc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dl = extractelement <8 x i16> %i.cy, i64 4
  store i16 %i.dl, ptr %i.dd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dm = extractelement <8 x i16> %i.cy, i64 5
  store i16 %i.dm, ptr %i.de, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dn = extractelement <8 x i16> %i.cy, i64 6
  store i16 %i.dn, ptr %i.df, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.do = extractelement <8 x i16> %i.cy, i64 7
  store i16 %i.do, ptr %i.dg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.dp = lshr <8 x i32> %strided.vec76, splat (i32 10)
  %i.dq = trunc <8 x i32> %i.dp to <8 x i16>
  %i.dr = and <8 x i16> %i.dq, splat (i16 16383)  ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.ea = extractelement <8 x i16> %i.dr, i64 0
  store i16 %i.ea, ptr %i.ds, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eb = extractelement <8 x i16> %i.dr, i64 1
  store i16 %i.eb, ptr %i.dt, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ec = extractelement <8 x i16> %i.dr, i64 2
  store i16 %i.ec, ptr %i.du, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ed = extractelement <8 x i16> %i.dr, i64 3
  store i16 %i.ed, ptr %i.dv, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ee = extractelement <8 x i16> %i.dr, i64 4
  store i16 %i.ee, ptr %i.dw, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ef = extractelement <8 x i16> %i.dr, i64 5
  store i16 %i.ef, ptr %i.dx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eg = extractelement <8 x i16> %i.dr, i64 6
  store i16 %i.eg, ptr %i.dy, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eh = extractelement <8 x i16> %i.dr, i64 7
  store i16 %i.eh, ptr %i.dz, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ei = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %strided.vec77, <8 x i32> %strided.vec76, <8 x i32> splat (i32 8))
  %i.ej = trunc <8 x i32> %i.ei to <8 x i16>
  %i.ek = and <8 x i16> %i.ej, splat (i16 16383)  ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.et = extractelement <8 x i16> %i.ek, i64 0
  store i16 %i.et, ptr %i.el, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.eu = extractelement <8 x i16> %i.ek, i64 1
  store i16 %i.eu, ptr %i.em, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ev = extractelement <8 x i16> %i.ek, i64 2
  store i16 %i.ev, ptr %i.en, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ew = extractelement <8 x i16> %i.ek, i64 3
  store i16 %i.ew, ptr %i.eo, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ex = extractelement <8 x i16> %i.ek, i64 4
  store i16 %i.ex, ptr %i.ep, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ey = extractelement <8 x i16> %i.ek, i64 5
  store i16 %i.ey, ptr %i.eq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ez = extractelement <8 x i16> %i.ek, i64 6
  store i16 %i.ez, ptr %i.er, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fa = extractelement <8 x i16> %i.ek, i64 7
  store i16 %i.fa, ptr %i.es, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fb = lshr <8 x i32> %strided.vec77, splat (i32 6)
  %i.fc = trunc <8 x i32> %i.fb to <8 x i16>
  %i.fd = and <8 x i16> %i.fc, splat (i16 16383)  ; 8 uses
  %i.fe = lshr <8 x i32> %strided.vec77, splat (i32 20)
  %i.ff = trunc nuw nsw <8 x i32> %i.fe to <8 x i16>
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  %i.fo = extractelement <8 x i16> %i.fd, i64 0
  store i16 %i.fo, ptr %i.fg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fp = extractelement <8 x i16> %i.fd, i64 1
  store i16 %i.fp, ptr %i.fh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fq = extractelement <8 x i16> %i.fd, i64 2
  store i16 %i.fq, ptr %i.fi, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fr = extractelement <8 x i16> %i.fd, i64 3
  store i16 %i.fr, ptr %i.fj, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fs = extractelement <8 x i16> %i.fd, i64 4
  store i16 %i.fs, ptr %i.fk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ft = extractelement <8 x i16> %i.fd, i64 5
  store i16 %i.ft, ptr %i.fl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fu = extractelement <8 x i16> %i.fd, i64 6
  store i16 %i.fu, ptr %i.fm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fv = extractelement <8 x i16> %i.fd, i64 7
  store i16 %i.fv, ptr %i.fn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.fw = trunc <8 x i32> %strided.vec78 to <8 x i16> ; 2 uses
  %i.fx = shl <8 x i16> %i.fw, splat (i16 12)
  %i.fy = and <8 x i16> %i.fx, splat (i16 12288)
  %i.fz = or disjoint <8 x i16> %i.fy, %i.ff      ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.gi = extractelement <8 x i16> %i.fz, i64 0
  store i16 %i.gi, ptr %i.ga, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gj = extractelement <8 x i16> %i.fz, i64 1
  store i16 %i.gj, ptr %i.gb, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gk = extractelement <8 x i16> %i.fz, i64 2
  store i16 %i.gk, ptr %i.gc, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gl = extractelement <8 x i16> %i.fz, i64 3
  store i16 %i.gl, ptr %i.gd, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gm = extractelement <8 x i16> %i.fz, i64 4
  store i16 %i.gm, ptr %i.ge, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gn = extractelement <8 x i16> %i.fz, i64 5
  store i16 %i.gn, ptr %i.gf, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.go = extractelement <8 x i16> %i.fz, i64 6
  store i16 %i.go, ptr %i.gg, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gp = extractelement <8 x i16> %i.fz, i64 7
  store i16 %i.gp, ptr %i.gh, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.gq = lshr <8 x i16> %i.fw, splat (i16 2)     ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bs, i64 14
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  %i.gz = extractelement <8 x i16> %i.gq, i64 0
  store i16 %i.gz, ptr %i.gr, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ha = extractelement <8 x i16> %i.gq, i64 1
  store i16 %i.ha, ptr %i.gs, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hb = extractelement <8 x i16> %i.gq, i64 2
  store i16 %i.hb, ptr %i.gt, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hc = extractelement <8 x i16> %i.gq, i64 3
  store i16 %i.hc, ptr %i.gu, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hd = extractelement <8 x i16> %i.gq, i64 4
  store i16 %i.hd, ptr %i.gv, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.he = extractelement <8 x i16> %i.gq, i64 5
  store i16 %i.he, ptr %i.gw, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hf = extractelement <8 x i16> %i.gq, i64 6
  store i16 %i.hf, ptr %i.gx, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hg = extractelement <8 x i16> %i.gq, i64 7
  store i16 %i.hg, ptr %i.gy, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hh = lshr <8 x i32> %strided.vec78, splat (i32 16)
  %i.hi = trunc nuw <8 x i32> %i.hh to <8 x i16>
  %i.hj = and <8 x i16> %i.hi, splat (i16 16383)  ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.hs = extractelement <8 x i16> %i.hj, i64 0
  store i16 %i.hs, ptr %i.hk, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.ht = extractelement <8 x i16> %i.hj, i64 1
  store i16 %i.ht, ptr %i.hl, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hu = extractelement <8 x i16> %i.hj, i64 2
  store i16 %i.hu, ptr %i.hm, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hv = extractelement <8 x i16> %i.hj, i64 3
  store i16 %i.hv, ptr %i.hn, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hw = extractelement <8 x i16> %i.hj, i64 4
  store i16 %i.hw, ptr %i.ho, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hx = extractelement <8 x i16> %i.hj, i64 5
  store i16 %i.hx, ptr %i.hp, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hy = extractelement <8 x i16> %i.hj, i64 6
  store i16 %i.hy, ptr %i.hq, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %i.hz = extractelement <8 x i16> %i.hj, i64 7
  store i16 %i.hz, ptr %i.hr, align 2, !tbaa !143, !alias.scope !144, !noalias !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %.lr.ph.preheader86, label %vector.body, !llvm.loop !133

._crit_edge:                                      ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.8, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
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
  %i.ib = getelementptr i8, ptr %i.ai, i64 %indvars.iv64 ; 4 uses
  %i.ic = icmp samesign ule i64 %indvars.iv, %i.aj
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = mul nuw nsw i64 %indvars.iv, 9          ; 9 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre = load i32, ptr %i.ib, align 1 ; 3 uses
  %i.ie = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre to i16
  %i.if = and i16 %i.ie, 16383
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !143
  %i.ih = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre, 14
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = and i16 %i.ii, 16383
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i16 %i.ij, ptr %i.il, align 2, !tbaa !143
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2 = load i32, ptr %i.im, align 1 ; 3 uses
  %i.in = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.pre, i32 4)
  %i.io = trunc i32 %i.in to i16
  %i.ip = and i16 %i.io, 16383
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i16 %i.ip, ptr %i.ir, align 2, !tbaa !143
  %i.is = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, 10
  %i.it = trunc i32 %i.is to i16
  %i.iu = and i16 %i.it, 16383
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  store i16 %i.iu, ptr %i.iw, align 2, !tbaa !143
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4 = load i32, ptr %i.ix, align 1 ; 3 uses
  %i.iy = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.2, i32 8)
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = and i16 %i.iz, 16383
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !143
  %i.jd = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, 6
  %i.je = trunc i32 %i.jd to i16
  %i.jf = and i16 %i.je, 16383
  %i.jg = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.4, 20
  %i.jh = trunc nuw nsw i32 %i.jg to i16
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 10
  store i16 %i.jf, ptr %i.jj, align 2, !tbaa !143
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 = load i32, ptr %i.jk, align 1 ; 3 uses
  %i.jl = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 to i16
  %i.jm = shl i16 %i.jl, 12
  %.masked = and i16 %i.jm, 12288
  %i.jn = or disjoint i16 %.masked, %i.jh
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i16 %i.jn, ptr %i.jp, align 2, !tbaa !143
  %i.jq = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6 to i16
  %i.jr = lshr i16 %i.jq, 2
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 14
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !143
  %i.ju = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.6, 16
  %i.jv = trunc nuw i32 %i.ju to i16
  %i.jw = and i16 %i.jv, 16383
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.id
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i16 %i.jw, ptr %i.jy, align 2, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134

bb.b:                                             ; preds = %.invoke
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  tail call void @__clang_call_terminate(ptr %i.ka) #20
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
end_hunk_0
