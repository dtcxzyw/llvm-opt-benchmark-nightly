Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapnode?download=true
inline.NumInlined: 476
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7MapNode17deSerialize_pre22EPKhh:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i8 %2, 10
  %i.e = load i8, ptr %1, align 1, !tbaa !66      ; 2 uses
  %i.f = zext i8 %i.e to i16                      ; 4 uses
  store i16 %i.f, ptr %0, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.h, ptr %i.i, align 2, !tbaa !85
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !65
  %i.m = icmp slt i8 %i.e, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw nsw i16 %i.f, 4
  %i.o = lshr i8 %i.k, 4
  %i.p = zext nneg i8 %i.o to i16
  %i.q = or disjoint i16 %i.n, %i.p               ; 2 uses
  store i16 %i.q, ptr %0, align 4, !tbaa !11
  %i.r = and i8 %i.k, 15
  store i8 %i.r, ptr %i.l, align 1, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pr = phi i16 [ %i.q, %bb.e ], [ %i.f, %bb.d ]
  %i.s = icmp ult i8 %2, 20
  br i1 %i.s, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.c, %bb.f, %bb.b
  %i.t = phi i16 [ %.pr, %bb.f ], [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  switch i16 %i.t, label %bb.h [
    i16 255, label %.sink.split
    i16 254, label %bb.g
  ]

bb.g:                                             ; preds = %.thread
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.g
  %.sink = phi i16 [ 126, %bb.g ], [ 127, %.thread ]
  store i16 %.sink, ptr %0, align 4, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.thread, %bb.f
  %.sroa.0.0.copyload = load i32, ptr %0, align 4
  %i.u = tail call i32 @_Z29mapnode_translate_to_internal7MapNodeh(i32 %.sroa.0.0.copyload, i8 noundef zeroext %2)
  store i32 %i.u, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7MapNode13serializeBulkEiPKS_jhhb(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Buffer) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::allocator.46", align 1 ; 4 uses
  %i.a = add i32 %1, -24
  %i.b = icmp ult i32 %i.a, 6
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN24VersionMismatchExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %7)
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI24VersionMismatchException, ptr nonnull @_ZN13BaseExceptionD2Ev) #18
          to label %bb.n unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %7, align 8, !tbaa !80     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %4, 2
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 584, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7MapNode13serializeBulkEiPKS_jhhb) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = icmp eq i8 %5, 2
  br i1 %i.l, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN7MapNode13serializeBulkEiPKS_jhhb) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = shl i32 %3, 2                            ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !168
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN6BufferIhEC2Em.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #19
  br label %_ZN6BufferIhEC2Em.exit

_ZN6BufferIhEC2Em.exit:                           ; preds = %bb.j, %bb.k
  %storemerge.i = phi ptr [ %i.p, %bb.k ], [ null, %bb.j ] ; 9 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !169
  br i1 %6, label %bb.l, label %.preheader75

.preheader75:                                     ; preds = %_ZN6BufferIhEC2Em.exit
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader75
  %wide.trip.count = zext i32 %3 to i64           ; 19 uses
  %min.iters.check = icmp ult i32 %3, 9
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.q = and i64 %wide.trip.count, 7              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 8, i64 %i.q
  %n.vec = sub nsw i64 %wide.trip.count, %i.s     ; 3 uses
  %i.t = shl nsw i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %storemerge.i, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.v = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %storemerge.i, i64 %i.v
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i16, ptr %i.w, align 4, !tbaa !11
  %i.am = load i16, ptr %i.y, align 4, !tbaa !11
  %i.an = load i16, ptr %i.aa, align 4, !tbaa !11
  %i.ao = load i16, ptr %i.ac, align 4, !tbaa !11
  %i.ap = load i16, ptr %i.ae, align 4, !tbaa !11
  %i.aq = load i16, ptr %i.ag, align 4, !tbaa !11
  %i.ar = load i16, ptr %i.ai, align 4, !tbaa !11
  %i.as = load i16, ptr %i.ak, align 4, !tbaa !11
  %i.at = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 1
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 2
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 3
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 4
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 5
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 6
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 7
  %i.bb = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ba)
  store <8 x i16> %i.bb, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %scalar.ph, label %vector.body, !llvm.loop !148

scalar.ph:                                        ; preds = %vector.body, %.lr.ph.preheader
  %bc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %bc.resume.val127 = phi ptr [ %storemerge.i, %.lr.ph.preheader ], [ %i.u, %vector.body ] ; 3 uses
  %bc.resume.val127128 = ptrtoaddr ptr %bc.resume.val127 to i64
  br label %.lr.ph

bb.l:                                             ; preds = %_ZN6BufferIhEC2Em.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !66
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !66
  %.not98 = icmp eq i32 %3, 0
  br i1 %.not98, label %.loopexit, label %iter.check197

iter.check197:                                    ; preds = %bb.l
  %.sroa.0.0.copyload = load i16, ptr %2, align 4, !tbaa !170
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload) ; 3 uses
  %i.bd = zext i32 %3 to i64                      ; 5 uses
  %min.iters.check184 = icmp ult i32 %3, 4
  br i1 %min.iters.check184, label %vec.epilog.scalar.ph198.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check197
  %min.iters.check186 = icmp ult i32 %3, 16
  br i1 %min.iters.check186, label %vec.epilog.ph201, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %i.be = and i64 %i.bd, 12
  %n.vec188 = and i64 %i.bd, 4294967280           ; 5 uses
  %i.bf = trunc nuw i64 %n.vec188 to i32
  %i.bg = shl nuw nsw i64 %n.vec188, 1
  %i.bh = getelementptr i8, ptr %storemerge.i, i64 %i.bg ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %rev.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.ph187, %vector.body189
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next192, %vector.body189 ] ; 2 uses
  %i.bi = shl i64 %index190, 1
  %next.gep191 = getelementptr i8, ptr %storemerge.i, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep191, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep191, align 1
  store <8 x i16> %broadcast.splat, ptr %i.bj, align 1
  %index.next192 = add nuw i64 %index190, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next192, %n.vec188
  br i1 %i.bk, label %middle.block193, label %vector.body189, !llvm.loop !149

middle.block193:                                  ; preds = %vector.body189
  %cmp.n = icmp eq i64 %n.vec188, %i.bd
  br i1 %cmp.n, label %.lr.ph95.preheader, label %vec.epilog.iter.check199

vec.epilog.iter.check199:                         ; preds = %middle.block193
  %min.epilog.iters.check200 = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check200, label %vec.epilog.scalar.ph198.preheader, label %vec.epilog.ph201, !prof !171

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check199
  %vec.epilog.resume.val194 = phi i64 [ %n.vec188, %vec.epilog.iter.check199 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec202 = and i64 %i.bd, 4294967292           ; 4 uses
  %i.bl = trunc nuw i64 %n.vec202 to i32
  %i.bm = shl nuw nsw i64 %n.vec202, 1
  %i.bn = getelementptr i8, ptr %storemerge.i, i64 %i.bm ; 2 uses
  %broadcast.splatinsert203 = insertelement <4 x i16> poison, i16 %rev.i.i, i64 0
  %broadcast.splat204 = shufflevector <4 x i16> %broadcast.splatinsert203, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph201
  %index206 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph201 ], [ %index.next208, %vec.epilog.vector.body205 ] ; 2 uses
  %i.bo = shl i64 %index206, 1
  %next.gep207 = getelementptr i8, ptr %storemerge.i, i64 %i.bo
  store <4 x i16> %broadcast.splat204, ptr %next.gep207, align 1
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.bp, label %vec.epilog.middle.block209, label %vec.epilog.vector.body205, !llvm.loop !150

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body205
  %cmp.n210 = icmp eq i64 %n.vec202, %i.bd
  br i1 %cmp.n210, label %.lr.ph95.preheader, label %vec.epilog.scalar.ph198.preheader

vec.epilog.scalar.ph198.preheader:                ; preds = %iter.check197, %vec.epilog.iter.check199, %vec.epilog.middle.block209
  %.05186.ph = phi i32 [ 0, %iter.check197 ], [ %i.bf, %vec.epilog.iter.check199 ], [ %i.bl, %vec.epilog.middle.block209 ]
  %.05285.ph = phi ptr [ %storemerge.i, %iter.check197 ], [ %i.bh, %vec.epilog.iter.check199 ], [ %i.bn, %vec.epilog.middle.block209 ]
  br label %vec.epilog.scalar.ph198

vec.epilog.scalar.ph198:                          ; preds = %vec.epilog.scalar.ph198.preheader, %vec.epilog.scalar.ph198
  %.05186 = phi i32 [ %i.bq, %vec.epilog.scalar.ph198 ], [ %.05186.ph, %vec.epilog.scalar.ph198.preheader ]
  %.05285 = phi ptr [ %i.br, %vec.epilog.scalar.ph198 ], [ %.05285.ph, %vec.epilog.scalar.ph198.preheader ] ; 2 uses
  store i16 %rev.i.i, ptr %.05285, align 1
  %i.bq = add nuw i32 %.05186, 1                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05285, i64 2 ; 2 uses
  %exitcond116.not = icmp eq i32 %i.bq, %3
  br i1 %exitcond116.not, label %.lr.ph95.preheader, label %vec.epilog.scalar.ph198, !llvm.loop !151

.lr.ph95.preheader:                               ; preds = %vec.epilog.scalar.ph198, %vec.epilog.middle.block209, %middle.block193
  %.lcssa = phi ptr [ %i.bn, %vec.epilog.middle.block209 ], [ %i.bh, %middle.block193 ], [ %i.br, %vec.epilog.scalar.ph198 ] ; 2 uses
  %i.bs = zext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa, i8 %.sroa.5.0.copyload, i64 %i.bs, i1 false), !tbaa !66
  %i.bt = zext i32 %3 to i64
  %scevgep = getelementptr i8, ptr %.lcssa, i64 %i.bt
  %i.bu = zext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 %.sroa.6.0.copyload, i64 %i.bu, i1 false), !tbaa !66
  br label %.loopexit

iter.check:                                       ; preds = %.lr.ph
  %wide.trip.count109 = zext i32 %3 to i64
  %min.iters.check133 = icmp ult i32 %3, 9
  br i1 %min.iters.check133, label %vec.epilog.scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bv = ptrtoaddr ptr %i.gk to i64
  %reass.sub = sub i64 %i.bv, %bc.resume.val127128
  %i.bw = getelementptr i8, ptr %bc.resume.val127, i64 %reass.sub
  %scevgep129 = getelementptr i8, ptr %i.bw, i64 %wide.trip.count
  %scevgep130 = getelementptr i8, ptr %2, i64 2
  %i.bx = shl nuw nsw i64 %wide.trip.count, 2
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %scevgep131 = getelementptr i8, ptr %i.by, i64 -1
  %bound0 = icmp ult ptr %i.gk, %scevgep131
  %bound1 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check134 = icmp ult i32 %3, 17
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %wide.trip.count, 15            ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 16, i64 %i.bz      ; 2 uses
  %n.vec136 = sub nsw i64 %wide.trip.count, %i.cb ; 4 uses
  %i.cc = getelementptr i8, ptr %i.gk, i64 %n.vec136
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph135, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next140, %vector.body137 ] ; 18 uses
  %next.gep139 = getelementptr i8, ptr %i.gk, i64 %index138
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index138
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 30
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 42
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 46
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 58
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 62
  %i.dj = load i8, ptr %i.ct, align 2, !tbaa !85, !alias.scope !172
  %i.dk = load i8, ptr %i.cu, align 2, !tbaa !85, !alias.scope !172
  %i.dl = load i8, ptr %i.cv, align 2, !tbaa !85, !alias.scope !172
  %i.dm = load i8, ptr %i.cw, align 2, !tbaa !85, !alias.scope !172
  %i.dn = load i8, ptr %i.cx, align 2, !tbaa !85, !alias.scope !172
  %i.do = load i8, ptr %i.cy, align 2, !tbaa !85, !alias.scope !172
  %i.dp = load i8, ptr %i.cz, align 2, !tbaa !85, !alias.scope !172
  %i.dq = load i8, ptr %i.da, align 2, !tbaa !85, !alias.scope !172
  %i.dr = load i8, ptr %i.db, align 2, !tbaa !85, !alias.scope !172
  %i.ds = load i8, ptr %i.dc, align 2, !tbaa !85, !alias.scope !172
  %i.dt = load i8, ptr %i.dd, align 2, !tbaa !85, !alias.scope !172
  %i.du = load i8, ptr %i.de, align 2, !tbaa !85, !alias.scope !172
  %i.dv = load i8, ptr %i.df, align 2, !tbaa !85, !alias.scope !172
  %i.dw = load i8, ptr %i.dg, align 2, !tbaa !85, !alias.scope !172
  %i.dx = load i8, ptr %i.dh, align 2, !tbaa !85, !alias.scope !172
  %i.dy = load i8, ptr %i.di, align 2, !tbaa !85, !alias.scope !172
  %i.dz = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 1
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 2
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 3
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 4
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 5
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 6
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 7
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 8
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 9
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 10
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 11
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 12
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 13
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 14
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 15
  store <16 x i8> %i.eo, ptr %next.gep139, align 1, !tbaa !66, !alias.scope !173, !noalias !172
  %index.next140 = add nuw i64 %index138, 16      ; 2 uses
  %i.ep = icmp eq i64 %index.next140, %n.vec136
  br i1 %i.ep, label %vec.epilog.iter.check, label %vector.body137, !llvm.loop !155

vec.epilog.iter.check:                            ; preds = %vector.body137
  %min.epilog.iters.check = icmp samesign ult i64 %i.cb, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph, label %vec.epilog.ph, !prof !174

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 8, i64 %i.eq
  %n.vec143 = sub nsw i64 %wide.trip.count, %i.es ; 3 uses
  %i.et = getelementptr i8, ptr %i.gk, i64 %n.vec143
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 10 uses
  %next.gep145 = getelementptr i8, ptr %i.gk, i64 %index144
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index144
  %i.ev = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.ew = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.ex = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.ey = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.ez = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.fa = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.fb = getelementptr [4 x i8], ptr %2, i64 %index144
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fd = getelementptr i8, ptr %i.ev, i64 6
  %i.fe = getelementptr i8, ptr %i.ew, i64 10
  %i.ff = getelementptr i8, ptr %i.ex, i64 14
  %i.fg = getelementptr i8, ptr %i.ey, i64 18
  %i.fh = getelementptr i8, ptr %i.ez, i64 22
  %i.fi = getelementptr i8, ptr %i.fa, i64 26
  %i.fj = getelementptr i8, ptr %i.fb, i64 30
  %i.fk = load i8, ptr %i.fc, align 2, !tbaa !85, !alias.scope !172
  %i.fl = load i8, ptr %i.fd, align 2, !tbaa !85, !alias.scope !172
  %i.fm = load i8, ptr %i.fe, align 2, !tbaa !85, !alias.scope !172
  %i.fn = load i8, ptr %i.ff, align 2, !tbaa !85, !alias.scope !172
  %i.fo = load i8, ptr %i.fg, align 2, !tbaa !85, !alias.scope !172
  %i.fp = load i8, ptr %i.fh, align 2, !tbaa !85, !alias.scope !172
  %i.fq = load i8, ptr %i.fi, align 2, !tbaa !85, !alias.scope !172
  %i.fr = load i8, ptr %i.fj, align 2, !tbaa !85, !alias.scope !172
  %i.fs = insertelement <8 x i8> poison, i8 %i.fk, i64 0
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 1
  %i.fu = insertelement <8 x i8> %i.ft, i8 %i.fm, i64 2
  %i.fv = insertelement <8 x i8> %i.fu, i8 %i.fn, i64 3
  %i.fw = insertelement <8 x i8> %i.fv, i8 %i.fo, i64 4
  %i.fx = insertelement <8 x i8> %i.fw, i8 %i.fp, i64 5
  %i.fy = insertelement <8 x i8> %i.fx, i8 %i.fq, i64 6
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fr, i64 7
  store <8 x i8> %i.fz, ptr %next.gep145, align 1, !tbaa !66, !alias.scope !173, !noalias !172
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.ga, label %vec.epilog.scalar.ph, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %bc.resume.val147 = phi i64 [ 0, %iter.check ], [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.memcheck ], [ %n.vec143, %vec.epilog.vector.body ] ; 4 uses
  %bc.resume.val148 = phi ptr [ %i.gk, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.gk, %vector.memcheck ], [ %i.et, %vec.epilog.vector.body ] ; 4 uses
  %bc.resume.val148150 = ptrtoaddr ptr %bc.resume.val148 to i64
  %i.gb = sub nsw i64 %wide.trip.count, %bc.resume.val147
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol

.lr.ph80.prol:                                    ; preds = %vec.epilog.scalar.ph, %.lr.ph80.prol
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %.lr.ph80.prol ], [ %bc.resume.val147, %vec.epilog.scalar.ph ] ; 2 uses
  %.478.prol = phi ptr [ %i.gf, %.lr.ph80.prol ], [ %bc.resume.val148, %vec.epilog.scalar.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph80.prol ], [ 0, %vec.epilog.scalar.ph ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106.prol
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !85
  store i8 %i.ge, ptr %.478.prol, align 1, !tbaa !66
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %i.gf = getelementptr i8, ptr %.478.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !157

.lr.ph80.prol.loopexit:                           ; preds = %.lr.ph80.prol, %vec.epilog.scalar.ph
  %.lcssa214.unr = phi ptr [ poison, %vec.epilog.scalar.ph ], [ %i.gf, %.lr.ph80.prol ]
  %indvars.iv106.unr = phi i64 [ %bc.resume.val147, %vec.epilog.scalar.ph ], [ %indvars.iv.next107.prol, %.lr.ph80.prol ]
  %.478.unr = phi ptr [ %bc.resume.val148, %vec.epilog.scalar.ph ], [ %i.gf, %.lr.ph80.prol ]
  %i.gg = sub nsw i64 %bc.resume.val147, %wide.trip.count
  %i.gh = icmp ugt i64 %i.gg, -8
  br i1 %i.gh, label %iter.check170, label %.lr.ph80

.lr.ph:                                           ; preds = %scalar.ph, %.lr.ph
  %indvars.iv = phi i64 [ %bc.resume.val, %scalar.ph ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.376 = phi ptr [ %bc.resume.val127, %scalar.ph ], [ %i.gk, %.lr.ph ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !11
  %rev.i.i68 = tail call noundef i16 @llvm.bswap.i16(i16 %i.gj)
  store i16 %rev.i.i68, ptr %.376, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = getelementptr i8, ptr %.376, i64 2      ; 9 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %.lr.ph, !llvm.loop !158

iter.check170:                                    ; preds = %.lr.ph80, %.lr.ph80.prol.loopexit
  %.lcssa214 = phi ptr [ %.lcssa214.unr, %.lr.ph80.prol.loopexit ], [ %i.mf, %.lr.ph80 ] ; 8 uses
  %wide.trip.count114 = zext i32 %3 to i64
  %min.iters.check158 = icmp ult i32 %3, 9
  br i1 %min.iters.check158, label %.lr.ph84.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check170
  %i.gl = xor i64 %bc.resume.val148150, -1
  %i.gm = ptrtoaddr ptr %.lcssa214 to i64
  %i.gn = getelementptr i8, ptr %bc.resume.val148, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gl
  %i.gp = getelementptr i8, ptr %i.go, i64 %wide.trip.count
  %scevgep151 = getelementptr i8, ptr %i.gp, i64 1
  %scevgep152 = getelementptr i8, ptr %2, i64 3
  %i.gq = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep153 = getelementptr i8, ptr %2, i64 %i.gq
  %bound0154 = icmp ult ptr %.lcssa214, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph84.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck149
  %min.iters.check160 = icmp ult i32 %3, 17
  br i1 %min.iters.check160, label %vec.epilog.ph174, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.gr = and i64 %wide.trip.count, 15            ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = select i1 %i.gs, i64 16, i64 %i.gr      ; 2 uses
  %n.vec162 = sub nsw i64 %wide.trip.count, %i.gt ; 4 uses
  %i.gu = getelementptr i8, ptr %.lcssa214, i64 %n.vec162
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next166, %vector.body163 ] ; 18 uses
  %next.gep165 = getelementptr i8, ptr %.lcssa214, i64 %index164
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index164
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 11
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 19
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 23
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 35
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 39
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hf, i64 43
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 47
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 55
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 59
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 63
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !65, !alias.scope !175
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !65, !alias.scope !175
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !65, !alias.scope !175
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !65, !alias.scope !175
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !65, !alias.scope !175
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !65, !alias.scope !175
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !65, !alias.scope !175
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !65, !alias.scope !175
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !65, !alias.scope !175
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !65, !alias.scope !175
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !65, !alias.scope !175
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !65, !alias.scope !175
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !65, !alias.scope !175
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !65, !alias.scope !175
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !65, !alias.scope !175
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !65, !alias.scope !175
  %i.ir = insertelement <16 x i8> poison, i8 %i.ib, i64 0
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 1
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 2
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 3
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 4
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 5
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 6
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 7
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 8
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 9
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 10
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 11
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 12
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 13
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 14
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 15
  store <16 x i8> %i.jg, ptr %next.gep165, align 1, !tbaa !66, !alias.scope !176, !noalias !175
  %index.next166 = add nuw i64 %index164, 16      ; 2 uses
  %i.jh = icmp eq i64 %index.next166, %n.vec162
  br i1 %i.jh, label %vec.epilog.iter.check172, label %vector.body163, !llvm.loop !162

vec.epilog.iter.check172:                         ; preds = %vector.body163
  %min.epilog.iters.check173 = icmp samesign ult i64 %i.gt, 9
  br i1 %min.epilog.iters.check173, label %.lr.ph84.preheader, label %vec.epilog.ph174, !prof !174

.lr.ph84.preheader:                               ; preds = %vec.epilog.vector.body176, %iter.check170, %vector.memcheck149, %vec.epilog.iter.check172
  %indvars.iv111.ph = phi i64 [ 0, %iter.check170 ], [ 0, %vector.memcheck149 ], [ %n.vec162, %vec.epilog.iter.check172 ], [ %n.vec175, %vec.epilog.vector.body176 ] ; 4 uses
  %.582.ph = phi ptr [ %.lcssa214, %iter.check170 ], [ %.lcssa214, %vector.memcheck149 ], [ %i.gu, %vec.epilog.iter.check172 ], [ %i.js, %vec.epilog.vector.body176 ] ; 2 uses
  %i.ji = sub nsw i64 %wide.trip.count, %indvars.iv111.ph
  %xtraiter216 = and i64 %i.ji, 7                 ; 2 uses
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol

.lr.ph84.prol:                                    ; preds = %.lr.ph84.preheader, %.lr.ph84.prol
  %indvars.iv111.prol = phi i64 [ %indvars.iv.next112.prol, %.lr.ph84.prol ], [ %indvars.iv111.ph, %.lr.ph84.preheader ] ; 2 uses
  %.582.prol = phi ptr [ %i.jm, %.lr.ph84.prol ], [ %.582.ph, %.lr.ph84.preheader ] ; 2 uses
  %prol.iter218 = phi i64 [ %prol.iter218.next, %.lr.ph84.prol ], [ 0, %.lr.ph84.preheader ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv111.prol
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !65
  store i8 %i.jl, ptr %.582.prol, align 1, !tbaa !66
  %indvars.iv.next112.prol = add nuw nsw i64 %indvars.iv111.prol, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.582.prol, i64 1 ; 2 uses
  %prol.iter218.next = add i64 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i64 %prol.iter218.next, %xtraiter216
  br i1 %prol.iter218.cmp.not, label %.lr.ph84.prol.loopexit, label %.lr.ph84.prol, !llvm.loop !163

.lr.ph84.prol.loopexit:                           ; preds = %.lr.ph84.prol, %.lr.ph84.preheader
  %indvars.iv111.unr = phi i64 [ %indvars.iv111.ph, %.lr.ph84.preheader ], [ %indvars.iv.next112.prol, %.lr.ph84.prol ]
  %.582.unr = phi ptr [ %.582.ph, %.lr.ph84.preheader ], [ %i.jm, %.lr.ph84.prol ]
  %i.jn = sub nsw i64 %indvars.iv111.ph, %wide.trip.count
  %i.jo = icmp ugt i64 %i.jn, -8
  br i1 %i.jo, label %.loopexit, label %.lr.ph84

vec.epilog.ph174:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check172
  %vec.epilog.resume.val168 = phi i64 [ %n.vec162, %vec.epilog.iter.check172 ], [ 0, %vector.main.loop.iter.check159 ]
  %i.jp = and i64 %wide.trip.count, 7             ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = select i1 %i.jq, i64 8, i64 %i.jp
  %n.vec175 = sub nsw i64 %wide.trip.count, %i.jr ; 3 uses
  %i.js = getelementptr i8, ptr %.lcssa214, i64 %n.vec175
  br label %vec.epilog.vector.body176

vec.epilog.vector.body176:                        ; preds = %vec.epilog.vector.body176, %vec.epilog.ph174
  %index177 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph174 ], [ %index.next179, %vec.epilog.vector.body176 ] ; 10 uses
  %next.gep178 = getelementptr i8, ptr %.lcssa214, i64 %index177
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index177
  %i.ju = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.jv = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.jw = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.jx = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.jy = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.jz = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.ka = getelementptr [4 x i8], ptr %2, i64 %index177
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  %i.kc = getelementptr i8, ptr %i.ju, i64 7
  %i.kd = getelementptr i8, ptr %i.jv, i64 11
  %i.ke = getelementptr i8, ptr %i.jw, i64 15
  %i.kf = getelementptr i8, ptr %i.jx, i64 19
  %i.kg = getelementptr i8, ptr %i.jy, i64 23
  %i.kh = getelementptr i8, ptr %i.jz, i64 27
  %i.ki = getelementptr i8, ptr %i.ka, i64 31
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !65, !alias.scope !175
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !65, !alias.scope !175
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !65, !alias.scope !175
  %i.km = load i8, ptr %i.ke, align 1, !tbaa !65, !alias.scope !175
  %i.kn = load i8, ptr %i.kf, align 1, !tbaa !65, !alias.scope !175
  %i.ko = load i8, ptr %i.kg, align 1, !tbaa !65, !alias.scope !175
  %i.kp = load i8, ptr %i.kh, align 1, !tbaa !65, !alias.scope !175
  %i.kq = load i8, ptr %i.ki, align 1, !tbaa !65, !alias.scope !175
  %i.kr = insertelement <8 x i8> poison, i8 %i.kj, i64 0
  %i.ks = insertelement <8 x i8> %i.kr, i8 %i.kk, i64 1
  %i.kt = insertelement <8 x i8> %i.ks, i8 %i.kl, i64 2
  %i.ku = insertelement <8 x i8> %i.kt, i8 %i.km, i64 3
  %i.kv = insertelement <8 x i8> %i.ku, i8 %i.kn, i64 4
  %i.kw = insertelement <8 x i8> %i.kv, i8 %i.ko, i64 5
  %i.kx = insertelement <8 x i8> %i.kw, i8 %i.kp, i64 6
  %i.ky = insertelement <8 x i8> %i.kx, i8 %i.kq, i64 7
  store <8 x i8> %i.ky, ptr %next.gep178, align 1, !tbaa !66, !alias.scope !176, !noalias !175
  %index.next179 = add nuw i64 %index177, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next179, %n.vec175
  br i1 %i.kz, label %.lr.ph84.preheader, label %vec.epilog.vector.body176, !llvm.loop !164

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.7, %.lr.ph80 ], [ %indvars.iv106.unr, %.lr.ph80.prol.loopexit ] ; 9 uses
  %.478 = phi ptr [ %i.mf, %.lr.ph80 ], [ %.478.unr, %.lr.ph80.prol.loopexit ] ; 9 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !85
  store i8 %i.lc, ptr %.478, align 1, !tbaa !66
  %i.ld = getelementptr i8, ptr %.478, i64 1
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !85
  store i8 %i.lg, ptr %i.ld, align 1, !tbaa !66
  %i.lh = getelementptr i8, ptr %.478, i64 2
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 10
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !85
  store i8 %i.lk, ptr %i.lh, align 1, !tbaa !66
  %i.ll = getelementptr i8, ptr %.478, i64 3
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv106
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 14
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !85
end_hunk_0
