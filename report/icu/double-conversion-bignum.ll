Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-bignum?download=true
inline.NumInlined: 136
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6icu_7817double_conversion6Bignum21DivideModuloIntBignumERKS1_:bb.a
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !11   ; 3 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i16 %i.d, %i.j
  br i1 %i.n, label %bb.c, label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.o, %i.b
  %i.q = icmp sgt i32 %i.p, 128
  br i1 %i.q, label %bb.d, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i: ; preds = %bb.c
  %i.r = icmp sgt i16 %i.a, 0
  br i1 %i.r, label %.lr.ph.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.s = zext nneg i16 %i.a to i64                ; 6 uses
  %i.t = sext i32 %i.o to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i16 %i.a, 16
  br i1 %min.iters.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.u = sext i16 %i.j to i64
  %i.v = sext i16 %i.d to i64
  %i.w = sub nsw i64 %i.u, %i.v
  %i.x = shl nsw i64 %i.w, 2
  %i.y = add nsw i64 %i.x, -1
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 32760                    ; 2 uses
  %i.z = and i64 %i.s, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %i.s, %index                    ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %i.ad = getelementptr i8, ptr %i.ab, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !12
  %wide.load83 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aa ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr i8, ptr %i.ae, i64 -28
  store <4 x i32> %wide.load, ptr %i.af, align 4, !tbaa !12
  store <4 x i32> %wide.load83, ptr %i.ag, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %.lr.ph20.i, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader: ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i ], [ %i.z, %middle.block ]
  br label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

.lr.ph20.i:                                       ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, %middle.block, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = zext nneg i32 %i.o to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.ak, i1 false), !tbaa !12
  %i.al = trunc i32 %i.o to i16                   ; 2 uses
  %i.am = add i16 %i.a, %i.al                     ; 3 uses
  store i16 %i.am, ptr %0, align 4, !tbaa !8
  %i.an = sub i16 %i.d, %i.al                     ; 2 uses
  store i16 %i.an, ptr %i.c, align 2, !tbaa !11
  %.pre = load i16, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.pre49 = load i16, ptr %i.i, align 2, !tbaa !11
  %.pre50 = sext i16 %i.am to i32
  %.pre51 = sext i16 %i.an to i32
  %.pre53 = add nsw i32 %.pre51, %.pre50
  %.pre55 = sext i16 %.pre to i32
  %.pre57 = sext i16 %.pre49 to i32
  %.pre59 = add nsw i32 %.pre57, %.pre55
  br label %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit

_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i: ; preds = %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i ], [ %indvars.iv.i.ph, %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i.preheader ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ap, ptr %gep.i, align 4, !tbaa !12
  %i.aq = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aq, label %_ZN6icu_7817double_conversion6Bignum14EnsureCapacityEi.exit.i, label %.lr.ph20.i, !llvm.loop !62

_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit: ; preds = %bb.b, %.lr.ph20.i
  %.pre-phi60 = phi i32 [ %i.l, %bb.b ], [ %.pre59, %.lr.ph20.i ]
  %.pre-phi54 = phi i32 [ %i.f, %bb.b ], [ %.pre53, %.lr.ph20.i ]
  %i.ar = phi i16 [ %i.g, %bb.b ], [ %.pre, %.lr.ph20.i ]
  %i.as = phi i16 [ %i.a, %bb.b ], [ %i.am, %.lr.ph20.i ] ; 2 uses
  %i.at = icmp sgt i32 %.pre-phi54, %.pre-phi60
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit, %.lr.ph
  %i.au = phi i16 [ %i.ba, %.lr.ph ], [ %i.as, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %.03141 = phi i16 [ %i.az, %.lr.ph ], [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ]
  %i.av = sext i16 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = trunc i32 %i.ax to i16
  %i.az = add i16 %.03141, %i.ay                  ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.ax)
  %i.ba = load i16, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i16, ptr %i.c, align 2, !tbaa !11
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.bb
  %i.bf = load i16, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i16, ptr %i.i, align 2, !tbaa !11
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = icmp sgt i32 %i.be, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit
  %.031.lcssa = phi i16 [ 0, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.az, %.lr.ph ] ; 2 uses
  %.lcssa40 = phi i16 [ %i.as, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.ba, %.lr.ph ] ; 4 uses
  %.lcssa = phi i16 [ %i.ar, %_ZN6icu_7817double_conversion6Bignum5AlignERKS1_.exit ], [ %i.bf, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bm = sext i16 %.lcssa40 to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.br = sext i16 %.lcssa to i64
  %i.bs = getelementptr [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 5 uses
  %i.bv = icmp eq i16 %.lcssa, 1
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bw = udiv i32 %i.bp, %i.bu                   ; 2 uses
  %i.bx = mul i32 %i.bw, %i.bu                    ; 0 uses
  %.recomposed = urem i32 %i.bp, %i.bu
  store i32 %.recomposed, ptr %i.bo, align 4, !tbaa !12
  %i.by = trunc i32 %i.bw to i16
  %i.bz = add i16 %.031.lcssa, %i.by              ; 3 uses
  %i.ca = icmp sgt i16 %.lcssa40, 0
  br i1 %i.ca, label %.lr.ph.i33, label %.critedge.i

.lr.ph.i33:                                       ; preds = %bb.e, %bb.f
  %i.cb = phi i16 [ %i.ci, %bb.f ], [ %.lcssa40, %bb.e ] ; 3 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 4294967295
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.f, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.f:                                             ; preds = %.lr.ph.i33
  %i.ci = add nsw i16 %i.cb, -1                   ; 2 uses
  store i16 %i.ci, ptr %0, align 4, !tbaa !8
  %i.cj = icmp sgt i16 %i.cb, 1
  br i1 %i.cj, label %.lr.ph.i33, label %.critedge.thread3.i, !llvm.loop !24

.critedge.i:                                      ; preds = %bb.e
  %i.ck = icmp eq i16 %.lcssa40, 0
  br i1 %i.ck, label %.critedge.thread3.i, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.critedge.thread3.i:                              ; preds = %bb.f, %.critedge.i
  store i16 0, ptr %i.c, align 2, !tbaa !11
  br label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %._crit_edge
  %i.cl = add i32 %i.bu, 1
  %i.cm = udiv i32 %i.bp, %i.cl                   ; 3 uses
  %i.cn = trunc i32 %i.cm to i16
  %i.co = add i16 %.031.lcssa, %i.cn              ; 2 uses
  tail call void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1, i32 noundef %i.cm)
  %i.cp = add nsw i32 %i.cm, 1
  %i.cq = mul i32 %i.cp, %i.bu
  %i.cr = icmp ugt i32 %i.cq, %i.bp
  br i1 %i.cr, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread
  %.132 = phi i16 [ %i.dp, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread ], [ %i.co, %bb.g ] ; 3 uses
  %i.cs = load i16, ptr %1, align 4, !tbaa !8
  %i.ct = sext i16 %i.cs to i32
  %i.cu = load i16, ptr %i.i, align 2, !tbaa !11  ; 2 uses
  %i.cv = sext i16 %i.cu to i32                   ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.ct                ; 4 uses
  %i.cx = load i16, ptr %0, align 4, !tbaa !8
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i16, ptr %i.c, align 2, !tbaa !11  ; 2 uses
  %i.da = sext i16 %i.cz to i32                   ; 3 uses
  %i.db = add nsw i32 %i.da, %i.cy                ; 2 uses
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.dd = icmp sgt i32 %i.cw, %i.db
  br i1 %i.dd, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %i.de = tail call i16 @llvm.smin.i16(i16 %i.cz, i16 %i.cu)
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %.not.not.not.i.i78 = icmp sgt i32 %i.cw, %i.df
  br i1 %.not.not.not.i.i78, label %.lr.ph82, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread

bb.i:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %.not.not.not.i.i = icmp sgt i32 %.0.i.i81, %i.df
  br i1 %.not.not.not.i.i, label %.lr.ph82, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, !llvm.loop !64

.lr.ph82:                                         ; preds = %.preheader.i.i, %bb.i
  %.0.in.i.i80 = phi i32 [ %.0.i.i81, %bb.i ], [ %i.cw, %.preheader.i.i ] ; 3 uses
  %.023.i.i79 = phi i32 [ %.124.i.i, %bb.i ], [ undef, %.preheader.i.i ]
  %.0.i.i81 = add nsw i32 %.0.in.i.i80, -1        ; 4 uses
  %.not.i.i.i = icmp sgt i32 %.0.in.i.i80, %i.cv
  br i1 %.not.i.i.i, label %bb.j, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i

bb.j:                                             ; preds = %.lr.ph82
  %i.dg = sub nsw i32 %.0.i.i81, %i.cv
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i: ; preds = %bb.j, %.lr.ph82
  %.0.i.i.i = phi i32 [ %i.dj, %bb.j ], [ 0, %.lr.ph82 ] ; 3 uses
  %.not.i29.i.i = icmp sgt i32 %.0.in.i.i80, %i.da
  br i1 %.not.i29.i.i, label %bb.k, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i

bb.k:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %i.dk = sub nsw i32 %.0.i.i81, %i.da
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i: ; preds = %bb.k, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i
  %.0.i31.i.i = phi i32 [ %i.dn, %bb.k ], [ 0, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit.i.i ] ; 3 uses
  %.not.i.i = icmp ult i32 %.0.i.i.i, %.0.i31.i.i
  %.not33.i.i = icmp ugt i32 %.0.i.i.i, %.0.i31.i.i
  %..023.i.i = select i1 %.not33.i.i, i32 1, i32 %.023.i.i79
  %.124.i.i = select i1 %.not.i.i, i32 -1, i32 %..023.i.i ; 2 uses
  %cond1.i.i = icmp eq i32 %.0.i.i.i, %.0.i31.i.i
  br i1 %cond1.i.i, label %bb.i, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit, !llvm.loop !64

_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32.i.i
  %i.do = icmp slt i32 %.124.i.i, 1
  br i1 %i.do, label %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit.thread: ; preds = %bb.i, %.preheader.i.i, %.preheader, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit
  tail call void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.dp = add i16 %.132, 1
  br label %.preheader, !llvm.loop !65

_ZN6icu_7817double_conversion6Bignum5ClampEv.exit: ; preds = %bb.h, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit, %.lr.ph.i33, %.critedge.thread3.i, %.critedge.i, %bb.g, %bb.a
  %.2 = phi i16 [ 0, %bb.a ], [ %i.bz, %.critedge.thread3.i ], [ %i.co, %bb.g ], [ %i.bz, %.lr.ph.i33 ], [ %i.bz, %.critedge.i ], [ %.132, %_ZN6icu_7817double_conversion6Bignum9LessEqualERKS1_S3_.exit ], [ %.132, %bb.h ]
  ret i16 %.2
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6icu_7817double_conversion6Bignum13SubtractTimesERKS1_i(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph54, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %.053 = phi i32 [ %i.c, %.lr.ph54 ], [ 0, %.preheader ]
  tail call void @_ZN6icu_7817double_conversion6Bignum14SubtractBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %1)
  %i.c = add nuw nsw i32 %.053, 1                 ; 2 uses
  %exitcond61.not = icmp eq i32 %i.c, %2
  br i1 %exitcond61.not, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %.lr.ph54, !llvm.loop !66

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !11
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i                   ; 2 uses
  %i.k = load i16, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp sgt i16 %i.k, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.n = zext nneg i32 %2 to i64                  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = sext i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i16 %i.k, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03545.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i16 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.n
  %i.w = zext i32 %.03545.epil.init to i64
  %i.x = add nuw nsw i64 %i.v, %i.w               ; 2 uses
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.y = load i32, ptr %gep.epil, align 4, !tbaa !12
  %i.z = trunc i64 %i.x to i32
  %i.aa = and i32 %i.z, 268435455
  %i.ab = sub i32 %i.y, %i.aa                     ; 2 uses
  %i.ac = and i32 %i.ab, 268435455
  store i32 %i.ac, ptr %gep.epil, align 4, !tbaa !12
  %i.ad = lshr i32 %i.ab, 31
  %i.ae = lshr i64 %i.x, 28
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.ad, %i.af
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.035.lcssa = phi i32 [ 0, %bb.b ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ]
  %i.ah = add nsw i32 %i.j, %i.l                  ; 2 uses
  %i.ai = load i16, ptr %0, align 4, !tbaa !8     ; 5 uses
  %i.aj = sext i16 %i.ai to i32
  %.not47 = icmp slt i32 %i.ah, %i.aj
  br i1 %.not47, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = sext i32 %i.ah to i64
  %i.am = sext i16 %i.ai to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.03545 = phi i32 [ 0, %.lr.ph.new ], [ %i.bq, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.n
  %i.ar = zext i32 %.03545 to i64
  %i.as = add nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %gep, align 4, !tbaa !12
  %i.au = trunc i64 %i.as to i32
  %i.av = and i32 %i.au, 268435455
  %i.aw = sub i32 %i.at, %i.av                    ; 2 uses
  %i.ax = and i32 %i.aw, 268435455
  store i32 %i.ax, ptr %gep, align 4, !tbaa !12
  %i.ay = lshr i32 %i.aw, 31
  %i.az = lshr i64 %i.as, 28
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ay, %i.ba
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, %i.n
  %i.bg = zext i32 %i.bb to i64
  %i.bh = add nuw nsw i64 %i.bf, %i.bg            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bi = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = and i32 %i.bj, 268435455
  %i.bl = sub i32 %i.bi, %i.bk                    ; 2 uses
  %i.bm = and i32 %i.bl, 268435455
  store i32 %i.bm, ptr %gep.1, align 4, !tbaa !12
  %i.bn = lshr i32 %i.bl, 31
  %i.bo = lshr i64 %i.bh, 28
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bn, %i.bp                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !67

bb.d:                                             ; preds = %.lr.ph51, %bb.e
  %indvars.iv58 = phi i64 [ %i.al, %.lr.ph51 ], [ %indvars.iv.next59, %bb.e ] ; 2 uses
  %.148 = phi i32 [ %.035.lcssa, %.lr.ph51 ], [ %i.bw, %bb.e ] ; 2 uses
  %i.br = icmp eq i32 %.148, 0
  br i1 %i.br, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv58 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = sub i32 %i.bt, %.148                    ; 2 uses
  %i.bv = and i32 %i.bu, 268435455
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !12
  %i.bw = lshr i32 %i.bu, 31
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next59, %i.am
  br i1 %.not, label %bb.d, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.e, %._crit_edge
  %i.bx = icmp sgt i16 %i.ai, 0
  br i1 %i.bx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %i.bz = phi i16 [ %i.ai, %.lr.ph.i ], [ %i.cg, %bb.g ] ; 3 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %_ZN6icu_7817double_conversion6Bignum5ClampEv.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = add nsw i16 %i.bz, -1                   ; 2 uses
  store i16 %i.cg, ptr %0, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZNK6icu_7817double_conversion6Bignum11ToHexStringEPci:bb.a
  %i.i = add nsw i32 %i.h, %i.e
  %i.j = mul nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.j, -7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = sext i16 %i.a to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %.not5.i = icmp eq i32 %i.p, 0
  br i1 %.not5.i, label %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.d ]
  %.046.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.q = lshr i32 %.046.i, 4                      ; 2 uses
  %i.r = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit, label %.lr.ph.i, !llvm.loop !69

_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i ]
  %i.s = add nsw i32 %i.k, %.0.lcssa.i            ; 3 uses
  %.not = icmp slt i32 %i.s, %2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !21
  %i.w = load i16, ptr %i.f, align 2, !tbaa !11
  %i.x = icmp sgt i16 %i.w, 0
  br i1 %i.x, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %1, i64 -6
  %i.y = sext i32 %i.t to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %.preheader40
  %indvars.iv = phi i64 [ %i.y, %.preheader40.preheader ], [ %indvars.iv.next, %.preheader40 ] ; 2 uses
  %.03345 = phi i32 [ 0, %.preheader40.preheader ], [ %i.z, %.preheader40 ]
  %scevgep62 = getelementptr i8, ptr %scevgep, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep62, i8 48, i64 7, i1 false), !tbaa !21
  %indvars.iv.next = add nsw i64 %indvars.iv, -7  ; 2 uses
  %i.z = add nuw nsw i32 %.03345, 1               ; 2 uses
  %i.aa = load i16, ptr %i.f, align 2, !tbaa !11
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.preheader40, label %.preheader.loopexit, !llvm.loop !70

.preheader.loopexit:                              ; preds = %.preheader40
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.034.lcssa = phi i32 [ %i.t, %bb.e ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %i.ad = load i16, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.ae = icmp sgt i16 %i.ad, 1
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %i.af = sext i16 %i.ad to i64
  %.pre = add nsw i64 %i.af, -1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = sext i32 %.034.lcssa to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %indvars75 = trunc i64 %indvars.iv.next72 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.ca, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.034.lcssa, %.preheader.._crit_edge_crit_edge ], [ %indvars75, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %.not3853 = icmp eq i32 %i.ai, 0
  br i1 %.not3853, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.aj = sext i32 %.2.lcssa to i64
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 5 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next70, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv69
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 7 uses
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, 10
  %i.ao = trunc nuw nsw i32 %i.am to i8           ; 2 uses
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = add nuw nsw i8 %i.ao, 55
  %.0.i = select i1 %i.an, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %indvars.iv71
  store i8 %.0.i, ptr %i.ar, align 1, !tbaa !21
  %i.as = lshr i32 %i.al, 4
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  %i.av = trunc nuw nsw i32 %i.at to i8           ; 2 uses
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = add nuw nsw i8 %i.av, 55
  %.0.i.1 = select i1 %i.au, i8 %i.aw, i8 %i.ax
  %i.ay = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  store i8 %.0.i.1, ptr %i.az, align 1, !tbaa !21
  %i.ba = lshr i32 %i.al, 8
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 10
  %i.bd = trunc nuw nsw i32 %i.bb to i8           ; 2 uses
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = add nuw nsw i8 %i.bd, 55
  %.0.i.2 = select i1 %i.bc, i8 %i.be, i8 %i.bf
  %i.bg = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  store i8 %.0.i.2, ptr %i.bh, align 1, !tbaa !21
  %i.bi = getelementptr i8, ptr %1, i64 %indvars.iv71
  %i.bj = getelementptr i8, ptr %i.bi, i64 -6
  %i.bk = lshr i32 %i.al, 12
  %i.bl = lshr i32 %i.al, 16
  %i.bm = lshr i32 %i.al, 20
  %i.bn = lshr i32 %i.al, 24
  %i.bo = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bm, i64 1
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bl, i64 2
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bk, i64 3
  %i.bs = and <4 x i32> %i.br, splat (i32 15)     ; 2 uses
  %i.bt = icmp samesign ult <4 x i32> %i.bs, splat (i32 10)
  %i.bu = trunc nuw nsw <4 x i32> %i.bs to <4 x i8> ; 2 uses
  %i.bv = or disjoint <4 x i8> %i.bu, splat (i8 48)
  %i.bw = add nuw nsw <4 x i8> %i.bu, splat (i8 55)
  %i.bx = select <4 x i1> %i.bt, <4 x i8> %i.bv, <4 x i8> %i.bw
  store <4 x i8> %i.bx, ptr %i.bj, align 1, !tbaa !21
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -7 ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.by = load i16, ptr %0, align 4, !tbaa !8
  %i.bz = sext i16 %i.by to i64
  %i.ca = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next70, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !71

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv77 = phi i64 [ %i.aj, %.lr.ph57.preheader ], [ %indvars.iv.next78, %.lr.ph57 ] ; 2 uses
  %.055 = phi i32 [ %i.ai, %.lr.ph57.preheader ], [ %i.ci, %.lr.ph57 ] ; 2 uses
  %i.cc = and i32 %.055, 15                       ; 2 uses
  %i.cd = icmp samesign ult i32 %i.cc, 10
  %i.ce = trunc nuw nsw i32 %i.cc to i8           ; 2 uses
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = add nuw nsw i8 %i.ce, 55
  %.0.i39 = select i1 %i.cd, i8 %i.cf, i8 %i.cg
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -1
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %indvars.iv77
  store i8 %.0.i39, ptr %i.ch, align 1, !tbaa !21
  %i.ci = lshr i32 %.055, 4                       ; 2 uses
  %.not38 = icmp eq i32 %i.ci, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph57, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph57, %._crit_edge, %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit, %bb.b, %bb.c
  %.136 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN6icu_7817double_conversionL14SizeInHexCharsIjEEiT_.exit ], [ true, %._crit_edge ], [ true, %.lr.ph57 ]
  ret i1 %.136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !8
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b
  %.not = icmp sge i32 %1, %i.f
  %i.g = icmp slt i32 %1, %i.e
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 %1, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN6icu_7817double_conversion6Bignum7CompareERKS1_S3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !8
  %i.b = sext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !11   ; 2 uses
  %i.e = sext i16 %i.d to i32                     ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 4 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !8
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !11   ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = add nsw i32 %i.k, %i.h                   ; 2 uses
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.f, %i.l
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.o = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.d)
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.not.not40 = icmp sgt i32 %i.f, %i.p
  br i1 %.not.not.not40, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32
  %.not.not.not = icmp sgt i32 %.043, %i.p
  br i1 %.not.not.not, label %.lr.ph, label %.loopexit, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.0.in42 = phi i32 [ %.043, %bb.c ], [ %i.f, %.preheader ] ; 3 uses
  %.02341 = phi i32 [ %.124, %bb.c ], [ undef, %.preheader ]
  %.043 = add nsw i32 %.0.in42, -1                ; 4 uses
  %.not.i = icmp sgt i32 %.0.in42, %i.e
  br i1 %.not.i, label %bb.d, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit

bb.d:                                             ; preds = %.lr.ph
  %i.s = sub nsw i32 %.043, %i.e
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %.lr.ph, %bb.d
  %.0.i = phi i32 [ %i.v, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i29 = icmp sgt i32 %.0.in42, %i.k
  br i1 %.not.i29, label %bb.e, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32

bb.e:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit
  %i.w = sub nsw i32 %.043, %i.k
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit, %bb.e
  %.0.i31 = phi i32 [ %i.z, %bb.e ], [ 0, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit ] ; 3 uses
  %.not = icmp ult i32 %.0.i, %.0.i31
  %.not33 = icmp ugt i32 %.0.i, %.0.i31
  %..023 = select i1 %.not33, i32 1, i32 %.02341
  %.124 = select i1 %.not, i32 -1, i32 %..023     ; 2 uses
  %cond1 = icmp eq i32 %.0.i, %.0.i31
  br i1 %cond1, label %bb.c, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, !llvm.loop !64

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32
  br label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.b ], [ -1, %bb.a ], [ %.124, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit32..loopexit.loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2) i32 @_ZN6icu_7817double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(516) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.pre = load i16, ptr %0, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre96 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !11
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %i.a = phi i16 [ %.pre96, %bb.a ], [ %i.i, %tailrecurse ] ; 2 uses
  %i.b = phi i16 [ %.pre, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr65, %tailrecurse ] ; 3 uses
  %.tr65 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.c = sext i16 %i.b to i32
  %i.d = sext i16 %i.a to i32                     ; 4 uses
  %i.e = add nsw i32 %i.d, %i.c                   ; 5 uses
  %i.f = load i16, ptr %.tr65, align 4, !tbaa !8  ; 2 uses
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %.tr65, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11   ; 4 uses
  %i.j = sext i16 %i.i to i32                     ; 3 uses
  %i.k = add nsw i32 %i.j, %i.g                   ; 3 uses
  %i.l = icmp slt i32 %i.e, %i.k
  br i1 %i.l, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.n = add nsw i32 %i.e, 1
  %i.o = load i16, ptr %2, align 4, !tbaa !8
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !11   ; 2 uses
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = add nsw i32 %i.s, %i.p                   ; 5 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp sgt i32 %i.e, %i.t
  br i1 %i.v, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sle i32 %i.k, %i.d
  %i.w = icmp slt i32 %i.e, %i.t
  %or.cond = and i1 %.not, %i.w
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp slt i16 %i.i, %i.a
  %.val64 = load i16, ptr %i.m, align 2
  %i.y = select i1 %i.x, i16 %i.i, i16 %.val64
  %i.z = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.y)
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %.not50.not.not77 = icmp sgt i32 %i.t, %i.aa
  br i1 %.not50.not.not77, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr65, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.040.in79 = phi i32 [ %i.t, %.lr.ph ], [ %.04080, %bb.k ] ; 6 uses
  %.04178 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.k ]
  %.04080 = add nsw i32 %.040.in79, -1            ; 5 uses
  %.not.i = icmp sgt i32 %.040.in79, %i.e
  %i.ae = icmp sle i32 %.040.in79, %i.d
  %or.cond.i = or i1 %i.ae, %.not.i
  br i1 %or.cond.i, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nsw i32 %.04080, %i.d
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ai, %bb.g ], [ 0, %bb.f ]
  %.not.i52 = icmp sgt i32 %.040.in79, %i.k
  %i.aj = icmp sle i32 %.040.in79, %i.j
  %or.cond.i53 = or i1 %i.aj, %.not.i52
  br i1 %or.cond.i53, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit
  %i.ak = sub nsw i32 %.04080, %i.j
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit, %bb.h
  %.0.i54 = phi i32 [ %i.an, %bb.h ], [ 0, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit ]
  %.not.i56 = icmp sgt i32 %.040.in79, %i.s
  br i1 %.not.i56, label %bb.i, label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59

bb.i:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55
  %i.ao = sub nsw i32 %.04080, %i.s
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  br label %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59

_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59: ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55, %bb.i
  %.0.i58 = phi i32 [ %i.ar, %bb.i ], [ 0, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit55 ]
  %i.as = add i32 %.0.i54, %.0.i                  ; 3 uses
  %i.at = add i32 %.0.i58, %.04178                ; 3 uses
  %i.au = icmp ugt i32 %i.as, %i.at
  br i1 %i.au, label %.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59
  %i.av = sub nuw i32 %i.at, %i.as                ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 1
  br i1 %i.aw, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = shl nuw nsw i32 %i.av, 28
  %.not50.not.not = icmp sgt i32 %.04080, %i.aa
  br i1 %.not50.not.not, label %bb.f, label %.thread.loopexit, !llvm.loop !73

.thread.loopexit:                                 ; preds = %bb.k
  %i.ay = icmp ne i32 %i.at, %i.as
  %i.az = sext i1 %i.ay to i32
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59, %bb.e, %.thread.loopexit, %bb.d, %bb.c, %bb.b
  %.4 = phi i32 [ -1, %bb.d ], [ 1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.e ], [ %i.az, %.thread.loopexit ], [ 1, %_ZNK6icu_7817double_conversion6Bignum11BigitOrZeroEi.exit59 ], [ -1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN6icu_7817double_conversion6BignumE", !10, i64 0, !10, i64 2, !6, i64 4}
!10 = !{!"short", !6, i64 0}
!11 = !{!9, !10, i64 2}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !14, !16}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14, !16, !17}
!32 = distinct !{!32, !14, !17, !16}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14, !16, !17}
!35 = distinct !{!35, !14, !16}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14, !16, !17}
!39 = distinct !{!39, !14, !16}
!40 = distinct !{!40, !14, !16, !17}
!41 = distinct !{!41, !14, !16}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14, !16, !17}
!45 = distinct !{!45, !14, !17, !16}
!46 = distinct !{!46, !14, !16, !17}
!47 = distinct !{!47, !14, !17, !16}
!48 = distinct !{!48, !14, !17, !16}
!49 = distinct !{!49, !14, !16, !17}
!50 = distinct !{!50, !14, !17, !16}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14, !16, !17}
!53 = distinct !{!53, !14, !17, !16}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14, !16, !17}
!60 = distinct !{!60, !14, !17, !16}
!61 = distinct !{!61, !14, !16, !17}
!62 = distinct !{!62, !14, !16}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
end_hunk_1
