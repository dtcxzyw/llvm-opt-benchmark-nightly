Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/putcolui?download=true
inline.NumInlined: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ffpssui:bb.a
  %i.bz = add nuw nsw i64 %.0102160.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %i.bz, %.sroa.0.24.vec.extract
  br i1 %exitcond236.not, label %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !82

._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ca = add nsw i64 %.2170.us.us.us.us.us.us.us.us.us.us.us, %i.at
  %i.cb = add nuw nsw i64 %.0101171.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.cb, %.sroa.11.0
  br i1 %exitcond237.not, label %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us, label %.preheader132.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !83

._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us
  %i.cc = add nsw i64 %.1108187.us.us.us.us.us.us.us.us, %i.au
  %i.cd = add nuw nsw i64 %.0100188.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %i.cd, %.sroa.14.0
  br i1 %exitcond238.not, label %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us, label %.preheader133.us.us.us.us.us.us.us.us, !llvm.loop !84

._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us: ; preds = %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us
  %i.ce = add nsw i64 %.0106210.us.us.us.us, %i.av
  %i.cf = add nuw nsw i64 %.0211.us.us.us.us, 1   ; 2 uses
  %exitcond239.not = icmp eq i64 %i.cf, %.sroa.17.0
  br i1 %exitcond239.not, label %._crit_edge212.split, label %.preheader134.us.us.us.us, !llvm.loop !85

.split.us:                                        ; preds = %bb.f
  %i.cg = load i32, ptr %7, align 4, !tbaa !13
  br label %bb.h

._crit_edge212.split:                             ; preds = %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us, %.preheader134.lr.ph, %._crit_edge
  %i.ch = load i32, ptr %7, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge212.split, %.split.us, %bb.e, %bb.c
  %.0129 = phi i32 [ %i.ch, %._crit_edge212.split ], [ %i.g, %bb.c ], [ 320, %bb.e ], [ %i.cg, %.split.us ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpgpui(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %i.b = tail call i32 @ffpclui(ptr noundef %0, i32 noundef 1, i64 noundef %i.a, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) ; 0 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !13
  ret i32 %i.c
}

declare i32 @ffgcprll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ffcfmt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffmbyt(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffu2fi2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = fcmp oeq double %2, 1.000000e+00         ; 2 uses
  %i.d = fcmp oeq double %3, 3.276800e+04
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i64 %1, 0
  br i1 %i.e, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %min.iters.check105 = icmp ult i64 %1, 4
  %i.f = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond123 = or i1 %min.iters.check105, %diff.check
  br i1 %or.cond123, label %.lr.ph57.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %1, 16
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %1, 12
  %n.vec109 = and i64 %1, 9223372036854775792     ; 4 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index111 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load112 = load <8 x i16>, ptr %i.h, align 2, !tbaa !21
  %wide.load113 = load <8 x i16>, ptr %i.i, align 2, !tbaa !21
  %i.j = xor <8 x i16> %wide.load112, splat (i16 -32768)
  %i.k = xor <8 x i16> %wide.load113, splat (i16 -32768)
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index111 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <8 x i16> %i.j, ptr %i.l, align 2, !tbaa !21
  store <8 x i16> %i.k, ptr %i.m, align 2, !tbaa !21
  %index.next114 = add nuw i64 %index111, 16      ; 2 uses
  %i.n = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.n, label %middle.block115, label %vector.body110, !llvm.loop !86

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %1, %n.vec109
  br i1 %cmp.n116, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block115
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph57.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec109, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %1, 9223372036854775804     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index118
  %wide.load119 = load <4 x i16>, ptr %i.o, align 2, !tbaa !21
  %i.p = xor <4 x i16> %wide.load119, splat (i16 -32768)
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index118
  store <4 x i16> %i.p, ptr %i.q, align 2, !tbaa !21
  %index.next120 = add nuw i64 %index118, 4       ; 2 uses
  %i.r = icmp eq i64 %index.next120, %n.vec117
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %1, %n.vec117
  br i1 %cmp.n121, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.056.ph = phi i64 [ 0, %iter.check ], [ %n.vec109, %vec.epilog.iter.check ], [ %n.vec117, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter127 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader, %.lr.ph57.prol
  %.056.prol = phi i64 [ %i.w, %.lr.ph57.prol ], [ %.056.ph, %.lr.ph57.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph57.prol ], [ 0, %.lr.ph57.preheader ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.056.prol
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21
  %i.u = xor i16 %i.t, -32768
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.056.prol
  store i16 %i.u, ptr %i.v, align 2, !tbaa !21
  %i.w = add nuw nsw i64 %.056.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter127
  br i1 %prol.iter.cmp.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol, !llvm.loop !88

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %.056.unr = phi i64 [ %.056.ph, %.lr.ph57.preheader ], [ %i.w, %.lr.ph57.prol ]
  %i.x = sub nsw i64 %.056.ph, %1
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %.056 = phi i64 [ %i.as, %.lr.ph57 ], [ %.056.unr, %.lr.ph57.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.056
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !21
  %i.ab = xor i16 %i.aa, -32768
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.056
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !21
  %i.ad = add nuw nsw i64 %.056, 1                ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !21
  %i.ag = xor i16 %i.af, -32768
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ad
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !21
  %i.ai = add nuw nsw i64 %.056, 2                ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !21
  %i.al = xor i16 %i.ak, -32768
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ai
  store i16 %i.al, ptr %i.am, align 2, !tbaa !21
  %i.an = add nuw nsw i64 %.056, 3                ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !21
  %i.aq = xor i16 %i.ap, -32768
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.an
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !21
  %i.as = add nuw nsw i64 %.056, 4                ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %i.as, %1
  br i1 %exitcond61.not.3, label %.loopexit, label %.lr.ph57, !llvm.loop !89

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp oeq double %3, 0.000000e+00
  %or.cond3 = and i1 %i.c, %i.at
  %i.au = icmp sgt i64 %1, 0                      ; 2 uses
  br i1 %or.cond3, label %.preheader49, label %.preheader51

.preheader51:                                     ; preds = %bb.b
  br i1 %i.au, label %.lr.ph, label %.loopexit

.preheader49:                                     ; preds = %bb.b
  br i1 %i.au, label %.lr.ph55.preheader, label %.loopexit

.lr.ph55.preheader:                               ; preds = %.preheader49
  %min.iters.check = icmp ult i64 %1, 24
  br i1 %min.iters.check, label %.lr.ph55.preheader124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph55.preheader
  %i.av = getelementptr i8, ptr %5, i64 4         ; 2 uses
  %i.aw = shl nuw i64 %1, 1                       ; 2 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %bound0 = icmp ult ptr %5, %i.ax
  %bound0.a = icmp ult ptr %4, %i.av
  %found.conflict = and i1 %bound0, %bound0.a
  %6 = getelementptr i8, ptr %0, i64 %i.aw        ; 2 uses
  %bound080 = icmp ult ptr %5, %6
  %bound181 = icmp ult ptr %0, %i.av
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  %bound083 = icmp ult ptr %4, %6
  %bound184 = icmp ult ptr %0, %i.ax
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx, %found.conflict85
  br i1 %conflict.rdx86, label %.lr.ph55.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.d, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load = load <4 x i16>, ptr %i.ay, align 2, !tbaa !21, !alias.scope !97 ; 2 uses
  %wide.load87 = load <4 x i16>, ptr %i.az, align 2, !tbaa !21, !alias.scope !97 ; 2 uses
  %i.ba = icmp slt <4 x i16> %wide.load, zeroinitializer
  %i.bb = icmp slt <4 x i16> %wide.load87, zeroinitializer
  %i.bc = shufflevector <4 x i1> %i.bb, <4 x i1> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = bitcast <8 x i1> %i.bc to i8
  %.not = icmp eq i8 %i.bd, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %vector.body
  store i32 -11, ptr %5, align 4, !tbaa !13, !alias.scope !98, !noalias !99
  br label %bb.d

bb.d:                                             ; preds = %vector.body, %bb.c
  %predphi = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load, <4 x i16> splat (i16 32767))
  %predphi102 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load87, <4 x i16> splat (i16 32767))
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store <4 x i16> %predphi, ptr %i.be, align 2, !tbaa !21, !alias.scope !100, !noalias !97
  store <4 x i16> %predphi102, ptr %i.bf, align 2, !tbaa !21, !alias.scope !100, !noalias !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %bb.d
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph55.preheader124

.lr.ph55.preheader124:                            ; preds = %vector.memcheck, %.lr.ph55.preheader, %middle.block
  %.154.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph55.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.154.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader124
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.154.ph
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !21 ; 2 uses
  %i.bj = icmp slt i16 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %.lr.ph55.prol.loopexit.unr-lcssa

bb.e:                                             ; preds = %.lr.ph55.prol
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %.lr.ph55.prol.loopexit.unr-lcssa

.lr.ph55.prol.loopexit.unr-lcssa:                 ; preds = %bb.e, %.lr.ph55.prol
  %.sink.prol = phi i16 [ 32767, %bb.e ], [ %i.bi, %.lr.ph55.prol ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.154.ph
  store i16 %.sink.prol, ptr %i.bk, align 2, !tbaa !21
  %i.bl = or disjoint i64 %.154.ph, 1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol.loopexit.unr-lcssa, %.lr.ph55.preheader124
  %.154.unr = phi i64 [ %.154.ph, %.lr.ph55.preheader124 ], [ %i.bl, %.lr.ph55.prol.loopexit.unr-lcssa ]
  %i.bm = icmp eq i64 %1, %.neg
  br i1 %i.bm, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %bb.h
  %.154 = phi i64 [ %i.bw, %bb.h ], [ %.154.unr, %.lr.ph55.prol.loopexit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.154
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !21 ; 2 uses
  %i.bp = icmp slt i16 %i.bo, 0
  br i1 %i.bp, label %bb.f, label %.lr.ph55.1

bb.f:                                             ; preds = %.lr.ph55
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %.lr.ph55.1

.lr.ph55.1:                                       ; preds = %.lr.ph55, %bb.f
  %.sink = phi i16 [ 32767, %bb.f ], [ %i.bo, %.lr.ph55 ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.154
  store i16 %.sink, ptr %i.bq, align 2, !tbaa !21
  %i.br = add nuw nsw i64 %.154, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !21 ; 2 uses
  %i.bu = icmp slt i16 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph55.1
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph55.1
  %.sink.1 = phi i16 [ 32767, %bb.g ], [ %i.bt, %.lr.ph55.1 ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.br
  store i16 %.sink.1, ptr %i.bv, align 2, !tbaa !21
  %i.bw = add nuw nsw i64 %.154, 2                ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %i.bw, %1
  br i1 %exitcond60.not.1, label %.loopexit, label %.lr.ph55, !llvm.loop !95

.lr.ph:                                           ; preds = %.preheader51, %bb.o
  %.253 = phi i64 [ %i.ck, %bb.o ], [ 0, %.preheader51 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.253
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !21
  %i.bz = uitofp i16 %i.by to double
  %i.ca = fsub double %i.bz, %3
  %i.cb = fdiv double %i.ca, %2                   ; 5 uses
  %i.cc = fcmp olt double %i.cb, f0xC0E0000FAE147AE1
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.253
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.o

bb.j:                                             ; preds = %.lr.ph
  %i.ce = fcmp ogt double %i.cb, f0x40DFFFDF5C28F5C3
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cf = fcmp ult double %i.cb, 0.000000e+00
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = fadd double %i.cb, 5.000000e-01
  %i.ch = fptosi double %i.cg to i16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ci = fadd double %i.cb, -5.000000e-01
  %i.cj = fptosi double %i.ci to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.n, %bb.k
  %.sink68 = phi i16 [ -32768, %bb.i ], [ %i.ch, %bb.m ], [ %i.cj, %bb.n ], [ 32767, %bb.k ]
  store i16 %.sink68, ptr %i.cd, align 2, !tbaa !21
  %i.ck = add nuw nsw i64 %.253, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !0

.loopexit:                                        ; preds = %bb.o, %.lr.ph55.prol.loopexit, %bb.h, %.lr.ph57.prol.loopexit, %.lr.ph57, %middle.block, %middle.block115, %vec.epilog.middle.block, %.preheader51, %.preheader49, %.preheader
  %i.cl = load i32, ptr %5, align 4, !tbaa !13
  ret i32 %i.cl
}

declare i32 @ffpi2b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffu2fi8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %2, 1.000000e+00         ; 2 uses
  %i.b = fcmp oeq double %3, f0x43E0000000000000
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %1, 0
  br i1 %i.c, label %.lr.ph52.preheader, label %.loopexit

.lr.ph52.preheader:                               ; preds = %.preheader
  %min.iters.check65 = icmp ult i64 %1, 4
  br i1 %min.iters.check65, label %.lr.ph52.preheader76, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph52.preheader
  %n.vec67 = and i64 %1, 9223372036854775804      ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index69 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load70 = load <2 x i16>, ptr %i.d, align 2, !tbaa !21
  %wide.load71 = load <2 x i16>, ptr %i.e, align 2, !tbaa !21
  %i.f = zext <2 x i16> %wide.load70 to <2 x i64>
  %i.g = zext <2 x i16> %wide.load71 to <2 x i64>
  %i.h = or disjoint <2 x i64> %i.f, splat (i64 -9223372036854775808)
  %i.i = or disjoint <2 x i64> %i.g, splat (i64 -9223372036854775808)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index69 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> %i.h, ptr %i.j, align 8, !tbaa !15
  store <2 x i64> %i.i, ptr %i.k, align 8, !tbaa !15
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.l, label %middle.block73, label %vector.body68, !llvm.loop !101

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %1, %n.vec67
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph52.preheader76

.lr.ph52.preheader76:                             ; preds = %.lr.ph52.preheader, %middle.block73
  %.051.ph = phi i64 [ 0, %.lr.ph52.preheader ], [ %n.vec67, %middle.block73 ]
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader76, %.lr.ph52
  %.051 = phi i64 [ %i.r, %.lr.ph52 ], [ %.051.ph, %.lr.ph52.preheader76 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.051
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21
  %i.o = zext i16 %i.n to i64
  %i.p = or disjoint i64 %i.o, -9223372036854775808
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.051
  store i64 %i.p, ptr %i.q, align 8, !tbaa !15
  %i.r = add nuw nsw i64 %.051, 1                 ; 2 uses
  %exitcond56.not = icmp eq i64 %i.r, %1
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph52, !llvm.loop !102

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp oeq double %3, 0.000000e+00
  %or.cond3 = and i1 %i.a, %i.s
  %i.t = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %or.cond3, label %.preheader44, label %.preheader46

.preheader46:                                     ; preds = %bb.b
  br i1 %i.t, label %.lr.ph, label %.loopexit

.preheader44:                                     ; preds = %bb.b
  br i1 %i.t, label %.lr.ph50.preheader, label %.loopexit

.lr.ph50.preheader:                               ; preds = %.preheader44
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph50.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph50.preheader
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load = load <2 x i16>, ptr %i.u, align 2, !tbaa !21
  %wide.load63 = load <2 x i16>, ptr %i.v, align 2, !tbaa !21
  %i.w = zext <2 x i16> %wide.load to <2 x i64>
  %i.x = zext <2 x i16> %wide.load63 to <2 x i64>
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %i.w, ptr %i.y, align 8, !tbaa !15
  store <2 x i64> %i.x, ptr %i.z, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph50.preheader77

.lr.ph50.preheader77:                             ; preds = %.lr.ph50.preheader, %middle.block
  %.149.ph = phi i64 [ 0, %.lr.ph50.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader77, %.lr.ph50
  %.149 = phi i64 [ %i.af, %.lr.ph50 ], [ %.149.ph, %.lr.ph50.preheader77 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.149
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !21
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.149
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15
  %i.af = add nuw nsw i64 %.149, 1                ; 2 uses
  %exitcond55.not = icmp eq i64 %i.af, %1
  br i1 %exitcond55.not, label %.loopexit, label %.lr.ph50, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader46, %bb.i
  %.248 = phi i64 [ %i.at, %bb.i ], [ 0, %.preheader46 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.248
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !21
  %i.ai = uitofp i16 %i.ah to double
  %i.aj = fsub double %i.ai, %3
  %i.ak = fdiv double %i.aj, %2                   ; 5 uses
  %i.al = fcmp olt double %i.ak, f0xC3E0000000000000
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.248
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.an = fcmp ogt double %i.ak, f0x43E0000000000000
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ao = fcmp ult double %i.ak, 0.000000e+00
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fadd double %i.ak, 5.000000e-01
  %i.aq = fptosi double %i.ap to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = fadd double %i.ak, -5.000000e-01
  %i.as = fptosi double %i.ar to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.h, %bb.e
  %.sink = phi i64 [ -9223372036854775808, %bb.c ], [ %i.aq, %bb.g ], [ %i.as, %bb.h ], [ 9223372036854775807, %bb.e ]
  store i64 %.sink, ptr %i.am, align 8, !tbaa !15
  %i.at = add nuw nsw i64 %.248, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %bb.i, %.lr.ph50, %.lr.ph52, %middle.block, %middle.block73, %.preheader46, %.preheader44, %.preheader
  %i.au = load i32, ptr %5, align 4, !tbaa !13
  ret i32 %i.au
}

declare i32 @ffpi8b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffu2fi1(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %2, 1.000000e+00
  %i.b = fcmp oeq double %3, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph38.preheader, label %.loopexit

.lr.ph38.preheader:                               ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 24
  br i1 %min.iters.check, label %.lr.ph38.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph38.preheader
  %i.d = getelementptr i8, ptr %5, i64 4          ; 2 uses
  %i.e = getelementptr i8, ptr %4, i64 %1         ; 2 uses
  %bound0 = icmp ult ptr %5, %i.e
  %bound1 = icmp ult ptr %4, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %6 = shl nuw i64 %1, 1
  %7 = getelementptr i8, ptr %0, i64 %6           ; 2 uses
  %bound058 = icmp ult ptr %5, %7
  %bound159 = icmp ult ptr %0, %i.d
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx = or i1 %found.conflict, %found.conflict60
  %bound061 = icmp ult ptr %4, %7
  %bound162 = icmp ult ptr %0, %i.e
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx, %found.conflict63
  br i1 %conflict.rdx64, label %.lr.ph38.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load = load <4 x i16>, ptr %i.f, align 2, !tbaa !21, !alias.scope !111 ; 2 uses
  %wide.load65 = load <4 x i16>, ptr %i.g, align 2, !tbaa !21, !alias.scope !111 ; 2 uses
  %i.h = icmp ugt <4 x i16> %wide.load, splat (i16 255)
  %i.i = icmp ugt <4 x i16> %wide.load65, splat (i16 255)
  %i.j = shufflevector <4 x i1> %i.i, <4 x i1> %i.h, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.k = bitcast <8 x i1> %i.j to i8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 -11, ptr %5, align 4, !tbaa !13, !alias.scope !112, !noalias !113
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi81 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load, <4 x i16> splat (i16 255))
  %predphi = trunc nuw <4 x i16> %predphi81 to <4 x i8>
  %predphi8082 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load65, <4 x i16> splat (i16 255))
  %predphi80 = trunc nuw <4 x i16> %predphi8082 to <4 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store <4 x i8> %predphi, ptr %i.l, align 1, !tbaa !26, !alias.scope !114, !noalias !111
  store <4 x i8> %predphi80, ptr %i.m, align 1, !tbaa !26, !alias.scope !114, !noalias !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph38.preheader83

.lr.ph38.preheader83:                             ; preds = %vector.memcheck, %.lr.ph38.preheader, %middle.block
  %.037.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph38.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.037.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader83
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.037.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !21   ; 2 uses
  %i.q = icmp ugt i16 %i.p, 255
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph38.prol
  %i.r = trunc nuw i16 %i.p to i8
  br label %.lr.ph38.prol.loopexit.unr-lcssa

bb.e:                                             ; preds = %.lr.ph38.prol
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %.lr.ph38.prol.loopexit.unr-lcssa

.lr.ph38.prol.loopexit.unr-lcssa:                 ; preds = %bb.e, %bb.d
  %.sink.prol = phi i8 [ -1, %bb.e ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %.037.ph
  store i8 %.sink.prol, ptr %i.s, align 1, !tbaa !26
  %i.t = or disjoint i64 %.037.ph, 1
  br label %.lr.ph38.prol.loopexit

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol.loopexit.unr-lcssa, %.lr.ph38.preheader83
  %.037.unr = phi i64 [ %.037.ph, %.lr.ph38.preheader83 ], [ %i.t, %.lr.ph38.prol.loopexit.unr-lcssa ]
  %i.u = icmp eq i64 %1, %.neg
  br i1 %i.u, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %bb.j
  %.037 = phi i64 [ %i.ag, %bb.j ], [ %.037.unr, %.lr.ph38.prol.loopexit ] ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.037
  %i.w = load i16, ptr %i.v, align 2, !tbaa !21   ; 2 uses
  %i.x = icmp ugt i16 %i.w, 255
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph38
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %.lr.ph38.1

bb.g:                                             ; preds = %.lr.ph38
  %i.y = trunc nuw i16 %i.w to i8
  br label %.lr.ph38.1

.lr.ph38.1:                                       ; preds = %bb.f, %bb.g
  %.sink = phi i8 [ -1, %bb.f ], [ %i.y, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.037
  store i8 %.sink, ptr %i.z, align 1, !tbaa !26
  %i.aa = add nuw nsw i64 %.037, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !21 ; 2 uses
  %i.ad = icmp ugt i16 %i.ac, 255
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph38.1
  %i.ae = trunc nuw i16 %i.ac to i8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph38.1
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.1 = phi i8 [ -1, %bb.i ], [ %i.ae, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa
  store i8 %.sink.1, ptr %i.af, align 1, !tbaa !26
  %i.ag = add nuw nsw i64 %.037, 2                ; 2 uses
  %exitcond40.not.1 = icmp eq i64 %i.ag, %1
  br i1 %exitcond40.not.1, label %.loopexit, label %.lr.ph38, !llvm.loop !110

.lr.ph:                                           ; preds = %.preheader34, %bb.o
  %.136 = phi i64 [ %i.ar, %bb.o ], [ 0, %.preheader34 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.136
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !21
  %i.aj = uitofp i16 %i.ai to double
  %i.ak = fsub double %i.aj, %3
  %i.al = fdiv double %i.ak, %2                   ; 3 uses
  %i.am = fcmp olt double %i.al, -4.900000e-01
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.an = fcmp ogt double %i.al, 2.554900e+02
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -11, ptr %5, align 4, !tbaa !13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ao = fadd double %i.al, 5.000000e-01
  %i.ap = fptoui double %i.ao to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m
  %.sink46 = phi i8 [ 0, %bb.k ], [ %i.ap, %bb.n ], [ -1, %bb.m ]
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 %.136
  store i8 %.sink46, ptr %i.aq, align 1, !tbaa !26
  %i.ar = add nuw nsw i64 %.136, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2

.loopexit:                                        ; preds = %bb.o, %.lr.ph38.prol.loopexit, %bb.j, %middle.block, %.preheader34, %.preheader
  %i.as = load i32, ptr %5, align 4, !tbaa !13
  ret i32 %i.as
}

declare i32 @ffpi1b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffu2fi4(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %2, 1.000000e+00
  %i.b = fcmp oeq double %3, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph37.preheader, label %.loopexit

.lr.ph37.preheader:                               ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph37.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.preheader
  %n.vec = and i64 %1, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load = load <4 x i16>, ptr %i.d, align 2, !tbaa !21
  %wide.load44 = load <4 x i16>, ptr %i.e, align 2, !tbaa !21
  %i.f = zext <4 x i16> %wide.load to <4 x i32>
  %i.g = zext <4 x i16> %wide.load44 to <4 x i32>
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %i.f, ptr %i.h, align 4, !tbaa !13
  store <4 x i32> %i.g, ptr %i.i, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_0
