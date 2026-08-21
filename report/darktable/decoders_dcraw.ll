Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw16make_decoder_refEPPKh:bb.a
  br i1 %.not33.us.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %1, align 8, !tbaa !97
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !98
  %i.bl = zext i8 %i.bk to i16
  %i.bm = or disjoint i16 %i.at, %i.bl
  %i.bn = add nsw i32 %.3.us.1, 1
  %i.bo = sext i32 %.3.us.1 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3.us.2 = phi i32 [ %i.bn, %bb.u ], [ %.3.us.1, %bb.t ] ; 4 uses
  %.not33.us.3 = icmp sgt i32 %.3.us.2, %i.ai
  br i1 %.not33.us.3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %1, align 8, !tbaa !97
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !98
  %i.bs = zext i8 %i.br to i16
  %i.bt = or disjoint i16 %i.at, %i.bs
  %i.bu = add nsw i32 %.3.us.2, 1
  %i.bv = sext i32 %.3.us.2 to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bv
  store i16 %i.bt, ptr %i.bw, align 2, !tbaa !96
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3.us.3 = phi i32 [ %i.bu, %bb.w ], [ %.3.us.2, %bb.v ] ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !99

._crit_edge.us.unr-lcssa:                         ; preds = %bb.x
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.236.us.epil.init = phi i32 [ %.138.us, %.preheader.us ], [ %.3.us.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.epil.preheader
  %.236.us.epil = phi i32 [ %.236.us.epil.init, %.epil.preheader ], [ %.3.us.epil, %bb.aa ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %.not33.us.epil = icmp sgt i32 %.236.us.epil, %i.ai
  br i1 %.not33.us.epil, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %1, align 8, !tbaa !97
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !98
  %i.bz = zext i8 %i.by to i16
  %i.ca = or disjoint i16 %i.at, %i.bz
  %i.cb = add nsw i32 %.236.us.epil, 1
  %i.cc = sext i32 %.236.us.epil to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.cc
  store i16 %i.ca, ptr %i.cd, align 2, !tbaa !96
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.3.us.epil = phi i32 [ %i.cb, %bb.z ], [ %.236.us.epil, %bb.y ] ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.y, !llvm.loop !100

._crit_edge.us:                                   ; preds = %bb.aa, %._crit_edge.us.unr-lcssa
  %.3.us.lcssa = phi i32 [ %.3.us.3, %._crit_edge.us.unr-lcssa ], [ %.3.us.epil, %bb.aa ] ; 2 uses
  %i.ce = add nuw nsw i32 %.02739.us, 1           ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %1, align 8, !tbaa !97
  %i.ch = load i8, ptr %i.ao, align 1, !tbaa !98
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp samesign ult i32 %i.ce, %i.ci
  br i1 %i.cj, label %.preheader.us, label %._crit_edge40, !llvm.loop !102

._crit_edge40:                                    ; preds = %._crit_edge.us, %.preheader34
  %.1.lcssa = phi i32 [ %.02844, %.preheader34 ], [ %.3.us.lcssa, %._crit_edge.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond50.not, label %._crit_edge, label %.preheader34, !llvm.loop !103

._crit_edge:                                      ; preds = %._crit_edge40, %.critedge
  ret ptr %i.al
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !97
  %i.b = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15crw_init_tablesEjPPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %i.c = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.d = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !97
  %i.e = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %2, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !97
  %i.g = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw17canon_has_lowbitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0, i32 noundef 0), !call_target !105 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16384), !call_target !111 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %indvars.iv = phi i64 [ 540, %bb.a ], [ %indvars.iv.next.2, %bb.h ] ; 4 uses
  %.068 = phi i32 [ 1, %bb.a ], [ %.1.2, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !98
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !98
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %.068, %bb.b ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !98
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !98
  %.not.1 = icmp eq i8 %i.w, 0
  br i1 %.not.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %.1, %bb.d ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !98
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !98
  %.not.2 = icmp eq i8 %i.ac, 0
  br i1 %.not.2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 16383
  br i1 %exitcond.not.2, label %bb.i, label %bb.b, !llvm.loop !118

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.07 = phi i32 [ 1, %bb.c ], [ %.1.2, %bb.h ], [ 1, %bb.e ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.07
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  %1 = alloca [2 x i32], align 4                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381840
  %i.g = load i32, ptr %i.f, align 8, !tbaa !119
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 2)
  %i.h = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !tbaa !97
  %i.j = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8, !tbaa !97
  %i.l = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0, i32 noundef 0), !call_target !105, !inline_history !120 ; 0 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16384), !call_target !111, !inline_history !120 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i203, %.thread ], [ 540, %bb.a ]
  %.not = phi i1 [ true, %.thread ], [ false, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.i.ph, %.outer ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !98
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !98
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %.thread, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread:      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16383
  br i1 %exitcond.not.i, label %_ZN6LibRaw17canon_has_lowbitsEv.exit, label %bb.b, !llvm.loop !118

.thread:                                          ; preds = %bb.c
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, 16383
  br i1 %exitcond.not.i204, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, label %.outer, !llvm.loop !118

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206:   ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

_ZN6LibRaw17canon_has_lowbitsEv.exit:             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 1023, ptr %i.ac, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread, %bb.e, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %.not117 = phi i1 [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ true, %bb.e ], [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %.07.i116 = phi i32 [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ 0, %bb.e ], [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !122
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul nuw nsw i32 %.07.i116, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 10 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.ak = zext i16 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ah, %i.ak
  %i.am = lshr i32 %i.al, 2
  %i.an = add nuw nsw i32 %i.am, 540
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef %i.ao, i32 noundef 0), !call_target !105 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 3 uses
  store i32 1, ptr %i.at, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 9 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !81
  store i32 0, ptr %i.av, align 8, !tbaa !82
  %i.ay = load i16, ptr %i.ae, align 8, !tbaa !122
  %.not174 = icmp eq i16 %i.ay, 0
  br i1 %.not174, label %.preheader, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.g

.preheader:                                       ; preds = %bb.aj, %bb.f
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.j)
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  ret void

bb.g:                                             ; preds = %.lr.ph171, %bb.aj
  %.0169 = phi i32 [ 0, %.lr.ph171 ], [ %.1.lcssa, %bb.aj ] ; 3 uses
  %.070168 = phi i32 [ 0, %.lr.ph171 ], [ %.171.lcssa, %bb.aj ] ; 2 uses
  %.076167 = phi i32 [ 0, %.lr.ph171 ], [ %i.js, %bb.aj ] ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.h unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bc = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = mul nuw nsw i32 %.076167, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.ae, align 8, !tbaa !122
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bi, %.076167
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bj, i32 8)
  %i.bk = mul nsw i32 %spec.select, %i.bd         ; 2 uses
  %i.bl = ashr i32 %i.bk, 6                       ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %bb.h
  %i.bn = and i32 %i.bk, -64
  %i.bo = add i32 %.0169, %i.bn
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.ag
  %indvars.iv179 = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next180, %bb.ag ] ; 2 uses
  %.1157 = phi i32 [ %.0169, %.lr.ph158.preheader ], [ %i.gk, %bb.ag ] ; 2 uses
  %.171156 = phi i32 [ %.070168, %.lr.ph158.preheader ], [ %i.gj, %bb.ag ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph158, %bb.aa
  %.079152 = phi i32 [ 0, %.lr.ph158 ], [ %i.gg, %bb.aa ] ; 4 uses
  %i.bp = icmp sgt i32 %.079152, 0
  %i.bq = select i1 %i.bp, ptr %i.l, ptr %i.j     ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !96 ; 2 uses
  %i.bs = zext i16 %i.br to i32                   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bu = add i16 %i.br, -26
  %or.cond118 = icmp ult i16 %i.bu, -25
  br i1 %or.cond118, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !81 ; 3 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !74
  %.not25.i = icmp eq i32 %i.ca, 0
  br i1 %.not25.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.cb = icmp samesign ult i32 %i.bx, %i.bs
  br i1 %i.cb, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %.noexc unwind label %.loopexit.split-lp121.loopexit, !inline_history !125 ; 3 uses

.noexc:                                           ; preds = %.lr.ph
  %.not21.i = icmp eq i32 %i.cg, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.k

..critedge.loopexit_crit_edge.i:                  ; preds = %.noexc
  %.pre.pre.i = load ptr, ptr %i.au, align 8, !tbaa !11
  br label %.critedge.loopexit.i

bb.k:                                             ; preds = %.noexc
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !93
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp eq i32 %i.cg, 255
  %or.cond.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %bb.l, label %.critedge24.i

bb.l:                                             ; preds = %bb.k
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
          to label %.noexc92 unwind label %.loopexit.split-lp121.loopexit, !inline_history !125

.noexc92:                                         ; preds = %bb.l
  %i.cp = icmp ne i32 %i.co, 0                    ; 2 uses
  %i.cq = zext i1 %i.cp to i32
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !11 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cq, ptr %i.cs, align 8, !tbaa !74
  br i1 %i.cp, label %.critedge.loopexit.i, label %.lr.ph.i

.critedge24.i:                                    ; preds = %bb.k
  %i.ct = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.cu, align 8, !tbaa !74
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge24.i, %.noexc92
  %i.cv = phi ptr [ %i.ct, %.critedge24.i ], [ %i.cr, %.noexc92 ] ; 4 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !82
  %i.cx = shl i32 %i.cw, 8
  %i.cy = and i32 %i.cg, 255
  %i.cz = or disjoint i32 %i.cx, %i.cy
  store i32 %i.cz, ptr %i.cv, align 8, !tbaa !82
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !81
  %i.dc = add nsw i32 %i.db, 8                    ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !81
  %i.dd = icmp slt i32 %i.dc, %i.bs
  br i1 %i.dd, label %.lr.ph, label %.critedge.loopexit.i, !llvm.loop !94

.critedge.loopexit.i:                             ; preds = %.lr.ph.i, %.noexc92, %.lr.ph.i.preheader, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.bv, %.lr.ph.i.preheader ], [ %i.cv, %.lr.ph.i ], [ %i.cr, %.noexc92 ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !81
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.de = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.bx, %.preheader.i ] ; 3 uses
  %i.df = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.bv, %.preheader.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = icmp eq i32 %i.de, 0
  br i1 %i.dh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.di = load i32, ptr %i.df, align 8, !tbaa !82
  %i.dj = sub nsw i32 32, %i.de
  %i.dk = shl i32 %i.di, %i.dj
  %i.dl = sub nuw nsw i32 32, %i.bs
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = zext nneg i32 %i.dm to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.do = phi i64 [ %i.dn, %bb.m ], [ 0, %.critedge.i ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !96 ; 2 uses
  %i.dr = lshr i16 %i.dq, 8
  %i.ds = zext nneg i16 %i.dr to i32
  %i.dt = and i16 %i.dq, 255                      ; 2 uses
  %.sink.i = sub nsw i32 %i.de, %i.ds             ; 2 uses
  store i32 %.sink.i, ptr %i.dg, align 4, !tbaa !81
  %i.du = icmp slt i32 %.sink.i, 0
  br i1 %i.du, label %bb.o, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.n, %bb.j, %bb.i, %bb.o
  %.016.i.shrunk = phi i16 [ %i.dt, %bb.o ], [ %i.dt, %bb.n ], [ 0, %bb.i ], [ 0, %bb.j ] ; 3 uses
  %.016.i = zext nneg i16 %.016.i.shrunk to i32   ; 2 uses
  %i.dv = icmp eq i16 %.016.i.shrunk, 0
  %i.dw = icmp ne i32 %.079152, 0
  %or.cond = and i1 %i.dw, %i.dv
  br i1 %or.cond, label %.thread209, label %bb.r

.loopexit120:                                     ; preds = %.lr.ph149, %bb.v
  %lpad.loopexit122 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121.loopexit:                   ; preds = %bb.l, %.lr.ph
  %lpad.loopexit125 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121.loopexit.split-lp.loopexit: ; preds = %bb.ae
  %lpad.loopexit129 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.y, %bb.o
  %lpad.loopexit132 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph165
  %lpad.loopexit136 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.ah, %bb.ai, %._crit_edge166
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp121

.loopexit.split-lp121:                            ; preds = %.loopexit.split-lp121.loopexit, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp121.loopexit.split-lp.loopexit, %.loopexit120
  %lpad.phi124 = phi { ptr, i32 } [ %lpad.loopexit122, %.loopexit120 ], [ %lpad.loopexit125, %.loopexit.split-lp121.loopexit ], [ %lpad.loopexit129, %.loopexit.split-lp121.loopexit.split-lp.loopexit ], [ %lpad.loopexit132, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp137, %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dx = extractvalue { ptr, i32 } %lpad.phi124, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %i.dx) #15 ; 0 uses
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.j)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %.loopexit.split-lp121
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_rethrow() #16
          to label %bb.an unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit
  %i.dz = icmp eq i16 %.016.i.shrunk, 255
  br i1 %i.dz, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = lshr i32 %.016.i, 4
  %i.eb = add nsw i32 %i.ea, %.079152             ; 4 uses
  %i.ec = and i32 %.016.i, 15                     ; 7 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = load ptr, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !81 ; 3 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %_ZN6LibRaw10getbithuffEiPt.exit112, label %.preheader.i94

.preheader.i94:                                   ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !74
  %.not25.i95 = icmp eq i32 %i.ej, 0
  br i1 %.not25.i95, label %.lr.ph.i99.preheader, label %.critedge.i96

.lr.ph.i99.preheader:                             ; preds = %.preheader.i94
  %i.ek = icmp samesign ult i32 %i.eg, %i.ec
  br i1 %i.ek, label %.lr.ph149, label %.critedge.loopexit.i100

.lr.ph149:                                        ; preds = %.lr.ph.i99.preheader, %.lr.ph.i99
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !84
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %.noexc109 unwind label %.loopexit120, !inline_history !125 ; 3 uses

.noexc109:                                        ; preds = %.lr.ph149
  %.not21.i104 = icmp eq i32 %i.ep, -1
  br i1 %.not21.i104, label %..critedge.loopexit_crit_edge.i107, label %bb.u

..critedge.loopexit_crit_edge.i107:               ; preds = %.noexc109
  %.pre.pre.i108 = load ptr, ptr %i.au, align 8, !tbaa !11
  br label %.critedge.loopexit.i100

bb.u:                                             ; preds = %.noexc109
  %i.eq = load i32, ptr %i.at, align 8, !tbaa !93
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = icmp eq i32 %i.ep, 255
  %or.cond.i105 = and i1 %i.es, %i.er
  br i1 %or.cond.i105, label %bb.v, label %.critedge24.i106

bb.v:                                             ; preds = %bb.u
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !84
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et)
          to label %.noexc110 unwind label %.loopexit120, !inline_history !125

.noexc110:                                        ; preds = %bb.v
  %i.ey = icmp ne i32 %i.ex, 0                    ; 2 uses
  %i.ez = zext i1 %i.ey to i32
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !11 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 %i.ez, ptr %i.fb, align 8, !tbaa !74
  br i1 %i.ey, label %.critedge.loopexit.i100, label %.lr.ph.i99

.critedge24.i106:                                 ; preds = %bb.u
  %i.fc = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 0, ptr %i.fd, align 8, !tbaa !74
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.critedge24.i106, %.noexc110
  %i.fe = phi ptr [ %i.fc, %.critedge24.i106 ], [ %i.fa, %.noexc110 ] ; 4 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !82
  %i.fg = shl i32 %i.ff, 8
  %i.fh = and i32 %i.ep, 255
  %i.fi = or disjoint i32 %i.fg, %i.fh
  store i32 %i.fi, ptr %i.fe, align 8, !tbaa !82
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !81
  %i.fl = add nsw i32 %i.fk, 8                    ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !81
  %i.fm = icmp slt i32 %i.fl, %i.ec
  br i1 %i.fm, label %.lr.ph149, label %.critedge.loopexit.i100, !llvm.loop !94

.critedge.loopexit.i100:                          ; preds = %.lr.ph.i99, %.noexc110, %.lr.ph.i99.preheader, %..critedge.loopexit_crit_edge.i107
  %.pre.i101 = phi ptr [ %.pre.pre.i108, %..critedge.loopexit_crit_edge.i107 ], [ %i.ee, %.lr.ph.i99.preheader ], [ %i.fe, %.lr.ph.i99 ], [ %i.fa, %.noexc110 ] ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds nuw i8, ptr %.pre.i101, i64 4
  %.pre29.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !81
  br label %.critedge.i96

.critedge.i96:                                    ; preds = %.critedge.loopexit.i100, %.preheader.i94
  %i.fn = phi i32 [ %.pre29.i103, %.critedge.loopexit.i100 ], [ %i.eg, %.preheader.i94 ] ; 3 uses
  %i.fo = phi ptr [ %.pre.i101, %.critedge.loopexit.i100 ], [ %i.ee, %.preheader.i94 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = icmp eq i32 %i.fn, 0
  br i1 %i.fq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge.i96
  %i.fr = load i32, ptr %i.fo, align 8, !tbaa !82
  %i.fs = sub nsw i32 32, %i.fn
  %i.ft = shl i32 %i.fr, %i.fs
  %i.fu = sub nuw nsw i32 32, %i.ec
  %i.fv = lshr i32 %i.ft, %i.fu
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.i96
  %i.fw = phi i32 [ %i.fv, %bb.w ], [ 0, %.critedge.i96 ] ; 2 uses
  %.sink.i97 = sub nsw i32 %i.fn, %i.ec           ; 2 uses
  store i32 %.sink.i97, ptr %i.fp, align 4, !tbaa !81
  %i.fx = icmp slt i32 %.sink.i97, 0
  br i1 %i.fx, label %bb.y, label %_ZN6LibRaw10getbithuffEiPt.exit112

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit112 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit112:               ; preds = %bb.x, %bb.t, %bb.y
  %.016.i98 = phi i32 [ 0, %bb.t ], [ %i.fw, %bb.x ], [ %i.fw, %bb.y ] ; 2 uses
  %i.fy = icmp slt i32 %i.eb, 64
  br i1 %i.fy, label %bb.z, label %.thread209

bb.z:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112
  %i.fz = add nsw i32 %i.ec, -1
  %i.ga = shl nuw nsw i32 1, %i.fz
  %i.gb = and i32 %.016.i98, %i.ga
  %i.gc = icmp eq i32 %i.gb, 0
  %notmask = shl nsw i32 -1, %i.ec
  %.neg = or disjoint i32 %notmask, 1
  %i.gd = select i1 %i.gc, i32 %.neg, i32 0
  %.072 = add nsw i32 %i.gd, %.016.i98
  %i.ge = zext nneg i32 %i.eb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ge
  store i32 %.072, ptr %i.gf, align 4, !tbaa !126
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s, %bb.r
  %.180 = phi i32 [ %.079152, %bb.r ], [ %i.eb, %bb.s ], [ %i.eb, %bb.z ] ; 2 uses
  %i.gg = add nuw nsw i32 %.180, 1
  %i.gh = icmp slt i32 %.180, 63
  br i1 %i.gh, label %bb.i, label %.thread209, !llvm.loop !127

.thread209:                                       ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112, %_ZN6LibRaw10getbithuffEiPt.exit, %bb.aa
  %i.gi = load i32, ptr %i.d, align 16, !tbaa !126
  %i.gj = add nsw i32 %i.gi, %.171156             ; 3 uses
  store i32 %i.gj, ptr %i.d, align 16, !tbaa !126
  %i.gk = add i32 %.1157, 64
  %.idx = shl nuw nsw i64 %indvars.iv179, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  br label %bb.ab

bb.ab:                                            ; preds = %.thread209, %bb.af
  %indvars.iv = phi i64 [ 0, %.thread209 ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.2154 = phi i32 [ %.1157, %.thread209 ], [ %i.gl, %bb.af ] ; 2 uses
  %i.gl = add nsw i32 %.2154, 1
  %i.gm = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.gn = zext i16 %i.gm to i32
  %i.go = srem i32 %.2154, %i.gn
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 512, ptr %i.ba, align 4, !tbaa !126
  store i32 512, ptr %1, align 4, !tbaa !126
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !126
  %i.gs = and i64 %indvars.iv, 1
  %2 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.gt = load i32, ptr %2, align 4, !tbaa !126
  %i.gu = add nsw i32 %i.gt, %i.gr                ; 3 uses
  store i32 %i.gu, ptr %2, align 4, !tbaa !126
  %i.gv = trunc i32 %i.gu to i16
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.gv, ptr %gep, align 2, !tbaa !96
  %i.gw = and i32 %i.gu, 64512
  %.not90 = icmp eq i32 %i.gw, 0
  br i1 %.not90, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.af unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.ag, label %bb.ab, !llvm.loop !128

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.ag, %bb.h
  %.171.lcssa = phi i32 [ %.070168, %bb.h ], [ %i.gj, %bb.ag ]
  %.1.lcssa = phi i32 [ %.0169, %bb.h ], [ %i.bo, %bb.ag ]
  br i1 %.not117, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !84
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i64 %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %bb.ai unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !130

bb.ai:                                            ; preds = %bb.ah
  %i.hc = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.hd = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.he = zext i16 %i.hd to i32
  %i.hf = mul nuw nsw i32 %.076167, %i.he
  %i.hg = lshr exact i32 %i.hf, 2
  %i.hh = add nuw nsw i32 %i.hg, 26
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !84
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef i32 %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i64 noundef %i.hi, i32 noundef 0)
          to label %.preheader135 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !105 ; 0 uses

.preheader135:                                    ; preds = %bb.ai
  %i.hn = load i16, ptr %i.ai, align 2, !tbaa !123
  %.not175 = icmp eq i16 %i.hn, 0
  br i1 %.not175, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader135, %.preheader128.preheader
  %.3164 = phi i32 [ %i.ji, %.preheader128.preheader ], [ 0, %.preheader135 ]
  %.082163 = phi ptr [ %i.jh, %.preheader128.preheader ], [ %i.bg, %.preheader135 ] ; 6 uses
  %i.ho = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !84
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef i32 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %.preheader128.preheader unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !86

.preheader128.preheader:                          ; preds = %.lr.ph165
  %i.ht = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.hu = icmp eq i16 %i.ht, 2672
  %i.hv = getelementptr inbounds nuw i8, ptr %.082163, i64 2
  %i.hw = getelementptr inbounds nuw i8, ptr %.082163, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.082163, i64 6
  %i.hy = load <4 x i16>, ptr %.082163, align 2, !tbaa !96 ; 5 uses
  %i.hz = extractelement <4 x i16> %i.hy, i64 0
  %i.ia = icmp ult i16 %i.hz, 128
  %or.cond3 = select i1 %i.hu, i1 %i.ia, i1 false
  %i.ib = zext <4 x i16> %i.hy to <4 x i32>
  %i.ic = shl nuw nsw <4 x i32> %i.ib, splat (i32 2)
  %i.id = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.if = lshr <4 x i32> %i.ie, <i32 0, i32 2, i32 4, i32 6>
  %i.ig = and <4 x i32> %i.if, splat (i32 3)
  %i.ih = or disjoint <4 x i32> %i.ic, %i.ig      ; 5 uses
  %i.ii = add nuw nsw <4 x i32> %i.ih, splat (i32 2) ; 4 uses
  %i.ij = extractelement <4 x i32> %i.ii, i64 0
  %i.ik = extractelement <4 x i32> %i.ih, i64 0
  %spec.select91 = select i1 %or.cond3, i32 %i.ij, i32 %i.ik
  %i.il = trunc i32 %spec.select91 to i16
  store i16 %i.il, ptr %.082163, align 2, !tbaa !96
  %i.im = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.in = icmp eq i16 %i.im, 2672
  %i.io = extractelement <4 x i16> %i.hy, i64 1
  %i.ip = icmp ult i16 %i.io, 128
  %or.cond3.1 = select i1 %i.in, i1 %i.ip, i1 false
  %i.iq = extractelement <4 x i32> %i.ii, i64 1
  %i.ir = extractelement <4 x i32> %i.ih, i64 1
  %spec.select91.1 = select i1 %or.cond3.1, i32 %i.iq, i32 %i.ir
  %i.is = trunc i32 %spec.select91.1 to i16
  store i16 %i.is, ptr %i.hv, align 2, !tbaa !96
  %i.it = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.iu = icmp eq i16 %i.it, 2672
  %i.iv = extractelement <4 x i16> %i.hy, i64 2
  %i.iw = icmp ult i16 %i.iv, 128
  %or.cond3.2 = select i1 %i.iu, i1 %i.iw, i1 false
  %i.ix = extractelement <4 x i32> %i.ii, i64 2
  %i.iy = extractelement <4 x i32> %i.ih, i64 2
  %spec.select91.2 = select i1 %or.cond3.2, i32 %i.ix, i32 %i.iy
  %i.iz = trunc i32 %spec.select91.2 to i16
  store i16 %i.iz, ptr %i.hw, align 2, !tbaa !96
  %i.ja = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.jb = icmp eq i16 %i.ja, 2672
  %i.jc = extractelement <4 x i16> %i.hy, i64 3
  %i.jd = icmp ult i16 %i.jc, 128
  %or.cond3.3 = select i1 %i.jb, i1 %i.jd, i1 false
  %i.je = extractelement <4 x i32> %i.ii, i64 3
  %i.jf = extractelement <4 x i32> %i.ih, i64 3
  %spec.select91.3 = select i1 %or.cond3.3, i32 %i.je, i32 %i.jf
  %i.jg = trunc i32 %spec.select91.3 to i16
  store i16 %i.jg, ptr %i.hx, align 2, !tbaa !96
  %i.jh = getelementptr inbounds nuw i8, ptr %.082163, i64 8
  %i.ji = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.jj = load i16, ptr %i.ai, align 2, !tbaa !123
  %i.jk = zext i16 %i.jj to i32
  %i.jl = shl nuw nsw i32 %i.jk, 1
  %i.jm = icmp samesign ult i32 %i.ji, %i.jl
  br i1 %i.jm, label %.lr.ph165, label %._crit_edge166, !llvm.loop !133

._crit_edge166:                                   ; preds = %.preheader128.preheader, %.preheader135
  %i.jn = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !84
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = invoke noundef i32 %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i64 noundef %i.hb, i32 noundef 0)
          to label %bb.aj unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !105 ; 0 uses

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge166
  %i.js = add nuw nsw i32 %.076167, 8             ; 2 uses
  %i.jt = load i16, ptr %i.ae, align 8, !tbaa !122
  %i.ju = zext i16 %i.jt to i32
  %i.jv = icmp samesign ult i32 %i.js, %i.ju
  br i1 %i.jv, label %bb.g, label %.preheader, !llvm.loop !134

.loopexit:                                        ; preds = %bb.p, %.loopexit.split-lp121
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  resume { ptr, i32 } %lpad.phi

bb.am:                                            ; preds = %bb.ak
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #17
  unreachable

bb.an:                                            ; preds = %bb.q
  unreachable
}

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) initializes((0, 640)) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #18 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.b, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %1, i8 0, i64 640, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 2147483647, ptr %i.d, align 4, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1)
          to label %bb.b unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, !call_target !111

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.c, align 1, !tbaa !98
  %.not105 = icmp eq i8 %i.k, -40
  br i1 %.not105, label %.preheader133, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

.preheader133:                                    ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not109 = icmp ne i32 %2, 0                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.d

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit:           ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.j, %bb.g, %bb.d
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit, %bb.a
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ], [ %lpad.loopexit134, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp135, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 65536) #19
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %.preheader133, %.critedge
  %.093 = phi i32 [ %i.al, %.critedge ], [ 0, %.preheader133 ] ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.e unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !137

bb.e:                                             ; preds = %bb.d
  %.not106 = icmp eq i32 %i.ak, 0
  br i1 %.not106, label %bb.f, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.f:                                             ; preds = %bb.e
  %i.al = add nuw nsw i32 %.093, 1
  %exitcond146 = icmp eq i32 %.093, 1025
  br i1 %exitcond146, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 2)
          to label %bb.h unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !111

bb.h:                                             ; preds = %bb.g
  %.not107 = icmp eq i32 %i.aq, 2
  br i1 %.not107, label %bb.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !98
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = load i8, ptr %i.c, align 1, !tbaa !98
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av            ; 3 uses
  %i.ax = load i8, ptr %i.l, align 1, !tbaa !98
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = load i8, ptr %i.m, align 1, !tbaa !98
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.az, %i.bb
  %i.bd = add i16 %i.bc, -2                       ; 4 uses
  %i.be = icmp samesign ult i32 %i.aw, 65281
  br i1 %i.be, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.bg = zext i16 %i.bd to i64                   ; 2 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.bg)
          to label %bb.k unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !111

bb.k:                                             ; preds = %bb.j
  %i.bl = zext i16 %i.bd to i32
  %.not108 = icmp eq i32 %i.bk, %i.bl
  br i1 %.not108, label %bb.l, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.l:                                             ; preds = %bb.k
  %trunc = trunc nuw i32 %i.aw to i16
  switch i16 %trunc, label %.critedge [
    i16 -61, label %bb.m
    i16 -63, label %bb.n
    i16 -64, label %bb.n
    i16 -60, label %bb.q
    i16 -38, label %bb.u
    i16 -37, label %vector.body
    i16 -35, label %bb.v
  ]

vector.body:                                      ; preds = %bb.l
  %wide.vec = load <32 x i8>, ptr %i.z, align 1, !tbaa !98
  %i.bm = freeze <32 x i8> %wide.vec
  %i.bn = bitcast <32 x i8> %i.bm to <16 x i16>
  %wide.vec182 = load <32 x i8>, ptr %i.aa, align 1, !tbaa !98
  %i.bo = freeze <32 x i8> %wide.vec182
  %i.bp = bitcast <32 x i8> %i.bo to <16 x i16>
  %wide.vec185 = load <32 x i8>, ptr %i.ab, align 1, !tbaa !98
  %i.bq = freeze <32 x i8> %wide.vec185
  %i.br = bitcast <32 x i8> %i.bq to <16 x i16>
  %wide.vec188 = load <32 x i8>, ptr %i.ac, align 1, !tbaa !98
  %i.bs = freeze <32 x i8> %wide.vec188
  %i.bt = bitcast <32 x i8> %i.bs to <16 x i16>
end_hunk_0
