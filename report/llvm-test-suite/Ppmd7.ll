inline.NumInlined: 31
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CPpmd_State = type { i8, i8, i16, i16 }

@PPMD7_kExpEscape = dso_local local_unnamed_addr constant [16 x i8] c"\19\0E\09\07\05\05\04\04\04\03\03\03\02\02\02\02", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @Ppmd7_Construct(ptr noundef writeonly captures(none) initializes((64, 72)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.03138 = phi i32 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 6 uses
  %i.d = icmp samesign ugt i64 %indvars.iv, 11
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = lshr i32 %i.e, 2
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = select i1 %i.d, i32 4, i32 %i.g          ; 11 uses
  %i.i = trunc i64 %indvars.iv to i8              ; 7 uses
  %min.iters.check = icmp samesign ult i32 %i.h, 8
  %i.j = sub nsw i32 0, %i.h
  %i.k = icmp ugt i32 %.03138, %i.j
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp samesign ult i32 %i.h, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.h, 24
  %n.vec = and i32 %i.h, 2147483616               ; 4 uses
  %i.l = add i32 %.03138, %n.vec                  ; 2 uses
  %i.m = and i32 %i.h, 31
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add i32 %.03138, %index
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.p, align 1, !tbaa !15
  store <16 x i8> %broadcast.splat, ptr %i.q, align 1, !tbaa !15
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.r = icmp eq i32 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i32 %i.h, 2147483640             ; 3 uses
  %i.s = add i32 %.03138, %n.vec56                ; 2 uses
  %i.t = and i32 %i.h, 7
  %broadcast.splatinsert57 = insertelement <8 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat58 = shufflevector <8 x i8> %broadcast.splatinsert57, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %i.u = add i32 %.03138, %index59
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  store <8 x i8> %broadcast.splat58, ptr %i.w, align 1, !tbaa !15
  %index.next60 = add nuw i32 %index59, 8         ; 2 uses
  %i.x = icmp eq i32 %index.next60, %n.vec56
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i32 %i.h, %n.vec56
  br i1 %cmp.n61, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.132.ph = phi i32 [ %.03138, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %i.h, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %i.y = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.132.prol = phi i32 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.132.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.z = add i32 %.132.prol, 1                    ; 3 uses
  %i.aa = zext i32 %.132.prol to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  store i8 %i.i, ptr %i.ab, align 1, !tbaa !15
  %i.ac = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa65.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.132.unr = phi i32 [ %.132.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = icmp ult i32 %i.y, 3
  br i1 %i.ad, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.132 = phi i32 [ %i.an, %vec.epilog.scalar.ph ], [ %.132.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.aq, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ae = add i32 %.132, 1
  %i.af = zext i32 %.132 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af
  store i8 %i.i, ptr %i.ag, align 1, !tbaa !15
  %i.ah = add i32 %.132, 2
  %i.ai = zext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  store i8 %i.i, ptr %i.aj, align 1, !tbaa !15
  %i.ak = add i32 %.132, 3
  %i.al = zext i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  store i8 %i.i, ptr %i.am, align 1, !tbaa !15
  %i.an = add i32 %.132, 4                        ; 2 uses
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
  store i8 %i.i, ptr %i.ap, align 1, !tbaa !15
  %i.aq = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !24

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.s, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa65.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.an, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ar = trunc i32 %.lcssa to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %.lr.ph, label %iter.check, !llvm.loop !25

.lr.ph:                                           ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 684
  store i8 0, ptr %i.at, align 4, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 685
  store i8 2, ptr %i.au, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 686
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.av, i8 4, i64 9, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 695
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.aw, i8 6, i64 245, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 3 uses
  store i8 0, ptr %i.ax, align 4, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 429
  store i8 1, ptr %i.ay, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 430
  store i8 2, ptr %i.az, align 2, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv49 = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next50.1, %bb.c ] ; 3 uses
  %.03042 = phi i32 [ 3, %.lr.ph ], [ %.1.1, %bb.c ] ; 3 uses
  %.241 = phi i32 [ 1, %.lr.ph ], [ %.3.1, %bb.c ]
  %i.ba = trunc i32 %.03042 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv49
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !15
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 256
  br i1 %exitcond52.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = add i32 %.241, -1                       ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = zext i1 %i.bd to i32
  %.1 = add i32 %.03042, %i.be                    ; 3 uses
  %i.bf = add i32 %.03042, -1
  %.3 = select i1 %i.bd, i32 %i.bf, i32 %i.bc
  %i.bg = trunc i32 %.1 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next50
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %i.bi = add i32 %.3, -1                         ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  %i.bk = add i32 %.1, -1
  %.3.1 = select i1 %i.bj, i32 %i.bk, i32 %i.bi
  %i.bl = zext i1 %i.bj to i32
  %.1.1 = add i32 %.1, %i.bl
  %indvars.iv.next50.1 = add nuw nsw i64 %indvars.iv49, 2
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1004
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bn, i8 8, i64 192, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd7_Free(ptr noundef captures(none) initializes((52, 56)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !28
  store ptr null, ptr %i.c, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Ppmd7_Alloc(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not = icmp eq i32 %i.e, %1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void %i.g(ptr noundef %2, ptr noundef %i.b) #8, !inline_history !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.i = and i32 %1, 3
  %i.j = sub nuw nsw i32 4, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = load ptr, ptr %2, align 8, !tbaa !31
  %i.m = and i32 %1, -4
  %i.n = add i32 %i.m, 16
  %i.o = zext i32 %i.n to i64
  %i.p = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.o) #8 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.h, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd7_Init(ptr noundef captures(none) initializes((0, 28), (32, 40), (44, 52), (56, 60), (72, 104), (276, 428)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  tail call fastcc void @RestartModel(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1198
  store i8 7, ptr %i.c, align 2, !tbaa !33
  store i16 0, ptr %i.b, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1199
  store i8 64, ptr %i.d, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@AllocUnitsRare:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15  ; 2 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = zext i8 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %.088.lcssa.i, i64 %i.dx ; 2 uses
  %i.dz = xor i32 %i.dw, -1
  %i.ea = add nsw i32 %.087.lcssa.i, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !4
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = sub i64 %i.ee, %i.bx
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !4
  br label %._crit_edge118._crit_edge.i

._crit_edge118._crit_edge.i:                      ; preds = %._crit_edge118.i, %bb.i
  %.pre-phi.i = phi i64 [ %i.dt, %bb.i ], [ %i.do, %._crit_edge118.i ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.pre-phi.i ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  store i32 %i.ei, ptr %.088.lcssa.i, align 4, !tbaa !4
  %i.ej = ptrtoint ptr %.088.lcssa.i to i64
  %i.ek = sub i64 %i.ej, %i.bx
  %i.el = trunc i64 %i.ek to i32
  store i32 %i.el, ptr %i.eh, align 4, !tbaa !4
  %.not96.i = icmp eq i32 %i.cc, %i.h
  br i1 %.not96.i, label %GlueFreeBlocks.exit, label %bb.h, !llvm.loop !91

GlueFreeBlocks.exit:                              ; preds = %._crit_edge118._crit_edge.i, %bb.g, %._crit_edge113.i
  %i.em = zext nneg i32 %1 to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %GlueFreeBlocks.exit
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  store i32 %i.er, ptr %i.en, align 4, !tbaa !4
  br label %bb.p

bb.k:                                             ; preds = %GlueFreeBlocks.exit, %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.et = add nuw nsw i32 %1, 1                   ; 2 uses
  %i.eu = icmp eq i32 %i.et, 38
  br i1 %i.eu, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ev = add i32 %i.fr, 1                        ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 38
  br i1 %i.ew, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ey = zext nneg i32 %1 to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 12               ; 2 uses
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !38
  %i.fe = add i32 %i.fd, -1
  store i32 %i.fe, ptr %i.a, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !37 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = icmp ult i32 %i.fc, %i.fm
  br i1 %i.fn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.fo = zext nneg i32 %i.fc to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.fg, i64 %i.fp ; 2 uses
  store ptr %i.fq, ptr %i.ff, align 8, !tbaa !37
  br label %bb.p

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.fr = phi i32 [ %i.ev, %bb.l ], [ %i.et, %bb.k ] ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 4 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.l, label %bb.n, !llvm.loop !92

bb.n:                                             ; preds = %.lr.ph
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !8
  %i.fz = zext i32 %i.fu to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  store i32 %i.gb, ptr %i.fw, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fs
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  %i.gf = zext i8 %i.ge to i32
  %i.gg = zext nneg i32 %1 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = sub nsw i32 %i.gf, %i.gj                ; 3 uses
  %i.gl = mul nuw nsw i32 %i.gj, 12               ; 3 uses
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.gp = add nsw i32 %i.gk, -1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i64                    ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = zext i8 %i.gv to i32
  %.not.i28 = icmp eq i32 %i.gk, %i.gw
  br i1 %.not.i28, label %.SplitBlock.exit_crit_edge, label %bb.o

.SplitBlock.exit_crit_edge:                       ; preds = %bb.n
  %.pre = add i32 %i.gl, %i.fu
  br label %SplitBlock.exit

bb.o:                                             ; preds = %bb.n
  %i.gx = add nuw nsw i64 %i.gt, 4294967295
  %i.gy = and i64 %i.gx, 4294967295               ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = mul nuw nsw i32 %i.hb, 12               ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hd
  %i.hf = xor i32 %i.hb, -1
  %i.hg = add nsw i32 %i.gk, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  store i32 %i.hj, ptr %i.he, align 4, !tbaa !4
  %i.hk = add i32 %i.gl, %i.fu                    ; 2 uses
  %i.hl = add i32 %i.hk, %i.hc
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !4
  br label %SplitBlock.exit

SplitBlock.exit:                                  ; preds = %.SplitBlock.exit_crit_edge, %bb.o
  %.pre-phi = phi i32 [ %.pre, %.SplitBlock.exit_crit_edge ], [ %i.hk, %bb.o ]
  %.pre-phi.i29 = phi i64 [ %i.gt, %.SplitBlock.exit_crit_edge ], [ %i.gy, %bb.o ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.pre-phi.i29 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  store i32 %i.hn, ptr %i.gn, align 4, !tbaa !4
  store i32 %.pre-phi, ptr %i.hm, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %._crit_edge, %SplitBlock.exit, %bb.j
  %.0 = phi ptr [ %i.eq, %bb.j ], [ %i.ga, %SplitBlock.exit ], [ %i.fq, %bb.m ], [ null, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 64}
!9 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !5, i64 104, !6, i64 108, !6, i64 146, !6, i64 276, !6, i64 428, !6, i64 684, !6, i64 940, !13, i64 1196, !6, i64 1200, !6, i64 2800}
!10 = !{!"p1 _ZTS15CPpmd7_Context_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"", !14, i64 0, !6, i64 2, !6, i64 3}
!14 = !{!"short", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 8, i32 24}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !17, !18}
!25 = distinct !{!25, !17}
!26 = !{!27, !11, i64 8}
!27 = !{!"", !11, i64 0, !11, i64 8}
!28 = !{!9, !5, i64 52}
!29 = !{ptr @Ppmd7_Free}
!30 = !{!9, !5, i64 104}
!31 = !{!27, !11, i64 0}
!32 = !{!9, !5, i64 36}
!33 = !{!9, !6, i64 1198}
!34 = !{!9, !14, i64 1196}
!35 = !{!9, !6, i64 1199}
!36 = !{!9, !12, i64 88}
!37 = !{!9, !12, i64 96}
!38 = !{!9, !5, i64 56}
!39 = !{!9, !5, i64 24}
!40 = !{!9, !5, i64 48}
!41 = !{!9, !5, i64 44}
!42 = !{!9, !5, i64 32}
!43 = !{!9, !12, i64 80}
!44 = !{!9, !10, i64 8}
!45 = !{!9, !10, i64 0}
!46 = !{!47, !5, i64 8}
!47 = !{!"CPpmd7_Context_", !14, i64 0, !14, i64 2, !5, i64 4, !5, i64 8}
!48 = !{!47, !14, i64 0}
!49 = !{!47, !14, i64 2}
!50 = !{!9, !11, i64 16}
!51 = !{!9, !12, i64 72}
!52 = !{!47, !5, i64 4}
!53 = !{!54, !6, i64 0}
!54 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !14, i64 4}
!55 = !{!54, !6, i64 1}
!56 = distinct !{!56, !17}
!57 = !{!14, !14, i64 0}
!58 = distinct !{!58, !17}
!59 = !{!13, !6, i64 2}
!60 = !{!13, !14, i64 0}
!61 = !{!13, !6, i64 3}
!62 = distinct !{!62, !17}
!63 = !{!9, !5, i64 40}
!64 = !{i64 0, i64 1, !15, i64 1, i64 1, !15, i64 2, i64 2, !57, i64 4, i64 2, !57}
!65 = !{!54, !14, i64 2}
!66 = !{!54, !14, i64 4}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = !{!9, !5, i64 28}
!76 = distinct !{!76, !17}
!77 = !{!11, !11, i64 0}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = !{!82, !5, i64 4}
!82 = !{!"CPpmd7_Node_", !14, i64 0, !14, i64 2, !5, i64 4, !5, i64 8}
!83 = !{!82, !5, i64 8}
!84 = !{!82, !14, i64 0}
!85 = !{!82, !14, i64 2}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
end_hunk_1
