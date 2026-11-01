Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_window_binarizer?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5zxing19FastWindowBinarizer10fastWindowEPKhPhRNS_12ErrorHandlerE:bb.a
  br i1 %i.fm, label %.lr.ph75.split.split.preheader, label %.critedge

.lr.ph75.split.split.preheader:                   ; preds = %.lr.ph75.split
  %indvars.iv.next93 = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fn = trunc nuw i64 %indvars.iv.next93 to i32 ; 2 uses
  %i.fo = icmp sgt i32 %i.fk, %i.fn
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.fp = trunc nuw i64 %indvars.iv.next93.1 to i32 ; 2 uses
  %i.fq = icmp sgt i32 %i.fk, %i.fp
  %indvars.iv.next93.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.fr = trunc nuw i64 %indvars.iv.next93.2 to i32 ; 2 uses
  %i.fs = icmp sgt i32 %i.fk, %i.fr
  %indvars.iv.next93.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ft = trunc nuw i64 %indvars.iv.next93.3 to i32 ; 2 uses
  %i.fu = icmp sgt i32 %i.fk, %i.ft
  %indvars.iv.next93.4 = add nuw nsw i64 %indvars.iv, 5 ; 3 uses
  %i.fv = trunc nuw i64 %indvars.iv.next93.4 to i32 ; 2 uses
  %i.fw = icmp sgt i32 %i.fk, %i.fv
  br label %.lr.ph75.split.split

.critedge:                                        ; preds = %.critedge2, %.lr.ph75.split, %.lr.ph75, %.lr.ph81.split
  %i.fx = phi i32 [ %i.eh, %.lr.ph81.split ], [ %i.eh, %.lr.ph75 ], [ %i.eh, %.lr.ph75.split ], [ %i.gk, %.critedge2 ] ; 2 uses
  %i.fy = phi i32 [ %i.ei, %.lr.ph81.split ], [ %i.ei, %.lr.ph75 ], [ %i.ei, %.lr.ph75.split ], [ %i.gl, %.critedge2 ] ; 2 uses
  %i.fz = phi i32 [ %i.ej, %.lr.ph81.split ], [ %i.ej, %.lr.ph75 ], [ %i.ej, %.lr.ph75.split ], [ %i.gl, %.critedge2 ] ; 2 uses
  %i.ga = phi i32 [ %i.ek, %.lr.ph81.split ], [ %i.ek, %.lr.ph75 ], [ %i.ek, %.lr.ph75.split ], [ %i.gk, %.critedge2 ] ; 3 uses
  %i.gb = phi i32 [ %i.el, %.lr.ph81.split ], [ %i.el, %.lr.ph75 ], [ %i.ej, %.lr.ph75.split ], [ %i.gl, %.critedge2 ] ; 3 uses
  %i.gc = add nuw nsw i32 %.06180, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %exitcond.not = icmp eq i32 %i.gc, %i.cs
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph81.split, !llvm.loop !74

.lr.ph75.split.split:                             ; preds = %.lr.ph75.split.split.preheader, %.critedge2
  %i.gd = phi i32 [ %i.gk, %.critedge2 ], [ %i.eh, %.lr.ph75.split.split.preheader ]
  %i.ge = phi i32 [ %i.gl, %.critedge2 ], [ %i.ei, %.lr.ph75.split.split.preheader ] ; 3 uses
  %.06074 = phi i32 [ %i.gm, %.critedge2 ], [ %i.dw, %.lr.ph75.split.split.preheader ] ; 2 uses
  %i.gf = mul nsw i32 %i.ge, %.06074
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %1, i64 %i.gg ; 6 uses
  %i.gi = getelementptr inbounds i8, ptr %2, i64 %i.gg ; 6 uses
  %i.gj = icmp slt i32 %i.fj, %i.ge
  br i1 %i.gj, label %.lr.ph, label %.critedge2

.critedge2.loopexit:                              ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa = phi i32 [ %i.gu, %.lr.ph ], [ %i.hb, %.lr.ph.1 ], [ %i.hi, %.lr.ph.2 ], [ %i.hp, %.lr.ph.3 ], [ %i.hw, %.lr.ph.4 ], [ %i.id, %.lr.ph.5 ]
  %.pre97 = load i32, ptr %i.c, align 8, !tbaa !33
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.lr.ph75.split.split
  %i.gk = phi i32 [ %.pre97, %.critedge2.loopexit ], [ %i.gd, %.lr.ph75.split.split ] ; 4 uses
  %i.gl = phi i32 [ %.lcssa, %.critedge2.loopexit ], [ %i.ge, %.lr.ph75.split.split ] ; 4 uses
  %i.gm = add nuw nsw i32 %.06074, 1              ; 3 uses
  %i.gn = icmp slt i32 %i.gm, %i.gk
  %i.go = icmp slt i32 %i.gm, %i.dx
  %or.cond65 = and i1 %i.go, %i.gn
  br i1 %or.cond65, label %.lr.ph75.split.split, label %.critedge, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph75.split.split
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !62
  %i.gr = zext i8 %i.gq to i32
  %i.gs = icmp sgt i32 %i.fh, %i.gr
  %spec.select = zext i1 %i.gs to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv
  store i8 %spec.select, ptr %i.gt, align 1, !tbaa !62
  %i.gu = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, %i.fn
  %or.cond67 = and i1 %i.fo, %i.gv
  br i1 %or.cond67, label %.lr.ph.1, label %.critedge2.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next93
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !62
  %i.gy = zext i8 %i.gx to i32
  %i.gz = icmp sgt i32 %i.fh, %i.gy
  %spec.select.1 = zext i1 %i.gz to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next93
  store i8 %spec.select.1, ptr %i.ha, align 1, !tbaa !62
  %i.hb = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, %i.fp
  %or.cond67.1 = and i1 %i.fq, %i.hc
  br i1 %or.cond67.1, label %.lr.ph.2, label %.critedge2.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next93.1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !62
  %i.hf = zext i8 %i.he to i32
  %i.hg = icmp sgt i32 %i.fh, %i.hf
  %spec.select.2 = zext i1 %i.hg to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next93.1
  store i8 %spec.select.2, ptr %i.hh, align 1, !tbaa !62
  %i.hi = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, %i.fr
  %or.cond67.2 = and i1 %i.fs, %i.hj
  br i1 %or.cond67.2, label %.lr.ph.3, label %.critedge2.loopexit

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next93.2
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !62
  %i.hm = zext i8 %i.hl to i32
  %i.hn = icmp sgt i32 %i.fh, %i.hm
  %spec.select.3 = zext i1 %i.hn to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next93.2
  store i8 %spec.select.3, ptr %i.ho, align 1, !tbaa !62
  %i.hp = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, %i.ft
  %or.cond67.3 = and i1 %i.fu, %i.hq
  br i1 %or.cond67.3, label %.lr.ph.4, label %.critedge2.loopexit

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next93.3
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !62
  %i.ht = zext i8 %i.hs to i32
  %i.hu = icmp sgt i32 %i.fh, %i.ht
  %spec.select.4 = zext i1 %i.hu to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next93.3
  store i8 %spec.select.4, ptr %i.hv, align 1, !tbaa !62
  %i.hw = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %i.fv
  %or.cond67.4 = and i1 %i.fw, %i.hx
  br i1 %or.cond67.4, label %.lr.ph.5, label %.critedge2.loopexit

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv.next93.4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !62
  %i.ia = zext i8 %i.hz to i32
  %i.ib = icmp sgt i32 %i.fh, %i.ia
  %spec.select.5 = zext i1 %i.ib to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next93.4
  store i8 %spec.select.5, ptr %i.ic, align 1, !tbaa !62
  %i.id = load i32, ptr %i.a, align 4, !tbaa !32
  br label %.critedge2.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_ZN5zxing19FastWindowBinarizer12fastIntegralEPKhPj.exit, %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing8ArrayRefIcED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5zxing7Counted7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !25
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5zxing7Counted7releaseEv.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.c, align 8, !tbaa !25
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #12, !inline_history !77
  br label %_ZN5zxing7Counted7releaseEv.exit

_ZN5zxing7Counted7releaseEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN5zxing24GlobalHistogramBinarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.0") align 8, ptr noundef nonnull align 8 dereferenceable(121), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN5zxing19FastWindowBinarizer14binarizeImage0ERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.zxing::Ref", align 8        ; 4 uses
  %3 = alloca %"class.zxing::ArrayRef", align 8   ; 12 uses
  %4 = alloca %"class.zxing::Ref.0", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK5zxing9Binarizer18getLuminanceSourceEv(ptr dead_on_unwind nonnull writable sret(%"class.zxing::Ref") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !23     ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !25
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.b, align 8, !tbaa !25
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #12, !inline_history !0
  br label %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit

_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit:    ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 10 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 5
  br i1 %i.k, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 5
  br i1 %i.n, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @llvm.umin.i32(i32 %i.j, i32 %i.m)
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = fmul nnan float %i.p, 1.300000e-01
  %i.r = fdiv nnan float %i.q, 6.000000e+00
  %i.s = fmul nnan float %i.r, 5.000000e-01
  %i.t = fadd float %i.s, 1.000000e+00
  %i.u = fptosi float %i.t to i32                 ; 4 uses
  %5 = udiv i32 %i.j, 6                           ; 6 uses
  %6 = udiv i32 %i.m, 6                           ; 5 uses
  %i.v = add nuw nsw i32 %5, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.zxing::ArrayRef") align 8 %3, ptr noundef nonnull align 8 dereferenceable(20) %i.a)
  %i.z = load i32, ptr %i.i, align 4, !tbaa !32
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !33
  %i.ab = mul nsw i32 %i.aa, %i.z
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %..lr.ph49.i_crit_edge

..lr.ph49.i_crit_edge:                            ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre138 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %.lr.ph49.i

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  br label %bb.g

.lr.ph49.i:                                       ; preds = %bb.g, %..lr.ph49.i_crit_edge
  %i.aj = phi ptr [ %.pre138, %..lr.ph49.i_crit_edge ], [ %i.ai, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  call void @_ZN5zxing19FastWindowBinarizer15calcBlockTotalsEPiS1_ii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.aj, ptr noundef %i.am, i32 noundef %5, i32 noundef %6)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = zext nneg i32 %i.v to i64               ; 8 uses
  %i.at = zext nneg i32 %5 to i64                 ; 3 uses
  %wide.trip.count69.i = zext nneg i32 %6 to i64  ; 3 uses
  %xtraiter = and i64 %i.at, 3                    ; 3 uses
  %i.au = add nsw i32 %5, -1
  %i.av = icmp ult i32 %i.au, 3
  %unroll_iter = and i64 %i.at, 536870908
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod153 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph49.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next67.i, %._crit_edge.us.i ] ; 3 uses
  %i.aw = mul nuw nsw i64 %indvars.iv66.i, %i.as
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aw ; 6 uses
  %i.ay = mul nuw nsw i64 %indvars.iv66.i, %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ay ; 5 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !60
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 5 uses
  %.04245.us.i = phi i32 [ %i.bo, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv61.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !60
  %i.bc = add nsw i32 %i.bb, %.04245.us.i         ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next62.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !60
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next62.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !60
  %i.bg = add nsw i32 %i.bf, %i.bc                ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next62.i.1
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next62.i.1
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !60
  %i.bk = add nsw i32 %i.bj, %i.bg                ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next62.i.2
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !60
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next62.i.2
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !60
  %i.bo = add nsw i32 %i.bn, %i.bk                ; 3 uses
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next62.i.3
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !60
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !5

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv61.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next62.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.04245.us.i.epil.init = phi i32 [ 0, %.lr.ph.us.i ], [ %i.bo, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv61.i.epil = phi i64 [ %indvars.iv61.i.epil.init, %.epil.preheader ], [ %indvars.iv.next62.i.epil, %bb.f ] ; 2 uses
  %.04245.us.i.epil = phi i32 [ %.04245.us.i.epil.init, %.epil.preheader ], [ %i.bs, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv61.i.epil
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !60
  %i.bs = add nsw i32 %i.br, %.04245.us.i.epil    ; 2 uses
  %indvars.iv.next62.i.epil = add nuw nsw i64 %indvars.iv61.i.epil, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next62.i.epil
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !60
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.f, !llvm.loop !78

._crit_edge.us.i:                                 ; preds = %bb.f, %._crit_edge.us.i.unr-lcssa
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %.lr.ph.us56.i.preheader, label %.lr.ph.us.i, !llvm.loop !6

.lr.ph.us56.i.preheader:                          ; preds = %._crit_edge.us.i
  %xtraiter155 = and i64 %wide.trip.count69.i, 1
  %.off = add nsw i32 %i.m, -6
  %7 = icmp ult i32 %.off, 6
  %unroll_iter159 = and i64 %wide.trip.count69.i, 536870910
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  %lcmp.mod158 = trunc i32 %6 to i1
  br label %.lr.ph.us56.i

.lr.ph.us56.i:                                    ; preds = %.lr.ph.us56.i.preheader, %._crit_edge.us57.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge.us57.i ], [ 0, %.lr.ph.us56.i.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv79.i ; 4 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !60
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv79.i ; 3 uses
  br i1 %7, label %.epil.preheader154, label %.lr.ph.us56.i.new

.lr.ph.us56.i.new:                                ; preds = %.lr.ph.us56.i, %.lr.ph.us56.i.new
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ] ; 3 uses
  %.03950.us.i = phi i32 [ %i.cb, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ]
  %niter160 = phi i64 [ %niter160.next.1, %.lr.ph.us56.i.new ], [ 0, %.lr.ph.us56.i ]
  %i.bv = mul nuw nsw i64 %indvars.iv74.i, %i.as
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.bv
  %i.bw = load i32, ptr %gep.i, align 4, !tbaa !60
  %i.bx = add nsw i32 %i.bw, %.03950.us.i         ; 2 uses
  %indvars.iv.next75.i = or disjoint i64 %indvars.iv74.i, 1 ; 2 uses
  %i.by = mul nuw nsw i64 %indvars.iv.next75.i, %i.as
  %gep90.i = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.by
  store i32 %i.bx, ptr %gep90.i, align 4, !tbaa !60
  %i.bz = mul nuw nsw i64 %indvars.iv.next75.i, %i.as
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.bz
  %i.ca = load i32, ptr %gep.i.1, align 4, !tbaa !60
  %i.cb = add nsw i32 %i.ca, %i.bx                ; 3 uses
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 3 uses
  %i.cc = mul nuw nsw i64 %indvars.iv.next75.i.1, %i.as
  %gep90.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cc
  store i32 %i.cb, ptr %gep90.i.1, align 4, !tbaa !60
  %niter160.next.1 = add nuw i64 %niter160, 2     ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge.us57.i.unr-lcssa, label %.lr.ph.us56.i.new, !llvm.loop !7

._crit_edge.us57.i.unr-lcssa:                     ; preds = %.lr.ph.us56.i.new
  br i1 %lcmp.mod157.not, label %._crit_edge.us57.i, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge.us57.i.unr-lcssa, %.lr.ph.us56.i
  %indvars.iv74.i.epil.init = phi i64 [ 0, %.lr.ph.us56.i ], [ %indvars.iv.next75.i.1, %._crit_edge.us57.i.unr-lcssa ] ; 2 uses
  %.03950.us.i.epil.init = phi i32 [ 0, %.lr.ph.us56.i ], [ %i.cb, %._crit_edge.us57.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod158)
  %i.cd = mul nuw nsw i64 %indvars.iv74.i.epil.init, %i.as
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.cd
  %i.ce = load i32, ptr %gep.i.epil, align 4, !tbaa !60
  %i.cf = add nsw i32 %i.ce, %.03950.us.i.epil.init
  %indvars.iv.next75.i.epil = add nuw nsw i64 %indvars.iv74.i.epil.init, 1
  %i.cg = mul nuw nsw i64 %indvars.iv.next75.i.epil, %i.as
  %gep90.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cg
  store i32 %i.cf, ptr %gep90.i.epil, align 4, !tbaa !60
  br label %._crit_edge.us57.i

._crit_edge.us57.i:                               ; preds = %._crit_edge.us57.i.unr-lcssa, %.epil.preheader154
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %i.as
  br i1 %exitcond83.not.i, label %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit, label %.lr.ph.us56.i, !llvm.loop !8

_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit: ; preds = %._crit_edge.us57.i
  %i.ch = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #13
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.i, align 4, !tbaa !32
  %i.cn = load i32, ptr %i.l, align 8, !tbaa !33
  %i.co = mul nsw i32 %i.cn, %i.cm
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %bb.g, label %.lr.ph49.i, !llvm.loop !79

bb.h:                                             ; preds = %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit
  %i.cr = load i32, ptr %i.i, align 4, !tbaa !32
  %i.cs = load i32, ptr %i.l, align 8, !tbaa !33
  invoke void @_ZN5zxing9BitMatrixC1EiiRNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(346) %i.ch, i32 noundef %i.cr, i32 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 13 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !25
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !25
  %i.cw = load ptr, ptr %1, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %.lr.ph120.preheader, label %.critedge

bb.k:                                             ; preds = %_ZN5zxing19FastWindowBinarizer10cumulativeEPiS1_ii.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

bb.l:                                             ; preds = %bb.h
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 352) #14
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

.lr.ph120.preheader:                              ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58 ; 6 uses
  br label %.lr.ph120

._crit_edge125.split:                             ; preds = %._crit_edge121.split
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dh = load i32, ptr %i.ct, align 8, !tbaa !25
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.ct, align 8, !tbaa !25
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !49 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.dj, null
  br i1 %.not5.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge125.split
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !25
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !25
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -559026175, ptr %i.dk, align 8, !tbaa !25
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(12) %i.dj) #12, !inline_history !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge125.split
  store ptr %i.ch, ptr %i.dg, align 8, !tbaa !49
  %i.dr = load i32, ptr %i.ct, align 8, !tbaa !25
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.ct, align 8, !tbaa !25
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.p, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  store i32 -559026175, ptr %i.ct, align 8, !tbaa !25
  %i.du = load ptr, ptr %i.ch, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit:           ; preds = %bb.o, %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50 ; 4 uses
  %.not.i89 = icmp eq ptr %i.dy, null
  br i1 %.not.i89, label %_ZN5zxing8ArrayRefIcED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !25
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !25
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.r, label %_ZN5zxing8ArrayRefIcED2Ev.exit

bb.r:                                             ; preds = %bb.q
  store i32 -559026175, ptr %i.dz, align 8, !tbaa !25
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(12) %i.dy) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit

_ZN5zxing8ArrayRefIcED2Ev.exit:                   ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.am

bb.s:                                             ; preds = %bb.i
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load i32, ptr %i.ct, align 8, !tbaa !25
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.ct, align 8, !tbaa !25
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.t, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

bb.t:                                             ; preds = %bb.s
  store i32 -559026175, ptr %i.ct, align 8, !tbaa !25
  %i.ek = load ptr, ptr %i.ch, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %._crit_edge121.split
  %.071122 = phi i32 [ %i.fd, %._crit_edge121.split ], [ 0, %.lr.ph120.preheader ] ; 4 uses
  %i.en = sub nsw i32 %.071122, %i.u
  %i.eo = call i32 @llvm.smax.i32(i32 %i.en, i32 -1)
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  %i.eq = add nuw nsw i32 %.071122, %i.u
  %i.er = call noundef i32 @llvm.smin.i32(i32 %6, i32 %i.eq) ; 2 uses
  %i.es = mul nsw i32 %i.er, %i.v                 ; 2 uses
  %i.et = mul nsw i32 %i.ep, %i.v                 ; 2 uses
  %i.eu = sub nsw i32 %i.er, %i.ep
  %i.ev = mul i32 %i.eu, 36
  %i.ew = mul nuw i32 %.071122, 6                 ; 7 uses
  %i.ex = icmp slt i32 %i.ew, 2147483642
  br i1 %i.ex, label %.lr.ph116.preheader, label %._crit_edge121.split

.lr.ph116.preheader:                              ; preds = %.lr.ph120
  %i.ey = or disjoint i32 %i.ew, 1
  %i.ez = add nuw nsw i32 %i.ew, 2
  %i.fa = add nuw nsw i32 %i.ew, 3
  %i.fb = add nuw nsw i32 %i.ew, 4
  %i.fc = add nuw nsw i32 %i.ew, 5
  br label %.lr.ph116

._crit_edge121.split:                             ; preds = %._crit_edge117.split, %.lr.ph120
  %i.fd = add nuw nsw i32 %.071122, 1             ; 2 uses
  %exitcond132.not = icmp eq i32 %i.fd, %6
  br i1 %exitcond132.not, label %._crit_edge125.split, label %.lr.ph120, !llvm.loop !80

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117.split
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %._crit_edge117.split ], [ 0, %.lr.ph116.preheader ] ; 18 uses
  %.070118 = phi i32 [ %i.gu, %._crit_edge117.split ], [ 0, %.lr.ph116.preheader ] ; 4 uses
  %i.fe = sub nsw i32 %.070118, %i.u
  %i.ff = call i32 @llvm.smax.i32(i32 %i.fe, i32 -1)
  %i.fg = add nsw i32 %i.ff, 1                    ; 3 uses
  %i.fh = add nuw nsw i32 %.070118, %i.u
  %i.fi = call noundef i32 @llvm.smin.i32(i32 %5, i32 %i.fh) ; 3 uses
  %i.fj = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 4 uses
  %i.fk = add nsw i32 %i.fi, %i.es
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !60
  %i.fo = add nuw nsw i32 %i.fg, %i.et
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !60
  %i.fs = add nsw i32 %i.fi, %i.et
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !60
  %i.fw = add nsw i32 %i.fg, %i.es
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !60
  %.neg110 = add i32 %i.fr, %i.fn
  %i.ga = add i32 %i.fv, %i.fz
  %i.gb = sub i32 %.neg110, %i.ga
  %i.gc = sub nsw i32 %i.fi, %i.fg
  %i.gd = mul i32 %i.ev, %i.gc
  %i.ge = sdiv i32 %i.gb, %i.gd                   ; 36 uses
  %i.gf = mul nuw i32 %.070118, 6                 ; 2 uses
  %i.gg = icmp slt i32 %i.gf, 2147483642
  br i1 %i.gg, label %.lr.ph113.preheader, label %._crit_edge117.split

.lr.ph113.preheader:                              ; preds = %.lr.ph116
  %i.gh = add nuw i32 %i.gf, 6
  %indvars.iv.next130 = or disjoint i64 %indvars.iv127, 1 ; 13 uses
  %i.gi = trunc nuw i64 %indvars.iv.next130 to i32
  %i.gj = icmp sgt i32 %i.gh, %i.gi               ; 6 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv127, 2 ; 12 uses
  %indvars.iv.next130.2 = add nuw nsw i64 %indvars.iv127, 3 ; 12 uses
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv127, 4 ; 12 uses
  %indvars.iv.next130.4 = add nuw nsw i64 %indvars.iv127, 5 ; 12 uses
  %i.gk = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.gl = load i32, ptr %i.i, align 4, !tbaa !32
  %i.gm = mul nsw i32 %i.gl, %i.ew
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gn ; 6 uses
  %i.gp = getelementptr inbounds i8, ptr %i.df, i64 %i.gn ; 6 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv127
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !60
  %i.gs = icmp slt i32 %i.gr, %i.ge
  %spec.select = zext i1 %i.gs to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv127
  store i8 %spec.select, ptr %i.gt, align 1, !tbaa !62
  br i1 %i.gj, label %bb.z, label %._crit_edge.a

._crit_edge117.split:                             ; preds = %._crit_edge.4, %bb.y, %.lr.ph116
  %i.gu = add nuw nsw i32 %.070118, 1             ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 6
  %exitcond.not = icmp eq i32 %i.gu, %5
  br i1 %exitcond.not, label %._crit_edge121.split, label %.lr.ph116, !llvm.loop !81

._crit_edge.a:                                    ; preds = %bb.z, %.lr.ph113.preheader
  %i.gv = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.gw = load i32, ptr %i.i, align 4, !tbaa !32
  %i.gx = mul nsw i32 %i.gw, %i.ey
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gy ; 6 uses
  %i.ha = getelementptr inbounds i8, ptr %i.df, i64 %i.gy ; 6 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv127
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !60
  %i.hd = icmp slt i32 %i.hc, %i.ge
  %spec.select.1 = zext i1 %i.hd to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv127
  store i8 %spec.select.1, ptr %i.he, align 1, !tbaa !62
  br i1 %i.gj, label %bb.u, label %._crit_edge.1

bb.u:                                             ; preds = %._crit_edge.a
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next130
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !60
  %i.hh = icmp slt i32 %i.hg, %i.ge
  %spec.select152.1 = zext i1 %i.hh to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next130
  store i8 %spec.select152.1, ptr %i.hi, align 1, !tbaa !62
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next130.1
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !60
  %i.hl = icmp slt i32 %i.hk, %i.ge
  %.sink134.1 = zext i1 %i.hl to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next130.1
  store i8 %.sink134.1, ptr %i.hm, align 1, !tbaa !62
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next130.2
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !60
  %i.hp = icmp slt i32 %i.ho, %i.ge
  %.sink135.1 = zext i1 %i.hp to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next130.2
  store i8 %.sink135.1, ptr %i.hq, align 1, !tbaa !62
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next130.3
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !60
  %i.ht = icmp slt i32 %i.hs, %i.ge
  %.sink136.1 = zext i1 %i.ht to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next130.3
  store i8 %.sink136.1, ptr %i.hu, align 1, !tbaa !62
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next130.4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !60
  %i.hx = icmp slt i32 %i.hw, %i.ge
  %.sink137.1 = zext i1 %i.hx to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next130.4
  store i8 %.sink137.1, ptr %i.hy, align 1, !tbaa !62
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.u, %._crit_edge.a
  %i.hz = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ia = load i32, ptr %i.i, align 4, !tbaa !32
  %i.ib = mul nsw i32 %i.ia, %i.ez
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ic ; 6 uses
  %i.ie = getelementptr inbounds i8, ptr %i.df, i64 %i.ic ; 6 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv127
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !60
  %i.ih = icmp slt i32 %i.ig, %i.ge
  %spec.select.2 = zext i1 %i.ih to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv127
  store i8 %spec.select.2, ptr %i.ii, align 1, !tbaa !62
  br i1 %i.gj, label %bb.v, label %._crit_edge.2

bb.v:                                             ; preds = %._crit_edge.1
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next130
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !60
  %i.il = icmp slt i32 %i.ik, %i.ge
  %spec.select152.2 = zext i1 %i.il to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next130
  store i8 %spec.select152.2, ptr %i.im, align 1, !tbaa !62
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next130.1
  %i.io = load i32, ptr %i.in, align 4, !tbaa !60
  %i.ip = icmp slt i32 %i.io, %i.ge
  %.sink134.2 = zext i1 %i.ip to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next130.1
  store i8 %.sink134.2, ptr %i.iq, align 1, !tbaa !62
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next130.2
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !60
  %i.it = icmp slt i32 %i.is, %i.ge
  %.sink135.2 = zext i1 %i.it to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next130.2
  store i8 %.sink135.2, ptr %i.iu, align 1, !tbaa !62
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next130.3
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !60
  %i.ix = icmp slt i32 %i.iw, %i.ge
  %.sink136.2 = zext i1 %i.ix to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next130.3
  store i8 %.sink136.2, ptr %i.iy, align 1, !tbaa !62
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next130.4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !60
  %i.jb = icmp slt i32 %i.ja, %i.ge
  %.sink137.2 = zext i1 %i.jb to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv.next130.4
  store i8 %.sink137.2, ptr %i.jc, align 1, !tbaa !62
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %bb.v, %._crit_edge.1
  %i.jd = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.je = load i32, ptr %i.i, align 4, !tbaa !32
  %i.jf = mul nsw i32 %i.je, %i.fa
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jg ; 6 uses
  %i.ji = getelementptr inbounds i8, ptr %i.df, i64 %i.jg ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv127
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !60
  %i.jl = icmp slt i32 %i.jk, %i.ge
  %spec.select.3 = zext i1 %i.jl to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv127
  store i8 %spec.select.3, ptr %i.jm, align 1, !tbaa !62
  br i1 %i.gj, label %bb.w, label %._crit_edge.3

bb.w:                                             ; preds = %._crit_edge.2
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next130
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !60
  %i.jp = icmp slt i32 %i.jo, %i.ge
  %spec.select152.3 = zext i1 %i.jp to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next130
  store i8 %spec.select152.3, ptr %i.jq, align 1, !tbaa !62
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next130.1
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !60
  %i.jt = icmp slt i32 %i.js, %i.ge
  %.sink134.3 = zext i1 %i.jt to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next130.1
  store i8 %.sink134.3, ptr %i.ju, align 1, !tbaa !62
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next130.2
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !60
  %i.jx = icmp slt i32 %i.jw, %i.ge
  %.sink135.3 = zext i1 %i.jx to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next130.2
  store i8 %.sink135.3, ptr %i.jy, align 1, !tbaa !62
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next130.3
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !60
  %i.kb = icmp slt i32 %i.ka, %i.ge
  %.sink136.3 = zext i1 %i.kb to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next130.3
  store i8 %.sink136.3, ptr %i.kc, align 1, !tbaa !62
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next130.4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !60
  %i.kf = icmp slt i32 %i.ke, %i.ge
  %.sink137.3 = zext i1 %i.kf to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next130.4
  store i8 %.sink137.3, ptr %i.kg, align 1, !tbaa !62
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %bb.w, %._crit_edge.2
  %i.kh = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ki = load i32, ptr %i.i, align 4, !tbaa !32
  %i.kj = mul nsw i32 %i.ki, %i.fb
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.kk ; 6 uses
  %i.km = getelementptr inbounds i8, ptr %i.df, i64 %i.kk ; 6 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv127
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !60
  %i.kp = icmp slt i32 %i.ko, %i.ge
  %spec.select.4 = zext i1 %i.kp to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv127
  store i8 %spec.select.4, ptr %i.kq, align 1, !tbaa !62
  br i1 %i.gj, label %bb.x, label %._crit_edge.4

bb.x:                                             ; preds = %._crit_edge.3
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next130
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !60
  %i.kt = icmp slt i32 %i.ks, %i.ge
  %spec.select152.4 = zext i1 %i.kt to i8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next130
  store i8 %spec.select152.4, ptr %i.ku, align 1, !tbaa !62
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next130.1
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !60
  %i.kx = icmp slt i32 %i.kw, %i.ge
  %.sink134.4 = zext i1 %i.kx to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next130.1
  store i8 %.sink134.4, ptr %i.ky, align 1, !tbaa !62
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next130.2
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !60
  %i.lb = icmp slt i32 %i.la, %i.ge
  %.sink135.4 = zext i1 %i.lb to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next130.2
  store i8 %.sink135.4, ptr %i.lc, align 1, !tbaa !62
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next130.3
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !60
  %i.lf = icmp slt i32 %i.le, %i.ge
  %.sink136.4 = zext i1 %i.lf to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next130.3
  store i8 %.sink136.4, ptr %i.lg, align 1, !tbaa !62
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.next130.4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !60
  %i.lj = icmp slt i32 %i.li, %i.ge
  %.sink137.4 = zext i1 %i.lj to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next130.4
  store i8 %.sink137.4, ptr %i.lk, align 1, !tbaa !62
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %bb.x, %._crit_edge.3
  %i.ll = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.lm = load i32, ptr %i.i, align 4, !tbaa !32
  %i.ln = mul nsw i32 %i.lm, %i.fc
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lo ; 6 uses
  %i.lq = getelementptr inbounds i8, ptr %i.df, i64 %i.lo ; 6 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv127
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !60
  %i.lt = icmp slt i32 %i.ls, %i.ge
  %spec.select.5 = zext i1 %i.lt to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv127
  store i8 %spec.select.5, ptr %i.lu, align 1, !tbaa !62
  br i1 %i.gj, label %bb.y, label %._crit_edge117.split

bb.y:                                             ; preds = %._crit_edge.4
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next130
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !60
  %i.lx = icmp slt i32 %i.lw, %i.ge
  %spec.select152.5 = zext i1 %i.lx to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv.next130
  store i8 %spec.select152.5, ptr %i.ly, align 1, !tbaa !62
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next130.1
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !60
  %i.mb = icmp slt i32 %i.ma, %i.ge
  %.sink134.5 = zext i1 %i.mb to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv.next130.1
  store i8 %.sink134.5, ptr %i.mc, align 1, !tbaa !62
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next130.2
  %i.me = load i32, ptr %i.md, align 4, !tbaa !60
  %i.mf = icmp slt i32 %i.me, %i.ge
  %.sink135.5 = zext i1 %i.mf to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv.next130.2
  store i8 %.sink135.5, ptr %i.mg, align 1, !tbaa !62
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next130.3
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !60
  %i.mj = icmp slt i32 %i.mi, %i.ge
  %.sink136.5 = zext i1 %i.mj to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv.next130.3
  store i8 %.sink136.5, ptr %i.mk, align 1, !tbaa !62
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next130.4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !60
  %i.mn = icmp slt i32 %i.mm, %i.ge
  %.sink137.5 = zext i1 %i.mn to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv.next130.4
  store i8 %.sink137.5, ptr %i.mo, align 1, !tbaa !62
  br label %._crit_edge117.split

bb.z:                                             ; preds = %.lr.ph113.preheader
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next130
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !60
  %i.mr = icmp slt i32 %i.mq, %i.ge
  %spec.select152 = zext i1 %i.mr to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next130
  store i8 %spec.select152, ptr %i.ms, align 1, !tbaa !62
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next130.1
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !60
  %i.mv = icmp slt i32 %i.mu, %i.ge
  %.sink134 = zext i1 %i.mv to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next130.1
  store i8 %.sink134, ptr %i.mw, align 1, !tbaa !62
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next130.2
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !60
  %i.mz = icmp slt i32 %i.my, %i.ge
  %.sink135 = zext i1 %i.mz to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next130.2
  store i8 %.sink135, ptr %i.na, align 1, !tbaa !62
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next130.3
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !60
  %i.nd = icmp slt i32 %i.nc, %i.ge
  %.sink136 = zext i1 %i.nd to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next130.3
  store i8 %.sink136, ptr %i.ne, align 1, !tbaa !62
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next130.4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !60
  %i.nh = icmp slt i32 %i.ng, %i.ge
  %.sink137 = zext i1 %i.nh to i8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next130.4
  store i8 %.sink137, ptr %i.ni, align 1, !tbaa !62
  br label %._crit_edge.a

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91:         ; preds = %bb.k, %bb.l, %bb.s, %bb.t
  %.pn86 = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.db, %bb.l ], [ %i.da, %bb.k ], [ %i.eg, %bb.s ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !50 ; 4 uses
  %.not.i92 = icmp eq ptr %i.nk, null
  br i1 %.not.i92, label %_ZN5zxing8ArrayRefIcED2Ev.exit93, label %bb.aa

bb.aa:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !25
  %i.nn = add i32 %i.nm, -1                       ; 2 uses
  store i32 %i.nn, ptr %i.nl, align 8, !tbaa !25
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.ab, label %_ZN5zxing8ArrayRefIcED2Ev.exit93

bb.ab:                                            ; preds = %bb.aa
  store i32 -559026175, ptr %i.nl, align 8, !tbaa !25
  %i.np = load ptr, ptr %i.nk, align 8, !tbaa !27
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(12) %i.nk) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit93

_ZN5zxing8ArrayRefIcED2Ev.exit93:                 ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit91, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn86

bb.ac:                                            ; preds = %bb.d, %_ZN5zxing3RefINS_15LuminanceSourceEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN5zxing24GlobalHistogramBinarizer14getBlackMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind nonnull writable sret(%"class.zxing::Ref.0") align 8 %4, ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.nt = load ptr, ptr %4, align 8, !tbaa !49    ; 5 uses
  %.not.i.i94 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i94, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !25
  %i.nw = add i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.nx = load ptr, ptr %i.ns, align 8, !tbaa !49 ; 4 uses
  %.not5.i.i95 = icmp eq ptr %i.nx, null
  br i1 %.not5.i.i95, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 3 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !25
  %i.oa = add i32 %i.nz, -1                       ; 2 uses
  store i32 %i.oa, ptr %i.ny, align 8, !tbaa !25
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.ag, label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96

bb.ag:                                            ; preds = %bb.af
  store i32 -559026175, ptr %i.ny, align 8, !tbaa !25
  %i.oc = load ptr, ptr %i.nx, align 8, !tbaa !27
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(12) %i.nx) #12, !inline_history !4
  %.pre = load ptr, ptr %4, align 8, !tbaa !49
  br label %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96

_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96:     ; preds = %bb.ae, %bb.af, %bb.ag
  %i.of = phi ptr [ %i.nt, %bb.ae ], [ %i.nt, %bb.af ], [ %.pre, %bb.ag ] ; 4 uses
  store ptr %i.nt, ptr %i.ns, align 8, !tbaa !49
  %.not.i97 = icmp eq ptr %i.of, null
  br i1 %.not.i97, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98, label %bb.ah

bb.ah:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 3 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !25
  %i.oi = add i32 %i.oh, -1                       ; 2 uses
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !25
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.ai, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98

bb.ai:                                            ; preds = %bb.ah
  store i32 -559026175, ptr %i.og, align 8, !tbaa !25
  %i.ok = load ptr, ptr %i.of, align 8, !tbaa !27
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(12) %i.of) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98:         ; preds = %_ZN5zxing3RefINS_9BitMatrixEEaSERKS2_.exit96, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.am

.critedge:                                        ; preds = %bb.j
  %i.on = load i32, ptr %i.ct, align 8, !tbaa !25
  %i.oo = add i32 %i.on, -1                       ; 2 uses
  store i32 %i.oo, ptr %i.ct, align 8, !tbaa !25
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.aj, label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100

bb.aj:                                            ; preds = %.critedge
  store i32 -559026175, ptr %i.ct, align 8, !tbaa !25
  %i.oq = load ptr, ptr %i.ch, align 8, !tbaa !27
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #12, !inline_history !2
  br label %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100

_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100:        ; preds = %.critedge, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %3, align 8, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !50 ; 4 uses
  %.not.i101 = icmp eq ptr %i.ou, null
  br i1 %.not.i101, label %_ZN5zxing8ArrayRefIcED2Ev.exit102, label %bb.ak

bb.ak:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 3 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !25
  %i.ox = add i32 %i.ow, -1                       ; 2 uses
  store i32 %i.ox, ptr %i.ov, align 8, !tbaa !25
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.al, label %_ZN5zxing8ArrayRefIcED2Ev.exit102

bb.al:                                            ; preds = %bb.ak
  store i32 -559026175, ptr %i.ov, align 8, !tbaa !25
  %i.oz = load ptr, ptr %i.ou, align 8, !tbaa !27
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(12) %i.ou) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit102

_ZN5zxing8ArrayRefIcED2Ev.exit102:                ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit100, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.am

bb.am:                                            ; preds = %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98, %_ZN5zxing8ArrayRefIcED2Ev.exit, %_ZN5zxing8ArrayRefIcED2Ev.exit102
  %.179 = phi i32 [ -1, %_ZN5zxing8ArrayRefIcED2Ev.exit102 ], [ 0, %_ZN5zxing8ArrayRefIcED2Ev.exit ], [ 0, %_ZN5zxing3RefINS_9BitMatrixEED2Ev.exit98 ]
  ret i32 %.179
}

declare void @_ZN5zxing9Binarizer17getInvertedMatrixERNS_12ErrorHandlerE(ptr dead_on_unwind writable sret(%"class.zxing::Ref.0") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing8ArrayRefIcED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5zxing8ArrayRefIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !25
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5zxing8ArrayRefIcED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.c, align 8, !tbaa !25
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #12, !inline_history !3
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit

_ZN5zxing8ArrayRefIcED2Ev.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
end_hunk_0
