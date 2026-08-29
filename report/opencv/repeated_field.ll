Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/repeated_field?download=true
inline.NumInlined: 1118
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldIbE15ExtractSubrangeEiiPb:bb.a
  %i.g = add i64 %i.f, %i.e
  %i.h = sub i64 %i.g, %i.a
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check33 = icmp ult i32 %2, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !17
  %wide.load34 = load <16 x i8>, ptr %i.k, align 1, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1, !tbaa !17
  store <16 x i8> %wide.load34, ptr %i.m, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr i8, ptr %invariant.gep, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.o, align 1, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index36
  store <4 x i8> %wide.load37, ptr %i.p, align 1, !tbaa !17
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next38, %n.vec35
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %n.vec35, %wide.trip.count
  br i1 %cmp.n39, label %.loopexit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.r = load i8, ptr %gep.prol, align 1, !tbaa !17, !range !19, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !17
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !27

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.loopexit.thread, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.v = load i8, ptr %gep, align 1, !tbaa !17, !range !19, !noundef !20
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.v, ptr %i.w, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.x = load i8, ptr %gep.1, align 1, !tbaa !17, !range !19, !noundef !20
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  store i8 %i.x, ptr %i.y, align 1, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.z = load i8, ptr %gep.2, align 1, !tbaa !17, !range !19, !noundef !20
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ab = load i8, ptr %gep.3, align 1, !tbaa !17, !range !19, !noundef !20
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %vec.epilog.scalar.ph, !llvm.loop !29

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.loopexit
  %i.ad = add nsw i32 %2, %1                      ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !8     ; 4 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %iter.check54, label %._crit_edge

iter.check54:                                     ; preds = %.loopexit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 6 uses
  %i.ai = sext i32 %i.ad to i64                   ; 6 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 3 uses
  %i.ak = sext i32 %i.ae to i64                   ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ai                ; 7 uses
  %min.iters.check40 = icmp ult i64 %i.al, 8
  br i1 %min.iters.check40, label %vec.epilog.scalar.ph55.preheader, label %vector.main.loop.iter.check41

vector.main.loop.iter.check41:                    ; preds = %iter.check54
  %min.iters.check42 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check42, label %vec.epilog.ph58, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check41
  %i.am = and i64 %i.al, 24
  %n.vec44 = and i64 %i.al, -32                   ; 4 uses
  %i.an = add nsw i64 %n.vec44, %i.ai
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 2 uses
  %i.ao = add i64 %index46, %i.ai                 ; 2 uses
  %i.ap = sub nsw i64 %i.ao, %i.aj
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load47 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !17
  %wide.load48 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !17
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ap ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load47, ptr %i.as, align 1, !tbaa !17
  store <16 x i8> %wide.load48, ptr %i.at, align 1, !tbaa !17
  %index.next49 = add nuw i64 %index46, 32        ; 2 uses
  %i.au = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.au, label %middle.block50, label %vector.body45, !llvm.loop !30

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %i.al, %n.vec44
  br i1 %cmp.n51, label %._crit_edge, label %vec.epilog.iter.check56

vec.epilog.iter.check56:                          ; preds = %middle.block50
  %min.epilog.iters.check57 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check57, label %vec.epilog.scalar.ph55.preheader, label %vec.epilog.ph58, !prof !31

vec.epilog.ph58:                                  ; preds = %vector.main.loop.iter.check41, %vec.epilog.iter.check56
  %vec.epilog.resume.val52 = phi i64 [ %n.vec44, %vec.epilog.iter.check56 ], [ 0, %vector.main.loop.iter.check41 ]
  %n.vec59 = and i64 %i.al, -8                    ; 3 uses
  %i.av = add nsw i64 %n.vec59, %i.ai
  br label %vec.epilog.vector.body60

vec.epilog.vector.body60:                         ; preds = %vec.epilog.vector.body60, %vec.epilog.ph58
  %index61 = phi i64 [ %vec.epilog.resume.val52, %vec.epilog.ph58 ], [ %index.next63, %vec.epilog.vector.body60 ] ; 2 uses
  %i.aw = add i64 %index61, %i.ai                 ; 2 uses
  %i.ax = sub nsw i64 %i.aw, %i.aj
  %i.ay = getelementptr inbounds i8, ptr %i.ah, i64 %i.aw
  %wide.load62 = load <8 x i8>, ptr %i.ay, align 1, !tbaa !17
  %i.az = getelementptr inbounds i8, ptr %i.ah, i64 %i.ax
  store <8 x i8> %wide.load62, ptr %i.az, align 1, !tbaa !17
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ba, label %vec.epilog.middle.block64, label %vec.epilog.vector.body60, !llvm.loop !32

vec.epilog.middle.block64:                        ; preds = %vec.epilog.vector.body60
  %cmp.n65 = icmp eq i64 %i.al, %n.vec59
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.scalar.ph55.preheader

vec.epilog.scalar.ph55.preheader:                 ; preds = %iter.check54, %vec.epilog.iter.check56, %vec.epilog.middle.block64
  %indvars.iv26.ph = phi i64 [ %i.ai, %iter.check54 ], [ %i.an, %vec.epilog.iter.check56 ], [ %i.av, %vec.epilog.middle.block64 ]
  br label %vec.epilog.scalar.ph55

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph55, %middle.block50, %vec.epilog.middle.block64, %.loopexit.thread
  %i.bb = icmp sgt i32 %i.ae, 0
  br i1 %i.bb, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.bc = sub nsw i32 %i.ae, %2
  store i32 %i.bc, ptr %0, align 8, !tbaa !8
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

vec.epilog.scalar.ph55:                           ; preds = %vec.epilog.scalar.ph55.preheader, %vec.epilog.scalar.ph55
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %vec.epilog.scalar.ph55 ], [ %indvars.iv26.ph, %vec.epilog.scalar.ph55.preheader ] ; 3 uses
  %i.bd = sub nsw i64 %indvars.iv26, %i.aj
  %i.be = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv26
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17, !range !19, !noundef !20
  %i.bg = getelementptr inbounds i8, ptr %i.ah, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !17
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %i.ak
  br i1 %exitcond30.not, label %._crit_edge, label %vec.epilog.scalar.ph55, !llvm.loop !33

_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 5 uses
  %.not.i = icmp slt i32 %i.e, %i.c
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.j = icmp eq i32 %i.e, 0
  %.in.i.i = select i1 %i.j, ptr %i.g, ptr %i.i
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.l = icmp slt i32 %i.c, 4
  br i1 %i.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.e, 1073741824
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.e, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.c)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.o = zext nneg i32 %.0.i.i to i64             ; 2 uses
  %i.p = icmp eq ptr %i.k, null
  br i1 %i.p, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.q = add nuw nsw i64 %i.o, 8
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = add nuw nsw i64 %i.o, 15
  %i.t = and i64 %i.s, 4294967288
  %i.u = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.t, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.r, %bb.f ], [ %i.u, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !13
  %i.v = load i32, ptr %i.d, align 4, !tbaa !11
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8, !tbaa !12
  %i.x = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 1 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.v to i64
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.ae = load i32, ptr %1, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = load i32, ptr %0, align 8, !tbaa !8
  %i.ai = add nsw i32 %i.ah, %i.ae
  store i32 %i.ai, ptr %0, align 8, !tbaa !8
  %i.aj = sext i32 %i.b to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.an = load i32, ptr %1, align 8, !tbaa !8
  %i.ao = sext i32 %i.an to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE9MoveArrayEPbS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE18AddAlreadyReservedERKb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !8
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  store i8 %i.a, ptr %i.g, align 1, !tbaa !17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIbE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !8
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIbE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE6ResizeEiRKb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldIlE3AddEv:bb.a
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = zext i32 %i.a to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = add i32 %i.a, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !74
  ret ptr %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE10RemoveLastEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE15ExtractSubrangeEiiPl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %.not = icmp ne ptr %3, null
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %min.iters.check = icmp ult i32 %2, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = shl nsw i64 %i.e, 3
  %i.h = add i64 %i.g, %i.f
  %i.i = sub i64 %i.h, %i.a
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %wide.load33 = load <2 x i64>, ptr %i.k, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %wide.load, ptr %i.l, align 8, !tbaa !80
  store <2 x i64> %wide.load33, ptr %i.m, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.o = load i64, ptr %gep.prol, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store i64 %i.o, ptr %i.p, align 8, !tbaa !80
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !83

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i64, ptr %gep, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.s, ptr %i.t, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load i64, ptr %gep.1, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store i64 %i.u, ptr %i.v, align 8, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load i64, ptr %gep.2, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store i64 %i.w, ptr %i.x, align 8, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load i64, ptr %gep.3, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store i64 %i.y, ptr %i.z, align 8, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !84

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !74    ; 4 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77 ; 4 uses
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = sext i32 %i.ab to i64                   ; 2 uses
  %i.ai = sub nsw i64 %i.ah, %i.af                ; 3 uses
  %min.iters.check35 = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph23
  %n.vec37 = and i64 %i.ai, -4                    ; 3 uses
  %i.aj = add nsw i64 %n.vec37, %i.af
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 2 uses
  %i.ak = add i64 %index39, %i.af                 ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !80
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %wide.load40, ptr %i.ao, align 8, !tbaa !80
  store <2 x i64> %wide.load41, ptr %i.ap, align 8, !tbaa !80
  %index.next42 = add nuw i64 %index39, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.aq, label %middle.block43, label %vector.body38, !llvm.loop !85

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.ai, %n.vec37
  br i1 %cmp.n44, label %._crit_edge, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph23, %middle.block43
  %indvars.iv26.ph = phi i64 [ %i.af, %.lr.ph23 ], [ %i.aj, %middle.block43 ]
  br label %scalar.ph34

._crit_edge:                                      ; preds = %scalar.ph34, %middle.block43, %.loopexit.thread
  %i.ar = icmp sgt i32 %i.ab, 0
  br i1 %i.ar, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.as = sub nsw i32 %i.ab, %2
  store i32 %i.as, ptr %0, align 8, !tbaa !74
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %scalar.ph34 ], [ %indvars.iv26.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv26, %i.ag
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.av = load i64, ptr %i.au, align 8, !tbaa !80
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.at
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !80
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %i.ah
  br i1 %exitcond30.not, label %._crit_edge, label %scalar.ph34, !llvm.loop !86

_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !74     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76   ; 5 uses
  %.not.i = icmp slt i32 %i.e, %i.c
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.j = icmp eq i32 %i.e, 0
  %.in.i.i = select i1 %i.j, ptr %i.g, ptr %i.i
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.l = icmp slt i32 %i.c, 4
  br i1 %i.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.e, 1073741824
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.e, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.c)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.o = zext nneg i32 %.0.i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = icmp eq ptr %i.k, null
  %i.r = add nuw nsw i64 %i.p, 8                  ; 2 uses
  br i1 %i.q, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.t = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.r, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !78
  %i.u = load i32, ptr %i.d, align 4, !tbaa !76
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !77
  %i.w = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = load i32, ptr %0, align 8, !tbaa !74
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !74
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77
  %i.ao = load i32, ptr %1, align 8, !tbaa !74
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE9MoveArrayEPlS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE18AddAlreadyReservedERKl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !74
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store i64 %i.a, ptr %i.g, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIlE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !74
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIlE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE6ResizeEiRKl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPllEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldImE3AddEv:bb.a
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = zext i32 %i.a to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = add i32 %i.a, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !94
  ret ptr %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE10RemoveLastEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE15ExtractSubrangeEiiPm(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %.not = icmp ne ptr %3, null
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %min.iters.check = icmp ult i32 %2, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = shl nsw i64 %i.e, 3
  %i.h = add i64 %i.g, %i.f
  %i.i = sub i64 %i.h, %i.a
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %wide.load33 = load <2 x i64>, ptr %i.k, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %wide.load, ptr %i.l, align 8, !tbaa !80
  store <2 x i64> %wide.load33, ptr %i.m, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.o = load i64, ptr %gep.prol, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store i64 %i.o, ptr %i.p, align 8, !tbaa !80
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !101

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i64, ptr %gep, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.s, ptr %i.t, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load i64, ptr %gep.1, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store i64 %i.u, ptr %i.v, align 8, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load i64, ptr %gep.2, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store i64 %i.w, ptr %i.x, align 8, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load i64, ptr %gep.3, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store i64 %i.y, ptr %i.z, align 8, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !102

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !94    ; 4 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97 ; 4 uses
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = sext i32 %i.ab to i64                   ; 2 uses
  %i.ai = sub nsw i64 %i.ah, %i.af                ; 3 uses
  %min.iters.check35 = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph23
  %n.vec37 = and i64 %i.ai, -4                    ; 3 uses
  %i.aj = add nsw i64 %n.vec37, %i.af
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 2 uses
  %i.ak = add i64 %index39, %i.af                 ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !80
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %wide.load40, ptr %i.ao, align 8, !tbaa !80
  store <2 x i64> %wide.load41, ptr %i.ap, align 8, !tbaa !80
  %index.next42 = add nuw i64 %index39, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.aq, label %middle.block43, label %vector.body38, !llvm.loop !103

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.ai, %n.vec37
  br i1 %cmp.n44, label %._crit_edge, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph23, %middle.block43
  %indvars.iv26.ph = phi i64 [ %i.af, %.lr.ph23 ], [ %i.aj, %middle.block43 ]
  br label %scalar.ph34

._crit_edge:                                      ; preds = %scalar.ph34, %middle.block43, %.loopexit.thread
  %i.ar = icmp sgt i32 %i.ab, 0
  br i1 %i.ar, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.as = sub nsw i32 %i.ab, %2
  store i32 %i.as, ptr %0, align 8, !tbaa !94
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %scalar.ph34 ], [ %indvars.iv26.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv26, %i.ag
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.av = load i64, ptr %i.au, align 8, !tbaa !80
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.at
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !80
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %i.ah
  br i1 %exitcond30.not, label %._crit_edge, label %scalar.ph34, !llvm.loop !104

_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !94
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !94     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !96   ; 5 uses
  %.not.i = icmp slt i32 %i.e, %i.c
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.j = icmp eq i32 %i.e, 0
  %.in.i.i = select i1 %i.j, ptr %i.g, ptr %i.i
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.l = icmp slt i32 %i.c, 4
  br i1 %i.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.e, 1073741824
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.e, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.c)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.o = zext nneg i32 %.0.i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = icmp eq ptr %i.k, null
  %i.r = add nuw nsw i64 %i.p, 8                  ; 2 uses
  br i1 %i.q, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.t = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.r, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !98
  %i.u = load i32, ptr %i.d, align 4, !tbaa !96
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !97
  %i.w = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97
  %i.ai = load i32, ptr %0, align 8, !tbaa !94
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !94
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  %i.ao = load i32, ptr %1, align 8, !tbaa !94
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE9MoveArrayEPmS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE18AddAlreadyReservedERKm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !94
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store i64 %i.a, ptr %i.g, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldImE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !94
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldImE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE6ResizeEiRKm(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96   ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13RepeatedFieldIfE3AddERKf:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  store i32 %.pre-phi, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIfE3AddEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113
  %i.d = icmp eq i32 %i.a, %i.c
  %i.e = add i32 %i.a, 1                          ; 2 uses
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.e)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = zext i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 %i.e, ptr %0, align 8, !tbaa !111
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE10RemoveLastEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE15ExtractSubrangeEiiPf(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %.not = icmp ne ptr %3, null
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = shl nsw i64 %i.e, 2
  %i.h = add i64 %i.g, %i.f
  %i.i = sub i64 %i.h, %i.a
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !tbaa !117
  %wide.load33 = load <4 x float>, ptr %i.k, align 4, !tbaa !117
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %wide.load, ptr %i.l, align 4, !tbaa !117
  store <4 x float> %wide.load33, ptr %i.m, align 4, !tbaa !117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.o = load float, ptr %gep.prol, align 4, !tbaa !117
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  store float %i.o, ptr %i.p, align 4, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !120

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load float, ptr %gep, align 4, !tbaa !117
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.s, ptr %i.t, align 4, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load float, ptr %gep.1, align 4, !tbaa !117
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.u, ptr %i.v, align 4, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load float, ptr %gep.2, align 4, !tbaa !117
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  store float %i.w, ptr %i.x, align 4, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load float, ptr %gep.3, align 4, !tbaa !117
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  store float %i.y, ptr %i.z, align 4, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !121

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !111   ; 4 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114 ; 4 uses
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = sext i32 %i.ab to i64                   ; 2 uses
  %i.ai = sub nsw i64 %i.ah, %i.af                ; 3 uses
  %min.iters.check35 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph23
  %n.vec37 = and i64 %i.ai, -8                    ; 3 uses
  %i.aj = add nsw i64 %n.vec37, %i.af
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 2 uses
  %i.ak = add i64 %index39, %i.af                 ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <4 x float>, ptr %i.am, align 4, !tbaa !117
  %wide.load41 = load <4 x float>, ptr %i.an, align 4, !tbaa !117
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %wide.load40, ptr %i.ao, align 4, !tbaa !117
  store <4 x float> %wide.load41, ptr %i.ap, align 4, !tbaa !117
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.aq, label %middle.block43, label %vector.body38, !llvm.loop !122

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.ai, %n.vec37
  br i1 %cmp.n44, label %._crit_edge, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph23, %middle.block43
  %indvars.iv26.ph = phi i64 [ %i.af, %.lr.ph23 ], [ %i.aj, %middle.block43 ]
  br label %scalar.ph34

._crit_edge:                                      ; preds = %scalar.ph34, %middle.block43, %.loopexit.thread
  %i.ar = icmp sgt i32 %i.ab, 0
  br i1 %i.ar, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.as = sub nsw i32 %i.ab, %2
  store i32 %i.as, ptr %0, align 8, !tbaa !111
  br label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %scalar.ph34 ], [ %indvars.iv26.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv26, %i.ag
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.av = load float, ptr %i.au, align 4, !tbaa !117
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.at
  store float %i.av, ptr %i.aw, align 4, !tbaa !117
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %i.ah
  br i1 %exitcond30.not, label %._crit_edge, label %scalar.ph34, !llvm.loop !123

_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c)
  %i.d = load i32, ptr %1, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = load i32, ptr %0, align 8, !tbaa !111
  %i.h = add nsw i32 %i.g, %i.d
  store i32 %i.h, ptr %0, align 8, !tbaa !111
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = load i32, ptr %1, align 8, !tbaa !111
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE9MoveArrayEPfS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE18AddAlreadyReservedERKf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !111
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store float %i.a, ptr %i.g, align 4, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIfE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !111
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIfE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE6ResizeEiRKf(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPffEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load float, ptr %2, align 4, !tbaa !117  ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.e, %1
  br i1 %.not6.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i ; 3 uses
  %i.k = shl nsw i64 %i.f, 2
  %i.l = shl nsw i64 %i.i, 2
  %i.m = add nsw i64 %i.k, -4
  %i.n = sub nsw i64 %i.m, %i.l                   ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !117
  store <4 x float> %broadcast.splat, ptr %i.t, align 4, !tbaa !117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader5

.lr.ph.i.i.i.preheader5:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader5, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader5 ] ; 2 uses
  store float %i.h, ptr %.07.i.i.i, align 4, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.g
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !125

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIfE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIfE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.26", align 16 ; 14 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13RepeatedFieldIdE3AddEv:bb.a
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !135
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = zext i32 %i.a to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = add i32 %i.a, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !131
  ret ptr %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE10RemoveLastEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !131
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE15ExtractSubrangeEiiPd(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %.not = icmp ne ptr %3, null
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %min.iters.check = icmp ult i32 %2, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = shl nsw i64 %i.e, 3
  %i.h = add i64 %i.g, %i.f
  %i.i = sub i64 %i.h, %i.a
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !137
  %wide.load33 = load <2 x double>, ptr %i.k, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x double> %wide.load, ptr %i.l, align 8, !tbaa !137
  store <2 x double> %wide.load33, ptr %i.m, align 8, !tbaa !137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.o = load double, ptr %gep.prol, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  store double %i.o, ptr %i.p, align 8, !tbaa !137
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load double, ptr %gep, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.s, ptr %i.t, align 8, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load double, ptr %gep.1, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.u, ptr %i.v, align 8, !tbaa !137
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load double, ptr %gep.2, align 8, !tbaa !137
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  store double %i.w, ptr %i.x, align 8, !tbaa !137
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load double, ptr %gep.3, align 8, !tbaa !137
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  store double %i.y, ptr %i.z, align 8, !tbaa !137
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !141

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIdE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !131   ; 4 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 4 uses
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = sext i32 %i.ab to i64                   ; 2 uses
  %i.ai = sub nsw i64 %i.ah, %i.af                ; 3 uses
  %min.iters.check35 = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph23
  %n.vec37 = and i64 %i.ai, -4                    ; 3 uses
  %i.aj = add nsw i64 %n.vec37, %i.af
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 2 uses
  %i.ak = add i64 %index39, %i.af                 ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x double>, ptr %i.am, align 8, !tbaa !137
  %wide.load41 = load <2 x double>, ptr %i.an, align 8, !tbaa !137
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %wide.load40, ptr %i.ao, align 8, !tbaa !137
  store <2 x double> %wide.load41, ptr %i.ap, align 8, !tbaa !137
  %index.next42 = add nuw i64 %index39, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.aq, label %middle.block43, label %vector.body38, !llvm.loop !142

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.ai, %n.vec37
  br i1 %cmp.n44, label %._crit_edge, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph23, %middle.block43
  %indvars.iv26.ph = phi i64 [ %i.af, %.lr.ph23 ], [ %i.aj, %middle.block43 ]
  br label %scalar.ph34

._crit_edge:                                      ; preds = %scalar.ph34, %middle.block43, %.loopexit.thread
  %i.ar = icmp sgt i32 %i.ab, 0
  br i1 %i.ar, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIdE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.as = sub nsw i32 %i.ab, %2
  store i32 %i.as, ptr %0, align 8, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIdE8TruncateEi.exit

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %scalar.ph34 ], [ %indvars.iv26.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv26, %i.ag
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.av = load double, ptr %i.au, align 8, !tbaa !137
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.at
  store double %i.av, ptr %i.aw, align 8, !tbaa !137
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %i.ah
  br i1 %exitcond30.not, label %._crit_edge, label %scalar.ph34, !llvm.loop !143

_ZN6google8protobuf13RepeatedFieldIdE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !131
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !131    ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !133  ; 5 uses
  %.not.i = icmp slt i32 %i.e, %i.c
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 3 uses
  %i.j = icmp eq i32 %i.e, 0
  %.in.i.i = select i1 %i.j, ptr %i.g, ptr %i.i
  %i.k = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.l = icmp slt i32 %i.c, 4
  br i1 %i.l, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.e, 1073741824
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %i.e, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.c)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.o = zext nneg i32 %.0.i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = icmp eq ptr %i.k, null
  %i.r = add nuw nsw i64 %i.p, 8                  ; 2 uses
  br i1 %i.q, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.t = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.r, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !135
  %i.u = load i32, ptr %i.d, align 4, !tbaa !133
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !134
  %i.w = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.ai = load i32, ptr %0, align 8, !tbaa !131
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !131
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  %i.ao = load i32, ptr %1, align 8, !tbaa !131
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE9MoveArrayEPdS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE18AddAlreadyReservedERKd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !131
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store double %i.a, ptr %i.g, align 8, !tbaa !137
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIdE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !131
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIdE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE6ResizeEiRKd(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !131
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPddEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !133  ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_4
