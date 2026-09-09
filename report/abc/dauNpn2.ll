Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauNpn2?download=true
inline.NumInlined: 223
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@.str = private unnamed_addr constant [38 x i8] c"~((~~d&~(~~b&c))^(~(~a&~d)&~(~c^~b)))\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"func_enum_aig\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Verification failed in line %d:  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Verification succeeded for %d functions and failed for %d functions.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lib4var.txt\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Finish constructing AIG for %d structures.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Finished reading file \22%s\22.\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"File reading\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"The total number of NPN classes = %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"tableW%d.data\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%c =%2d  |  \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"C =%12.0f  |  \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"New%d =%10d   \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"All%d =%10d  |  \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Multi =%10d  |  \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"N = %2d : NPN = %6d\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"n=%d : \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%d=%d \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"n=%2d : \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"All = %7d  \00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Ave = %6.2f  \00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"[%08x(%03d),%d%d%d%d%d,%d%d%d%d%d]\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"(%s&%s)\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"(~%s&%s)\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"(%s&~%s)\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"~(~%s&~%s)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"(%s^%s)\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"~(%s&%s)\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"~(~%s&%s)\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"~(%s&~%s)\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"(~%s&~%s)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"~(%s^%s)\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"~%c\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%08x = %s\0A\00", align 1
@__const.Dtt_FindNP.P = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@.str.45 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Dumped file \22%s\22. \0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@s_PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@str = private unnamed_addr constant [37 x i8] c"NPN classes for each node count (N):\00", align 1
@str.1 = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1
@switch.table.Dtt_MakeFormulaFI2.14 = private unnamed_addr constant [10 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 8
@switch.table.Dtt_Check = private unnamed_addr constant [6 x i8] c"\01\00\08\07\09\06", align 4
@switch.table.Dtt_Check.15 = private unnamed_addr constant [6 x i8] c"\00\08\07\09\06\05", align 4
@switch.table.Dtt_Check.16 = private unnamed_addr constant [6 x i8] c"\07\09\06\05\03\02", align 4
@switch.table.Dtt_Check.17 = private unnamed_addr constant [6 x i8] c"\09\06\05\03\02\04", align 4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @Dau_ParseFormulaEndToken(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %.2, %bb.g ]    ; 4 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.g ]    ; 3 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !12
  switch i8 %i.a, label %bb.e [
    i8 0, label %.loopexit
    i8 126, label %bb.g
    i8 40, label %bb.c
    i8 41, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %.010, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.010, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1 = phi i32 [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %.010, %bb.b ] ; 2 uses
  %i.d = icmp eq i32 %.1, 0
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.e
  %.2 = phi i32 [ %.010, %bb.b ], [ %.1, %bb.e ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !0

.loopexit:                                        ; preds = %bb.b, %bb.f
  %.011 = phi ptr [ %i.e, %bb.f ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Dau_ParseFormula_rec(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %accumulator.tr = phi i64 [ 0, %bb.a ], [ %i.w, %bb.j ] ; 2 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %i.g, %bb.j ]   ; 3 uses
  %.tr54 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.j ] ; 3 uses
  %i.a = load i8, ptr %.tr, align 1, !tbaa !12    ; 2 uses
  %i.b = icmp eq i8 %i.a, 126
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tailrecurse, %.lr.ph
  %.064 = phi i32 [ %i.d, %.lr.ph ], [ 0, %tailrecurse ] ; 2 uses
  %.03563 = phi ptr [ %i.c, %.lr.ph ], [ %.tr, %tailrecurse ]
  %i.c = getelementptr inbounds nuw i8, ptr %.03563, i64 1 ; 3 uses
  %i.d = xor i32 %.064, 1
  %i.e = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  %i.f = icmp eq i8 %i.e, 126
  br i1 %i.f, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %2 = icmp ne i32 %.064, 1
  %3 = sext i1 %2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %tailrecurse
  %.035.lcssa = phi ptr [ %.tr, %tailrecurse ], [ %i.c, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi i64 [ 0, %tailrecurse ], [ %3, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.a, %tailrecurse ], [ %i.e, %._crit_edge.loopexit ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.035.lcssa, i64 1 ; 2 uses
  %i.h = icmp eq ptr %i.g, %.tr54
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.i = add i8 %.lcssa, -97
  %or.cond = icmp ult i8 %i.i, 6
  br i1 %or.cond, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i8 %.lcssa to i64
  %i.k = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -776
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %spec.select = xor i64 %i.m, %.0.lcssa
  br label %bb.y

bb.d:                                             ; preds = %._crit_edge
  %i.n = icmp eq i8 %.lcssa, 40
  br i1 %i.n, label %.preheader, label %.preheader104

.preheader104:                                    ; preds = %Dau_ParseFormulaEndToken.exit, %bb.d
  br label %bb.k

.preheader:                                       ; preds = %bb.d, %bb.i
  %i.o = phi i8 [ %.pre, %bb.i ], [ 40, %bb.d ]
  %.010.i = phi i32 [ %.2.i, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.0.i = phi ptr [ %i.t, %bb.i ], [ %.035.lcssa, %bb.d ] ; 2 uses
  switch i8 %i.o, label %bb.g [
    i8 0, label %Dau_ParseFormulaEndToken.exit
    i8 126, label %bb.i
    i8 40, label %bb.e
    i8 41, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader
  %i.p = add nsw i32 %.010.i, 1
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.q = add nsw i32 %.010.i, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader
  %.1.i = phi i32 [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %.010.i, %.preheader ] ; 2 uses
  %i.r = icmp eq i32 %.1.i, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %Dau_ParseFormulaEndToken.exit

bb.i:                                             ; preds = %bb.g, %.preheader
  %.2.i = phi i32 [ %.010.i, %.preheader ], [ %.1.i, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.t, align 1, !tbaa !12
  br label %.preheader, !llvm.loop !0

Dau_ParseFormulaEndToken.exit:                    ; preds = %.preheader, %bb.h
  %.011.i = phi ptr [ %i.s, %bb.h ], [ null, %.preheader ]
  %i.u = icmp eq ptr %.011.i, %.tr54
  br i1 %i.u, label %bb.j, label %.preheader104

bb.j:                                             ; preds = %Dau_ParseFormulaEndToken.exit
  %i.v = getelementptr inbounds i8, ptr %.tr54, i64 -1
  %i.w = xor i64 %accumulator.tr, %.0.lcssa
  br label %tailrecurse

bb.k:                                             ; preds = %.preheader104, %bb.p
  %i.x = phi i8 [ %.pre78, %bb.p ], [ %.lcssa, %.preheader104 ]
  %.010.i42 = phi i32 [ %.2.i45, %bb.p ], [ 0, %.preheader104 ] ; 4 uses
  %.0.i43 = phi ptr [ %i.ac, %bb.p ], [ %.035.lcssa, %.preheader104 ] ; 2 uses
  switch i8 %i.x, label %bb.n [
    i8 0, label %Dau_ParseFormulaEndToken.exit47
    i8 126, label %bb.p
    i8 40, label %bb.l
    i8 41, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.y = add nsw i32 %.010.i42, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = add nsw i32 %.010.i42, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.i44 = phi i32 [ %i.y, %bb.l ], [ %i.z, %bb.m ], [ %.010.i42, %bb.k ] ; 2 uses
  %i.aa = icmp eq i32 %.1.i44, 0
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i43, i64 1
  br label %Dau_ParseFormulaEndToken.exit47

bb.p:                                             ; preds = %bb.n, %bb.k
  %.2.i45 = phi i32 [ %.010.i42, %bb.k ], [ %.1.i44, %bb.n ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i43, i64 1 ; 2 uses
  %.pre78 = load i8, ptr %i.ac, align 1, !tbaa !12
  br label %bb.k, !llvm.loop !0

Dau_ParseFormulaEndToken.exit47:                  ; preds = %bb.k, %bb.o
  %.011.i46 = phi ptr [ %i.ab, %bb.o ], [ null, %bb.k ] ; 3 uses
  %i.ad = tail call i64 @Dau_ParseFormula_rec(ptr noundef nonnull %.035.lcssa, ptr noundef %.011.i46)
  %i.ae = xor i64 %i.ad, %.0.lcssa                ; 2 uses
  %i.af = load i8, ptr %.011.i46, align 1, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i46, i64 1 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %Dau_ParseFormulaEndToken.exit47
  %.010.i48 = phi i32 [ 0, %Dau_ParseFormulaEndToken.exit47 ], [ %.2.i51, %bb.v ] ; 4 uses
  %.0.i49 = phi ptr [ %i.ag, %Dau_ParseFormulaEndToken.exit47 ], [ %i.am, %bb.v ] ; 3 uses
  %i.ah = load i8, ptr %.0.i49, align 1, !tbaa !12
  switch i8 %i.ah, label %bb.t [
    i8 0, label %Dau_ParseFormulaEndToken.exit53
    i8 126, label %bb.v
    i8 40, label %bb.r
    i8 41, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ai = add nsw i32 %.010.i48, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aj = add nsw i32 %.010.i48, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1.i50 = phi i32 [ %i.ai, %bb.r ], [ %i.aj, %bb.s ], [ %.010.i48, %bb.q ] ; 2 uses
  %i.ak = icmp eq i32 %.1.i50, 0
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i49, i64 1
  br label %Dau_ParseFormulaEndToken.exit53

bb.v:                                             ; preds = %bb.t, %bb.q
  %.2.i51 = phi i32 [ %.010.i48, %bb.q ], [ %.1.i50, %bb.t ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i49, i64 1
  br label %bb.q, !llvm.loop !0

Dau_ParseFormulaEndToken.exit53:                  ; preds = %bb.q, %bb.u
  %.011.i52 = phi ptr [ %i.al, %bb.u ], [ null, %bb.q ]
  %i.an = tail call i64 @Dau_ParseFormula_rec(ptr noundef nonnull %i.ag, ptr noundef %.011.i52) ; 2 uses
  switch i8 %i.af, label %bb.y [
    i8 38, label %bb.w
    i8 94, label %bb.x
  ]

bb.w:                                             ; preds = %Dau_ParseFormulaEndToken.exit53
  %i.ao = and i64 %i.an, %i.ae
  br label %bb.y

bb.x:                                             ; preds = %Dau_ParseFormulaEndToken.exit53
  %i.ap = xor i64 %i.an, %i.ae
  br label %bb.y

bb.y:                                             ; preds = %bb.c, %Dau_ParseFormulaEndToken.exit53, %bb.b, %bb.x, %bb.w
  %.034 = phi i64 [ -1, %bb.b ], [ %spec.select, %bb.c ], [ -1, %Dau_ParseFormulaEndToken.exit53 ], [ %i.ao, %bb.w ], [ %i.ap, %bb.x ]
  %accumulator.ret.tr = xor i64 %.034, %accumulator.tr
  ret i64 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Dau_ParseFormula(ptr nofree noundef readonly %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = tail call i64 @Dau_ParseFormula_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define void @Dau_ParseFormulaTest() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @Dau_ParseFormula_rec(ptr noundef nonnull @.str, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @.str, i64 37)) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Dau_ParseFormulaAig_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #4 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.v, %bb.j ] ; 2 uses
  %.tr54 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.j ] ; 3 uses
  %.tr55 = phi ptr [ %2, %bb.a ], [ %i.u, %bb.j ] ; 3 uses
  %i.a = load i8, ptr %.tr54, align 1, !tbaa !12  ; 2 uses
  %i.b = icmp eq i8 %i.a, 126
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tailrecurse, %.lr.ph
  %.065 = phi i32 [ %i.d, %.lr.ph ], [ 0, %tailrecurse ]
  %.03764 = phi ptr [ %i.c, %.lr.ph ], [ %.tr54, %tailrecurse ]
  %i.c = getelementptr inbounds nuw i8, ptr %.03764, i64 1 ; 3 uses
  %i.d = xor i32 %.065, 1                         ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  %i.f = icmp eq i8 %i.e, 126
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %tailrecurse
  %.037.lcssa = phi ptr [ %.tr54, %tailrecurse ], [ %i.c, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %tailrecurse ], [ %i.d, %.lr.ph ] ; 3 uses
  %.lcssa = phi i8 [ %i.a, %tailrecurse ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.037.lcssa, i64 1 ; 2 uses
  %i.h = icmp eq ptr %i.g, %.tr55
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.i = add i8 %.lcssa, -97
  %or.cond = icmp ult i8 %i.i, 6
  br i1 %or.cond, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %narrow = shl nuw i8 %.lcssa, 1
  %i.j = add nsw i8 %narrow, 64
  %i.k = zext nneg i8 %i.j to i32
  %i.l = or disjoint i32 %.0.lcssa, %i.k
  br label %bb.y

bb.d:                                             ; preds = %._crit_edge
  %i.m = icmp eq i8 %.lcssa, 40
  br i1 %i.m, label %.preheader, label %.preheader105

.preheader105:                                    ; preds = %Dau_ParseFormulaEndToken.exit, %bb.d
  br label %bb.k

.preheader:                                       ; preds = %bb.d, %bb.i
  %i.n = phi i8 [ %.pre, %bb.i ], [ 40, %bb.d ]
  %.010.i = phi i32 [ %.2.i, %bb.i ], [ 0, %bb.d ] ; 4 uses
  %.0.i = phi ptr [ %i.s, %bb.i ], [ %.037.lcssa, %bb.d ] ; 2 uses
  switch i8 %i.n, label %bb.g [
    i8 0, label %Dau_ParseFormulaEndToken.exit
    i8 126, label %bb.i
    i8 40, label %bb.e
    i8 41, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader
  %i.o = add nsw i32 %.010.i, 1
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.p = add nsw i32 %.010.i, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader
  %.1.i = phi i32 [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %.010.i, %.preheader ] ; 2 uses
  %i.q = icmp eq i32 %.1.i, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %Dau_ParseFormulaEndToken.exit

bb.i:                                             ; preds = %bb.g, %.preheader
  %.2.i = phi i32 [ %.010.i, %.preheader ], [ %.1.i, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.s, align 1, !tbaa !12
  br label %.preheader, !llvm.loop !0

Dau_ParseFormulaEndToken.exit:                    ; preds = %.preheader, %bb.h
  %.011.i = phi ptr [ %i.r, %bb.h ], [ null, %.preheader ]
  %i.t = icmp eq ptr %.011.i, %.tr55
  br i1 %i.t, label %bb.j, label %.preheader105

bb.j:                                             ; preds = %Dau_ParseFormulaEndToken.exit
  %i.u = getelementptr inbounds i8, ptr %.tr55, i64 -1
  %i.v = xor i32 %.0.lcssa, %accumulator.tr
  br label %tailrecurse

bb.k:                                             ; preds = %.preheader105, %bb.p
  %i.w = phi i8 [ %.pre79, %bb.p ], [ %.lcssa, %.preheader105 ]
  %.010.i42 = phi i32 [ %.2.i45, %bb.p ], [ 0, %.preheader105 ] ; 4 uses
  %.0.i43 = phi ptr [ %i.ab, %bb.p ], [ %.037.lcssa, %.preheader105 ] ; 2 uses
  switch i8 %i.w, label %bb.n [
    i8 0, label %Dau_ParseFormulaEndToken.exit47
    i8 126, label %bb.p
    i8 40, label %bb.l
    i8 41, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %.010.i42, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = add nsw i32 %.010.i42, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1.i44 = phi i32 [ %i.x, %bb.l ], [ %i.y, %bb.m ], [ %.010.i42, %bb.k ] ; 2 uses
  %i.z = icmp eq i32 %.1.i44, 0
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i43, i64 1
  br label %Dau_ParseFormulaEndToken.exit47

bb.p:                                             ; preds = %bb.n, %bb.k
end_hunk_0
