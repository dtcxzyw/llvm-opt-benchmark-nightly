Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfMisc?download=true
inline.NumInlined: 360
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_510numSamplesEiii:bb.a

bb.f:                                             ; preds = %bb.e
  %i.g = xor i32 %1, -1
  %i.h = add nuw i32 %0, %i.g
  %i.i = udiv i32 %i.h, %0
  %i.j = sub nsw i32 0, %i.i
  br label %_ZN9Imath_3_14divpEii.exit

bb.g:                                             ; preds = %bb.e
  %i.k = sub nsw i32 0, %0
  %i.l = xor i32 %0, -1
  %i.m = sub nsw i32 %i.l, %1
  %i.n = udiv i32 %i.m, %i.k
  br label %_ZN9Imath_3_14divpEii.exit

_ZN9Imath_3_14divpEii.exit:                       ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %i.o = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.c ], [ %i.j, %bb.f ], [ %i.n, %bb.g ] ; 2 uses
  %i.p = icmp sgt i32 %2, -1
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN9Imath_3_14divpEii.exit
  br i1 %i.b, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = udiv i32 %2, %0
  br label %_ZN9Imath_3_14divpEii.exit9

bb.j:                                             ; preds = %bb.h
  %i.r = sub nsw i32 0, %0
  %i.s = udiv i32 %2, %i.r
  %i.t = sub nsw i32 0, %i.s
  br label %_ZN9Imath_3_14divpEii.exit9

bb.k:                                             ; preds = %_ZN9Imath_3_14divpEii.exit
  br i1 %i.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = xor i32 %2, -1
  %i.v = add nuw i32 %0, %i.u
  %i.w = udiv i32 %i.v, %0
  %i.x = sub nsw i32 0, %i.w
  br label %_ZN9Imath_3_14divpEii.exit9

bb.m:                                             ; preds = %bb.k
  %i.y = sub nsw i32 0, %0
  %i.z = xor i32 %0, -1
  %i.aa = sub nsw i32 %i.z, %2
  %i.ab = udiv i32 %i.aa, %i.y
  br label %_ZN9Imath_3_14divpEii.exit9

_ZN9Imath_3_14divpEii.exit9:                      ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  %i.ac = phi i32 [ %i.t, %bb.j ], [ %i.q, %bb.i ], [ %i.x, %bb.l ], [ %i.ab, %bb.m ]
  %i.ad = mul nsw i32 %i.o, %0
  %i.ae = icmp sge i32 %i.ad, %1
  %i.af = zext i1 %i.ae to i32
  %i.ag = sub i32 %i.af, %i.o
  %i.ah = add i32 %i.ag, %i.ac
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_517bytesPerLineTableERKNS_6HeaderERSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !guid !86 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29
  %i.h = add i32 %i.e, 1
  %i.i = sub i32 %i.h, %i.g
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw nsw i64 %i.j, %i.q
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.s)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ugt i64 %i.q, %i.j
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.v = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.w = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %.not3843 = icmp eq ptr %i.v, %i.w
  br i1 %.not3843, label %._crit_edge46, label %.lr.ph45

._crit_edge46:                                    ; preds = %._crit_edge, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.x = load i32, ptr %i.f, align 4, !tbaa !29   ; 2 uses
  %i.y = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %.not47 = icmp sgt i32 %i.x, %i.y
  br i1 %.not47, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge46
  %i.z = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.aa = add i32 %i.y, 1
  %i.ab = sub i32 %i.aa, %i.x                     ; 2 uses
  %wide.trip.count65 = zext i32 %i.ab to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ab, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52
  %n.vec = and i64 %wide.trip.count65, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi78 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x i64>, ptr %i.ac, align 8, !tbaa !36
  %wide.load79 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !36
  %i.ae = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.af = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi78, <2 x i64> %wide.load79) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.ae, <2 x i64> %i.af)
  %i.ah = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  br i1 %cmp.n, label %._crit_edge53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph52, %middle.block
  %indvars.iv62.ph = phi i64 [ 0, %.lr.ph52 ], [ %n.vec, %middle.block ]
  %.02948.ph = phi i64 [ 0, %.lr.ph52 ], [ %i.ah, %middle.block ]
  br label %scalar.ph

.lr.ph45:                                         ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit, %._crit_edge
  %.sroa.033.044 = phi ptr [ %i.bv, %._crit_edge ], [ %i.v, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 288
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !43 ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %.lr.ph45
  %i.al = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull @.str.7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.al) #19
  resume { ptr, i32 } %i.am

switch.lookup:                                    ; preds = %.lr.ph45
  %i.an = zext nneg i32 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN27OpenImageIO_v3_1_Imf__3_3_521bytesPerDeepLineTableERKNS_6HeaderEiiPKciiRSt6vectorImSaImEE, i64 %i.an
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !44
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !45
  %i.aq = add i32 %i.ao, 1
  %i.ar = sub i32 %i.aq, %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %switch.ext, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 292
  %i.av = load i32, ptr %i.au, align 4, !tbaa !46
  %i.aw = sext i32 %i.av to i64
  %i.ax = udiv i64 %i.at, %i.aw                   ; 2 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !29  ; 4 uses
  %i.az = load i32, ptr %i.d, align 4, !tbaa !28  ; 2 uses
  %.not3240 = icmp sgt i32 %i.ay, %i.az
  br i1 %.not3240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.033.044, i64 296
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %.fr54 = freeze i32 %i.bb                       ; 8 uses
  %i.bc = icmp sgt i32 %.fr54, -1
  %i.bd = sub nsw i32 0, %.fr54                   ; 2 uses
  %i.be = xor i32 %.fr54, -1
  %i.bf = add i32 %i.az, 1
  %i.bg = sub i32 %i.bf, %i.ay
  %wide.trip.count60 = zext i32 %i.bg to i64      ; 2 uses
  br i1 %i.bc, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %.03141.us = phi i32 [ %i.bu, %bb.k ], [ %i.ay, %.lr.ph ] ; 5 uses
  %i.bh = icmp sgt i32 %.03141.us, -1
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.bi = xor i32 %.03141.us, -1
  %i.bj = add nuw i32 %.fr54, %i.bi
  %i.bk = udiv i32 %i.bj, %.fr54
  %i.bl = sub nsw i32 0, %i.bk
  br label %_ZN9Imath_3_14modpEii.exit.us

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.bm = udiv i32 %.03141.us, %.fr54
  br label %_ZN9Imath_3_14modpEii.exit.us

_ZN9Imath_3_14modpEii.exit.us:                    ; preds = %bb.i, %bb.h
  %i.bn = phi i32 [ %i.bl, %bb.h ], [ %i.bm, %bb.i ]
  %i.bo = mul nsw i32 %i.bn, %.fr54
  %i.bp = icmp eq i32 %.03141.us, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9Imath_3_14modpEii.exit.us
  %i.bq = load ptr, ptr %1, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv57 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %i.bt = add i64 %i.bs, %i.ax
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9Imath_3_14modpEii.exit.us
  %i.bu = add nsw i32 %.03141.us, 1
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.o, %bb.k, %switch.lookup
  %i.bv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.033.044) #21 ; 2 uses
  %i.bw = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %.not38 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not38, label %._crit_edge46, label %.lr.ph45, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph ] ; 2 uses
  %.03141 = phi i32 [ %i.cj, %bb.o ], [ %i.ay, %.lr.ph ] ; 5 uses
  %i.bx = icmp sgt i32 %.03141, -1
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split
  %i.by = udiv i32 %.03141, %i.bd
  %i.bz = sub nsw i32 0, %i.by
  br label %_ZN9Imath_3_14modpEii.exit

bb.m:                                             ; preds = %.lr.ph.split
  %i.ca = sub nsw i32 %i.be, %.03141
  %i.cb = udiv i32 %i.ca, %i.bd
  br label %_ZN9Imath_3_14modpEii.exit

_ZN9Imath_3_14modpEii.exit:                       ; preds = %bb.l, %bb.m
  %i.cc = phi i32 [ %i.bz, %bb.l ], [ %i.cb, %bb.m ]
  %i.cd = mul nsw i32 %i.cc, %.fr54
  %i.ce = icmp eq i32 %.03141, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN9Imath_3_14modpEii.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.ci = add i64 %i.ch, %i.ax
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %_ZN9Imath_3_14modpEii.exit, %bb.n
  %i.cj = add nsw i32 %.03141, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count60
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !83

._crit_edge53:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge46
  %.029.lcssa = phi i64 [ 0, %._crit_edge46 ], [ %i.ah, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i64 %.029.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 2 uses
  %.02948 = phi i64 [ %spec.select, %scalar.ph ], [ %.02948.ph, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv62
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !36
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.02948, i64 %i.cl) ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %._crit_edge53, label %scalar.ph, !llvm.loop !85
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_521bytesPerDeepLineTableERKNS_6HeaderEiiPKciiRSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !guid !92 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 3 uses
  %i.c = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.d = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %.not6169 = icmp eq ptr %i.c, %i.d
  br i1 %.not6169, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %1, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = sext i32 %5 to i64
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge68, %bb.a
  %.not72 = icmp sgt i32 %1, %2
  br i1 %.not72, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = load ptr, ptr %6, align 8, !tbaa !34     ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 3 uses
  %i.n = sext i32 %i.k to i64                     ; 2 uses
  %i.o = add i32 %2, 1
  %i.p = sub i32 %2, %1                           ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph75
  %n.vec = and i64 %i.r, 8589934588               ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.m
  %invariant.op = sub i64 %i.m, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi92 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %.reass = add i64 %index, %invariant.op
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !36
  %wide.load93 = load <2 x i64>, ptr %i.u, align 8, !tbaa !36
  %i.v = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.w = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi92, <2 x i64> %wide.load93) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.v, <2 x i64> %i.w)
  %i.y = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge76, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph75, %middle.block
  %indvars.iv82.ph = phi i64 [ %i.m, %.lr.ph75 ], [ %i.s, %middle.block ]
  %.05073.ph = phi i64 [ 0, %.lr.ph75 ], [ %i.y, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %.lr.ph, %._crit_edge68
  %.sroa.056.070 = phi ptr [ %i.c, %.lr.ph ], [ %i.bj, %._crit_edge68 ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.056.070, i64 288
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.056.070, i64 296
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.056.070, i64 292
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46 ; 2 uses
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 3
  br i1 %i.af, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull @.str.7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ag) #19
  resume { ptr, i32 } %i.ah

switch.lookup:                                    ; preds = %bb.b
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 false) ; 3 uses
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true) ; 3 uses
  %i.ak = zext nneg i32 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN27OpenImageIO_v3_1_Imf__3_3_521bytesPerDeepLineTableERKNS_6HeaderEiiPKciiRSt6vectorImSaImEE, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.al = add i32 %i.e, %i.aj                     ; 2 uses
  %i.am = srem i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.al, %i.am                ; 2 uses
  %i.ao = srem i32 %2, %i.aj
  %i.ap = sub nsw i32 %2, %i.ao                   ; 2 uses
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !45
  %i.ar = add i32 %i.ai, -1
  %i.as = add i32 %i.ar, %i.aq                    ; 2 uses
  %i.at = srem i32 %i.as, %i.ai
  %i.au = sub i32 %i.as, %i.at                    ; 2 uses
  %i.av = load i32, ptr %i.f, align 4, !tbaa !44  ; 2 uses
  %i.aw = srem i32 %i.av, %i.ai
  %i.ax = sub nsw i32 %i.av, %i.aw                ; 2 uses
  %.not5466 = icmp sgt i32 %i.an, %i.ap
  br i1 %.not5466, label %._crit_edge68, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %switch.lookup
  %.not5563 = icmp sgt i32 %i.au, %i.ax
  %i.ay = load ptr, ptr %6, align 8, !tbaa !34
  br i1 %.not5563, label %._crit_edge68, label %.preheader62.preheader

.preheader62.preheader:                           ; preds = %.preheader62.lr.ph
  %i.az = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ba = sext i32 %i.au to i64
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %smax = zext nneg i32 %i.bb to i64
  %i.bc = sext i32 %i.ax to i64
  %i.bd = sext i32 %i.an to i64
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %smax79 = zext nneg i32 %i.be to i64
  %i.bf = sext i32 %i.az to i64
  %i.bg = sext i32 %i.ap to i64
  br label %.preheader62

.preheader62:                                     ; preds = %.preheader62.preheader, %._crit_edge
  %indvars.iv80 = phi i64 [ %i.bd, %.preheader62.preheader ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %i.bh = mul nsw i64 %indvars.iv80, %i.g
  %i.bi = getelementptr inbounds i8, ptr %3, i64 %i.bh
  br label %bb.f

._crit_edge68:                                    ; preds = %._crit_edge, %.preheader62.lr.ph, %switch.lookup
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.056.070) #21 ; 2 uses
  %i.bk = tail call ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %.not61 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not61, label %.preheader, label %bb.b, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.f
  %i.bl = sub nsw i64 %indvars.iv80, %i.bf
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = add i64 %i.bn, %i.bu
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !36
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, %smax79 ; 2 uses
  %.not54 = icmp sgt i64 %indvars.iv.next81, %i.bg
  br i1 %.not54, label %._crit_edge68, label %.preheader62, !llvm.loop !89

bb.f:                                             ; preds = %.preheader62, %bb.f
  %indvars.iv = phi i64 [ %i.ba, %.preheader62 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.05264 = phi i64 [ 0, %.preheader62 ], [ %i.bu, %bb.f ]
  %i.bp = mul nsw i64 %indvars.iv, %i.h
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %switch.ext, %i.bs
  %i.bu = add i64 %i.bt, %.05264                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %smax ; 2 uses
  %.not55 = icmp sgt i64 %indvars.iv.next, %i.bc
  br i1 %.not55, label %._crit_edge, label %bb.f, !llvm.loop !90

._crit_edge76:                                    ; preds = %scalar.ph, %middle.block, %.preheader
  %.050.lcssa = phi i64 [ 0, %.preheader ], [ %i.y, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i64 %.050.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %scalar.ph ], [ %indvars.iv82.ph, %scalar.ph.preheader ] ; 2 uses
end_hunk_0
