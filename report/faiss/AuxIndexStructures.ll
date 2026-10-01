Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/AuxIndexStructures?download=true
inline.NumInlined: 296
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5faiss24RangeSearchPartialResult8set_limsEv:bb.a
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !64
  %i.w = load i64, ptr %i.t, align 8, !tbaa !77
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.w
  store i64 %i.v, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !64
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !64
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !77
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ai
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.05 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !64
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !77
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ao
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !22
  %i.aq = add nuw i64 %.05, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !2
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #17

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(ptr, i32) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss24RangeSearchPartialResult11copy_resultEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.bg, %bb.e ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 2 uses
  %.01213 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.014 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !72   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = load i64, ptr %i.h, align 8, !tbaa !77
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not27.i = icmp eq i64 %i.j, 0
  br i1 %.not27.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load i64, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.x = udiv i64 %.01213, %i.w                   ; 3 uses
  %i.y = mul i64 %i.x, %i.w                       ; 0 uses
  %.recomposed = urem i64 %.01213, %i.w           ; 4 uses
  %i.z = add i64 %.recomposed, %i.j
  %i.aa = icmp ult i64 %i.z, %i.w
  %i.ab = sub i64 %i.w, %.recomposed
  %i.ac = select i1 %i.aa, i64 %i.j, i64 %i.ab    ; 5 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %i.ae, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4.0.copyload.peel.i = load ptr, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.peel.i, i64 %.recomposed
  %i.ag = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.af, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.peel.i, i64 %.recomposed
  %i.ai = shl i64 %i.ac, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.ah, i64 %i.ai, i1 false)
  %i.aj = sub i64 %i.j, %i.ac                     ; 2 uses
  %.not.peel.i = icmp eq i64 %i.aj, 0
  br i1 %.not.peel.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ac
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.peel.next.i
  %.02231.i = phi i64 [ %i.aj, %.peel.next.i ], [ %i.au, %bb.c ] ; 2 uses
  %.02330.in.i = phi i64 [ %i.x, %.peel.next.i ], [ %.02330.i, %bb.c ]
  %.02429.i = phi ptr [ %i.ak, %.peel.next.i ], [ %i.at, %bb.c ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %.peel.next.i ], [ %i.as, %bb.c ] ; 2 uses
  %.02330.i = add i64 %.02330.in.i, 1             ; 2 uses
  %i.am = load i64, ptr %0, align 8, !tbaa !47
  %i.an = tail call i64 @llvm.umin.i64(i64 %.02231.i, i64 %i.am) ; 5 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.02330.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ap, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !59
  %i.aq = shl i64 %i.an, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.02528.i, ptr align 8 %.sroa.0.0.copyload.i, i64 %i.aq, i1 false)
  %i.ar = shl i64 %i.an, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.02429.i, ptr align 4 %.sroa.4.0.copyload.i, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.02528.i, i64 %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.02429.i, i64 %i.an
  %i.au = sub nuw i64 %.02231.i, %i.an            ; 2 uses
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit, label %bb.c, !llvm.loop !1

_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit:    ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.pre15 = load i64, ptr %i.i, align 8, !tbaa !64 ; 2 uses
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !77
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, %.pre15
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !22
  %.pre = load i64, ptr %i.i, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit
  %i.bc = phi i64 [ %.pre, %bb.d ], [ %.pre15, %_ZN5faiss10BufferList10copy_rangeEmmPlPf.exit ]
  %i.bd = add i64 %i.bc, %.01213
  %i.be = add nuw i64 %.014, 1                    ; 2 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 40
  %i.bl = icmp ult i64 %i.be, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss24RangeSearchPartialResult5mergeERSt6vectorIPS0_SaIS2_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = icmp eq ptr %i.c, %i.b
  br i1 %i.o, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  %i.s = icmp sgt i32 %i.h, 0
  br i1 %i.s, label %.lr.ph53.split.us.preheader, label %.preheader

.lr.ph53.split.us.preheader:                      ; preds = %._crit_edge
  %wide.trip.count64 = and i64 %i.g, 2147483647   ; 2 uses
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !96  ; 2 uses
  br i1 %1, label %.lr.ph53.split.us, label %.lr.ph53.split

.lr.ph53.split.us:                                ; preds = %.lr.ph53.split.us.preheader, %bb.l
  %i.t = phi ptr [ %i.bj, %bb.l ], [ %.pre.a, %.lr.ph53.split.us.preheader ] ; 2 uses
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.l ], [ 0, %.lr.ph53.split.us.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv61
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not38.us = icmp eq ptr %i.v, null
  br i1 %.not38.us, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.lr.ph53.split.us
  tail call void @_ZN5faiss24RangeSearchPartialResult11copy_resultEb(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i1 noundef zeroext true)
  %i.w = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv61
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.us, label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #26
  br label %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us

_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us: ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !50 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %.not.i.i.us = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us, %bb.i
  %i.am = phi ptr [ %i.av, %bb.i ], [ %i.ak, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us ] ; 2 uses
  %.07.i.i.us = phi i64 [ %i.aw, %bb.i ], [ 0, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.07.i.i.us
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.us
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #26
  %.pre.i.i.us = load ptr, ptr %i.ah, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.us
  %i.aq = phi ptr [ %.pre.i.i.us, %bb.f ], [ %i.am, %.lr.ph.i.i.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.07.i.i.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #26
  %.pre11.i.i.us = load ptr, ptr %i.ah, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = phi ptr [ %i.aq, %bb.g ], [ %.pre11.i.i.us, %bb.h ] ; 3 uses
  %i.aw = add nuw i64 %.07.i.i.us, 1              ; 2 uses
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4
  %i.bc = icmp ult i64 %i.aw, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.us, label %._crit_edge.i.i.us, !llvm.loop !0

._crit_edge.i.i.us:                               ; preds = %bb.i, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us
  %.lcssa6.i.i.us = phi ptr [ %i.ak, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us ], [ %i.av, %bb.i ] ; 2 uses
  %.lcssa.i.i.us = phi i64 [ %i.al, %_ZNSt6vectorIN5faiss16RangeQueryResultESaIS1_EED2Ev.exit.i.us ], [ %i.az, %bb.i ]
  %.not.i.i.i.i.i.us = icmp eq ptr %.lcssa6.i.i.us, null
  br i1 %.not.i.i.i.i.i.us, label %_ZN5faiss24RangeSearchPartialResultD2Ev.exit.us, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.us
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %.lcssa.i.i.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa6.i.i.us, i64 noundef %i.bg) #26
  br label %_ZN5faiss24RangeSearchPartialResultD2Ev.exit.us

_ZN5faiss24RangeSearchPartialResultD2Ev.exit.us:  ; preds = %bb.j, %._crit_edge.i.i.us
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 72) #26
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %_ZN5faiss24RangeSearchPartialResultD2Ev.exit.us, %bb.c
  %i.bh = phi ptr [ %.pre66, %_ZN5faiss24RangeSearchPartialResultD2Ev.exit.us ], [ %i.w, %bb.c ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv61
  store ptr null, ptr %i.bi, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph53.split.us
  %i.bj = phi ptr [ %i.bh, %bb.k ], [ %i.t, %.lr.ph53.split.us ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.preheader, label %.lr.ph53.split.us, !llvm.loop !91

bb.m:                                             ; preds = %.lr.ph50, %.loopexit
  %.sroa.044.049 = phi ptr [ %i.c, %.lr.ph50 ], [ %i.bz, %.loopexit ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.044.049, align 8, !tbaa !75 ; 3 uses
  %.not39 = icmp eq ptr %i.bk, null
  br i1 %.not39, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !97 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !97 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.040.048 = phi ptr [ %i.bm, %.lr.ph ], [ %i.bx, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !64
  %i.bt = load i64, ptr %.sroa.040.048, align 8, !tbaa !77
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !22
  %i.bw = add i64 %i.bv, %i.bs
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 40 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %.loopexit, label %bb.o

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.044.049, i64 8 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.b
  br i1 %i.ca, label %._crit_edge, label %bb.m

.preheader:                                       ; preds = %bb.q, %bb.l, %._crit_edge
  %.not54 = icmp eq i64 %i.n, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre67 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21 ; 3 uses
  br i1 %.not54, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.pre67, i64 8
  %i.cb = shl nuw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %.pre67, i64 %i.cb, i1 false), !tbaa !22
  br label %._crit_edge57

.lr.ph53.split:                                   ; preds = %.lr.ph53.split.us.preheader, %bb.q
  %2 = phi ptr [ %3, %bb.q ], [ %.pre.a, %.lr.ph53.split.us.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph53.split.us.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !75 ; 2 uses
  %.not38 = icmp eq ptr %i.cd, null
  br i1 %.not38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph53.split
  tail call void @_ZN5faiss24RangeSearchPartialResult11copy_resultEb(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i1 noundef zeroext true)
  %.pre = load ptr, ptr %0, align 8, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph53.split
  %3 = phi ptr [ %.pre, %bb.p ], [ %2, %.lr.ph53.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count64
  br i1 %exitcond.not, label %.preheader, label %.lr.ph53.split, !llvm.loop !91

._crit_edge57:                                    ; preds = %.preheader, %.lr.ph56
  store i64 0, ptr %.pre67, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5faiss17InterruptCallbackESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5faiss17InterruptCallbackEEclEPS1_.exit

_ZNKSt14default_deleteIN5faiss17InterruptCallbackEEclEPS1_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !98
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5faiss17InterruptCallbackEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss17InterruptCallback14clear_instanceEv() local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5faiss17InterruptCallback8instanceE, align 8, !tbaa !80 ; 3 uses
  store ptr null, ptr @_ZN5faiss17InterruptCallback8instanceE, align 8, !tbaa !80
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss17InterruptCallback5checkEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr @_ZN5faiss17InterruptCallback8instanceE, align 8, !tbaa !80 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss17InterruptCallback5checkEv, ptr noundef nonnull @.str.2, i32 noundef 223)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #25
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !28
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br i1 %.0, label %bb.g, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br i1 %.0, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.b
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn7 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !40

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5faiss17InterruptCallback14is_interruptedEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
