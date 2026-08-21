inline.NumInlined: 589
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed12RawImageData22transferBadPixelsToMapEv:bb.a
  %i.aq = mul i32 %i.ap, %i.am
  %i.ar = lshr i32 %i.al, 3
  %i.as = and i32 %i.ar, 8191
  %i.at = add i32 %i.aq, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !97
  %i.ay = trunc nuw i32 %i.ao to i8
  %i.az = or i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 4 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ag
  br i1 %i.bb, label %._crit_edge, label %bb.g

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.f, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed12RawImageData12fixBadPixelsEv(ptr noundef nonnull align 8 dereferenceable(624) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.rawspeed::RawImageWorker", align 8 ; 7 uses
  tail call void @_ZN8rawspeed12RawImageData22transferBadPixelsToMapEv(ptr noundef nonnull align 8 dereferenceable(624) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.0.i.i = load i32, ptr %.0.in.i.i, align 4, !tbaa !137 ; 3 uses
  %i.f = tail call i32 @rawspeed_get_number_of_processor_cores() ; 4 uses
  %i.g = add i32 %.0.i.i, -1
  %i.h = add i32 %i.g, %i.f
  %i.i = sdiv i32 %i.h, %i.f                      ; 2 uses
  %i.j = icmp sgt i32 %i.f, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.024.i = phi i32 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.n = mul nsw i32 %.024.i, %i.i
  %.sroa.speculated14.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %i.n)
  %i.o = add nuw nsw i32 %.024.i, 1               ; 3 uses
  %i.p = mul nsw i32 %i.o, %i.i
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %0, ptr %1, align 8, !tbaa !138
  store i16 2, ptr %i.k, align 8, !tbaa !142
  store i32 %.sroa.speculated14.i, ptr %i.l, align 4, !tbaa !143
  store i32 %.sroa.speculated.i, ptr %i.m, align 8, !tbaa !144
  call void @_ZN8rawspeed14RawImageWorker11performTaskEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %exitcond.not.i = icmp eq i32 %i.o, %i.f
  br i1 %exitcond.not.i, label %_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb.exit, label %bb.c, !llvm.loop !145

_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed12RawImageData11startWorkerENS_14RawImageWorker18RawImageWorkerTaskEb(ptr noundef nonnull align 8 dereferenceable(624) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.rawspeed::RawImageWorker", align 8 ; 7 uses
  %i.a = and i16 %1, 4096
  %.not.i = icmp eq i16 %i.a, 0
  %i.b = and i1 %2, %.not.i
  %.0.in.v.i = select i1 %i.b, i64 44, i64 612
  %.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !137 ; 3 uses
  %i.c = tail call i32 @rawspeed_get_number_of_processor_cores() ; 4 uses
  %i.d = add i32 %.0.i, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = sdiv i32 %i.e, %i.c                      ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.k = mul nsw i32 %.024, %i.f
  %.sroa.speculated14 = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.k)
  %i.l = add nuw nsw i32 %.024, 1                 ; 3 uses
  %i.m = mul nsw i32 %i.l, %i.f
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !138
  store i16 %1, ptr %i.h, align 8, !tbaa !142
  store i32 %.sroa.speculated14, ptr %i.i, align 4, !tbaa !143
  store i32 %.sroa.speculated, ptr %i.j, align 8, !tbaa !144
  call void @_ZN8rawspeed14RawImageWorker11performTaskEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %exitcond.not = icmp eq i32 %i.l, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !145
}

declare i32 @rawspeed_get_number_of_processor_cores() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed12RawImageData18fixBadPixelsThreadEii(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i32, ptr %i.e, align 8, !tbaa !132  ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp slt i32 %1, %2
  %i.j = icmp sgt i32 %i.b, 16
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %.preheader42.preheader, label %._crit_edge55.split

.preheader42.preheader:                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.l = load i32, ptr %i.k, align 4, !tbaa !133
  %i.m = add nuw nsw i32 %i.b, 15
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.f to i64                ; 4 uses
  %i.p = zext i32 %1 to i64
  %i.q = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.preheader42

.preheader42:                                     ; preds = %.preheader42.preheader, %._crit_edge
  %indvars.iv65 = phi i64 [ %i.p, %.preheader42.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 11 uses
  %i.r = icmp samesign ult i64 %indvars.iv65, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = mul nuw nsw i64 %indvars.iv65, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.v = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.w = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.x = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.y = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.z = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.aa = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.ab = trunc nuw nsw i64 %indvars.iv65 to i32
  br label %.lr.ph.preheader.i.i.i.i

._crit_edge55.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread"
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next66 to i32
  %i.ad = icmp sgt i32 %2, %i.ac
  br i1 %i.ad, label %.preheader42, label %._crit_edge55.split, !llvm.loop !146

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader42, %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread"
  %indvars.iv61 = phi i64 [ 0, %.preheader42 ], [ %indvars.iv.next62, %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread" ] ; 4 uses
  %i.ae = icmp samesign ule i64 %indvars.iv61, %i.o
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = shl nuw nsw i64 %indvars.iv61, 2        ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 4                ; 2 uses
  %i.ah = icmp samesign ule i64 %i.ag, %i.o
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af ; 5 uses
  %.029.val32.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !97
  %.not35.i.i.i.i = icmp eq i8 %.029.val32.i.i.i.i, 0
  br i1 %.not35.i.i.i.i, label %bb.b, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %.val31.i.i.i.i = load i8, ptr %i.ak, align 1, !tbaa !97
  %.not36.i.i.i.i = icmp eq i8 %.val31.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %bb.c, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %.val30.i.i.i.i = load i8, ptr %i.al, align 1, !tbaa !97
  %.not37.i.i.i.i = icmp eq i8 %.val30.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.d, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 3 ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.am, align 1, !tbaa !97
  %.not38.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  br i1 %.not38.i.i.i.i, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread", label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"

"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit": ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.preheader.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %i.ak, %bb.b ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ], [ %i.al, %bb.c ], [ %i.am, %bb.d ]
  %i.an = icmp eq ptr %i.ai, %.028.i.i.i.i
  br i1 %i.an, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread", label %.preheader41

.preheader41:                                     ; preds = %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"
  %i.ao = shl nuw nsw i64 %indvars.iv61, 5
  br label %.preheader

.preheader:                                       ; preds = %.preheader41, %bb.t
  %indvars.iv = phi i64 [ 0, %.preheader41 ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.ap = or disjoint i64 %indvars.iv, %i.af      ; 2 uses
  %i.aq = icmp samesign ule i64 %i.ap, %i.o
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ap ; 8 uses
  %i.as = shl nuw nsw i64 %indvars.iv, 3
  %i.at = add nuw nsw i64 %i.as, %i.ao            ; 8 uses
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !97
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = and i32 %i.av, 1
  %.not.not = icmp eq i32 %i.aw, 0
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ax = load ptr, ptr %0, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = trunc nuw nsw i64 %i.at to i32
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.ba, i32 noundef %i.u, i32 noundef 0), !call_target !147
  %.pre = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre74 = zext i8 %.pre to i32
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  %.pre-phi = phi i32 [ %i.av, %.preheader ], [ %.pre74, %bb.e ] ; 2 uses
  %i.bb = and i32 %.pre-phi, 2
  %.not.not.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %0, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = trunc i64 %i.at to i32
  %i.bg = or disjoint i32 %i.bf, 1
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.bg, i32 noundef %i.v, i32 noundef 0), !call_target !147
  %.pre68.a = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre75.a = zext i8 %.pre68.a to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi76.a = phi i32 [ %.pre75.a, %bb.g ], [ %.pre-phi, %bb.f ] ; 2 uses
  %i.bh = and i32 %.pre-phi76.a, 4
  %.not.not.2 = icmp eq i32 %i.bh, 0
  br i1 %.not.not.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %0, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.at to i32
  %i.bm = or disjoint i32 %i.bl, 2
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.bm, i32 noundef %i.w, i32 noundef 0), !call_target !147
  %.pre69.a = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre77.a = zext i8 %.pre69.a to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi78.a = phi i32 [ %.pre77.a, %bb.i ], [ %.pre-phi76.a, %bb.h ] ; 2 uses
  %i.bn = and i32 %.pre-phi78.a, 8
  %.not.not.3 = icmp eq i32 %i.bn, 0
  br i1 %.not.not.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %0, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = trunc i64 %i.at to i32
  %i.bs = or disjoint i32 %i.br, 3
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.bs, i32 noundef %i.x, i32 noundef 0), !call_target !147
  %.pre70 = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre79.a = zext i8 %.pre70 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi80.a = phi i32 [ %.pre79.a, %bb.k ], [ %.pre-phi78.a, %bb.j ] ; 2 uses
  %i.bt = and i32 %.pre-phi80.a, 16
  %.not.not.4 = icmp eq i32 %i.bt, 0
  br i1 %.not.not.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %0, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.at to i32
  %i.by = or disjoint i32 %i.bx, 4
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.by, i32 noundef %i.y, i32 noundef 0), !call_target !147
  %.pre71 = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre81.a = zext i8 %.pre71 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi82.a = phi i32 [ %.pre81.a, %bb.m ], [ %.pre-phi80.a, %bb.l ] ; 2 uses
  %i.bz = and i32 %.pre-phi82.a, 32
  %.not.not.5 = icmp eq i32 %i.bz, 0
  br i1 %.not.not.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %0, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = trunc i64 %i.at to i32
  %i.ce = or disjoint i32 %i.cd, 5
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.ce, i32 noundef %i.z, i32 noundef 0), !call_target !147
  %.pre72 = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre83 = zext i8 %.pre72 to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi84 = phi i32 [ %.pre83, %bb.o ], [ %.pre-phi82.a, %bb.n ] ; 2 uses
  %i.cf = and i32 %.pre-phi84, 64
  %.not.not.6 = icmp eq i32 %i.cf, 0
  br i1 %.not.not.6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %0, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = trunc i64 %i.at to i32
  %i.ck = or disjoint i32 %i.cj, 6
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.ck, i32 noundef %i.aa, i32 noundef 0), !call_target !147
  %.pre73 = load i8, ptr %i.ar, align 1, !tbaa !97
  %.pre85 = zext i8 %.pre73 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi86 = phi i32 [ %.pre85, %bb.q ], [ %.pre-phi84, %bb.p ]
  %i.cl = and i32 %.pre-phi86, 128
  %.not.not.7 = icmp eq i32 %i.cl, 0
  br i1 %.not.not.7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %0, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = trunc i64 %i.at to i32
  %i.cq = or disjoint i32 %i.cp, 7
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %i.cq, i32 noundef %i.ab, i32 noundef 0), !call_target !147
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread", label %.preheader, !llvm.loop !6920

"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit.thread": ; preds = %bb.t, %bb.d, %"_ZSt6all_ofIPhZN8rawspeed12RawImageData18fixBadPixelsThreadEiiE3$_0EbT_S4_T0_.exit"
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i, !llvm.loop !6921
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_ZN8rawspeed12RawImageData9clearAreaENS_12iRectangle2DE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, i64 %1, i64 %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.012.0.extract.trunc14 = trunc i64 %1 to i32 ; 2 uses
  %.sroa.415.0.extract.shift16 = lshr i64 %1, 32
  %.sroa.415.0.extract.trunc17 = trunc nuw i64 %.sroa.415.0.extract.shift16 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc22 = trunc i64 %2 to i32
  %.sroa.1223.8.extract.shift24 = lshr i64 %2, 32
  %.sroa.1223.8.extract.trunc25 = trunc nuw i64 %.sroa.1223.8.extract.shift24 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add nsw i32 %.sroa.7.8.extract.trunc22, %.sroa.012.0.extract.trunc14
  %i.d = add nsw i32 %.sroa.1223.8.extract.trunc25, %.sroa.415.0.extract.trunc17
  %.sroa.5.8.extract.trunc = trunc i64 %i.b to i32
  %.sroa.5.12.extract.shift = lshr i64 %i.b, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32 ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %.sroa.012.0.extract.trunc14, i32 0) ; 4 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %.sroa.415.0.extract.trunc17, i32 0) ; 6 uses
  %.sroa.speculated13.i = tail call i32 @llvm.smin.i32(i32 %.sroa.5.8.extract.trunc, i32 %i.c)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.5.12.extract.trunc, i32 %i.d) ; 3 uses
  %i.g = sub nsw i32 %.sroa.speculated13.i, %i.e  ; 2 uses
  %i.h = sub nsw i32 %.sroa.speculated.i, %i.f    ; 3 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.g, i1 false)
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.h, i1 false)
  %i.k = mul i32 %i.j, %i.i
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101, !noalias !6922
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.p = load i32, ptr %i.o, align 8, !tbaa !100, !noalias !6922 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.r = load i32, ptr %i.q, align 8, !tbaa !131, !noalias !6922
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13, !noalias !6922
  %i.v = ashr i32 %i.u, 1                         ; 4 uses
  %i.w = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
end_hunk_0
