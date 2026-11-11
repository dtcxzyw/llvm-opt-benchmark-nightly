Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CImage?download=true
inline.NumInlined: 131
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5video6CImage4fillERKNS_6SColorE:bb.a
  %.not28.i.4 = icmp eq i64 %i.bv, 5
  br i1 %.not28.i.4, label %_Z8memset32Pvjm.exit, label %.lr.ph36.i.5

.lr.ph36.i.5:                                     ; preds = %.lr.ph36.i.4
  %i.ca = getelementptr inbounds nuw i8, ptr %.026.lcssa.i, i64 20
  store i32 %.01317, ptr %i.ca, align 4, !tbaa !18
  %.not28.i.5 = icmp eq i64 %i.bv, 6
  br i1 %.not28.i.5, label %_Z8memset32Pvjm.exit, label %.lr.ph36.i.6

.lr.ph36.i.6:                                     ; preds = %.lr.ph36.i.5
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.lcssa.i, i64 24
  store i32 %.01317, ptr %i.cb, align 4, !tbaa !18
  br label %_Z8memset32Pvjm.exit

_Z8memset32Pvjm.exit:                             ; preds = %.lr.ph36.i, %.lr.ph36.i.1, %.lr.ph36.i.2, %.lr.ph36.i.3, %.lr.ph36.i.4, %.lr.ph36.i.5, %.lr.ph36.i.6, %._crit_edge.i, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN5video15CColorConverter24convert_A8R8G8B8toR8G8B8EPKviPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video6IImageD1Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video6IImageD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video6IImageD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video6IImageD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video6CImageD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 88) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 24), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 136), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5video6CImageD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5video6CImageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #19
  br label %_ZN5video6CImageD2Ev.exit

_ZN5video6CImageD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video6CImageD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 88) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 24), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 136), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5video6CImageD1Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5video6CImageD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #19, !inline_history !49
  br label %_ZN5video6CImageD1Ev.exit

_ZN5video6CImageD1Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video6CImageD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 88) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 24), ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 136), ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !19, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN5video6CImageD1Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5video6CImageD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #19, !inline_history !49
  br label %_ZN5video6CImageD1Ev.exit

_ZN5video6CImageD1Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video6CImageD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 88) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 24), ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5video6CImageE0_NS_6IImageE, i64 136), ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !19, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN5video6CImageD0Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5video6CImageD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #19, !inline_history !79
  br label %_ZN5video6CImageD0Ev.exit

_ZN5video6CImageD0Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 64) #19, !inline_history !80
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL30executeBlit_TextureCopy_x_to_xPK8SBlitJob(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !41
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> splat (float 2.621440e+05), <2 x float> zeroinitializer) ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = tail call float @llvm.floor.f32(float %i.g)
  %i.i = fptosi float %i.h to i32                 ; 3 uses
  %i.j = extractelement <2 x float> %i.f, i64 1
  %i.k = tail call float @llvm.floor.f32(float %i.j)
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !43
  switch i32 %i.n, label %.loopexit [
    i32 4, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50   ; 2 uses
  %.not97 = icmp eq i32 %i.p, 0
  br i1 %.not97, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.v = load i32, ptr %i.t, align 8, !tbaa !51
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph94.split.preheader

.lr.ph94.split.preheader:                         ; preds = %.lr.ph94
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %.pre108 = load i32, ptr %i.s, align 8, !tbaa !42
  br label %.lr.ph94.split

.lr.ph94.split:                                   ; preds = %.lr.ph94.split.preheader, %._crit_edge89
  %i.y = phi i32 [ %i.ae, %._crit_edge89 ], [ %i.p, %.lr.ph94.split.preheader ]
  %i.z = phi i32 [ %1, %._crit_edge89 ], [ 1, %.lr.ph94.split.preheader ]
  %.06892.a = phi i32 [ %i.af, %._crit_edge89 ], [ %.pre108, %.lr.ph94.split.preheader ] ; 2 uses
  %.06892 = phi i32 [ %i.aj, %._crit_edge89 ], [ 0, %.lr.ph94.split.preheader ]
  %.06991 = phi ptr [ %i.ai, %._crit_edge89 ], [ %i.x, %.lr.ph94.split.preheader ] ; 2 uses
  %.07090 = phi i32 [ %i.ak, %._crit_edge89 ], [ 0, %.lr.ph94.split.preheader ] ; 2 uses
  %i.aa = ashr i32 %.07090, 18
  %i.ab = mul nsw i32 %.06892.a, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  %.not99 = icmp eq i32 %i.z, 0
  br i1 %.not99, label %._crit_edge89, label %.lr.ph88

._crit_edge89.loopexit:                           ; preds = %.lr.ph88
  %.pre = load i32, ptr %i.s, align 8, !tbaa !42
  %.pre.a = load i32, ptr %i.o, align 4, !tbaa !50
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit, %.lr.ph94.split
  %i.ae = phi i32 [ %.pre.a, %._crit_edge89.loopexit ], [ %i.y, %.lr.ph94.split ] ; 2 uses
  %1 = phi i32 [ %i.as, %._crit_edge89.loopexit ], [ 0, %.lr.ph94.split ]
  %i.af = phi i32 [ %.pre, %._crit_edge89.loopexit ], [ %.06892.a, %.lr.ph94.split ]
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !45
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.06991, i64 %i.ah
  %i.aj = add nuw i32 %.06892, 1                  ; 2 uses
  %i.ak = add nsw i32 %.07090, %i.l
  %i.al = icmp ult i32 %i.aj, %i.ae
  br i1 %i.al, label %.lr.ph94.split, label %.loopexit, !llvm.loop !81

.lr.ph88:                                         ; preds = %.lr.ph94.split, %.lr.ph88
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph88 ], [ 0, %.lr.ph94.split ] ; 2 uses
  %.06785 = phi i32 [ %i.ar, %.lr.ph88 ], [ 0, %.lr.ph94.split ] ; 2 uses
  %i.am = ashr i32 %.06785, 18
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.06991, i64 %indvars.iv105
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !18
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.ar = add nsw i32 %.06785, %i.i
  %i.as = load i32, ptr %i.t, align 8, !tbaa !51  ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next106, %i.at
  br i1 %i.au, label %.lr.ph88, label %._crit_edge89.loopexit, !llvm.loop !82

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !50 ; 2 uses
  %.not95 = icmp eq i32 %i.aw, 0
  br i1 %.not95, label %.loopexit, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !51 ; 4 uses
  %.not96 = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.bf = zext i32 %i.be to i64
  br i1 %.not96, label %.loopexit, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.lr.ph84
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %wide.trip.count = zext i32 %i.bc to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bi = icmp eq i32 %i.bc, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod120 = trunc i32 %i.bc to i1
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %._crit_edge
  %.06482 = phi i32 [ %i.bt, %._crit_edge ], [ 0, %.lr.ph79.preheader ]
  %.06581 = phi ptr [ %i.bs, %._crit_edge ], [ %i.bh, %.lr.ph79.preheader ] ; 4 uses
  %.180 = phi i32 [ %i.bu, %._crit_edge ], [ 0, %.lr.ph79.preheader ] ; 2 uses
  %i.bj = ashr i32 %.180, 18
  %i.bk = mul nsw i32 %i.ba, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.ay, i64 %i.bl ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph79.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph79.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph79
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.06377.epil.init = phi i32 [ 0, %.lr.ph79 ], [ %i.ch, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.bn = ashr i32 %.06377.epil.init, 18
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !31
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.06581, i64 %indvars.iv.epil.init
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %.06581, i64 %i.bf
  %i.bt = add nuw i32 %.06482, 1                  ; 2 uses
  %i.bu = add nsw i32 %.180, %i.l
  %exitcond104.not = icmp eq i32 %i.bt, %i.aw
  br i1 %exitcond104.not, label %.loopexit, label %.lr.ph79, !llvm.loop !83

.lr.ph79.new:                                     ; preds = %.lr.ph79, %.lr.ph79.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph79.new ], [ 0, %.lr.ph79 ] ; 3 uses
  %.06377 = phi i32 [ %i.ch, %.lr.ph79.new ], [ 0, %.lr.ph79 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph79.new ], [ 0, %.lr.ph79 ]
  %i.bv = ashr i32 %.06377, 18
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !31
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.06581, i64 %indvars.iv
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !31
  %i.ca = add nsw i32 %.06377, %i.i               ; 2 uses
  %i.cb = ashr i32 %i.ca, 18
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !31
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.06581, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %i.ce, ptr %i.cg, align 2, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ch = add nsw i32 %i.ca, %i.i                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph79.new, !llvm.loop !84

bb.e:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46
  %i.cm = mul i32 %i.cl, %i.cj
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !50
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.076 = phi i32 [ 0, %.lr.ph ], [ %i.dc, %bb.f ]
  %.06075 = phi ptr [ %i.cr, %.lr.ph ], [ %i.db, %bb.f ] ; 2 uses
  %.06174 = phi ptr [ %i.ct, %.lr.ph ], [ %i.cy, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06075, ptr align 1 %.06174, i64 %i.cn, i1 false)
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !42
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.06174, i64 %i.cx
  %i.cz = load i32, ptr %i.cv, align 4, !tbaa !45
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.06075, i64 %i.da
  %i.dc = add nuw i32 %.076, 1                    ; 2 uses
  %i.dd = load i32, ptr %i.co, align 4, !tbaa !50
  %i.de = icmp ult i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.f, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %._crit_edge89, %.lr.ph94, %bb.e, %bb.d, %.lr.ph84, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL32executeBlit_TextureCopy_32_to_16PK8SBlitJob(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i8, ptr %i.h, align 8, !tbaa !40, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !53 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load float, ptr %i.m, align 8, !tbaa !54
  %.not65 = icmp eq i32 %i.d, 0
  br i1 %.not65, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42
  %.not66 = icmp eq i32 %i.b, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %i.t = zext i32 %i.s to i64
  br i1 %.not66, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph64
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check80 = icmp ult i32 %i.b, 4
  %n.vec82 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n87 = icmp eq i64 %n.vec82, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge60
  %.04862 = phi i32 [ %i.ce, %._crit_edge60 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04961 = phi ptr [ %i.cd, %._crit_edge60 ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.u = uitofp i32 %.04862 to float
  %i.v = fmul float %i.n, %i.u
  %i.w = fptoui float %i.v to i32
  %i.x = mul i32 %i.q, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y ; 5 uses
  br i1 %min.iters.check80, label %scalar.ph79.preheader, label %vector.body83

vector.body83:                                    ; preds = %.lr.ph, %vector.body83
  %index84 = phi i64 [ %index.next85, %vector.body83 ], [ 0, %.lr.ph ] ; 3 uses
end_hunk_0
