Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrUtils?download=true
inline.NumInlined: 1158
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen29propagateTagsFromPredecessorsERKNS0_10IrFunctionERKNS0_7IrBlockESt8functionIFhmEES7_IFvmhEE:bb.a
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.07487) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05188, i64 4 ; 2 uses
  %.not57 = icmp eq ptr %i.bg, %i.x
  br i1 %.not57, label %.lr.ph100, label %.split

.lr.ph100:                                        ; preds = %bb.h, %bb.g
  %.us-phi = phi i64 [ %.175.ph.us, %bb.g ], [ %.sroa.speculated, %bb.h ]
  %.us-phi.fr = freeze i64 %.us-phi               ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.k ; 4 uses
  %.not119 = icmp eq i64 %.us-phi.fr, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %.not119, label %.loopexit80, label %.lr.ph100.split.us

.lr.ph100.split.us:                               ; preds = %.lr.ph100, %..loopexit_crit_edge.us
  %.04999.us = phi ptr [ %i.ct, %..loopexit_crit_edge.us ], [ %i.w, %.lr.ph100 ] ; 2 uses
  %.05098.us = phi i1 [ %.1.us, %..loopexit_crit_edge.us ], [ true, %.lr.ph100 ] ; 2 uses
  %i.bq = load i32, ptr %.04999.us, align 4, !tbaa !76
  %i.br = load i8, ptr @_ZN5FFlag34LuauCodegenSkipDeadPredecessorTagsE, align 8, !tbaa !87, !range !91, !noundef !92
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = zext i32 %i.bq to i64                   ; 2 uses
  br i1 %i.bs, label %bb.i, label %.lr.ph.us

bb.i:                                             ; preds = %.lr.ph100.split.us
  %i.bu = load ptr, ptr %0, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw [36 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !35
  %i.bx = icmp eq i8 %i.bw, 5
  br i1 %i.bx, label %..loopexit_crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph100.split.us, %bb.i
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bt ; 2 uses
  br i1 %.05098.us, label %.lr.ph.split.us.us, label %.lr.ph.split.us108

.lr.ph.split.us108:                               ; preds = %.lr.ph.us, %bb.o
  %.089.us101 = phi i64 [ %i.cs, %bb.o ], [ 0, %.lr.ph.us ] ; 8 uses
  %exitcond = icmp eq i64 %.089.us101, 256
  br i1 %exitcond, label %.split91.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.us102

_ZNKSt6bitsetILm256EE4testEm.exit.us102:          ; preds = %.lr.ph.split.us108
  %i.ca = lshr i64 %.089.us101, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !99
  %i.cd = and i64 %.089.us101, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cc, %i.ce
  %.not79.us103 = icmp eq i64 %i.cf, 0
  br i1 %.not79.us103, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.us102
  %i.cg = load i8, ptr %i.bk, align 8, !tbaa !101, !range !91, !noundef !92
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ci = load i8, ptr %i.bl, align 1, !tbaa !105
  %i.cj = zext i8 %i.ci to i64
  %.not60.us104 = icmp samesign ult i64 %.089.us101, %i.cj
  br i1 %.not60.us104, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNKSt6bitsetILm256EE4testEm.exit.us102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.089.us101, ptr %i.e, align 8, !tbaa !99
  %i.ck = load ptr, ptr %i.bm, align 8, !tbaa !106
  %.not.i.i.us105 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.us105, label %.split94.us, label %_ZNKSt8functionIFhmEEclEm.exit.us106

_ZNKSt8functionIFhmEEclEm.exit.us106:             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !108
  %i.cm = call noundef zeroext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not61.us = icmp eq i8 %i.cm, -1
  br i1 %.not61.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8functionIFhmEEclEm.exit.us106
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !95
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.089.us101
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !44
  %.not62.us = icmp eq i8 %i.cm, %i.cp
  br i1 %.not62.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.089.us101, ptr %i.a, align 8, !tbaa !99
  store i8 -1, ptr %i.b, align 1, !tbaa !44
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !106
  %.not.i.i64.us = icmp eq ptr %i.cq, null
  br i1 %.not.i.i64.us, label %.split112.us, label %_ZNKSt8functionIFvmhEEclEmh.exit65.us

_ZNKSt8functionIFvmhEEclEmh.exit65.us:            ; preds = %bb.n
  %i.cr = load ptr, ptr %i.bp, align 8, !tbaa !111
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt8functionIFvmhEEclEmh.exit65.us, %bb.m, %_ZNKSt8functionIFhmEEclEm.exit.us106, %bb.k, %bb.j
  %i.cs = add nuw nsw i64 %.089.us101, 1          ; 2 uses
  %exitcond134.not = icmp eq i64 %i.cs, %.us-phi.fr
  br i1 %exitcond134.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us108, !llvm.loop !114

..loopexit_crit_edge.us:                          ; preds = %bb.o, %bb.s, %bb.i
  %.1.us = phi i1 [ %.05098.us, %bb.i ], [ false, %bb.s ], [ false, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.04999.us, i64 4 ; 2 uses
  %.not59.us = icmp eq ptr %i.ct, %i.x
  br i1 %.not59.us, label %.loopexit80, label %.lr.ph100.split.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.s
  %.089.us.us = phi i64 [ %i.dm, %bb.s ], [ 0, %.lr.ph.us ] ; 8 uses
  %exitcond135 = icmp eq i64 %.089.us.us, 256
  br i1 %exitcond135, label %.split91.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.us.us

_ZNKSt6bitsetILm256EE4testEm.exit.us.us:          ; preds = %.lr.ph.split.us.us
  %i.cu = lshr i64 %.089.us.us, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !99
  %i.cx = and i64 %.089.us.us, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not79.us.us = icmp eq i64 %i.cz, 0
  br i1 %.not79.us.us, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.us.us
  %i.da = load i8, ptr %i.bk, align 8, !tbaa !101, !range !91, !noundef !92
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dc = load i8, ptr %i.bl, align 1, !tbaa !105
  %i.dd = zext i8 %i.dc to i64
  %.not60.us.us = icmp samesign ult i64 %.089.us.us, %i.dd
  br i1 %.not60.us.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNKSt6bitsetILm256EE4testEm.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.089.us.us, ptr %i.e, align 8, !tbaa !99
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !106
  %.not.i.i.us.us = icmp eq ptr %i.de, null
  br i1 %.not.i.i.us.us, label %.split94.us, label %_ZNKSt8functionIFhmEEclEm.exit.us.us

_ZNKSt8functionIFhmEEclEm.exit.us.us:             ; preds = %bb.r
  %i.df = load ptr, ptr %i.bn, align 8, !tbaa !108
  %i.dg = call noundef zeroext i8 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !110 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dh = load ptr, ptr %i.bz, align 8, !tbaa !95
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.089.us.us
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.089.us.us, ptr %i.c, align 8, !tbaa !99
  store i8 %i.dj, ptr %i.d, align 1, !tbaa !44
  %i.dk = load ptr, ptr %i.bo, align 8, !tbaa !106
  %.not.i.i63.us.us = icmp eq ptr %i.dk, null
  br i1 %.not.i.i63.us.us, label %.split96.us, label %_ZNKSt8functionIFvmhEEclEmh.exit.us.us

_ZNKSt8functionIFvmhEEclEmh.exit.us.us:           ; preds = %_ZNKSt8functionIFhmEEclEm.exit.us.us
  %i.dl = load ptr, ptr %i.bp, align 8, !tbaa !111
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d), !inline_history !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFvmhEEclEmh.exit.us.us, %bb.q, %bb.p
  %i.dm = add nuw nsw i64 %.089.us.us, 1          ; 2 uses
  %exitcond136.not = icmp eq i64 %i.dm, %.us-phi.fr
  br i1 %exitcond136.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !114

.split91.us:                                      ; preds = %.lr.ph.split.us108, %.lr.ph.split.us.us
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef 256, i64 noundef 256) #20
  unreachable

.split94.us:                                      ; preds = %bb.l, %bb.r
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

.split96.us:                                      ; preds = %_ZNKSt8functionIFhmEEclEm.exit.us.us
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

.split112.us:                                     ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

.loopexit80:                                      ; preds = %.split, %bb.e, %..loopexit_crit_edge.us, %.lr.ph100, %bb.b, %bb.a
  ret void
}

declare { ptr, ptr } @_ZN4Luau7CodeGen12predecessorsERKNS0_7CfgInfoEj(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i16 9, 268) i16 @_ZN4Luau7CodeGen22tryGetLuauTagForBcTypeEhb(i8 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i8 %0, 127
  %spec.select = select i1 %1, i8 %i.a, i8 %0     ; 3 uses
  %i.b = icmp ult i8 %spec.select, 11
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %spec.select, -32
  %or.cond = icmp eq i8 %i.c, 64
  %2 = select i1 %or.cond, i16 265, i16 9
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %spec.select to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4Luau7CodeGen22tryGetLuauTagForBcTypeEhb, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.13.0 = phi i16 [ %switch.load, %switch.lookup ], [ %2, %bb.b ]
  ret i16 %.sroa.13.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43   ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 1
  br i1 %i.j, label %bb.f, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.f, align 4, !tbaa !44
  store i32 %i.k, ptr %i.g, align 4, !tbaa !44
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load i32, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !43
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !43
  %i.q = load i32, ptr %i.b, align 8, !tbaa !43
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !115

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !63

bb.h:                                             ; preds = %bb.g
  %i.t = zext i32 %i.e to i64
  %.idx16 = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx16, i1 false)
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %bb.j, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.f, align 4, !tbaa !44
  store i32 %i.v, ptr %i.g, align 4, !tbaa !44
  br label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15: ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #19 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !42    ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 2            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ah to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep27, align 4, !tbaa !44
  %wide.load28 = load <4 x i32>, ptr %i.av, align 4, !tbaa !44
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !44
  store <4 x i32> %wide.load28, ptr %i.aw, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !44
  store i32 %i.ay, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !117

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #18
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !42
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !48
  %.pre = load i32, ptr %i.b, align 8, !tbaa !43
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !42    ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %.not9.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau7CodeGen4IrOpEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE7reserveEj.exit
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bk ; 3 uses
  %i.bn = shl nuw nsw i64 %i.bg, 2
  %i.bo = shl nuw nsw i64 %i.bk, 2
  %i.bp = add nsw i64 %i.bn, -4
  %i.bq = sub nsw i64 %i.bp, %i.bo                ; 2 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bq, 44
  %i.bt = sub i64 %i.bi, %i.bj
  %diff.check31 = icmp ugt i64 %i.bt, -32
  %or.cond47 = select i1 %min.iters.check33, i1 true, i1 %diff.check31
  br i1 %or.cond47, label %.lr.ph.i.i.i.preheader48, label %vector.ph34
end_hunk_0
