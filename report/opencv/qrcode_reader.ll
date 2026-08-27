Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_reader?download=true
inline.NumInlined: 680
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5zxing6qrcode12QRCodeReader21getPossibleDimentionsEi:_ZNSt6vectorIiSaIiEE5clearEv.exit
          to label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit unwind label %bb.a ; 8 uses

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.h = add nuw nsw i32 %2, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !157
  %i.j = load i32, ptr %i.d, align 4
  store i32 %i.j, ptr %i.g, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #20
  store ptr %i.g, ptr %0, align 8, !tbaa !156
  store ptr %i.k, ptr %i.a, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !171
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %.noexc20 unwind label %bb.b   ; 9 uses

.noexc20:                                         ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.n = add nsw i32 %2, -4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.n, ptr %i.o, align 4, !tbaa !157
  %i.p = load i64, ptr %i.g, align 4
  store i64 %i.p, ptr %i.m, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 8) #20
  store ptr %i.m, ptr %0, align 8, !tbaa !156
  store ptr %i.q, ptr %i.a, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !171
  %i.s = add nsw i32 %2, -8
  store i32 %i.s, ptr %i.q, align 4, !tbaa !157
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.t, ptr %i.a, align 8, !tbaa !153
  %i.u = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc40 unwind label %bb.c   ; 5 uses

.noexc40:                                         ; preds = %.noexc20
  %i.v = add nuw nsw i32 %2, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.v, ptr %i.w, align 4, !tbaa !157
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #20
  store ptr %i.u, ptr %0, align 8, !tbaa !156
  store ptr %i.x, ptr %i.a, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71.sink.split

bb.a:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.c:                                             ; preds = %.noexc20
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = add nsw i32 %2, -45
  %or.cond3 = icmp ult i32 %i.ac, 25
  br i1 %or.cond3, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i43, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit41

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i43: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit51 unwind label %bb.e ; 8 uses

_ZNSt6vectorIiSaIiEE9push_backEOi.exit51:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i43
  %i.ae = add nuw nsw i32 %2, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !157
  %i.ag = load i32, ptr %i.d, align 4
  store i32 %i.ag, ptr %i.ad, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #20
  store ptr %i.ad, ptr %0, align 8, !tbaa !156
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !153
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !171
  %i.aj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %.noexc60 unwind label %bb.f   ; 5 uses

.noexc60:                                         ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit51
  %i.ak = add nsw i32 %2, -4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !157
  %i.am = load i64, ptr %i.ad, align 4
  store i64 %i.am, ptr %i.aj, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 8) #20
  store ptr %i.aj, ptr %0, align 8, !tbaa !156
  store ptr %i.an, ptr %i.a, align 8, !tbaa !153
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71.sink.split

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i43
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit51
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit41:         ; preds = %bb.d
  %i.ar = icmp eq i32 %2, 19
  br i1 %i.ar, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i63, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i63: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit41
  %i.as = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i68 unwind label %bb.g ; 5 uses

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i68: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 21, ptr %i.at, align 4, !tbaa !157
  %i.au = load i32, ptr %i.d, align 4
  store i32 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #20
  store ptr %i.as, ptr %0, align 8, !tbaa !156
  store ptr %i.av, ptr %i.a, align 8, !tbaa !153
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71.sink.split

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i63
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit71.sink.split: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i68, %.noexc60, %.noexc40
  %.sink = phi ptr [ %i.y, %.noexc40 ], [ %i.ao, %.noexc60 ], [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i68 ]
  store ptr %.sink, ptr %i.c, align 8, !tbaa !171
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71

_ZNSt6vectorIiSaIiEE9push_backEOi.exit71:         ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit71.sink.split, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit41
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.c, %bb.b, %bb.a, %bb.f, %bb.e
  %.ph = phi ptr [ %i.e, %bb.e ], [ %i.ai, %bb.f ], [ %i.e, %bb.a ], [ %i.l, %bb.b ], [ %i.e, %bb.g ], [ %i.r, %bb.c ]
  %.ph127 = phi ptr [ %i.d, %bb.e ], [ %i.ad, %bb.f ], [ %i.d, %bb.a ], [ %i.g, %bb.b ], [ %i.d, %bb.g ], [ %i.m, %bb.c ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.aq, %bb.f ], [ %i.z, %bb.a ], [ %i.aa, %bb.b ], [ %i.ax, %bb.g ], [ %i.ab, %bb.c ]
  %i.ay = ptrtoint ptr %.ph to i64
  %i.az = ptrtoint ptr %.ph127 to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %.ph127, i64 noundef %i.ba) #20
  resume { ptr, i32 } %.pn.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN5zxing6qrcode12QRCodeReader14getPossibleFixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !176
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5zxing6qrcode12QRCodeReader6smoothEPjNS_3RefINS_9BitMatrixEEES5_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.c = ashr i32 %3, 1                           ; 5 uses
  %i.d = tail call noundef i32 @_ZNK5zxing9BitMatrix8getWidthEv(ptr noundef nonnull align 8 dereferenceable(346) %i.a) ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !45
  %i.f = tail call noundef i32 @_ZNK5zxing9BitMatrix9getHeightEv(ptr noundef nonnull align 8 dereferenceable(346) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 11 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = mul nsw i32 %i.c, %i.c                   ; 3 uses
  %i.m = add nsw i32 %i.c, 1                      ; 3 uses
  %i.n = xor i32 %i.c, -1                         ; 5 uses
  %i.o = add i32 %i.f, %i.n                       ; 3 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.a
  %i.q = add i32 %i.d, %i.n                       ; 2 uses
  %i.r = icmp slt i32 %i.m, %i.q
  %i.s = shl nuw i32 %i.l, 1                      ; 2 uses
  br i1 %i.r, label %.lr.ph.us.preheader, label %.lr.ph76.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph76
  %i.t = sext i32 %i.c to i64                     ; 6 uses
  %i.u = add nsw i64 %i.t, 1                      ; 5 uses
  %i.v = sext i32 %i.d to i64
  %wide.trip.count = sext i32 %i.q to i64         ; 3 uses
  %i.w = add nsw i64 %wide.trip.count, -2
  %i.x = sub nsw i64 %i.w, %i.t                   ; 2 uses
  %i.y = xor i64 %i.t, -1
  %i.z = add nsw i64 %i.y, %wide.trip.count       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  %i.aa = trunc i64 %i.x to i32
  %i.ab = icmp ugt i64 %i.x, 4294967295
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ac = add nsw i64 %i.u, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat94 = shufflevector <4 x i32> %broadcast.splatinsert93, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv83 = phi i64 [ %i.u, %.lr.ph.us.preheader ], [ %indvars.iv.next84, %._crit_edge.us ] ; 3 uses
  %.06473.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %i.ad = trunc nsw i64 %indvars.iv83 to i32      ; 3 uses
  %i.ae = add i32 %i.ad, %i.n
  %i.af = add nsw i64 %indvars.iv83, %i.t
  %i.ag = mul i32 %i.ae, %i.d                     ; 5 uses
  %i.ah = mul nsw i64 %i.af, %i.v                 ; 2 uses
  %i.ai = tail call noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346) %i.a, i32 noundef %i.ad) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.ai, i64 %i.i, i1 false)
  %i.aj = sext i32 %i.ag to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %invariant.gep90 = getelementptr [4 x i8], ptr %0, i64 %i.aj ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.al = ptrtoaddr ptr %i.ai to i64
  %i.am = add i32 %i.ag, %i.aa
  %i.an = icmp slt i32 %i.am, %i.ag
  %i.ao = or i1 %i.an, %i.ab
  %i.ap = sub i64 %i.al, %i.k
  %diff.check = icmp ugt i64 %i.ap, -4
  %or.cond = or i1 %i.ao, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.06473.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue104, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue104 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph ], [ %i.ca, %pred.store.continue104 ]
  %i.ar = add i64 %i.u, %index                    ; 7 uses
  %i.as = trunc nsw i64 %i.ar to i32
  %i.at = add i32 %i.as, %i.n                     ; 2 uses
  %i.au = add nsw i64 %i.ar, %i.t                 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.au
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !157
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr [4 x i8], ptr %i.ak, i64 %i.aw
  %wide.load95 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !157
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep90, i64 %i.au
  %wide.load96 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !157
  %i.az = add nsw i32 %i.at, %i.ag
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ba
  %wide.load97 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !157
  %i.bc = add <4 x i32> %wide.load, %wide.load96
  %i.bd = add <4 x i32> %wide.load95, %wide.load97
  %i.be = sub <4 x i32> %i.bc, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.ai, i64 %i.ar
  %wide.load98 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !63 ; 2 uses
  %i.bg = mul <4 x i32> %i.be, splat (i32 3)      ; 2 uses
  %i.bh = icmp ugt <4 x i32> %i.bg, %broadcast.splat
  %i.bi = icmp uge <4 x i32> %i.bg, %broadcast.splat94
  %i.bj = trunc nuw <4 x i8> %wide.load98 to <4 x i1>
  %i.bk = or <4 x i1> %i.bi, %i.bj
  %i.bl = select <4 x i1> %i.bh, <4 x i1> %i.bk, <4 x i1> zeroinitializer ; 5 uses
  %i.bm = extractelement <4 x i1> %i.bl, i64 0
  br i1 %i.bm, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %i.ar
  store i8 1, ptr %i.bn, align 1, !tbaa !63
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bo = extractelement <4 x i1> %i.bl, i64 1
  br i1 %i.bo, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue
  %i.bp = getelementptr i8, ptr %i.j, i64 %i.ar
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  store i8 1, ptr %i.bq, align 1, !tbaa !63
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue
  %i.br = extractelement <4 x i1> %i.bl, i64 2
  br i1 %i.br, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  %i.bs = getelementptr i8, ptr %i.j, i64 %i.ar
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 1, ptr %i.bt, align 1, !tbaa !63
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.bu = extractelement <4 x i1> %i.bl, i64 3
  br i1 %i.bu, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  %i.bv = getelementptr i8, ptr %i.j, i64 %i.ar
  %i.bw = getelementptr i8, ptr %i.bv, i64 3
  store i8 1, ptr %i.bw, align 1, !tbaa !63
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.bx = zext <4 x i1> %i.bl to <4 x i8>
  %i.by = icmp ne <4 x i8> %wide.load98, %i.bx
  %i.bz = zext <4 x i1> %i.by to <4 x i32>
  %i.ca = add <4 x i32> %vec.phi, %i.bz           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %pred.store.continue104
  %i.cc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ca) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.u, %vector.scevcheck ], [ %i.u, %.lr.ph.us ], [ %i.ac, %middle.block ]
  %.171.us.ph = phi i32 [ %.06473.us, %vector.scevcheck ], [ %.06473.us, %.lr.ph.us ], [ %i.cc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.171.us = phi i32 [ %i.cz, %bb.c ], [ %.171.us.ph, %scalar.ph.preheader ]
  %i.cd = trunc nsw i64 %indvars.iv to i32
  %i.ce = add i32 %i.cd, %i.n                     ; 2 uses
  %i.cf = add nsw i64 %indvars.iv, %i.t           ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf
  %i.cg = load i32, ptr %gep, align 4, !tbaa !157
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr [4 x i8], ptr %i.ak, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !157
  %gep91 = getelementptr [4 x i8], ptr %invariant.gep90, i64 %i.cf
  %i.ck = load i32, ptr %gep91, align 4, !tbaa !157
  %i.cl = add nsw i32 %i.ce, %i.ag
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !157
  %i.cp = add i32 %i.cg, %i.ck
  %i.cq = add i32 %i.cj, %i.co
  %i.cr = sub i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !63, !range !146, !noundef !147 ; 2 uses
  %i.cu = mul i32 %i.cr, 3                        ; 2 uses
  %.not.us = icmp ugt i32 %i.cu, %i.l
  %.not67.us = icmp uge i32 %i.cu, %i.s
  %i.cv = trunc nuw i8 %i.ct to i1
  %spec.select.us = or i1 %.not67.us, %i.cv
  %.0.us = select i1 %.not.us, i1 %spec.select.us, i1 false ; 2 uses
  br i1 %.0.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.cw = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv
  store i8 1, ptr %i.cw, align 1, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %i.cx = zext i1 %.0.us to i8
  %.not68.us = icmp ne i8 %i.ct, %i.cx
  %i.cy = zext i1 %.not68.us to i32
  %i.cz = add i32 %.171.us, %i.cy                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !212

._crit_edge.us:                                   ; preds = %bb.c, %middle.block
  %.lcssa = phi i32 [ %i.cc, %middle.block ], [ %i.cz, %bb.c ] ; 2 uses
  tail call void @_ZN5zxing9BitMatrix10setRowBoolEiPb(ptr noundef nonnull align 8 dereferenceable(346) %i.b, i32 noundef %i.ad, ptr noundef nonnull %i.j)
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond86.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond86.not, label %._crit_edge77, label %.lr.ph.us, !llvm.loop !213

.lr.ph76.split:                                   ; preds = %.lr.ph76, %.lr.ph76.split
  %.06374 = phi i32 [ %i.db, %.lr.ph76.split ], [ %i.m, %.lr.ph76 ] ; 3 uses
  %i.da = tail call noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346) %i.a, i32 noundef %.06374)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.da, i64 %i.i, i1 false)
  tail call void @_ZN5zxing9BitMatrix10setRowBoolEiPb(ptr noundef nonnull align 8 dereferenceable(346) %i.b, i32 noundef %.06374, ptr noundef nonnull %i.j)
  %i.db = add i32 %.06374, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.o
  br i1 %exitcond.not, label %._crit_edge77, label %.lr.ph76.split, !llvm.loop !213

._crit_edge77:                                    ; preds = %.lr.ph76.split, %._crit_edge.us, %bb.a
  %.064.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa, %._crit_edge.us ], [ 0, %.lr.ph76.split ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #20
  ret i32 %.064.lcssa
}

declare noundef i32 @_ZNK5zxing9BitMatrix8getWidthEv(ptr noundef nonnull align 8 dereferenceable(346)) local_unnamed_addr #0

declare noundef i32 @_ZNK5zxing9BitMatrix9getHeightEv(ptr noundef nonnull align 8 dereferenceable(346)) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346), i32 noundef) local_unnamed_addr #0

end_hunk_0
