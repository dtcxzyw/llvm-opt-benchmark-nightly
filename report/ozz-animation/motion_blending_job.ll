Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/motion_blending_job?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation17MotionBlendingJob8ValidateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.idx = shl i64 %i.f, 4                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.h = add i64 %.idx, -16                       ; 3 uses
  %i.i = lshr exact i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.i, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.h, 64
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.h, 256
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k         ; 2 uses
  %n.vec = sub nsw i64 %i.j, %i.m                 ; 3 uses
  %i.n = shl i64 %n.vec, 4
  %i.o = getelementptr i8, ptr %i.d, i64 %i.n
  %i.p = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.p, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi15 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi16 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi17 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.af, %vector.body ]
  %i.q = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.q
  %i.r = getelementptr i8, ptr %i.d, i64 %i.q
  %i.s = getelementptr i8, ptr %i.d, i64 %i.q
  %i.t = getelementptr i8, ptr %i.d, i64 %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.v = getelementptr i8, ptr %i.r, i64 72
  %i.w = getelementptr i8, ptr %i.s, i64 136
  %i.x = getelementptr i8, ptr %i.t, i64 200
  %wide.vec = load <8 x ptr>, ptr %i.u, align 8, !tbaa !20
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec21 = load <8 x ptr>, ptr %i.v, align 8, !tbaa !20
  %strided.vec22 = shufflevector <8 x ptr> %wide.vec21, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x ptr>, ptr %i.w, align 8, !tbaa !20
  %strided.vec24 = shufflevector <8 x ptr> %wide.vec23, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec25 = load <8 x ptr>, ptr %i.x, align 8, !tbaa !20
  %strided.vec26 = shufflevector <8 x ptr> %wide.vec25, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.y = icmp ne <4 x ptr> %strided.vec, splat (ptr null)
  %i.z = icmp ne <4 x ptr> %strided.vec22, splat (ptr null)
  %i.aa = icmp ne <4 x ptr> %strided.vec24, splat (ptr null)
  %i.ab = icmp ne <4 x ptr> %strided.vec26, splat (ptr null)
  %i.ac = and <4 x i1> %vec.phi, %i.y             ; 2 uses
  %i.ad = and <4 x i1> %vec.phi15, %i.z           ; 2 uses
  %i.ae = and <4 x i1> %vec.phi16, %i.aa          ; 2 uses
  %i.af = and <4 x i1> %vec.phi17, %i.ab          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !24

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.ad, %i.ac
  %bin.rdx27 = and <4 x i1> %i.ae, %bin.rdx
  %bin.rdx28 = and <4 x i1> %i.af, %bin.rdx27
  %i.ah = bitcast <4 x i1> %bin.rdx28 to i4
  %i.ai = icmp eq i4 %i.ah, -1                    ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.m, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ai, %vec.epilog.iter.check ], [ %i.c, %vector.main.loop.iter.check ]
  %i.aj = and i64 %i.j, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec29 = sub nsw i64 %i.j, %i.al              ; 2 uses
  %i.am = shl i64 %n.vec29, 4
  %i.an = getelementptr i8, ptr %i.d, i64 %i.am
  %i.ao = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi31 = phi <4 x i1> [ %i.ao, %vec.epilog.ph ], [ %i.as, %vec.epilog.vector.body ]
  %i.ap = shl i64 %index30, 4
  %next.gep32 = getelementptr i8, ptr %i.d, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep32, i64 8
  %wide.vec33 = load <8 x ptr>, ptr %i.aq, align 8, !tbaa !20
  %strided.vec34 = shufflevector <8 x ptr> %wide.vec33, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ar = icmp ne <4 x ptr> %strided.vec34, splat (ptr null)
  %i.as = and <4 x i1> %vec.phi31, %i.ar          ; 2 uses
  %index.next35 = add nuw i64 %index30, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.au = bitcast <4 x i1> %i.as to i4
  %i.av = icmp eq i4 %i.au, -1
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.in13.ph = phi i1 [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.01012.ph = phi ptr [ %i.d, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.in.lcssa = phi i1 [ %i.c, %bb.a ], [ %i.az, %.lr.ph ]
  ret i1 %.0.in.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.in13 = phi i1 [ %i.az, %.lr.ph ], [ %.0.in13.ph, %.lr.ph.preheader ]
  %.01012 = phi ptr [ %i.ba, %.lr.ph ], [ %.01012.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = and i1 %.0.in13, %i.ay                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation17MotionBlendingJob3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.idx.i = shl i64 %i.f, 4                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 2 uses
  %.not11.i = icmp eq i64 %i.f, 0
  br i1 %.not11.i, label %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.h = add i64 %.idx.i, -16                     ; 3 uses
  %i.i = lshr exact i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.i, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.h, 64
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i64 %i.h, 256
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k         ; 2 uses
  %n.vec = sub nsw i64 %i.j, %i.m                 ; 3 uses
  %i.n = shl i64 %n.vec, 4
  %i.o = getelementptr i8, ptr %i.d, i64 %i.n
  %i.p = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.c, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.p, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi175 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi176 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi177 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.af, %vector.body ]
  %i.q = shl i64 %index, 4                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.q
  %i.r = getelementptr i8, ptr %i.d, i64 %i.q
  %i.s = getelementptr i8, ptr %i.d, i64 %i.q
  %i.t = getelementptr i8, ptr %i.d, i64 %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.v = getelementptr i8, ptr %i.r, i64 72
  %i.w = getelementptr i8, ptr %i.s, i64 136
  %i.x = getelementptr i8, ptr %i.t, i64 200
  %wide.vec = load <8 x ptr>, ptr %i.u, align 8, !tbaa !20
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec181 = load <8 x ptr>, ptr %i.v, align 8, !tbaa !20
  %strided.vec182 = shufflevector <8 x ptr> %wide.vec181, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec183 = load <8 x ptr>, ptr %i.w, align 8, !tbaa !20
  %strided.vec184 = shufflevector <8 x ptr> %wide.vec183, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec185 = load <8 x ptr>, ptr %i.x, align 8, !tbaa !20
  %strided.vec186 = shufflevector <8 x ptr> %wide.vec185, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.y = icmp ne <4 x ptr> %strided.vec, splat (ptr null)
  %i.z = icmp ne <4 x ptr> %strided.vec182, splat (ptr null)
  %i.aa = icmp ne <4 x ptr> %strided.vec184, splat (ptr null)
  %i.ab = icmp ne <4 x ptr> %strided.vec186, splat (ptr null)
  %i.ac = and <4 x i1> %vec.phi, %i.y             ; 2 uses
  %i.ad = and <4 x i1> %vec.phi175, %i.z          ; 2 uses
  %i.ae = and <4 x i1> %vec.phi176, %i.aa         ; 2 uses
  %i.af = and <4 x i1> %vec.phi177, %i.ab         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !27

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.ad, %i.ac
  %bin.rdx187 = and <4 x i1> %i.ae, %bin.rdx
  %bin.rdx188 = and <4 x i1> %i.af, %bin.rdx187
  %i.ah = bitcast <4 x i1> %bin.rdx188 to i4
  %i.ai = icmp eq i4 %i.ah, -1                    ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.m, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ai, %vec.epilog.iter.check ], [ %i.c, %vector.main.loop.iter.check ]
  %i.aj = and i64 %i.j, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec189 = sub nsw i64 %i.j, %i.al             ; 2 uses
  %i.am = shl i64 %n.vec189, 4
  %i.an = getelementptr i8, ptr %i.d, i64 %i.am
  %i.ao = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi191 = phi <4 x i1> [ %i.ao, %vec.epilog.ph ], [ %i.as, %vec.epilog.vector.body ]
  %i.ap = shl i64 %index190, 4
  %next.gep192 = getelementptr i8, ptr %i.d, i64 %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep192, i64 8
  %wide.vec193 = load <8 x ptr>, ptr %i.aq, align 8, !tbaa !20
  %strided.vec194 = shufflevector <8 x ptr> %wide.vec193, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ar = icmp ne <4 x ptr> %strided.vec194, splat (ptr null)
  %i.as = and <4 x i1> %vec.phi191, %i.ar         ; 2 uses
  %index.next195 = add nuw i64 %index190, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.au = bitcast <4 x i1> %i.as to i4
  %i.av = icmp eq i4 %i.au, -1
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.in13.i.ph = phi i1 [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.01012.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0.in13.i = phi i1 [ %i.az, %.lr.ph.i ], [ %.0.in13.i.ph, %.lr.ph.i.preheader ]
  %.01012.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.01012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01012.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = and i1 %.0.in13.i, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01012.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.g
  br i1 %.not.i, label %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread, label %.lr.ph.i, !llvm.loop !29

_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit: ; preds = %bb.a
  br i1 %i.c, label %._crit_edge, label %bb.e

_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread: ; preds = %.lr.ph.i
  br i1 %i.az, label %.lr.ph, label %bb.e

._crit_edge:                                      ; preds = %bb.d, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit
  %.sroa.085.0.lcssa = phi <2 x float> [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.sroa.085.1, %bb.d ] ; 4 uses
  %.sroa.13.0.lcssa = phi <2 x float> [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.sroa.13.1, %bb.d ] ; 3 uses
  %.sroa.0114.0.lcssa = phi <2 x float> [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.sroa.0114.1, %bb.d ] ; 4 uses
  %.sroa.11.0.lcssa = phi float [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.sroa.11.1, %bb.d ] ; 3 uses
  %.046.lcssa = phi float [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.147, %bb.d ]
  %.045.lcssa = phi float [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ %.1, %bb.d ]
  %.sroa.0114.0.vec.extract = extractelement <2 x float> %.sroa.0114.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0114.0.lcssa, %.sroa.0114.0.lcssa
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bc = tail call float @llvm.fmuladd.f32(float %.sroa.0114.0.vec.extract, float %.sroa.0114.0.vec.extract, float %i.bb)
  %i.bd = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.lcssa, float %.sroa.11.0.lcssa, float %i.bc)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fmul float %.045.lcssa, %sqrt           ; 2 uses
  %i.bf = fcmp oeq float %i.be, 0.000000e+00
  %i.bg = fdiv float %.046.lcssa, %i.be
  %i.bh = select i1 %i.bf, float 0.000000e+00, float %i.bg ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %.sroa.0114.0.lcssa, %i.bj
  %i.bl = fmul float %.sroa.11.0.lcssa, %i.bh
  store <2 x float> %i.bk, ptr %i.b, align 4, !tbaa !30
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.bl, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !30
  %.sroa.085.0.vec.extract90 = extractelement <2 x float> %.sroa.085.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop199 = fmul <2 x float> %.sroa.085.0.lcssa, %.sroa.085.0.lcssa
  %i.bm = extractelement <2 x float> %foldExtExtBinop199, i64 1
  %i.bn = tail call float @llvm.fmuladd.f32(float %.sroa.085.0.vec.extract90, float %.sroa.085.0.vec.extract90, float %i.bm)
  %.sroa.13.8.vec.extract104 = extractelement <2 x float> %.sroa.13.0.lcssa, i64 0 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %.sroa.13.8.vec.extract104, float %.sroa.13.8.vec.extract104, float %i.bn)
  %.sroa.13.12.vec.extract111 = extractelement <2 x float> %.sroa.13.0.lcssa, i64 1 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %.sroa.13.12.vec.extract111, float %.sroa.13.12.vec.extract111, float %i.bo) ; 2 uses
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN3ozz4math13NormalizeSafeERKNS0_10QuaternionES3_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %sqrt151 = tail call float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv float 1.000000e+00, %sqrt151
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fmul <2 x float> %.sroa.085.0.lcssa, %i.bt
  %i.bv = fmul <2 x float> %.sroa.13.0.lcssa, %i.bt
  br label %_ZN3ozz4math13NormalizeSafeERKNS0_10QuaternionES3_.exit

_ZN3ozz4math13NormalizeSafeERKNS0_10QuaternionES3_.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0144.0 = phi <2 x float> [ %i.bu, %bb.b ], [ zeroinitializer, %._crit_edge ]
  %.sroa.6.0 = phi <2 x float> [ %i.bv, %bb.b ], [ <float 0.000000e+00, float 1.000000e+00>, %._crit_edge ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <2 x float> %.sroa.0144.0, ptr %i.bw, align 4, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store <2 x float> %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.bx, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !30
  br label %bb.e

.lr.ph:                                           ; preds = %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread, %bb.d
  %.045160 = phi float [ %.1, %bb.d ], [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 2 uses
  %.046159 = phi float [ %.147, %bb.d ], [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 2 uses
  %.048158 = phi ptr [ %i.dm, %bb.d ], [ %i.d, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 3 uses
  %.sroa.11.0157 = phi float [ %.sroa.11.1, %bb.d ], [ 0.000000e+00, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 2 uses
  %.sroa.0114.0156 = phi <2 x float> [ %.sroa.0114.1, %bb.d ], [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 2 uses
  %.sroa.13.0155 = phi <2 x float> [ %.sroa.13.1, %bb.d ], [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 4 uses
  %.sroa.085.0154 = phi <2 x float> [ %.sroa.085.1, %bb.d ], [ zeroinitializer, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ] ; 4 uses
  %i.by = load float, ptr %.048158, align 8, !tbaa !31 ; 5 uses
  %i.bz = fcmp ugt float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ca = fadd float %.045160, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %.048158, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !33 ; 3 uses
  %i.cf = load <2 x float>, ptr %i.cc, align 4, !tbaa !30 ; 4 uses
  %foldExtExtBinop201 = fmul <2 x float> %i.cf, %i.cf
  %i.cg = extractelement <2 x float> %foldExtExtBinop201, i64 1
  %i.ch = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cg)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ci) ; 2 uses
  %sqrt152 = tail call float @llvm.sqrt.f32(float %i.cj) ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %sqrt152, float %i.by, float %.046159)
  %i.cl = fcmp oeq float %i.cj, 0.000000e+00
  %i.cm = fdiv float %i.by, %sqrt152
  %i.cn = select i1 %i.cl, float 0.000000e+00, float %i.cm ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cf, %i.cp
  %i.cr = fmul float %i.ce, %i.cn
  %i.cs = fadd <2 x float> %.sroa.0114.0156, %i.cq
  %i.ct = fadd float %.sroa.11.0157, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.sroa.085.0.vec.extract = extractelement <2 x float> %.sroa.085.0154, i64 0
  %.sroa.13.8.vec.extract = extractelement <2 x float> %.sroa.13.0155, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %.sroa.13.12.vec.extract = extractelement <2 x float> %.sroa.13.0155, i64 1
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !tbaa !30 ; 3 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  %i.cy = extractelement <2 x float> %i.cw, i64 1
  %i.cz = load <2 x float>, ptr %i.cu, align 4, !tbaa !30 ; 3 uses
  %foldExtExtBinop203 = fmul <2 x float> %.sroa.085.0154, %i.cz
  %i.da = extractelement <2 x float> %foldExtExtBinop203, i64 1
  %i.db = extractelement <2 x float> %i.cz, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %.sroa.085.0.vec.extract, float %i.db, float %i.da)
  %i.dd = tail call float @llvm.fmuladd.f32(float %.sroa.13.8.vec.extract, float %i.cx, float %i.dc)
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.12.vec.extract, float %i.cy, float %i.dd)
  %i.df = tail call noundef float @llvm.copysign.f32(float %i.by, float %i.de)
  %i.dg = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = fmul <2 x float> %i.cz, %i.dh
  %i.dj = fmul <2 x float> %i.cw, %i.dh
  %i.dk = fadd <2 x float> %.sroa.085.0154, %i.di
  %i.dl = fadd <2 x float> %.sroa.13.0155, %i.dj
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.085.1 = phi <2 x float> [ %i.dk, %bb.c ], [ %.sroa.085.0154, %.lr.ph ] ; 2 uses
  %.sroa.13.1 = phi <2 x float> [ %i.dl, %bb.c ], [ %.sroa.13.0155, %.lr.ph ] ; 2 uses
  %.sroa.0114.1 = phi <2 x float> [ %i.cs, %bb.c ], [ %.sroa.0114.0156, %.lr.ph ] ; 2 uses
  %.sroa.11.1 = phi float [ %i.ct, %bb.c ], [ %.sroa.11.0157, %.lr.ph ] ; 2 uses
  %.147 = phi float [ %i.ck, %bb.c ], [ %.046159, %.lr.ph ] ; 2 uses
  %.1 = phi float [ %i.ca, %bb.c ], [ %.045160, %.lr.ph ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.048158, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dm, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit, %_ZN3ozz4math13NormalizeSafeERKNS0_10QuaternionES3_.exit
  %.0.in.lcssa.i169 = phi i1 [ false, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit.thread ], [ false, %_ZNK3ozz9animation17MotionBlendingJob8ValidateEv.exit ], [ true, %_ZN3ozz4math13NormalizeSafeERKNS0_10QuaternionES3_.exit ]
  ret i1 %.0.in.lcssa.i169
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN3ozz9animation17MotionBlendingJob5LayerE", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN3ozz4spanIKNS_9animation17MotionBlendingJob5LayerEEE", !10, i64 0, !11, i64 8}
!13 = !{!"p1 _ZTSN3ozz4math9TransformE", !9, i64 0}
!14 = !{!"_ZTSN3ozz9animation17MotionBlendingJobE", !12, i64 0, !13, i64 16}
!15 = !{!14, !13, i64 16}
!16 = !{!12, !10, i64 0}
!17 = !{!12, !11, i64 8}
!18 = !{!"float", !5, i64 0}
!19 = !{!"_ZTSN3ozz9animation17MotionBlendingJob5LayerE", !18, i64 0, !13, i64 8}
!20 = !{!19, !13, i64 8}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !21, !22}
!25 = distinct !{!25, !21, !22}
!26 = distinct !{!26, !22, !21}
!27 = distinct !{!27, !21, !22}
!28 = distinct !{!28, !21, !22}
!29 = distinct !{!29, !22, !21}
!30 = !{!18, !18, i64 0}
!31 = !{!19, !18, i64 0}
!32 = !{!"_ZTSN3ozz4math6Float3E", !18, i64 0, !18, i64 4, !18, i64 8}
!33 = !{!32, !18, i64 8}
end_hunk_0
