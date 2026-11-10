Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 351
begin_hunk_0_@_ZN6ImFont20CalcWordWrapPositionEfPKcS1_f:bb.a
  %i.aq = select i1 %.not, ptr %.378, ptr %.273
  %.167 = select i1 %i.ap, ptr %i.aq, ptr %.066119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.g
  %.493 = phi float [ 0.000000e+00, %bb.f ], [ %.089113, %bb.g ], [ %.392, %bb.o ]
  %.388 = phi float [ 0.000000e+00, %bb.f ], [ %.085114, %bb.g ], [ %.287, %bb.o ]
  %.484 = phi float [ 0.000000e+00, %bb.f ], [ %.080115, %bb.g ], [ %.383, %bb.o ]
  %.479 = phi ptr [ %.075116, %bb.f ], [ %.075116, %bb.g ], [ %.378, %bb.o ]
  %.374 = phi ptr [ %.071117, %bb.f ], [ %.071117, %bb.g ], [ %.273, %bb.o ]
  %.270 = phi i8 [ 1, %bb.f ], [ %.068118, %bb.g ], [ %.169, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ar = icmp ult ptr %.065, %3
  br i1 %i.ar, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %.thread103
  %.4 = phi ptr [ %.167, %.thread103 ], [ %.065, %bb.p ] ; 4 uses
  %i.as = icmp eq ptr %.4, %2
  br i1 %i.as, label %bb.q, label %.loopexit.thread

bb.q:                                             ; preds = %.loopexit
  %i.at = call noundef i32 @_Z28ImTextCountUtf8BytesFromCharPKcS0_(ptr noundef %.4, ptr noundef nonnull %3) #35
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.4, i64 %i.au
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a, %.loopexit, %bb.q
  %.094 = phi ptr [ %i.av, %bb.q ], [ %.4, %.loopexit ], [ %2, %bb.a ]
  ret ptr %.094
}

declare noundef i32 @_Z28ImTextCountUtf8BytesFromCharPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #36
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.065 = phi ptr [ %5, %bb.a ], [ %i.c, %bb.b ]  ; 8 uses
  %i.d = tail call noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %1, float noundef -1.000000e+00) ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !154
  %i.g = fdiv float %1, %i.f                      ; 2 uses
  %i.h = icmp ult ptr %4, %.065
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.i = fcmp ogt float %3, 0.000000e+00
  %i.j = ptrtoaddr ptr %.065 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %.056113.us = phi ptr [ %.056.be.us, %.backedge.us ], [ %4, %.lr.ph ] ; 10 uses
  %.058112.us = phi ptr [ %.058.be.us, %.backedge.us ], [ null, %.lr.ph ] ; 2 uses
  %.061111.us = phi float [ %.061.be.us, %.backedge.us ], [ 0.000000e+00, %.lr.ph ] ; 8 uses
  %.sroa.0.0110.us = phi <2 x float> [ %.sroa.0.0.be.us, %.backedge.us ], [ zeroinitializer, %.lr.ph ] ; 8 uses
  %.not73.us = icmp eq ptr %.058112.us, null
  br i1 %.not73.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.m = fsub float %3, %.061111.us
  %i.n = call noundef ptr @_ZN6ImFont20CalcWordWrapPositionEfPKcS1_f(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %1, ptr noundef %.056113.us, ptr noundef nonnull %.065, float noundef %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.159.us = phi ptr [ %.058112.us, %.lr.ph.split.us ], [ %i.n, %bb.d ] ; 2 uses
  %.not74.us = icmp ult ptr %.056113.us, %.159.us
  br i1 %.not74.us, label %bb.g, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.e
  %.sroa.0.0.vec.extract.us = extractelement <2 x float> %.sroa.0.0110.us, i64 0
  %i.o = fcmp olt float %.sroa.0.0.vec.extract.us, %.061111.us
  %.sroa.0.0.vec.insert.us = insertelement <2 x float> %.sroa.0.0110.us, float %.061111.us, i64 0
  %.sroa.0.1.us = select i1 %i.o, <2 x float> %.sroa.0.0.vec.insert.us, <2 x float> %.sroa.0.0110.us ; 2 uses
  %.sroa.0.4.vec.extract96.us = extractelement <2 x float> %.sroa.0.1.us, i64 1
  %i.p = fadd float %1, %.sroa.0.4.vec.extract96.us
  %.sroa.0.4.vec.insert94.us = insertelement <2 x float> %.sroa.0.1.us, float %i.p, i64 1
  %i.q = ptrtoaddr ptr %.056113.us to i64
  %i.r = sub i64 %i.j, %i.q
  %scevgep.i.us = getelementptr i8, ptr %.056113.us, i64 %i.r ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.f, %.lr.ph.preheader.i.us
  %.07.i.us = phi ptr [ %i.t, %bb.f ], [ %.056113.us, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.s = load i8, ptr %.07.i.us, align 1, !tbaa !53 ; 2 uses
  switch i8 %i.s, label %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i.us, %.lr.ph.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.us, i64 1 ; 2 uses
  %exitcond.not.i.us = icmp eq ptr %i.t, %.065
  br i1 %exitcond.not.i.us, label %._ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us_crit_edge, label %.lr.ph.i.us, !llvm.loop !2

._ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us_crit_edge: ; preds = %bb.f
  %.pre = load i8, ptr %scevgep.i.us, align 1, !tbaa !53
  br label %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us, !llvm.loop !2

_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us:    ; preds = %.lr.ph.i.us, %._ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us_crit_edge
  %i.u = phi i8 [ %.pre, %._ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us_crit_edge ], [ %i.s, %.lr.ph.i.us ]
  %.0.lcssa.i.us = phi ptr [ %scevgep.i.us, %._ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us_crit_edge ], [ %.07.i.us, %.lr.ph.i.us ]
  %i.v = icmp eq i8 %i.u, 10
  %spec.select.idx.i.us = zext i1 %i.v to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.us, i64 %spec.select.idx.i.us
  br label %.backedge.us

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.w = load i8, ptr %.056113.us, align 1, !tbaa !53 ; 2 uses
  %i.x = sext i8 %i.w to i32                      ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !205
  %i.y = icmp sgt i8 %i.w, -1
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.056113.us, ptr noundef nonnull %.065) #35
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %.056113.us, i64 %i.aa
  %.pr.us = load i32, ptr %i.a, align 4, !tbaa !205
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.056113.us, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i32 [ %.pr.us, %bb.h ], [ %i.x, %bb.i ] ; 5 uses
  %.157.us = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ]
  %i.ae = icmp ult i32 %i.ad, 32
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ad, label %bb.m [
    i32 10, label %bb.l
    i32 13, label %select.unfold.us
  ], !llvm.loop !846

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.vec.extract79.us = extractelement <2 x float> %.sroa.0.0110.us, i64 0 ; 2 uses
  %i.af = fcmp oge float %.sroa.0.0.vec.extract79.us, %.061111.us
  %i.ag = select i1 %i.af, float %.sroa.0.0.vec.extract79.us, float %.061111.us
  %.sroa.0.0.vec.insert81.us = insertelement <2 x float> poison, float %i.ag, i64 0
  %.sroa.0.4.vec.extract.us = extractelement <2 x float> %.sroa.0.0110.us, i64 1
  %i.ah = fadd float %1, %.sroa.0.4.vec.extract.us
  %.sroa.0.4.vec.insert.us = insertelement <2 x float> %.sroa.0.0.vec.insert81.us, float %i.ah, i64 1
  br label %select.unfold.us, !llvm.loop !846

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !206
  %i.aj = icmp ult i32 %i.ad, %i.ai
  br i1 %i.aj, label %bb.n, label %.thread.us

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !207
  %i.al = zext i32 %i.ad to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !31 ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00
  br i1 %i.ao, label %.thread.us, label %bb.o

.thread.us:                                       ; preds = %bb.n, %bb.m
  %i.ap = trunc i32 %i.ad to i16
  %i.aq = call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedt(ptr noundef nonnull %i.d, i16 noundef zeroext %i.ap) ; 2 uses
  %.not.i.us = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.in.i.us = select i1 %.not.i.us, ptr %i.l, ptr %i.ar
  %i.as = load float, ptr %.in.i.us, align 4, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.thread.us, %bb.n
  %.0.us = phi float [ %i.as, %.thread.us ], [ %i.an, %bb.n ]
  %i.at = fmul float %i.g, %.0.us
  %i.au = fadd float %.061111.us, %i.at           ; 2 uses
  %i.av = fcmp ult float %i.au, %2
  br i1 %i.av, label %select.unfold.us, label %.thread99

select.unfold.us:                                 ; preds = %bb.o, %bb.l, %bb.k
  %.sroa.0.2.us = phi <2 x float> [ %.sroa.0.0110.us, %bb.k ], [ %.sroa.0.4.vec.insert.us, %bb.l ], [ %.sroa.0.0110.us, %bb.o ]
  %.263.us = phi float [ %.061111.us, %bb.k ], [ 0.000000e+00, %bb.l ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.backedge.us

.backedge.us:                                     ; preds = %select.unfold.us, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us
  %.sroa.0.0.be.us = phi <2 x float> [ %.sroa.0.2.us, %select.unfold.us ], [ %.sroa.0.4.vec.insert94.us, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us ] ; 2 uses
  %.061.be.us = phi float [ %.263.us, %select.unfold.us ], [ 0.000000e+00, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us ] ; 2 uses
  %.058.be.us = phi ptr [ %.159.us, %select.unfold.us ], [ null, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us ]
  %.056.be.us = phi ptr [ %.157.us, %select.unfold.us ], [ %spec.select.i.us, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit.us ] ; 3 uses
  %i.aw = icmp ult ptr %.056.be.us, %.065
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !846

.lr.ph.split:                                     ; preds = %.lr.ph, %select.unfold
  %.056113 = phi ptr [ %.157, %select.unfold ], [ %4, %.lr.ph ] ; 5 uses
  %.061111 = phi float [ %.263, %select.unfold ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %.sroa.0.0110 = phi <2 x float> [ %.sroa.0.2, %select.unfold ], [ zeroinitializer, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.ax = load i8, ptr %.056113, align 1, !tbaa !53 ; 2 uses
  %i.ay = sext i8 %i.ax to i32                    ; 2 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !205
  %i.az = icmp sgt i8 %i.ax, -1
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.ba = getelementptr inbounds nuw i8, ptr %.056113, i64 1
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.bb = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.056113, ptr noundef nonnull %.065) #35
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.056113, i64 %i.bc
  %.pr = load i32, ptr %i.a, align 4, !tbaa !205
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = phi i32 [ %.pr, %bb.q ], [ %i.ay, %bb.p ] ; 5 uses
  %.157 = phi ptr [ %i.bd, %bb.q ], [ %i.ba, %bb.p ] ; 3 uses
  %i.bf = icmp ult i32 %i.be, 32
  br i1 %i.bf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  switch i32 %i.be, label %bb.u [
    i32 10, label %bb.t
    i32 13, label %select.unfold
  ], !llvm.loop !846

bb.t:                                             ; preds = %bb.s
  %.sroa.0.0.vec.extract79 = extractelement <2 x float> %.sroa.0.0110, i64 0 ; 2 uses
  %i.bg = fcmp oge float %.sroa.0.0.vec.extract79, %.061111
  %i.bh = select i1 %i.bg, float %.sroa.0.0.vec.extract79, float %.061111
  %.sroa.0.0.vec.insert81 = insertelement <2 x float> poison, float %i.bh, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0110, i64 1
  %i.bi = fadd float %1, %.sroa.0.4.vec.extract
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert81, float %i.bi, i64 1
  br label %select.unfold, !llvm.loop !846

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !206
  %i.bk = icmp ult i32 %i.be, %i.bj
  br i1 %i.bk, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !207
  %i.bm = zext i32 %i.be to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !31 ; 2 uses
  %i.bp = fcmp olt float %i.bo, 0.000000e+00
  br i1 %i.bp, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.u, %bb.v
  %i.bq = trunc i32 %i.be to i16
  %i.br = call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedt(ptr noundef nonnull %i.d, i16 noundef zeroext %i.bq) ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.in.i = select i1 %.not.i, ptr %i.l, ptr %i.bs
  %i.bt = load float, ptr %.in.i, align 4, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.0 = phi float [ %i.bt, %.thread ], [ %i.bo, %bb.v ]
  %i.bu = fmul float %i.g, %.0
  %i.bv = fadd float %.061111, %i.bu              ; 2 uses
  %i.bw = fcmp ult float %i.bv, %2
  br i1 %i.bw, label %select.unfold, label %.thread99

.thread99:                                        ; preds = %bb.w, %bb.o
  %.us-phi = phi <2 x float> [ %.sroa.0.0110.us, %bb.o ], [ %.sroa.0.0110, %bb.w ]
  %.us-phi116 = phi float [ %.061111.us, %bb.o ], [ %.061111, %bb.w ]
  %.us-phi117 = phi ptr [ %.056113.us, %bb.o ], [ %.056113, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %.loopexit

select.unfold:                                    ; preds = %bb.w, %bb.s, %bb.t
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.0110, %bb.s ], [ %.sroa.0.4.vec.insert, %bb.t ], [ %.sroa.0.0110, %bb.w ] ; 2 uses
  %.263 = phi float [ %.061111, %bb.s ], [ 0.000000e+00, %bb.t ], [ %i.bv, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.bx = icmp ult ptr %.157, %.065
  br i1 %i.bx, label %.lr.ph.split, label %.loopexit, !llvm.loop !846

.loopexit:                                        ; preds = %select.unfold, %.backedge.us, %bb.c, %.thread99
  %.sroa.0.0109 = phi <2 x float> [ %.us-phi, %.thread99 ], [ zeroinitializer, %bb.c ], [ %.sroa.0.0.be.us, %.backedge.us ], [ %.sroa.0.2, %select.unfold ] ; 3 uses
  %.061107 = phi float [ %.us-phi116, %.thread99 ], [ 0.000000e+00, %bb.c ], [ %.061.be.us, %.backedge.us ], [ %.263, %select.unfold ] ; 3 uses
  %.056105 = phi ptr [ %.us-phi117, %.thread99 ], [ %4, %bb.c ], [ %.056.be.us, %.backedge.us ], [ %.157, %select.unfold ]
  %.not75 = icmp eq ptr %6, null
  br i1 %.not75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  store ptr %.056105, ptr %6, align 8, !tbaa !422
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.by = fcmp ogt float %.061107, 0.000000e+00
  %.sroa.0.0.vec.extract83 = extractelement <2 x float> %.sroa.0.0109, i64 0
  %i.bz = fcmp olt float %.sroa.0.0.vec.extract83, %.061107
  %.sroa.0.0.vec.insert85 = insertelement <2 x float> %.sroa.0.0109, float %.061107, i64 0
  %.sroa.0.4 = select i1 %i.bz, <2 x float> %.sroa.0.0.vec.insert85, <2 x float> %.sroa.0.0109 ; 3 uses
  %.sroa.0.4.vec.extract92 = extractelement <2 x float> %.sroa.0.4, i64 1 ; 2 uses
  %i.ca = fcmp oeq float %.sroa.0.4.vec.extract92, 0.000000e+00
  %or.cond = select i1 %i.by, i1 true, i1 %i.ca
  %i.cb = fadd float %1, %.sroa.0.4.vec.extract92
  %.sroa.0.4.vec.insert90 = insertelement <2 x float> %.sroa.0.4, float %i.cb, i64 1
  %.sroa.0.5 = select i1 %or.cond, <2 x float> %.sroa.0.4.vec.insert90, <2 x float> %.sroa.0.4
  ret <2 x float> %.sroa.0.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef captures(none) %1, float noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, i16 noundef zeroext %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %2, float noundef -1.000000e+00) ; 9 uses
  %i.b = zext i16 %5 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208
  %i.e = sext i32 %i.d to i64
  %i.f = icmp ult i64 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.b
  %i.j = load i16, ptr %i.i, align 2, !tbaa !136  ; 2 uses
  switch i16 %i.j, label %bb.d [
    i16 -2, label %bb.c
    i16 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !212
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [44 x i8], ptr %i.l, i64 %i.o
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211
  %i.s = zext i16 %i.j to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.r, i64 %i.s
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.u = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedt(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext %5) ; 2 uses
  %.not14.i = icmp eq ptr %i.u, null
  br i1 %.not14.i, label %bb.f, label %_ZN11ImFontBaked9FindGlyphEt.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !212
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [44 x i8], ptr %i.w, i64 %i.z
  br label %_ZN11ImFontBaked9FindGlyphEt.exit

_ZN11ImFontBaked9FindGlyphEt.exit:                ; preds = %bb.c, %bb.d, %bb.f
  %.1.i = phi ptr [ %i.p, %bb.c ], [ %i.aa, %bb.f ], [ %i.t, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.w, label %_ZN11ImFontBaked9FindGlyphEt.exit.thread

_ZN11ImFontBaked9FindGlyphEt.exit.thread:         ; preds = %bb.e, %_ZN11ImFontBaked9FindGlyphEt.exit
  %.1.i141 = phi ptr [ %.1.i, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.u, %bb.e ] ; 9 uses
  %i.ab = load i32, ptr %.1.i141, align 4         ; 2 uses
  %i.ac = and i32 %i.ab, 2
  %.not118 = icmp eq i32 %i.ac, 0
  br i1 %.not118, label %bb.w, label %bb.g

bb.g:                                             ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit.thread
  %i.ad = and i32 %i.ab, 1
  %.not119 = icmp eq i32 %i.ad, 0
  %i.ae = or i32 %4, 16777215
  %spec.select = select i1 %.not119, i32 %4, i32 %i.ae ; 4 uses
  %i.af = fcmp ult float %2, 0.000000e+00
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !154
  %i.ai = fdiv float %2, %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi float [ %i.ai, %bb.h ], [ 1.000000e+00, %bb.g ] ; 4 uses
  %i.ak = load float, ptr %3, align 4, !tbaa !129
  %i.al = fptosi float %i.ak to i32
  %i.am = sitofp i32 %i.al to float               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !130
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp i32 %i.ap to float               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i141, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !483
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aj, float %i.am) ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i141, i64 16
  %i.av = load float, ptr %i.au, align 4, !tbaa !484
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.aj, float %i.am) ; 7 uses
  %.not120 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not120, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !215
  %i.az = fcmp ogt float %i.at, %i.ay
  br i1 %i.az, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load float, ptr %6, align 4, !tbaa !34
  %i.bb = fcmp olt float %i.aw, %i.ba
  br i1 %i.bb, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i141, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !847
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.aj, float %i.aq) ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i141, i64 20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !530
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.aj, float %i.aq) ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i141, i64 24
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !216 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i141, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !217 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i141, i64 32
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !218 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i141, i64 36
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !219 ; 4 uses
  br i1 %.not120, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load float, ptr %6, align 4, !tbaa !34  ; 3 uses
  %i.br = fcmp olt float %i.at, %i.bq
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = fsub float %i.aw, %i.bq
  %i.bt = fsub float %i.aw, %i.at
  %i.bu = fdiv float %i.bs, %i.bt
  %i.bv = fsub float 1.000000e+00, %i.bu
  %i.bw = fsub float %i.bn, %i.bj
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.bj)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.099 = phi float [ %i.bq, %bb.n ], [ %i.at, %bb.m ] ; 3 uses
  %.091 = phi float [ %i.bx, %bb.n ], [ %i.bj, %bb.m ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !155 ; 3 uses
  %i.ca = fcmp olt float %i.be, %i.bz
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = fsub float %i.bh, %i.bz
  %i.cc = fsub float %i.bh, %i.be
  %i.cd = fdiv float %i.cb, %i.cc
  %i.ce = fsub float 1.000000e+00, %i.cd
  %i.cf = fsub float %i.bp, %i.bl
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %i.bl)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.095 = phi float [ %i.bz, %bb.p ], [ %i.be, %bb.o ] ; 4 uses
  %.089 = phi float [ %i.cg, %bb.p ], [ %i.bl, %bb.o ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !215 ; 3 uses
  %i.cj = fcmp ogt float %i.aw, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = fsub float %i.ci, %.099
  %i.cl = fsub float %i.aw, %.099
  %i.cm = fdiv float %i.ck, %i.cl
  %i.cn = fsub float %i.bn, %.091
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %.091)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.097 = phi float [ %i.ci, %bb.r ], [ %i.aw, %bb.q ]
  %.087 = phi float [ %i.co, %bb.r ], [ %i.bn, %bb.q ]
end_hunk_0
