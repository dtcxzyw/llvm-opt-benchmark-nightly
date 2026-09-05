Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rs?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7RSCoder6pnInitEv:bb.a

._crit_edge27:                                    ; preds = %.preheader20.i, %.lr.ph26.preheader, %_ZN7RSCoder6pnMultEPiS0_S0_.exit
  %i.ba = phi i32 [ %i.av, %_ZN7RSCoder6pnMultEPiS0_S0_.exit ], [ %i.av, %.lr.ph26.preheader ], [ %i.s, %.preheader20.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bb = sext i32 %i.ba to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bb
  br i1 %.not.not, label %bb.b, label %._crit_edge33, !llvm.loop !3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN7RSCoder6pnMultEPiS0_S0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(11273) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9220 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.preheader20:                                     ; preds = %.lr.ph
  %i.d = icmp sgt i32 %i.g, 0
  br i1 %i.d, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %.preheader20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 0, ptr %i.f, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.preheader20, !llvm.loop !0

._crit_edge:                                      ; preds = %.loopexit, %bb.a, %.preheader20
  ret void

bb.b:                                             ; preds = %.lr.ph26, %.loopexit
  %i.j = phi i32 [ %i.g, %.lr.ph26 ], [ %i.al, %.loopexit ] ; 2 uses
  %indvars.iv31 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next32, %.loopexit ] ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv31 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %.not = icmp ne i32 %i.l, 0
  %i.m = sext i32 %i.j to i64
  %i.n = icmp slt i64 %indvars.iv31, %i.m
  %or.cond = and i1 %.not, %i.n
  br i1 %or.cond, label %.lr.ph23.preheader, label %.loopexit

.lr.ph23.preheader:                               ; preds = %bb.b
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv31
  %i.o = trunc nuw nsw i64 %indvars.iv31 to i32
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %_ZN7RSCoder6gfMultEii.exit
  %indvars.iv28 = phi i64 [ 0, %.lr.ph23.preheader ], [ %indvars.iv.next29, %_ZN7RSCoder6gfMultEii.exit ] ; 3 uses
  %i.p = load i32, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 2 uses
  %i.s = icmp eq i32 %i.p, 0
  %i.t = icmp eq i32 %i.r, 0
  %or.cond.i = or i1 %i.s, %i.t
  br i1 %or.cond.i, label %_ZN7RSCoder6gfMultEii.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph23
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16
  br label %_ZN7RSCoder6gfMultEii.exit

_ZN7RSCoder6gfMultEii.exit:                       ; preds = %.lr.ph23, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph23 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv28 ; 2 uses
  %i.af = load i32, ptr %gep, align 4, !tbaa !16
  %i.ag = xor i32 %i.af, %i.ae
  store i32 %i.ag, ptr %gep, align 4, !tbaa !16
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.o
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next29, %i.aj
  br i1 %i.ak, label %.lr.ph23, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %_ZN7RSCoder6gfMultEii.exit, %bb.b
  %i.al = phi i32 [ %i.j, %bb.b ], [ %i.ah, %_ZN7RSCoder6gfMultEii.exit ] ; 2 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next32, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN7RSCoder6EncodeEPhiS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(11273) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9220 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 7 uses
  %.not28 = icmp slt i32 %i.c, 0
  br i1 %.not28, label %.preheader26, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nuw i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.f, i1 false), !tbaa !16
  br label %.preheader26

.preheader26:                                     ; preds = %.lr.ph.preheader, %bb.a
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph33, label %.preheader

.lr.ph33:                                         ; preds = %.preheader26
  %i.h = add i32 %i.c, -1                         ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = icmp sgt i32 %i.c, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 4 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !16
  %.fr43 = freeze i32 %i.n                        ; 2 uses
  %i.o = icmp eq i32 %.fr43, 0                    ; 2 uses
  %i.p = sext i32 %.fr43 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  br i1 %i.k, label %.lr.ph31.us.preheader, label %.lr.ph33.split

.lr.ph31.us.preheader:                            ; preds = %.lr.ph33
  %i.r = zext nneg i32 %i.h to i64                ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = add nsw i32 %i.c, -2
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = sub nsw i64 %i.s, %i.v
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.w
  %i.x = add nsw i64 %i.s, -4
  %i.y = sub nsw i64 %i.x, %i.v
  %scevgep52 = getelementptr i8, ptr %i.a, i64 %i.y
  %wide.trip.count59 = zext nneg i32 %2 to i64
  br label %.lr.ph31.us

.lr.ph31.us:                                      ; preds = %.lr.ph31.us.preheader, %_ZN7RSCoder6gfMultEii.exit.us
  %indvars.iv56 = phi i64 [ 0, %.lr.ph31.us.preheader ], [ %indvars.iv.next57, %_ZN7RSCoder6gfMultEii.exit.us ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv56
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !16  ; 2 uses
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = icmp eq i32 %i.ac, %i.ab
  %.fr.us = freeze i1 %i.ae
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.af ; 2 uses
  br i1 %.fr.us, label %._crit_edge.us.thread, label %.lr.ph31.split.us37

._crit_edge.us.thread:                            ; preds = %.lr.ph31.us
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep52, i64 %i.s, i1 false), !tbaa !16
  br label %_ZN7RSCoder6gfMultEii.exit.us

.lr.ph31.split.us37:                              ; preds = %.lr.ph31.us, %_ZN7RSCoder6gfMultEii.exit25.us35
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %_ZN7RSCoder6gfMultEii.exit25.us35 ], [ %i.r, %.lr.ph31.us ] ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv49 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv49
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN7RSCoder6gfMultEii.exit25.us35, label %bb.b

bb.b:                                             ; preds = %.lr.ph31.split.us37
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ar = add nsw i32 %i.aq, %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = xor i32 %i.au, %i.aj
  br label %_ZN7RSCoder6gfMultEii.exit25.us35

_ZN7RSCoder6gfMultEii.exit25.us35:                ; preds = %bb.b, %.lr.ph31.split.us37
  %i.aw = phi i32 [ %i.av, %bb.b ], [ %i.aj, %.lr.ph31.split.us37 ]
  store i32 %i.aw, ptr %i.ah, align 4, !tbaa !16
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, -1
  %i.ax = icmp sgt i64 %indvars.iv49, 1
  br i1 %i.ax, label %.lr.ph31.split.us37, label %._crit_edge.us, !llvm.loop !19

bb.c:                                             ; preds = %._crit_edge.us
  %i.ay = load i32, ptr %i.q, align 4, !tbaa !16
  %i.az = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ba = add nsw i32 %i.az, %i.ay
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  br label %_ZN7RSCoder6gfMultEii.exit.us

_ZN7RSCoder6gfMultEii.exit.us:                    ; preds = %._crit_edge.us.thread, %bb.c, %._crit_edge.us
  %i.be = phi i32 [ %i.bd, %bb.c ], [ 0, %._crit_edge.us ], [ 0, %._crit_edge.us.thread ]
  store i32 %i.be, ptr %i.a, align 16, !tbaa !16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.preheader, label %.lr.ph31.us, !llvm.loop !20

._crit_edge.us:                                   ; preds = %_ZN7RSCoder6gfMultEii.exit25.us35
  br i1 %i.o, label %_ZN7RSCoder6gfMultEii.exit.us, label %bb.c

.lr.ph33.split:                                   ; preds = %.lr.ph33
  br i1 %i.o, label %.lr.ph33.split.split.us, label %.lr.ph33.split.split.preheader

.lr.ph33.split.split.preheader:                   ; preds = %.lr.ph33.split
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph33.split.split

.lr.ph33.split.split.us:                          ; preds = %.lr.ph33.split
  store i32 0, ptr %i.a, align 16, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %_ZN7RSCoder6gfMultEii.exit, %_ZN7RSCoder6gfMultEii.exit.us, %.lr.ph33.split.split.us, %.preheader26
  %i.bf = icmp sgt i32 %i.c, 0
  br i1 %i.bf, label %.lr.ph42, label %._crit_edge

.lr.ph33.split.split:                             ; preds = %.lr.ph33.split.split.preheader, %_ZN7RSCoder6gfMultEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph33.split.split.preheader ], [ %indvars.iv.next, %_ZN7RSCoder6gfMultEii.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = load i32, ptr %i.j, align 4, !tbaa !16  ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.bi
  br i1 %i.bk, label %_ZN7RSCoder6gfMultEii.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph33.split.split
  %i.bl = xor i32 %i.bj, %i.bi
  %i.bm = load i32, ptr %i.q, align 4, !tbaa !16
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !16
  br label %_ZN7RSCoder6gfMultEii.exit

_ZN7RSCoder6gfMultEii.exit:                       ; preds = %.lr.ph33.split.split, %bb.d
  %i.bu = phi i32 [ %i.bt, %bb.d ], [ 0, %.lr.ph33.split.split ]
  store i32 %i.bu, ptr %i.a, align 16, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph33.split.split, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph42, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void

.lr.ph42:                                         ; preds = %.preheader, %.lr.ph42
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %.lr.ph42 ], [ 0, %.preheader ] ; 3 uses
  %i.bv = phi i32 [ %i.ce, %.lr.ph42 ], [ %i.c, %.preheader ]
  %i.bw = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %i.bv, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !16
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv61
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !18
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next62, %i.cf
  br i1 %i.cg, label %.lr.ph42, label %._crit_edge, !llvm.loop !21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN7RSCoder6DecodeEPhiPii(ptr nofree noundef nonnull align 4 dereferenceable(11273) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  %i.b = alloca [512 x i32], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9220 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader96.lr.ph, label %._crit_edge105.thread

.preheader96.lr.ph:                               ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 4 uses
  br i1 %i.f, label %.preheader96.us.preheader, label %._crit_edge105.thread

.preheader96.us.preheader:                        ; preds = %.preheader96.lr.ph
  %wide.trip.count154 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod232 = trunc i32 %2 to i1
  br label %.preheader96.us

.preheader96.us:                                  ; preds = %.preheader96.us.preheader, %._crit_edge.us
  %indvars.iv152 = phi i64 [ 0, %.preheader96.us.preheader ], [ %indvars.iv.next153, %._crit_edge.us ] ; 3 uses
  %.074103.us = phi i1 [ true, %.preheader96.us.preheader ], [ %spec.select.us, %._crit_edge.us ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv152
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %.fr144 = freeze i32 %i.n                       ; 2 uses
  %i.o = icmp eq i32 %.fr144, 0
  %i.p = sext i32 %.fr144 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p ; 3 uses
  br i1 %i.o, label %_ZN7RSCoder6gfMultEii.exit.us.us.preheader, label %.lr.ph.split.us111.preheader

.lr.ph.split.us111.preheader:                     ; preds = %.preheader96.us
  br i1 %i.k, label %.lr.ph.split.us111.epil.preheader, label %.lr.ph.split.us111

_ZN7RSCoder6gfMultEii.exit.us.us.preheader:       ; preds = %.preheader96.us
  %i.r = load i8, ptr %i.j, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i32
  br label %._crit_edge.us

.lr.ph.split.us111:                               ; preds = %.lr.ph.split.us111.preheader, %_ZN7RSCoder6gfMultEii.exit.us109.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN7RSCoder6gfMultEii.exit.us109.1 ], [ 0, %.lr.ph.split.us111.preheader ] ; 3 uses
  %.07298.us = phi i32 [ %i.av, %_ZN7RSCoder6gfMultEii.exit.us109.1 ], [ 0, %.lr.ph.split.us111.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %_ZN7RSCoder6gfMultEii.exit.us109.1 ], [ 0, %.lr.ph.split.us111.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = icmp eq i32 %.07298.us, 0
  br i1 %i.w, label %_ZN7RSCoder6gfMultEii.exit.us109, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us111
  %i.x = load i32, ptr %i.q, align 4, !tbaa !16
  %i.y = sext i32 %.07298.us to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = add nsw i32 %i.aa, %i.x
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = xor i32 %i.ae, %i.v
  br label %_ZN7RSCoder6gfMultEii.exit.us109

_ZN7RSCoder6gfMultEii.exit.us109:                 ; preds = %bb.b, %.lr.ph.split.us111
  %i.ag = phi i32 [ %i.af, %bb.b ], [ %i.v, %.lr.ph.split.us111 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %_ZN7RSCoder6gfMultEii.exit.us109.1, label %bb.c

bb.c:                                             ; preds = %_ZN7RSCoder6gfMultEii.exit.us109
  %i.am = load i32, ptr %i.q, align 4, !tbaa !16
  %i.an = sext i32 %i.ag to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = xor i32 %i.at, %i.ak
  br label %_ZN7RSCoder6gfMultEii.exit.us109.1

_ZN7RSCoder6gfMultEii.exit.us109.1:               ; preds = %bb.c, %_ZN7RSCoder6gfMultEii.exit.us109
  %i.av = phi i32 [ %i.au, %bb.c ], [ %i.ak, %_ZN7RSCoder6gfMultEii.exit.us109 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us111, !llvm.loop !22

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %_ZN7RSCoder6gfMultEii.exit.us109.1
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.lr.ph.split.us111.epil.preheader

.lr.ph.split.us111.epil.preheader:                ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us111.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us111.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.loopexit.unr-lcssa ]
  %.07298.us.epil.init = phi i32 [ 0, %.lr.ph.split.us111.preheader ], [ %i.av, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = icmp eq i32 %.07298.us.epil.init, 0
  br i1 %i.az, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us111.epil.preheader
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !16
  %i.bb = sext i32 %.07298.us.epil.init to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, %i.ba
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = xor i32 %i.bh, %i.ay
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit.unr-lcssa, %bb.d, %.lr.ph.split.us111.epil.preheader, %_ZN7RSCoder6gfMultEii.exit.us.us.preheader
  %.us-phi.us = phi i32 [ %i.s, %_ZN7RSCoder6gfMultEii.exit.us.us.preheader ], [ %i.av, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.bi, %bb.d ], [ %i.ay, %.lr.ph.split.us111.epil.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv152
  store i32 %.us-phi.us, ptr %i.bj, align 4, !tbaa !16
  %.not81.us = icmp eq i32 %.us-phi.us, 0
  %spec.select.us = select i1 %.not81.us, i1 %.074103.us, i1 false ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge105, label %.preheader96.us, !llvm.loop !23

end_hunk_0
