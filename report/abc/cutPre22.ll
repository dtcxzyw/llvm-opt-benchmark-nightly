Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cutPre22?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Cut_Cell_t_ = type { ptr, ptr, ptr, i32, [4 x i8], i32, [12 x i8], [18 x i16], [16 x i32] }

@.str = private unnamed_addr constant [24 x i8] c"cells22_daomap_iwls.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot open file \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Read %d cells from file \22%s\22. Added %d cells to the table.\0A\00", align 1
@s_NPNe3 = internal unnamed_addr constant [10 x i32] [i32 6, i32 8, i32 10, i32 11, i32 12, i32 14, i32 15, i32 17, i32 18, i32 20], align 16
@.str.4 = private unnamed_addr constant [43 x i8] c"BASIC: Total = %d. Good = %d. Entry = %d. \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Cells:  \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%d=%d \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\0ADiffs:  \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0AEquals: \00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"VAR %d: Total = %d. Good = %d. Entry = %d. \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Supp \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Canon\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Table\00", align 1
@s_pCMan = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"celllib22.txt\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Functions found = %10d.  Functions not found = %10d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%3d  : \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%8d \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@s_NP3Names = internal unnamed_addr constant [22 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"Library composed of %d functions is written into file \22%s\22.  \00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@Cut_CellSuppMin.uTemp = internal global [16 x i32] zeroinitializer, align 16
@Cut_CellCrossBar.uTemp0 = internal global [16 x i32] zeroinitializer, align 16
@Cut_CellCrossBar.uTemp1 = internal global [16 x i32] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [23 x i8] c"   const 0            \00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"   const 1            \00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"   a                  \00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"   ab                 \00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"   (ab)'              \00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"   a<+>b              \00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"0s abc                \00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"   (abc)'             \00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"1p a(b+c)             \00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"   (a(b+c))'          \00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"2s a<+>b<+>c          \00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"3p a<+>bc             \00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"4p a(b<+>c)           \00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"   (a(b<+>c))'        \00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"5s ab+bc+ac           \00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"6s abc+a'b'c'         \00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"   (abc+a'b'c')'      \00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"7  ab+bc+a'c          \00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"8s a'bc+ab'c+abc'     \00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"   (a'bc+ab'c+abc')'  \00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"9p ab'c'+bc           \00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"   (ab'c'+bc)'        \00", align 1
@str = private unnamed_addr constant [11 x i8] c"Box usage:\00", align 1
@str.1 = private unnamed_addr constant [46 x i8] c"Cut_CellDumpToFile: Cannout open output file.\00", align 1
@str.2 = private unnamed_addr constant [49 x i8] c"Cut_CellDumpToFile: Cell manager is not defined.\00", align 1
@str.3 = private unnamed_addr constant [50 x i8] c"Cut_CellTruthLookup: Cell manager is not defined.\00", align 1

; Function Attrs: nounwind uwtable
define void @Cut_CellLoad() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @Cut_CManStart()    ; 6 uses
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5024 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 5028 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %sext = shl i64 %i.i, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !12
  %i.n = icmp eq i32 %i.k, 0
  br i1 %i.n, label %.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.p = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.o) #16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.p, i8 0, i64 152, i1 false)
  %i.q = shl nsw i32 %i.k, 2
  %i.r = add i32 %i.q, -1
  %i.s = call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = sub nsw i32 0, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = and i32 %i.t, 15                         ; 2 uses
  store i32 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.y = call i32 @Extra_ReadHexadecimal(ptr noundef nonnull %i.x, ptr noundef nonnull %i.a, i32 noundef %i.v) #16 ; 0 uses
  call fastcc void @Cut_CellSuppMin(ptr noundef nonnull %i.p)
  %i.z = load i32, ptr %i.g, align 8, !tbaa !22
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.g, align 8, !tbaa !22
  %i.ab = call fastcc i32 @Cut_CellTableLookup(ptr noundef nonnull %i.e, ptr noundef nonnull %i.p)
  %.not22 = icmp eq i32 %i.ab, 0
  br i1 %.not22, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !23
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !23
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %i.ae = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !43

._crit_edge:                                      ; preds = %.backedge, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 5024
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 5028
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ag, ptr noundef nonnull @.str, i32 noundef %i.ai) ; 0 uses
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Extra_MmFixedEntryFetch(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @Extra_ReadHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @Cut_CellSuppMin(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 15                         ; 3 uses
  %.not49 = icmp eq i32 %i.c, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = add nsw i32 %i.c, -1
  %i.g = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %bb.c
  %indvars.iv = phi i64 [ %i.g, %.lr.ph47 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03245.in = phi i32 [ %i.c, %.lr.ph47 ], [ %.03245, %bb.c ] ; 3 uses
  %.03245 = add nsw i32 %.03245.in, -1            ; 2 uses
  %i.h = load i32, ptr %i.a, align 8
  %i.i = and i32 %i.h, 15
  %i.j = tail call i32 @Extra_TruthVarInSupport(ptr noundef nonnull %i.d, i32 noundef %i.i, i32 noundef %.03245) #16
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.k = load i32, ptr %i.a, align 8              ; 2 uses
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = icmp samesign ult i32 %.03245.in, %i.l
  br i1 %i.m, label %.lr.ph, label %Extra_TruthCopy.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph ], [ %indvars.iv, %.preheader ] ; 3 uses
  %i.n = phi i32 [ %i.v, %.lr.ph ], [ %i.l, %.preheader ]
  %.040 = phi i32 [ %i.t, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.03438 = phi ptr [ %.03537, %.lr.ph ], [ @Cut_CellSuppMin.uTemp, %.preheader ] ; 5 uses
  %.03537 = phi ptr [ %.03438, %.lr.ph ], [ %i.d, %.preheader ] ; 5 uses
  %i.o = trunc nuw i64 %indvars.iv52 to i32
  tail call void @Extra_TruthSwapAdjacentVars(ptr noundef %.03438, ptr noundef %.03537, i32 noundef %i.n, i32 noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv52 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next53 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  store i8 %i.s, ptr %i.p, align 1, !tbaa !12
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12
  %i.t = add nuw nsw i32 %.040, 1
  %i.u = load i32, ptr %i.a, align 8              ; 2 uses
  %i.v = and i32 %i.u, 15                         ; 4 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = trunc nuw i64 %indvars.iv.next53 to i32
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %.0343865.le = ptrtoaddr ptr %.03438 to i64
  %.0353766.le = ptrtoaddr ptr %.03537 to i64
  %i.z = trunc i32 %.040 to i1
  br i1 %i.z, label %Extra_TruthCopy.exit, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %._crit_edge
  %i.aa = icmp samesign ult i32 %i.v, 6
  %i.ab = add nsw i32 %i.v, -5
  %i.ac = shl nuw nsw i32 1, %i.ab
  %spec.select.i = select i1 %i.aa, i32 1, i32 %i.ac ; 2 uses
  %i.ad = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %min.iters.check = icmp samesign ult i32 %spec.select.i, 8
  %i.ae = sub i64 %.0353766.le, %.0343865.le
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %select.unfold.i, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.ad, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = xor i64 %index, -1
  %i.ag = add i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.03438, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -12
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !25
  %wide.load67 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !25
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.03537, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -12
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -28
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !25
  store <4 x i32> %wide.load67, ptr %i.am, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %Extra_TruthCopy.exit.loopexit, label %vector.body, !llvm.loop !44

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.ad, %select.unfold.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.03438, i64 %indvars.iv.next.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.03537, i64 %indvars.iv.next.i
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !25
  %i.ar = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ar, label %select.unfold.i, label %Extra_TruthCopy.exit.loopexit, !llvm.loop !45

Extra_TruthCopy.exit.loopexit:                    ; preds = %vector.body, %select.unfold.i
  %.pre = load i32, ptr %i.a, align 8
  br label %Extra_TruthCopy.exit

Extra_TruthCopy.exit:                             ; preds = %.preheader, %Extra_TruthCopy.exit.loopexit, %._crit_edge
  %i.as = phi i32 [ %.pre, %Extra_TruthCopy.exit.loopexit ], [ %i.u, %._crit_edge ], [ %i.k, %.preheader ] ; 2 uses
  %i.at = add i32 %i.as, 15
  %i.au = and i32 %i.at, 15
  %i.av = and i32 %i.as, -16
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %Extra_TruthCopy.exit
  %i.ax = icmp samesign ugt i32 %.03245.in, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.ax, label %bb.b, label %._crit_edge48, !llvm.loop !1

._crit_edge48:                                    ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Cut_CellTableLookup(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15                         ; 2 uses
  %i.f = icmp samesign ult i32 %i.e, 6
end_hunk_0
