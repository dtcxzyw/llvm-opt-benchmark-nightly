Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scansegment?download=true
inline.NumInlined: 1020
inline.NumDeleted: 456
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE:bb.a
  tail call void @_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o)
  %.pre.pre.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.g, %i.m
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.q, ptr %i.a, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.r = icmp eq i32 %i.h, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit
  store i32 0, ptr %.pre.pre, align 4, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit
  %.016 = phi i32 [ 1, %bb.e ], [ %i.h, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.s = add nsw i32 %i.l, -1                     ; 3 uses
  %i.t = icmp slt i32 %.016, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.u = sext i32 %.016 to i64                    ; 4 uses
  %wide.trip.count = sext i32 %i.s to i64         ; 3 uses
  %i.v = sub nsw i64 %wide.trip.count, %i.u
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.u, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.prol
  %i.x = trunc nsw i64 %indvars.iv.next.prol to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !119
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !222

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.y = sub nsw i64 %i.u, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %i.aa = zext nneg i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %i.aa
  store i32 0, ptr %i.ab, align 4, !tbaa !119
  ret i32 %.016

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.ad = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !119
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next
  %i.af = trunc nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !119
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next.1
  %i.ah = trunc nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !119
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre, i64 %indvars.iv.next.2
  %i.aj = trunc nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !119
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl9getLabelsERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(7368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7160
  tail call void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  ret void
}

declare void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl19getLabelContourMaskERKNS_12_OutputArrayEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7368) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 24 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.e = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !228
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86, !noalias !228
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.j, align 8, !tbaa !86
  store i64 17179869185, ptr %i.i, align 8, !tbaa !54
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.e unwind label %bb.as

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.as      ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = load i32, ptr %i.a, align 4, !tbaa !58
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader51.lr.ph, label %._crit_edge58

.preheader51.lr.ph:                               ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7184 ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !57   ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader51, label %._crit_edge58

.preheader51:                                     ; preds = %.preheader51.lr.ph, %._crit_edge
  %i.v = phi i32 [ %i.im, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 3 uses
  %i.w = phi i32 [ %i.in, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 2 uses
  %i.x = phi i32 [ %i.io, %._crit_edge ], [ %i.t, %.preheader51.lr.ph ] ; 12 uses
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.pre-phi, %._crit_edge ], [ 0, %.preheader51.lr.ph ] ; 29 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader.lr.ph, label %.preheader51.._crit_edge_crit_edge

.preheader51.._crit_edge_crit_edge:               ; preds = %.preheader51
  %.pre84 = add nuw nsw i64 %indvars.iv70, 1
  br label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader51
  %i.z = trunc nuw nsw i64 %indvars.iv70 to i32   ; 3 uses
  %i.aa = add nsw i64 %indvars.iv70, -1           ; 8 uses
  %i.ab = icmp sgt i64 %indvars.iv70, 0           ; 2 uses
  %i.ac = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ad = add nsw i64 %indvars.iv70, -1           ; 3 uses
  %i.ae = icmp sgt i64 %indvars.iv70, 0           ; 3 uses
  %i.af = icmp sgt i64 %indvars.iv70, 0           ; 3 uses
  %i.ag = add nuw nsw i64 %indvars.iv70, 1        ; 21 uses
  %i.ah = trunc nuw nsw i64 %i.ag to i32          ; 2 uses
  br i1 %2, label %.preheader.us.peel, label %.preheader

.preheader.us.peel:                               ; preds = %.preheader.lr.ph
  %i.ai = mul nuw nsw i32 %i.x, %i.z
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.preheader.us.peel
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !58
  %i.al = sext i32 %i.ak to i64
  %.not112.peel = icmp sgt i64 %indvars.iv70, %i.al
  br i1 %.not112.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %i.ad to i32
  %i.an = mul nuw nsw i32 %i.x, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aj
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !54
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.at = load i32, ptr %i.as, align 4, !tbaa !54
  %.not.us.us.2.peel = icmp ne i32 %i.ar, %i.at
  %i.au = zext i1 %.not.us.us.2.peel to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.preheader.us.peel
  %.2.us.us.2.peel = phi i32 [ %i.au, %bb.h ], [ 0, %bb.g ], [ 0, %.preheader.us.peel ] ; 3 uses
  %i.av = icmp ne i32 %i.x, 1
  %or.cond.us.us.3.peel = and i1 %i.av, %i.af
  br i1 %or.cond.us.us.3.peel, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !58
  %i.ax = sext i32 %i.aw to i64
  %.not113.peel = icmp sgt i64 %indvars.iv70, %i.ax
  br i1 %.not113.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc nuw nsw i64 %i.ad to i32
  %i.az = mul nuw nsw i32 %i.x, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.aj
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ba
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !54
  %.not.us.us.3.peel = icmp ne i32 %i.bd, %i.bg
  %i.bh = zext i1 %.not.us.us.3.peel to i32
  %spec.select.3.peel = add nuw nsw i32 %.2.us.us.2.peel, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.2.us.us.3.peel = phi i32 [ %spec.select.3.peel, %bb.k ], [ %.2.us.us.2.peel, %bb.j ], [ %.2.us.us.2.peel, %bb.i ] ; 3 uses
  %.not163 = icmp eq i32 %i.x, 1
  br i1 %.not163, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !58
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv70, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = zext nneg i32 %i.x to i64
  %i.bm = mul nuw nsw i64 %indvars.iv70, %i.bl
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.aj
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !54
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !54
  %.not.us.us.4.peel = icmp ne i32 %i.bp, %i.bs
  %i.bt = zext i1 %.not.us.us.4.peel to i32
  %spec.select.4.peel = add nuw nsw i32 %.2.us.us.3.peel, %i.bt
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.2.us.us.4.peel = phi i32 [ %spec.select.4.peel, %bb.n ], [ %.2.us.us.3.peel, %bb.m ], [ %.2.us.us.3.peel, %bb.l ] ; 3 uses
  %.not164 = icmp eq i32 %i.x, 1
  br i1 %.not164, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !58
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %i.ag, %i.bv
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = zext nneg i32 %i.x to i64
  %i.by = mul nuw nsw i64 %i.ag, %i.bx
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.aj
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !54
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !54
  %.not.us.us.5.peel = icmp ne i32 %i.cb, %i.ce
  %i.cf = zext i1 %.not.us.us.5.peel to i32
  %spec.select.5.peel = add nuw nsw i32 %.2.us.us.4.peel, %i.cf
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.2.us.us.5.peel = phi i32 [ %spec.select.5.peel, %bb.q ], [ %.2.us.us.4.peel, %bb.p ], [ %.2.us.us.4.peel, %bb.o ] ; 2 uses
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !58
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %i.ag, %i.ch
  br i1 %i.ci, label %bb.s, label %.split.us.us.peel

bb.s:                                             ; preds = %bb.r
  %i.cj = zext nneg i32 %i.x to i64
  %i.ck = mul nuw nsw i64 %i.ag, %i.cj
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.aj
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !54
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !54
  %.not.us.us.6.peel = icmp ne i32 %i.cn, %i.cp
  %i.cq = zext i1 %.not.us.us.6.peel to i32
  %spec.select.6.peel = add nuw nsw i32 %.2.us.us.5.peel, %i.cq
  br label %.split.us.us.peel

.split.us.us.peel:                                ; preds = %bb.r, %bb.s
  %.2.us.us.6.peel = phi i32 [ %spec.select.6.peel, %bb.s ], [ %.2.us.us.5.peel, %bb.r ]
  %i.cr = icmp samesign ugt i32 %.2.us.us.6.peel, 1
  br i1 %i.cr, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel, label %bb.t

_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel:           ; preds = %.split.us.us.peel
  %i.cs = load i32, ptr %i.p, align 4, !tbaa !229
  %i.ct = icmp slt i32 %i.cs, 2
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !111
  %i.cv = load i64, ptr %i.r, align 8, !tbaa !108
  %i.cw = mul i64 %i.cv, %indvars.iv70
  %.sink.idx.peel = select i1 %i.ct, i64 0, i64 %i.cw
  %.sink.peel = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sink.idx.peel
  store i8 -1, ptr %.sink.peel, align 1, !tbaa !80
  %.pre83.peel = load i32, ptr %i.c, align 8, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel, %.split.us.us.peel
  %i.cx = phi i32 [ %.pre83.peel, %_ZN2cv3Mat3ptrIhEEPT_ii.exit50.us.peel ], [ %i.v, %.split.us.us.peel ] ; 5 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %.preheader.us.preheader.peel.newph, label %._crit_edge

.preheader.us.preheader.peel.newph:               ; preds = %bb.t
  %i.cz = trunc nuw nsw i64 %i.aa to i32
  %i.da = trunc nuw nsw i64 %i.aa to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader.peel.newph, %bb.ar
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.ar ], [ 1, %.preheader.us.preheader.peel.newph ] ; 11 uses
  %i.db = phi i32 [ %i.hv, %bb.ar ], [ %i.cx, %.preheader.us.preheader.peel.newph ] ; 17 uses
  %i.dc = mul nuw nsw i32 %i.db, %i.z             ; 2 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv67 to i32
  %i.de = add nsw i32 %i.dc, %i.dd
  %i.df = sext i32 %i.de to i64                   ; 8 uses
  %i.dg = add nsw i64 %indvars.iv67, -1           ; 3 uses
  %i.dh = sext i32 %i.db to i64
  %.not110 = icmp sgt i64 %indvars.iv67, %i.dh
  br i1 %.not110, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.preheader.us
  %i.di = load i32, ptr %i.a, align 4, !tbaa !58
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv70, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = trunc nuw nsw i64 %i.dg to i32
  %i.dm = add nuw nsw i32 %i.dc, %i.dl
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.df
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !54
  %i.dq = zext nneg i32 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !54
  %.not.us.us = icmp ne i32 %i.dp, %i.ds
  %i.dt = zext i1 %.not.us.us to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.preheader.us
  %.2.us.us.ph = phi i32 [ %i.dt, %bb.v ], [ 0, %.preheader.us ], [ 0, %bb.u ] ; 3 uses
  %i.du = sext i32 %i.db to i64
  %i.dv = icmp sle i64 %indvars.iv67, %i.du
  %or.cond.us.us.1 = and i1 %i.dv, %i.ab
  br i1 %or.cond.us.us.1, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !58
  %i.dx = sext i32 %i.dw to i64
  %.not111 = icmp sgt i64 %indvars.iv70, %i.dx
  br i1 %.not111, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = mul nuw nsw i32 %i.db, %i.ac
  %i.dz = trunc nuw nsw i64 %i.dg to i32
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.df
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !54
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !54
  %.not.us.us.1 = icmp ne i32 %i.ed, %i.eg
  %i.eh = zext i1 %.not.us.us.1 to i32
  %spec.select.1 = add nuw nsw i32 %.2.us.us.ph, %i.eh
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.2.us.us.1 = phi i32 [ %spec.select.1, %bb.y ], [ %.2.us.us.ph, %bb.x ], [ %.2.us.us.ph, %bb.w ] ; 3 uses
  %i.ei = sext i32 %i.db to i64
  %i.ej = icmp slt i64 %indvars.iv67, %i.ei
  %or.cond.us.us.2 = and i1 %i.ej, %i.ae
  br i1 %or.cond.us.us.2, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !58
  %i.el = sext i32 %i.ek to i64
  %.not112 = icmp sgt i64 %indvars.iv70, %i.el
  br i1 %.not112, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = mul nuw nsw i32 %i.db, %i.cz
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %i.o, align 8, !tbaa !107 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.df
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !54
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv67
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.en
  %i.et = load i32, ptr %i.es, align 4, !tbaa !54
  %.not.us.us.2 = icmp ne i32 %i.eq, %i.et
  %i.eu = zext i1 %.not.us.us.2 to i32
  %spec.select.2 = add nuw nsw i32 %.2.us.us.1, %i.eu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.2.us.us.2 = phi i32 [ %spec.select.2, %bb.ab ], [ %.2.us.us.1, %bb.aa ], [ %.2.us.us.1, %bb.z ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 8 uses
  %i.ev = sext i32 %i.db to i64
  %i.ew = icmp slt i64 %indvars.iv.next68, %i.ev
  %or.cond.us.us.3 = and i1 %i.ew, %i.af
  br i1 %or.cond.us.us.3, label %bb.ad, label %bb.af

end_hunk_0
