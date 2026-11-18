Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv_dsp?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SharpYuvUpdateY = hidden local_unnamed_addr global ptr null, align 8
@SharpYuvUpdateRGB = hidden local_unnamed_addr global ptr null, align 8
@SharpYuvFilterRow = hidden local_unnamed_addr global ptr null, align 8
@SharpYuvGetCPUInfo = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @SharpYuvInitDsp() local_unnamed_addr #0 {
bb.a:
  store ptr @SharpYuvUpdateY_C, ptr @SharpYuvUpdateY, align 8, !tbaa !14
  store ptr @SharpYuvUpdateRGB_C, ptr @SharpYuvUpdateRGB, align 8, !tbaa !14
  store ptr @SharpYuvFilterRow_C, ptr @SharpYuvFilterRow, align 8, !tbaa !14
  %i.a = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %i.a(i32 noundef 0) #5
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @InitSharpYuvSSE2() #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @SharpYuvUpdateY_C(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %notmask = shl nsw i32 -1, %4
  %i.a = xor i32 %notmask, -1                     ; 2 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  %bound0 = icmp ult ptr %2, %i.e
  %bound0.a = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %1, i64 %i.c
  %bound026 = icmp ult ptr %2, %5
  %bound127 = icmp ult ptr %1, %i.d
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  br i1 %conflict.rdx, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi29 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !tbaa !9, !alias.scope !21
  %wide.load30 = load <2 x i16>, ptr %i.g, align 2, !tbaa !9, !alias.scope !21
  %i.h = zext <2 x i16> %wide.load to <2 x i32>
  %i.i = zext <2 x i16> %wide.load30 to <2 x i32>
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %wide.load31 = load <2 x i16>, ptr %i.j, align 2, !tbaa !9, !alias.scope !22
  %wide.load32 = load <2 x i16>, ptr %i.k, align 2, !tbaa !9, !alias.scope !22
  %i.l = zext <2 x i16> %wide.load31 to <2 x i32>
  %i.m = zext <2 x i16> %wide.load32 to <2 x i32>
  %i.n = sub nsw <2 x i32> %i.h, %i.l             ; 2 uses
  %i.o = sub nsw <2 x i32> %i.i, %i.m             ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %wide.load33 = load <2 x i16>, ptr %i.p, align 2, !tbaa !9, !alias.scope !23, !noalias !24
  %wide.load34 = load <2 x i16>, ptr %i.q, align 2, !tbaa !9, !alias.scope !23, !noalias !24
  %i.r = zext <2 x i16> %wide.load33 to <2 x i32>
  %i.s = zext <2 x i16> %wide.load34 to <2 x i32>
  %i.t = add nsw <2 x i32> %i.n, %i.r             ; 2 uses
  %i.u = add nsw <2 x i32> %i.o, %i.s             ; 2 uses
  %i.v = icmp slt <2 x i32> %i.t, zeroinitializer
  %i.w = icmp slt <2 x i32> %i.u, zeroinitializer
  %i.x = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.t, <2 x i32> %broadcast.splat)
  %i.y = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.u, <2 x i32> %broadcast.splat)
  %i.z = trunc <2 x i32> %i.x to <2 x i16>
  %i.aa = trunc <2 x i32> %i.y to <2 x i16>
  %i.ab = select <2 x i1> %i.v, <2 x i16> zeroinitializer, <2 x i16> %i.z
  %i.ac = select <2 x i1> %i.w, <2 x i16> zeroinitializer, <2 x i16> %i.aa
  store <2 x i16> %i.ab, ptr %i.p, align 2, !tbaa !9, !alias.scope !23, !noalias !24
  store <2 x i16> %i.ac, ptr %i.q, align 2, !tbaa !9, !alias.scope !23, !noalias !24
  %i.ad = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.n, i1 true)
  %i.ae = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.o, i1 true)
  %i.af = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.ag = zext nneg <2 x i32> %i.ae to <2 x i64>
  %i.ah = add <2 x i64> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i64> %vec.phi29, %i.ag         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader35 ] ; 4 uses
  %.019 = phi i64 [ %i.bc, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader35 ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !9
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !9
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.ar, %i.au                ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.av, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.ay = trunc i32 %i.ax to i16
  %i.az = select i1 %i.aw, i16 0, i16 %i.ay
  store i16 %i.az, ptr %i.as, align 2, !tbaa !9
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add i64 %.019, %i.bb                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %middle.block ], [ %i.bc, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvUpdateRGB_C(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 9 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound0.a = icmp ult ptr %0, %i.c
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %1, i64 %i.b
  %bound016 = icmp ult ptr %2, %4
  %bound117 = icmp ult ptr %1, %i.c
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %found.conflict, %found.conflict18
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i32 %3, 16
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !tbaa !9, !alias.scope !32
  %wide.load20 = load <8 x i16>, ptr %i.g, align 2, !tbaa !9, !alias.scope !32
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load21 = load <8 x i16>, ptr %i.h, align 2, !tbaa !9, !alias.scope !33
  %wide.load22 = load <8 x i16>, ptr %i.i, align 2, !tbaa !9, !alias.scope !33
  %i.j = sub <8 x i16> %wide.load, %wide.load21
  %i.k = sub <8 x i16> %wide.load20, %wide.load22
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load23 = load <8 x i16>, ptr %i.l, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  %wide.load24 = load <8 x i16>, ptr %i.m, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  %i.n = add <8 x i16> %i.j, %wide.load23
  %i.o = add <8 x i16> %i.k, %wide.load24
  store <8 x i16> %i.n, ptr %i.l, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  store <8 x i16> %i.o, ptr %i.m, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index26
  %wide.load27 = load <4 x i16>, ptr %i.q, align 2, !tbaa !9, !alias.scope !32
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index26
  %wide.load28 = load <4 x i16>, ptr %i.r, align 2, !tbaa !9, !alias.scope !33
  %i.s = sub <4 x i16> %wide.load27, %wide.load28
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index26 ; 2 uses
  %wide.load29 = load <4 x i16>, ptr %i.t, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  %i.u = add <4 x i16> %i.s, %wide.load29
  store <4 x i16> %i.u, ptr %i.t, align 2, !tbaa !9, !alias.scope !34, !noalias !35
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %n.vec25, %wide.trip.count
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.x = load i16, ptr %i.w, align 2, !tbaa !9
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9
  %i.aa = sub i16 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !9
  %i.ad = add i16 %i.aa, %i.ac
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ae = add nsw i64 %wide.trip.count, -1
  %i.af = icmp eq i64 %indvars.iv.ph, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !9
  %i.ak = sub i16 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !9
  %i.an = add i16 %i.ak, %i.am
  store i16 %i.an, ptr %i.al, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9
  %i.as = sub i16 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !9
  %i.av = add i16 %i.as, %i.au
  store i16 %i.av, ptr %i.at, align 2, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvFilterRow_C(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %notmask = shl nsw i32 -1, %5
  %i.a = xor i32 %notmask, -1                     ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.d = getelementptr i8, ptr %4, i64 %i.c       ; 3 uses
  %i.e = shl nuw nsw i64 %wide.trip.count, 1
  %i.f = add nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %bound0 = icmp ult ptr %4, %i.g
  %bound0.a = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %6 = getelementptr i8, ptr %1, i64 %i.f
  %bound043 = icmp ult ptr %4, %6
  %bound144 = icmp ult ptr %1, %i.d
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %7 = getelementptr i8, ptr %3, i64 %i.c
  %bound046 = icmp ult ptr %4, %7
  %bound147 = icmp ult ptr %3, %i.d
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.h
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %next.gep50 = getelementptr i8, ptr %1, i64 %i.k ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !9, !alias.scope !44
  %i.l = sext <4 x i16> %wide.load to <4 x i32>   ; 2 uses
  %i.m = mul nsw <4 x i32> %i.l, splat (i32 9)
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load51 = load <4 x i16>, ptr %i.n, align 2, !tbaa !9, !alias.scope !44
  %i.o = sext <4 x i16> %wide.load51 to <4 x i32> ; 2 uses
  %wide.load52 = load <4 x i16>, ptr %next.gep50, align 2, !tbaa !9, !alias.scope !45
  %i.p = sext <4 x i16> %wide.load52 to <4 x i32> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %next.gep50, i64 2
  %wide.load53 = load <4 x i16>, ptr %i.q, align 2, !tbaa !9, !alias.scope !45
  %i.r = sext <4 x i16> %wide.load53 to <4 x i32> ; 2 uses
  %i.s = add nsw <4 x i32> %i.p, %i.o
  %i.t = mul nsw <4 x i32> %i.s, splat (i32 3)
  %i.u = add nsw <4 x i32> %i.m, splat (i32 8)
  %i.v = add nsw <4 x i32> %i.u, %i.r
  %i.w = add nsw <4 x i32> %i.v, %i.t
  %i.x = ashr <4 x i32> %i.w, splat (i32 4)
  %i.y = mul nsw <4 x i32> %i.o, splat (i32 9)
  %i.z = add nsw <4 x i32> %i.r, %i.l
  %i.aa = mul nsw <4 x i32> %i.z, splat (i32 3)
  %i.ab = add nsw <4 x i32> %i.y, splat (i32 8)
  %i.ac = add nsw <4 x i32> %i.ab, %i.p
  %i.ad = add nsw <4 x i32> %i.ac, %i.aa
  %i.ae = ashr <4 x i32> %i.ad, splat (i32 4)
  %i.af = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.af
  %wide.vec = load <8 x i16>, ptr %i.ag, align 2, !tbaa !9, !alias.scope !46
  %i.ah = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ai = bitcast <8 x i16> %i.ah to <4 x i32>
  %i.aj = bitcast <8 x i16> %i.ah to <4 x i32>
  %i.ak = and <4 x i32> %i.aj, splat (i32 65535)
  %i.al = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.am = add nsw <4 x i32> %i.x, %i.ak           ; 2 uses
  %i.an = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.am, <4 x i32> %broadcast.splat)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.af
  %i.ap = add nsw <4 x i32> %i.ae, %i.al          ; 2 uses
  %i.aq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ap, <4 x i32> %broadcast.splat)
  %i.ar = shufflevector <4 x i32> %i.am, <4 x i32> %i.ap, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.as = icmp slt <8 x i32> %i.ar, zeroinitializer
  %i.at = shufflevector <4 x i32> %i.an, <4 x i32> %i.aq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.au = trunc <8 x i32> %i.at to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.as, <8 x i16> zeroinitializer, <8 x i16> %i.au
  store <8 x i16> %interleaved.vec, ptr %i.ao, align 2, !tbaa !9, !alias.scope !47, !noalias !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.031.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02530.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 2 uses
  %.031 = phi ptr [ %i.az, %.lr.ph ], [ %.031.ph, %.lr.ph.preheader57 ] ; 2 uses
  %.02530 = phi ptr [ %i.be, %.lr.ph ], [ %.02530.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.aw = load i16, ptr %.031, align 2, !tbaa !9
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = mul nsw i32 %i.ax, 9
  %i.az = getelementptr inbounds nuw i8, ptr %.031, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !9
  %i.bb = sext i16 %i.ba to i32                   ; 2 uses
  %i.bc = load i16, ptr %.02530, align 2, !tbaa !9
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02530, i64 2 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !9
  %i.bg = sext i16 %i.bf to i32                   ; 2 uses
  %reass.add = add nsw i32 %i.bd, %i.bb
  %reass.mul = mul nsw i32 %reass.add, 3
  %i.bh = add nsw i32 %i.ay, 8
  %i.bi = add nsw i32 %i.bh, %i.bg
  %i.bj = add nsw i32 %i.bi, %reass.mul
  %i.bk = ashr i32 %i.bj, 4
  %i.bl = mul nsw i32 %i.bb, 9
  %reass.add27 = add nsw i32 %i.bg, %i.ax
  %reass.mul28 = mul nsw i32 %reass.add27, 3
  %i.bm = add nsw i32 %i.bl, 8
  %i.bn = add nsw i32 %i.bm, %i.bd
  %i.bo = add nsw i32 %i.bn, %reass.mul28
  %i.bp = ashr i32 %i.bo, 4
  %i.bq = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !9
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bk, %i.bt                ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.bu, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.bx = trunc i32 %i.bw to i16
  %i.by = select i1 %i.bv, i16 0, i16 %i.bx
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bq
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !9
  %i.ca = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !9
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nsw i32 %i.bp, %i.cd                ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ce, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = select i1 %i.cf, i16 0, i16 %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ca
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

declare void @InitSharpYuvSSE2() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = !{!16}
!22 = !{!17}
!23 = !{!18}
!24 = !{!16, !17}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11, !12}
!31 = distinct !{!31, !10, !11}
!32 = !{!26}
!33 = !{!27}
end_hunk_0
